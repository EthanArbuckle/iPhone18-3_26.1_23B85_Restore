char *sub_10090752C(void **a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v78 = a5;
  LODWORD(v81) = a4;
  LODWORD(v79) = a3;
  v69 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchTimeInterval();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v63 = *(v74 - 8);
  v11 = (__chkstk_darwin)(v74);
  v59 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v59 - v13;
  v14 = type metadata accessor for CRLFollowViewportState();
  v77 = *(v14 - 8);
  __chkstk_darwin(v14);
  v71 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v76 = type metadata accessor for UUID();
  v72 = *(v76 - 8);
  v19 = (__chkstk_darwin)(v76);
  v70 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v59 - v21;
  v22 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v26 - 8);
  v28 = &v59 - v27;
  v29 = *a1;
  result = [v29 scrollCenteredOrZoomToUnscaledRect:v79 & 1 shouldAnimateScroll:{*(a2 + *(v14 + 28)), *(a2 + *(v14 + 28) + 8), *(a2 + *(v14 + 28) + 16), *(a2 + *(v14 + 28) + 24)}];
  if (v81)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v79 = v29;
      v81 = v5;
      v31 = *&result[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
      v32 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
      swift_beginAccess();
      sub_10000BE14(v31 + v32, v28, &qword_101A08DF0);
      swift_unknownObjectRelease();
      if ((*(v23 + 48))(v28, 1, v22))
      {
        return sub_10000CAAC(v28, &qword_101A08DF0);
      }

      else
      {
        sub_10090F948(v28, v25, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        sub_10000CAAC(v28, &qword_101A08DF0);
        v33 = *&v25[*(v22 + 24)];

        sub_10090FA18(v25, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        v34 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply;
        v35 = v78;
        swift_beginAccess();
        sub_10000BE14(v35 + v34, v18, &qword_101A07B80);
        if ((*(v77 + 48))(v18, 1, v14))
        {

          return sub_10000CAAC(v18, &qword_101A07B80);
        }

        else
        {
          v36 = v71;
          sub_10090F948(v18, v71, type metadata accessor for CRLFollowViewportState);
          sub_10000CAAC(v18, &qword_101A07B80);
          v37 = v72;
          v38 = *(v72 + 32);
          v39 = &v36[*(v14 + 20)];
          v40 = v70;
          v41 = v76;
          v38(v70, v39, v76);
          v42 = v75;
          v38(v75, v40, v41);
          v78 = v33;
          v43 = sub_1007DFEBC();
          if (v43)
          {
            v45 = v44;

            sub_100006370(0, &qword_1019F2D90);
            v77 = static OS_dispatch_queue.main.getter();
            v46 = v59;
            static DispatchTime.now()();
            v47 = v60;
            *v60 = 250;
            v48 = v61;
            v49 = v62;
            (*(v61 + 104))(v47, enum case for DispatchTimeInterval.milliseconds(_:), v62);
            + infix(_:_:)();
            (*(v48 + 8))(v47, v49);
            v71 = *(v63 + 8);
            (v71)(v46, v74);
            v50 = swift_allocObject();
            v51 = v79;
            *(v50 + 16) = v79;
            *(v50 + 24) = v45;
            aBlock[4] = sub_10090F8C8;
            aBlock[5] = v50;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = *"";
            aBlock[2] = sub_100007638;
            aBlock[3] = &unk_10188D230;
            v52 = _Block_copy(aBlock);
            v53 = v51;
            v79 = v45;

            v54 = v64;
            static DispatchQoS.unspecified.getter();
            aBlock[0] = _swiftEmptyArrayStorage;
            sub_10090F834(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
            sub_1005B981C(&unk_1019FF400);
            sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
            v55 = v66;
            v56 = v69;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v57 = v73;
            v58 = v77;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v52);

            (*(v68 + 8))(v55, v56);
            (*(v65 + 8))(v54, v67);
            (v71)(v57, v74);
            return (*(v37 + 8))(v75, v76);
          }

          else
          {
            (*(v37 + 8))(v42, v41);
          }
        }
      }
    }
  }

  return result;
}

void sub_100907F70(int a1)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  v6 = &v56 - v5;
  v7 = type metadata accessor for CRLFollowViewportState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToSend;
  swift_beginAccess();
  sub_10000BE14(v2 + v13, v6, &qword_101A07B80);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &qword_101A07B80);
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v61[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v61);
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v24 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v24;
    v25 = sub_1005CF04C();
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 686;
    v27 = v61[0];
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "sendViewportUpdate called with invalid viewport", 47, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:686 isFatal:0 format:v36 args:v33];
  }

  else
  {
    v58 = v7;
    sub_10090F9B0(v6, v12, type metadata accessor for CRLFollowViewportState);
    type metadata accessor for CRContext();
    memset(v61, 0, 40);
    v37 = v12;
    v38 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
    sub_10000CAAC(v61, &qword_101A07B90);
    v57 = v37;
    v39 = sub_100C3CA50();
    v41 = v40;

    sub_100024E98(v39, v41);
    v42 = sub_1008FC774();
    v43 = v60;
    if (v42)
    {
      v44 = v42;
      sub_100024E98(v39, v41);
      sub_10090F558(3, 0, 0, 3, v39, v41, v43 & 1, v44);

      sub_10002640C(v39, v41);
    }

    v56 = v41;
    v45 = v57;
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v46 = static OS_os_log.crlFollow;
    sub_1005B981C(&qword_1019F54E0);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_10146BDE0;
    sub_10090F948(v45, v59, type metadata accessor for CRLFollowViewportState);
    v48 = String.init<A>(describing:)();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    v51 = sub_1000053B0();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v52 = 1702195828;
    if ((v43 & 1) == 0)
    {
      v52 = 0x65736C6166;
    }

    v53 = 0xE500000000000000;
    *(v47 + 96) = &type metadata for String;
    *(v47 + 104) = v51;
    if (v43)
    {
      v53 = 0xE400000000000000;
    }

    *(v47 + 64) = v51;
    *(v47 + 72) = v52;
    *(v47 + 80) = v53;
    v54 = static os_log_type_t.debug.getter();
    sub_100005404(v46, &_mh_execute_header, v54, "Enqueuing viewport update: viewport:%@, usesReliable:%@", 55, 2, v47);
    v55 = v56;
    sub_10002640C(v39, v56);
    sub_10002640C(v39, v55);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_10090FA18(v45, type metadata accessor for CRLFollowViewportState);
  }
}

void sub_100908C90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlFollow;
  v8 = static os_log_type_t.debug.getter();
  sub_100005404(v7, &_mh_execute_header, v8, "will addViewPortUpdate", 22, 2, _swiftEmptyArrayStorage);
  if ((*(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates) & 1) == 0)
  {
    v45 = a1;
    v44 = objc_opt_self();
    v9 = [v44 _atomicIncrementAssertCount];
    v46 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v46);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 704;
    v21 = v46;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "Adding a follow viewport update when not processing viewport updates", 68, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v28 file:v29 lineNumber:704 isFatal:0 format:v30 args:v27];

    a1 = v45;
  }

  sub_10090F948(a1, v6, type metadata accessor for CRLFollowViewportState);
  v31 = type metadata accessor for CRLFollowViewportState();
  (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
  v32 = sub_10090D0B4(v6);
  sub_10000CAAC(v6, &qword_101A07B80);
  if (v32)
  {
    sub_1009093A8(a1);
  }

  v33 = *(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant);
  if (v33)
  {
    v34 = (a1 + *(v31 + 20));
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v33;
    static Published.subscript.getter();

    v37 = v46;
    __chkstk_darwin(v36);
    *(&v44 - 2) = v34;
    v38 = sub_101107CA8(sub_10090FE80, (&v44 - 4), v37);

    if (v38)
    {

      *(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport) = 1;
      sub_1009093A8(a1);
    }
  }

  if (sub_1008FB7A4())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v39 = v46;
    if (v46)
    {
      v40 = (a1 + *(v31 + 20));
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v42 = v46;
      __chkstk_darwin(v41);
      *(&v44 - 2) = v40;
      v43 = sub_101107CA8(sub_10090F774, (&v44 - 4), v42);

      if (v43)
      {

        sub_1009093A8(a1);
      }
    }
  }
}

void sub_1009093A8(uint64_t a1)
{
  sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(a1);
  v5 = &v10 - v4;
  if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp) < *v3)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp) = *v3;
    sub_10090F948(v3, v5, type metadata accessor for CRLFollowViewportState);
    v6 = type metadata accessor for CRLFollowViewportState();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateInBatch;
    swift_beginAccess();
    sub_10002C638(v5, v1 + v7, &qword_101A07B80);
    swift_endAccess();
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlFollow;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "added viewport update as latest", 31, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100909550(void *a1)
{
  v3 = type metadata accessor for Date();
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v38 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  *(&v55 + 1) = &type metadata for CRLFeatureFlags;
  v56 = sub_100004D60();
  LOBYTE(v54) = 13;
  v15 = isFeatureEnabled(_:)();
  sub_100005070(&v54);
  if ((v15 & 1) == 0)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v54)
  {
    return;
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v54 = v52;
  v55 = v53;
  if (!*(&v53 + 1))
  {
    sub_10000CAAC(&v54, &unk_1019F4D00);
    return;
  }

  type metadata accessor for CRLCollaborationParticipant(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v42 = v14;
  v16 = v51;
  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v16;
  static Published.subscript.getter();

  v18 = v54;
  if (!v54)
  {

    return;
  }

  v41 = v1;
  v19 = static NSObject.== infix(_:_:)();

  v20 = v17;
  if ((v19 & 1) == 0)
  {

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = v54;
  if (v54 >> 62)
  {
LABEL_37:
    v22 = _CocoaArrayWrapper.endIndex.getter();
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_38:

    return;
  }

  v22 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_12:
  v47 = v21 & 0xC000000000000001;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(v21 + 32);
  }

  v24 = v23;
  v38 = v20;
  v39 = v10;
  v40 = v9;
  if (v22 != 1)
  {
    v45 = v49 + 16;
    v46 = v22;
    v43 = v21 & 0xFFFFFFFFFFFFFF8;
    v44 = v49 + 8;
    v10 = 1;
    v48 = v21;
    while (2)
    {
      v49 = v24;
      v21 = v10;
      while (1)
      {
        if (v47)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_34;
          }
        }

        else
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          if (v21 >= *(v43 + 16))
          {
            goto LABEL_36;
          }

          v25 = *(v48 + 8 * v21 + 32);
          v10 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v26 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        v20 = v25;
        v27 = v3;
        v28 = v8;
        v29 = v5;
        v30 = v49;
        swift_beginAccess();
        v31 = *v45;
        v32 = &v30[v26];
        v5 = v29;
        v8 = v28;
        v3 = v27;
        v24 = v20;
        (*v45)(v8, v32, v3);
        v33 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        v31(v5, &v20[v33], v3);
        LOBYTE(v33) = static Date.< infix(_:_:)();
        v9 = *v44;
        (*v44)(v5, v3);
        (v9)(v8, v3);
        if (v33)
        {
          break;
        }

        ++v21;
        if (v10 == v46)
        {
          v24 = v49;
          goto LABEL_33;
        }
      }

      if (v10 != v46)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v34 = v39;
  v35 = v50;
  v36 = v40;
  (*(v39 + 16))(v50, &v24[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v40);

  v37 = v42;
  (*(v34 + 32))(v42, v35, v36);
  sub_1008FD628(v37);

  (*(v34 + 8))(v37, v36);
}

void sub_100909C00()
{
  v1 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v1 - 8);
  v3 = &v76 - v2;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlFollow;
  v5 = static os_log_type_t.debug.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "willProcessViewportUpdates", 26, 2, _swiftEmptyArrayStorage);
  v78 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates;
  v79 = v0;
  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates) == 1)
  {
    v77 = objc_opt_self();
    v6 = [v77 _atomicIncrementAssertCount];
    v81 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v81);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    v9 = [v8 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v6;
    v15 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v15;
    v16 = sub_1005CF04C();
    *(inited + 104) = v16;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v17 = sub_1000053B0();
    *(inited + 112) = v10;
    *(inited + 120) = v12;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 757;
    v18 = v81;
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "Called willProcessViewportUpdates when we already began processing viewport updates!", 84, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v23 = swift_allocObject();
    v23[2] = 8;
    v23[3] = 0;
    v23[4] = 0;
    v23[5] = 0;
    v24 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v77 handleFailureInFunction:v25 file:v26 lineNumber:757 isFatal:0 format:v27 args:v24];

    v0 = v79;
  }

  v28 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateInBatch;
  swift_beginAccess();
  sub_10000BE14(v0 + v28, v3, &qword_101A07B80);
  v29 = type metadata accessor for CRLFollowViewportState();
  LODWORD(v28) = (*(*(v29 - 8) + 48))(v3, 1, v29);
  sub_10000CAAC(v3, &qword_101A07B80);
  if (v28 != 1)
  {
    v30 = objc_opt_self();
    v31 = [v30 _atomicIncrementAssertCount];
    v80 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v80);
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146CA70;
    *(v39 + 56) = &type metadata for Int32;
    *(v39 + 64) = &protocol witness table for Int32;
    *(v39 + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(v39 + 96) = v40;
    v41 = sub_1005CF04C();
    *(v39 + 104) = v41;
    *(v39 + 72) = v32;
    *(v39 + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(v39 + 112) = v35;
    *(v39 + 120) = v37;
    *(v39 + 176) = &type metadata for UInt;
    *(v39 + 144) = v42;
    *(v39 + 152) = 758;
    v43 = v80;
    *(v39 + 216) = v40;
    *(v39 + 224) = v41;
    *(v39 + 184) = &protocol witness table for UInt;
    *(v39 + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v39);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "Called willProcessViewportUpdates when we already have a received viewport update!", 82, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    [v30 handleFailureInFunction:v50 file:v51 lineNumber:758 isFatal:0 format:v52 args:v49];

    v0 = v79;
  }

  if (*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport) == 1)
  {
    v53 = objc_opt_self();
    v54 = [v53 _atomicIncrementAssertCount];
    v80 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v80);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    v57 = [v56 lastPathComponent];

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v61 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_10146CA70;
    *(v62 + 56) = &type metadata for Int32;
    *(v62 + 64) = &protocol witness table for Int32;
    *(v62 + 32) = v54;
    v63 = sub_100006370(0, &qword_1019F4D30);
    *(v62 + 96) = v63;
    v64 = sub_1005CF04C();
    *(v62 + 104) = v64;
    *(v62 + 72) = v55;
    *(v62 + 136) = &type metadata for String;
    v65 = sub_1000053B0();
    *(v62 + 112) = v58;
    *(v62 + 120) = v60;
    *(v62 + 176) = &type metadata for UInt;
    *(v62 + 144) = v65;
    *(v62 + 152) = 759;
    v66 = v80;
    *(v62 + 216) = v63;
    *(v62 + 224) = v64;
    *(v62 + 184) = &protocol witness table for UInt;
    *(v62 + 192) = v66;
    v67 = v55;
    v68 = v66;
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v61, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v70 = static os_log_type_t.error.getter();
    sub_100005404(v61, &_mh_execute_header, v70, "Called willProcessViewportUpdates when isInitialViewport is not reset!", 70, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v71 = swift_allocObject();
    v71[2] = 8;
    v71[3] = 0;
    v71[4] = 0;
    v71[5] = 0;
    v72 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v73 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    [v53 handleFailureInFunction:v73 file:v74 lineNumber:759 isFatal:0 format:v75 args:v72];

    v0 = v79;
  }

  *(v0 + v78) = 1;
}

uint64_t sub_10090A820()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for CRLFollowViewportState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlFollow;
  v13 = static os_log_type_t.debug.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "didProcessViewportUpdates", 25, 2, _swiftEmptyArrayStorage);
  v14 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates;
  if ((*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates) & 1) == 0)
  {
    v39 = v7;
    v42 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates;
    v43 = v11;
    v44 = v9;
    v45 = v8;
    v46 = v4;
    v41 = objc_opt_self();
    v15 = [v41 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v47);
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_1005CF04C();
    *(inited + 104) = v24;
    v25 = v40;
    *(inited + 72) = v40;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 767;
    v27 = v47;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v27;
    v28 = v25;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v31, "Called didProcessViewportUpdates before we began processing viewport updates!", 77, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v34 file:v35 lineNumber:767 isFatal:0 format:v36 args:v33];

    v8 = v45;
    v4 = v46;
    v11 = v43;
    v9 = v44;
    v14 = v42;
    v7 = v39;
  }

  v37 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateInBatch;
  swift_beginAccess();
  sub_10000BE14(v1 + v37, v7, &qword_101A07B80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CAAC(v7, &qword_101A07B80);
  }

  else
  {
    sub_10090F9B0(v7, v11, type metadata accessor for CRLFollowViewportState);
    sub_10090AEB8(v11);
    sub_10090FA18(v11, type metadata accessor for CRLFollowViewportState);
  }

  *(v1 + v14) = 0;
  (*(v9 + 56))(v4, 1, 1, v8);
  swift_beginAccess();
  sub_10002C638(v4, v1 + v37, &qword_101A07B80);
  result = swift_endAccess();
  *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport) = 0;
  return result;
}

void sub_10090AEB8(uint64_t a1)
{
  v3 = type metadata accessor for CRLFollowViewportState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&qword_101A07B88);
  __chkstk_darwin(v6);
  v8 = &v31[-v7];
  v9 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v9 - 8);
  v37 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v35 = &v31[-v12];
  __chkstk_darwin(v13);
  v15 = &v31[-v14];
  v33 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport;
  if (*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport) == 1)
  {
    v16 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant);
    if (v16)
    {
      v17 = qword_1019F21B8;
      v18 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = static OS_os_log.crlFollow;
      v20 = static os_log_type_t.default.getter();
      sub_100005404(v19, &_mh_execute_header, v20, "Starting follow session due to initial viewport update", 54, 2, _swiftEmptyArrayStorage);
      sub_100901770(v18);
    }
  }

  v21 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply;
  swift_beginAccess();
  v38 = a1;
  sub_10090F948(a1, v15, type metadata accessor for CRLFollowViewportState);
  v36 = *(v4 + 56);
  v36(v15, 0, 1, v3);
  v22 = *(v6 + 48);
  sub_10000BE14(v1 + v21, v8, &qword_101A07B80);
  sub_10000BE14(v15, &v8[v22], &qword_101A07B80);
  v23 = *(v4 + 48);
  if (v23(v8, 1, v3) == 1)
  {
    sub_10000CAAC(v15, &qword_101A07B80);
    if (v23(&v8[v22], 1, v3) == 1)
    {
      sub_10000CAAC(v8, &qword_101A07B80);
LABEL_9:
      if (qword_1019F21B8 != -1)
      {
        swift_once();
      }

      v24 = static OS_os_log.crlFollow;
      v25 = static os_log_type_t.default.getter();
      sub_100005404(v24, &_mh_execute_header, v25, "not applying viewport update because viewport did not change", 60, 2, _swiftEmptyArrayStorage);
      return;
    }

    goto LABEL_14;
  }

  v26 = v35;
  sub_10000BE14(v8, v35, &qword_101A07B80);
  if (v23(&v8[v22], 1, v3) == 1)
  {
    sub_10000CAAC(v15, &qword_101A07B80);
    sub_10090FA18(v26, type metadata accessor for CRLFollowViewportState);
LABEL_14:
    v27 = &qword_101A07B88;
    v28 = v8;
LABEL_20:
    sub_10000CAAC(v28, v27);
    goto LABEL_21;
  }

  v29 = v34;
  sub_10090F9B0(&v8[v22], v34, type metadata accessor for CRLFollowViewportState);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || *&v26[*(v3 + 24)] != *&v29[*(v3 + 24)])
  {
    sub_10090FA18(v29, type metadata accessor for CRLFollowViewportState);
    sub_10000CAAC(v15, &qword_101A07B80);
    sub_10090FA18(v26, type metadata accessor for CRLFollowViewportState);
    v28 = v8;
    v27 = &qword_101A07B80;
    goto LABEL_20;
  }

  v32 = CGRectEqualToRect(*&v26[*(v3 + 28)], *&v29[*(v3 + 28)]);
  sub_10090FA18(v29, type metadata accessor for CRLFollowViewportState);
  sub_10000CAAC(v15, &qword_101A07B80);
  sub_10090FA18(v26, type metadata accessor for CRLFollowViewportState);
  sub_10000CAAC(v8, &qword_101A07B80);
  if (v32)
  {
    goto LABEL_9;
  }

LABEL_21:
  v30 = v37;
  sub_10090F948(v38, v37, type metadata accessor for CRLFollowViewportState);
  v36(v30, 0, 1, v3);
  swift_beginAccess();
  sub_10002C638(v30, v1 + v21, &qword_101A07B80);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_shouldSyncViewportState) = 1;
  if ((sub_1009048EC() & 1) == 0 && (sub_1009048C8() & 1) == 0)
  {
    sub_10090624C(*(v1 + v33));
  }
}

void sub_10090B504(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v10 = type metadata accessor for CRLStartOrEndFollow();
  __chkstk_darwin(v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67[3] = &type metadata for CRLFeatureFlags;
  v67[4] = sub_100004D60();
  LOBYTE(v67[0]) = 13;
  v13 = isFeatureEnabled(_:)();
  sub_100005070(v67);
  if ((v13 & 1) == 0)
  {
    return;
  }

  v65 = v4;
  v63 = v6;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlFollow;
  v61 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v60 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v64 = a1;
  sub_10090F948(a1, v12, type metadata accessor for CRLStartOrEndFollow);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  v62 = sub_1000053B0();
  *(inited + 64) = v62;
  *(inited + 32) = v16;
  v19 = v14;
  *(inited + 40) = v18;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v20, "Received start follow message: %@", 33, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v22 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v22 + v23, v9, &qword_101A08DF0);
  swift_unknownObjectRelease();
  if ((*(v65 + 48))(v9, 1, v3))
  {
    sub_10000CAAC(v9, &qword_101A08DF0);
LABEL_7:
    v24 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v24, "Unable to retrieve the CollaborationParticipants when processing a start follow message", 87, 2, _swiftEmptyArrayStorage);
    return;
  }

  v65 = v1;
  v25 = v63;
  sub_10090F948(v9, v63, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v9, &qword_101A08DF0);

  sub_10090FA18(v25, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  v26 = sub_1007DFEBC();
  if (!v26)
  {
LABEL_16:
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_10146BDE0;
    v37 = UUID.uuidString.getter();
    v38 = v62;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v38;
    *(v36 + 32) = v37;
    *(v36 + 40) = v39;
    v40 = UUID.uuidString.getter();
    *(v36 + 96) = &type metadata for String;
    *(v36 + 104) = v38;
    *(v36 + 72) = v40;
    *(v36 + 80) = v41;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v42, "Unable to retrieve the CRLCollaborationParticipant for the given follower (%{public}@) or host presence UUID (%{public}@) when starting a follow", 144, 2, v36);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return;
  }

  v28 = v26;

  v29 = sub_1007DFEBC();
  if (!v29)
  {

    goto LABEL_16;
  }

  v31 = v29;

  if (sub_1008FB7A4())
  {
    v32 = v31;
    v33 = sub_1007DE720();
    if (v33)
    {
      v34 = v33;
      type metadata accessor for CRLCollaborationParticipant(0);
      v35 = static NSObject.== infix(_:_:)();

      if (v35)
      {
        sub_1008FE25C(1);

        return;
      }
    }

    else
    {
    }
  }

  v63 = v19;
  v43 = *&v28[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing];
  *&v28[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing] = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v31;
  v45 = static Published.subscript.modify();
  v46 = v28;
  sub_100E6DF84(v66, v46);

  v45(v67, 0);

  v47 = sub_1007DE720();
  if (v47)
  {
    v48 = v47;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49 = v63;
    if ((v67[0] & 0xC000000000000001) != 0)
    {
      v50 = __CocoaSet.count.getter();
    }

    else
    {
      v50 = *(v67[0] + 16);
    }

    v51 = v65;

    if (v50 == 1 && (*(v51 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) & 1) == 0)
    {
      v52 = static os_log_type_t.default.getter();
      sub_100005404(v49, &_mh_execute_header, v52, "User wasn't hosting yet, so start the hosting session which will send out a viewport update to confirm the follow request.", 122, 2, _swiftEmptyArrayStorage);
      sub_1009031B0();
    }

    sub_100006370(0, &qword_1019F54D0);
    if (static NSObject.== infix(_:_:)())
    {
      v53 = swift_initStackObject();
      *(v53 + 16) = v60;
      v54 = UUID.uuidString.getter();
      v55 = v62;
      *(v53 + 56) = &type metadata for String;
      *(v53 + 64) = v55;
      *(v53 + 32) = v54;
      *(v53 + 40) = v56;
      v57 = static os_log_type_t.default.getter();
      sub_100005404(v49, &_mh_execute_header, v57, "Received a start follow message from presence ID: %{public}@", 60, 2, v53);
      swift_setDeallocating();
      sub_100005070(v53 + 32);
      sub_10090D65C(v46);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v67[0] & 0xC000000000000001) != 0)
      {
        v58 = __CocoaSet.count.getter();
      }

      else
      {
        v58 = *(v67[0] + 16);
      }

      if (v58 > 1 || *(v65 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
      {
        v59 = static os_log_type_t.default.getter();
        sub_100005404(v49, &_mh_execute_header, v59, "User is already hosting another follow, but still generating and sending a viewport update to confirm the follow request.", 121, 2, _swiftEmptyArrayStorage);
        sub_1009056EC(0, 1);
      }
    }
  }

  else
  {
  }
}

void sub_10090BD88(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v10 = type metadata accessor for CRLStartOrEndFollow();
  __chkstk_darwin(v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60[3] = &type metadata for CRLFeatureFlags;
  v60[4] = sub_100004D60();
  LOBYTE(v60[0]) = 13;
  v13 = isFeatureEnabled(_:)();
  sub_100005070(v60);
  if ((v13 & 1) == 0)
  {
    return;
  }

  v58 = v4;
  v59 = v1;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v14 = static OS_os_log.crlFollow;
  v56 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v54 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v57 = a1;
  sub_10090F948(a1, v12, type metadata accessor for CRLStartOrEndFollow);
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  v55 = sub_1000053B0();
  *(inited + 64) = v55;
  *(inited + 32) = v16;
  v19 = v14;
  *(inited + 40) = v18;
  v20 = static os_log_type_t.default.getter();
  sub_100005404(v14, &_mh_execute_header, v20, "Received end follow message: %@", 31, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v22 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v22 + v23, v9, &qword_101A08DF0);
  swift_unknownObjectRelease();
  if ((*(v58 + 48))(v9, 1, v3))
  {
    sub_10000CAAC(v9, &qword_101A08DF0);
LABEL_7:
    v24 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v24, "Unable to retrieve the CollaborationParticipants when processing an end follow message", 86, 2, _swiftEmptyArrayStorage);
    return;
  }

  sub_10090F948(v9, v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v9, &qword_101A08DF0);

  sub_10090FA18(v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  v25 = sub_1007DFEBC();
  if (!v25)
  {
LABEL_19:
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_10146BDE0;
    v47 = UUID.uuidString.getter();
    v48 = v55;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = v48;
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    v50 = UUID.uuidString.getter();
    *(v46 + 96) = &type metadata for String;
    *(v46 + 104) = v48;
    *(v46 + 72) = v50;
    *(v46 + 80) = v51;
    v52 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v52, "Unable to retrieve the CRLCollaborationParticipant for the given follower (%{public}@) or host presence UUID (%{public}@) when ending a follow", 142, 2, v46);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return;
  }

  v27 = v25;

  v28 = sub_1007DFEBC();
  if (!v28)
  {

    goto LABEL_19;
  }

  v30 = v28;

  v31 = *&v27[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing];
  *&v27[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_isFollowing] = 0;
  if (v31)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = static Published.subscript.modify();

    v32(v60, 0);
    v19 = v14;
  }

  v33 = sub_1007DE720();
  if (v33)
  {
    v34 = v33;
    sub_100006370(0, &qword_1019F54D0);
    v35 = static NSObject.== infix(_:_:)();
    v36 = v55;
    if (v35)
    {
      v37 = swift_initStackObject();
      *(v37 + 16) = v54;
      v38 = UUID.uuidString.getter();
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = v36;
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      v40 = static os_log_type_t.default.getter();
      sub_100005404(v19, &_mh_execute_header, v40, "Received a stop follow message from presence ID: %{public}@", 59, 2, v37);
      swift_setDeallocating();
      sub_100005070(v37 + 32);
      sub_10090D9EC(v27);
    }

    v41 = swift_initStackObject();
    *(v41 + 16) = v54;
    v42 = UUID.uuidString.getter();
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = v36;
    *(v41 + 32) = v42;
    *(v41 + 40) = v43;
    v44 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v44, "Received a stop follow message from presence ID: %{public}@", 59, 2, v41);
    swift_setDeallocating();
    sub_100005070(v41 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v60[0] & 0xC000000000000001) != 0)
    {
      v45 = __CocoaSet.count.getter();
    }

    else
    {
      v45 = *(v60[0] + 16);
    }

    v53 = v59;

    if (!v45 && *(v53 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
    {
      sub_100903598();
    }
  }

  else
  {
  }
}

void sub_10090C4E4(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v46 = &type metadata for CRLFeatureFlags;
  v47 = sub_100004D60();
  v45[0] = 13;
  v10 = isFeatureEnabled(_:)();
  sub_100005070(v45);
  if ((v10 & 1) == 0)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant;
  if (!*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant) && (sub_1008FB7A4() & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v13 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v13 + v14, v9, &qword_101A08DF0);
  swift_unknownObjectRelease();
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_10000CAAC(v9, &qword_101A08DF0);
LABEL_7:
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.crlFollow;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v16, "Unable to retrieve the CollaborationParticipants when processing an end follow message", 86, 2, _swiftEmptyArrayStorage);
    return;
  }

  v17 = v1;
  sub_10090F948(v9, v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v9, &qword_101A08DF0);

  sub_10090FA18(v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  v18 = sub_1007DFEBC();
  if (v18)
  {
    v20 = v18;

    v21 = *(v1 + v11);
    if (v21)
    {
      sub_100006370(0, &qword_1019F54D0);
      v22 = v21;
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {

        return;
      }

      v23 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer;
      v24 = *(v17 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer);
      if (v24)
      {
        [v24 invalidate];
        v25 = *(v17 + v23);
        *(v17 + v23) = 0;
      }

      v26 = *(v17 + v11);
      *(v17 + v11) = 0;

      *(v17 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp) = 0;
      v27 = [*(v17 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
      sub_1005B981C(&qword_101A07B78);
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v29);
      *(&v43 - 2) = a1;
      *(&v43 - 1) = v20;
      sub_1012E32BC(sub_10090FE68, (&v43 - 4), v28);
    }

    else
    {
      if ((sub_1008FB7A4() & 1) == 0)
      {

        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = v44;
      if (!v44 || (type metadata accessor for CRLCollaborationParticipant(0), v20 = v20, v37 = static NSObject.== infix(_:_:)(), v20, v36, (v37 & 1) == 0))
      {

        return;
      }

      if (qword_1019F21B8 != -1)
      {
        swift_once();
      }

      v38 = static OS_os_log.crlFollow;
      v39 = static os_log_type_t.default.getter();
      sub_100005404(v38, &_mh_execute_header, v39, "Calling didEndFollowing because we received an end or refuse follow message from the following participant", 106, 2, _swiftEmptyArrayStorage);
      sub_1008FF010(0);
      v40 = [*(v17 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
      sub_1005B981C(&qword_101A07B78);
      v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      __chkstk_darwin(v42);
      *(&v43 - 2) = a1;
      *(&v43 - 1) = v20;
      sub_1012E32BC(sub_10090F758, (&v43 - 4), v41);
    }

    return;
  }

  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v30 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v32 = UUID.uuidString.getter();
  v34 = v33;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v32;
  *(inited + 40) = v34;
  v35 = static os_log_type_t.default.getter();
  sub_100005404(v30, &_mh_execute_header, v35, "Unable to retrieve the CRLCollaborationParticipant for the given follower presence UUID (%{public}@) when refusing a follow", 123, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
}

void sub_10090CBB0(void **a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for PersonNameComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + *(type metadata accessor for CRLRefuseOrEndFollow() + 20));
  if (!v12)
  {
    sub_1007D6EB8(v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10000CAAC(v6, &qword_101A0DE80);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v13 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v15 = [v13 localizedStringFromPersonNameComponents:isa style:1 options:0];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      (*(v8 + 8))(v10, v7);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        goto LABEL_11;
      }
    }

    sub_1007D7988();
LABEL_11:
    v20 = String._bridgeToObjectiveC()();

    [v11 showFollowEndedAlertWithHostShortName:v20];

    return;
  }

  if (v12 == 1)
  {
    [v11 showFollowRefusedAlert];
  }

  else
  {
    v21[1] = v12;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

uint64_t sub_10090D0B4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A0AFE0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = sub_1005B981C(&qword_1019F6990);
  v8 = __chkstk_darwin(v7 - 8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for CRLFollowViewportState();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BE14(a1, v14, &qword_101A07B80);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &qword_101A07B80;
    v20 = v14;
LABEL_9:
    sub_10000CAAC(v20, v19);
    v28 = 0;
    return v28 & 1;
  }

  sub_10090F9B0(v14, v18, type metadata accessor for CRLFollowViewportState);
  v22 = v37;
  v21 = v38;
  (*(v37 + 16))(v11, &v18[*(v15 + 20)], v38);
  (*(v22 + 56))(v11, 0, 1, v21);
  v23 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  v24 = v4;
  v25 = v36;
  swift_beginAccess();
  v26 = *(v24 + 48);
  sub_10000BE14(v11, v6, &qword_1019F6990);
  sub_10000BE14(v25 + v23, &v6[v26], &qword_1019F6990);
  v27 = *(v22 + 48);
  if (v27(v6, 1, v21) != 1)
  {
    v29 = v22;
    v30 = v35;
    sub_10000BE14(v6, v35, &qword_1019F6990);
    if (v27(&v6[v26], 1, v21) != 1)
    {
      v32 = v34;
      (*(v29 + 32))(v34, &v6[v26], v21);
      sub_10090F834(&qword_1019F37C0, &type metadata accessor for UUID);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v33 = *(v29 + 8);
      v33(v32, v21);
      sub_10000CAAC(v11, &qword_1019F6990);
      sub_10090FA18(v18, type metadata accessor for CRLFollowViewportState);
      v33(v30, v21);
      sub_10000CAAC(v6, &qword_1019F6990);
      return v28 & 1;
    }

    sub_10000CAAC(v11, &qword_1019F6990);
    sub_10090FA18(v18, type metadata accessor for CRLFollowViewportState);
    (*(v29 + 8))(v30, v21);
    goto LABEL_8;
  }

  sub_10000CAAC(v11, &qword_1019F6990);
  sub_10090FA18(v18, type metadata accessor for CRLFollowViewportState);
  if (v27(&v6[v26], 1, v21) != 1)
  {
LABEL_8:
    v19 = &unk_101A0AFE0;
    v20 = v6;
    goto LABEL_9;
  }

  sub_10000CAAC(v6, &qword_1019F6990);
  v28 = 1;
  return v28 & 1;
}

void sub_10090D65C(void *a1)
{
  v2 = v1;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v30 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v6 = a1;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 64) = v11;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "Adding a pending active participant follow start: %@", 52, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowEndParticipants;
  v14 = swift_beginAccess();
  v15 = *(v2 + v13);
  v31 = v6;
  __chkstk_darwin(v14);
  v29[2] = &v31;

  LOBYTE(v10) = sub_100C33540(sub_10090FEB8, v29, v15);

  if ((v10 & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowStartParticipants;
    swift_beginAccess();
    v28 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_8:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_9;
    }

LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_8;
  }

  swift_beginAccess();
  v16 = v6;
  v17 = sub_1007E0EEC((v2 + v13));

  v18 = *(v2 + v13);
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 >= v17)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  sub_100678944(v17, v19);
  swift_endAccess();
  v20 = swift_initStackObject();
  *(v20 + 16) = v30;
  v21 = v16;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v26, "This participant was pending an end follow so we just cancelled the placard: %@", 79, 2, v20);
  swift_setDeallocating();
  sub_100005070(v20 + 32);
LABEL_9:
  sub_10090E548();
}

void sub_10090D9EC(void *a1)
{
  v2 = v1;
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v4 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v30 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v6 = a1;
  v7 = [v6 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(inited + 56) = &type metadata for String;
  v11 = sub_1000053B0();
  *(inited + 64) = v11;
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "Adding a pending active participant follow end: %@", 50, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowStartParticipants;
  v14 = swift_beginAccess();
  v15 = *(v2 + v13);
  v31 = v6;
  __chkstk_darwin(v14);
  v29[2] = &v31;

  LOBYTE(v10) = sub_100C33540(sub_10090F53C, v29, v15);

  if ((v10 & 1) == 0)
  {
    v27 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowEndParticipants;
    swift_beginAccess();
    v28 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v2 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_8:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_9;
    }

LABEL_12:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_8;
  }

  swift_beginAccess();
  v16 = v6;
  v17 = sub_1007E0EEC((v2 + v13));

  v18 = *(v2 + v13);
  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19 >= v17)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 < v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_6:
  sub_100678944(v17, v19);
  swift_endAccess();
  v20 = swift_initStackObject();
  *(v20 + 16) = v30;
  v21 = v16;
  v22 = [v21 description];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v20 + 56) = &type metadata for String;
  *(v20 + 64) = v11;
  *(v20 + 32) = v23;
  *(v20 + 40) = v25;
  v26 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v26, "This participant was pending a start follow so we just cancelled the placard: %@", 80, 2, v20);
  swift_setDeallocating();
  sub_100005070(v20 + 32);
LABEL_9:
  sub_10090E548();
}

uint64_t sub_10090DD7C()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowStartParticipants;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  v3 = &unk_101A07000;
  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = *(v3 + 350);
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }
  }

LABEL_5:
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v9 = *(v0 + v1);
  v10 = sub_1005B981C(&unk_101A00BF8);
  *(inited + 56) = v10;
  v11 = sub_10001A2F8(&qword_101A00EA0, &unk_101A00BF8);
  *(inited + 64) = v11;
  *(inited + 32) = v9;
  v12 = *(v3 + 350);
  swift_beginAccess();
  v13 = *(v12 + v0);
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 72) = v13;

  v14 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v14, "Processing pending start follow: %@ and end follows: %@", 55, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v15 = *(v12 + v0);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v12;
  v40 = v1;
  if (v16 != 1)
  {
    goto LABEL_26;
  }

  v17 = *(v12 + v0);
  if (v17 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_52;
    }
  }

  else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_52;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v16 = *(v17 + 32);
  }

  v18 = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
  sub_1005B981C(&qword_101A07B78);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
LABEL_49:

LABEL_50:
      v12 = v39;
      v1 = v40;
      goto LABEL_51;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_49;
    }
  }

  v21 = 0;
  v12 = &selRef_canRemoveImageBackground;
  while ((v19 & 0xC000000000000001) == 0)
  {
    if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v3 = &unk_101A07000;
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_3;
      }

      goto LABEL_5;
    }

    v22 = *(v19 + 8 * v21 + 32);
    swift_unknownObjectRetain();
    v1 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_25;
    }

LABEL_21:
    [v22 remoteParticipantDidEndFollowingLocalParticipantWithRemoteParticipant:v16];
    swift_unknownObjectRelease();
    ++v21;
    if (v1 == v20)
    {
      goto LABEL_49;
    }
  }

  v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v1 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  if (v16 >= 2)
  {
    v23 = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
    sub_1005B981C(&qword_101A07B78);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      goto LABEL_96;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_29;
    }

LABEL_51:
  }

LABEL_52:
  v28 = *(v0 + v1);
  if (v28 >> 62)
  {
    goto LABEL_71;
  }

  v16 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 == 1)
  {
    goto LABEL_54;
  }

  while (2)
  {
    if (v16 < 2)
    {
      goto LABEL_93;
    }

    v35 = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
    sub_1005B981C(&qword_101A07B78);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
        goto LABEL_92;
      }
    }

    else
    {
      v36 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_92;
      }
    }

    v37 = 0;
    v12 = &selRef_canRemoveImageBackground;
    while (2)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v1 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          break;
        }

        goto LABEL_79;
      }

      if (v37 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_84;
      }

      v38 = *(v24 + 8 * v37 + 32);
      swift_unknownObjectRetain();
      v1 = v37 + 1;
      if (!__OFADD__(v37, 1))
      {
LABEL_79:
        [v38 multipleRemoteParticipantsDidStartFollowingLocalParticipantWithNumberOfParticipants:{v16, v39, v40}];
        swift_unknownObjectRelease();
        ++v37;
        if (v1 == v36)
        {
          goto LABEL_91;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_93;
    }

LABEL_56:
    if ((v24 & 0xC000000000000001) == 0)
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v24 + 32);
        goto LABEL_59;
      }

      __break(1u);
LABEL_96:
      v25 = _CocoaArrayWrapper.endIndex.getter();
      if (!v25)
      {
        goto LABEL_51;
      }

LABEL_29:
      v26 = 0;
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v1 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v27 = *(v24 + 8 * v26 + 32);
          swift_unknownObjectRetain();
          v1 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }
        }

        [v27 multipleRemoteParticipantsDidEndFollowingLocalParticipantsWithNumberOfParticipants:{v16, v39, v40}];
        swift_unknownObjectRelease();
        ++v26;
        if (v1 == v25)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_88:

    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_59:
    v30 = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
    sub_1005B981C(&qword_101A07B78);
    v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v31 >> 62))
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_61;
      }

LABEL_90:

LABEL_91:
      v12 = v39;
      v1 = v40;
LABEL_92:

      goto LABEL_93;
    }

    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (!v32)
    {
      goto LABEL_90;
    }

LABEL_61:
    v33 = 0;
    v12 = &selRef_canRemoveImageBackground;
    while (2)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v1 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        goto LABEL_65;
      }

      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_70;
      }

      v34 = *(v31 + 8 * v33 + 32);
      swift_unknownObjectRetain();
      v1 = v33 + 1;
      if (!__OFADD__(v33, 1))
      {
LABEL_65:
        [v34 remoteParticipantDidStartFollowingLocalParticipantWithRemoteParticipant:v29];
        swift_unknownObjectRelease();
        ++v33;
        if (v1 == v32)
        {
          goto LABEL_90;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16 != 1)
    {
      continue;
    }

    break;
  }

LABEL_54:
  v24 = *(v0 + v1);
  if (v24 >> 62)
  {
    goto LABEL_85;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_93:
  *(v0 + v1) = _swiftEmptyArrayStorage;

  *(v12 + v0) = _swiftEmptyArrayStorage;
}

void sub_10090E548()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer;
  if (!*&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer])
  {
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v2 = static OS_os_log.crlFollow;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Starting a timer to process start/end follow messages.", 54, 2, _swiftEmptyArrayStorage);
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v10[4] = sub_10090F4A4;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = *"";
    v10[2] = sub_10068B39C;
    v10[3] = &unk_10188D0A0;
    v6 = _Block_copy(v10);
    v7 = v0;

    v8 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:5.0];
    _Block_release(v6);
    v9 = *&v0[v1];
    *&v0[v1] = v8;
  }
}

double sub_10090E7E8()
{
  [objc_opt_self() zoomAnimationDefaultDuration];
  result = v0 + 0.1;
  qword_101A07A70 = *&result;
  return result;
}

id sub_10090E86C()
{
  v1 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator];
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for CRLFollowAccessibilityExperienceCoordinator(0));
    v5 = v0;
    v6 = sub_100CC42F4(v0);
    v7 = *&v0[v1];
    *&v5[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_10090E9DC()
{
  v1 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() isVoiceOverEnabled];
  if (result)
  {
    result = sub_1008FB7A4();
    if (result)
    {
      v12 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_crlaxFollowFeatureLastScrollTimestamp;
      swift_beginAccess();
      sub_10000BE14(v0 + v12, v6, &qword_101A0A320);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        return sub_10000CAAC(v6, &qword_101A0A320);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        Date.timeIntervalSinceNow.getter();
        v14 = sub_1004C3204(fabs(v13), 0.01);
        if (qword_1019F1968 != -1)
        {
          swift_once();
        }

        if (sub_1004C3204(*&qword_101A07A70, 0.01) < v14)
        {
          if (qword_1019F21B8 != -1)
          {
            swift_once();
          }

          v15 = static OS_os_log.crlFollow;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          Date.timeIntervalSinceNow.getter();
          *(inited + 56) = &type metadata for Double;
          *(inited + 64) = &protocol witness table for Double;
          *(inited + 32) = fabs(v17);
          v18 = static os_log_type_t.default.getter();
          sub_100005404(v15, &_mh_execute_header, v18, "Ending follow due to exceeding disconnect cutoff: %f.", 53, 2, inited);
          swift_setDeallocating();
          sub_100005070(inited + 32);
          (*(v8 + 56))(v3, 1, 1, v7);
          swift_beginAccess();
          sub_10002C638(v3, v0 + v12, &qword_101A0A320);
          swift_endAccess();
          v19 = sub_10090E86C();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v21 = Strong;
            sub_1008FEE94(1);

            v19 = v21;
          }
        }

        return (*(v8 + 8))(v10, v7);
      }
    }
  }

  return result;
}

id sub_10090EE04()
{
  v1 = sub_1005B981C(&qword_101A07BB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
  *&v0[v5] = [objc_opt_self() weakObjectsHashTable];
  v6 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
  *&v0[v6] = [objc_opt_self() weakObjectsHashTable];
  v7 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToSend;
  v8 = type metadata accessor for CRLFollowViewportState();
  v9 = *(*(v8 - 8) + 56);
  v9(&v0[v7], 1, 1, v8);
  v9(&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply], 1, 1, v8);
  v10 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator__followingParticipant;
  v20 = 0;
  sub_1005B981C(&qword_101A07B70);
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v10], v4, v1);
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer] = 0;
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowIsRefollow] = 0;
  v11 = &v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_shouldSyncViewportState] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter] = 0;
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isUpdatingLocalICCState] = 0;
  v12 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(&v0[v12], 1, 1, v13);
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowStartParticipants] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_pendingFollowEndParticipants] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp] = 0;
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isProcessingViewportUpdates] = 0;
  v9(&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateInBatch], 1, 1, v8);
  v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportIsInitialViewport] = 0;
  v14 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_crlaxFollowFeatureLastScrollTimestamp;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v0[v14], 1, 1, v15);
  *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator____lazy_storage___accessibilityExperienceCoordinator] = 0;
  v16 = type metadata accessor for CRLFollowCoordinator();
  v19.receiver = v0;
  v19.super_class = v16;
  return objc_msgSendSuper2(&v19, "init");
}

void sub_10090F1A0()
{
  sub_10090F410(319, &qword_101A07B60, type metadata accessor for CRLFollowViewportState);
  if (v0 <= 0x3F)
  {
    sub_10090F3AC();
    if (v1 <= 0x3F)
    {
      sub_10090F410(319, &qword_1019F44E0, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        sub_10090F410(319, &qword_101A0BCE0, &type metadata accessor for Date);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10090F3AC()
{
  if (!qword_101A07B68)
  {
    sub_1005C4E5C(&qword_101A07B70);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101A07B68);
    }
  }
}

void sub_10090F410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10090F464@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLFollowCoordinator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_10090F4A4()
{
  v1 = *(v0 + 16);
  sub_10090DD7C();
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer);
  *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer) = 0;
}

uint64_t sub_10090F558(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, char a7, uint64_t a8)
{
  v24[3] = &type metadata for CRLBoardAuxiliaryRealTimeChange;
  v24[4] = &off_1018834F0;
  v16 = swift_allocObject();
  v24[0] = v16;
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  v17 = *(a8 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  sub_10000630C(v24, v23);
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  sub_100050F74(v23, v18 + 48);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10090F794;
  *(v19 + 24) = v18;
  v22[4] = sub_10002AAE4;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = *"";
  v22[2] = sub_10002AAB8;
  v22[3] = &unk_10188D140;
  v20 = _Block_copy(v22);
  sub_100024E98(a5, a6);

  dispatch_sync(v17, v20);
  _Block_release(v20);
  LOBYTE(a8) = swift_isEscapingClosureAtFileLocation();

  if ((a8 & 1) == 0)
  {
    return sub_100005070(v24);
  }

  __break(1u);
  return result;
}

void sub_10090F7A8()
{
  v1 = *(type metadata accessor for CRLFollowViewportState() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = v3 + *(v1 + 64);
  v5 = *v4;
  v6 = *(v4 + 1);

  sub_100906FC0(v2, v3, v5, v6);
}

uint64_t sub_10090F834(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10090F8A4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter) = v4;
  }
}

uint64_t sub_10090F948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10090F9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10090FA18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10090FA78()
{
  v3[3] = &type metadata for CRLFeatureFlags;
  v3[4] = sub_100004D60();
  LOBYTE(v3[0]) = 13;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v3);
  if (v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v3[0])
    {

      if (qword_1019F21B8 != -1)
      {
        swift_once();
      }

      v1 = static OS_os_log.crlFollow;
      v2 = static os_log_type_t.default.getter();
      sub_100005404(v1, &_mh_execute_header, v2, "Calling didEndFollowing because of a selection path change", 58, 2, _swiftEmptyArrayStorage);
      sub_1008FF010(1);
    }
  }
}

void sub_10090FB9C()
{
  v2[3] = &type metadata for CRLFeatureFlags;
  v2[4] = sub_100004D60();
  LOBYTE(v2[0]) = 13;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v2);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v2[0])
    {

      *(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_shouldSyncViewportState) = 1;
      sub_10090624C(0);
    }
  }
}

void sub_10090FC64()
{
  v4[3] = &type metadata for CRLFeatureFlags;
  v4[4] = sub_100004D60();
  LOBYTE(v4[0]) = 13;
  v1 = isFeatureEnabled(_:)();
  sub_100005070(v4);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4[0])
    {

      if ((*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isUpdatingLocalICCState) & 1) == 0)
      {
        if (qword_1019F21B8 != -1)
        {
          swift_once();
        }

        v2 = static OS_os_log.crlFollow;
        v3 = static os_log_type_t.default.getter();
        sub_100005404(v2, &_mh_execute_header, v3, "Calling didEndFollowing because of a zoom/scroll notification", 61, 2, _swiftEmptyArrayStorage);
        sub_1008FF010(1);
      }
    }
  }
}

unint64_t sub_10090FDAC()
{
  result = qword_101A07BC0;
  if (!qword_101A07BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07BC0);
  }

  return result;
}

unint64_t sub_10090FE00()
{
  result = qword_101A07BC8;
  if (!qword_101A07BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07BC8);
  }

  return result;
}

uint64_t sub_10090FED8(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = _s17QLSnapshotBackendC12BackendStateOMa(0);
  v2[18] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v2[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10090FFD8, v4, v3);
}

uint64_t sub_10090FFD8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(v1, v3, v5);
  (*(v6 + 56))(v1, 0, 1, v5);
  v8 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL;
  swift_beginAccess();
  sub_10084E778(v1, v4 + v8);
  swift_endAccess();
  v9 = v2 + *(sub_1005B981C(&qword_101A07DE8) + 48);
  v7(v2, v3, v5);
  v10 = v3 + *(type metadata accessor for CRLUSDRendering.SceneRequest(0) + 20);
  v11 = *(v10 + 64);
  v12 = *(v10 + 16);
  v13 = *(v10 + 32);
  v14 = *(v10 + 48);
  *v9 = *v10;
  *(v9 + 16) = v12;
  *(v9 + 32) = v13;
  *(v9 + 48) = v14;
  *(v9 + 64) = v11;
  swift_storeEnumTagMultiPayload();
  v15 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_backendState;
  swift_beginAccess();
  sub_100911BE0(v2, v4 + v15);
  swift_endAccess();
  v16 = v4 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v0 + 128);
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v20 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_uuid;
    BoundingBox.init()();
    v27 = v22;
    v28 = v21;
    v23 = sub_100BD6B64(_swiftEmptyArrayStorage);
    v24 = sub_100BD6968(_swiftEmptyArrayStorage);
    *(v0 + 16) = v28;
    *(v0 + 32) = v27;
    *(v0 + 48) = v23;
    *(v0 + 56) = 1;
    *(v0 + 64) = v24;
    (*(v18 + 8))(v17 + v20, v0 + 16, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100910268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_100910304, v5, v4);
}

uint64_t sub_100910304()
{
  v1 = v0[4];
  v2 = static MainActor.shared.getter();
  v0[9] = v2;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = sub_1005B981C(&unk_101A265A0);
  *v4 = v0;
  v4[1] = sub_10091041C;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v2, &protocol witness table for MainActor, 0xD000000000000011, 0x800000010156F580, sub_100911B44, v3, v5);
}

uint64_t sub_10091041C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_10091057C, v3, v2);
}

uint64_t sub_10091057C()
{
  v1 = v0[3];

  v2 = *v1;
  *v1 = v0[2];

  v3 = v0[1];

  return v3();
}

void sub_1009105F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07DD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() sharedGenerator];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100911B4C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100910834;
  aBlock[3] = &unk_10188D350;
  v11 = _Block_copy(aBlock);

  [v8 generateRepresentationsForRequest:a2 updateHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1009107D0(void *a1)
{
  if (a1)
  {
    v1 = [a1 UIImage];
  }

  sub_1005B981C(&qword_101A07DD8);
  return CheckedContinuation.resume(returning:)();
}

void sub_100910834(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

void sub_1009108C8(uint64_t a1)
{
  v2 = [objc_opt_self() sharedGenerator];
  [v2 cancelRequest:a1];
}

uint64_t sub_100910938()
{
  sub_10000CAAC(v0 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL, &unk_1019F33C0);
  sub_1000C1024(v0 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate);
  sub_100911A34(v0 + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_backendState);
  v1 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_100910A3C()
{
  sub_10084E720();
  if (v0 <= 0x3F)
  {
    _s17QLSnapshotBackendC12BackendStateOMa(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100910B74()
{
  sub_100910BDC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_100910BDC()
{
  if (!qword_101A07DA8)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A07DA8);
    }
  }
}

uint64_t sub_100910C48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100910CC0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10090FED8(a1);
}

uint64_t sub_100910D54()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100910DE8, v2, v1);
}

uint64_t sub_100910DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100910E4C()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100911C44, v2, v1);
}

uint64_t sub_100910EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10086E338;

  return sub_10091130C();
}

uint64_t sub_100910F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s17QLSnapshotBackendC12BackendStateOMa(0);
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = sub_1005B981C(&qword_101A07DE0);
  __chkstk_darwin(v14 - 8);
  v16 = v35 - v15;
  v18 = v35 + *(v17 + 56) - v15;
  sub_1009119D0(a1, v35 - v15);
  sub_1009119D0(a2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1009119D0(v16, v13);
    v27 = *(sub_1005B981C(&qword_101A07DE8) + 48);
    v28 = *&v13[v27 + 48];
    v35[2] = *&v13[v27 + 32];
    v35[3] = v28;
    v36 = *&v13[v27 + 64];
    v29 = *&v13[v27 + 16];
    v35[0] = *&v13[v27];
    v35[1] = v29;
    if (!swift_getEnumCaseMultiPayload())
    {
      v30 = *&v18[v27 + 48];
      v37[2] = *&v18[v27 + 32];
      v37[3] = v30;
      v38 = *&v18[v27 + 64];
      v31 = *&v18[v27 + 16];
      v37[0] = *&v18[v27];
      v37[1] = v31;
      (*(v5 + 32))(v7, v18, v4);
      v32 = static URL.== infix(_:_:)();
      v33 = *(v5 + 8);
      v33(v7, v4);
      v33(v13, v4);
      if (v32)
      {
        v26 = sub_100C72E04(v35, v37);
        goto LABEL_14;
      }

      sub_100911A34(v16);
      goto LABEL_11;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1009119D0(v16, v10);
    v20 = *v10;
    v21 = *(v10 + 1);
    v22 = v10[16];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v18;
      v24 = *(v18 + 1);
      v25 = v18[16];
      v26 = sub_100C72734(v20, v21, v22, v23, v24, v25);
      sub_100863EEC(v20, v21, v22);
      sub_100863EEC(v23, v24, v25);
LABEL_14:
      sub_100911A34(v16);
      return v26 & 1;
    }

    sub_100863EEC(v20, v21, v22);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_10000CAAC(v16, &qword_101A07DE0);
LABEL_11:
    v26 = 0;
    return v26 & 1;
  }

  sub_100911A34(v16);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_10091130C()
{
  v1[9] = v0;
  sub_1005B981C(&unk_1019F33C0);
  v1[10] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = _s17QLSnapshotBackendC12BackendStateOMa(0);
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v4;
  v1[19] = v3;

  return _swift_task_switch(sub_10091146C, v4, v3);
}

uint64_t sub_10091146C()
{
  v1 = v0[15];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_backendState;
  swift_beginAccess();
  sub_1009119D0(v2 + v3, v1);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = v0[15];

    sub_100911A34(v4);
LABEL_5:

    v13 = v0[1];

    return v13(0, 0, 1);
  }

  v5 = v0[15];
  v6 = v0[11];
  v7 = v0[12];
  v9 = v0[9];
  v8 = v0[10];
  v10 = *(v7 + 8);
  v0[20] = v10;
  v0[21] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v6);
  v11 = OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL;
  swift_beginAccess();
  sub_10001ACF0(v9 + v11, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v12 = v0[10];

    sub_10000CAAC(v12, &unk_1019F33C0);
    goto LABEL_5;
  }

  v15 = v0[9];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v18 = objc_allocWithZone(QLThumbnailGenerationRequest);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v18 initWithFileAtURL:v20 size:4 scale:v16 representationTypes:{v17, 1.0}];
  v0[22] = v22;

  [v22 setIconMode:0];
  v0[8] = 0;
  v23 = swift_task_alloc();
  v0[23] = v23;
  *(v23 + 16) = v0 + 8;
  *(v23 + 24) = v22;
  v24 = swift_task_alloc();
  v0[24] = v24;
  *(v24 + 16) = v22;
  v25 = static MainActor.shared.getter();
  v0[25] = v25;
  v26 = swift_task_alloc();
  v0[26] = v26;
  *v26 = v0;
  v26[1] = sub_100911784;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v26, &unk_1014872E8, v23, sub_100911B3C, v24, v25, &protocol witness table for MainActor, &type metadata for () + 8);
}

uint64_t sub_100911784()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 144);
    v5 = *(v2 + 152);

    return _swift_task_switch(sub_1009118D0, v4, v5);
  }
}

uint64_t sub_1009118D0()
{

  v1 = *(v0 + 64);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  if (v1)
  {
    v6 = [*(v0 + 64) CGImage];

    v2 = v1;
  }

  else
  {
    v6 = 0;
  }

  v3(v4, v5);

  v7 = *(v0 + 8);

  return v7(v6, 0, 1);
}

uint64_t sub_1009119D0(uint64_t a1, uint64_t a2)
{
  v4 = _s17QLSnapshotBackendC12BackendStateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100911A34(uint64_t a1)
{
  v2 = _s17QLSnapshotBackendC12BackendStateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100911A90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002D3D4;

  return sub_100910268(a1, v5, v4);
}

uint64_t sub_100911B4C(void *a1)
{
  sub_1005B981C(&qword_101A07DD8);

  return sub_1009107D0(a1);
}

uint64_t sub_100911BE0(uint64_t a1, uint64_t a2)
{
  v4 = _s17QLSnapshotBackendC12BackendStateOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100911C48()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0;
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (result)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v12 = result;
    while (1)
    {
      result = [v13 numberOfItemsInSection:{v6, v12}];
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = result;
      if (result)
      {
        v9 = 0;
        do
        {
          IndexPath.init(item:section:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100B38180(0, v7[2] + 1, 1, v7);
          }

          v11 = v7[2];
          v10 = v7[3];
          if (v11 >= v10 >> 1)
          {
            v7 = sub_100B38180(v10 > 1, v11 + 1, 1, v7);
          }

          ++v9;
          v7[2] = v11 + 1;
          (*(v2 + 32))(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11, v4, v1);
        }

        while (v8 != v9);
      }

      if (++v6 == v12)
      {
        return v7;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100911E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100911F68())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v3 = [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 boardItems];
    swift_unknownObjectRelease();
    type metadata accessor for CRLBoardItem(0);
    sub_1006D2240();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v6;
}

id sub_100911F10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterBoardItemDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100911F68()
{
  result = qword_101A0E8B0;
  if (!qword_101A0E8B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A0E8B0);
  }

  return result;
}

uint64_t type metadata accessor for CRLAssetAddress()
{
  result = qword_101A07E70;
  if (!qword_101A07E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100912028()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLAssetReferrerIdentifier(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_100912174()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = *&v0[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView];
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = v4;
  v8 = v5;
  v9 = v0;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_10064191C(0, 0, v3, &unk_101487380, v11);

  sub_1005B981C(&unk_1019F4D60);
  result = swift_allocObject();
  *(result + 1) = xmmword_10146CE00;
  result[4] = v8;
  result[5] = v7;
  return result;
}

uint64_t sub_10091230C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009123A4, v6, v5);
}

uint64_t sub_1009123A4()
{
  v1 = *(v0 + 16);

  (*((swift_isaMask & *v1) + 0x190))(v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_10091244C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc;
  v5 = [*(a1 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc) repForTextEditingInspecting];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:

LABEL_11:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v8 = Strong;
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    goto LABEL_8;
  }

  if (*(*&v8[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    v10 = v9;
    v11 = [v9 layoutForInfo:?];

    if (v11)
    {
      type metadata accessor for CRLWPLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;

        v14 = [v13 geometry];
        [v14 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        [v6 convertNaturalRectToUnscaledCanvas:{v16, v18, v20, v22}];
        v27 = sub_1001206EC(v16, v18, v20, v22, v23, v24, v25, v26);
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = *(a1 + v4);
        [v34 convertUnscaledToBoundsRect:{v27, v29, v31, v33}];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        *a2 = v36;
        *(a2 + 8) = v38;
        *(a2 + 16) = v40;
        *(a2 + 24) = v42;
        return;
      }

      v6 = v8;
      goto LABEL_9;
    }

LABEL_8:
    v11 = v8;
LABEL_9:

    v6 = v11;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_100912664()
{
  v1 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView;
  [*(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView) removeFromSuperview];
  v2 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView;
  [*(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView) removeFromSuperview];
  v3 = OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView;
  [*(v0 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView) removeFromSuperview];
  v4 = *(v0 + v1);
  *(v0 + v1) = 0;

  v5 = *(v0 + v2);
  *(v0 + v2) = 0;

  v6 = *(v0 + v3);
  *(v0 + v3) = 0;
}

id sub_100912880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLSelectionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100912954(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_overlayView] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_underlayView] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView] = 0;
  v1[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_isGlowAnimationEnabled] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc] = a1;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLSelectionViewController();
  v3 = a1;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_100912A04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10091230C(a1, v4, v5, v6);
}

uint64_t sub_100912AB8()
{
  qword_101AD6C20 = 97;
  *algn_101AD6C28 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD6C30 = result;
  return result;
}

uint64_t sub_100912AFC()
{
  if (qword_1019F1970 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD6C20;

  return v0;
}

uint64_t sub_100912B7C(uint64_t a1)
{
  v2 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_100912BFC(uint64_t a1)
{
  v2 = sub_1009155EC(&qword_101A084D0, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_100912C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_100912CE4()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_100912D68()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_100912DE4()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_100912E60()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_100912EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_100912F70()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_100912FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_100913070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1009130F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_100913188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_100913204()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_100913270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_1009132EC()
{
  sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_100913370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_1009135F4(uint64_t a1)
{
  v2 = sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_100913670@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_101AD6C38;
  swift_beginAccess();
  return sub_100915828(v1 + v3, a1, type metadata accessor for CRLWPShapeItemCRDTData);
}

uint64_t sub_1009136F4()
{
  v0 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  __chkstk_darwin(v0);
  v2 = v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MergeResult();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLWPStickyNoteItemData(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v8 = qword_101AD6C38;
    v10[1] = v0;
    v9 = result;
    swift_beginAccess();
    sub_100915828(v9 + v8, v2, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    swift_beginAccess();
    sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

    CRStruct_1.merge(_:)();
    sub_100915890(v2, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    (*(v4 + 8))(v6, v3);
    swift_endAccess();
  }

  return result;
}

uint64_t *sub_100913904(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v41 - v7;
  v8 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v14);
  v49 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v41 - v17;
  __chkstk_darwin(v18);
  v46 = &v41 - v19;
  __chkstk_darwin(v20);
  v52 = &v41 - v21;
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  __chkstk_darwin(v25);
  v27 = &v41 - v26;
  v28 = *(*v2 + 736);
  swift_beginAccess();
  if (a1)
  {
    sub_10000BE14(v2 + v28, v24, &unk_101A0F400);
    sub_10001A2F8(&qword_1019F7EF0, &unk_101A0F400);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v24, &unk_101A0F400);
    v29 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v2 + v29, v10, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_1009155EC(&qword_101A084D0, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100915890(v10, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  }

  else
  {
    sub_10000BE14(v2 + v28, v27, &unk_101A0F400);
    v30 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v2 + v30, v13, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  }

  v41 = v10;
  v42 = v13;
  v44 = v24;
  v47 = v27;
  sub_10000BE14(v27, v24, &unk_101A0F400);
  v43 = type metadata accessor for CRLWPStickyNoteItemCRDTData;
  sub_100915828(v13, v10, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  v31 = *(v2 + 40);
  v53[0] = *(v2 + 24);
  v53[1] = v31;
  v54 = *(v2 + 56);
  v45 = *(v2 + 16);
  type metadata accessor for CRLWPStickyNoteItemData(0);
  v32 = swift_allocObject();
  sub_100915828(v10, v32 + qword_101AD6C38, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  v33 = v52;
  sub_10000BE14(v24, v52, &unk_101A0F400);
  v34 = v50;
  sub_100915828(v10, v50, type metadata accessor for CRLWPShapeItemCRDTData);
  v35 = v46;
  sub_10000BE14(v33, v46, &unk_101A0F400);
  v36 = v51;
  sub_100915828(v34, v51, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100915828(v36, v32 + *(*v32 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  v37 = v48;
  sub_10000BE14(v35, v48, &unk_101A0F400);
  *(v32 + qword_101A27318) = 0;
  v38 = v49;
  sub_10000BE14(v37, v49, &unk_101A0F400);
  sub_10000BE14(v38, v32 + *(*v32 + 736), &unk_101A0F400);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v38, &unk_101A0F400);
  sub_10000CAAC(v37, &unk_101A0F400);
  sub_100915890(v36, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v35, &unk_101A0F400);
  sub_100915890(v34, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_10000CAAC(v52, &unk_101A0F400);
  v39 = v43;
  sub_100915890(v41, v43);
  sub_10000CAAC(v44, &unk_101A0F400);
  sub_100915890(v42, v39);
  sub_10000CAAC(v47, &unk_101A0F400);
  return sub_100747AF0(v53, v45);
}

uint64_t sub_100913F68()
{
  v1 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  v39 = type metadata accessor for UUID();
  v7 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_1005B981C(&unk_101A0F400);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  type metadata accessor for CRLWPStickyNoteItemData(0);
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19;
  v37 = v6;
  v38 = v3;
  v21 = *(*v0 + 736);
  swift_beginAccess();
  v36 = v0;
  sub_10000BE14(v0 + v21, v18, &unk_101A0F400);
  v22 = *(*v20 + 736);
  swift_beginAccess();
  sub_10000BE14(v20 + v22, v15, &unk_101A0F400);

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v23 = static UUID.== infix(_:_:)();
  v24 = *(v7 + 8);
  v25 = v39;
  v24(v9, v39);
  v24(v12, v25);
  if ((v23 & 1) == 0)
  {

    sub_10000CAAC(v15, &unk_101A0F400);
    sub_10000CAAC(v18, &unk_101A0F400);
LABEL_7:
    v34 = 0;
    return v34 & 1;
  }

  v26 = sub_101278AEC();
  sub_10000CAAC(v15, &unk_101A0F400);
  sub_10000CAAC(v18, &unk_101A0F400);
  if ((v26 & 1) == 0)
  {

    goto LABEL_7;
  }

  v27 = qword_101AD6C38;
  v28 = v36;
  swift_beginAccess();
  v29 = v28 + v27;
  v30 = v37;
  sub_100915828(v29, v37, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = qword_101AD6C38;
  swift_beginAccess();
  v32 = v20 + v31;
  v33 = v38;
  sub_100915828(v32, v38, type metadata accessor for CRLWPShapeItemCRDTData);
  v34 = sub_100694A88(v30);

  sub_100915890(v33, type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100915890(v30, type metadata accessor for CRLWPShapeItemCRDTData);
  return v34 & 1;
}

uint64_t sub_10091438C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = qword_101AD6C38;
  swift_beginAccess();
  if (a2)
  {
    sub_100915828(v2 + v10, v6, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_1009155EC(&qword_101A084D0, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100915890(v6, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  }

  else
  {
    sub_100915828(v2 + v10, v9, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  }

  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_1009155EC(&qword_101A084F0, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  v12 = CRDT.serializedData(_:version:)();
  sub_100915890(v9, type metadata accessor for CRLWPStickyNoteItemCRDTData);
  return v12;
}

uint64_t sub_1009145D0()
{
  v1 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v13[-v5];
  type metadata accessor for CRLWPStickyNoteItemData(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v0 + v9, v6, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    v10 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v8 + v10, v3, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    v11 = CRStruct_1.hasDelta(from:)();
    sub_100915890(v3, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_100915890(v6, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    return v11 & 1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1009147BC(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
  __chkstk_darwin(v27);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1005B981C(&qword_101A08510);
  __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v2 + v15, v7, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    v16 = qword_101AD6C38;
    swift_beginAccess();
    sub_100915828(v14 + v16, v4, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);

    CRStruct_1.delta(_:from:)();
    sub_100915890(v4, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    sub_100915890(v7, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    v17 = v26;
    sub_10000BE14(v12, v26, &qword_101A08510);
    v18 = sub_1005B981C(&qword_101A084E8);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000CAAC(v12, &qword_101A08510);

      sub_10000CAAC(v17, &qword_101A08510);
      return 0;
    }

    else
    {
      if (qword_1019F1520 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for CRCodableVersion();
      sub_1005EB3DC(v21, qword_101AD6348);
      sub_10001A2F8(&qword_101A084E0, &qword_101A084E8);
      v22 = v29;
      v23 = PartialCRDT.deltaSerializedData(_:version:)();
      if (v22)
      {
        sub_10000CAAC(v12, &qword_101A08510);

        return (*(v19 + 8))(v17, v18);
      }

      else
      {
        v24 = v23;
        sub_10000CAAC(v12, &qword_101A08510);

        (*(v19 + 8))(v17, v18);
        return v24;
      }
    }
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100914C60(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A084E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_100024E98(a1, a2);
  sub_10001A2F8(&qword_101A084E0, &qword_101A084E8);
  v11 = v33;
  PartialCRDT.init(serializedData:)();
  if (!v11)
  {
    v29 = v6;
    v30 = v8;
    v33 = 0;
    v13 = v31;
    v12 = v32;
    swift_beginAccess();
    type metadata accessor for CRLWPStickyNoteItemCRDTData(0);
    sub_1009155EC(&qword_101A08508, type metadata accessor for CRLWPStickyNoteItemCRDTData);
    LOBYTE(v6) = CRStruct_1.merge(delta:)();
    swift_endAccess();
    if ((v6 & 1) == 0)
    {
      v28 = v10;
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v27 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v15 = *(*v12 + 744);
      swift_beginAccess();
      v16 = v12 + v15;
      v17 = v29;
      (*(v13 + 16))(v29, v16, v4);
      v18 = UUID.uuidString.getter();
      v20 = v19;
      (*(v13 + 8))(v17, v4);
      *(inited + 56) = &type metadata for String;
      v21 = sub_1000053B0();
      *(inited + 64) = v21;
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v34 = v12;
      type metadata accessor for CRLWPStickyNoteItemData(0);

      v22 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v21;
      *(inited + 72) = v22;
      *(inited + 80) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v27, &_mh_execute_header, v24, "Delta failed to apply for %{public}@%{public}@", 46, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v10 = v28;
    }

    (*(v30 + 8))(v10, v7);
  }

  return v6 & 1;
}

uint64_t sub_10091509C()
{
  sub_10000CAAC(v0 + *(*v0 + 736), &unk_101A0F400);
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100915890(v0 + *(*v0 + 888), type metadata accessor for CRLWPShapeItemCRDTData);
  sub_100915890(v0 + qword_101AD6C38, type metadata accessor for CRLWPStickyNoteItemCRDTData);

  return swift_deallocClassInstance();
}

uint64_t sub_1009151F4()
{
  result = type metadata accessor for CRLWPStickyNoteItemCRDTData(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void (*sub_100915284(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for CRLWPShapeItemCRDTData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = qword_101AD6C38;
  v4[11] = v6;
  v4[12] = v8;
  swift_beginAccess();
  sub_100915828(v1 + v8, v7, type metadata accessor for CRLWPShapeItemCRDTData);
  return sub_100915390;
}

void sub_100915390(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  if (a2)
  {
    sub_100915828(*(*a1 + 88), v5, type metadata accessor for CRLWPShapeItemCRDTData);
    swift_beginAccess();
    sub_1009158F0(v5, v6 + v4);
    swift_endAccess();
    sub_100915890(v5, type metadata accessor for CRLWPShapeItemCRDTData);
  }

  else
  {
    swift_beginAccess();
    sub_1009158F0(v3, v6 + v4);
    swift_endAccess();
  }

  sub_100915890(v3, type metadata accessor for CRLWPShapeItemCRDTData);
  free(v3);
  free(v5);

  free(v2);
}

void sub_1009154D8()
{
  type metadata accessor for CRLWPShapeItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1009155EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100915828(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100915890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009158F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100915954@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CRLSpringLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1008DA1EC(v1, v8);
    sub_100B77684(v4, &v9);

    sub_1007D0604(v8);
    v5 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      v6 = v11;
      sub_100020E58(&v9, *(&v10 + 1));
      (*(v6 + 48))(v5, v6);
      sub_100005070(&v9);
      return result;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_10000CAAC(&v9, &qword_1019F7310);
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_100915A54@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLCanvasLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (v1 + *(v3 + 48));
    v7 = v6[3];
    v8 = v6[4];
    sub_100020E58(v6, v7);
    (*(v8 + 56))(v12, v7, v8);
    sub_100B77684(v5, &v13);

    sub_100687CF4(v12);
    v9 = *(&v14 + 1);
    if (*(&v14 + 1))
    {
      v10 = v15;
      sub_100020E58(&v13, *(&v14 + 1));
      (*(v10 + 48))(v9, v10);
      sub_100005070(&v13);
      return result;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  sub_10000CAAC(&v13, &qword_1019F7310);
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

double sub_100915B84@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CRLBasicLayerAnimation();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1005F8AB8(v1, v8);
    sub_100B77684(v4, &v9);

    sub_1005F8B14(v8);
    v5 = *(&v10 + 1);
    if (*(&v10 + 1))
    {
      v6 = v11;
      sub_100020E58(&v9, *(&v10 + 1));
      (*(v6 + 48))(v5, v6);
      sub_100005070(&v9);
      return result;
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  sub_10000CAAC(&v9, &qword_1019F7310);
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

id sub_100915C84(char a1, int a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v17 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v84 - v21;
  __chkstk_darwin(v22);
  v24 = &v84 - v23;
  __chkstk_darwin(v25);
  v91 = &v84 - v26;
  __chkstk_darwin(v27);
  *&v92 = &v84 - v28;
  v29 = objc_opt_self();
  [v29 begin];
  v30 = &selRef_allowResizeDelegate;
  if (a1)
  {
    v87 = v29;
    v88 = a2;
    v89 = a3;
    v31 = *(v8 + 16);
    v32 = sub_100120414(a4, a5, a6, a7);
    v34 = v33;
    v86 = *(v8 + 24);
    [v86 viewScale];
    [v31 setContentOffset:{sub_10091673C(v32, v34, v35)}];
    sub_1009168E8(v96, a8, v32, v34);
    v85 = *(v8 + 8);
    v96[1] = v96[0];
    v96[2] = v96[0];
    v94[1] = v96[0];
    v94[0] = v96[0];
    v95 = 52;
    v84 = v8;
    if (qword_1019F1E20 != -1)
    {
      swift_once();
    }

    v36 = qword_101AD7728;
    sub_1006C121C(v94, (v19 + 24));
    UUID.init()();
    sub_100687CF4(v94);
    swift_unknownObjectWeakInit();
    v37 = *(v17 + 28);
    v38 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler();
    v39 = *(*(v38 - 8) + 56);
    v39(&v19[v37], 1, 1, v38);
    v39(&v19[*(v17 + 32)], 1, 1, v38);
    v40 = v85;
    swift_unknownObjectWeakAssign();
    *(v19 + 8) = xmmword_10146D9F0;
    *v19 = v36;
    *(v19 + 36) = 0;
    *(v19 + 74) = 131586;
    v41 = v90;
    sub_1006C0E98(v19, v90);
    *(v41 + 16) = 0;
    v42 = v36;
    sub_1006C0F98(v19);
    sub_1006C0E98(v41, v24);
    *&v94[0].m14 = &type metadata for CRLBasicLayerAnimation.Def;
    v43 = sub_1005F907C();
    *&v94[0].m21 = v43;
    *&v94[0].m11 = swift_allocObject();
    sub_1005F8AB8(v24, *&v94[0].m11 + 16);
    *(sub_10002A948(v94, &type metadata for CRLBasicLayerAnimation.Def) + 297) = 0;
    sub_1006BF678(v94);
    sub_1006C0F98(v41);
    v44 = v91;
    sub_1006C0E98(v24, v91);
    *&v94[0].m14 = &type metadata for CRLBasicLayerAnimation.Def;
    *&v94[0].m21 = v43;
    *&v94[0].m11 = swift_allocObject();
    sub_1005F8AB8(v44, *&v94[0].m11 + 16);
    *(sub_10002A948(v94, &type metadata for CRLBasicLayerAnimation.Def) + 298) = 0;
    sub_1006BF678(v94);
    sub_1006C0F98(v24);
    v45 = *&v92;
    sub_1006C0E98(v44, *&v92);
    *&v94[0].m14 = &type metadata for CRLBasicLayerAnimation.Def;
    *&v94[0].m21 = v43;
    *&v94[0].m11 = swift_allocObject();
    sub_1005F8AB8(v45, *&v94[0].m11 + 16);
    v46 = sub_10002A948(v94, &type metadata for CRLBasicLayerAnimation.Def);
    v47 = *(v46 + 288);
    *(v46 + 288) = kCAFillModeBoth;
    v48 = kCAFillModeBoth;

    sub_1006BF678(v94);
    sub_1006C0F98(v44);
    sub_100915B84(v94);
    v49 = CACurrentMediaTime();
    v50 = sub_1006BFEF0(v94, v49);
    sub_10000CAAC(v94, &unk_101A09F80);
    v51 = String._bridgeToObjectiveC()();
    [v40 removeAnimationForKey:{v51, v84}];

    v52 = String._bridgeToObjectiveC()();
    v53 = v40;
    [v40 addAnimation:v50 forKey:v52];

    v30 = &selRef_allowResizeDelegate;
    v54 = [v53 associatedBackgroundLayer];
    if (v54)
    {
      v55 = v54;
      v94[0] = v96[0];
      CATransform3DGetAffineTransform(&v93, v94);
      v56 = *&v93.c;
      v57 = *&v93.tx;
      v58 = &v55[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
      *v58 = *&v93.a;
      *(v58 + 1) = v56;
      *(v58 + 2) = v57;
      LOBYTE(a2) = v88;
      LOBYTE(a3) = v89;
      v59 = v86;
      if (v55[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v55[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
      {
        [v55 setNeedsLayout];
      }

      sub_1006C0F98(v45);
      v29 = v87;
    }

    else
    {
      sub_1006C0F98(v45);

      LOBYTE(a2) = v88;
      LOBYTE(a3) = v89;
      v59 = v86;
      v29 = v87;
    }
  }

  else
  {
    v53 = *(v8 + 8);
    v60 = *&CATransform3DIdentity.m33;
    *&v94[0].m31 = *&CATransform3DIdentity.m31;
    *&v94[0].m33 = v60;
    v61 = *&CATransform3DIdentity.m43;
    *&v94[0].m41 = *&CATransform3DIdentity.m41;
    *&v94[0].m43 = v61;
    v62 = *&CATransform3DIdentity.m13;
    *&v94[0].m11 = *&CATransform3DIdentity.m11;
    *&v94[0].m13 = v62;
    v63 = *&CATransform3DIdentity.m23;
    *&v94[0].m21 = *&CATransform3DIdentity.m21;
    *&v94[0].m23 = v63;
    [v53 setTransform:v94];
    v59 = *(v8 + 24);
    [v59 viewScale];
    if (sub_100687D48(v64, a8))
    {
      v65 = sub_100120414(a4, a5, a6, a7);
    }

    else
    {
      [v59 visibleUnscaledRect];
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v92 = a7;
      v74 = v73;
      [v59 setViewScale:a8];
      [v59 i_viewScaleDidChange];
      [v59 setContentOffset:0 scrollOptions:{sub_100120414(v68, v70, v72, v74)}];
      v75 = sub_100120414(a4, a5, a6, v92);
      v77 = v76;
      [v59 growCanvasAsNeededToRestoreContentOffset:?];
      v66 = v77;
      v65 = v75;
    }

    [*(v8 + 16) setContentOffset:{sub_10091673C(v65, v66, a8)}];
  }

  [v59 i_viewScrollDidChange];
  if ((a3 & 1) == 0)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    [v59 i_viewWillBeginZooming];
    [v59 viewDidEndZooming];
    if ((a3 & 1) == 0)
    {
      return [v29 commit];
    }

    goto LABEL_17;
  }

  v79 = String._bridgeToObjectiveC()();
  [v53 removeAnimationForKey:v79];

  v80 = [v53 v30[181]];
  if (v80)
  {
    v81 = &v80[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_dynamicTransform];
    v82 = *&CGAffineTransformIdentity.c;
    *v81 = *&CGAffineTransformIdentity.a;
    *(v81 + 1) = v82;
    *(v81 + 2) = *&CGAffineTransformIdentity.tx;
    if (v80[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1 && (v80[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] & 1) == 0)
    {
      v83 = v80;
      [v80 setNeedsLayout];
      v80 = v83;
    }
  }

  [v59 i_viewScrollingEnded];
  if (a2)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (a3)
  {
LABEL_17:
    [v59 i_viewDidZoomToViewScale:1 notify:a8];
  }

  return [v29 commit];
}

void sub_100916524(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  v15 = 0xD00000000000001BLL;
  v16 = 0x80000001015785A0;
  v6 = [a1 canvasView];
  if (!v6)
  {
    sub_10000CAAC(a2, &qword_101A07158);
LABEL_7:

    sub_10000CAAC(v13, &qword_101A07158);
    *(a3 + 80) = 0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v7 = v6;
  v8 = [v6 enclosingScrollView];
  if (!v8)
  {
    sub_10000CAAC(a2, &qword_101A07158);

    v4 = v7;
    goto LABEL_7;
  }

  v12[0] = v7;
  v12[2] = v8;
  v9 = v7;
  v12[1] = [v9 canvasLayer];
  v10 = [v9 canvasLayer];

  v11 = [v10 controller];
  if (v11)
  {

    v12[3] = v11;
    sub_1009166CC(a2, v13);
    sub_100687BC0(v12, a3);
    sub_100687C30(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009166CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A07158);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_10091673C(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  [v6 unobscuredFrameOfView:v5];
  v8 = v7;
  v10 = v9;
  v33 = sub_100916C08(v7, v9, a3);
  if (![v6 shouldCanvasScrollingSizeGrowToFitBoardContent])
  {
    [*(v3 + 8) unscaledSize];
    sub_10011F340(v11, v12, a3);
  }

  v13 = sub_10011ECB4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_10011F340(a1, a2, a3);
  v22 = sub_10011F31C(v20, v21, v33);
  v24 = v23;
  v25 = -0.5;
  if (v8 >= v17)
  {
    v28 = 0.0;
    if (v10 >= v19)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v26 = v22 + v8 * -0.5;
  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  MinX = CGRectGetMinX(v36);
  v22 = sub_1004C3240(v26, MinX, v17 - v8);
  v25 = -0.5;
  v28 = v22;
  if (v10 < v19)
  {
LABEL_5:
    v29 = v24 + v10 * v25;
    v37.origin.x = v13;
    v37.origin.y = v15;
    v37.size.width = v17;
    v37.size.height = v19;
    MinY = CGRectGetMinY(v37);
    v22 = sub_1004C3240(v29, MinY, v19 - v10);
  }

LABEL_6:
  [v5 safeAreaInsets];
  return v28 - v31;
}

CGFloat sub_1009168E8@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v9 = *(v4 + 8);
  ty = CGAffineTransformIdentity.ty;
  tx = CGAffineTransformIdentity.tx;
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v59 = v15;
  v60 = v14;
  v53 = sub_10011F31C(0.0, 0.0, v10);
  v51 = v16;
  v17 = *(v4 + 16);
  [v17 frame];
  v20 = sub_100916C08(v18, v19, a2);
  v21 = sub_10091673C(a3, a4, a2);
  v22 = sub_10011F31C(0.0, 0.0, v20);
  v24 = v23;
  [v17 contentOffset];
  v26 = sub_10011F31C(v53, v51, v25);
  v28 = v27;
  v29 = sub_10011F31C(v22, v24, v21);
  v30 = *&CGAffineTransformIdentity.c;
  *&t1.m11 = *&CGAffineTransformIdentity.a;
  *&t1.m13 = v30;
  t1.m21 = tx;
  t1.m22 = ty;
  CGAffineTransformTranslate(&t2, &t1, v29 - v26, v31 - v28);
  v56 = t2.ty;
  v58 = t2.tx;
  v52 = *&t2.c;
  v54 = *&t2.a;
  [v9 viewScale];
  CGAffineTransformMakeScale(&t1, a2 / v32, a2 / v32);
  m21 = t1.m21;
  m22 = t1.m22;
  v47 = *&t1.m13;
  v48 = *&t1.m11;
  [v9 anchorPoint];
  v35 = v34;
  v37 = v36;
  v66.origin.x = v11;
  v66.origin.y = v13;
  v66.size.width = v60;
  v66.size.height = v59;
  MinX = CGRectGetMinX(v66);
  v67.origin.x = v11;
  v67.origin.y = v13;
  v67.size.width = v60;
  v67.size.height = v59;
  v39 = MinX + v35 * CGRectGetWidth(v67);
  v68.origin.x = v11;
  v68.origin.y = v13;
  v68.size.width = v60;
  v68.size.height = v59;
  MinY = CGRectGetMinY(v68);
  v69.origin.x = v11;
  v69.origin.y = v13;
  v69.size.width = v60;
  v69.size.height = v59;
  Height = CGRectGetHeight(v69);
  *&t1.m11 = v48;
  *&t1.m13 = v47;
  t1.m21 = m21;
  t1.m22 = m22;
  sub_100139EB4(&t1, &t2, v39, MinY + v37 * Height);
  *&t1.m11 = *&t2.a;
  *&t1.m13 = *&t2.c;
  *&t1.m21 = *&t2.tx;
  *&t2.a = v54;
  *&t2.c = v52;
  t2.tx = v58;
  t2.ty = v56;
  CGAffineTransformConcat(&v62, &t1, &t2);
  t2 = v62;
  CATransform3DMakeAffineTransform(&t1, &t2);
  *&t2.tx = *&t1.m22;
  v64 = *&t1.m24;
  *&v62.a = *&t1.m34;
  *&v62.c = *&t1.m42;
  v42 = *&t1.m12;
  *(a1 + 24) = *&t1.m14;
  v43 = v64;
  *(a1 + 40) = *&t2.tx;
  *(a1 + 56) = v43;
  m11 = t1.m11;
  m32 = t1.m32;
  v62.tx = t1.m44;
  *a1 = t1.m11;
  *(a1 + 72) = m32;
  *(a1 + 8) = v42;
  *(a1 + 80) = m11;
  result = v62.a;
  v46 = *&v62.c;
  *(a1 + 88) = *&v62.a;
  *(a1 + 104) = v46;
  *(a1 + 120) = v62.tx;
  return result;
}

double sub_100916C08(double a1, double a2, double a3)
{
  v5 = v3[1];
  [v5 unscaledSize];
  v6 = 0.0;
  v132.width = 0.0;
  v132.height = 0.0;
  if (!CGSizeEqualToSize(v131, v132))
  {
    [v5 unscaledSize];
    x = sub_10011ECB4();
    y = v8;
    width = v10;
    height = v12;
    v14 = v3[3];
    v15 = [v14 canvas];
    v16 = [v15 isAnchoredAtRight];

    if (v16)
    {
      CGAffineTransformMakeScale(&v130, -1.0, 1.0);
      v133.origin.x = x;
      v133.origin.y = y;
      v133.size.width = width;
      v133.size.height = height;
      v134 = CGRectApplyAffineTransform(v133, &v130);
      x = v134.origin.x;
      y = v134.origin.y;
      width = v134.size.width;
      height = v134.size.height;
    }

    r1 = a3;
    [v14 growUnscaledCanvasLayerRect:x withViewScale:{y, width, height, a3}];
    v17 = width;
    v19 = v18;
    v21 = v20;
    v22 = height;
    v24 = v23;
    v26 = v25;
    v126 = v22;
    v127 = v17;
    if (!sub_10011EF14(v18, v20, v23, v25, x, y, v17, v22))
    {
      r2 = v14;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v120 = v5;
      [v5 unscaledSize];
      v130.a = v28;
      v130.b = v29;
      type metadata accessor for CGSize(0);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      *(inited + 56) = &type metadata for String;
      v33 = sub_1000053B0();
      *(inited + 32) = v30;
      v34 = inited + 32;
      *(inited + 64) = v33;
      *(inited + 40) = v32;
      v130.a = v19;
      v130.b = v21;
      v130.c = v24;
      v130.d = v26;
      type metadata accessor for CGRect(0);
      v35 = String.init<A>(describing:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v33;
      *(inited + 72) = v35;
      *(inited + 80) = v36;
      v119 = objc_opt_self();
      LODWORD(v37) = [v119 _atomicIncrementAssertCount];
      *&v130.a = [objc_allocWithZone(NSString) init];
      sub_100604538(inited, &v130);
      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v39 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v124 = v3;
        v44 = static OS_os_log.crlAssert;
        v45 = swift_initStackObject();
        *(v45 + 16) = xmmword_10146CA70;
        *(v45 + 56) = &type metadata for Int32;
        *(v45 + 64) = &protocol witness table for Int32;
        *(v45 + 32) = v37;
        v46 = sub_100006370(0, &qword_1019F4D30);
        *(v45 + 96) = v46;
        v47 = sub_1005CF04C();
        *(v45 + 72) = v38;
        *(v45 + 136) = &type metadata for String;
        *(v45 + 144) = v33;
        *(v45 + 104) = v47;
        *(v45 + 112) = v41;
        *(v45 + 120) = v43;
        *(v45 + 176) = &type metadata for UInt;
        *(v45 + 184) = &protocol witness table for UInt;
        *(v45 + 152) = 181;
        a = v130.a;
        *(v45 + 216) = v46;
        *(v45 + 224) = v47;
        *(v45 + 192) = a;
        v49 = v38;
        v50 = *&a;
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v44, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v52 = static os_log_type_t.error.getter();
        sub_100005404(v44, &_mh_execute_header, v52, "expected canvas layer not to shrink in -growUnscaledCanvasLayerRect:, but jumped from %@ to %@, ignoring provided rect.", 119, 2, inited);

        type metadata accessor for __VaListBuilder();
        v37 = swift_allocObject();
        v37[2] = 8;
        v37[3] = 0;
        v53 = v37 + 3;
        v37[4] = 0;
        v37[5] = 0;
        v33 = *(inited + 16);
        if (!v33)
        {
LABEL_31:
          v19 = x;
          v21 = y;
          v69 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v70 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v71 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v72 = String._bridgeToObjectiveC()();

          [v119 handleFailureInFunction:v70 file:v71 lineNumber:181 isFatal:0 format:v72 args:v69];

          swift_setDeallocating();
          swift_arrayDestroy();
          v26 = v126;
          v24 = v127;
          v3 = v124;
          v5 = v120;
          v14 = r2;
          break;
        }

        v38 = 0;
        while (1)
        {
          v54 = (v34 + 40 * v38);
          v41 = v54[3];
          v3 = sub_100020E58(v54, v41);
          v55 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v43 = *v53;
          v56 = *(v55 + 16);
          v57 = __OFADD__(*v53, v56);
          v58 = *v53 + v56;
          if (v57)
          {
            break;
          }

          v41 = v37[4];
          if (v41 >= v58)
          {
            goto LABEL_23;
          }

          if (v41 + 0x4000000000000000 < 0)
          {
            goto LABEL_50;
          }

          v3 = v37[5];
          if (2 * v41 > v58)
          {
            v58 = 2 * v41;
          }

          v37[4] = v58;
          if ((v58 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_51;
          }

          v59 = v34;
          v60 = inited;
          v61 = v55;
          v62 = swift_slowAlloc();
          v63 = v62;
          v37[5] = v62;
          if (v3)
          {
            if (v62 != v3 || v62 >= &v3[v43])
            {
              memmove(v62, v3, 8 * v43);
            }

            v3 = v37;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v55 = v61;
            inited = v60;
            v34 = v59;
LABEL_23:
            v63 = v37[5];
            if (!v63)
            {
              goto LABEL_30;
            }

            goto LABEL_24;
          }

          v55 = v61;
          inited = v60;
          v34 = v59;
          if (!v63)
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_24:
          v65 = *(v55 + 16);
          if (v65)
          {
            v66 = (v55 + 32);
            v67 = *v53;
            while (1)
            {
              v68 = *v66++;
              v63[v67] = v68;
              v67 = *v53 + 1;
              if (__OFADD__(*v53, 1))
              {
                break;
              }

              *v53 = v67;
              if (!--v65)
              {
                goto LABEL_8;
              }
            }

            __break(1u);
            break;
          }

LABEL_8:

          v38 = v38 + 1;
          if (v38 == v33)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
      }
    }

    v125 = sub_10011FFD8(v19, v21, v24, v26, r1);
    v74 = v73;
    v76 = v75;
    v78 = v77;
    if (![v14 shouldResizeCanvasToScrollView])
    {
      v105 = v125;
LABEL_46:
      v115 = [v14 canvas];
      [v115 contentsScale];
      v117 = v116;

      return sub_1001221E8(v105, v74, v76, v78, v117);
    }

    r2a = v74;
    v79 = [v14 canvas];
    [v79 contentsScale];
    v121 = v80;

    v81 = sub_10011ECB4();
    v83 = v82;
    v85 = v84;
    [v3[2] scrollableAreaContentInsets];
    v88 = v83 - (v86 + v87);
    v91 = v85 - (v89 + v90);
    v92 = sub_10011FFD8(x, y, v127, v126, r1);
    r1a = v93;
    v95 = v94;
    v97 = v96;
    v98 = sub_10011F31C(v88, v91, v94);
    if (v98 <= 0.0)
    {
      v88 = v95;
      v104 = v125;
      if (v99 <= 0.0)
      {
LABEL_39:
        v91 = v97;
        goto LABEL_44;
      }
    }

    else
    {
      v100 = v98;
      v101 = v99;
      v102 = [v14 canvas];
      v103 = [v102 isAnchoredAtRight];

      if (v103)
      {
        v92 = v92 - v100;
      }

      if ([v5 horizontallyCenteredInScrollView])
      {
        v92 = sub_100122128(v92 + v100 * -0.5, v121);
      }

      v104 = v125;
      v99 = v101;
      if (v101 <= 0.0)
      {
        goto LABEL_39;
      }
    }

    v106 = v99;
    if ([v5 verticallyCenteredInScrollView])
    {
      v107 = sub_100122128(r1a + v106 * -0.5, v121);
      v108 = r2a;
LABEL_45:
      v109 = v92;
      v110 = v88;
      v111 = v91;
      v112 = v104;
      v113 = v76;
      v114 = v78;
      v135 = CGRectUnion(*(&v107 - 1), *(&v108 - 1));
      v105 = v135.origin.x;
      v74 = v135.origin.y;
      v76 = v135.size.width;
      v78 = v135.size.height;
      goto LABEL_46;
    }

LABEL_44:
    v108 = r2a;
    v107 = r1a;
    goto LABEL_45;
  }

  return v6;
}

uint64_t sub_10091755C()
{
  sub_100006370(0, &qword_1019F54D0);
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)())
  {
    return static NSObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1009175EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100917634(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(uint64_t a1, char a2)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  result = 0;
  if (*(v2 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1)
  {
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v13 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(a1, a2 & 1);
    v14 = OSSignposter.logHandle.getter();
    v15 = static os_signpost_type_t.begin.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if (result)
    {
      if (!v13)
      {
        __break(1u);
        return result;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v17, v13, "", v16, 2u);
    }

    (*(v6 + 16))(v8, v11, v5);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v18 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v6 + 8))(v11, v5);
    return v18;
  }

  return result;
}

void CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = type metadata accessor for OSSignpostError();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1 && a3 != 0)
  {
    v24 = v8;
    v16 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(a1, a2 & 1);

    v17 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v18 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      if (!v16)
      {
        __break(1u);
        return;
      }

      checkForErrorAndConsumeState(state:)();

      v19 = v24;
      if ((*(v24 + 88))(v10, v7) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v19 + 8))(v10, v7);
        v20 = "";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v22, v16, v20, v21, 2u);
    }

    (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_100917BC8(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = type metadata accessor for Logger();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for OSSignposter();
  sub_10061655C(v8, a2);
  sub_1005EB3DC(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  Logger.init(_:)();
  return OSSignposter.init(logger:)();
}

id sub_100917CA8()
{
  v0 = type metadata accessor for OSSignposter();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  OSSignposter.init()();
  v3 = objc_allocWithZone(type metadata accessor for CRLAnalyticsOSSignpostManager(0));
  result = sub_100917F34(v2);
  qword_101AD6C88 = result;
  return result;
}

id sub_100917DE8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != -1)
  {
    swift_once();
  }

  v11 = sub_1005EB3DC(v7, a3);
  (*(v8 + 16))(v10, v11, v7);
  v12 = objc_allocWithZone(type metadata accessor for CRLAnalyticsOSSignpostManager(0));
  result = sub_100917F34(v10);
  *a4 = result;
  return result;
}

id sub_100917F34(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList] = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = [v5 BOOLForKey:@"enableOSSignpost"];

  v1[v4] = v6;
  v7 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
  type metadata accessor for CRLUnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  atomic_thread_fence(memory_order_acq_rel);
  *&v1[v7] = v8;
  v10 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signposter;
  v11 = type metadata accessor for OSSignposter();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v1[v10], a1, v11);
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  (*(v12 + 8))(a1, v11);
  return v13;
}

const char *CRLAnalyticsOSSignpostManager.Task.staticValue.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    result = "DragItem";
    switch(a1)
    {
      case 1:
        result = "MarqueeDrag";
        break;
      case 2:
        return result;
      case 3:
        result = "FreeTransformItem";
        break;
      case 4:
      case 5:
      case 8:
      case 33:
      case 34:
        return "MISC";
      case 6:
        result = "SingleTapItem";
        break;
      case 7:
        result = "DoubleTapItem";
        break;
      case 9:
        result = "AddShape";
        break;
      case 10:
        result = "AddSticky";
        break;
      case 11:
        result = "AddTextbox";
        break;
      case 12:
        result = "ImportMedia";
        break;
      case 13:
        result = "ImportFile";
        break;
      case 14:
        result = "ImportURL";
        break;
      case 15:
        result = "modelCompression";
        break;
      case 16:
        result = "MarkupDrag";
        break;
      case 17:
        result = "MiniFormatterOperationLatency";
        break;
      case 18:
        result = "SharedBoardChange";
        break;
      case 19:
        result = "SharedItemChange";
        break;
      case 20:
        result = "sharedAuxiliaryChange";
        break;
      case 21:
        result = "sharedCollabCursorChange";
        break;
      case 22:
        result = "SendSharedChanges";
        break;
      case 23:
        result = "LoadBoard";
        break;
      case 24:
        result = "NewBoard";
        break;
      case 25:
        result = "IncomingRealTimeMessage";
        break;
      case 26:
        result = "IncomingEncryptedRealTimeMessage";
        break;
      case 27:
        result = "IncomingChunkedRealtimeMessage";
        break;
      case 28:
        result = "OutgoingRealTimeMessage";
        break;
      case 29:
        result = "OutgoingEncryptedRealTimeMessage";
        break;
      case 30:
        result = "fetchAllBoardItemsUnder";
        break;
      case 31:
        result = "usdAppExtensionConnect";
        break;
      case 32:
        result = "usdAppExtensionCreateSnapshot";
        break;
      default:
        result = "CanvasZoom";
        break;
    }
  }

  else if (a1)
  {
    return "KeyboardInput";
  }

  else
  {
    return "MISC";
  }

  return result;
}

uint64_t sub_1009182D0()
{

  v1 = OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_id;
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t CRLAnalyticsOSSignpostManager.Task.hasAsymmetricContext.getter(uint64_t a1, char a2)
{
  v2 = 0x37E00uLL >> a1;
  if ((a2 & 1) == 0)
  {
    LOBYTE(v2) = a1 != 0;
  }

  return v2 & 1;
}

uint64_t sub_1009183D0@<X0>(uint64_t *a1@<X8>)
{
  result = _s8Freeform29CRLAnalyticsOSSignpostManagerC4TaskO8allCasesSayAEGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t CRLAnalyticsOSSignpostManager.beginSignpostInterval(for:with:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for OSSignpostID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v10);
  v15 = &v28[-v14];
  if (*(v3 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1)
  {
    result = sub_100918750(a1, a2 & 1);
    if (result)
    {
      v30 = a3;
      v31 = v9;
      OSSignposter.logHandle.getter();
      OSSignpostID.init(log:)();
      v29 = a2;
      v16 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(a1, a2 & 1);
      v17 = OSSignposter.logHandle.getter();
      v18 = static os_signpost_type_t.begin.getter();
      result = OS_os_log.signpostsEnabled.getter();
      if (result)
      {
        if (!v16)
        {
          __break(1u);
          return result;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v18, v20, v16, "", v19, 2u);
      }

      v21 = v31;
      v22 = *(v31 + 16);
      v22(v12, v15, v8);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();

      v22(v12, v15, v8);
      type metadata accessor for CRLAnalyticsOSSignpostManager.CRLSignpostContext(0);
      v23 = swift_allocObject();
      *(v23 + 16) = v30;
      (*(v21 + 32))(v23 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_id, v12, v8);
      v24 = v23 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task;
      *v24 = a1;
      *(v24 + 8) = v29 & 1;
      v25 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
      v26 = *(*(v3 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock) + 16);

      os_unfair_lock_lock(v26);
      v27 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v4 + v27) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v27) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      os_unfair_lock_unlock(*(*(v4 + v25) + 16));

      return (*(v31 + 8))(v15, v8);
    }
  }

  return result;
}

uint64_t sub_100918750(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
  os_unfair_lock_lock(*(*(v2 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock) + 16));
  v6 = 1;
  if ((a2 & 1) != 0 || !a1)
  {
    goto LABEL_30;
  }

  v7 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
  swift_beginAccess();
  v8 = *(v2 + v7);
  if (v8 >> 62)
  {
    goto LABEL_27;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v9)
  {
    v14 = v5;
    v15 = v2;
    v5 = 0;
    v2 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v2)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v5 = v14;
          v2 = v15;
          break;
        }
      }

      else
      {
        if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_27:
          v9 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_5;
        }

        v10 = *(v8 + 8 * v5 + 32);

        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      if (*(v10 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8) & 1) == 0 && *(v10 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task) && (static Selector.== infix(_:_:)())
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v2 = v8 & 0xC000000000000001;
      }

      else
      {
      }

      ++v5;
      if (v11 == v9)
      {
        goto LABEL_19;
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    if (_swiftEmptyArrayStorage[2])
    {
      goto LABEL_23;
    }

LABEL_29:

    v6 = 1;
    goto LABEL_30;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_29;
  }

LABEL_23:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();

    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v12 = _swiftEmptyArrayStorage[2];

  if (v12)
  {
LABEL_25:
    v6 = 0;
LABEL_30:
    os_unfair_lock_unlock(*(*(v2 + v5) + 16));
    return v6;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CRLAnalyticsOSSignpostManager.beginSignpostInterval(name:with:)(NSString name, Swift::OpaquePointer with)
{
  v5 = type metadata accessor for OSSignpostID();
  __chkstk_darwin(v5);
  __chkstk_darwin(v6);
  v50 = v2;
  if (*(v2 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1)
  {
    v44 = v10;
    rawValue = with._rawValue;
    v46 = &v44 - v8;
    v48 = v7;
    v49 = v9;
    v11 = _s8Freeform29CRLAnalyticsOSSignpostManagerC4TaskO8allCasesSayAEGvgZ_0();
    v12 = *(v11 + 16);
    v47 = v11;
    if (v12)
    {
      v13 = (v11 + 40);
      v14 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v13 - 1);
        v19 = *v13;
        v20 = StaticString.description.getter();
        v22 = v21;
        v23 = String.init(_:)(name);
        if (v20 == v23._countAndFlagsBits && v22 == v23._object)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_12;
        }

LABEL_7:
        v13 += 16;
        if (!--v12)
        {
          goto LABEL_15;
        }
      }

LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776C24(0, v14[2] + 1, 1);
        v14 = v51;
      }

      v16 = v14[2];
      v15 = v14[3];
      if (v16 >= v15 >> 1)
      {
        sub_100776C24((v15 > 1), v16 + 1, 1);
        v14 = v51;
      }

      v14[2] = v16 + 1;
      v17 = &v14[2 * v16];
      v17[4] = v18;
      *(v17 + 40) = v19;
      goto LABEL_7;
    }

    v14 = _swiftEmptyArrayStorage;
LABEL_15:

    v27 = v48;
    v26 = v49;
    if (v14[2])
    {
      v28 = v14[4];
      v29 = *(v14 + 40);

      OSSignposter.logHandle.getter();
      v30 = v46;
      OSSignpostID.init(log:)();
      v47 = v28;
      v31 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(v28, v29);
      v32 = OSSignposter.logHandle.getter();
      v33 = static os_signpost_type_t.begin.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        if (!v31)
        {
          __break(1u);
          return;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v30 = v46;
        v35 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v32, v33, v35, v31, "", v34, 2u);
      }

      v36 = *(v26 + 16);
      v37 = v44;
      v36(v44, v30, v27);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();

      v36(v37, v30, v27);
      type metadata accessor for CRLAnalyticsOSSignpostManager.CRLSignpostContext(0);
      v38 = swift_allocObject();
      *(v38 + 16) = rawValue;
      (*(v26 + 32))(v38 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_id, v37, v27);
      v39 = v38 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task;
      *v39 = v47;
      *(v39 + 8) = v29;
      v40 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
      v41 = v50;
      v42 = *(*(v50 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock) + 16);

      os_unfair_lock_lock(v42);
      v43 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v41 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + v43) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v26 = v49;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      os_unfair_lock_unlock(*(*(v41 + v40) + 16));

      (*(v26 + 8))(v30, v27);
    }

    else
    {
    }
  }
}

void CRLAnalyticsOSSignpostManager.emitSignpostEvent(for:with:)(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) != 1)
  {
    return;
  }

  log = OSSignposter.logHandle.getter();
  v7 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if ((a4 & 1) == 0)
    {
      if (!a2)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_13:
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, log, v7, v9, a2, "", v8, 2u);

      return;
    }

    if (a2 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((a2 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return;
      }

      if (a2 >> 16 <= 0x10)
      {
        a2 = &v11;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
}

unint64_t sub_100919278(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
  swift_beginAccess();
  v35 = v4;
  v5 = *(v2 + v4);
  v39 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
LABEL_25:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a1;
  if (!v6)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v34 = v2;
  v7 = 0;
  v36 = v5 & 0xC000000000000001;
  v2 = v5 & 0xFFFFFFFFFFFFFF8;
  while (v36)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_15;
    }

LABEL_10:
    if (!a1 || (v10 = swift_beginAccess(), v11 = *(v8 + 16), v38 = a1, __chkstk_darwin(v10), v33[2] = &v38, , v12 = sub_100C33540(sub_10091B4C4, v33, v11), , (v12 & 1) != 0))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v7;
    a1 = v37;
    if (v9 == v6)
    {
      goto LABEL_16;
    }
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v8 = *(v5 + 8 * v7 + 32);

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v13 = v39;
  v2 = v34;
LABEL_18:

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_21;
    }
  }

  else if (*(v13 + 16))
  {
LABEL_21:
    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (!*(v13 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_50:
    v14 = *(v13 + 32);

    goto LABEL_51;
  }

  v14 = *(v2 + v35);
  v39 = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_45:

    if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_72;
      }
    }

    else if (!*(v13 + 16))
    {
      goto LABEL_72;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*(v13 + 16))
    {
      goto LABEL_50;
    }

    __break(1u);
    goto LABEL_76;
  }

  v34 = v2;
  v16 = 0;
  v2 = v14 & 0xC000000000000001;
  a1 = (v14 & 0xFFFFFFFFFFFFFF8);
  while (v2)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_42:
      __break(1u);
LABEL_43:
      v13 = v39;
      v2 = v34;
      a1 = v37;
      goto LABEL_45;
    }

LABEL_37:
    v19 = *(v17 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
    if (*(v17 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8))
    {
      if (((1 << v19) & 0x7FFFC81FFLL) != 0)
      {
LABEL_39:

        goto LABEL_33;
      }
    }

    else if (!v19)
    {
      goto LABEL_39;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
LABEL_33:
    ++v16;
    if (v18 == v15)
    {
      goto LABEL_43;
    }
  }

  if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v14 + 8 * v16 + 32);

    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  __break(1u);
LABEL_69:
  v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_51:

  v20 = *(v2 + v35);

  v15 = sub_10100F56C(v14, v20);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    if (a1)
    {
LABEL_56:
      v24 = *(v14 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
      if (*(v14 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8))
      {
        if (((1 << v24) & 0x7FFFC81FFLL) == 0)
        {
          goto LABEL_60;
        }

LABEL_62:
        if (!a1)
        {
          goto LABEL_72;
        }

        swift_beginAccess();
        v25 = *(v14 + 16);

        v26 = a1;
        v27 = sub_101010098(v26, v25);
        v29 = v28;

        if (v29)
        {

          return 0;
        }

        swift_beginAccess();
        v30 = sub_10106B378(v27);
        swift_endAccess();

        v31 = *(v14 + 16);
        if (v31 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_67;
          }
        }

        else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_67:

          goto LABEL_72;
        }

        swift_beginAccess();
        sub_10106B378(v27);
        swift_endAccess();

        goto LABEL_61;
      }

      if (!v24)
      {
        goto LABEL_62;
      }

LABEL_60:
      swift_beginAccess();
      sub_10106B378(v15);
      swift_endAccess();
LABEL_61:

      return v14;
    }

    swift_beginAccess();
    v23 = *(v14 + 16);
    if (!(v23 >> 62))
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_60;
      }

      goto LABEL_56;
    }

LABEL_76:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

LABEL_72:

  return 0;
}

void CRLAnalyticsOSSignpostManager.endSignpostInterval(for:)(unint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v27[-v15];
  if (*(v3 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1)
  {
    v29 = v7;
    v17 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
    os_unfair_lock_lock(*(*(v3 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock) + 16));
    v18 = sub_100919C38(a1, a2 & 1);
    if (v18)
    {
      v19 = v18;
      (*(v11 + 16))(v16, v18 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_id, v10);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      os_unfair_lock_unlock(*(*(v3 + v17) + 16));
      v20 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(*(v19 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task), *(v19 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8));
      v21 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v28 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        if (!v20)
        {
          __break(1u);
          return;
        }

        checkForErrorAndConsumeState(state:)();

        v22 = v29;
        if ((*(v29 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v9, v6);
          v23 = "";
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v28, v26, v20, v23, v25, 2u);
      }

      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v24 = *(*(v3 + v17) + 16);

      os_unfair_lock_unlock(v24);
    }
  }
}

uint64_t sub_100919C38(unint64_t a1, char a2)
{
  LOBYTE(v3) = a2;
  v4 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_101:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v51 = v4;
    v52 = v2;
    v4 = 0;
    v53 = v3 | (a1 != 0);
    v50 = v3 & (a1 > 0x21);
    v49 = v3 & (a1 == 33);
    v48 = v3 & (a1 == 32);
    v47 = v3 & (a1 == 31);
    v46 = v3 & (a1 == 30);
    v45 = v3 & (a1 == 29);
    v44 = v3 & (a1 == 28);
    v43 = v3 & (a1 == 27);
    v42 = v3 & (a1 == 26);
    v41 = v3 & (a1 == 25);
    v40 = v3 & (a1 == 24);
    v39 = v3 & (a1 == 23);
    v38 = v3 & (a1 == 22);
    v37 = v3 & (a1 == 21);
    v36 = v3 & (a1 == 20);
    v35 = v3 & (a1 == 19);
    v34 = v3 & (a1 == 18);
    v33 = v3 & (a1 == 17);
    v32 = v3 & (a1 == 16);
    v31 = v3 & (a1 == 15);
    v30 = v3 & (a1 == 14);
    v29 = v3 & (a1 == 13);
    v28 = v3 & (a1 == 12);
    v27 = v3 & (a1 == 11);
    v26 = v3 & (a1 == 10);
    v25 = v3 & (a1 == 9);
    v24 = v3 & (a1 == 8);
    v23 = v3 & (a1 == 7);
    v22 = v3 & (a1 == 6);
    v21 = v3 & (a1 == 5);
    v20 = v3 & (a1 == 4);
    v19 = v3 & (a1 == 3);
    v18 = v3 & (a1 == 2);
    v17 = v3 & (a1 == 1);
    v55 = v3 | (a1 == 0);
    v16 = v3 & (a1 == 0);
    v3 = v5 & 0xC000000000000001;
    v2 = &qword_101AD6000;
    while (1)
    {
      if (v3)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_90:
          __break(1u);
LABEL_91:
          v4 = v51;
          v2 = v52;
          break;
        }
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_101;
        }

        v7 = *(v5 + 8 * v4 + 32);

        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_90;
        }
      }

      v9 = *(v7 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task);
      if (*(v7 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8))
      {
        switch(v9)
        {
          case 1:
            if (v17)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 2:
            if (v18)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 3:
            if (v19)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 4:
            if (v20)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 5:
            if (v21)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 6:
            if (v22)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 7:
            if (v23)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 8:
            if (v24)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 9:
            if (v25)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 10:
            if (v26)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 11:
            if (v27)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 12:
            if (v28)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 13:
            if (v29)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 14:
            if (v30)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 15:
            if (v31)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 16:
            if (v32)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 17:
            if (v33)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 18:
            if (v34)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 19:
            if (v35)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 20:
            if (v36)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 21:
            if (v37)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 22:
            if (v38)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 23:
            if (v39)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 24:
            if (v40)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 25:
            if (v41)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 26:
            if (v42)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 27:
            if (v43)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 28:
            if (v44)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 29:
            if (v45)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 30:
            if (v46)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 31:
            if (v47)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 32:
            if (v48)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 33:
            if (v49)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          case 34:
            if (v50)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
          default:
            if (v16)
            {
              goto LABEL_19;
            }

            goto LABEL_5;
        }
      }

      if (v9)
      {
        if (v55 & 1) == 0 && (static Selector.== infix(_:_:)())
        {
LABEL_19:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }
      }

      else if ((v53 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_5:

LABEL_6:
      ++v4;
      if (v8 == v6)
      {
        goto LABEL_91;
      }
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_103;
    }
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_103;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_98:

    v12 = *(v2 + v4);

    v13 = sub_10100F56C(v11, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      swift_beginAccess();
      sub_10106B378(v13);
      swift_endAccess();

      return v11;
    }

LABEL_103:

    return 0;
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v11 = _swiftEmptyArrayStorage[4];

    goto LABEL_98;
  }

  __break(1u);
  return result;
}

void sub_10091A2D8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  v6 = type metadata accessor for OSSignpostError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v27[-v15];
  if (*(v4 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_signpostsEnabled) == 1)
  {
    v29 = v7;
    v17 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock;
    os_unfair_lock_lock(*(*(v4 + OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager_contextAccessLock) + 16));
    v18 = a2(a1);
    if (v18)
    {
      v19 = v18;
      (*(v11 + 16))(v16, v18 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_id, v10);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      OSSignpostIntervalState.init(id:isOpen:)();
      os_unfair_lock_unlock(*(*(v4 + v17) + 16));
      v20 = CRLAnalyticsOSSignpostManager.Task.staticValue.getter(*(v19 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task), *(v19 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8));
      v21 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v28 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        if (!v20)
        {
          __break(1u);
          return;
        }

        checkForErrorAndConsumeState(state:)();

        v22 = v29;
        if ((*(v29 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v22 + 8))(v9, v6);
          v23 = "";
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v28, v26, v20, v23, v25, 2u);
      }

      (*(v11 + 8))(v13, v10);
    }

    else
    {
      v24 = *(*(v4 + v17) + 16);

      os_unfair_lock_unlock(v24);
    }
  }
}

uint64_t sub_10091A664()
{
  v1 = OBJC_IVAR____TtC8Freeform29CRLAnalyticsOSSignpostManager__unsafe_contextList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v21 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v19 = v1;
    v20 = v0;
    v1 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v12 = v21;
          v1 = v19;
          v0 = v20;
          goto LABEL_20;
        }
      }

      else
      {
        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_17;
        }
      }

      v5 = StaticString.description.getter();
      v7 = v6;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v5;
      v0 = v8;
      if (v10 == v9 && v7 == v8)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {

          goto LABEL_7;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v0 = &v21;
      specialized ContiguousArray._endMutation()();
LABEL_7:
      ++v1;
      if (v4 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_31;
    }
  }

  else if (!*(v12 + 16))
  {
    goto LABEL_31;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:

    v15 = *(v0 + v1);

    v16 = sub_10100F56C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      swift_beginAccess();
      sub_10106B378(v16);
      swift_endAccess();

      return v14;
    }

LABEL_31:

    return 0;
  }

  if (*(v12 + 16))
  {
    v14 = *(v12 + 32);

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_10091AC98(uint64_t a1, uint64_t a2)
{
  if (static OSSignpostID.== infix(_:_:)())
  {
    CRLAnalyticsOSSignpostManager.Task.staticValue.getter(*(a1 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task), *(a1 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8));
    v4 = StaticString.description.getter();
    v6 = v5;
    CRLAnalyticsOSSignpostManager.Task.staticValue.getter(*(a2 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task), *(a2 + OBJC_IVAR____TtCC8Freeform29CRLAnalyticsOSSignpostManager18CRLSignpostContext_task + 8));
    if (v4 == StaticString.description.getter() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10091AD70(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if ((a4 & 1) == 0 || a3 != 6)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if ((a4 & 1) == 0 || a3 != 7)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if ((a4 & 1) == 0 || a3 != 8)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if ((a4 & 1) == 0 || a3 != 9)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if ((a4 & 1) == 0 || a3 != 10)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if ((a4 & 1) == 0 || a3 != 11)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if ((a4 & 1) == 0 || a3 != 12)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if ((a4 & 1) == 0 || a3 != 13)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if ((a4 & 1) == 0 || a3 != 14)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if ((a4 & 1) == 0 || a3 != 15)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if ((a4 & 1) == 0 || a3 != 16)
        {
          return 0;
        }

        result = 1;
        break;
      case 17:
        if ((a4 & 1) == 0 || a3 != 17)
        {
          return 0;
        }

        result = 1;
        break;
      case 18:
        if ((a4 & 1) == 0 || a3 != 18)
        {
          return 0;
        }

        result = 1;
        break;
      case 19:
        if ((a4 & 1) == 0 || a3 != 19)
        {
          return 0;
        }

        result = 1;
        break;
      case 20:
        if ((a4 & 1) == 0 || a3 != 20)
        {
          return 0;
        }

        result = 1;
        break;
      case 21:
        if ((a4 & 1) == 0 || a3 != 21)
        {
          return 0;
        }

        result = 1;
        break;
      case 22:
        if ((a4 & 1) == 0 || a3 != 22)
        {
          return 0;
        }

        result = 1;
        break;
      case 23:
        if ((a4 & 1) == 0 || a3 != 23)
        {
          return 0;
        }

        result = 1;
        break;
      case 24:
        if ((a4 & 1) == 0 || a3 != 24)
        {
          return 0;
        }

        result = 1;
        break;
      case 25:
        if ((a4 & 1) == 0 || a3 != 25)
        {
          return 0;
        }

        result = 1;
        break;
      case 26:
        if ((a4 & 1) == 0 || a3 != 26)
        {
          return 0;
        }

        result = 1;
        break;
      case 27:
        if ((a4 & 1) == 0 || a3 != 27)
        {
          return 0;
        }

        result = 1;
        break;
      case 28:
        if ((a4 & 1) == 0 || a3 != 28)
        {
          return 0;
        }

        result = 1;
        break;
      case 29:
        if ((a4 & 1) == 0 || a3 != 29)
        {
          return 0;
        }

        result = 1;
        break;
      case 30:
        if ((a4 & 1) == 0 || a3 != 30)
        {
          return 0;
        }

        result = 1;
        break;
      case 31:
        if ((a4 & 1) == 0 || a3 != 31)
        {
          return 0;
        }

        result = 1;
        break;
      case 32:
        if ((a4 & 1) == 0 || a3 != 32)
        {
          return 0;
        }

        result = 1;
        break;
      case 33:
        if ((a4 & 1) == 0 || a3 != 33)
        {
          return 0;
        }

        result = 1;
        break;
      case 34:
        if ((a4 & 1) == 0 || a3 <= 0x21)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if ((a4 & 1) == 0 || a3)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    if (a1)
    {
      if ((a4 & 1) == 0 && a3)
      {
        return static Selector.== infix(_:_:)();
      }
    }

    else if ((a4 & 1) == 0 && !a3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s8Freeform29CRLAnalyticsOSSignpostManagerC4TaskO8allCasesSayAEGvgZ_0()
{
  sub_1005B981C(&qword_101A08658);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101487760;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 1;
  *(v0 + 72) = 1;
  *(v0 + 80) = 2;
  *(v0 + 88) = 1;
  *(v0 + 96) = 3;
  *(v0 + 104) = 1;
  *(v0 + 112) = 4;
  *(v0 + 120) = 1;
  *(v0 + 128) = 5;
  *(v0 + 136) = 1;
  *(v0 + 144) = 6;
  *(v0 + 152) = 1;
  *(v0 + 160) = 7;
  *(v0 + 168) = 1;
  *(v0 + 176) = 8;
  *(v0 + 184) = 1;
  *(v0 + 192) = 9;
  *(v0 + 200) = 1;
  *(v0 + 208) = 10;
  *(v0 + 216) = 1;
  *(v0 + 224) = 11;
  *(v0 + 232) = 1;
  *(v0 + 240) = 12;
  *(v0 + 248) = 1;
  *(v0 + 256) = 13;
  *(v0 + 264) = 1;
  *(v0 + 272) = 14;
  *(v0 + 280) = 1;
  *(v0 + 288) = 16;
  *(v0 + 296) = 1;
  *(v0 + 304) = Selector.init(_:)();
  *(v0 + 312) = 0;
  *(v0 + 320) = 19;
  *(v0 + 328) = 1;
  *(v0 + 336) = 20;
  *(v0 + 344) = 1;
  *(v0 + 352) = 21;
  *(v0 + 360) = 1;
  *(v0 + 368) = 22;
  *(v0 + 376) = 1;
  *(v0 + 384) = 23;
  *(v0 + 392) = 1;
  *(v0 + 400) = 24;
  *(v0 + 408) = 1;
  *(v0 + 416) = 25;
  *(v0 + 424) = 1;
  *(v0 + 432) = 26;
  *(v0 + 440) = 1;
  *(v0 + 448) = 27;
  *(v0 + 456) = 1;
  *(v0 + 464) = 28;
  *(v0 + 472) = 1;
  *(v0 + 480) = 29;
  *(v0 + 488) = 1;
  *(v0 + 496) = 30;
  *(v0 + 504) = 1;
  *(v0 + 512) = 15;
  *(v0 + 520) = 1;
  return v0;
}

unint64_t sub_10091B26C()
{
  result = qword_101A08538;
  if (!qword_101A08538)
  {
    sub_1005C4E5C(&qword_101A08540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08538);
  }

  return result;
}

uint64_t sub_10091B2F8()
{
  result = type metadata accessor for OSSignposter();
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

uint64_t sub_10091B3B4()
{
  result = type metadata accessor for OSSignpostID();
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

uint64_t sub_10091B45C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v2 = -1;
  }

  else
  {
    v2 = 0;
  }

  return (v2 + 1);
}

uint64_t sub_10091B488(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_10091B51C()
{
  v1 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chunks;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(*(v2 + 8 * v4 + 32) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) == *(*(v2 + 8 * v4 + 32) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex);
    }

    __break(1u);
    return result;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v7 = *(v6 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
  v8 = *(v6 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex);
  swift_unknownObjectRelease();
  return v7 == v8;
}

uint64_t sub_10091B644(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chunks) = _swiftEmptyArrayStorage;
  if (*(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index))
  {
    sub_10091C224();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();

    type metadata accessor for CRLContiguousChunkedRealTimeMessageBuffer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4 = OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID;
    v5 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chainID;
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 16))(v1 + v5, a1 + v4, v6);
    *(v1 + OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_encrypted) = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted);
    v7 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chunks;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  return v1;
}

void sub_10091B828(uint64_t a1)
{
  v6 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chunks;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_19:
    v38 = objc_opt_self();
    LODWORD(v1) = [v38 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
    StaticString.description.getter();
    v2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v17;

    if (qword_1019F20A0 == -1)
    {
LABEL_20:
      v18 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v1;
      v20 = sub_1005CF000();
      *(inited + 96) = v20;
      v21 = sub_1005CF04C();
      *(inited + 104) = v21;
      *(inited + 72) = v2;
      *(inited + 136) = &type metadata for String;
      v22 = sub_1000053B0();
      *(inited + 112) = v3;
      *(inited + 120) = v4;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v22;
      *(inited + 152) = 43;
      v23 = v37;
      *(inited + 216) = v20;
      *(inited + 224) = v21;
      *(inited + 192) = v23;
      v24 = v2;
      v25 = v23;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v27, "Logic error. At the time of appending a chunk we must already have at least one item in the chunks array", 104, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v28 = swift_allocObject();
      v28[2] = 8;
      v28[3] = 0;
      v28[4] = 0;
      v28[5] = 0;
      v29 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      [v38 handleFailureInFunction:v30 file:v31 lineNumber:43 isFatal:0 format:v32 args:v29];

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_20;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
  }

  else if ((v7 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v7 + 8 * v9 + 32);

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_25;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
  if (*(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted) != *(v1 + OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_encrypted))
  {
    v11 = 2;
LABEL_37:
    sub_10091C224();
    swift_allocError();
    *v36 = v11;
    swift_willThrow();
    goto LABEL_38;
  }

  v12 = *(v1 + v6);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_30;
    }
  }

  v14 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
LABEL_29:

    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v34 = *(v33 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
    v35 = *(v33 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex);
    swift_unknownObjectRelease();
    if (v34 == v35)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_34;
  }

  if (*(*(v12 + 8 * v14 + 32) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) == *(*(v12 + 8 * v14 + 32) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex))
  {
LABEL_17:
    v11 = 1;
    goto LABEL_37;
  }

LABEL_30:
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_37;
  }

  if (!*(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) || *(v10 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) != (*(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) - 1))
  {
    v11 = 3;
    goto LABEL_37;
  }

  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v6) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_41;
  }

LABEL_34:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
LABEL_38:
}

uint64_t sub_10091BE88()
{
  v1 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chunks;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      v7 = *(v6 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
      v8 = *(v6 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8);
      sub_100024E98(v7, v8);
      Data.append(_:)();
      sub_10002640C(v7, v8);
    }

    while (v4 != v5);

    return 0;
  }

  return result;
}

uint64_t sub_10091BFD4()
{
  v1 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chainID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLContiguousChunkedRealTimeMessageBuffer()
{
  result = qword_101A08690;
  if (!qword_101A08690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10091C0D4()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10091C17C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform41CRLContiguousChunkedRealTimeMessageBuffer_chainID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_10091C224()
{
  result = qword_101A08760;
  if (!qword_101A08760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A08760);
  }

  return result;
}

uint64_t sub_10091C278()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper____lazy_storage___miniFormatterPositionHelper;
  if (*(v0 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper____lazy_storage___miniFormatterPositionHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper____lazy_storage___miniFormatterPositionHelper);
  }

  else
  {
    v2 = sub_10091C2E0(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10091C2E0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_distanceToView);
  type metadata accessor for CRLMiniFormatterPositionHelper();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 1;
  *(v5 + 16) = v2;
  swift_unknownObjectWeakAssign();

  *(v5 + 48) = v4;
  *(v5 + 40) = &off_10188D598;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_10091C3B4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2 || (v3 = *(*sub_100020E58((v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24)) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterStateManager_isInDynamicMode), swift_unknownObjectRelease(), (v3 & 1) == 0))
  {
    v4 = OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isSuppressingReshowMiniFormatter;
    if (v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isSuppressingReshowMiniFormatter] == 1)
    {
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          v8 = v7;
          v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingIn] = 1;
          v9 = *&qword_1019F08C0;
          v45 = objc_opt_self();
          v10 = swift_allocObject();
          *(v10 + 16) = v8;
          *(v10 + 24) = v0;
          v51 = sub_10091D6A8;
          v52 = v10;
          aBlock = _NSConcreteStackBlock;
          v48 = *"";
          v49 = sub_100007638;
          v50 = &unk_10188D718;
          v11 = _Block_copy(&aBlock);
          v12 = v8;
          v13 = v0;

          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          v51 = sub_10091D6B8;
          v52 = v14;
          aBlock = _NSConcreteStackBlock;
          v48 = *"";
          v49 = sub_1005CC4AC;
          v50 = &unk_10188D768;
          v15 = _Block_copy(&aBlock);
          v16 = v13;

          [v45 animateWithDuration:0 delay:v11 options:v15 animations:0.2 completion:v9];

          _Block_release(v15);
          _Block_release(v11);
        }

        else
        {
        }

        v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator] = 0;
      }

      v0[v4] = 0;
    }

    sub_100BDDAE4(v17);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v27 = sub_100BC17E0(v26);

    if (!v27)
    {
      goto LABEL_30;
    }

    v28 = [v27 interactiveCanvasController];

    if (!v28)
    {
      goto LABEL_30;
    }

    [v28 visibleUnscaledRect];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v54.origin.x = v30;
    v54.origin.y = v32;
    v54.size.width = v34;
    v54.size.height = v36;
    v55.origin.x = v19;
    v55.origin.y = v21;
    v55.size.width = v23;
    v55.size.height = v25;
    v37 = CGRectIntersectsRect(v54, v55);
    v38 = [v46 isHidden];
    if (v38 && v37)
    {
      v39 = v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator];
      v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewShouldReappear] = v39 ^ 1;
      if ((v39 & 1) == 0)
      {
        v40 = swift_unknownObjectWeakLoadStrong();
        if (v40)
        {
          v41 = v40;
          [v40 setHidden:0];
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_30;
        }

        sub_100A7071C();
LABEL_29:
        swift_unknownObjectRelease();
LABEL_30:
        sub_10091C278();
        sub_100BDD3F8();

        return;
      }
    }

    else
    {
      v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewShouldReappear] = 0;
    }

    if ((v38 | v37))
    {
      goto LABEL_30;
    }

    v42 = swift_unknownObjectWeakLoadStrong();
    if (v42)
    {
      v43 = v42;
      [v42 setHidden:1];
    }

    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      goto LABEL_30;
    }

    *(v44 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) = 1;
    [*sub_100020E58((v44 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate) *(v44 + OBJC:"dismissSecondLayerPopover" IVAR:? :? :? :? TtC8Freeform33CRLiOSMiniFormatterViewController:?delegate + 24))];
    goto LABEL_29;
  }
}

id sub_10091C90C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLRepTrackingMiniFormatterViewHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10091CA0C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1019F2218 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlMiniFormatter;
    v4 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v4, "[MiniFormatter] RepTrackingViewHelper is beginning dynamic operation", 68, 2, _swiftEmptyArrayStorage);
    *(v0 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingOut) = 1;
    sub_10091CAD8();

    *(v0 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator) = 1;
  }
}

void sub_10091CAD8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingOut] = 1;
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v0;
    v15 = sub_10091D680;
    v16 = v4;
    v11 = _NSConcreteStackBlock;
    v12 = *"";
    v13 = sub_100007638;
    v14 = &unk_10188D678;
    v5 = _Block_copy(&v11);
    v6 = v2;
    v7 = v0;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v15 = sub_10091D688;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = *"";
    v13 = sub_1005CC4AC;
    v14 = &unk_10188D6C8;
    v9 = _Block_copy(&v11);
    v10 = v7;

    [v3 animateWithDuration:v5 animations:v9 completion:0.2];
    _Block_release(v9);
    _Block_release(v5);
  }
}

void sub_10091CCE4()
{
  if ((v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isSuppressingReshowMiniFormatter] & 1) == 0)
  {
    if (qword_1019F2218 != -1)
    {
      swift_once();
    }

    v1 = static OS_os_log.crlMiniFormatter;
    v2 = static os_log_type_t.default.getter();
    sub_100005404(v1, &_mh_execute_header, v2, "[MiniFormatter] RepTrackingViewHelper is ending dynamic operation", 65, 2, _swiftEmptyArrayStorage);
    sub_10091C3B4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingIn] = 1;
        v7 = *&qword_1019F08C0;
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        *(v9 + 16) = v6;
        *(v9 + 24) = v0;
        v20 = sub_10091D664;
        v21 = v9;
        v16 = _NSConcreteStackBlock;
        v17 = *"";
        v18 = sub_100007638;
        v19 = &unk_10188D5D8;
        v10 = _Block_copy(&v16);
        v11 = v6;
        v12 = v0;

        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        v20 = sub_10091D66C;
        v21 = v13;
        v16 = _NSConcreteStackBlock;
        v17 = *"";
        v18 = sub_1005CC4AC;
        v19 = &unk_10188D628;
        v14 = _Block_copy(&v16);
        v15 = v12;

        [v8 animateWithDuration:0 delay:v10 options:v14 animations:0.2 completion:v7];

        _Block_release(v14);
        _Block_release(v10);
      }

      else
      {
      }

      v0[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator] = 0;
    }
  }
}

void sub_10091D134()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1019F2218 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlMiniFormatter;
    v4 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v4, "[MiniFormatter] RepTrackingViewHelper is beginning zoom operation", 65, 2, _swiftEmptyArrayStorage);
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [v5 setHidden:1];
    }

    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      *(v7 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) = 1;
      [*sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate) *(v7 + OBJC:"dismissSecondLayerPopover" IVAR:? :? :? :? TtC8Freeform33CRLiOSMiniFormatterViewController:?delegate + 24))];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *(v0 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator) = 1;
  }
}

void sub_10091D2BC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_1019F2218 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlMiniFormatter;
    v5 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v5, "[MiniFormatter] RepTrackingViewHelper is ending zoom operation", 62, 2, _swiftEmptyArrayStorage);
    sub_10091C3B4();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100A7071C();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *(v1 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator) = 0;
  }
}

uint64_t sub_10091D43C(void *a1, uint64_t a2)
{
  [a1 setAlpha:1.0];
  *(a2 + OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100A7071C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10091D4B4(void *a1)
{
  [a1 setAlpha:0.0];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isHidingMiniFormatter) = 1;
    [*sub_100020E58((result + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate) *(result + OBJC:"dismissSecondLayerPopover" IVAR:? :? :? :? TtC8Freeform33CRLiOSMiniFormatterViewController:?delegate + 24))];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10091D554()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(*sub_100020E58((Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate), *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24)) + OBJC_IVAR____TtC8Freeform28CRLiOSMiniFormatterPresenter_presentedNavigationController);
    if (v1)
    {
      v4 = v1;
      v5 = [v4 visibleViewController];
      if (v5)
      {
        type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
        v2 = swift_dynamicCastClass();
        if (v2)
        {
          sub_1007211DC(v2, 0);
        }

        swift_unknownObjectRelease();

        v3 = v5;
      }

      else
      {
        swift_unknownObjectRelease();
        v3 = v4;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

char *sub_10091D6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLUnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  atomic_thread_fence(memory_order_acq_rel);
  *(v4 + 6) = v9;
  v11 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__assetUUID;
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryDirectoryForAVAsset] = 0;
  v13 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryURLForAVAsset;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  *(v4 + 5) = a4;
  return v4;
}

void sub_10091D7D8(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SHA256();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SHA256Digest();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v7 - 8);
  v28 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = v1[6];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__assetUUID;
  swift_beginAccess();
  sub_10000BE14(v1 + v13, v11, &qword_1019F6990);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_10000CAAC(v11, &qword_1019F6990);
    v23 = a1;
    v17 = v1[2];
    v16 = v1[3];
    sub_10091E724();
    v24 = v1;
    v25 = v12;
    dispatch thunk of HashFunction.init()();
    sub_100024E98(v17, v16);
    sub_100061910(v17, v16);
    sub_10002640C(v17, v16);
    v18 = v26;
    v12 = v25;
    dispatch thunk of HashFunction.finalize()();
    (*(v29 + 8))(v5, v3);
    v19 = v23;
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v27 + 8))(v18, v30);
    v20 = v28;
    (*(v15 + 16))(v28, v19, v14);
    (*(v15 + 56))(v20, 0, 1, v14);
    v21 = v24;
    swift_beginAccess();
    sub_10002C638(v20, v21 + v13, &qword_1019F6990);
    swift_endAccess();
  }

  else
  {
    (*(v15 + 32))(a1, v11, v14);
  }

  os_unfair_lock_unlock(*(v12 + 16));
}

void sub_10091DBBC(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v28 - v8;
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v29 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v32 = *(v2 + 48);
  os_unfair_lock_lock(*(v32 + 16));
  v15 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryURLForAVAsset;
  swift_beginAccess();
  sub_10000BE14(v2 + v15, v14, &unk_1019F33C0);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    v9 = v14;
    goto LABEL_9;
  }

  sub_10000CAAC(v14, &unk_1019F33C0);
  v16 = OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryDirectoryForAVAsset;
  v17 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryDirectoryForAVAsset);
  if (v17)
  {
    goto LABEL_5;
  }

  v18 = objc_allocWithZone(CRLTemporaryDirectory);
  v33[0] = 0;
  v19 = [v18 initWithError:v33];
  v20 = v33[0];
  if (!v19)
  {
    v27 = v33[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_10;
  }

  v21 = *(v2 + v16);
  *(v2 + v16) = v19;
  v22 = v20;

  v17 = *(v2 + v16);
  if (v17)
  {
LABEL_5:
    v23 = [v17 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.appendingPathComponent(_:)();
    v24 = *(v4 + 8);
    v24(v6, v3);
    v25 = v31;
    Data.write(to:options:)();
    if (v25)
    {
      v24(v9, v3);
LABEL_10:
      os_unfair_lock_unlock(*(v32 + 16));
      return;
    }

    v26 = v29;
    (*(v4 + 16))(v29, v9, v3);
    (*(v4 + 56))(v26, 0, 1, v3);
    swift_beginAccess();
    sub_10002C638(v26, v2 + v15, &unk_1019F33C0);
    swift_endAccess();
LABEL_9:
    (*(v4 + 32))(v30, v9, v3);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_10091DF78(void (*a1)(void))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  Channel = type metadata accessor for CRLMemoryReadChannel();
  v6 = objc_allocWithZone(Channel);
  v7 = &v6[OBJC_IVAR____TtC8Freeform20CRLMemoryReadChannel_data];
  *v7 = v3;
  v7[1] = v4;
  sub_100024E98(v3, v4);
  v18.receiver = v6;
  v18.super_class = Channel;
  v8 = objc_msgSendSuper2(&v18, "init");
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_10;
    }

    v14 = v9 + 16;
    v9 = *(v9 + 16);
    v13 = *(v14 + 8);
    v12 = v13 - v9;
    if (!__OFSUB__(v13, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v10);
LABEL_10:
    v17 = [objc_allocWithZone(CRLReadChannelInputStreamAdapter) initWithReadChannel:v8 length:v12 closeChannelOnClose:1];
    a1();
    [v17 close];

    return;
  }

  v15 = __OFSUB__(HIDWORD(v9), v9);
  v16 = HIDWORD(v9) - v9;
  if (!v15)
  {
    v12 = v16;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_10091E0A0()
{
  sub_10002640C(*(v0 + 16), *(v0 + 24));

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__assetUUID, &qword_1019F6990);

  sub_10000CAAC(v0 + OBJC_IVAR____TtC8Freeform19CRLDataAssetStorage__temporaryURLForAVAsset, &unk_1019F33C0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLDataAssetStorage()
{
  result = qword_101A08838;
  if (!qword_101A08838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10091E1B0()
{
  sub_10091E2DC(319, &qword_1019F44E0, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_10091E2DC(319, &qword_101A046F0, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10091E2DC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10091E330()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24) >> 62;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v2 == 2)
  {
    v4 = v1 + 16;
    v1 = *(v1 + 16);
    v3 = *(v4 + 8);
    v5 = v3 - v1;
    if (!__OFSUB__(v3, v1))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    v6 = __OFSUB__(HIDWORD(v1), v1);
    v7 = HIDWORD(v1) - v1;
    if (v6)
    {
      goto LABEL_14;
    }

    v5 = v7;
LABEL_10:
    if ((v5 & 0x8000000000000000) == 0)
    {
      return;
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_10091E390()
{
  v1 = *(*v0 + 32);

  return v1;
}

uint64_t sub_10091E3E8()
{
  v1 = *(*v0 + 16);
  sub_100024E98(v1, *(*v0 + 24));
  return v1;
}

CGDataProviderRef sub_10091E420()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGDataProviderCreateWithCFData(isa);

  return v1;
}

void sub_10091E480()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10091DBBC(v4);
  if (!v0)
  {
    URL._bridgeToObjectiveC()(v5);
    v7 = v6;
    [objc_opt_self() assetWithURL:v6];

    (*(v2 + 8))(v4, v1);
  }
}

void sub_10091E59C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 2) != 0)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a3;
    *(v6 + 24) = a4;
    v8[4] = sub_10091E678;
    v8[5] = v6;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = *"";
    v8[2] = sub_100007638;
    v8[3] = &unk_10188D820;
    v7 = _Block_copy(v8);

    sub_10091E6A4(v7);
    _Block_release(v7);
  }
}

void sub_10091E6A4(void *a1)
{
  block = a1;
  if (+[NSThread isMainThread])
  {
    block[2]();
  }

  else
  {
    v1 = &_dispatch_main_q;
    dispatch_async(&_dispatch_main_q, block);
  }
}

unint64_t sub_10091E724()
{
  result = qword_1019F4570;
  if (!qword_1019F4570)
  {
    type metadata accessor for SHA256();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4570);
  }

  return result;
}

uint64_t sub_10091E77C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 == 1 && *v0 == 1)
  {
    v1 = [objc_opt_self() labelColor];
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4 == 1)
    {
      return static Color.accentColor.getter();
    }

    v1 = [objc_opt_self() tertiaryLabelColor];
  }

  v3 = v1;
  return Color.init(_:)();
}

uint64_t sub_10091E8A4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v93 = a2;
  v91 = sub_1005B981C(&qword_101A08A00);
  __chkstk_darwin(v91);
  v92 = v85 - v3;
  v95 = sub_1005B981C(&qword_101A08A08);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v107 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = v85 - v6;
  v90 = sub_1005B981C(&qword_101A08A10);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v85 - v7;
  v114 = sub_1005B981C(&qword_101A08A18);
  v115 = *(v114 - 8);
  __chkstk_darwin(v114);
  v113 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v112 = v85 - v10;
  v110 = sub_1005B981C(&qword_101A08A20);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v87 = v85 - v11;
  v12 = sub_1005B981C(&qword_101A08A28);
  __chkstk_darwin(v12 - 8);
  v104 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = v85 - v15;
  __chkstk_darwin(v16);
  v108 = v85 - v17;
  __chkstk_darwin(v18);
  v111 = v85 - v19;
  v20 = type metadata accessor for BorderlessButtonStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1005B981C(&qword_101A08A30);
  __chkstk_darwin(v99);
  v25 = v85 - v24;
  v103 = sub_1005B981C(&qword_101A08A38);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v85 - v28;
  sub_1009205C8(a1, v117);
  v30 = swift_allocObject();
  sub_100920600(v117, v30 + 16);
  v116 = a1;
  sub_1005B981C(&qword_101A08A40);
  sub_10092094C(&qword_101A08A48, &qword_101A08A40, &unk_101487B50, sub_100920670);
  Button.init(action:label:)();
  v31 = *(a1 + 7);
  swift_getKeyPath();
  swift_getKeyPath();
  v85[1] = v31;
  static Published.subscript.getter();

  v32 = v117[0];
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  v35 = 1;
  *(v34 + 16) = (v32 & 1) == 0;
  v36 = &v25[*(v99 + 36)];
  *v36 = KeyPath;
  v36[1] = sub_1009207D0;
  v36[2] = v34;
  BorderlessButtonStyle.init()();
  sub_1009207D8();
  v37 = sub_1009208BC();
  v100 = v29;
  v97 = v37;
  View.buttonStyle<A>(_:)();
  v38 = *(v21 + 8);
  v86 = v23;
  v99 = v20;
  v39 = v20;
  v40 = v111;
  v98 = v21 + 8;
  v96 = v38;
  v38(v23, v39);
  v41 = a1;
  sub_10000CAAC(v25, &qword_101A08A30);
  v42 = *a1;
  if (v42 == 1)
  {
    v43 = v87;
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = (v43 + *(v110 + 36));
    v45 = v119;
    *v44 = v118;
    v44[1] = v45;
    v44[2] = v120;
    sub_100920CA0(v43, v40);
    v35 = 0;
  }

  v46 = *(v109 + 56);
  v109 += 56;
  v46(v40, v35, 1, v110);
  sub_1009205C8(a1, v117);
  v47 = swift_allocObject();
  v48 = sub_100920600(v117, v47 + 16);
  __chkstk_darwin(v48);
  v85[-2] = a1;
  sub_1005B981C(&qword_101A08A90);
  sub_10092094C(&qword_101A08A98, &qword_101A08A90, &unk_101487BF8, sub_1009209D0);
  v49 = v88;
  Button.init(action:label:)();
  v50 = v86;
  BorderlessButtonStyle.init()();
  sub_10001A2F8(&qword_101A08AC0, &qword_101A08A10);
  v51 = v90;
  v52 = v99;
  View.buttonStyle<A>(_:)();
  v96(v50, v52);
  (*(v89 + 8))(v49, v51);
  v53 = 1;
  if (v42)
  {
    v54 = v87;
    Divider.init()();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v55 = (v54 + *(v110 + 36));
    v56 = v122;
    *v55 = v121;
    v55[1] = v56;
    v55[2] = v123;
    sub_100920CA0(v54, v108);
    v53 = 0;
  }

  v57 = v108;
  v46(v108, v53, 1, v110);
  sub_1009205C8(v41, v117);
  v58 = swift_allocObject();
  v59 = sub_100920600(v117, v58 + 16);
  __chkstk_darwin(v59);
  v85[-2] = v41;
  v60 = v92;
  Button.init(action:label:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v61 = v117[0];
  v62 = swift_getKeyPath();
  v63 = swift_allocObject();
  *(v63 + 16) = (v61 & 1) == 0;
  v64 = (v60 + *(v91 + 36));
  *v64 = v62;
  v64[1] = sub_100920D10;
  v64[2] = v63;
  BorderlessButtonStyle.init()();
  sub_100920B4C();
  v65 = v106;
  v66 = v99;
  View.buttonStyle<A>(_:)();
  v96(v50, v66);
  sub_10000CAAC(v60, &qword_101A08A00);
  v67 = *(v102 + 16);
  v68 = v101;
  v69 = v103;
  v67(v101, v100, v103);
  v70 = v105;
  sub_100920C30(v111, v105);
  v109 = *(v115 + 16);
  (v109)(v113, v112, v114);
  sub_100920C30(v57, v104);
  v71 = v94;
  v110 = *(v94 + 16);
  v72 = v65;
  v73 = v95;
  (v110)(v107, v72, v95);
  v74 = v93;
  v67(v93, v68, v69);
  v75 = sub_1005B981C(&qword_101A08AD0);
  sub_100920C30(v70, &v74[v75[12]]);
  v76 = v114;
  (v109)(&v74[v75[16]], v113, v114);
  v77 = v104;
  sub_100920C30(v104, &v74[v75[20]]);
  v78 = &v74[v75[24]];
  v79 = v107;
  (v110)(v78, v107, v73);
  v80 = *(v71 + 8);
  v80(v106, v73);
  sub_10000CAAC(v108, &qword_101A08A28);
  v81 = *(v115 + 8);
  v115 += 8;
  v81(v112, v76);
  sub_10000CAAC(v111, &qword_101A08A28);
  v82 = *(v102 + 8);
  v83 = v103;
  v82(v100, v103);
  v80(v79, v73);
  sub_10000CAAC(v77, &qword_101A08A28);
  v81(v113, v114);
  sub_10000CAAC(v105, &qword_101A08A28);
  return (v82)(v101, v83);
}

double sub_10091F7B8@<D0>(uint64_t a1@<X8>)
{
  v5 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v2 = sub_10091E77C();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 120) = v9;
  *(a1 + 136) = v10;
  *(a1 + 152) = v11;
  *(a1 + 168) = v12;
  result = *&v6;
  *(a1 + 72) = v6;
  *(a1 + 88) = v7;
  *a1 = v5;
  *(a1 + 8) = v13;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v18;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = v2;
  *(a1 + 104) = v8;
  return result;
}

double sub_10091F988@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = Image.init(systemName:)();
  v5 = *(a1 + 8);
  KeyPath = swift_getKeyPath();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a2 + 24) = v15;
  *(a2 + 40) = v16;
  *(a2 + 56) = v17;
  *(a2 + 120) = v11;
  *(a2 + 136) = v12;
  *(a2 + 152) = v13;
  *(a2 + 168) = v14;
  result = *&v8;
  *(a2 + 72) = v8;
  *(a2 + 88) = v9;
  *a2 = v4;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v5;
  *(a2 + 104) = v10;
  return result;
}

uint64_t sub_10091FB20(uint64_t a1, void (*a2)(void))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_10091FB78@<D0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = sub_10091E77C();
  KeyPath = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  *(a1 + 120) = v9;
  *(a1 + 136) = v10;
  *(a1 + 152) = v11;
  *(a1 + 168) = v12;
  result = *&v6;
  *(a1 + 72) = v6;
  *(a1 + 88) = v7;
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 104) = v8;
  return result;
}

uint64_t sub_10091FD14@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = sub_1005B981C(&qword_101A089F8);
  return sub_10091E8A4(v1, (a1 + *(v4 + 44)));
}

void sub_10091FDE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v0;
  static Published.subscript.setter();
  v1 = [objc_opt_self() crl_phoneUI];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 != v2 && (v1 & 1) != 0)
  {
    ObservableObjectPublisher.send()();
  }
}

void sub_10091FF4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v0;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 != v1)
  {
    ObservableObjectPublisher.send()();
  }
}

id CRLScenesNavigatorState.init()()
{
  v1 = sub_1005B981C(&unk_101A08DC0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_objectDidChange;
  type metadata accessor for ObservableObjectPublisher();
  swift_allocObject();
  *&v0[v5] = ObservableObjectPublisher.init()();
  v0[OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_toggledOpenStateLocallySinceLastLibrarySnapshotUpdate] = 0;
  v6 = OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState__isOpen;
  v15 = 0;
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(&v0[v6], v4, v1);
  v8 = OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState__isCompactUI;
  v15 = 0;
  Published.init(initialValue:)();
  v7(&v0[v8], v4, v1);
  v9 = OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState__isLandscapeUI;
  v15 = 0;
  Published.init(initialValue:)();
  v7(&v0[v9], v4, v1);
  v10 = OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState__areNavigatorButtonsEnabled;
  v15 = 1;
  Published.init(initialValue:)();
  v7(&v0[v10], v4, v1);
  v0[OBJC_IVAR____TtC8Freeform23CRLScenesNavigatorState_captureIsAnimating] = 0;
  v11 = type metadata accessor for CRLScenesNavigatorState();
  v14.receiver = v0;
  v14.super_class = v11;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t type metadata accessor for CRLScenesNavigatorState()
{
  result = qword_101A089E8;
  if (!qword_101A089E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CRLScenesNavigatorState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLScenesNavigatorState();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10092040C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLScenesNavigatorState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100920454()
{
  sub_10003A3F4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100920504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10092054C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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