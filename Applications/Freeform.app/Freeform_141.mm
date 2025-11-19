uint64_t sub_1010D7478()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 352);
  v4 = *(v2 + 344);
  if (v0)
  {
    v5 = sub_1010D7DE8;
  }

  else
  {
    v5 = sub_1010D75B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010D75B4()
{
  v1 = *(v0 + 368);
  if (sub_1010D6E7C(*(v0 + 320), *(v0 + 328), *(v1 + 16) != 0))
  {
    v2 = *(v0 + 360);
    v3 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
    swift_beginAccess();
    if (*(v2 + v3))
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v4 = static OS_os_log.realTimeSync;
      v5 = static os_log_type_t.default.getter();
      sub_100005404(v4, &_mh_execute_header, v5, "hasOngoingRealTimeSyncSession meaning we are switching between Me-to-Me and CKShare, will deactivateOpportunisticRealTimeCollaboration() and exitRealTimeSync() current session.", 176, 2, _swiftEmptyArrayStorage);
      v6 = swift_task_alloc();
      *(v0 + 392) = v6;
      *v6 = v0;
      v6[1] = sub_1010D7A4C;
      v7 = *(v0 + 328);

      return sub_100CB952C(v7, 1);
    }

    else
    {
      v13 = *(v1 + 16);
      if (v13)
      {
        v14 = v13;
        [v14 copy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_100006370(0, &qword_1019F52C0);
        if (swift_dynamicCast())
        {
          v15 = *(v0 + 304);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      *(v0 + 400) = v15;
      v23 = swift_task_alloc();
      *(v0 + 408) = v23;
      *v23 = v0;
      v23[1] = sub_1010D7C0C;
      v24 = *(v0 + 328);

      return sub_100CBA84C(v24, v15);
    }
  }

  else
  {

    v9 = *(v1 + 16);
    if (v9)
    {
      v10 = v9;
      [v10 copy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();

      sub_100006370(0, &qword_1019F52C0);
      v11 = swift_dynamicCast();
      if (v11)
      {
      }

      v12 = v11 ^ 1;
    }

    else
    {
      v12 = 1;
    }

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    if (v12)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v12)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = v19;
    String.append(_:)(*&v18);

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = 0;
    *(inited + 40) = 0xE000000000000000;
    v21 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v21, "GroupActivity already exists for isMeToMe: %{public}@, should not activate.", 75, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10003D87C(*(v0 + 328), type metadata accessor for CRLGloballyScopedBoardIdentifier);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1010D7A4C()
{
  v1 = *v0;

  v2 = *(v1 + 352);
  v3 = *(v1 + 344);

  return _swift_task_switch(sub_1010D7B6C, v3, v2);
}

uint64_t sub_1010D7B6C()
{

  sub_1010E4B9C();

  sub_10003D87C(*(v0 + 328), type metadata accessor for CRLGloballyScopedBoardIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D7C0C()
{
  v1 = *v0;
  v2 = *(*v0 + 400);

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return _swift_task_switch(sub_1010D7D4C, v4, v3);
}

uint64_t sub_1010D7D4C()
{

  sub_10003D87C(*(v0 + 328), type metadata accessor for CRLGloballyScopedBoardIdentifier);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D7DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010D7E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v5[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1010D7F34, v7, v6);
}

uint64_t sub_1010D7F34()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1010D7FD8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_10123993C(v2, v3);
}

uint64_t sub_1010D7FD8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1010D8364;
  }

  else
  {
    v5 = sub_1010D8114;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010D8114()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1010D81BC;
  v2 = *(v0 + 32);

  return sub_100CB952C(v2, 0);
}

uint64_t sub_1010D81BC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1010D82DC, v3, v2);
}

uint64_t sub_1010D82DC()
{
  v1 = *(v0 + 32);

  sub_10003D87C(v1, type metadata accessor for CRLGloballyScopedBoardIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010D8364()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1010D83D0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (!v1)
  {
    v2 = *(*(*(*(v0 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
    if (v2)
    {

      v5 = v2;
      [v5 copy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();

      sub_100006370(0, &qword_1019F52C0);
      if (swift_dynamicCast())
      {
        v6 = *(v0 + 40);
        if (v6)
        {
          v7 = *(v6 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant);
          v8 = v7;
        }

        else
        {
          v7 = 0;
        }

        v9 = [v17 owner];
        v10 = v9;
        if (v7)
        {
          if (v9)
          {
            v11 = v0;
            sub_100006370(0, &qword_1019F5520);
            v12 = static NSObject.== infix(_:_:)();

            if ((v12 & 1) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_14;
          }

          v10 = v7;
        }

        else if (!v9)
        {
LABEL_14:

          v2 = 0;
          goto LABEL_2;
        }

        v11 = v0;

LABEL_17:
        v13 = [v17 owner];
        v14 = objc_allocWithZone(type metadata accessor for CRLCollaborationParticipant(0));
        v2 = sub_1007D4760(v13, 1);

        v15 = *(v11 + 40);
        *(v11 + 40) = v2;
        v16 = v2;

        goto LABEL_2;
      }

      v2 = 0;
    }
  }

LABEL_2:
  v3 = v1;
  return v2;
}

uint64_t sub_1010D85C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(*(*(v1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v3 && (, v4 = v3, [v4 copy], _bridgeAnyObjectToAny(_:)(), v4, swift_unknownObjectRelease(), , sub_100006370(0, &qword_1019F52C0), (swift_dynamicCast() & 1) != 0))
  {
    v5 = sub_1010D83D0();
    return sub_1012FFD64(v5, v8, a1);
  }

  else
  {
    v7 = _s5BoardV13ShareMetadataVMa(0);
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_1010D875C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[25] = type metadata accessor for CRLBoardCRDTData(0);
  v4[26] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v4[27] = swift_task_alloc();

  return _swift_task_switch(sub_1010D8820, 0, 0);
}

uint64_t sub_1010D8820()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[21];
  v5 = v0[22];
  *(v3 + 24) = [objc_opt_self() weakObjectsHashTable];
  *(v3 + 32) = [objc_opt_self() weakObjectsHashTable];
  *(v3 + 40) = 0;
  *(v3 + 48) = _swiftEmptySetSingleton;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  type metadata accessor for CRLUnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  atomic_thread_fence(memory_order_acq_rel);
  *(v3 + 72) = v6;
  sub_1005B981C(&qword_101A14A90);
  swift_allocObject();
  *(v3 + 80) = PassthroughSubject.init()();
  *(v3 + 88) = 0;
  v0[28] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo__unsafe_lastActivityTime;
  Date.init()();
  *(v3 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_hasPausedIncomingDatabaseUpdate) = 0;
  *(v3 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_didLockOnPausingOutgoingRealTimeChanges) = 0;
  v8 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync;
  v0[29] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync;
  *(v3 + v8) = 0;
  v9 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
  v0[30] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
  v10 = (v3 + v9);
  *v10 = 0u;
  v10[1] = 0u;
  v11 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_onlyShowJoinLeavePlacardsAfterThisTime;
  v0[31] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_onlyShowJoinLeavePlacardsAfterThisTime;
  v12 = type metadata accessor for Date();
  v0[32] = v12;
  v13 = *(v12 - 8);
  v0[33] = v13;
  (*(v13 + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_cloudQuotaExceededAlertMinimumLastShowDateInterval) = 0x408C200000000000;
  *(v3 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_promptCloudQuotaExceededTask) = 0;
  *(v3 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_reloadBoardTask) = 0;
  v14 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_syncPriorityProvider;
  v0[34] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_syncPriorityProvider;
  *(v3 + v14) = v2;
  sub_10005006C(v4, v1, type metadata accessor for CRLBoardIdentifier);

  v15 = v5;
  v16 = swift_task_alloc();
  v0[35] = v16;
  *v16 = v0;
  v16[1] = sub_1010D8AD0;
  v17 = v0[27];
  v18 = v0[22];

  return sub_10092DE14(v17, v18, 0);
}

uint64_t sub_1010D8AD0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  *(*v2 + 288) = v1;

  if (v1)
  {
    v6 = sub_1010D8EA8;
  }

  else
  {
    *(v4 + 296) = a1;
    v6 = sub_1010D8C18;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1010D8C18()
{
  v1 = v0[24];
  *(v1 + 16) = v0[37];
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v18 = v0[22];
  v3 = v0[21];
  v17 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v5 = UUID.uuidString.getter();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = *(*(*(v1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v9 + v10, v2, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v2, type metadata accessor for CRLBoardCRDTData);
  v11 = v0[19];
  v12 = v0[20];
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  v13 = static os_log_type_t.default.getter();
  sub_100005404(v17, &_mh_execute_header, v13, "Created BoardInfo for %{public}@ : '%@'", 39, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  sub_10003D87C(v3, type metadata accessor for CRLBoardIdentifier);

  v14 = v0[1];
  v15 = v0[24];

  return v14(v15);
}

uint64_t sub_1010D8EA8()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);

  sub_10003D87C(v7, type metadata accessor for CRLBoardIdentifier);

  swift_unknownObjectRelease();

  (*(v1 + 8))(v6 + v5, v2);
  swift_unknownObjectRelease();
  sub_101105948(*(v6 + v4));
  sub_10000CAAC(v6 + v3, &qword_101A0A320);

  type metadata accessor for CRLBoardLibrary.BoardInfo();
  swift_deallocPartialClassInstance();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1010D906C()
{
  v1[74] = v0;
  sub_1005B981C(&qword_101A0A320);
  v1[75] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v1[76] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[77] = swift_task_alloc();
  v2 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v1[78] = v2;
  v1[79] = *(v2 + 64);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v3 = sub_1005B981C(&qword_101A2AD80);
  v1[82] = v3;
  v1[83] = *(v3 - 8);
  v1[84] = swift_task_alloc();

  return _swift_task_switch(sub_1010D9234, 0, 0);
}

uint64_t sub_1010D9234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = v3;
  v4 = v3[74];
  if (*(v4 + 64) == 1)
  {
    v33 = objc_opt_self();
    v5 = [v33 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 2448;
    v17 = v34;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Duplicate call to setUp()", 25, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    [v33 handleFailureInFunction:v24 file:v25 lineNumber:2448 isFatal:0 format:v26 args:v23];

    v4 = v3[74];
  }

  v27 = *(v4 + 16);
  v3[85] = v27;
  v28 = *(v27 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator);
  v3[86] = v28;
  if (v28)
  {
    type metadata accessor for MainActor();

    v3[87] = static MainActor.shared.getter();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v31 = v30;
    a1 = sub_1010D96A4;
    a2 = v29;
    a3 = v31;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1010D96A4()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 592);

  sub_10068576C(v2, v1);

  return _swift_task_switch(sub_1010D9728, 0, 0);
}

uint64_t sub_1010D9728()
{
  v1 = v0[85];
  v2 = v0[74];
  v3 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v0[88] = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v51 = v3;
  v52 = v1;
  v4 = *(v1 + v3);
  v0[89] = v4;
  v5 = *&v4[OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedChangeAvailablePublisher];
  v53 = objc_opt_self();
  v6 = v4;

  v49 = [v53 mainRunLoop];
  v0[31] = 0x3FB999999999999ALL;
  v0[32] = v5;
  v0[33] = v49;
  v0[34] = NSRunLoopCommonModes;
  v0[35] = sub_1010DA330;
  v0[36] = 0;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = NSRunLoopCommonModes;
  v11 = v6;
  v12 = v10;
  sub_1005B981C(&qword_101A2AD88);
  sub_10001A2F8(&qword_101A2AD90, &qword_101A2AD88);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v13 = *&v11[OBJC_IVAR____TtC8Freeform8CRLBoard_uncommittedRealTimeChangesAvailablePublisher];

  v14 = [v53 mainRunLoop];
  v0[37] = 0x3F847AE147AE147BLL;
  v0[38] = v13;
  v0[39] = v14;
  v0[40] = v12;
  v0[41] = CRLWPShapeLayout.descendersCannotClip.getter;
  v0[42] = 0;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v11;
  v50 = v11;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v0[72] = *(v2 + 80);
  v17 = qword_1019F2558;

  if (v17 != -1)
  {
    swift_once();
  }

  v44 = v0[82];
  v45 = v0[83];
  v47 = v0[77];
  v48 = v0[81];
  v46 = v0[76];
  v43 = v0[84];
  v18 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  sub_1005EB3DC(v18, qword_101AD8680);
  v19 = [v53 mainRunLoop];
  v0[73] = v19;
  sub_1005B981C(&qword_101A14A90);
  sub_100006370(0, &qword_1019FB830);
  sub_10001A2F8(&qword_101A2AD98, &qword_101A14A90);
  sub_10000FDE0(&qword_1019FB840, &qword_1019FB830);
  Publisher.throttle<A>(for:scheduler:latest:)();

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v21;
  sub_10001A2F8(&qword_101A2ADA0, &qword_101A2AD80);
  Publisher<>.sink(receiveValue:)();

  (*(v45 + 8))(v43, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v24 = *&v50[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v25 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v24 + v25, v46, type metadata accessor for CRLBoardCRDTData);
  v0[90] = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v46, type metadata accessor for CRLBoardCRDTData);
  v26 = (*&v50[v23] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v28 = *v26;
  v27 = v26[1];

  sub_10084BD4C(v47, v28, v27, v48);
  v29 = [objc_opt_self() defaultCenter];
  if (qword_1019F1EA0 != -1)
  {
    swift_once();
  }

  v30 = v0[81];
  v31 = v0[80];
  v32 = v0[78];
  v33 = v0[74];
  v34 = qword_101AD7858;
  v35 = swift_allocObject();
  swift_weakInit();
  sub_10005006C(v30, v31, type metadata accessor for CRLBoardIdentifier);
  v36 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  sub_100025738(v31, v37 + v36, type metadata accessor for CRLBoardIdentifier);
  v0[47] = sub_101106F0C;
  v0[48] = v37;
  v0[43] = _NSConcreteStackBlock;
  v0[44] = *"";
  v0[45] = sub_100059694;
  v0[46] = &unk_1018B13C8;
  v38 = _Block_copy(v0 + 43);

  v39 = [v29 addObserverForName:v34 object:0 queue:0 usingBlock:v38];
  _Block_release(v38);

  *(v33 + 56) = v39;
  swift_unknownObjectRelease();
  v40 = *(*(*(v52 + v51) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetUploadTracker);
  v0[91] = v40;
  v41 = *(v40 + 16);
  v0[92] = v41;

  return _swift_task_switch(sub_1010D9FF8, v41, 0);
}

uint64_t sub_1010D9FF8()
{
  [*(*(v0 + 736) + 112) addObject:*(v0 + 592)];

  return _swift_task_switch(sub_1010DA07C, 0, 0);
}

uint64_t sub_1010DA07C()
{
  v19 = v0[89];
  v20 = v0[81];
  v1 = v0[80];
  v2 = v0[77];
  v3 = v0[76];
  v4 = v0[74];
  v18 = v0[75];
  v5 = *(v0[85] + v0[88]);
  v6 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v7 = *&v5[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v7 + v8, v3, type metadata accessor for CRLBoardCRDTData);
  v9 = v5;
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v5[v6] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v2, v11, v12, v1);

  sub_1006C3680(v1);
  sub_10003D87C(v1, type metadata accessor for CRLBoardIdentifier);
  Date.init(timeIntervalSinceNow:)();
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(v18, 0, 1, v13);
  v14 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_onlyShowJoinLeavePlacardsAfterThisTime;
  swift_beginAccess();
  sub_10002C638(v18, v4 + v14, &qword_101A0A320);
  swift_endAccess();
  v0[52] = &type metadata for CRLBoardVersionUpgrader;
  v0[53] = &off_1018BC358;
  v0[49] = v19;
  v15 = sub_10001FF1C();
  sub_10001FF28(v15);
  sub_10003D87C(v20, type metadata accessor for CRLBoardIdentifier);
  sub_1000458C8((v0 + 49));
  *(v4 + 64) = 1;

  v16 = v0[1];

  return v16();
}

uint64_t sub_1010DA330(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&unk_101A22690);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v28[-v8];
  sub_10000BE14(a1, &v28[-v8], &unk_101A22690);
  v10 = v9[*(v7 + 56)];
  sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
  if (v10 == 1)
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000BE14(a1, v9, &unk_101A22690);
    (*(v3 + 16))(v5, v9, v2);
    sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v3 + 8))(v5, v2);
    *(inited + 56) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 32) = v13;
    v17 = inited + 32;
    *(inited + 64) = v16;
    *(inited + 40) = v15;
    v18 = static os_log_type_t.info.getter();
    v19 = "Observed a significant change in board %@. Saving immediately.";
    v20 = v11;
    v21 = 62;
  }

  else
  {
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000BE14(a1, v9, &unk_101A22690);
    (*(v3 + 16))(v5, v9, v2);
    sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v3 + 8))(v5, v2);
    *(inited + 56) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 32) = v23;
    v17 = inited + 32;
    *(inited + 64) = v26;
    *(inited + 40) = v25;
    v18 = static os_log_type_t.info.getter();
    v19 = "Observed a change in board %@. Saving soon";
    v20 = v22;
    v21 = 42;
  }

  sub_100005404(v20, &_mh_execute_header, v18, v19, v21, 2, inited);
  swift_setDeallocating();
  sub_100005070(v17);
  return v10;
}

void sub_1010DA6E4()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_100006370(0, &qword_1019F2D90);
      v19 = static OS_dispatch_queue.main.getter();
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v11;
      aBlock[4] = sub_1011071D4;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B1490;
      v17 = _Block_copy(aBlock);
      v18 = v9;

      static DispatchQoS.unspecified.getter();
      v20 = _swiftEmptyArrayStorage;
      sub_101104B20(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      v16 = v4;
      sub_1005B981C(&unk_1019FF400);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v13 = v17;
      v14 = v19;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v13);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v16);
    }

    else
    {
    }
  }
}

uint64_t sub_1010DAA48(char *a1, uint64_t a2)
{
  v29 = a2;
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v15 = *&a1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v5, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  v17 = (*&a1[v14] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v18 = *v17;
  v19 = v17[1];

  sub_10084BD4C(v9, v18, v19, v12);
  (*(v7 + 16))(v9, v12, v6);
  sub_10003D87C(v12, type metadata accessor for CRLBoardIdentifier);
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v7 + 8))(v9, v6);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v20;
  *(inited + 40) = v22;
  v23 = static os_log_type_t.info.getter();
  sub_100005404(v28, &_mh_execute_header, v23, "Autosaving %{public}@", 21, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v24 = swift_allocObject();
  v25 = v29;
  *(v24 + 16) = a1;
  *(v24 + 24) = v25;
  v26 = a1;

  sub_100ED1CF8(sub_1011071DC, v24);
}

void sub_1010DADD0(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v7 = type metadata accessor for Date();
  v41 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v17 - 8);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 & 1) == 0 && (a1)
  {
    v37 = v9;
    v38 = v7;
    v39 = a4;
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v21 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v22 = v40;
    v23 = *(v40 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v24 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v23 + v24, v12, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v12, type metadata accessor for CRLBoardCRDTData);
    v25 = (*(v22 + v21) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v26 = *v25;
    v27 = v25[1];

    sub_10084BD4C(v16, v26, v27, v19);
    (*(v14 + 16))(v16, v19, v13);
    sub_10003D87C(v19, type metadata accessor for CRLBoardIdentifier);
    v28 = UUID.uuidString.getter();
    v30 = v29;
    (*(v14 + 8))(v16, v13);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v28;
    *(inited + 40) = v30;
    v31 = static os_log_type_t.info.getter();
    sub_100005404(v36, &_mh_execute_header, v31, "Success autosaving %{public}@", 29, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v32 = v39;
    v33 = *(v39 + 72);
    os_unfair_lock_lock(*(v33 + 16));
    *(v32 + 88) = 1;
    v34 = v37;
    Date.init()();
    v35 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo__unsafe_lastActivityTime;
    swift_beginAccess();
    (*(v41 + 40))(v32 + v35, v34, v38);
    swift_endAccess();
    os_unfair_lock_unlock(*(v33 + 16));
    sub_1005B981C(&qword_101A14A90);
    sub_10001A2F8(&qword_101A14A98, &qword_101A14A90);
    Subject<>.send()();
  }
}

uint64_t sub_1010DB260(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v9 = a3;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v8;
  v11[5] = v9;

  sub_10064191C(0, 0, v6, &unk_1014C5FE8, v11);
}

uint64_t sub_1010DB3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  sub_1005B981C(&qword_1019FB750);
  v5[31] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v5[32] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v5[36] = swift_task_alloc();
  sub_1005B981C(&qword_101A125E0);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = type metadata accessor for MainActor();
  v5[40] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010DB5C4, v8, v7);
}

uint64_t sub_1010DB5C4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession);
    swift_beginAccess();
    v3 = *v2;
    sub_1011066F0(*v2);

    if (v3)
    {

      sub_101105948(v4);
      v5 = *(v3 + 32);

      if (v5)
      {
        swift_beginAccess();
        v6 = swift_weakLoadStrong();
        if (!v6)
        {
          goto LABEL_17;
        }

        v7 = (v6 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession);
        swift_beginAccess();
        v8 = *v7;
        sub_1011066F0(*v7);

        if (!v8)
        {
          goto LABEL_17;
        }

        sub_101105948(v9);
        sub_1005B981C(&qword_101A1A748);
        v10 = swift_dynamicCastClass();
        if (!v10)
        {

LABEL_17:
          v34 = v0[31];
          v35 = type metadata accessor for TaskPriority();
          (*(*(v35 - 8) + 56))(v34, 1, 1, v35);

          v36 = static MainActor.shared.getter();
          v37 = swift_allocObject();
          v37[2] = v36;
          v37[3] = &protocol witness table for MainActor;
          v37[4] = v5;
          sub_10064191C(0, 0, v34, &unk_1014C5FF8, v37);

          goto LABEL_18;
        }

        v11 = v0[38];
        v12 = *(*v10 + 280);
        v13 = v10;
        swift_beginAccess();
        sub_10000BE14(v13 + v12, v11, &qword_101A125E0);
        v14 = sub_1005B981C(&qword_101A1A6F8);
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(v11, 1, v14) == 1)
        {
        }

        else
        {
          v16 = v0[37];
          sub_10000BE14(v0[38], v16, &qword_101A125E0);
          if ((*(v15 + 88))(v16, v14) == enum case for GroupSession.State.waiting<A>(_:))
          {
            if (qword_1019F2288 != -1)
            {
              swift_once();
            }

            v44 = v0[38];
            v17 = v0[35];
            v18 = v0[34];
            v41 = v0[36];
            v42 = v0[33];
            v19 = v0[32];
            v20 = v0[30];
            v40 = v20;
            v43 = static OS_os_log.realTimeSync;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
            v23 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
            v24 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
            swift_beginAccess();
            sub_10005006C(v23 + v24, v19, type metadata accessor for CRLBoardCRDTData);
            sub_1005B981C(&unk_1019F5250);
            CRRegister.wrappedValue.getter();
            sub_10003D87C(v19, type metadata accessor for CRLBoardCRDTData);
            v25 = (*(v40 + v22) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
            v26 = *v25;
            v27 = v25[1];

            sub_10084BD4C(v17, v26, v27, v41);
            (*(v18 + 16))(v17, v41, v42);
            sub_10003D87C(v41, type metadata accessor for CRLBoardIdentifier);
            v28 = UUID.uuidString.getter();
            v30 = v29;
            (*(v18 + 8))(v17, v42);
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v28;
            *(inited + 40) = v30;
            v31 = static os_log_type_t.default.getter();
            sub_100005404(v43, &_mh_execute_header, v31, "Tried to send real-time changes but state is .waiting, so fast sync changes will not be transferred %{public}@", 110, 2, inited);

            swift_setDeallocating();
            sub_100005070(inited + 32);
            v32 = v44;
            goto LABEL_16;
          }

          v33 = v0[37];

          (*(v15 + 8))(v33, v14);
        }

        v32 = v0[38];
LABEL_16:
        sub_10000CAAC(v32, &qword_101A125E0);
        goto LABEL_17;
      }
    }
  }

LABEL_18:

  v38 = v0[1];

  return v38();
}

uint64_t sub_1010DBC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1005B981C(&qword_1019FB750);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();

  return _swift_task_switch(sub_1010DBCC0, a4, 0);
}

uint64_t sub_1010DBCC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = sub_101104B20(&qword_101A1A758, type metadata accessor for CRLGroupSessionSyncController);
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v2;
  swift_retain_n();
  sub_10064191C(0, 0, v1, &unk_1014C6008, v5);

  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010DBE20, v7, v6);
}

uint64_t sub_1010DBE20()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1010DBE8C()
{
  v0 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v52 = v4;
    swift_beginAccess();
    v16 = swift_weakLoadStrong();
    if (v16)
    {
      v17 = v16;
      os_unfair_lock_lock(*(*(v16 + 72) + 16));
      v18 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo__unsafe_lastActivityTime;
      swift_beginAccess();
      v19 = *(v11 + 16);
      v53 = v13;
      v19(v13, v17 + v18, v10);
      os_unfair_lock_unlock(*(*(v17 + 72) + 16));
      v50 = v10;
      v51 = v11;
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v45 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v21 = *&v15[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v44 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v23 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v49 = type metadata accessor for CRLBoardCRDTData;
      sub_10005006C(v21 + v23, v2, type metadata accessor for CRLBoardCRDTData);
      v48 = sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      v47 = type metadata accessor for CRLBoardCRDTData;
      sub_10003D87C(v2, type metadata accessor for CRLBoardCRDTData);
      v24 = (*&v15[v22] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v25 = *v24;
      v26 = v24[1];

      sub_10084BD4C(v6, v25, v26, v9);
      v27 = v52;
      v52[2](v6, v9, v3);
      v46 = type metadata accessor for CRLBoardIdentifier;
      sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
      v28 = UUID.uuidString.getter();
      v30 = v29;
      (*(v27 + 8))(v6, v3);
      v52 = v9;
      v31 = v2;
      *(inited + 56) = &type metadata for String;
      v32 = sub_1000053B0();
      *(inited + 64) = v32;
      *(inited + 32) = v28;
      *(inited + 40) = v30;
      v33 = Date.description.getter();
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v32;
      *(inited + 72) = v33;
      *(inited + 80) = v34;
      v35 = static os_log_type_t.info.getter();
      sub_100005404(v45, &_mh_execute_header, v35, "Updating activity time for %{public}@ to %{public}@", 51, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      os_unfair_lock_lock(*(*(v17 + 72) + 16));
      *(v17 + 88) = 0;
      os_unfair_lock_unlock(*(*(v17 + 72) + 16));
      v36 = v44;
      v37 = *&v15[v44];
      v38 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v37 + v38, v31, v49);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v31, v47);
      v39 = (*&v15[v36] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v40 = *v39;
      v41 = v39[1];

      v42 = v52;
      sub_10084BD4C(v6, v40, v41, v52);
      v43 = v53;
      sub_100E133C8(v42, v53, 0, 0);

      sub_10003D87C(v42, v46);
      (*(v51 + 8))(v43, v50);
    }
  }
}

uint64_t sub_1010DC4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CRLZoneSyncResultScenarios();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = Notification.userInfo.getter();
    if (v12)
    {
      v13 = v12;
      v24 = 0xD000000000000026;
      v25 = 0x8000000101590790;
      AnyHashable.init<A>(_:)();
      if (*(v13 + 16) && (v14 = sub_1000640CC(v26), (v15 & 1) != 0))
      {
        sub_100064288(*(v13 + 56) + 32 * v14, &v27);
        sub_100064234(v26);

        if (*(&v28 + 1))
        {
          sub_1005B981C(&qword_101A151D8);
          if (swift_dynamicCast())
          {
            v16 = v26[0];
            if (*(v26[0] + 16))
            {
              v17 = sub_1000486F0(a3);
              if (v18)
              {
                sub_10005006C(*(v16 + 56) + *(v5 + 72) * v17, v7, type metadata accessor for CRLZoneSyncResultScenarios);

                sub_100025738(v7, v10, type metadata accessor for CRLZoneSyncResultScenarios);
                if (*v10)
                {
                  sub_1010DFEF8();
                }

                if (v10[1] == 1)
                {
                  sub_1010DF454();
                }

                v19 = Notification.userInfo.getter();
                if (v19)
                {
                  v20 = v19;
                  v24 = 0xD000000000000029;
                  v25 = 0x80000001015907C0;
                  AnyHashable.init<A>(_:)();
                  if (*(v20 + 16) && (v21 = sub_1000640CC(v26), (v22 & 1) != 0))
                  {
                    sub_100064288(*(v20 + 56) + 32 * v21, &v27);
                    sub_100064234(v26);

                    if (*(&v28 + 1))
                    {
                      if ((swift_dynamicCast() & 1) != 0 && (v26[0] & 1) == 0)
                      {
                        sub_1010E5930(*&v10[*(v4 + 40)]);
                      }

                      return sub_10003D87C(v10, type metadata accessor for CRLZoneSyncResultScenarios);
                    }
                  }

                  else
                  {

                    sub_100064234(v26);
                    v27 = 0u;
                    v28 = 0u;
                  }
                }

                else
                {

                  v27 = 0u;
                  v28 = 0u;
                }

                sub_10000CAAC(&v27, &unk_1019F4D00);
                return sub_10003D87C(v10, type metadata accessor for CRLZoneSyncResultScenarios);
              }
            }
          }
        }
      }

      else
      {

        sub_100064234(v26);
        v27 = 0u;
        v28 = 0u;
      }
    }

    else
    {

      v27 = 0u;
      v28 = 0u;
    }

    return sub_10000CAAC(&v27, &unk_1019F4D00);
  }

  return result;
}

void sub_1010DC884()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = v57 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  v12 = Notification.userInfo.getter();
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v65 = v1;
  if (qword_1019F15B8 != -1)
  {
    swift_once();
  }

  v14 = qword_101AD6550;
  v66 = qword_101AD6550;
  type metadata accessor for Name(0);
  sub_101104B20(&qword_1019F3490, type metadata accessor for Name);
  v15 = v14;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v16 = sub_1000640CC(v67), (v17 & 1) == 0))
  {
LABEL_14:

    sub_100064234(v67);
    return;
  }

  sub_100064288(*(v13 + 56) + 32 * v16, v68);
  sub_100064234(v67);
  v64 = sub_1005B981C(&unk_101A00BF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    return;
  }

  v63 = v66;
  if (qword_1019F15C0 != -1)
  {
    swift_once();
  }

  v66 = qword_101AD6558;
  v18 = qword_101AD6558;
  AnyHashable.init<A>(_:)();
  if (!*(v13 + 16) || (v19 = sub_1000640CC(v67), (v20 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_100064288(*(v13 + 56) + 32 * v19, v68);
  sub_100064234(v67);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v21 = v66;
  v22 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_onlyShowJoinLeavePlacardsAfterThisTime;
  v23 = v65;
  swift_beginAccess();
  sub_10000BE14(v23 + v22, v4, &qword_101A0A320);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v11, v4, v5);
    static Date.now.getter();
    v24 = static Date.> infix(_:_:)();
    v26 = v6 + 8;
    v25 = *(v6 + 8);
    v25(v8, v5);
    if ((v24 & 1) == 0)
    {
      v25(v11, v5);

      goto LABEL_31;
    }

    v57[0] = v25;

    v28 = sub_100E95470(v27);

    v30 = sub_100E95470(v29);

    v31 = sub_10119DF24(v30, v28);
    v32 = sub_1012CE3E0(v31, v30);
    v33 = sub_1012CE3E0(v31, v28);

    v34 = sub_100676C3C(v32);

    v35 = sub_100676C3C(v33);

    v60 = v21;
    if (qword_1019F21C0 != -1)
    {
      swift_once();
    }

    v57[1] = v26;
    v36 = static OS_os_log.crlJoinLeave;
    v61 = sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    v62 = xmmword_10146C6B0;
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = v64;
    v38 = sub_10001A2F8(&qword_101A00EA0, &unk_101A00BF8);
    *(inited + 64) = v38;
    v58 = v38;
    *(inited + 32) = v63;
    v39 = static os_log_type_t.default.getter();
    v59 = v36;
    sub_100005404(v36, &_mh_execute_header, v39, "Notification received: oldList: %@", 34, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v40 = swift_initStackObject();
    *(v40 + 16) = v62;
    v41 = v64;
    *(v40 + 56) = v64;
    *(v40 + 64) = v38;
    *(v40 + 32) = v60;
    v42 = static os_log_type_t.default.getter();
    sub_100005404(v36, &_mh_execute_header, v42, "Notification received: newList: %@", 34, 2, v40);
    swift_setDeallocating();
    sub_100005070(v40 + 32);
    v43 = swift_initStackObject();
    *(v43 + 16) = v62;
    v44 = v58;
    *(v43 + 56) = v41;
    *(v43 + 64) = v44;
    *(v43 + 32) = v34;

    v45 = static os_log_type_t.default.getter();
    v46 = v59;
    sub_100005404(v59, &_mh_execute_header, v45, "Notification received: addedCollaborators: %@", 45, 2, v43);
    swift_setDeallocating();
    sub_100005070(v43 + 32);
    v47 = swift_initStackObject();
    *(v47 + 16) = v62;
    *(v47 + 56) = v41;
    *(v47 + 64) = v44;
    *(v47 + 32) = v35;

    v48 = static os_log_type_t.default.getter();
    sub_100005404(v46, &_mh_execute_header, v48, "Notification received: removedCollaborators: %@", 47, 2, v47);
    swift_setDeallocating();
    sub_100005070(v47 + 32);
    v49 = [*(v65 + 24) allObjects];
    type metadata accessor for CRLiOSBoardViewController();
    v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v50 >> 62)
    {
      v51 = _CocoaArrayWrapper.endIndex.getter();
      if (!v51)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v51)
      {
        goto LABEL_35;
      }
    }

    if (v51 < 1)
    {
      __break(1u);
      return;
    }

    v52 = 0;
    do
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v53 = *(v50 + 8 * v52 + 32);
      }

      v54 = v53;
      ++v52;
      sub_1010415D4(v34);
      sub_1010415EC(v35);
    }

    while (v51 != v52);
LABEL_35:

    (v57[0])(v11, v5);
    return;
  }

  sub_10000CAAC(v4, &qword_101A0A320);
LABEL_31:
  if (qword_1019F21C0 != -1)
  {
    swift_once();
  }

  v55 = static OS_os_log.crlJoinLeave;
  v56 = static os_log_type_t.default.getter();
  sub_100005404(v55, &_mh_execute_header, v56, "Skipping activeParticipantListChangedNotification: Still in quiet time.", 71, 2, _swiftEmptyArrayStorage);
}

void sub_1010DD1F8()
{
  v1 = type metadata accessor for Date();
  v207 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = (&v192 - v5);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v211 = &v192 - v8;
  v9 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v192 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v192 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLBoardIdentifier(0) - 8;
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v22 = &v192 - v21;
  if ((*(v0 + 65) & 1) == 0)
  {
    v197 = v6;
    v198 = v20;
    v199 = v19;
    v200 = v1;
    v208 = v13;
    v203 = v12;
    v205 = v18;
    v206 = v3;
    v201 = *(v0 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_syncPriorityProvider);
    v214 = v0;
    v45 = *(v0 + 16);
    v23 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v46 = *(v45 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v47 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v48 = *&v46[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v49 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v48 + v49, v11, type metadata accessor for CRLBoardCRDTData);
    v50 = v46;
    v202 = sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    v212 = v11;
    sub_10003D87C(v11, type metadata accessor for CRLBoardCRDTData);
    v51 = (*&v46[v47] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v52 = *v51;
    v53 = v51[1];

    sub_10084BD4C(v15, v52, v53, v22);

    v209 = v23;
    sub_1006C36A8(v22);
    v210 = v22;
    v54 = v45;
    sub_10003D87C(v22, type metadata accessor for CRLBoardIdentifier);
    v55 = *(v45 + v23);
    v56 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    v57 = v211;
    sub_10000BE14(v55 + v56, v211, &qword_101A08DF0);
    v58 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
    v59 = (*(*(v58 - 8) + 48))(v57, 1, v58) == 1;
    v204 = v15;
    v60 = v57;
    v213 = v54;
    if (!v59)
    {
      v201 = objc_opt_self();
      v61 = [v201 _atomicIncrementAssertCount];
      v217[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v217);
      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v63 = String._bridgeToObjectiveC()();

      v64 = [v63 lastPathComponent];

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v61;
      v70 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v70;
      v71 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v71;
      *(inited + 72) = v62;
      *(inited + 136) = &type metadata for String;
      v72 = sub_1000053B0();
      *(inited + 112) = v65;
      *(inited + 120) = v67;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v72;
      *(inited + 152) = 2618;
      v73 = v62;
      v74 = v217[0];
      *(inited + 216) = v70;
      *(inited + 224) = v71;
      *(inited + 192) = v74;
      v75 = v73;
      v76 = v74;
      v77 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v68, &_mh_execute_header, v78, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v79 = swift_allocObject();
      v79[2] = 8;
      v79[3] = 0;
      v79[4] = 0;
      v79[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v80 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v81 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v82 = String._bridgeToObjectiveC()();

      [v201 handleFailureInFunction:v80 file:v81 lineNumber:2618 isFatal:0 format:v82 args:v23];

      v60 = v211;
    }

    sub_10000CAAC(v60, &qword_101A08DF0);
    v83 = v214;
    v24 = *(v214 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_reloadBoardTask);
    if (v24)
    {

      Task.cancel()();
    }

    swift_beginAccess();
    v84 = v83[6];
    if ((v84 & 0xC000000000000001) != 0)
    {

      v24 = __CocoaSet.makeIterator()();
      LODWORD(v23) = type metadata accessor for AnyCancellable();
      sub_101104B20(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v84 = v217[0];
      v85 = v217[1];
      v87 = v217[2];
      v86 = v217[3];
      v27 = v217[4];
    }

    else
    {
      v88 = -1 << *(v84 + 32);
      v85 = (v84 + 56);
      v87 = ~v88;
      v89 = -v88;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      else
      {
        v90 = -1;
      }

      v27 = (v90 & *(v84 + 56));

      v86 = 0;
    }

    if ((v84 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v91 = v86;
      v92 = v27;
      v29 = v86;
      if (!v27)
      {
        break;
      }

LABEL_21:
      v23 = (v92 - 1) & v92;
      v24 = *(*(v84 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v92)))));

      if (!v24)
      {
LABEL_27:
        sub_100035F90();
        v94 = v214;
        v214[6] = _swiftEmptySetSingleton;

        v95 = objc_opt_self();
        v96 = [v95 defaultCenter];
        if (qword_1019F15A8 != -1)
        {
          swift_once();
        }

        [v96 removeObserver:v94 name:qword_101AD6540 object:0];

        v97 = v212;
        v98 = v204;
        if (qword_1019F21C0 != -1)
        {
          swift_once();
        }

        v99 = static OS_os_log.crlJoinLeave;
        v100 = static os_log_type_t.default.getter();
        sub_100005404(v99, &_mh_execute_header, v100, "BoardLibrary teardown CRLBoardRealTimeParticipantsDidChange observer", 68, 2, _swiftEmptyArrayStorage);
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v101 = static OS_os_log.realTimeSync;
        v102 = static os_log_type_t.default.getter();
        sub_100005404(v101, &_mh_execute_header, v102, "BoardInfo teared down", 21, 2, _swiftEmptyArrayStorage);
        v103 = v94[7];
        if (v103)
        {
          swift_unknownObjectRetain();
          v104 = [v95 defaultCenter];
          [v104 removeObserver:v103];
          swift_unknownObjectRelease();
        }

        v105 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync;
        v106 = *(v94 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync);
        if (v106)
        {
          swift_unknownObjectRetain();
          v107 = [v95 defaultCenter];
          [v107 removeObserver:v106];

          swift_unknownObjectRelease();
          *(v94 + v105) = 0;
          swift_unknownObjectRelease();
        }

        v108 = type metadata accessor for TaskPriority();
        v109 = v197;
        (*(*(v108 - 8) + 56))(v197, 1, 1, v108);
        v110 = swift_allocObject();
        v110[2] = 0;
        v110[3] = 0;
        v110[4] = v94;

        sub_10064191C(0, 0, v109, &unk_1014C5FC8, v110);

        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v211 = static OS_os_log.boardStore;
        v196 = sub_1005B981C(&qword_1019F54E0);
        v111 = swift_initStackObject();
        *(v111 + 16) = xmmword_10146C6B0;
        v112 = *(v213 + v209);
        v113 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
        v114 = *&v112[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
        v115 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        v197 = type metadata accessor for CRLBoardCRDTData;
        sub_10005006C(v114 + v115, v97, type metadata accessor for CRLBoardCRDTData);
        v116 = v112;
        CRRegister.wrappedValue.getter();
        v201 = type metadata accessor for CRLBoardCRDTData;
        sub_10003D87C(v97, type metadata accessor for CRLBoardCRDTData);
        v117 = (*&v112[v113] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v118 = v98;
        v119 = *v117;
        v120 = v117[1];

        v121 = v210;
        sub_10084BD4C(v118, v119, v120, v210);

        v122 = v208;
        v123 = v121;
        v124 = v121;
        v125 = v203;
        v193 = *(v208 + 16);
        v194 = v208 + 16;
        v193(v118, v124, v203);
        sub_10003D87C(v123, type metadata accessor for CRLBoardIdentifier);
        v126 = UUID.uuidString.getter();
        v128 = v127;
        v129 = *(v122 + 8);
        v208 = v122 + 8;
        v192 = v129;
        v129(v118, v125);
        *(v111 + 56) = &type metadata for String;
        v195 = sub_1000053B0();
        *(v111 + 64) = v195;
        *(v111 + 32) = v126;
        *(v111 + 40) = v128;
        v130 = static os_log_type_t.info.getter();
        sub_100005404(v211, &_mh_execute_header, v130, "Saving %{public}@ for tearDown", 30, 2, v111);
        swift_setDeallocating();
        v131 = v212;
        sub_100005070(v111 + 32);
        v132 = v209;
        v133 = *(v213 + v209);
        v134 = *&v133[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
        v135 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
        v136 = *&v133[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
        v137 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        sub_10005006C(v136 + v137, v131, v197);
        v138 = v134;
        v139 = v133;
        CRRegister.wrappedValue.getter();
        sub_10003D87C(v131, v201);
        v140 = (*&v133[v135] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v141 = *v140;
        v142 = v140[1];

        v143 = v205;
        sub_10084BD4C(v118, v141, v142, v205);

        v144 = v213;
        v145 = v132;
        v146 = *(v213 + v132);
        v147 = v210;
        sub_10005006C(v143, v210, type metadata accessor for CRLBoardIdentifier);
        v148 = (*(v198 + 80) + 24) & ~*(v198 + 80);
        v149 = swift_allocObject();
        *(v149 + 16) = v138;
        sub_100025738(v147, v149 + v148, type metadata accessor for CRLBoardIdentifier);
        v150 = v138;
        v151 = v146;
        sub_100ED1CF8(sub_101106D90, v149);

        v152 = v214;
        v153 = v214[9];
        os_unfair_lock_lock(*(v153 + 16));
        LODWORD(v151) = v152[88];
        os_unfair_lock_unlock(*(v153 + 16));
        if (v151 == 1)
        {
          os_unfair_lock_lock(*(v153 + 16));
          v154 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo__unsafe_lastActivityTime;
          swift_beginAccess();
          (*(v207 + 16))(v206, &v152[v154], v200);
          os_unfair_lock_unlock(*(v153 + 16));
          v155 = swift_initStackObject();
          v156 = v212;
          v157 = v155;
          *(v155 + 16) = xmmword_10146BDE0;
          v201 = v150;
          v158 = *(v144 + v145);
          v159 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
          v160 = *&v158[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
          v161 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          v197 = type metadata accessor for CRLBoardCRDTData;
          v162 = v160 + v161;
          v163 = v156;
          sub_10005006C(v162, v156, type metadata accessor for CRLBoardCRDTData);
          v164 = v158;
          v165 = v204;
          CRRegister.wrappedValue.getter();
          v198 = type metadata accessor for CRLBoardCRDTData;
          sub_10003D87C(v163, type metadata accessor for CRLBoardCRDTData);
          v166 = (*&v158[v159] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
          v167 = *v166;
          v168 = v166[1];

          v169 = v210;
          sub_10084BD4C(v165, v167, v168, v210);

          v170 = v203;
          v193(v165, v169, v203);
          v199 = type metadata accessor for CRLBoardIdentifier;
          sub_10003D87C(v169, type metadata accessor for CRLBoardIdentifier);
          v171 = UUID.uuidString.getter();
          v173 = v172;
          v192(v165, v170);
          v174 = v195;
          v157[7] = &type metadata for String;
          v157[8] = v174;
          v157[4] = v171;
          v157[5] = v173;
          v175 = Date.description.getter();
          v157[12] = &type metadata for String;
          v157[13] = v174;
          v157[9] = v175;
          v157[10] = v176;
          v177 = static os_log_type_t.info.getter();
          sub_100005404(v211, &_mh_execute_header, v177, "Updating activity time for %{public}@ for tearDown to %{public}@", 64, 2, v157);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          os_unfair_lock_lock(*(v153 + 16));
          *(v214 + 88) = 0;
          os_unfair_lock_unlock(*(v153 + 16));
          v178 = *(v213 + v209);
          v179 = *&v178[OBJC_IVAR____TtC8Freeform8CRLBoard_store];
          v180 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
          v181 = *&v178[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
          v182 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          v183 = v212;
          sub_10005006C(v181 + v182, v212, v197);
          v184 = v179;
          v185 = v178;
          CRRegister.wrappedValue.getter();
          sub_10003D87C(v183, v198);
          v186 = (*&v178[v180] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
          v187 = *v186;
          v188 = v186[1];

          sub_10084BD4C(v165, v187, v188, v169);

          v189 = v206;
          sub_100E133C8(v169, v206, 0, 0);

          v190 = v169;
          v152 = v214;
          v191 = v199;
          sub_10003D87C(v190, v199);
          (*(v207 + 8))(v189, v200);
          sub_10003D87C(v205, v191);
        }

        else
        {
          sub_10003D87C(v143, type metadata accessor for CRLBoardIdentifier);
        }

        v152[65] = 1;
        return;
      }

      while (1)
      {
        AnyCancellable.cancel()();

        v86 = v29;
        v27 = v23;
        if ((v84 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_23:
        v93 = __CocoaSet.Iterator.next()();
        if (v93)
        {
          v215 = v93;
          type metadata accessor for AnyCancellable();
          swift_dynamicCast();
          v24 = v216;
          v29 = v86;
          v23 = v27;
          if (v216)
          {
            continue;
          }
        }

        goto LABEL_27;
      }
    }

    while (1)
    {
      v29 = (v91 + 1);
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v29 >= ((v87 + 64) >> 6))
      {
        goto LABEL_27;
      }

      v92 = v85[v29];
      ++v91;
      if (v92)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v214 = objc_opt_self();
  LODWORD(v23) = [v214 _atomicIncrementAssertCount];
  v217[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v217);
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v25 lastPathComponent];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1019F20A0 != -1)
  {
LABEL_44:
    swift_once();
  }

  v30 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10146CA70;
  *(v31 + 56) = &type metadata for Int32;
  *(v31 + 64) = &protocol witness table for Int32;
  *(v31 + 32) = v23;
  v32 = sub_100006370(0, &qword_1019F4D30);
  *(v31 + 96) = v32;
  v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v31 + 104) = v33;
  *(v31 + 72) = v24;
  *(v31 + 136) = &type metadata for String;
  v34 = sub_1000053B0();
  *(v31 + 112) = v27;
  *(v31 + 120) = v29;
  *(v31 + 176) = &type metadata for UInt;
  *(v31 + 184) = &protocol witness table for UInt;
  *(v31 + 144) = v34;
  *(v31 + 152) = 2612;
  v35 = v217[0];
  *(v31 + 216) = v32;
  *(v31 + 224) = v33;
  *(v31 + 192) = v35;
  v36 = v24;
  v37 = v35;
  v38 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v31);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v39, "Duplicate call to tearDown()", 28, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v40[4] = 0;
  v40[5] = 0;
  v41 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v44 = String._bridgeToObjectiveC()();

  [v214 handleFailureInFunction:v42 file:v43 lineNumber:2612 isFatal:0 format:v44 args:v41];
}

uint64_t sub_1010DE9D8()
{
  v1 = *(*(*(*(v0[2] + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_store) + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_assetUploadTracker);
  v0[3] = v1;
  v2 = *(v1 + 16);
  v0[4] = v2;

  return _swift_task_switch(sub_1010DEA84, v2, 0);
}

uint64_t sub_1010DEA84()
{
  [*(v0[4] + 112) removeObject:v0[2]];

  v1 = v0[1];

  return v1();
}

id *sub_1010DEAFC()
{
  v1 = v0;
  if ((*(v0 + 65) & 1) == 0 && *(v0 + 64) == 1)
  {
    v27 = objc_opt_self();
    v2 = [v27 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 2665;
    v14 = v28;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "Board info deallocated without calling tearDown()!", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v21 file:v22 lineNumber:2665 isFatal:0 format:v23 args:v20];
  }

  swift_unknownObjectRelease();

  v24 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo__unsafe_lastActivityTime;
  v25 = type metadata accessor for Date();
  (*(*(v25 - 8) + 8))(v1 + v24, v25);
  swift_unknownObjectRelease();
  sub_101105948(*(v1 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession));
  sub_10000CAAC(v1 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_onlyShowJoinLeavePlacardsAfterThisTime, &qword_101A0A320);

  return v1;
}

uint64_t sub_1010DEFD0()
{
  sub_1010DEAFC();

  return swift_deallocClassInstance();
}

uint64_t sub_1010DF030@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = [v2 objectForKey:@"CRLCloudQuotaExceededAlertLastShownDate"];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    v4 = type metadata accessor for Date();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_10000CAAC(v10, &unk_1019F4D00);
    v7 = type metadata accessor for Date();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }
}

uint64_t sub_1010DF194()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *(*(v0 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v14 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v15 = *&v13[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v15 + v16, v3, type metadata accessor for CRLBoardCRDTData);
  v17 = v13;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  v18 = (*&v13[v14] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v19 = *v18;
  v20 = v18[1];

  sub_10084BD4C(v6, v19, v20, v9);

  v34 = UUID.uuidString.getter();
  v35 = v21;

  v22._countAndFlagsBits = 58;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);

  v23 = v34;
  v24 = v35;
  v25 = &v9[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v26 = *v25;
  v27 = v25[1];
  v34 = v23;
  v35 = v24;

  v28._countAndFlagsBits = v26;
  v28._object = v27;
  String.append(_:)(v28);

  v29 = v34;
  v30 = v35;
  sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
  v34 = v10;
  v35 = v12;

  v31._countAndFlagsBits = v29;
  v31._object = v30;
  String.append(_:)(v31);

  return v34;
}

uint64_t sub_1010DF47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a5;
  v5[21] = type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[23] = v6;
  *v6 = v5;
  v6[1] = sub_1010DF52C;

  return sub_1010DF824();
}

uint64_t sub_1010DF52C()
{
  *(*v1 + 192) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1010DF688;
  }

  else
  {
    v4 = sub_101107D14;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1010DF688()
{

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Failed to prompt cloud quota exceeded for board with UUID %@, error %@", 70, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1010DF824()
{
  v1[2] = v0;
  sub_1005B981C(&qword_101A0A320);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for Date();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010DF968, v4, v3);
}

void sub_1010DF968()
{

  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  sub_1010DF194();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 BOOLForKey:v3];

  if ((v4 & 1) == 0)
  {
    v5 = v0[5];
    v6 = v0[6];
    v7 = v0[4];
    sub_1010DF030(v7);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      sub_10000CAAC(v0[4], &qword_101A0A320);
      goto LABEL_5;
    }

    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    v11 = v0[6];
    (*(v11 + 32))(v9, v0[4], v10);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v13 = v12;
    v14 = *(v11 + 8);
    v14(v8, v10);
    v14(v9, v10);
    if (v13 >= 900.0)
    {
LABEL_5:
      v15 = v0[5];
      v16 = v0[6];
      v17 = v0[2];
      v18 = v0[3];
      Date.init()();
      (*(v16 + 56))(v18, 0, 1, v15);
      sub_101106190(v18);
      v19 = [v1 standardUserDefaults];
      sub_1010DF194();
      v20 = String._bridgeToObjectiveC()();

      [v19 setBool:1 forKey:v20];

      v21 = [*(v17 + 24) allObjects];
      type metadata accessor for CRLiOSBoardViewController();
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v22 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
        if (v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
LABEL_7:
          if (v23 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v23; ++i)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v25 = *(v22 + 8 * i + 32);
            }

            v26 = v25;
            sub_10102B848();
          }
        }
      }
    }
  }

  v27 = v0[1];

  v27();
}

uint64_t sub_1010DFC80()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  if (*(v0 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_hasPausedIncomingDatabaseUpdate) == 1)
  {
    *(v0 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_hasPausedIncomingDatabaseUpdate) = 0;
    sub_1010DFEF8();
  }

  v4 = (v0 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession);
  result = swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[1];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v6;
    v11[5] = v9;
    v11[6] = v7;
    v11[7] = v8;
    sub_1011066F0(v6);

    sub_100CA64C8(0, 0, v3, &unk_1014C5FA8, v11);

    return sub_10000CAAC(v3, &qword_1019FB750);
  }

  return result;
}

uint64_t sub_1010DFE70()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_incomingSuspendedCache;
  *v1 = 0;
  *(v1 + 8) = _swiftEmptySetSingleton;

  sub_10107A464();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010DFF20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = a1;
  v37 = a2;
  v4 = v3;
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v38 = &v35 - v6;
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = *(*(v4 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v20 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v21 = *&v19[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v22 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v21 + v22, v9, type metadata accessor for CRLBoardCRDTData);
  v23 = v19;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v9, type metadata accessor for CRLBoardCRDTData);
  v24 = (*&v19[v20] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v25 = *v24;
  v26 = v24[1];

  sub_10084BD4C(v12, v25, v26, v18);

  v27 = *v36;
  if (*(v4 + *v36))
  {

    Task.cancel()();
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = v38;
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  sub_10005006C(v18, v15, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for MainActor();

  v30 = static MainActor.shared.getter();
  v31 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = &protocol witness table for MainActor;
  v32[4] = v4;
  sub_100025738(v15, v32 + v31, type metadata accessor for CRLBoardIdentifier);
  v33 = sub_10064191C(0, 0, v29, v39, v32);
  sub_10003D87C(v18, type metadata accessor for CRLBoardIdentifier);
  *(v4 + v27) = v33;
}

uint64_t sub_1010E030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a5;
  v5[21] = type metadata accessor for MainActor();
  v5[22] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[23] = v6;
  *v6 = v5;
  v6[1] = sub_1010E03BC;

  return sub_1010E0714();
}

uint64_t sub_1010E03BC()
{
  *(*v1 + 192) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1010E0578;
  }

  else
  {
    v4 = sub_1010E0518;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1010E0518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010E0578()
{

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v9, "Failed to reload a board with UUID %@, error %@", 47, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1010E0714()
{
  v1[29] = v0;
  type metadata accessor for CRLBoardCRDTData(0);
  v1[30] = swift_task_alloc();
  type metadata accessor for UUID();
  v1[31] = swift_task_alloc();
  v1[32] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[36] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[37] = v3;
  v1[38] = v2;

  return _swift_task_switch(sub_1010E0874, v3, v2);
}

uint64_t sub_1010E0874(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3[29] + 16);
  v3[39] = v4;
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator);
  if (!v5)
  {
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *(v5 + 40);
  if (*(v5 + 32))
  {
    if (v6 <= 0)
    {
LABEL_11:
      v9 = *(v4 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v3[40] = v9;
      v10 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
      if (*&v9[OBJC_IVAR____TtC8Freeform8CRLBoard_lastSaveChangesTime] > *(*&v9[OBJC_IVAR____TtC8Freeform8CRLBoard_store] + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_lastFetchResultsTime))
      {

        goto LABEL_8;
      }

      v11 = v3[35];
      v12 = v3[31];
      v13 = v3[32];
      v14 = v3[30];
      v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v3[41] = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v16 = *&v9[v15];
      v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v16 + v17, v14, type metadata accessor for CRLBoardCRDTData);
      v18 = v9;
      v3[42] = sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v14, type metadata accessor for CRLBoardCRDTData);
      v19 = (*&v9[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v20 = *v19;
      v21 = v19[1];

      sub_10084BD4C(v12, v20, v21, v11);
      sub_1005B981C(&unk_101A19BD0);
      v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v23 = swift_allocObject();
      v3[43] = v23;
      *(v23 + 16) = xmmword_10146C6B0;
      sub_100025738(v11, v23 + v22, type metadata accessor for CRLBoardIdentifier);
      v3[44] = *&v9[v10];
      a1 = sub_1010E0B78;
      a2 = 0;
      a3 = 0;

      return _swift_task_switch(a1, a2, a3);
    }
  }

  else if (v6 <= 0)
  {
    swift_beginAccess();
    if (!*(*(v5 + 64) + 16))
    {
      goto LABEL_11;
    }
  }

  *(v3[29] + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_hasPausedIncomingDatabaseUpdate) = 1;
LABEL_8:

  v7 = v3[1];

  return v7();
}

uint64_t sub_1010E0B78()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = swift_task_alloc();
  v0[45] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = 1;
  *(v3 + 40) = 1;
  v4 = swift_task_alloc();
  v0[46] = v4;
  v5 = type metadata accessor for CRLBoardDatabaseFetchResult();
  *v4 = v0;
  v4[1] = sub_1010E0C80;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 28, 0, 0, 0x3A5F286863746566, 0xE900000000000029, sub_1007987F4, v3, v5);
}

uint64_t sub_1010E0C80()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1010E138C;
  }

  else
  {

    v2 = sub_1010E0DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010E0DC8()
{
  receiver = v0[24].receiver;
  super_class = v0[20].super_class;
  v3 = v0[20].receiver;
  p_super_class = &v0[17];
  v4 = v0[17].receiver;
  v6 = v0[15].receiver;
  v5 = v0[15].super_class;
  v7 = *(super_class + v3);
  v8 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v7 + v8, v6, type metadata accessor for CRLBoardCRDTData);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v6, type metadata accessor for CRLBoardCRDTData);
  v9 = (*(super_class + v3) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v10 = *v9;
  v11 = v9[1];

  sub_10084BD4C(v5, v10, v11, v4);
  swift_beginAccess();
  if (*(receiver[3] + 16))
  {
    v12 = &v0[17];
    v13 = *p_super_class;

    sub_1000486F0(v13);
    if ((v14 & 1) == 0)
    {
LABEL_13:

      goto LABEL_14;
    }

    v15 = v0[24].receiver;
    v16 = v0[20].super_class;
    v17 = v0[20].receiver;
    p_super_class = &v0[16].super_class;
    v18 = v0[17].receiver;
    v57 = v0[16].super_class;
    v20 = v0[15].receiver;
    v19 = v0[15].super_class;

    sub_10003D87C(v18, type metadata accessor for CRLBoardIdentifier);

    v21 = *(v16 + v17);
    v22 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v21 + v22, v20, type metadata accessor for CRLBoardCRDTData);
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v20, type metadata accessor for CRLBoardCRDTData);
    v23 = (*(v16 + v17) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v24 = *v23;
    v25 = v23[1];

    sub_10084BD4C(v19, v24, v25, v57);
    swift_beginAccess();
    if (*(v15[4] + 16))
    {
      v12 = &v0[16].super_class;
      v26 = *p_super_class;

      sub_1000486F0(v26);
      if (v27)
      {
        v28 = v0[24].receiver;
        v29 = v0[19].super_class;
        v30 = v0[16].super_class;

        sub_10003D87C(v30, type metadata accessor for CRLBoardIdentifier);

        v31 = type metadata accessor for CRLCommandMergeDatabaseChanges();
        v32 = objc_allocWithZone(v31);
        *&v32[OBJC_IVAR____TtC8Freeform30CRLCommandMergeDatabaseChanges_fetchResult] = v28;
        v0[13].receiver = v32;
        v0[13].super_class = v31;

        v33 = objc_msgSendSuper2(v0 + 13, "init");
        v0[24].super_class = v33;
        v34 = *(v29 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
        v35 = OBJC_IVAR____TtC8Freeform20CRLCommandController_nonUserCommandQueue;
        swift_beginAccess();
        v36 = *&v34[v35];
        v37 = v34;
        v58 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v34[v35] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = sub_100B36334(0, v36[2] + 1, 1, v36);
          *&v34[v35] = v36;
        }

        v40 = v36[2];
        v39 = v36[3];
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v56 = sub_100B36334((v39 > 1), v40 + 1, 1, v36);
          v41 = v40 + 1;
          v36 = v56;
        }

        v42 = v0[20].super_class;
        v43 = v0[20].receiver;
        v60 = v0[17].super_class;
        v45 = v0[15].receiver;
        v44 = v0[15].super_class;
        v36[2] = v41;
        v46 = &v36[2 * v40];
        v46[4] = v58;
        *(v46 + 40) = 2;
        *&v34[v35] = v36;
        swift_endAccess();
        sub_10088DA18();

        v47 = *(v42 + v43);
        v48 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
        swift_beginAccess();
        sub_10005006C(v47 + v48, v45, type metadata accessor for CRLBoardCRDTData);
        CRRegister.wrappedValue.getter();
        sub_10003D87C(v45, type metadata accessor for CRLBoardCRDTData);
        v49 = (*(v42 + v43) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
        v51 = *v49;
        v50 = v49[1];

        sub_10084BD4C(v44, v51, v50, v60);
        v52 = swift_task_alloc();
        v0[25].receiver = v52;
        *v52 = v0;
        v52[1] = sub_1010E14AC;

        return sub_10092BF84();
      }

      goto LABEL_13;
    }
  }

  v12 = p_super_class;
LABEL_14:
  v54 = v0[20].receiver;
  sub_10003D87C(*v12, type metadata accessor for CRLBoardIdentifier);

  v55 = v0->super_class;

  return v55();
}

uint64_t sub_1010E138C()
{

  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return _swift_task_switch(sub_1010E13FC, v1, v2);
}

uint64_t sub_1010E13FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010E14AC()
{
  v1 = *v0;
  v2 = *(*v0 + 280);

  sub_10003D87C(v2, type metadata accessor for CRLBoardIdentifier);
  v3 = *(v1 + 304);
  v4 = *(v1 + 296);

  return _swift_task_switch(sub_1010E1604, v4, v3);
}

uint64_t sub_1010E1604()
{
  v1 = v0[49];
  v2 = v0[40];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1010E16B8(uint64_t a1)
{
  v2[146] = v1;
  v2[145] = a1;
  type metadata accessor for CRLBoardCRDTData(0);
  v2[147] = swift_task_alloc();
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[148] = v3;
  v2[149] = *(v3 + 64);
  v2[150] = swift_task_alloc();
  v2[151] = swift_task_alloc();
  v2[152] = type metadata accessor for CRLCollaboratorCursorColor();
  v2[153] = swift_task_alloc();
  v2[154] = type metadata accessor for CRLRealTimeEnter(0);
  v2[155] = swift_task_alloc();
  v2[156] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[157] = v4;
  v2[158] = *(v4 - 8);
  v2[159] = swift_task_alloc();
  v2[160] = swift_task_alloc();
  v2[161] = swift_task_alloc();
  v5 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v2[162] = v5;
  v2[163] = *(v5 - 8);
  v2[164] = swift_task_alloc();
  v2[165] = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0);
  v2[166] = swift_task_alloc();
  v2[167] = swift_task_alloc();
  v2[168] = swift_task_alloc();
  v2[169] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[170] = swift_task_alloc();
  v2[171] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[172] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[173] = v7;
  v2[174] = v6;

  return _swift_task_switch(sub_1010E19CC, v7, v6);
}

void sub_1010E19CC()
{
  v53 = v0;
  v1 = v0[146];
  v2 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
  v0[175] = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession;
  v3 = (v1 + v2);
  v4 = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    v6 = objc_opt_self();

    v51 = v6;
    v7 = [v6 _atomicIncrementAssertCount];
    v52 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v52);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v50 = v5;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10146CA70;
    *(v15 + 56) = &type metadata for Int32;
    *(v15 + 64) = &protocol witness table for Int32;
    *(v15 + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(v15 + 96) = v16;
    v17 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v15 + 104) = v17;
    *(v15 + 72) = v8;
    *(v15 + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(v15 + 112) = v11;
    *(v15 + 120) = v13;
    *(v15 + 176) = &type metadata for UInt;
    *(v15 + 184) = &protocol witness table for UInt;
    *(v15 + 144) = v18;
    *(v15 + 152) = 2836;
    v19 = v52;
    *(v15 + 216) = v16;
    *(v15 + 224) = v17;
    *(v15 + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v15);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v51 handleFailureInFunction:v26 file:v27 lineNumber:2836 isFatal:0 format:v28 args:v25];

    v4 = sub_101105948(v50);
  }

  v29 = v0[145];
  v30 = *(*v29 + 192);
  v31 = *v29 + 192;
  v0[176] = v30;
  v0[177] = v31 & 0xFFFFFFFFFFFFLL | 0xEE51000000000000;
  (v30)(v4);
  if (*(*sub_100020E58(v0 + 93, v0[96]) + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe))
  {
    goto LABEL_6;
  }

  v42 = *(*(*(*(v0[146] + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v42)
  {

    v43 = v42;
    [v43 copy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();

    sub_100006370(0, &qword_1019F52C0);
    if (swift_dynamicCast())
    {
      v44 = v0[142];
      v45 = [v44 owner];

      v46 = [v45 userIdentity];
      v47 = [v46 userRecordID];

      if (v47)
      {

LABEL_6:
        sub_100005070((v0 + 93));
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v32 = static OS_os_log.realTimeSync;
        v0[178] = static OS_os_log.realTimeSync;
        v0[179] = sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v30();
        v34 = *(*sub_100020E58(v0 + 98, v0[101]) + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe);
        sub_100005070((v0 + 98));
        v35 = sub_1000053B0();
        v36 = 28494;
        if (v34)
        {
          v36 = 7562585;
        }

        v37 = 0xE200000000000000;
        if (v34)
        {
          v37 = 0xE300000000000000;
        }

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = v35;
        *(inited + 32) = v36;
        *(inited + 40) = v37;
        v38 = static os_log_type_t.debug.getter();
        sub_100005404(v32, &_mh_execute_header, v38, "enterRealTimeSync() is MeToME: %@", 33, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        v39 = [objc_opt_self() sharedApplication];
        v40 = [v39 delegate];

        if (v40)
        {
          type metadata accessor for CRLiOSAppDelegate();
          v0[180] = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

          swift_unknownObjectRelease();
          v41 = swift_task_alloc();
          v0[181] = v41;
          *v41 = v0;
          v41[1] = sub_1010E2314;

          sub_100C5CB40();
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }
  }

  sub_100005070((v0 + 93));
  sub_1006A3EB0();
  swift_allocError();
  *v48 = 10;
  swift_willThrow();

  v49 = v0[1];

  v49();
}

uint64_t sub_1010E2314()
{
  v2 = *v1;
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v3 = *(v2 + 1392);
    v4 = *(v2 + 1384);
    v5 = sub_1010E461C;
  }

  else
  {

    v3 = *(v2 + 1392);
    v4 = *(v2 + 1384);
    v5 = sub_1010E2438;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010E2438()
{
  v206 = v0;
  v1 = *(v0 + 1368);
  (*(v0 + 1408))();
  sub_100020E58((v0 + 824), *(v0 + 848));
  sub_100CB6748(v1);
  v2 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v3 = (v1 + *(v2 + 20));
  v5 = *v3;
  v4 = v3[1];

  sub_10003D87C(v1, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100005070(v0 + 824);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(v0 + 1144) = &type metadata for String;
  sub_1005B981C(&qword_101A2AD70);
  String.init<A>(describing:)();
  v7 = String._bridgeToObjectiveC()();

  v198 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v198;
  v8 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v7;
  v202 = v0;
  v203 = inited + 32;
  v9 = inited;
  v196 = v8;
  *(inited + 64) = v8;
  v200 = v2;
  if (v5 || v4 != 0xE000000000000000)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

LABEL_34:
      v50 = *(v0 + 1360);
      v51 = *(v0 + 1168);
      (*(v0 + 1408))(v49);
      sub_100020E58((v0 + 864), *(v0 + 888));
      sub_100CB6748(v50);
      result = sub_100005070(v0 + 864);
      v53 = *(v51 + 16);
      *(v0 + 1464) = v53;
      v54 = *&v53[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator];
      if (v54)
      {
        v55 = *(v0 + 1368);
        v56 = *(v0 + 1304);
        v192 = *(v0 + 1352);
        v194 = *(v0 + 1296);
        v57 = *(v0 + 1160);
        v58 = (*(v0 + 1168) + *(v0 + 1400));
        v59 = sub_10005006C(*(v0 + 1360), v55, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        v60 = (*(*v57 + 208))(v59);
        type metadata accessor for CRLBoardRealTimeChangeCoordinator(0);
        v61 = swift_allocObject();
        v62 = v53;

        v63 = sub_1010FAA00(v62, v54, v55, v60 & 1, v61);
        *(v0 + 1472) = v63;

        v64 = [objc_opt_self() standardUserDefaults];
        v65 = [v64 BOOLForKey:@"CRLEncryptSharePlayData"];

        type metadata accessor for CRLBoardRealTimeSyncDataSource();
        v66 = swift_allocObject();

        v68 = sub_1010FA5F4(v67, v65, v66);
        v202[185] = v68;
        v69 = *v58;
        *v58 = v57;
        v58[1] = v68;
        v58[2] = v63;
        v58[3] = _swiftEmptySetSingleton;
        v26 = v62;

        v27 = v68;
        sub_101105948(v69);
        v62[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_realTimeSessionUsesEncryption] = *(v68 + 144);
        v70 = v63 + OBJC_IVAR____TtC8Freeform33CRLBoardRealTimeChangeCoordinator_globallyScopedBoardIdentifier + v200[5];
        sub_100EC0DE8(*v70, *(v70 + 8), v57 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID);
        v71 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
        v202[186] = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
        v203 = v71;
        v72 = *&v62[v71];
        v73 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
        swift_beginAccess();
        sub_10000BE14(v72 + v73, v192, &qword_101A08DF0);
        v74 = v194;
        v29 = v202;
        v195 = *(v56 + 48);
        v75 = v195(v192, 1, v74);
        v76 = v202[169];
        if (v75)
        {
          sub_10000CAAC(v76, &qword_101A08DF0);
          v28 = v203;
        }

        else
        {
          v77 = v202[165];
          v78 = v202[169];
          sub_10005006C(v76, v77, type metadata accessor for CRLBoard.RealTimeSessionInfo);
          sub_10000CAAC(v78, &qword_101A08DF0);

          sub_10003D87C(v77, type metadata accessor for CRLBoard.RealTimeSessionInfo);
          v79 = [objc_opt_self() defaultCenter];
          if (qword_1019F15A8 != -1)
          {
            swift_once();
          }

          [v79 addObserver:v202[146] selector:? name:? object:?];

          v28 = v203;
          if (qword_1019F21C0 != -1)
          {
            swift_once();
          }

          v80 = static OS_os_log.crlJoinLeave;
          v81 = static os_log_type_t.default.getter();
          sub_100005404(v80, &_mh_execute_header, v81, "CRLBoardLibrary now observing CRLBoardRealTimeParticipantsDidChange notifications", 81, 2, _swiftEmptyArrayStorage);
        }

        v82 = *(*(*(v26 + v28) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
        if (!v82)
        {
          goto LABEL_53;
        }

        v83 = v82;
        [v83 copy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();

        sub_100006370(0, &qword_1019F52C0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_53;
        }

        v36 = v202[144];
        v84 = [v36 currentUserParticipant];
        if (!v84)
        {
          goto LABEL_52;
        }

        v85 = v84;
        v191 = v36;
        v86 = v202[167];
        v87 = v202[162];
        v88 = *(v26 + v28);
        v89 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
        swift_beginAccess();
        sub_10000BE14(v88 + v89, v86, &qword_101A08DF0);
        if (v195(v86, 1, v87) == 1)
        {
          v188 = v27;
          v190 = v85;
          v185 = objc_opt_self();
          v90 = [v185 _atomicIncrementAssertCount];
          v205[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v205);
          StaticString.description.getter();
          v91 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v92 = String._bridgeToObjectiveC()();

          v93 = [v92 lastPathComponent];

          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v97 = static OS_os_log.crlAssert;
          v98 = swift_initStackObject();
          *(v98 + 16) = xmmword_10146CA70;
          *(v98 + 56) = &type metadata for Int32;
          *(v98 + 64) = &protocol witness table for Int32;
          *(v98 + 32) = v90;
          *(v98 + 96) = v198;
          *(v98 + 104) = v196;
          *(v98 + 72) = v91;
          *(v98 + 136) = &type metadata for String;
          v99 = sub_1000053B0();
          *(v98 + 112) = v94;
          *(v98 + 120) = v96;
          *(v98 + 176) = &type metadata for UInt;
          *(v98 + 184) = &protocol witness table for UInt;
          *(v98 + 144) = v99;
          *(v98 + 152) = 2890;
          v100 = v205[0];
          *(v98 + 216) = v198;
          *(v98 + 224) = v196;
          *(v98 + 192) = v100;
          v101 = v91;
          v102 = v100;
          v103 = static os_log_type_t.error.getter();
          sub_100005404(v97, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v104 = static os_log_type_t.error.getter();
          v105 = v97;
          v29 = v202;
          sub_100005404(v105, &_mh_execute_header, v104, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v106 = swift_allocObject();
          v106[2] = 8;
          v106[3] = 0;
          v106[4] = 0;
          v106[5] = 0;
          v107 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v108 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v109 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v110 = String._bridgeToObjectiveC()();

          [v185 handleFailureInFunction:v108 file:v109 lineNumber:2890 isFatal:0 format:v110 args:v107];

          v27 = v188;
          v28 = v203;
          v85 = v190;
        }

        v111 = v29[168];
        v112 = v29[162];
        sub_10003DFF8(v29[167], v111, &qword_101A08DF0);
        if (v195(v111, 1, v112) == 1)
        {
          v113 = v29[168];

          sub_10000CAAC(v113, &qword_101A08DF0);
          goto LABEL_53;
        }

        v133 = v29[182];
        v134 = v29[161];
        sub_100025738(v29[168], v29[164], type metadata accessor for CRLBoard.RealTimeSessionInfo);
        sub_10092DA60(v134);
        if (v133)
        {
          v135 = v29[164];
          sub_10003D87C(v29[170], type metadata accessor for CRLGloballyScopedBoardIdentifier);

LABEL_72:
          sub_10003D87C(v135, type metadata accessor for CRLBoard.RealTimeSessionInfo);

          v178 = v29[1];

          return v178();
        }

        v187 = v27;
        v189 = v85;
        v136 = v29[166];
        v137 = v29[162];
        v138 = *(v26 + v28);
        v139 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
        swift_beginAccess();
        sub_10000BE14(v138 + v139, v136, &qword_101A08DF0);
        v140 = v195(v136, 1, v137);
        v141 = v29[161];
        if (v140)
        {
          v142 = v29[170];
          v143 = v29[166];
          v135 = v29[164];
          v144 = v29[158];
          v145 = v29[157];

          sub_10000CAAC(v143, &qword_101A08DF0);
          sub_1006355A8();
          swift_allocError();
          *v146 = 1;
          swift_willThrow();

          (*(v144 + 8))(v141, v145);
          v147 = v142;
LABEL_71:
          sub_10003D87C(v147, type metadata accessor for CRLGloballyScopedBoardIdentifier);
          goto LABEL_72;
        }

        v186 = v26;
        v148 = v29[166];
        v149 = v29[165];
        v150 = v29[164];
        v151 = v29[162];
        v152 = v29[160];
        v153 = v29[158];
        v197 = v29[157];
        sub_10005006C(v148, v149, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        sub_10000CAAC(v148, &qword_101A08DF0);

        sub_10003D87C(v149, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        v21 = v189;
        v200 = sub_1007DA8A4(v189, v141, v150 + *(v151 + 28), 1, 1);

        v193 = *v150;
        v154 = [v189 userIdentity];
        v155 = v141;
        v156 = *(v153 + 16);
        v156(v152, v155, v197);
        Date.timeIntervalSince1970.getter();
        if (!v154)
        {
LABEL_67:
          v204 = v29[170];
          v135 = v29[164];
          v167 = v29[161];
          v168 = v29[160];
          v169 = v29[158];
          v170 = v29[157];

          sub_1006B305C();
          swift_allocError();
          *v171 = 0;
          swift_willThrow();

          v172 = *(v169 + 8);
          v172(v168, v170);
          v172(v167, v170);
          v147 = v204;
          goto LABEL_71;
        }

        v158 = v157;
        v159 = v29[160];
        v160 = v29[158];
        v161 = v29[157];
        v162 = v29[156];
        v163 = v29[155];
        v164 = v29[154];
        *v163 = v154;
        (*(v160 + 32))(&v163[v164[5]], v159, v161);
        *&v163[v164[6]] = v158;
        v163[v164[7]] = 1;
        sub_100025738(v163, v162, type metadata accessor for CRLRealTimeEnter);
        v165 = sub_1009DC47C();
        v28 = v165;
        v26 = v166;
        v173 = v29[161];
        v174 = v29[157];
        v175 = v29[153];
        sub_100024E98(v165, v166);
        sub_1010FA43C(2, v28, v26, v193);
        sub_10002640C(v28, v26);
        result = (v156)(v175, v173, v174);
        v176 = *(v200 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex);
        if ((v176 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!HIDWORD(v176))
        {
          v29 = v202;
          v177 = v202[158];
          *(v202[153] + *(v202[152] + 20)) = v176;
          v30 = sub_100C9122C();
          v21 = (v177 + 8);
LABEL_77:
          v199 = v29[164];
          v179 = v29[161];
          v180 = v29[157];
          v181 = v29[156];
          v182 = v29[153];
          v183 = v30;
          v184 = v31;
          sub_1010FA43C(4, v30, v31, v193);

          sub_10002640C(v183, v184);
          sub_10002640C(v28, v26);
          sub_10003D87C(v182, type metadata accessor for CRLCollaboratorCursorColor);
          sub_10003D87C(v181, type metadata accessor for CRLRealTimeEnter);
          (*v21)(v179, v180);
          sub_10003D87C(v199, type metadata accessor for CRLBoard.RealTimeSessionInfo);
          v26 = v186;
          v27 = v187;
          v28 = v203;
          goto LABEL_53;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v193 = objc_opt_self();
  v11 = [v193 _atomicIncrementAssertCount];
  v205[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v205);
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  *(v19 + 96) = v198;
  *(v19 + 104) = v196;
  *(v19 + 72) = v12;
  *(v19 + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v20;
  *(v19 + 152) = 2865;
  v21 = v205[0];
  *(v19 + 216) = v198;
  *(v19 + 224) = v196;
  *(v19 + 192) = v21;
  v22 = v12;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v25, "expected inequality between two values of type %{public}@", 57, 2, v9);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v27 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v28 = *(v9 + 16);
  if (!v28)
  {
LABEL_32:
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    [v193 handleFailureInFunction:v46 file:v47 lineNumber:2865 isFatal:0 format:v48 args:v45];

    goto LABEL_34;
  }

  v29 = 0;
  while (1)
  {
    sub_100020E58((v203 + 40 * v29), *(v203 + 40 * v29 + 24));
    v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v32 = *v27;
    v33 = *(v30 + 16);
    v34 = __OFADD__(*v27, v33);
    v35 = *v27 + v33;
    if (v34)
    {
      __break(1u);
      goto LABEL_67;
    }

    v36 = v26[4];
    if (v36 >= v35)
    {
      goto LABEL_24;
    }

    if (v36 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v37 = v26[5];
    if (2 * v36 > v35)
    {
      v35 = 2 * v36;
    }

    v26[4] = v35;
    if ((v35 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_76;
    }

    v21 = v30;
    v38 = swift_slowAlloc();
    v39 = v38;
    v26[5] = v38;
    if (v37)
    {
      if (v38 != v37 || v38 >= &v37[8 * v32])
      {
        memmove(v38, v37, 8 * v32);
      }

      v36 = v26;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v30 = v21;
LABEL_24:
      v39 = v26[5];
      if (!v39)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    v30 = v21;
    if (!v39)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_25:
    v41 = *(v30 + 16);
    if (v41)
    {
      break;
    }

LABEL_9:

    v29 = (v29 + 1);
    if (v29 == v28)
    {
      goto LABEL_32;
    }
  }

  v42 = (v30 + 32);
  v43 = *v27;
  while (1)
  {
    v44 = *v42++;
    *&v39[8 * v43] = v44;
    v43 = *v27 + 1;
    if (__OFADD__(*v27, 1))
    {
      break;
    }

    *v27 = v43;
    if (!--v41)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_52:

LABEL_53:
  v114 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers;
  if (([*(v26 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers) containsObject:v29[146]] & 1) == 0)
  {
    [*(v26 + v114) addObject:v29[146]];
  }

  v115 = v29[159];
  v116 = v29[151];
  v117 = v29[147];
  v118 = *(v26 + v28);
  v119 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v120 = *&v118[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v121 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v120 + v121, v117, type metadata accessor for CRLBoardCRDTData);
  v122 = v118;
  v29[187] = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v117, type metadata accessor for CRLBoardCRDTData);
  v123 = (*&v118[v119] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v124 = *v123;
  v125 = v123[1];

  sub_10084BD4C(v115, v124, v125, v116);

  v126 = sub_100EFF9E4(v116);
  sub_10003D87C(v116, type metadata accessor for CRLBoardIdentifier);
  type metadata accessor for CRLRealTimeDataEncryptor();
  v127 = swift_allocObject();
  v29[188] = v127;
  v127[4] = 0;
  if (qword_1019F1588 != -1)
  {
    swift_once();
  }

  v128 = v29[145];
  v129 = qword_101AD6518;
  v127[2] = v126;
  v127[3] = v129;
  v130 = *(*v128 + 240);

  v131 = v129;
  v201 = (v130 + *v130);
  v132 = swift_task_alloc();
  v29[189] = v132;
  *v132 = v29;
  v132[1] = sub_1010E3E6C;

  return (v201)(v27, &off_1018AF300, v127);
}

uint64_t sub_1010E3E6C()
{
  v1 = *v0;

  v2 = *(v1 + 1392);
  v3 = *(v1 + 1384);

  return _swift_task_switch(sub_1010E3FB0, v3, v2);
}

uint64_t sub_1010E3FB0()
{
  v1 = v0[186];
  v2 = v0[183];
  v3 = v0[159];
  v4 = v0[151];
  v5 = v0[147];

  v6 = *(v2 + v1);
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v6[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v8 + v9, v5, type metadata accessor for CRLBoardCRDTData);
  v10 = v6;
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v5, type metadata accessor for CRLBoardCRDTData);
  v11 = (*&v6[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v12 = *v11;
  v13 = v11[1];

  sub_10084BD4C(v3, v12, v13, v4);

  v47 = [objc_opt_self() defaultCenter];
  if (qword_1019F2528 != -1)
  {
    swift_once();
  }

  v44 = v0[186];
  v45 = v0[183];
  v50 = v0[178];
  v51 = v0[170];
  v14 = v0[159];
  v15 = v0[158];
  v48 = v0[157];
  v16 = v0[151];
  v49 = v16;
  v17 = v0[150];
  v18 = v0[148];
  v42 = *(*(v45 + v44) + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  v43 = qword_101AD8570;
  v46 = v0[147];
  v19 = v0[146];
  v20 = swift_allocObject();
  swift_weakInit();
  sub_10005006C(v16, v17, type metadata accessor for CRLBoardIdentifier);
  v21 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = v17;
  sub_100025738(v17, v22 + v21, type metadata accessor for CRLBoardIdentifier);
  v0[91] = sub_1011068D8;
  v0[92] = v22;
  v0[87] = _NSConcreteStackBlock;
  v0[88] = *"";
  v0[89] = sub_100059694;
  v0[90] = &unk_1018B11E8;
  v24 = _Block_copy(v0 + 87);
  v25 = v42;

  v26 = [v47 addObserverForName:v43 object:v25 queue:0 usingBlock:v24];
  _Block_release(v24);

  *(v19 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync) = v26;
  swift_unknownObjectRelease();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v28 = *(v45 + v44);
  v29 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v30 = *&v28[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v30 + v31, v46, type metadata accessor for CRLBoardCRDTData);
  v32 = v28;
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v46, type metadata accessor for CRLBoardCRDTData);
  v33 = (*&v28[v29] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v34 = *v33;
  v35 = v33[1];

  sub_10084BD4C(v14, v34, v35, v23);

  (*(v15 + 16))(v14, v23, v48);
  sub_10003D87C(v23, type metadata accessor for CRLBoardIdentifier);
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v15 + 8))(v14, v48);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v36;
  *(inited + 40) = v38;
  v39 = static os_log_type_t.default.getter();
  sub_100005404(v50, &_mh_execute_header, v39, "Started real time collaboration session on board %{public}@", 59, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_10003D87C(v49, type metadata accessor for CRLBoardIdentifier);
  sub_10003D87C(v51, type metadata accessor for CRLGloballyScopedBoardIdentifier);

  v40 = v0[1];

  return v40();
}

uint64_t sub_1010E461C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010E478C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = Notification.userInfo.getter();
    if (v8)
    {
      v9 = v8;
      v20[0] = 0xD00000000000001ALL;
      v20[1] = 0x80000001015A4BC0;
      AnyHashable.init<A>(_:)();
      if (!*(v9 + 16) || (v10 = sub_1000640CC(v21), (v11 & 1) == 0))
      {

        return sub_100064234(v21);
      }

      sub_100064288(*(v9 + 56) + 32 * v10, v22);
      sub_100064234(v21);

      sub_1005B981C(&qword_101A21E00);
      if (swift_dynamicCast())
      {
        v12 = v20[0];
        if (*(v20[0] + 16) && (v13 = sub_1000486F0(a3), (v14 & 1) != 0))
        {
          v15 = *(*(v12 + 56) + 8 * v13);

          v16 = type metadata accessor for TaskPriority();
          (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
          v17 = swift_allocObject();
          swift_weakInit();
          type metadata accessor for MainActor();

          v18 = static MainActor.shared.getter();
          v19 = swift_allocObject();
          v19[2] = v18;
          v19[3] = &protocol witness table for MainActor;
          v19[4] = v17;
          v19[5] = v15;

          sub_10064191C(0, 0, v6, &unk_1014C5F78, v19);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1010E4A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010E4AC0, v7, v6);
}

uint64_t sub_1010E4AC0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_1010D86FC();
    if (*v2)
    {

      sub_100636EA0(v3);
    }

    (v1)(v0 + 16, 0);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1010E4B9C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v120 = &v108 - v3;
  v111 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = (&v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v5 - 8);
  v110 = &v108 - v6;
  v7 = type metadata accessor for CRLRealTimeLeave(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for UUID();
  v129 = *(v134 - 8);
  __chkstk_darwin(v134);
  v119 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  *&v18 = __chkstk_darwin(v17 - 8).n128_u64[0];
  v133 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 16);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_shareObservers);
  if ([v21 containsObject:{v1, v18}])
  {
    [v21 removeObject:v1];
  }

  v118 = v9;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.realTimeSync;
  v128 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v130 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v132 = v20;
  v127 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v24 = *(v20 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v25 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v26 = *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v27 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v26 + v27, v12, type metadata accessor for CRLBoardCRDTData);
  v28 = v24;
  v121 = sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  v126 = v12;
  sub_10003D87C(v12, type metadata accessor for CRLBoardCRDTData);
  v29 = (*&v24[v25] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v30 = *v29;
  v31 = v29[1];

  v32 = v133;
  sub_10084BD4C(v16, v30, v31, v133);

  v33 = v129;
  v34 = v134;
  v122 = *(v129 + 16);
  v123 = v129 + 16;
  v122(v16, v32, v134);
  sub_10003D87C(v32, type metadata accessor for CRLBoardIdentifier);
  v35 = UUID.uuidString.getter();
  v37 = v36;
  v124 = *(v33 + 8);
  v125 = v33 + 8;
  v124(v16, v34);
  *(inited + 56) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 64) = v38;
  *(inited + 32) = v35;
  *(inited + 40) = v37;
  v39 = static os_log_type_t.default.getter();
  sub_100005404(v22, &_mh_execute_header, v39, "exitRealTimeSync() for board %{public}@", 39, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v40 = OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync;
  v41 = *(v1 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_databaseSaveObserverForRealTimeSync);
  if (v41)
  {
    v42 = objc_opt_self();
    swift_unknownObjectRetain();
    v43 = [v42 defaultCenter];
    [v43 removeObserver:v41];

    swift_unknownObjectRelease();
    *(v1 + v40) = 0;
    swift_unknownObjectRelease();
  }

  v131 = v38;
  v44 = (v1 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession);
  swift_beginAccess();
  v45 = *v44;
  if (*v44)
  {
    v114 = v16;
    v46 = v44[2];
    v47 = v44[3];
    v48 = v44[1];
    v49 = qword_1019F21C0;
    v117 = v45;

    v116 = v48;

    v115 = v46;

    v113 = v47;

    v50 = v126;
    v51 = v132;
    if (v49 != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.crlJoinLeave;
    v53 = static os_log_type_t.default.getter();
    sub_100005404(v52, &_mh_execute_header, v53, "BoardLibrary exitRealTimeSync: stop observing CRLBoardRealTimeParticipantsDidChange observer", 92, 2, _swiftEmptyArrayStorage);
    v54 = [objc_opt_self() defaultCenter];
    v55 = v119;
    if (qword_1019F15A8 != -1)
    {
      swift_once();
    }

    [v54 removeObserver:v1 name:qword_101AD6540 object:0];

    sub_10092DA60(v55);
    v112 = v22;
    (*(v129 + 32))(v118, v55, v134);
    v98 = sub_1009DCB08();
    v100 = v99;
    v101 = *(v51 + v127);
    v102 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    v103 = v101 + v102;
    v104 = v110;
    sub_10000BE14(v103, v110, &qword_101A08DF0);
    if ((*(v109 + 48))(v104, 1, v111))
    {
      sub_10003D87C(v118, type metadata accessor for CRLRealTimeLeave);
      sub_10002640C(v98, v100);
      sub_10000CAAC(v104, &qword_101A08DF0);
    }

    else
    {
      v106 = v108;
      sub_10005006C(v104, v108, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v104, &qword_101A08DF0);
      v107 = *v106;

      sub_10003D87C(v106, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_1010FA43C(3, v98, v100, v107);
      sub_10002640C(v98, v100);

      sub_10003D87C(v118, type metadata accessor for CRLRealTimeLeave);
    }

    v56 = type metadata accessor for TaskPriority();
    v57 = v120;
    (*(*(v56 - 8) + 56))(v120, 1, 1, v56);
    v58 = swift_allocObject();
    v58[2] = 0;
    v58[3] = 0;
    v58[4] = v115;

    sub_100CA64C8(0, 0, v57, &unk_1014C5F58, v58);

    sub_10000CAAC(v57, &qword_1019FB750);
    sub_100EC1CB0();
    v59 = *v44;
    *v44 = 0u;
    *(v44 + 1) = 0u;
    sub_101105948(v59);
    v60 = swift_initStackObject();
    *(v60 + 16) = v130;
    v61 = *(v132 + v127);
    v62 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v63 = *&v61[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v64 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10005006C(v63 + v64, v50, type metadata accessor for CRLBoardCRDTData);
    v65 = v61;
    v66 = v114;
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v50, type metadata accessor for CRLBoardCRDTData);
    v67 = (*&v61[v62] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v68 = *v67;
    v69 = v67[1];

    v70 = v133;
    sub_10084BD4C(v66, v68, v69, v133);

    v71 = v134;
    v122(v66, v70, v134);
    sub_10003D87C(v70, type metadata accessor for CRLBoardIdentifier);
    v72 = UUID.uuidString.getter();
    v74 = v73;
    v124(v66, v71);
    *(v60 + 32) = v72;
    v94 = v60 + 32;
    v75 = v131;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = v75;
    *(v60 + 40) = v74;
    v76 = static os_log_type_t.default.getter();
    sub_100005404(v112, &_mh_execute_header, v76, "Ended real time collaboration session on board %{public}@", 57, 2, v60);
  }

  else
  {
    v77 = swift_initStackObject();
    *(v77 + 16) = v130;
    v78 = v22;
    v79 = *(v132 + v127);
    v80 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v81 = *&v79[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v82 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v83 = v81 + v82;
    v84 = v126;
    sub_10005006C(v83, v126, type metadata accessor for CRLBoardCRDTData);
    v85 = v79;
    CRRegister.wrappedValue.getter();
    sub_10003D87C(v84, type metadata accessor for CRLBoardCRDTData);
    v86 = (*&v79[v80] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v87 = *v86;
    v88 = v86[1];

    v89 = v133;
    sub_10084BD4C(v16, v87, v88, v133);

    v90 = v134;
    v122(v16, v89, v134);
    sub_10003D87C(v89, type metadata accessor for CRLBoardIdentifier);
    v91 = UUID.uuidString.getter();
    v93 = v92;
    v124(v16, v90);
    *(v77 + 32) = v91;
    v94 = v77 + 32;
    v95 = v131;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = v95;
    *(v77 + 40) = v93;
    v96 = static os_log_type_t.default.getter();
    sub_100005404(v78, &_mh_execute_header, v96, "Nothing to do for exiting a real-time session. A real-time sync session object is not associated to the board %{public}@", 120, 2, v77);
  }

  swift_setDeallocating();
  return sub_100005070(v94);
}

uint64_t sub_1010E5930(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v94 = &v86 - v4;
  v93 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v91 = &v86 - v8;
  v9 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v100 = *(v12 - 8);
  __chkstk_darwin(v12);
  v90 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  __chkstk_darwin(v17);
  v105 = &v86 - v18;
  v19 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v19 - 8);
  v95 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v99 = &v86 - v22;
  v23 = (v1 + OBJC_IVAR____TtCC8Freeform15CRLBoardLibrary9BoardInfo_realTimeSyncSession);
  result = swift_beginAccess();
  v25 = *v23;
  if (*v23)
  {
    v106 = v16;
    v26 = v23[3];
    sub_1011066F0(v25);

    v27 = a1;
    sub_101105948(v25);
    v28 = *(v26 + 16);
    v29 = v106;

    if (v28)
    {
      v88 = v6;
      v89 = v1;
      v87 = *(v1 + 16);
      v86 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
      v30 = *(v87 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v31 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v32 = *&v30[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v33 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v32 + v33, v11, type metadata accessor for CRLBoardCRDTData);
      v34 = v30;
      sub_1005B981C(&unk_1019F5250);
      v35 = v105;
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v11, type metadata accessor for CRLBoardCRDTData);
      v36 = (*&v30[v31] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v37 = *v36;
      v38 = v36[1];

      sub_10084BD4C(v35, v37, v38, v99);

      v111 = _swiftEmptySetSingleton;
      v39 = *(v27 + 16);
      if (v39)
      {
        v40 = v27 + 32;
        v108 = (v100 + 8);
        v109 = (v100 + 16);
        v41 = type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
        v42 = 0;
        v98 = v23;
        v103 = v39;
        v97 = v27 + 32;
        v101 = v41;
        while (1)
        {
          v43 = *(v40 + 16 * v42);
          v44 = swift_dynamicCastClass();
          if (!v44)
          {
            goto LABEL_7;
          }

          v45 = *v23;
          if (!*v23)
          {
            goto LABEL_7;
          }

          v46 = v23[3];
          v104 = v43;
          v47 = v40;
          v48 = v29;
          v49 = v44;
          swift_unknownObjectRetain_n();
          sub_1011066F0(v45);

          sub_101105948(v45);
          v50 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
          v51 = *v109;
          v102 = v49;
          v52 = v49 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
          v29 = v48;
          v40 = v47;
          v39 = v103;
          v107 = v51;
          v51(v29, v52, v12);
          if (!*(v46 + 16))
          {
            goto LABEL_6;
          }

          v96 = v50;
          sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
          swift_unknownObjectRetain();
          v53 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v54 = -1 << *(v46 + 32);
          v55 = v53 & ~v54;
          if (((*(v46 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
          {
            break;
          }

          v56 = ~v54;
          v57 = *(v100 + 72);
          while (1)
          {
            v58 = v105;
            v107(v105, *(v46 + 48) + v57 * v55, v12);
            sub_101104B20(&qword_1019F37C0, &type metadata accessor for UUID);
            v59 = dispatch thunk of static Equatable.== infix(_:_:)();
            v60 = *v108;
            (*v108)(v58, v12);
            if (v59)
            {
              break;
            }

            v55 = (v55 + 1) & v56;
            if (((*(v46 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v29 = v106;
          v60(v106, v12);
          v61 = v95;
          sub_10005006C(v102 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v95, type metadata accessor for CRLBoardIdentifier);
          v62 = v99;
          if (static UUID.== infix(_:_:)())
          {
            v63 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
            v64 = *(v61 + v63);
            v65 = *(v61 + v63 + 8);
            v66 = (v62 + v63);
            v67 = v64 == *v66 && v65 == v66[1];
            v40 = v97;
            if (v67)
            {
              sub_10003D87C(v61, type metadata accessor for CRLBoardIdentifier);
            }

            else
            {
              v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v69 = v61;
              v70 = v68;
              sub_10003D87C(v69, type metadata accessor for CRLBoardIdentifier);
              if ((v70 & 1) == 0)
              {
                swift_unknownObjectRelease_n();
LABEL_26:
                v23 = v98;
                v39 = v103;
                goto LABEL_7;
              }
            }

            v71 = v90;
            v107(v90, v102 + v96, v12);
            swift_unknownObjectRelease();
            v72 = v105;
            sub_100E6AF38(v105, v71);
            swift_unknownObjectRelease_n();
            v60(v72, v12);
            goto LABEL_26;
          }

          swift_unknownObjectRelease_n();
          sub_10003D87C(v61, type metadata accessor for CRLBoardIdentifier);
          v23 = v98;
          v39 = v103;
          v40 = v97;
LABEL_7:
          if (++v42 == v39)
          {
            goto LABEL_27;
          }
        }

LABEL_5:
        swift_unknownObjectRelease();
        v29 = v106;
        v23 = v98;
        v39 = v103;
        v40 = v97;
LABEL_6:
        swift_unknownObjectRelease_n();

        (*v108)(v29, v12);
        goto LABEL_7;
      }

LABEL_27:
      v73 = sub_1010D86FC();
      if (*v74)
      {
        sub_1012D4DC4(v111);
      }

      (v73)(v110, 0);
      v75 = v94;
      v76 = v88;
      v77 = v93;
      v78 = v92;
      v79 = v91;
      v80 = *(v87 + v86);
      v81 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
      swift_beginAccess();
      sub_10000BE14(v80 + v81, v79, &qword_101A08DF0);
      if ((*(v78 + 48))(v79, 1, v77))
      {
        sub_10000CAAC(v79, &qword_101A08DF0);
        sub_10003D87C(v99, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        sub_10005006C(v79, v76, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        sub_10000CAAC(v79, &qword_101A08DF0);
        v82 = *v76;

        sub_10003D87C(v76, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        v83 = type metadata accessor for TaskPriority();
        (*(*(v83 - 8) + 56))(v75, 1, 1, v83);
        v84 = v111;
        v85 = swift_allocObject();
        v85[2] = 0;
        v85[3] = 0;
        v85[4] = v84;
        v85[5] = v82;

        sub_100CA64C8(0, 0, v75, &unk_1014C5F48, v85);

        sub_10000CAAC(v75, &qword_1019FB750);
        return sub_10003D87C(v99, type metadata accessor for CRLBoardIdentifier);
      }
    }
  }

  return result;
}

uint64_t sub_1010E648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  sub_1005B981C(&qword_1019F67C0);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for CRLProto_Data(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = type metadata accessor for CRLProto_BoardItemIdentifier(0);
  v5[34] = swift_task_alloc();
  type metadata accessor for CRLServerSyncedPeerAddedItemEvent();
  v5[35] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();

  return _swift_task_switch(sub_1010E6674, 0, 0);
}

uint64_t sub_1010E6674()
{
  v62 = *(v0 + 264);
  v1 = *(v0 + 208);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v59 = *(v0 + 256);
  v64 = *(v0 + 248);
  v5 = -1;
  v6 = -1 << *(*(v0 + 208) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v9 = *(v0 + 240);
  v63 = *(v0 + 296);
  v67 = (v9 + 56);
  v57 = (v9 + 48);
  v61 = *(v0 + 208);

  v10 = 0;
  v56 = _swiftEmptyArrayStorage;
  v60 = v3;
  v58 = v8;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      do
      {
LABEL_8:
        v12 = *(v0 + 304);
        v13 = *(v0 + 280);
        v14 = *(v0 + 288);
        v15 = *(v0 + 272);
        v16 = *(v0 + 256);
        v17 = *(v0 + 232);
        v65 = *(v0 + 224);
        (*(v63 + 16))(v12, *(v61 + 48) + *(v63 + 72) * (__clz(__rbit64(v7)) | (v10 << 6)), v14);
        (*(v63 + 32))(v13, v12, v14);
        UnknownStorage.init()();
        v18 = *(v62 + 20);
        v19 = *v67;
        (*v67)(v15 + v18, 1, 1, v17);
        *v16 = 0;
        *(v59 + 8) = 0xC000000000000000;
        UnknownStorage.init()();
        sub_10000CAAC(v15 + v18, &qword_1019F67C0);
        sub_100025738(v16, v15 + v18, type metadata accessor for CRLProto_Data);
        v66 = v19;
        v19(v15 + v18, 0, 1, v17);
        *(v0 + 312) = UUID.uuid.getter();
        *(v0 + 320) = v20;
        *(v0 + 321) = v21;
        *(v0 + 322) = v22;
        *(v0 + 323) = v23;
        *(v0 + 324) = v24;
        *(v0 + 325) = v25;
        *(v0 + 326) = v26;
        *(v0 + 327) = v27;
        UUID.uuid.getter();
        type metadata accessor for __DataStorage();
        swift_allocObject();
        v28 = __DataStorage.init(bytes:length:)();
        sub_10000BE14(v15 + v18, v65, &qword_1019F67C0);
        v29 = *v57;
        v30 = (*v57)(v65, 1, v17);
        v31 = *(v0 + 248);
        if (v30 == 1)
        {
          v33 = *(v0 + 224);
          v32 = *(v0 + 232);
          *v31 = 0;
          *(v64 + 8) = 0xC000000000000000;
          UnknownStorage.init()();
          if (v29(v33, 1, v32) != 1)
          {
            sub_10000CAAC(*(v0 + 224), &qword_1019F67C0);
          }
        }

        else
        {
          sub_100025738(*(v0 + 224), v31, type metadata accessor for CRLProto_Data);
        }

        v7 &= v7 - 1;
        v34 = *(v0 + 248);
        v35 = *(v0 + 232);
        sub_10002640C(*v34, *(v64 + 8));
        *v34 = 0x1000000000;
        *(v64 + 8) = v28 | 0x4000000000000000;
        sub_10000CAAC(v15 + v18, &qword_1019F67C0);
        sub_100025738(v34, v15 + v18, type metadata accessor for CRLProto_Data);
        v66(v15 + v18, 0, 1, v35);
        sub_101104B20(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier);
        v36 = Message.serializedData(partial:)();
        v38 = v37;
        sub_10003D87C(*(v0 + 272), type metadata accessor for CRLProto_BoardItemIdentifier);
        sub_100024E98(v36, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v56 = sub_100B37740(0, v56[2] + 1, 1, v56);
        }

        v41 = v56[2];
        v40 = v56[3];
        if (v41 >= v40 >> 1)
        {
          v48 = sub_100B37740((v40 > 1), v41 + 1, 1, v56);
          v43 = v38;
          v56 = v48;
          v42 = v36;
        }

        else
        {
          v42 = v36;
          v43 = v38;
        }

        v44 = *(v0 + 280);
        v45 = v42;
        v46 = v43;
        sub_10002640C(v42, v43);
        sub_10003D87C(v44, type metadata accessor for CRLServerSyncedPeerAddedItemEvent);
        *(v0 + 160) = &type metadata for CRLBoardAuxiliaryRealTimeChange;
        *(v0 + 168) = &off_1018834F0;
        v47 = swift_allocObject();
        *(v0 + 136) = v47;
        *(v47 + 16) = 8;
        *(v47 + 24) = v45;
        *(v47 + 32) = v46;
        *(v47 + 40) = 1;
        v56[2] = v41 + 1;
        sub_100050F74((v0 + 136), &v56[5 * v41 + 4]);
        v3 = v60;
        v8 = v58;
      }

      while (v7);
    }
  }

  if (v56[2])
  {
    v49 = *(v0 + 216);
    v50 = *(v49 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
    v51 = swift_allocObject();
    *(v51 + 16) = v49;
    *(v51 + 24) = v56;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_101106810;
    *(v52 + 24) = v51;
    *(v0 + 120) = sub_10002AAE0;
    *(v0 + 128) = v52;
    *(v0 + 88) = _NSConcreteStackBlock;
    *(v0 + 96) = *"";
    *(v0 + 104) = sub_10002AAB8;
    *(v0 + 112) = &unk_1018B10D0;
    v53 = _Block_copy((v0 + 88));

    dispatch_sync(v50, v53);
    _Block_release(v53);
    LOBYTE(v50) = swift_isEscapingClosureAtFileLocation();

    if ((v50 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

LABEL_25:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1010E6F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for CRLServerSyncedPeerAddedItemEvent();
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_1010E6FF0, 0, 0);
}

uint64_t sub_1010E6FF0()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = sub_1010A24BC();
  v5 = v0[22];
  v6 = v4;
  v8 = v7;
  sub_1005B981C(&qword_101A11C40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  *(v9 + 56) = &type metadata for CRLBoardAuxiliaryRealTimeChange;
  *(v9 + 64) = &off_1018834F0;
  v10 = swift_allocObject();
  *(v9 + 32) = v10;
  *(v10 + 16) = 8;
  *(v10 + 24) = v6;
  *(v10 + 32) = v8;
  *(v10 + 40) = 1;
  v11 = *(v5 + OBJC_IVAR____TtC8Freeform17CRLBoardChangeSet_accessQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v9;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_101107CC8;
  *(v13 + 24) = v12;
  v0[15] = sub_10002AAE0;
  v0[16] = v13;
  v0[11] = _NSConcreteStackBlock;
  v0[12] = *"";
  v0[13] = sub_10002AAB8;
  v0[14] = &unk_1018B1828;
  v14 = _Block_copy(v0 + 11);
  sub_100024E98(v6, v8);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  result = sub_10002640C(v6, v8);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_10003D87C(v0[23], type metadata accessor for CRLServerSyncedPeerAddedItemEvent);

    v16 = v0[1];

    return v16();
  }

  return result;
}

void sub_1010E73C0(void *a1)
{
  v3 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a1)
  {
    v10 = *(*(v1 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v10 + v11, v9, &qword_101A08DF0);
    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_10000CAAC(v9, &qword_101A08DF0);
    }

    else
    {
      sub_10005006C(v9, v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v12 = a1;
      sub_10000CAAC(v9, &qword_101A08DF0);

      sub_10003D87C(v6, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v13 = v12;
      sub_1007D9914(a1);
    }
  }
}

uint64_t sub_1010E7648()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1010E7844()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F54E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146BDE0;
  v37 = *(v0 + 16);
  v38 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v11 = *(v37 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v12 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v13 = *&v11[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v14 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v36 = type metadata accessor for CRLBoardCRDTData;
  sub_10005006C(v13 + v14, v3, type metadata accessor for CRLBoardCRDTData);
  v15 = v11;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  v16 = (*&v11[v12] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v17 = *v16;
  v18 = v16[1];

  sub_10084BD4C(v6, v17, v18, v9);

  v41 = UUID.uuidString.getter();
  v42 = v19;

  v20._countAndFlagsBits = 58;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v21 = v41;
  v22 = v42;
  v23 = &v9[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v24 = *v23;
  v25 = v23[1];
  v41 = v21;
  v42 = v22;

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  v27 = v41;
  v28 = v42;
  sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
  *(v10 + 56) = &type metadata for String;
  v29 = sub_1000053B0();
  *(v10 + 64) = v29;
  *(v10 + 32) = v27;
  *(v10 + 40) = v28;
  v30 = *(*(v37 + v38) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v31 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v30 + v31, v3, v36);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  v32 = v39;
  v33 = v40;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v29;
  *(v10 + 72) = v32;
  *(v10 + 80) = v33;
  return String.init(format:_:)();
}

Swift::Int sub_1010E7BBC()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init(_seed:)();
  v8 = *(*(v0 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v9 = *&v8[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v10 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v9 + v10, v3, type metadata accessor for CRLBoardCRDTData);
  v11 = v8;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);

  sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1010E7E1C()
{
  v1 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init(_seed:)();
  v8 = *(*(*(*v0 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10005006C(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v3, type metadata accessor for CRLBoardCRDTData);
  sub_101104B20(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  return Hasher._finalize()();
}

void sub_1010E805C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CRLZoneSyncResultScenarios();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  v13 = Notification.userInfo.getter();
  if (!v13)
  {

    v30 = 0u;
    v31 = 0u;
    goto LABEL_18;
  }

  v14 = v13;
  v28[1] = 0xD000000000000026;
  v28[2] = 0x8000000101590790;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = sub_1000640CC(v29), (v16 & 1) == 0))
  {

    sub_100064234(v29);
    v30 = 0u;
    v31 = 0u;
    goto LABEL_16;
  }

  sub_100064288(*(v14 + 56) + 32 * v15, &v30);
  sub_100064234(v29);

  if (!*(&v31 + 1))
  {
LABEL_16:

LABEL_18:
    sub_10000CAAC(&v30, &unk_1019F4D00);
    return;
  }

  sub_1005B981C(&qword_101A151D8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    return;
  }

  v17 = v29[0];
  if (!*(v29[0] + 16) || (v18 = sub_1000486F0(a3), (v19 & 1) == 0))
  {

    goto LABEL_21;
  }

  sub_10005006C(*(v17 + 56) + *(v5 + 72) * v18, v7, type metadata accessor for CRLZoneSyncResultScenarios);

  sub_100025738(v7, v10, type metadata accessor for CRLZoneSyncResultScenarios);
  if ((v10[2] & 1) == 0)
  {
LABEL_13:
    v24 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_databaseSyncObserver;
    v25 = *&v12[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_databaseSyncObserver];
    if (v25)
    {
      v26 = objc_opt_self();
      swift_unknownObjectRetain();
      v27 = [v26 defaultCenter];
      [v27 removeObserver:v25];
      swift_unknownObjectRelease();

      sub_10003D87C(v10, type metadata accessor for CRLZoneSyncResultScenarios);
      *&v12[v24] = 0;

      swift_unknownObjectRelease();
      return;
    }

    sub_10003D87C(v10, type metadata accessor for CRLZoneSyncResultScenarios);
    goto LABEL_21;
  }

  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 delegate];

  if (v21)
  {
    sub_100787FE4();
    v23 = v22;
    swift_unknownObjectRelease();
    if (v23)
    {
      sub_100C1AD94();
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1010E83E4()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v65 - v2;
  v4 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount);
  v6 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
    goto LABEL_44;
  }

  *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pauseSnapshotUpdateCount) = v6;
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v5 != 1)
    {
      if (qword_1019F2130 != -1)
      {
        swift_once();
      }

      v7 = static OS_os_log.crlBoardLibrary;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v9 = *(v0 + v4);
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
      *(inited + 32) = v9;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v10, "Snapshot update pause counter decremented to: %d", 48, 2, inited);
      swift_setDeallocating();
      return sub_100005070(inited + 32);
    }

LABEL_35:
    if (qword_1019F2130 != -1)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v67 = v4;
  v68 = v3;
  sub_1005B981C(&qword_1019F54E0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10146C6B0;
  *(v12 + 32) = v6;
  v71 = v12 + 32;
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 64) = &protocol witness table for Int;
  v66 = objc_opt_self();
  v13 = [v66 _atomicIncrementAssertCount];
  v72 = [objc_allocWithZone(NSString) init];
  v70 = v12;
  sub_100604538(v12, &v72);
  StaticString.description.getter();
  v14 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v69 = v0;
  v20 = static OS_os_log.crlAssert;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_10146CA70;
  *(v21 + 56) = &type metadata for Int32;
  *(v21 + 64) = &protocol witness table for Int32;
  *(v21 + 32) = v13;
  v22 = sub_100006370(0, &qword_1019F4D30);
  *(v21 + 96) = v22;
  v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v21 + 104) = v23;
  *(v21 + 72) = v14;
  *(v21 + 136) = &type metadata for String;
  v24 = sub_1000053B0();
  *(v21 + 112) = v17;
  *(v21 + 120) = v19;
  *(v21 + 176) = &type metadata for UInt;
  *(v21 + 184) = &protocol witness table for UInt;
  *(v21 + 144) = v24;
  *(v21 + 152) = 3327;
  v25 = v14;
  v26 = v72;
  *(v21 + 216) = v22;
  *(v21 + 224) = v23;
  *(v21 + 192) = v26;
  v27 = v25;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v20, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
  swift_setDeallocating();
  v65 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  v31 = v70;
  sub_100005404(v20, &_mh_execute_header, v30, "Invalid pause count: %d", 23, 2, v70);

  type metadata accessor for __VaListBuilder();
  v32 = swift_allocObject();
  v32[2] = 8;
  v32[3] = 0;
  v33 = v32 + 3;
  v32[4] = 0;
  v32[5] = 0;
  v34 = *(v31 + 16);
  if (!v34)
  {
LABEL_34:
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v54 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v52 file:v53 lineNumber:3327 isFatal:0 format:v54 args:v51];

    swift_setDeallocating();
    swift_arrayDestroy();
    v3 = v68;
    v0 = v69;
    *(v69 + v67) = 0;
    goto LABEL_35;
  }

  v35 = 0;
  v3 = 40;
  while (1)
  {
    v0 = sub_100020E58((v71 + 40 * v35), *(v71 + 40 * v35 + 24));
    v36 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v37 = *v33;
    v38 = *(v36 + 16);
    v39 = __OFADD__(*v33, v38);
    v40 = *v33 + v38;
    if (v39)
    {
      break;
    }

    v0 = v32[4];
    if (v0 >= v40)
    {
      goto LABEL_26;
    }

    if (v0 + 0x4000000000000000 < 0)
    {
      goto LABEL_42;
    }

    v41 = v32[5];
    if (2 * v0 > v40)
    {
      v40 = 2 * v0;
    }

    v32[4] = v40;
    if ((v40 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_43;
    }

    v42 = v31;
    v43 = v36;
    v44 = swift_slowAlloc();
    v45 = v44;
    v32[5] = v44;
    if (v41)
    {
      if (v44 != v41 || v44 >= &v41[8 * v37])
      {
        memmove(v44, v41, 8 * v37);
      }

      v0 = v32;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v36 = v43;
      v31 = v42;
      v3 = 40;
LABEL_26:
      v45 = v32[5];
      if (!v45)
      {
        goto LABEL_33;
      }

      goto LABEL_27;
    }

    v36 = v43;
    v31 = v42;
    v3 = 40;
    if (!v45)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_27:
    v47 = *(v36 + 16);
    if (v47)
    {
      v48 = (v36 + 32);
      v49 = *v33;
      while (1)
      {
        v50 = *v48++;
        *&v45[8 * v49] = v50;
        v49 = *v33 + 1;
        if (__OFADD__(*v33, 1))
        {
          break;
        }

        *v33 = v49;
        if (!--v47)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      break;
    }

LABEL_11:

    if (++v35 == v34)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  swift_once();
LABEL_36:
  v55 = static OS_os_log.crlBoardLibrary;
  v56 = static os_log_type_t.default.getter();
  sub_100005404(v55, &_mh_execute_header, v56, "Resuming snapshot updates", 25, 2, _swiftEmptyArrayStorage);
  v57 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingUpdateOptions;
  v58 = *(v0 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingUpdateOptions);
  v59 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_pendingChangedBoards;
  result = swift_beginAccess();
  v60 = *(v0 + v59);
  if (v58 || *(v60 + 16))
  {
    *(v0 + v57) = 0;
    *(v0 + v59) = _swiftEmptySetSingleton;
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v3, 1, 1, v61);
    type metadata accessor for MainActor();
    v62 = v0;
    v63 = static MainActor.shared.getter();
    v64 = swift_allocObject();
    v64[2] = v63;
    v64[3] = &protocol witness table for MainActor;
    v64[4] = v62;
    v64[5] = v58;
    v64[6] = v60;
    sub_10064191C(0, 0, v3, &unk_1014C5D98, v64);
  }

  return result;
}

uint64_t sub_1010E8C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1010E8CE0;

  return sub_1010C56AC(a5, a6);
}

uint64_t sub_1010E8CE0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010E8E1C, v1, v0);
}

void sub_1010E8E1C()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_10077E434();
    swift_unknownObjectRelease();
    v3 = *(v0 + 8);

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1010E8EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = type metadata accessor for MainActor();
  v6[4] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[5] = v8;
  *v8 = v6;
  v8[1] = sub_1010E8FB4;

  return sub_10007CEB8(a6);
}

uint64_t sub_1010E8FB4()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 48) = v3;
  *(v1 + 56) = v2;

  return _swift_task_switch(sub_1010E90F8, v3, v2);
}

uint64_t sub_1010E90F8(unint64_t a1)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_snapshotUpdateInterval);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!is_mul_ok(v3, 0x3B9ACA00uLL))
  {
LABEL_11:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = 1000000000 * v3;
  v5 = swift_task_alloc();
  *(v1 + 64) = v5;
  *v5 = v1;
  v5[1] = sub_1010E91F8;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_1010E91F8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1008C93CC;
  }

  else
  {
    v5 = sub_1010E9334;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1010E9334()
{

  sub_1010E83E4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1010E93A0()
{
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v2 = sub_1010E9704;
  }

  else
  {

    v2 = sub_1010E94BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010E94E0()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[160] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[161] = v3;
  v4 = sub_1005B981C(&qword_101A2AD28);
  *v3 = v0;
  v3[1] = sub_1010E95E8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 83, 0, 0, 0xD000000000000027, 0x80000001015C0ED0, sub_101104B68, v2, v4);
}

uint64_t sub_1010E95E8()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_1010E9D88;
  }

  else
  {

    v2 = sub_1010E9B40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010E9704()
{

  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  return _swift_task_switch(sub_1010E976C, v2, v1);
}

uint64_t sub_1010E976C()
{
  v1 = v0[158];

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[84] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error updating snapshot from store: %@", 38, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (!v0[158])
  {
  }

  v8 = v0[1];

  return v8(0, 0, 0, 0);
}

uint64_t sub_1010E9B64()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[164] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[165] = v3;
  v4 = sub_1005B981C(&unk_101A22E80);
  *v3 = v0;
  v3[1] = sub_1010E9C6C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 77, 0, 0, 0xD000000000000022, 0x80000001015C0F00, sub_101104B70, v2, v4);
}

uint64_t sub_1010E9C6C()
{
  *(*v1 + 1328) = v0;

  if (v0)
  {
    v2 = sub_1010EA418;
  }

  else
  {

    v2 = sub_1010EA1CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010E9D88()
{

  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  return _swift_task_switch(sub_1010E9DF0, v2, v1);
}

uint64_t sub_1010E9DF0()
{
  v1 = v0[162];

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[84] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error updating snapshot from store: %@", 38, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (!v0[158])
  {
  }

  v8 = v0[1];

  return v8(0, 0, 0, 0);
}

uint64_t sub_1010EA1F0()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[168] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = -1;
  v3 = swift_task_alloc();
  v0[169] = v3;
  v4 = sub_1005B981C(&qword_101A2AD30);
  *v3 = v0;
  v3[1] = sub_1010EA2FC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 78, 0, 0, 0xD00000000000002ALL, 0x80000001015C0F30, sub_101104B78, v2, v4);
}

uint64_t sub_1010EA2FC()
{
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v2 = sub_1010EAAB0;
  }

  else
  {

    v2 = sub_1010EA868;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010EA418()
{

  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  return _swift_task_switch(sub_1010EA480, v2, v1);
}

uint64_t sub_1010EA480()
{
  v1 = v0[166];

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[84] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error updating snapshot from store: %@", 38, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  if (!v0[158])
  {
  }

  v8 = v0[1];

  return v8(0, 0, 0, 0);
}

uint64_t sub_1010EA88C()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[172] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[173] = v3;
  v4 = sub_1005B981C(&qword_101A2AD38);
  *v3 = v0;
  v3[1] = sub_1010EA994;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 79, 0, 0, 0xD000000000000011, 0x80000001015C0F60, sub_101104B80, v2, v4);
}

uint64_t sub_1010EA994()
{
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v2 = sub_1010EAF0C;
  }

  else
  {

    v2 = sub_1010EB378;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1010EAAB0()
{

  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  return _swift_task_switch(sub_1010EAB18, v2, v1);
}

uint64_t sub_1010EAB18()
{
  v1 = v0[170];

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[84] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error updating snapshot from store: %@", 38, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  if (!v0[158])
  {
  }

  v8 = v0[1];

  return v8(0, 0, 0, 0);
}

uint64_t sub_1010EAF0C()
{

  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);

  return _swift_task_switch(sub_1010EAF74, v2, v1);
}

uint64_t sub_1010EAF74()
{
  v1 = v0[174];

  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlBoardLibrary;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[84] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error updating snapshot from store: %@", 38, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  if (!v0[158])
  {
  }

  v8 = v0[1];

  return v8(0, 0, 0, 0);
}

uint64_t sub_1010EB39C()
{
  v384 = v0;
  v1 = *(v0 + 1400);

  v2 = sub_100039830(_swiftEmptyArrayStorage);
  v3 = sub_100039618(_swiftEmptyArrayStorage);
  v374 = v1;
  v367 = *(v1 + 16);
  if (v367)
  {
    v4 = 0;
    v366 = *(v0 + 1192);
    v363 = *(v0 + 1400) + ((v366[80] + 32) & ~v366[80]);
    v356 = *(v0 + 1160);
    v359 = *(v0 + 1184);
    v352 = *(v0 + 1128);
    v5 = *(v0 + 1120);
    while (v4 < *(v374 + 16))
    {
      v372 = v3;
      v6 = *(v0 + 1208);
      v1 = *(v0 + 1200);
      v7 = *(v0 + 1176);
      v8 = *(v366 + 9);
      sub_10005006C(v363 + v8 * v4, v6, type metadata accessor for CRLFolder);
      sub_10005006C(v6, v7, type metadata accessor for CRLFolderIdentifier);
      sub_10005006C(v6, v1, type metadata accessor for CRLFolder);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v383[0] = v2;
      v10 = sub_1007C88C4(v7);
      v12 = v2[2];
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_99;
      }

      v16 = v11;
      if (v2[3] >= v15)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = v10;
          sub_100AA6910();
          v10 = v45;
          v2 = v383[0];
        }
      }

      else
      {
        v17 = *(v0 + 1176);
        sub_100A8D174(v15, isUniquelyReferenced_nonNull_native);
        v2 = v383[0];
        v10 = sub_1007C88C4(v17);
        if ((v16 & 1) != (v18 & 1))
        {
          goto LABEL_41;
        }
      }

      v19 = *(v0 + 1200);
      v20 = *(v0 + 1176);
      v371 = v2;
      v376 = v4;
      if (v16)
      {
        sub_101107A14(v19, v2[7] + v10 * v8, type metadata accessor for CRLFolder);
        sub_10003D87C(v20, type metadata accessor for CRLFolderIdentifier);
      }

      else
      {
        v2[(v10 >> 6) + 8] |= 1 << v10;
        v1 = v10;
        sub_10005006C(v20, v2[6] + *(v356 + 72) * v10, type metadata accessor for CRLFolderIdentifier);
        sub_100025738(v19, v2[7] + v1 * v8, type metadata accessor for CRLFolder);
        sub_10003D87C(v20, type metadata accessor for CRLFolderIdentifier);
        v21 = v2[2];
        v14 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v14)
        {
          goto LABEL_102;
        }

        v2[2] = v22;
      }

      v23 = *(v0 + 1208);
      v24 = *(v0 + 1168);
      v1 = *(v0 + 1144);
      v380 = *(v0 + 1136);
      sub_10005006C(v23, v24, type metadata accessor for CRLFolderIdentifier);
      sub_10005006C(v23, v1, type metadata accessor for CRLFolderIdentifier);
      sub_10000BE14(v23 + *(v359 + 20), v1 + v5[5], &qword_1019F33E0);
      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      v25 = *(v0 + 584);
      v26 = *(v0 + 592);
      type metadata accessor for CRLFolderCRDTData();
      sub_1005B981C(&qword_1019F4860);
      CRRegister.wrappedValue.getter();
      v27 = *(v0 + 640);
      sub_1005B981C(&qword_1019F4850);
      CRRegister.wrappedValue.getter();
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_1005B981C(&qword_1019F4858);
      CRMaxRegister.wrappedValue.getter();
      Date.init(timeIntervalSinceReferenceDate:)();
      v28 = v5[14];
      v29 = _s5BoardV13ShareMetadataVMa(0);
      (*(*(v29 - 8) + 56))(v1 + v28, 1, 1, v29);
      v30 = (v1 + v5[6]);
      *v30 = v25;
      v30[1] = v26;
      *(v1 + v5[7]) = v27;
      *(v1 + v5[10]) = 0;
      *(v1 + v5[11]) = 0;
      *(v1 + v5[12]) = 0;
      *(v1 + v5[13]) = 0;
      sub_100025738(v1, v380, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v3 = v372;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      v383[0] = v372;
      v32 = sub_1007C88C4(v24);
      v34 = v372[2];
      v35 = (v33 & 1) == 0;
      v14 = __OFADD__(v34, v35);
      v36 = v34 + v35;
      if (v14)
      {
        goto LABEL_100;
      }

      v1 = v33;
      if (v372[3] >= v36)
      {
        v2 = v371;
        v39 = v376;
        if ((v31 & 1) == 0)
        {
          v46 = v32;
          sub_100AA661C();
          v32 = v46;
          v3 = v383[0];
        }
      }

      else
      {
        v37 = *(v0 + 1168);
        sub_100A8CC9C(v36, v31);
        v3 = v383[0];
        v32 = sub_1007C88C4(v37);
        v2 = v371;
        v39 = v376;
        if ((v1 & 1) != (v38 & 1))
        {
LABEL_41:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v40 = *(v0 + 1208);
      v41 = *(v0 + 1168);
      v42 = *(v0 + 1136);
      if (v1)
      {
        sub_101107A14(*(v0 + 1136), v3[7] + *(v352 + 72) * v32, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003D87C(v41, type metadata accessor for CRLFolderIdentifier);
        sub_10003D87C(v40, type metadata accessor for CRLFolder);
      }

      else
      {
        v3[(v32 >> 6) + 8] |= 1 << v32;
        v1 = v32;
        sub_10005006C(v41, v3[6] + *(v356 + 72) * v32, type metadata accessor for CRLFolderIdentifier);
        sub_100025738(v42, v3[7] + *(v352 + 72) * v1, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_10003D87C(v41, type metadata accessor for CRLFolderIdentifier);
        sub_10003D87C(v40, type metadata accessor for CRLFolder);
        v43 = v3[2];
        v14 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v14)
        {
          goto LABEL_103;
        }

        v3[2] = v44;
      }

      v4 = v39 + 1;
      if (v367 == v4)
      {
        goto LABEL_25;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
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
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
      goto LABEL_109;
    }

LABEL_47:
    v77 = 0;
    v320 = v1 & 0xC000000000000001;
    v321 = *(v0 + 1304);
    v312 = *(v0 + 1368) + 32;
    v313 = v1 & 0xFFFFFFFFFFFFFF8;
    v311 = *(v0 + 1160);
    v318 = (*(v0 + 872) + 32);
    v317 = *(v0 + 1056);
    v360 = *(v0 + 920);
    v369 = *(v0 + 704);
    v316 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
    v315 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping;
    v314 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController;
    v78 = v382;
    v319 = v76;
    while (1)
    {
      if (v320)
      {
        v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v92 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v77 >= *(v313 + 16))
        {
          goto LABEL_105;
        }

        v91 = *(v312 + 8 * v77);

        v92 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_101;
        }
      }

      v348 = v92;
      v364 = v78;
      v93 = *(v0 + 1032);
      v94 = *(v0 + 976);
      v95 = *(v0 + 936);
      v96 = v91 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v377 = v96;
      sub_10005006C(v96, v95, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v95, type metadata accessor for CRLBoardCRDTData);
      v97 = (v91 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v98 = *(v91 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v99 = *(v91 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

      sub_10084BD4C(v94, v98, v99, v93);
      if (*(v321 + 16) && (v100 = sub_1000486F0(*(v0 + 1032)), (v101 & 1) != 0))
      {
        v102 = *(*(v321 + 56) + 8 * v100);
      }

      else
      {
        v102 = 0;
      }

      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v104 = sub_10084B8C8();
      v106 = v105;
      *(inited + 56) = &type metadata for String;
      v107 = sub_1000053B0();
      v108 = inited;
      *(inited + 32) = v104;
      v109 = inited + 32;
      *(v108 + 64) = v107;
      *(v108 + 40) = v106;
      if (!v102)
      {
        v378 = v107;
        v130 = v108;
        v366 = objc_opt_self();
        LODWORD(v131) = [v366 _atomicIncrementAssertCount];
        v383[0] = [objc_allocWithZone(NSString) init];
        v380 = v130;
        sub_100604538(v130, v383);
        StaticString.description.getter();
        v370 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v132 = String._bridgeToObjectiveC()();

        v133 = [v132 lastPathComponent];

        v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v136 = v135;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_215;
        }

        goto LABEL_71;
      }

      v366 = v102;
      v346 = v77;
      v110 = *(v0 + 1336);
      v111 = *(v0 + 1032);
      v112 = *(v0 + 1024);
      v113 = *(v0 + 976);
      v114 = *(v0 + 936);
      swift_setDeallocating();
      sub_100005070(v109);
      v344 = sub_10079DDA0(v111, v110);
      sub_10005006C(v96, v114, type metadata accessor for CRLBoardCRDTData);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v114, type metadata accessor for CRLBoardCRDTData);
      v116 = *v97;
      v115 = v97[1];

      sub_10084BD4C(v113, v116, v115, v112);
      swift_beginAccess();
      if (*(*(v369 + v316) + 16) && (sub_1000486F0(*(v0 + 1024)), (v117 & 1) != 0))
      {
        v118 = *(v0 + 912);
        swift_endAccess();

        sub_1010D85C8(v118);
      }

      else
      {
        v119 = *(v0 + 912);
        swift_endAccess();
        v120 = _s5BoardV13ShareMetadataVMa(0);
        (*(*(v120 - 8) + 56))(v119, 1, 1, v120);
      }

      sub_10005006C(*(v0 + 1024), *(v0 + 1016), type metadata accessor for CRLBoardIdentifier);
      swift_beginAccess();
      v121 = *(v369 + v315);
      if (*(v121 + 16) && (v122 = sub_1000486F0(*(v0 + 1024)), (v123 & 1) != 0))
      {
        sub_10005006C(*(v121 + 56) + *(v311 + 72) * v122, *(v0 + 904), type metadata accessor for CRLFolderIdentifier);
        v124 = 0;
      }

      else
      {
        v124 = 1;
      }

      v338 = *(v0 + 1024);
      v125 = *(v0 + 936);
      v126 = *(v0 + 928);
      (*(v311 + 56))(*(v0 + 904), v124, 1, *(v0 + 1152));
      swift_endAccess();
      sub_10005006C(v377, v126, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_101A1A020);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v126, type metadata accessor for CRLBoardCRDTData);
      v342 = *(v0 + 600);
      v340 = *(v0 + 608);
      sub_10005006C(v377, v125, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_1019F4850);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v125, type metadata accessor for CRLBoardCRDTData);
      Date.init(timeIntervalSinceReferenceDate:)();
      sub_10005006C(v377, v125, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&qword_1019F4858);
      CRMaxRegister.wrappedValue.getter();
      sub_10003D87C(v125, type metadata accessor for CRLBoardCRDTData);
      Date.init(timeIntervalSinceReferenceDate:)();
      v335 = v102[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors];
      v127 = *(*(v369 + v314) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
      v128 = swift_task_alloc();
      *(v128 + 16) = v338;

      v129 = sub_1010AA984(sub_100F794EC, v128, v127);

      if (v129)
      {
      }

      v79 = *(v0 + 1096);
      v337 = *(v0 + 1032);
      v80 = *(v0 + 1024);
      v81 = *(v0 + 1016);
      v332 = *(v0 + 912);
      v333 = *(v0 + 1088);
      v82 = *(v0 + 904);
      v325 = *(v0 + 888);
      v326 = *(v0 + 880);
      v83 = *(v0 + 864);
      v84 = *(v0 + 856);
      v330 = v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled];
      v328 = v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled];
      sub_10005006C(v377 + *(v360 + 32), v84, type metadata accessor for CRLSharedBoardMetadataCRDTData);
      sub_1005B981C(&qword_101A2C810);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v84, type metadata accessor for CRLSharedBoardMetadataCRDTData);
      v323 = *(v0 + 1408);
      sub_10003D87C(v80, type metadata accessor for CRLBoardIdentifier);
      v85 = v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite];
      LOBYTE(v84) = v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen];
      v86 = *&v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion];
      v322 = v366[OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion + 8];
      sub_100025738(v81, v79, type metadata accessor for CRLBoardIdentifier);
      sub_10003DFF8(v82, v79 + v317[5], &qword_1019F33E0);
      v87 = (v79 + v317[6]);
      *v87 = v342;
      v87[1] = v340;
      v88 = *v318;
      (*v318)(v79 + v317[7], v325, v83);
      v88(v79 + v317[8], v326, v83);
      *(v79 + v317[9]) = v335;
      *(v79 + v317[10]) = v129 != 0;
      *(v79 + v317[11]) = v330;
      *(v79 + v317[12]) = v328;
      *(v79 + v317[13]) = v323;
      *(v79 + v317[14]) = v85;
      *(v79 + v317[15]) = 0;
      *(v79 + v317[16]) = v84;
      *(v79 + v317[17]) = 1;
      *(v79 + v317[18]) = v344 & 1;
      v89 = v79 + v317[19];
      *v89 = v86;
      *(v89 + 8) = v322;
      sub_10003DFF8(v332, v79 + v317[20], &qword_1019F33D0);
      sub_10005006C(v79, v333, _s5BoardVMa);
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v383[0] = v364;
      v1 = v337;
      sub_100A9CD50(v333, v337, v90);

      sub_10003D87C(v79, _s5BoardVMa);
      sub_10003D87C(v337, type metadata accessor for CRLBoardIdentifier);
      v78 = v383[0];
      v382 = v383[0];
      v77 = v346 + 1;
      if (v348 == v319)
      {
        goto LABEL_110;
      }
    }
  }

LABEL_25:
  v373 = v3;
  v47 = *(v0 + 704);

  v48 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folders;
  swift_beginAccess();

  v50 = sub_100B32DF0(v49, v2);

  if ((v50 & 1) == 0)
  {
    *(v47 + v48) = v2;
  }

  v51 = *(v0 + 704);
  v52 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  swift_beginAccess();

  v54 = sub_100B33390(v53, v373);

  if (v54)
  {
    v55 = v50 ^ 1;
  }

  else
  {
    *(v51 + v52) = v373;

    v55 = 1;
  }

  v310 = v55;
  v56 = *(v0 + 1272);
  v57 = *(v0 + 704);
  v382 = sub_100039400(_swiftEmptyArrayStorage);
  v309 = v56;
  v58 = *(v56 + 16);

  v59 = v57;

  if (v58)
  {
    v368 = *(v0 + 1064);
    v380 = *(v0 + 1392);
    v60 = (*(v0 + 1272) + 40);
    v374 = _swiftEmptyArrayStorage;
    do
    {
      v61 = *(v0 + 1336);
      v62 = *(v0 + 1304);
      v63 = *(v0 + 1056);
      v64 = *(v0 + 1048);
      v65 = *(v0 + 704);
      v66 = *v60;
      v383[0] = *(v60 - 1);
      v383[1] = v66;
      v67 = v66;

      sub_1010F0120(v383, v62, v65, v61, &v382, v64);

      if ((*(v368 + 48))(v64, 1, v63) == 1)
      {
        sub_10000CAAC(*(v0 + 1048), &unk_1019FA3E0);
      }

      else
      {
        v68 = *(v0 + 1112);
        v69 = *(v0 + 1104);
        sub_100025738(*(v0 + 1048), v68, _s5BoardVMa);
        sub_100025738(v68, v69, _s5BoardVMa);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v70 = v374;
        }

        else
        {
          v70 = sub_100B36CD4(0, *(v374 + 16) + 1, 1, v374);
        }

        v72 = v70[2];
        v71 = v70[3];
        if (v72 >= v71 >> 1)
        {
          v70 = sub_100B36CD4(v71 > 1, v72 + 1, 1, v70);
        }

        v73 = *(v0 + 1104);
        v70[2] = v72 + 1;
        v374 = v70;
        sub_100025738(v73, v70 + ((*(v368 + 80) + 32) & ~*(v368 + 80)) + *(v368 + 72) * v72, _s5BoardVMa);
      }

      v60 += 2;
      --v58;
    }

    while (v58);
  }

  else
  {
    v380 = *(v0 + 1392);
    v374 = _swiftEmptyArrayStorage;
  }

  v1 = *(v0 + 1368);
  v75 = *(v0 + 704);

  if (v1 >> 62)
  {
    goto LABEL_108;
  }

  v76 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v76)
  {
    goto LABEL_47;
  }

LABEL_109:
  v78 = v382;
LABEL_110:
  v168 = *(v0 + 704);
  v169 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v131 = *&v168[v169];

  v171 = sub_100B33930(v170, v78);

  v365 = v78;
  if ((v171 & 1) == 0)
  {
    if (v310)
    {
      v310 = 1;
      goto LABEL_132;
    }

    v357 = v169;
    v361 = v168;
    v173 = *(v0 + 1064);
    v370 = *(v0 + 1056);
    v174 = v78 + 64;
    v175 = -1;
    v176 = -1 << *(v78 + 32);
    if (-v176 < 64)
    {
      v175 = ~(-1 << -v176);
    }

    v177 = v175 & *(v78 + 64);
    v134 = (63 - v176) >> 6;
    v366 = (*(v0 + 1160) + 48);
    v378 = *(v0 + 1064);
    v350 = (v173 + 48);
    v353 = (v173 + 56);
    swift_bridgeObjectRetain_n();
    v178 = 0;
    v136 = &unk_101468A80;
    if (v177)
    {
      goto LABEL_119;
    }

    do
    {
LABEL_120:
      v109 = v178 + 1;
      if (__OFADD__(v178, 1))
      {
        goto LABEL_212;
      }

      if (v109 >= v134)
      {

        v310 = 0;
        v169 = v357;
        v168 = v361;
        goto LABEL_132;
      }

      v177 = *(v174 + 8 * v109);
      ++v178;
    }

    while (!v177);
    while (1)
    {
      v179 = *(v0 + 1152);
      v180 = *(v0 + 1080);
      v181 = *(v0 + 896);
      v182 = __clz(__rbit64(v177));
      v177 &= v177 - 1;
      v183 = *(v78 + 56);
      v184 = *(v378 + 9);
      sub_10005006C(v183 + v184 * (v182 | (v109 << 6)), v180, _s5BoardVMa);
      sub_10000BE14(v180 + v370[5], v181, &qword_1019F33E0);
      if ((*v366)(v181, 1, v179) == 1)
      {
        v131 = *(v0 + 896);
        sub_10003D87C(*(v0 + 1080), _s5BoardVMa);
        sub_10000CAAC(v131, &qword_1019F33E0);
        v178 = v109;
        v78 = v365;
        if (!v177)
        {
          goto LABEL_120;
        }
      }

      else
      {
        sub_10000CAAC(*(v0 + 896), &qword_1019F33E0);
        swift_beginAccess();
        v185 = *(v357 + v361);
        if (*(v185 + 16) && (v186 = sub_1000486F0(*(v0 + 1080)), (v187 & 1) != 0))
        {
          sub_10005006C(*(v185 + 56) + v186 * v184, *(v0 + 1040), _s5BoardVMa);
          v188 = 0;
        }

        else
        {
          v188 = 1;
        }

        v131 = *(v0 + 1080);
        v189 = *(v0 + 1056);
        v190 = *(v0 + 1040);
        (*v353)(v190, v188, 1, v189);
        swift_endAccess();
        sub_10003D87C(v131, _s5BoardVMa);
        v191 = (*v350)(v190, 1, v189);
        v192 = *(v0 + 1040);
        v78 = v365;
        if (v191 == 1)
        {
          goto LABEL_210;
        }

        sub_10000CAAC(v192, &unk_1019FA3E0);
        v178 = v109;
        if (!v177)
        {
          goto LABEL_120;
        }
      }

LABEL_119:
      v109 = v178;
    }
  }

  v172 = v310;
LABEL_133:
  v341 = v172;

  v194 = sub_100DCA410(v193);

  v196 = sub_100DCA65C(v195);
  v197 = sub_100A169A4(v194, v196);

  v198 = *(v374 + 16);
  v343 = v197;
  if (v198)
  {
    v199 = *(v0 + 1064);
    v200 = *(v0 + 760);
    v201 = v374 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v202 = *(v199 + 72);
    v203 = _swiftEmptyArrayStorage;
    do
    {
      v204 = *(v0 + 1072);
      v205 = *(v0 + 776);
      sub_10005006C(v201, v204, _s5BoardVMa);
      sub_100025738(v204, v205, _s5BoardVMa);
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v203 = sub_100B3648C(0, v203[2] + 1, 1, v203);
      }

      v207 = v203[2];
      v206 = v203[3];
      if (v207 >= v206 >> 1)
      {
        v203 = sub_100B3648C(v206 > 1, v207 + 1, 1, v203);
      }

      v208 = *(v0 + 776);
      v203[2] = v207 + 1;
      sub_100025738(v208, v203 + ((*(v200 + 80) + 32) & ~*(v200 + 80)) + *(v200 + 72) * v207, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v201 += v202;
      --v198;
    }

    while (v198);
  }

  else
  {

    v203 = _swiftEmptyArrayStorage;
  }

  v209 = *(v0 + 824);
  v380 = *(v0 + 816);
  v210 = *(v0 + 792);
  v211 = *(v0 + 784);
  v109 = *(*(v0 + 704) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v212 = sub_1005B981C(&qword_1019F3480);
  v213 = (*(v212 - 8) + 56);
  v378 = *v213;
  (*v213)(v211, 1, 5, v212);
  v214 = swift_task_alloc();
  *(v214 + 16) = v211;

  sub_10003CF3C(1, sub_101107D10, v214, v109, v210);

  sub_10003D87C(v211, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v215 = *(v209 + 48);
  if (v215(v210, 1, v380) == 1)
  {
    v380 = *(v0 + 816);
    v216 = *(v0 + 800);
    v217 = *(v0 + 792);
    v109 = *(v0 + 768);
    v378(v109, 1, 5, v212);
    swift_storeEnumTagMultiPayload();
    sub_10003CB2C(v109, _swiftEmptyArrayStorage, v216);
    if (v215(v217, 1, v380) != 1)
    {
      sub_10000CAAC(*(v0 + 792), &unk_1019FB770);
    }
  }

  else
  {
    sub_100025738(*(v0 + 792), *(v0 + 800), _s4NodeVMa);
  }

  v218 = *(v0 + 816);
  v219 = *(v0 + 808);
  v220 = *(v0 + 800);
  (*(*(v0 + 824) + 56))(v220, 0, 1, v218);
  sub_10003DFF8(v220, v219, &unk_1019FB770);
  if (v215(v219, 1, v218) == 1)
  {
    v221 = *(v0 + 808);

    sub_10000CAAC(v221, &unk_1019FB770);
    goto LABEL_148;
  }

  sub_100025738(*(v0 + 808), *(v0 + 840), _s4NodeVMa);
  v224 = v203[2];
  if (v224)
  {
    v109 = *(v0 + 824);
    v225 = *(v0 + 816);
    v226 = *(v0 + 760);
    v383[0] = _swiftEmptyArrayStorage;
    sub_100776804(0, v224, 0);
    v227 = v203 + ((*(v226 + 80) + 32) & ~*(v226 + 80));
    v228 = *(v226 + 72);
    v229 = v383[0];
    do
    {
      v230 = *(v0 + 832);
      sub_10005006C(v227, v230, type metadata accessor for CRLBoardLibraryViewModel.Item);
      *(v230 + *(v225 + 20)) = _swiftEmptyArrayStorage;
      v383[0] = v229;
      v232 = v229[2];
      v231 = v229[3];
      v233 = v229;
      if (v232 >= v231 >> 1)
      {
        sub_100776804(v231 > 1, v232 + 1, 1);
        v233 = v383[0];
      }

      v234 = *(v0 + 832);
      v233[2] = v232 + 1;
      sub_100025738(v234, v233 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v232, _s4NodeVMa);
      v227 += v228;
      --v224;
      v229 = v233;
    }

    while (v224);
  }

  else
  {

    v229 = _swiftEmptyArrayStorage;
  }

  v235 = *(v0 + 840);
  v236 = *(*(v0 + 816) + 20);
  if ((sub_10066F2C0(*(v235 + v236), v229) & 1) == 0)
  {

    *(v235 + v236) = v229;
    v341 = 1;
  }

  v345 = v229;
  v131 = *(v0 + 1272);
  v370 = *(v0 + 992);
  v237 = *(v0 + 952);
  v339 = *(v0 + 736);
  v223 = sub_100BD5878(_swiftEmptyArrayStorage);
  v134 = 0;
  v238 = (v237 + 16);
  v239 = v309;
  v136 = *(v309 + 16);
  v334 = (v237 + 32);
  v336 = (v237 + 8);
  v240 = v131 + 5;
LABEL_159:
  v241 = &v240[2 * v134];
  while (1)
  {
    if (v136 == v134)
    {
      v303 = *(v0 + 840);
      v304 = *(v0 + 704);

      if (v310)
      {
        v305 = 256;
      }

      else
      {
        v305 = 0;
      }

      v381 = v305 & 0xFFFFFFFFFFFFFFFELL | v341 & 1;
      sub_1010F1118(v304, v303);
      sub_10003D87C(v303, _s4NodeVMa);

      v222 = v343;
      goto LABEL_205;
    }

    if (v134 >= *(v239 + 16))
    {
      break;
    }

    v242 = v241 + 2;
    ++v134;
    v109 = *v241;
    v241 += 2;
    if (v109)
    {
      v327 = v240;
      v243 = *(v0 + 968);
      v354 = *(v0 + 960);
      v358 = *(v0 + 944);
      v244 = *(v0 + 936);
      v245 = *(v242 - 3);
      sub_1005B981C(&qword_101A2AD40);
      v366 = sub_1005B981C(&qword_101A145A8);
      v380 = *(v366 - 1);
      v375 = (*(v380 + 80) + 32) & ~*(v380 + 80);
      v379 = swift_allocObject();
      *(v379 + 16) = xmmword_10146C6B0;
      v246 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10005006C(v245 + v246, v244, type metadata accessor for CRLBoardCRDTData);
      v247 = v109;

      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D87C(v244, type metadata accessor for CRLBoardCRDTData);
      v248 = v245 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName;
      v250 = *(v245 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v249 = *(v248 + 8);
      (*v238)(v354, v243, v358);
      v252 = v250 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v249 == v251;
      v329 = v136;
      v331 = v238;
      v362 = v247;
      if (v252 || (v253 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v253 & 1) != 0))
      {

        v250 = 0;
        v249 = 0xE000000000000000;
      }

      v78 = v379 + v375;
      v254 = *(v0 + 960);
      v255 = *(v0 + 944);
      v256 = *(v0 + 744);
      v374 = *(v366 + 12);
      (*v336)(*(v0 + 968), v255);
      (*v334)(v256, v254, v255);
      v257 = (v256 + *(v339 + 20));
      *v257 = v250;
      v257[1] = v249;
      sub_100025738(v256, v78, type metadata accessor for CRLBoardIdentifierStorage);
      *(v78 + v374) = v362;
      v324 = v362;
      v258 = sub_100BD5878(v379);
      swift_setDeallocating();
      sub_10000CAAC(v78, &qword_101A145A8);
      swift_deallocClassInstance();
      v259 = swift_isUniquelyReferenced_nonNull_native();
      v260 = *(v258 + 64);
      v351 = v258 + 64;
      v355 = v258;
      v383[0] = v223;
      v261 = -1 << *(v258 + 32);
      if (-v261 < 64)
      {
        v262 = ~(-1 << -v261);
      }

      else
      {
        v262 = -1;
      }

      v136 = v262 & v260;
      v347 = (63 - v261) >> 6;
      v357 = (v380 + 48);
      v361 = (v380 + 56);

      v263 = 0;
      v109 = &qword_101A2AD48;
LABEL_175:
      LODWORD(v380) = v259;
      if (v136)
      {
        v374 = v223;
        v266 = v263;
        goto LABEL_184;
      }

      if (v347 <= v263 + 1)
      {
        v267 = v263 + 1;
      }

      else
      {
        v267 = v347;
      }

      while (1)
      {
        v266 = v263 + 1;
        if (__OFADD__(v263, 1))
        {
          break;
        }

        if (v266 >= v347)
        {
          v378 = (v267 - 1);
          v301 = *(v0 + 720);
          v302 = sub_1005B981C(&qword_101A2AD48);
          (*(*(v302 - 8) + 56))(v301, 1, 1, v302);
          v136 = 0;
          goto LABEL_185;
        }

        v136 = *(v351 + 8 * v266);
        v263 = (v263 + 1);
        if (v136)
        {
          v374 = v223;
LABEL_184:
          v268 = *(v0 + 1008);
          v269 = *(v0 + 720);
          v270 = __clz(__rbit64(v136));
          v136 &= v136 - 1;
          v271 = v270 | (v266 << 6);
          sub_10005006C(*(v355 + 48) + *(v370 + 9) * v271, v268, type metadata accessor for CRLBoardIdentifier);
          v272 = *(*(v355 + 56) + 8 * v271);
          v273 = sub_1005B981C(&qword_101A2AD48);
          v274 = *(v273 + 48);
          sub_100025738(v268, v269, type metadata accessor for CRLBoardIdentifier);
          *(v269 + v274) = v272;
          v109 = &qword_101A2AD48;
          (*(*(v273 - 8) + 56))(v269, 0, 1, v273);
          v275 = v272;
          v378 = v266;
          v223 = v374;
LABEL_185:
          v276 = *(v0 + 712);
          sub_10003DFF8(*(v0 + 720), v276, &qword_101A2AD18);
          v277 = sub_1005B981C(&qword_101A2AD48);
          v278 = 1;
          if ((*(*(v277 - 8) + 48))(v276, 1, v277) != 1)
          {
            v279 = *(v0 + 728);
            v280 = *(v0 + 712);
            v281 = *(v277 + 48);
            v282 = *(v366 + 12);
            v283 = *(v280 + v281);
            sub_10005006C(v280, v279, type metadata accessor for CRLBoardIdentifier);
            *(v279 + v282) = v283;
            v284 = v283;
            v109 = &qword_101A2AD48;
            sub_10000CAAC(v280, &qword_101A2AD48);
            v278 = 0;
          }

          v285 = *(v0 + 728);
          (*v361)(v285, v278, 1, v366);
          if ((*v357)(v285, 1, v366) == 1)
          {

            LODWORD(v131) = v324;

            v239 = v309;
            v136 = v329;
            v238 = v331;
            v240 = v327;
            goto LABEL_159;
          }

          v131 = *(v0 + 1000);
          v286 = *(v0 + 728);
          v287 = *(v366 + 12);
          sub_100025738(v286, v131, type metadata accessor for CRLBoardIdentifier);
          v288 = *(v286 + v287);
          v289 = v131;
          LODWORD(v131) = v223;
          v291 = sub_1000486F0(v289);
          v292 = v223[2];
          v293 = (v290 & 1) == 0;
          v294 = v292 + v293;
          if (__OFADD__(v292, v293))
          {
            goto LABEL_213;
          }

          v78 = v290;
          if (v223[3] >= v294)
          {
            if (v380)
            {
              v298 = *(v0 + 1000);
              if ((v290 & 1) == 0)
              {
                goto LABEL_195;
              }

              goto LABEL_173;
            }

            v131 = v383;
            sub_100AA6C04();
            v223 = v383[0];
            v298 = *(v0 + 1000);
            if (v78)
            {
              goto LABEL_173;
            }

LABEL_195:
            v223[(v291 >> 6) + 8] |= 1 << v291;
            v192 = sub_100025738(v298, v223[6] + *(v370 + 9) * v291, type metadata accessor for CRLBoardIdentifier);
            *(v223[7] + 8 * v291) = v288;
            v299 = v223[2];
            v14 = __OFADD__(v299, 1);
            v300 = v299 + 1;
            if (!v14)
            {
              v223[2] = v300;
              goto LABEL_174;
            }

            goto LABEL_214;
          }

          v295 = *(v0 + 1000);
          sub_100A8D1B0(v294, v380 & 1);
          v223 = v383[0];
          LODWORD(v131) = v383[0];
          v296 = sub_1000486F0(v295);
          if ((v78 & 1) != (v297 & 1))
          {
            goto LABEL_41;
          }

          v291 = v296;
          v298 = *(v0 + 1000);
          if ((v78 & 1) == 0)
          {
            goto LABEL_195;
          }

LABEL_173:
          sub_10003D87C(v298, type metadata accessor for CRLBoardIdentifier);
          v264 = v223[7];
          v265 = *(v264 + 8 * v291);
          *(v264 + 8 * v291) = v288;

LABEL_174:
          v259 = 1;
          v263 = v378;
          goto LABEL_175;
        }
      }

      __break(1u);
LABEL_210:
      v307 = v192;

      sub_10000CAAC(v307, &unk_1019FA3E0);

      v169 = v357;
      v168 = v361;

      v310 = sub_1010AB188(v308, &v382);

LABEL_132:
      *&v168[v169] = v78;

      v172 = 1;
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  swift_once();
LABEL_71:
  v137 = static OS_os_log.crlAssert;
  v138 = swift_initStackObject();
  *(v138 + 16) = xmmword_10146CA70;
  *(v138 + 56) = &type metadata for Int32;
  *(v138 + 64) = &protocol witness table for Int32;
  *(v138 + 32) = v131;
  v139 = sub_100006370(0, &qword_1019F4D30);
  *(v138 + 96) = v139;
  v140 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v138 + 72) = v370;
  *(v138 + 136) = &type metadata for String;
  *(v138 + 144) = v378;
  *(v138 + 104) = v140;
  *(v138 + 112) = v134;
  *(v138 + 120) = v136;
  *(v138 + 176) = &type metadata for UInt;
  *(v138 + 184) = &protocol witness table for UInt;
  *(v138 + 152) = 3739;
  v141 = v383[0];
  *(v138 + 216) = v139;
  *(v138 + 224) = v140;
  *(v138 + 192) = v141;
  v142 = v370;
  v143 = v141;
  v144 = static os_log_type_t.error.getter();
  sub_100005404(v137, &_mh_execute_header, v144, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v138);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v145 = static os_log_type_t.error.getter();
  sub_100005404(v137, &_mh_execute_header, v145, "Could not find matching metadata row for board identifier %@", 60, 2, v380);

  type metadata accessor for __VaListBuilder();
  v146 = swift_allocObject();
  v146[2] = 8;
  v146[3] = 0;
  v147 = v146 + 3;
  v146[4] = 0;
  v146[5] = 0;
  v148 = *(v380 + 16);
  if (v148)
  {
    v149 = 0;
    while (1)
    {
      v150 = (v109 + 40 * v149);
      v1 = v150[3];
      sub_100020E58(v150, v1);
      v151 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v152 = *v147;
      v153 = *(v151 + 16);
      v14 = __OFADD__(*v147, v153);
      v154 = *v147 + v153;
      if (v14)
      {
        goto LABEL_104;
      }

      v155 = v146[4];
      if (v155 >= v154)
      {
        goto LABEL_88;
      }

      if (v155 + 0x4000000000000000 < 0)
      {
        goto LABEL_106;
      }

      v1 = v146[5];
      if (2 * v155 > v154)
      {
        v154 = 2 * v155;
      }

      v146[4] = v154;
      if ((v154 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_107;
      }

      v156 = v151;
      v157 = swift_slowAlloc();
      v158 = v157;
      v146[5] = v157;
      if (v1)
      {
        break;
      }

      v151 = v156;
      if (!v158)
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_89:
      v160 = *(v151 + 16);
      if (v160)
      {
        v161 = (v151 + 32);
        v162 = *v147;
        while (1)
        {
          v163 = *v161++;
          v158[v162] = v163;
          v162 = *v147 + 1;
          if (__OFADD__(*v147, 1))
          {
            break;
          }

          *v147 = v162;
          if (!--v160)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
        goto LABEL_98;
      }

LABEL_73:

      if (++v149 == v148)
      {
        goto LABEL_96;
      }
    }

    if (v157 != v1 || v157 >= v1 + 8 * v152)
    {
      memmove(v157, v1, 8 * v152);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v151 = v156;
LABEL_88:
    v158 = v146[5];
    if (!v158)
    {
      goto LABEL_95;
    }

    goto LABEL_89;
  }

LABEL_96:
  v349 = *(v0 + 1032);
  v164 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v165 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v166 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v167 = String._bridgeToObjectiveC()();

  [v366 handleFailureInFunction:v165 file:v166 lineNumber:3739 isFatal:0 format:v167 args:v164];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10003D87C(v349, type metadata accessor for CRLBoardIdentifier);

LABEL_148:

  v381 = 0;
  v345 = 0;
  v222 = 0;
  v223 = 0;
LABEL_205:

  v306 = *(v0 + 8);

  return v306(v381, v345, v222, v223);
}

uint64_t sub_1010EE0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v57 = &v50 - v6;
  v7 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - v8;
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s5BoardVMa(0);
  v14 = *(v13 - 1);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = *(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_accepted);
  v58 = v12;
  if (v15 == 1)
  {
    v17 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    swift_beginAccess();
    v18 = *(v2 + v17);
    if (*(v18 + 16))
    {
      v19 = sub_1000486F0(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier);
      if (v20)
      {
        sub_10005006C(*(v18 + 56) + *(v14 + 72) * v19, v16, _s5BoardVMa);
        sub_100025738(v16, a2, _s5BoardVMa);
        return swift_endAccess();
      }
    }

    swift_endAccess();
    v12 = v58;
  }

  v22 = OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier;
  sub_10005006C(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardIdentifier, v12, type metadata accessor for CRLBoardIdentifier);
  v23 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = *(v24 + 16);
  v56 = v9;
  if (v25 && (v26 = sub_1000486F0(a1 + v22), (v27 & 1) != 0))
  {
    v28 = v26;
    v29 = *(v24 + 56);
    v30 = type metadata accessor for CRLFolderIdentifier(0);
    v31 = *(v30 - 8);
    sub_10005006C(v29 + *(v31 + 72) * v28, v9, type metadata accessor for CRLFolderIdentifier);
    (*(v31 + 56))(v9, 0, 1, v30);
  }

  else
  {
    v32 = type metadata accessor for CRLFolderIdentifier(0);
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
  }

  swift_endAccess();
  v33 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle);
  v53 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_boardTitle + 8);
  v54 = v33;

  static Date.distantPast.getter();
  v55 = OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_timeStamp;
  v34 = (a2 + v13[20]);
  v35 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString + 8);
  v51 = *(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareString);
  v36 = OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_shareURL;
  v37 = type metadata accessor for URL();
  v38 = *(v37 - 8);
  v39 = v57;
  (*(v38 + 16))(v57, a1 + v36, v37);
  v52 = a1;
  v40 = *(v38 + 56);
  v40(v39, 0, 1, v37);
  v41 = _s5BoardV13ShareMetadataVMa(0);
  v42 = v41[5];
  v40(&v34[v42], 1, 1, v37);
  v43 = &v34[v41[6]];
  *v43 = v51;
  v43[1] = v35;
  v44 = &v34[v41[8]];
  v44[48] = 0;
  *(v44 + 1) = 0u;
  *(v44 + 2) = 0u;
  *v44 = 0u;
  *v34 = 0;
  *&v34[v41[7]] = 0;

  sub_10002C638(v39, &v34[v42], &unk_1019F33C0);
  (*(*(v41 - 1) + 56))(v34, 0, 1, v41);
  sub_100025738(v58, a2, type metadata accessor for CRLBoardIdentifier);
  sub_10003DFF8(v56, a2 + v13[5], &qword_1019F33E0);
  v45 = (a2 + v13[6]);
  v46 = v53;
  *v45 = v54;
  v45[1] = v46;
  v47 = v13[8];
  v48 = type metadata accessor for Date();
  result = (*(*(v48 - 8) + 16))(a2 + v47, v52 + v55, v48);
  *(a2 + v13[9]) = 0;
  *(a2 + v13[10]) = 1;
  *(a2 + v13[11]) = 1;
  *(a2 + v13[12]) = 0;
  *(a2 + v13[13]) = 0;
  *(a2 + v13[14]) = 0;
  *(a2 + v13[15]) = 1;
  *(a2 + v13[16]) = 0;
  *(a2 + v13[17]) = 0;
  *(a2 + v13[18]) = 0;
  v49 = a2 + v13[19];
  *v49 = 0;
  *(v49 + 8) = 1;
  return result;
}

uint64_t sub_1010EE72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v83 = &v76 - v6;
  v7 = sub_1005B981C(&unk_1019FA3E0);
  v8 = __chkstk_darwin(v7 - 8);
  v81 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v82 = (&v76 - v11);
  __chkstk_darwin(v10);
  v13 = &v76 - v12;
  v14 = type metadata accessor for Date();
  v85 = *(v14 - 8);
  v86 = v14;
  v15 = __chkstk_darwin(v14);
  v78 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v79 = &v76 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v76 - v20;
  __chkstk_darwin(v19);
  v80 = &v76 - v22;
  v23 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v24 = __chkstk_darwin(v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v76 - v27;
  v29 = _s5BoardVMa(0);
  v84 = *(v29 - 8);
  v30 = __chkstk_darwin(v29);
  v88 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v76 - v32;
  sub_10005006C(a1, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v42 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v43 = v28;
LABEL_8:
    sub_10003D87C(v43, v42);
    goto LABEL_9;
  }

  sub_100025738(v28, v33, _s5BoardVMa);
  sub_10005006C(a2, v26, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10003D87C(v33, _s5BoardVMa);
    v42 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v43 = v26;
    goto LABEL_8;
  }

  sub_100025738(v26, v88, _s5BoardVMa);
  v34 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  v35 = v87;
  swift_beginAccess();
  v36 = *(v35 + v34);
  v37 = *(v36 + 16);
  v77 = v33;
  if (v37 && (v38 = sub_1000486F0(v33), (v39 & 1) != 0))
  {
    v40 = v84;
    sub_10005006C(*(v36 + 56) + v84[9] * v38, v13, _s5BoardVMa);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v84;
  }

  v46 = v40[7];
  v46(v13, v41, 1, v29);
  v76 = v40[6];
  if (!v76(v13, 1, v29))
  {
    v54 = v85;
    v53 = v86;
    v55 = &v13[*(v29 + 32)];
    v82 = *(v85 + 16);
    v83 = (v85 + 16);
    v82(v21, v55, v86);
    sub_10000CAAC(v13, &unk_1019FA3E0);
    swift_endAccess();
    v56 = *(v54 + 32);
    v57 = v80;
    v58 = v21;
    v59 = v56;
    v56(v80, v58, v53);
    v60 = v87;
    swift_beginAccess();
    v61 = *(v60 + v34);
    if (*(v61 + 16) && (v62 = sub_1000486F0(v88), (v63 & 1) != 0))
    {
      v64 = *(v61 + 56) + v84[9] * v62;
      v65 = v81;
      sub_10005006C(v64, v81, _s5BoardVMa);
      v66 = 0;
    }

    else
    {
      v66 = 1;
      v65 = v81;
    }

    v46(v65, v66, 1, v29);
    if (!v76(v65, 1, v29))
    {
      v71 = v65 + *(v29 + 32);
      v72 = v78;
      v73 = v86;
      v82(v78, v71, v86);
      sub_10000CAAC(v65, &unk_1019FA3E0);
      swift_endAccess();
      v74 = v79;
      v59(v79, v72, v73);
      v44 = static Date.> infix(_:_:)();
      v75 = *(v85 + 8);
      v75(v74, v73);
      v75(v57, v73);
      sub_10003D87C(v88, _s5BoardVMa);
      sub_10003D87C(v77, _s5BoardVMa);
      return v44 & 1;
    }

    sub_10000CAAC(v65, &unk_1019FA3E0);
    swift_endAccess();
    (*(v85 + 8))(v57, v86);
    sub_10003D87C(v88, _s5BoardVMa);
    v43 = v77;
    v42 = _s5BoardVMa;
    goto LABEL_8;
  }

  sub_10000CAAC(v13, &unk_1019FA3E0);
  swift_endAccess();
  v47 = v87;
  swift_beginAccess();
  v48 = *(v47 + v34);
  if (*(v48 + 16))
  {
    v49 = sub_1000486F0(v88);
    v50 = v82;
    if (v51)
    {
      sub_10005006C(*(v48 + 56) + v40[9] * v49, v82, _s5BoardVMa);
      v52 = 0;
    }

    else
    {
      v52 = 1;
    }
  }

  else
  {
    v52 = 1;
    v50 = v82;
  }

  v46(v50, v52, 1, v29);
  if (!v76(v50, 1, v29))
  {
    v69 = v85;
    v68 = v86;
    v70 = v83;
    (*(v85 + 16))(v83, &v50[*(v29 + 32)], v86);
    sub_10000CAAC(v50, &unk_1019FA3E0);
    swift_endAccess();
    sub_10003D87C(v88, _s5BoardVMa);
    sub_10003D87C(v77, _s5BoardVMa);
    v44 = 1;
    (*(v69 + 56))(v70, 0, 1, v68);
    sub_10000CAAC(v70, &qword_101A0A320);
    return v44 & 1;
  }

  sub_10000CAAC(v50, &unk_1019FA3E0);
  swift_endAccess();
  sub_10003D87C(v88, _s5BoardVMa);
  sub_10003D87C(v77, _s5BoardVMa);
  v67 = v83;
  (*(v85 + 56))(v83, 1, 1, v86);
  sub_10000CAAC(v67, &qword_101A0A320);
LABEL_9:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_1010EF07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v54 = sub_1005B981C(&qword_101A2AD00);
  __chkstk_darwin(v54);
  v7 = &v45 - v6;
  v8 = sub_1005B981C(&unk_1019FA3E0);
  v9 = __chkstk_darwin(v8 - 8);
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v53 = &v45 - v12;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = _s5BoardVMa(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v20 = &v45 - v19;
  __chkstk_darwin(v18);
  v23 = &v45 - v22;
  if (*(a2 + 16))
  {
    v49 = v21;
    v50 = a1;
    v24 = sub_1000486F0(a1);
    if (v25)
    {
      v47 = v7;
      v48 = v3;
      v26 = *(a2 + 56);
      v45 = v16[9];
      sub_10005006C(v26 + v45 * v24, v20, _s5BoardVMa);
      sub_100025738(v20, v23, _s5BoardVMa);
      v46 = v23;
      sub_10005006C(v23, v14, _s5BoardVMa);
      v27 = v16[7];
      v28 = 1;
      v27(v14, 0, 1, v15);
      v29 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
      v30 = v52;
      swift_beginAccess();
      v31 = *(v30 + v29);
      if (*(v31 + 16))
      {
        v32 = sub_1000486F0(v50);
        v33 = v53;
        if (v34)
        {
          sub_10005006C(*(v31 + 56) + v32 * v45, v53, _s5BoardVMa);
          v28 = 0;
        }
      }

      else
      {
        v33 = v53;
      }

      v27(v33, v28, 1, v15);
      swift_endAccess();
      v36 = *(v54 + 48);
      v37 = v47;
      sub_10000BE14(v14, v47, &unk_1019FA3E0);
      v38 = v36;
      sub_10000BE14(v33, v37 + v36, &unk_1019FA3E0);
      v39 = v16[6];
      if (v39(v37, 1, v15) == 1)
      {
        sub_10000CAAC(v33, &unk_1019FA3E0);
        sub_10000CAAC(v14, &unk_1019FA3E0);
        sub_10003D87C(v46, _s5BoardVMa);
        if (v39(v37 + v38, 1, v15) == 1)
        {
          sub_10000CAAC(v37, &unk_1019FA3E0);
          v35 = 0;
          return v35 & 1;
        }
      }

      else
      {
        v40 = v51;
        sub_10000BE14(v37, v51, &unk_1019FA3E0);
        if (v39(v37 + v38, 1, v15) != 1)
        {
          v41 = v49;
          sub_100025738(v37 + v38, v49, _s5BoardVMa);
          v42 = v40;
          v43 = sub_1013030EC(v40, v41);
          sub_10003D87C(v41, _s5BoardVMa);
          sub_10000CAAC(v33, &unk_1019FA3E0);
          sub_10000CAAC(v14, &unk_1019FA3E0);
          sub_10003D87C(v46, _s5BoardVMa);
          sub_10003D87C(v42, _s5BoardVMa);
          sub_10000CAAC(v37, &unk_1019FA3E0);
          v35 = !v43;
          return v35 & 1;
        }

        sub_10000CAAC(v33, &unk_1019FA3E0);
        sub_10000CAAC(v14, &unk_1019FA3E0);
        sub_10003D87C(v46, _s5BoardVMa);
        sub_10003D87C(v40, _s5BoardVMa);
      }

      sub_10000CAAC(v37, &qword_101A2AD00);
      v35 = 1;
      return v35 & 1;
    }
  }

  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1010EF61C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v97 = a4;
  v98 = a5;
  v99 = a3;
  v93 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  __chkstk_darwin(v93);
  v94 = &v86[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Date();
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = __chkstk_darwin(v12);
  v105 = &v86[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v104 = &v86[-v15];
  v16 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v16 - 8);
  v103 = &v86[-v17];
  v18 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v86[-v19];
  v101 = type metadata accessor for CRLBoardCRDTData(0);
  v21 = __chkstk_darwin(v101);
  v23 = &v86[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v25 = &v86[-v24];
  v26 = type metadata accessor for UUID();
  __chkstk_darwin(v26 - 8);
  v28 = &v86[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for CRLBoardIdentifier(0);
  v30 = __chkstk_darwin(v29 - 8);
  v102 = &v86[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v33 = &v86[-v32];
  v34 = a1 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v100 = v34;
  sub_10005006C(v34, v25, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v25, type metadata accessor for CRLBoardCRDTData);
  v35 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v36 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  sub_10084BD4C(v28, v35, v36, v33);
  v37 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  swift_beginAccess();
  if (*(*(v7 + v37) + 16) && (sub_1000486F0(v33), (v38 & 1) != 0))
  {
    swift_endAccess();

    sub_1010D85C8(v20);
  }

  else
  {
    swift_endAccess();
    v39 = v99;
    if (v99)
    {
      v90 = a2;
      v40 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_collaborationOwners;
      swift_beginAccess();
      v41 = *(v7 + v40);
      v42 = *(v41 + 16);
      v43 = v39;
      if (v42 && (v44 = sub_1000486F0(v33), (v45 & 1) != 0))
      {
        v46 = *(*(v41 + 56) + 8 * v44);
        swift_endAccess();
        v47 = v46;
        sub_1012FFD64(v46, v99, v20);
      }

      else
      {
        swift_endAccess();
        v48 = [v43 owner];
        v49 = objc_allocWithZone(type metadata accessor for CRLCollaborationParticipant(0));
        v50 = sub_1007D4760(v48, 1);
        swift_beginAccess();
        v51 = v50;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v106 = *(v7 + v40);
        *(v7 + v40) = 0x8000000000000000;
        sub_100A9CB24(v51, v33, isUniquelyReferenced_nonNull_native);
        *(v7 + v40) = v106;
        swift_endAccess();
        sub_1012FFD64(v50, v99, v20);
      }

      a2 = v90;
    }

    else
    {
      v53 = _s5BoardV13ShareMetadataVMa(0);
      (*(*(v53 - 8) + 56))(v20, 1, 1, v53);
    }
  }

  sub_10005006C(v33, v102, type metadata accessor for CRLBoardIdentifier);
  v54 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardToParentFolderMapping;
  swift_beginAccess();
  v55 = *(v7 + v54);
  v56 = *(v55 + 16);
  v99 = v20;
  v92 = v7;
  v91 = v33;
  if (v56 && (v57 = sub_1000486F0(v33), (v58 & 1) != 0))
  {
    v59 = v57;
    v60 = *(v55 + 56);
    v61 = type metadata accessor for CRLFolderIdentifier(0);
    v62 = a2;
    v63 = *(v61 - 8);
    v64 = v60 + *(v63 + 72) * v59;
    v65 = v103;
    sub_10005006C(v64, v103, type metadata accessor for CRLFolderIdentifier);
    (*(v63 + 56))(v65, 0, 1, v61);
    a2 = v62;
  }

  else
  {
    v66 = type metadata accessor for CRLFolderIdentifier(0);
    (*(*(v66 - 8) + 56))(v103, 1, 1, v66);
  }

  swift_endAccess();
  v67 = v100;
  sub_10005006C(v100, v23, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v23, type metadata accessor for CRLBoardCRDTData);
  v93 = v107;
  v90 = v108;
  sub_10005006C(v67, v25, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_1019F4850);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v25, type metadata accessor for CRLBoardCRDTData);
  Date.init(timeIntervalSinceReferenceDate:)();
  sub_10005006C(v67, v25, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_1019F4858);
  CRMaxRegister.wrappedValue.getter();
  sub_10003D87C(v25, type metadata accessor for CRLBoardCRDTData);
  v68 = Date.init(timeIntervalSinceReferenceDate:)();
  v89 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_enableCollaboratorCursors);
  v69 = *(*(v92 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  __chkstk_darwin(v68);
  v70 = v91;
  *&v86[-16] = v91;

  v71 = sub_1010AA984(sub_100F794EC, &v86[-32], v69);

  if (v71)
  {
  }

  LODWORD(v92) = v71 != 0;
  v88 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isCanvasDotGridEnabled);
  v87 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isConnectorModeEnabled);
  v72 = v94;
  sub_10005006C(v100 + *(v101 + 32), v94, type metadata accessor for CRLSharedBoardMetadataCRDTData);
  sub_1005B981C(&qword_101A2C810);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v72, type metadata accessor for CRLSharedBoardMetadataCRDTData);
  v73 = v107;
  sub_10003D87C(v70, type metadata accessor for CRLBoardIdentifier);
  v74 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isFavorite);
  v75 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_isScenesNavigatorOpen);
  v76 = a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion;
  v77 = *(a2 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_lastOpenCrashedVersion);
  v78 = *(v76 + 8);
  sub_100025738(v102, a6, type metadata accessor for CRLBoardIdentifier);
  v79 = _s5BoardVMa(0);
  sub_10003DFF8(v103, a6 + v79[5], &qword_1019F33E0);
  v80 = (a6 + v79[6]);
  v81 = v90;
  *v80 = v93;
  v80[1] = v81;
  v82 = v96;
  v83 = *(v95 + 32);
  v83(a6 + v79[7], v104, v96);
  v83(a6 + v79[8], v105, v82);
  *(a6 + v79[9]) = v89;
  *(a6 + v79[10]) = v92;
  *(a6 + v79[11]) = v88;
  *(a6 + v79[12]) = v87;
  *(a6 + v79[13]) = v73;
  *(a6 + v79[14]) = v74;
  *(a6 + v79[15]) = 0;
  *(a6 + v79[16]) = v75;
  *(a6 + v79[17]) = v97 & 1;
  *(a6 + v79[18]) = v98 & 1;
  v84 = a6 + v79[19];
  *v84 = v77;
  *(v84 + 8) = v78;
  return sub_10003DFF8(v99, a6 + v79[20], &qword_1019F33D0);
}

uint64_t sub_1010F0120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v94 = a5;
  v87 = a4;
  v88 = a3;
  v93 = a6;
  v8 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v8 - 8);
  v89 = &v85 - v9;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13 - 8);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLBoardIdentifier(0);
  v17 = __chkstk_darwin(v16 - 8);
  v86 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v85 - v19;
  v22 = *a1;
  v21 = a1[1];
  v23 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v24 = v22 + v23;
  v25 = v20;
  sub_10005006C(v24, v12, type metadata accessor for CRLBoardCRDTData);
  v26 = v21;

  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D87C(v12, type metadata accessor for CRLBoardCRDTData);
  v91 = v22;
  v28 = *(v22 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v27 = *(v22 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);

  sub_10084BD4C(v15, v28, v27, v20);
  v29 = *(a2 + 16);
  v85 = v21;
  if (v29 && (v30 = sub_1000486F0(v20), (v31 & 1) != 0))
  {
    v32 = *(*(a2 + 56) + 8 * v30);
  }

  else
  {
    v32 = 0;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v34 = sub_10084B8C8();
  v36 = v35;
  *(inited + 56) = &type metadata for String;
  v37 = sub_1000053B0();
  *(inited + 32) = v34;
  *(inited + 64) = v37;
  *(inited + 40) = v36;
  v92 = v25;
  v90 = v26;
  if (v32)
  {
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v38 = sub_10079DDA0(v25, v87);
    v39 = v93;
    sub_1010EF61C(v91, v32, v85, 0, v38 & 1, v93);
    v40 = v86;
    sub_10005006C(v25, v86, type metadata accessor for CRLBoardIdentifier);
    v41 = v89;
    sub_10005006C(v39, v89, _s5BoardVMa);
    v42 = _s5BoardVMa(0);
    v43 = *(*(v42 - 8) + 56);
    v43(v41, 0, 1, v42);
    sub_100BC2C20(v41, v40);

    sub_10003D87C(v92, type metadata accessor for CRLBoardIdentifier);
    return (v43)(v39, 0, 1, v42);
  }

  v94 = v37;
  v95 = inited + 32;
  v87 = objc_opt_self();
  LODWORD(v45) = [v87 _atomicIncrementAssertCount];
  v96 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v96);
  StaticString.description.getter();
  v88 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  v47 = [v46 lastPathComponent];

  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v89 = inited;
  if (qword_1019F20A0 != -1)
  {
    goto LABEL_38;
  }

LABEL_8:
  v51 = static OS_os_log.crlAssert;
  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_10146CA70;
  *(v52 + 56) = &type metadata for Int32;
  *(v52 + 64) = &protocol witness table for Int32;
  *(v52 + 32) = v45;
  v53 = sub_100006370(0, &qword_1019F4D30);
  *(v52 + 96) = v53;
  v54 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v55 = v88;
  *(v52 + 72) = v88;
  v56 = v94;
  *(v52 + 136) = &type metadata for String;
  *(v52 + 144) = v56;
  *(v52 + 104) = v54;
  *(v52 + 112) = v48;
  *(v52 + 120) = v50;
  *(v52 + 176) = &type metadata for UInt;
  *(v52 + 184) = &protocol witness table for UInt;
  *(v52 + 152) = 3726;
  v57 = v96;
  *(v52 + 216) = v53;
  *(v52 + 224) = v54;
  *(v52 + 192) = v57;
  v58 = v55;
  v59 = v57;
  v60 = static os_log_type_t.error.getter();
  sub_100005404(v51, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
  swift_setDeallocating();
  v88 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v61 = static os_log_type_t.error.getter();
  v62 = v89;
  sub_100005404(v51, &_mh_execute_header, v61, "Could not find matching metadata row for board identifier %@", 60, 2, v89);

  type metadata accessor for __VaListBuilder();
  v63 = swift_allocObject();
  v63[2] = 8;
  v63[3] = 0;
  v64 = v63 + 3;
  v63[4] = 0;
  v63[5] = 0;
  v48 = *(v62 + 16);
  v45 = v95;
  if (v48)
  {
    v50 = 0;
    v94 = *(v62 + 16);
    while (1)
    {
      sub_100020E58((v45 + 40 * v50), *(v45 + 40 * v50 + 24));
      v65 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v66 = *v64;
      v67 = *(v65 + 16);
      v68 = __OFADD__(*v64, v67);
      v69 = *v64 + v67;
      if (v68)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        swift_once();
        goto LABEL_8;
      }

      v70 = v63[4];
      if (v70 >= v69)
      {
        goto LABEL_25;
      }

      if (v70 + 0x4000000000000000 < 0)
      {
        goto LABEL_36;
      }

      v71 = v63[5];
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      v63[4] = v69;
      if ((v69 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_37;
      }

      v72 = v65;
      v73 = swift_slowAlloc();
      v74 = v73;
      v63[5] = v73;
      if (v71)
      {
        break;
      }

      v65 = v72;
      v48 = v94;
      v45 = v95;
      if (!v74)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_26:
      v76 = *(v65 + 16);
      if (v76)
      {
        v77 = (v65 + 32);
        v78 = *v64;
        while (1)
        {
          v79 = *v77++;
          *&v74[8 * v78] = v79;
          v78 = *v64 + 1;
          if (__OFADD__(*v64, 1))
          {
            break;
          }

          *v64 = v78;
          if (!--v76)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_10:

      if (++v50 == v48)
      {
        goto LABEL_33;
      }
    }

    if (v73 != v71 || v73 >= &v71[8 * v66])
    {
      memmove(v73, v71, 8 * v66);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v65 = v72;
    v48 = v94;
    v45 = v95;
LABEL_25:
    v74 = v63[5];
    if (!v74)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_33:
  v80 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v81 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v82 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v83 = String._bridgeToObjectiveC()();

  [v87 handleFailureInFunction:v81 file:v82 lineNumber:3726 isFatal:0 format:v83 args:v80];

  swift_setDeallocating();
  swift_arrayDestroy();
  sub_10003D87C(v92, type metadata accessor for CRLBoardIdentifier);

  v84 = _s5BoardVMa(0);
  return (*(*(v84 - 8) + 56))(v93, 1, 1, v84);
}

uint64_t sub_1010F0AB8(uint64_t a1, uint64_t *a2)
{
  v50 = a2;
  v53 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v51);
  v52 = &v47 - v5;
  v6 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_1005B981C(&qword_1019F33E0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v47 - v14;
  __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = _s5BoardVMa(0);
  v19 = a1 + *(v18 + 20);
  v54 = v17;
  sub_10000BE14(v19, v17, &qword_1019F33E0);
  v20 = *v50;
  if (*(*v50 + 16) && (v21 = sub_1000486F0(a1), (v22 & 1) != 0))
  {
    v23 = *(v20 + 56);
    v24 = *(v18 - 8);
    sub_10005006C(v23 + *(v24 + 72) * v21, v8, _s5BoardVMa);
    v25 = 0;
  }

  else
  {
    v24 = *(v18 - 8);
    v25 = 1;
  }

  v26 = v12;
  v27 = v54;
  v28 = v15;
  (*(v24 + 56))(v8, v25, 1, v18);
  v29 = (*(v24 + 48))(v8, 1, v18);
  v30 = v52;
  v31 = v53;
  v49 = v26;
  if (v29)
  {
    sub_10000CAAC(v8, &unk_1019FA3E0);
    (*(v3 + 56))(v28, 1, 1, v31);
  }

  else
  {
    sub_10000BE14(&v8[*(v18 + 20)], v28, &qword_1019F33E0);
    sub_10000CAAC(v8, &unk_1019FA3E0);
  }

  v32 = *(v51 + 48);
  sub_10000BE14(v27, v30, &qword_1019F33E0);
  sub_10000BE14(v28, v30 + v32, &qword_1019F33E0);
  v33 = v27;
  v34 = *(v3 + 48);
  if (v34(v30, 1, v31) == 1)
  {
    sub_10000CAAC(v28, &qword_1019F33E0);
    sub_10000CAAC(v33, &qword_1019F33E0);
    if (v34(v30 + v32, 1, v31) == 1)
    {
      sub_10000CAAC(v30, &qword_1019F33E0);
      v35 = 0;
      return v35 & 1;
    }

LABEL_13:
    sub_10000CAAC(v30, &qword_1019F33E8);
    v35 = 1;
    return v35 & 1;
  }

  v36 = v49;
  sub_10000BE14(v30, v49, &qword_1019F33E0);
  if (v34(v30 + v32, 1, v31) == 1)
  {
    sub_10000CAAC(v28, &qword_1019F33E0);
    sub_10000CAAC(v54, &qword_1019F33E0);
    sub_10003D87C(v36, type metadata accessor for CRLFolderIdentifier);
    goto LABEL_13;
  }

  v37 = v30 + v32;
  v38 = v48;
  sub_100025738(v37, v48, type metadata accessor for CRLFolderIdentifier);
  v39 = static UUID.== infix(_:_:)();
  v40 = v54;
  if (v39)
  {
    v41 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
    v42 = *(v36 + v41);
    v43 = *(v36 + v41 + 8);
    v44 = (v38 + v41);
    if (v42 == *v44 && v43 == v44[1])
    {
      sub_10000CAAC(v28, &qword_1019F33E0);
      sub_10000CAAC(v40, &qword_1019F33E0);
      v35 = 0;
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_10000CAAC(v28, &qword_1019F33E0);
      sub_10000CAAC(v40, &qword_1019F33E0);
      v35 = v45 ^ 1;
    }
  }

  else
  {
    sub_10000CAAC(v28, &qword_1019F33E0);
    sub_10000CAAC(v40, &qword_1019F33E0);
    v35 = 1;
  }

  sub_10003D87C(v38, type metadata accessor for CRLFolderIdentifier);
  sub_10003D87C(v36, type metadata accessor for CRLFolderIdentifier);
  sub_10000CAAC(v30, &qword_1019F33E0);
  return v35 & 1;
}

uint64_t sub_1010F1118(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = _s4NodeVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005006C(a2, v10, _s4NodeVMa);
  v11 = a1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v15 = *v11;
  sub_10005006C(v10, v6, _s4NodeVMa);
  (*(v8 + 56))(v6, 0, 1, v7);

  sub_100A147B4(v6, &v15);
  sub_10000CAAC(v6, &unk_1019FB770);
  sub_100035FBC(v15, v16);
  sub_10003D87C(v10, _s4NodeVMa);
  v12 = v16[1];
  *v11 = v16[0];
  *(v11 + 16) = v12;
  *(v11 + 32) = v16[2];
}

uint64_t sub_1010F132C(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_101106314();
  if (v6)
  {
    v7 = v6;
    v30 = v1;
    v31 = sub_1010A8ECC(v6);
    sub_1005B981C(&unk_1019F4D80);
    sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
    v8 = BidirectionalCollection<>.joined(separator:)();
    v10 = v9;

    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 64) = v13;
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v14 = Notification.description.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v13;
    *(inited + 72) = v14;
    *(inited + 80) = v15;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "Updating metadata for boards (%@) for notification: %@", 54, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v17 = v30;
    sub_1010F16E4(a1);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    type metadata accessor for MainActor();
    v19 = v17;
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v19;
    v21[5] = v7;
    sub_10064191C(0, 0, v5, &unk_1014C5F18, v21);
  }

  else
  {
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146C6B0;
    v25 = Notification.description.getter();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_1000053B0();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v28, "No board identifier for notification: %@", 40, 2, v24);
    swift_setDeallocating();
    return sub_100005070(v24 + 32);
  }
}

uint64_t sub_1010F16E4(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = v38 - v7;
  v9 = Notification.name.getter();
  if (qword_1019F2540 != -1)
  {
    swift_once();
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
    goto LABEL_5;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v14 & 1) == 0)
  {
    v9 = Notification.name.getter();
    if (qword_1019F2538 != -1)
    {
      swift_once();
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
      goto LABEL_5;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_7;
    }

    v9 = Notification.name.getter();
    if (qword_1019F2548 != -1)
    {
      swift_once();
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
    {
LABEL_5:

      goto LABEL_7;
    }

    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v9 = Notification.name.getter();
      if (qword_1019F2528 != -1)
      {
        swift_once();
      }

      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
      if (v33 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v35 != v36)
      {
        v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v37 & 1) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

LABEL_7:
  result = sub_101106314();
  if (result)
  {
    v16 = result;
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
    v18 = v2;
    (*(v3 + 16))(v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    type metadata accessor for MainActor();
    v19 = v38[1];
    v20 = static MainActor.shared.getter();
    v21 = (*(v3 + 80) + 48) & ~*(v3 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v20;
    *(v22 + 3) = &protocol witness table for MainActor;
    *(v22 + 4) = v16;
    *(v22 + 5) = v19;
    (*(v3 + 32))(&v22[v21], v5, v18);
    sub_10064191C(0, 0, v8, &unk_1014C5F28, v22);
  }

  return result;
}

uint64_t sub_1010F1BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10007EE50;

  return sub_1010C56AC(2, a5);
}

uint64_t sub_1010F1D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a4;
  v5[46] = a5;
  sub_1005B981C(&qword_1019FB750);
  v5[47] = swift_task_alloc();
  v5[48] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = type metadata accessor for MainActor();
  v5[52] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[53] = v6;
  *v6 = v5;
  v6[1] = sub_1010F1EA0;

  return sub_1010C56AC(1, _swiftEmptySetSingleton);
}

uint64_t sub_1010F1EA0()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010F1FDC, v1, v0);
}

uint64_t sub_1010F1FDC()
{

  v1 = Notification.userInfo.getter();
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  *(v0 + 328) = 0xD000000000000017;
  *(v0 + 336) = 0x800000010155F8C0;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1000640CC(v0 + 136), (v4 & 1) == 0))
  {

    sub_100064234(v0 + 136);
LABEL_8:
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    goto LABEL_9;
  }

  sub_100064288(*(v2 + 56) + 32 * v3, v0 + 176);
  sub_100064234(v0 + 136);

  if (!*(v0 + 200))
  {
LABEL_9:
    sub_10000CAAC(v0 + 176, &unk_1019F4D00);
    goto LABEL_10;
  }

  sub_1005B981C(&unk_101A22E80);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 352);
    goto LABEL_11;
  }

LABEL_10:
  v5 = _swiftEmptySetSingleton;
LABEL_11:
  v6 = Notification.userInfo.getter();
  if (!v6)
  {
LABEL_18:
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_19;
  }

  v7 = v6;
  *(v0 + 312) = 0xD00000000000001BLL;
  *(v0 + 320) = 0x80000001015A4B60;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v8 = sub_1000640CC(v0 + 96), (v9 & 1) == 0))
  {

    sub_100064234(v0 + 96);
    goto LABEL_18;
  }

  sub_100064288(*(v7 + 56) + 32 * v8, v0 + 208);
  sub_100064234(v0 + 96);

  if (!*(v0 + 232))
  {
LABEL_19:
    sub_10000CAAC(v0 + 208, &unk_1019F4D00);
    goto LABEL_20;
  }

  sub_1005B981C(&unk_101A22E80);
  if (swift_dynamicCast())
  {
    v10 = *(v0 + 344);
    goto LABEL_21;
  }

LABEL_20:
  v10 = _swiftEmptySetSingleton;
LABEL_21:
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
LABEL_28:
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    goto LABEL_29;
  }

  v12 = v11;
  *(v0 + 296) = 0x446C61636F4C7369;
  *(v0 + 304) = 0xEF6E6F6974656C65;
  AnyHashable.init<A>(_:)();
  if (!*(v12 + 16) || (v13 = sub_1000640CC(v0 + 56), (v14 & 1) == 0))
  {

    sub_100064234(v0 + 56);
    goto LABEL_28;
  }

  sub_100064288(*(v12 + 56) + 32 * v13, v0 + 240);
  sub_100064234(v0 + 56);

  if (!*(v0 + 264))
  {
LABEL_29:
    sub_10000CAAC(v0 + 240, &unk_1019F4D00);
    v16 = 2;
    goto LABEL_30;
  }

  v15 = swift_dynamicCast();
  v16 = *(v0 + 432);
  if (!v15)
  {
    v16 = 2;
  }

LABEL_30:
  v53 = v16;
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = [v17 BOOLForKey:@"CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault"];

  if (v18)
  {

    if (qword_1019F2130 != -1)
    {
LABEL_54:
      swift_once();
    }

    v19 = static OS_os_log.crlBoardLibrary;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v20, "CRLAllowInteractionWithUnsupportedBoardAndBoardItemsUserDefault set to true, ignoring boardIdentifiersToClose with unsupported identifiers.", 139, 2, _swiftEmptyArrayStorage);

    v21 = v5;
  }

  else
  {

    v21 = sub_1010ACDC4(v10, v5);
  }

  v22 = 0;
  v23 = v21 + 56;
  v24 = -1;
  v25 = -1 << *(v21 + 32);
  v58 = *(v0 + 384);
  v59 = *(v0 + 360);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v21 + 56);
  v57 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  v51 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController;
  v27 = (63 - v25) >> 6;
  v54 = v5;
  v52 = v21;
  while (v26)
  {
LABEL_44:
    v30 = *(v0 + 392);
    v29 = *(v0 + 400);
    sub_10005006C(*(v21 + 48) + *(v58 + 72) * (__clz(__rbit64(v26)) | (v22 << 6)), v29, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v29, v30, type metadata accessor for CRLBoardIdentifier);
    swift_beginAccess();
    v31 = *(v59 + v57);
    if (*(v31 + 16) && (v32 = sub_1000486F0(*(v0 + 392)), (v33 & 1) != 0))
    {
      v34 = *(v0 + 392);
      v35 = *(*(v31 + 56) + 8 * v32);
      swift_endAccess();
      v55 = *(*(v35 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v56 = sub_10079DDA0(v34, v5);
      if (v56)
      {
        v36 = *(v0 + 392);
        v37 = *(*(v59 + v51) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
        v38 = swift_task_alloc();
        *(v38 + 16) = v36;

        v39 = sub_1010AA984(sub_100F794EC, v38, v37);

        if (v39)
        {
          sub_1005B981C(&unk_1019F4D60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_101465920;
          *(inited + 32) = v39;
          v41 = v39;
          sub_1005EE734(inited);

          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      v42 = *(v0 + 376);
      v43 = *(v0 + 360);
      v44 = type metadata accessor for TaskPriority();
      (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
      v45 = v55;
      v46 = v43;
      v47 = static MainActor.shared.getter();
      v48 = swift_allocObject();
      *(v48 + 16) = v47;
      *(v48 + 24) = &protocol witness table for MainActor;
      *(v48 + 32) = v45;
      *(v48 + 40) = v56 & 1;
      *(v48 + 41) = v53;
      *(v48 + 48) = v46;
      sub_10064191C(0, 0, v42, &unk_1014C5EF0, v48);

      sub_1010BD2EC(v45);

      v5 = v54;
      v21 = v52;
    }

    else
    {
      swift_endAccess();
    }

    v26 &= v26 - 1;
    sub_10003D87C(*(v0 + 392), type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v28 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v28 >= v27)
    {
      break;
    }

    v26 = *(v23 + 8 * v28);
    ++v22;
    if (v26)
    {
      v22 = v28;
      goto LABEL_44;
    }
  }

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1010F2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v6[17] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[20] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1010F2B24, v8, v7);
}

uint64_t sub_1010F2B24()
{
  v1 = v0[14];
  v38 = v0[15];
  v39 = v0[17];

  v2 = v1 + 56;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 56);
  v36 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardInfos;
  v37 = v1;
  v6 = (63 - v4) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_11:
    v11 = v0[18];
    v10 = v0[19];
    sub_10005006C(*(v37 + 48) + *(v39 + 72) * (__clz(__rbit64(v5)) | (v8 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v10, v11, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = UUID.uuidString.getter();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    v35 = v12;
    sub_100005404(v12, &_mh_execute_header, v17, "Did sync a CKShare change for board identifier: %@", 50, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    swift_beginAccess();
    v18 = *(v38 + v36);
    if (!*(v18 + 16) || (v19 = sub_1000486F0(v0[18]), (v20 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_5;
    }

    v21 = *(*(v18 + 56) + 8 * v19);
    swift_endAccess();

    v22 = Notification.name.getter();
    if (qword_1019F2548 != -1)
    {
      swift_once();
    }

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {

LABEL_21:
      v28 = static os_log_type_t.default.getter();
      sub_100005404(v35, &_mh_execute_header, v28, "Received a CRLBoardDataStoreDidSyncCKShareDeletion notification.", 64, 2, _swiftEmptyArrayStorage);
      v29 = *(*(v21 + 16) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      if (*(*&v29[OBJC_IVAR____TtC8Freeform8CRLBoard_shareState] + 16))
      {
        v30 = v29;

        sub_10123C0AC(0);
      }

      goto LABEL_23;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_21;
    }

LABEL_23:
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v31 = v0[18];
    v32 = static OS_os_log.realTimeSync;
    v33 = static os_log_type_t.default.getter();
    sub_100005404(v32, &_mh_execute_header, v33, "Ensure that we are in an activity, and switch between Me-to-Me and CKShare if necessary.", 88, 2, _swiftEmptyArrayStorage);
    sub_1010BBCA0(v31);

LABEL_5:
    v5 &= v5 - 1;
    result = sub_10003D87C(v0[18], type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  v34 = v0[1];

  return v34();
}

void sub_1010F2FC4(void **a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([v5 BOOLForKey:@"CRLSyncDataWasRemovedUserDefault"])
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v8 = static OS_os_log.boardStore;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Observed that sync data was removed. Cleaning up in memory state.", 65, 2, _swiftEmptyArrayStorage);
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v7;
      v12 = v7;
      sub_10064191C(0, 0, v4, &unk_1014C61C0, v11);

      [v5 removeObjectForKey:@"CRLSyncDataWasRemovedUserDefault"];
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v13 = static OS_os_log.boardStore;
      v14 = static os_log_type_t.default.getter();
      sub_100005404(v13, &_mh_execute_header, v14, "Observed change to dataclass. But no need to ensure ownership of data.", 70, 2, _swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_1010F3210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_1010F32A0();
}

uint64_t sub_1010F32A0()
{
  v1[7] = v0;
  sub_1005B981C(&qword_1019FB750);
  v1[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v3;
  v1[11] = v2;

  return _swift_task_switch(sub_1010F3370, v3, v2);
}

uint64_t sub_1010F3370()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_1010BCDE4();
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
  v4 = sub_100DCB394();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(*(v5 - 8) + 56);
  v32 = v5;
  v6(v2, 1, 1);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_10064191C(0, 0, v2, &unk_1014B6A40, v7);

  v8 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v8 + 16));
  v9 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v10 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v10)
  {
    v11 = *&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v30 = type metadata accessor for CRLAssetManager();
    v12 = objc_allocWithZone(v30);
    swift_unknownObjectWeakInit();
    v13 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v14 = swift_allocObject();
    v31 = v6;
    v15 = v3;
    v16 = swift_slowAlloc();
    *v16 = 0;
    *(v14 + 16) = v16;
    atomic_thread_fence(memory_order_acq_rel);
    *&v12[v13] = v14;
    *&v12[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v17 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v12[v17] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v12[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    *(v0 + 40) = v12;
    *(v0 + 48) = v30;
    v18 = objc_msgSendSuper2((v0 + 40), "init");

    v6 = v31;
    v19 = *&v3[v9];
    *&v3[v9] = v18;
    v11 = v18;

    v10 = 0;
  }

  v20 = *(v8 + 16);
  v21 = v10;
  os_unfair_lock_unlock(v20);
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v22 = static OS_os_log.assetManagement;
  v23 = static os_log_type_t.default.getter();
  sub_100005404(v22, &_mh_execute_header, v23, "reset() asset cache", 19, 2, _swiftEmptyArrayStorage);
  v24 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets;
  swift_beginAccess();
  *&v11[v24] = _swiftEmptyDictionarySingleton;

  if (*&v3[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper])
  {
    v25 = *(v0 + 64);
    (v6)(v25, 1, 1, v32);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v26;

    sub_100CA64C8(0, 0, v25, &unk_1014B6A48, v27);

    sub_10000CAAC(v25, &qword_1019FB750);
  }

  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = sub_1010F37A0;

  return sub_10007CEB8(_swiftEmptySetSingleton);
}

uint64_t sub_1010F37A0()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1010F38C0, v3, v2);
}

uint64_t sub_1010F38C0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1010F3A38()
{
  result = qword_101A2ACB8;
  if (!qword_101A2ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ACB8);
  }

  return result;
}

unint64_t sub_1010F3A90()
{
  result = qword_101A2ACC0;
  if (!qword_101A2ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ACC0);
  }

  return result;
}

unint64_t sub_1010F3AE8()
{
  result = qword_101A2ACC8;
  if (!qword_101A2ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ACC8);
  }

  return result;
}

unint64_t sub_1010F3B40()
{
  result = qword_101A2ACD0;
  if (!qword_101A2ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2ACD0);
  }

  return result;
}

unint64_t *sub_1010F3BDC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5;
    v11 = sub_1010FEBBC(v9, a2, a3, a4, v10);

    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1010F3C90(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v31 = a4;
  v32 = a3;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v30 = *(v6 - 8);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < 0)
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v28 = a1;
    v27 = a2;
    v10 = v32 + 56;
    v11 = 1 << *(v32 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v32 + 56);
    v14 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
    v26 = v31;
    result = swift_beginAccess();
    v15 = 0;
    v16 = 0;
    v17 = (v11 + 63) >> 6;
    while (2)
    {
      v29 = v15;
      while (1)
      {
        if (!v13)
        {
          v19 = v16;
          while (1)
          {
            v16 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v16 >= v17)
            {
              goto LABEL_22;
            }

            v20 = *(v10 + 8 * v16);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v13 = (v20 - 1) & v20;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_24;
        }

        v18 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_15:
        v21 = v18 | (v16 << 6);
        sub_10005006C(*(v32 + 48) + *(v30 + 72) * v21, v9, type metadata accessor for CRLBoardIdentifier);
        if (!*(*&v31[v14] + 16))
        {
          break;
        }

        sub_1000486F0(v9);
        v23 = v22;

        result = sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
        if ((v23 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      result = sub_10003D87C(v9, type metadata accessor for CRLBoardIdentifier);
LABEL_19:
      *(v28 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v15 = v29 + 1;
      if (!__OFADD__(v29, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_22:
    v24 = sub_1010F47E8(v28, v27, v29, v32);
    v25 = v26;

    return v24;
  }

  return result;
}