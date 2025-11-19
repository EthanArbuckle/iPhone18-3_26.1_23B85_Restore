uint64_t sub_100B9ADF8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1009D3FA0;

  return sub_100B9A4CC();
}

uint64_t sub_100B9AEA0()
{
  *(v1 + 272) = v0;
  sub_1005B981C(&qword_1019FB750);
  *(v1 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_100B9AF3C, 0, 0);
}

uint64_t sub_100B9AF3C()
{
  v37 = v0;
  v1 = v0[34];
  v2 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {
      v35 = v1;
      v34 = objc_opt_self();
      v4 = [v34 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v36);
      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_1005CF000();
      *(inited + 96) = v13;
      v14 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 68;
      v16 = v36;
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      [v34 handleFailureInFunction:v23 file:v24 lineNumber:68 isFatal:0 format:v25 args:v22];

      v1 = v35;
    }

    if (*(v1 + v2))
    {

      sub_1005B981C(&unk_1019F6B40);
      Task.cancel()();
    }
  }

  v26 = v0[35];
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = v28;
  v30 = sub_1006E2398(0, 0, v26, &unk_10149D7E0, v29);
  v0[36] = v30;
  sub_10000CAAC(v26, &qword_1019FB750);
  *(v1 + v2) = v30;

  v31 = swift_task_alloc();
  v0[37] = v31;
  v32 = sub_1005B981C(&unk_1019F6B40);
  v0[38] = v32;
  *v31 = v0;
  v31[1] = sub_100B9B504;

  return Task.result.getter(v0 + 31, v30, &type metadata for () + 8, v32, &protocol self-conformance witness table for Error);
}

uint64_t sub_100B9B504()
{

  return _swift_task_switch(sub_100B9B61C, 0, 0);
}

uint64_t sub_100B9B61C()
{
  if (*(v0 + 256) == 1)
  {
    *(v0 + 264) = *(v0 + 248);
    swift_willThrowTypedImpl();
  }

  else
  {
    v2 = *(*(v0 + 272) + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress);
    [v2 maxValue];
    [v2 setValue:?];
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100B9B71C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = Strong;
  v0[6] = Strong;
  if (Strong)
  {
    v3 = [Strong delegate];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector:"boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:"])
      {
        [v4 boardItemImporterWillIgnoreMediaCompatibilityOnAllDevicesRequirement:v2];
      }

      swift_unknownObjectRelease();
    }

    v5 = *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress];
    [v5 maxValue];
    [v5 setValue:v6 * 0.01];

    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100B9B8A0;

    return sub_100B9BB70();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100B9B8A0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1009DA848;
  }

  else
  {
    v2 = sub_100B9B9B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9B9B4()
{
  v1 = *(v0 + 48);
  if (!*&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] && !*&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error])
  {
    sub_100BA3234();
    v2 = swift_allocError();
    *v3 = 0;
    v4 = sub_100BA2560(v2);

    sub_100BA1860(v4);
    v1 = *(v0 + 48);
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_100B9BA80()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer);
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_1019F1AB8 != -1)
    {
      swift_once();
    }

    if (byte_101AD6F08)
    {
      v3 = 0;
      v4 = 0;
    }

    else
    {
      v3 = [objc_allocWithZone(_s23AppExCompressionBackendCMa()) init];
      v4 = &off_10189A498;
    }

    v5 = *v1;
    *v1 = v3;
    v1[1] = v4;
    swift_unknownObjectRetain();
    sub_1008F2B1C(v5);
  }

  sub_1008F2B2C(v2);
  return v3;
}

uint64_t sub_100B9BB70()
{
  v1[49] = v0;
  sub_1005B981C(&unk_101A1B880);
  v1[50] = swift_task_alloc();
  v2 = type metadata accessor for CRLAssetData();
  v1[51] = v2;
  v1[52] = *(v2 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v3 = type metadata accessor for SHA256();
  v1[60] = v3;
  v1[61] = *(v3 - 8);
  v1[62] = swift_task_alloc();
  v4 = type metadata accessor for SHA256Digest();
  v1[63] = v4;
  v1[64] = *(v4 - 8);
  v1[65] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[66] = v5;
  v1[67] = *(v5 - 8);
  v1[68] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[69] = v6;
  v1[70] = *(v6 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();

  return _swift_task_switch(sub_100B9BF70, 0, 0);
}

uint64_t sub_100B9BF70()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 392);
  v5 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *(v0 + 704) = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  [*&v4[v5] maxValue];
  *(v0 + 712) = v6;
  v7 = *(v2 + 56);
  *(v0 + 720) = v7;
  *(v0 + 728) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v3);
  v8 = [v4 URL];
  if (v8)
  {
    v9 = *(v0 + 632);
    v10 = *(v0 + 624);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 488);
    v14 = v8;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v11 + 16);
    *(v0 + 736) = v15;
    *(v0 + 744) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v15(v10, v9, v12);
    sub_100BA3138(&qword_1019F4570, 255, &type metadata accessor for SHA256);
    dispatch thunk of HashFunction.init()();
    sub_101093094(v10);
    v16 = (v13 + 8);
    v19 = *(v0 + 560);
    v58 = *(v0 + 552);
    v60 = *(v0 + 624);
    v20 = *(v0 + 520);
    v21 = *(v0 + 512);
    v56 = *(v0 + 504);
    v22 = *(v0 + 496);
    v23 = *(v0 + 480);
    dispatch thunk of HashFunction.finalize()();
    (*v16)(v22, v23);
    SHA256Digest.withUnsafeBytes<A>(_:)();
    *(v0 + 752) = 0;
    (*(v21 + 8))(v20, v56);
    v24 = *(v19 + 8);
    *(v0 + 760) = v24;
    *(v0 + 768) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v60, v58);
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = [v25 BOOLForKey:@"CRL3DObjectCompression"];

    if (v26)
    {
      v27 = [*(v0 + 392) boardItemFactory];
      v28 = *&v27[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

      v29 = [v28 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
      }

      else
      {
        v47 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
        v48 = v29;
        v49 = sub_10001F1A0(v48);

        v50 = *&v29[v31];
        *&v29[v31] = v49;
        v33 = v49;

        v32 = 0;
      }

      *(v0 + 776) = v33;
      v51 = *(v30 + 16);
      v52 = v32;
      os_unfair_lock_unlock(v51);

      v53 = swift_task_alloc();
      *(v0 + 784) = v53;
      *v53 = v0;
      v53[1] = sub_100B9C958;
      v54 = *(v0 + 688);
      v55 = *(v0 + 544);

      return sub_10108D4EC(v54, v55, 0, 0, 3);
    }

    v59 = *(v0 + 760);
    v34 = *(v0 + 736);
    v35 = *(v0 + 632);
    v36 = *(v0 + 584);
    v37 = *(v0 + 552);
    v57 = *(v0 + 544);
    v38 = *(v0 + 536);
    v39 = *(v0 + 528);
    v40 = [*(v0 + 392) boardItemFactory];
    v41 = *&v40[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    v34(v36, v35, v37);
    v42 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
    v17 = sub_100BA1E7C(v36, 0, 0, v41, v42);
    (*(v38 + 8))(v57, v39);
    v59(v35, v37);
    v18 = *(v0 + 752);
  }

  else
  {
    v17 = [*(v0 + 392) preinsertionAsset];
    v18 = 0;
  }

  *(v0 + 864) = v17;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v17)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

    v43 = *(v0 + 8);
    goto LABEL_12;
  }

  static Task<>.checkCancellation()();
  if (v18)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

    v43 = *(v0 + 8);
LABEL_12:

    return v43();
  }

  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v45 = swift_task_alloc();
  *(v0 + 872) = v45;
  *v45 = v0;
  v45[1] = sub_100B9F214;
  v46 = *(v0 + 432);

  return sub_100CF18DC(v46);
}

uint64_t sub_100B9C958()
{
  v1 = *(*v0 + 776);

  return _swift_task_switch(sub_100B9CA98, 0, 0);
}

uint64_t sub_100B9CA98()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v2 + 48);
  *(v0 + 792) = v4;
  *(v0 + 800) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v5 = v4(v1, 1, v3);
  sub_10000CAAC(v1, &unk_1019F33C0);
  if (v5 == 1)
  {
    v6 = *(v0 + 752);
    static Task<>.checkCancellation()();
    if (v6)
    {
      v7 = *(v0 + 760);
      v8 = *(v0 + 696);
      v9 = *(v0 + 632);
      v10 = *(v0 + 552);
      (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
      v7(v9, v10);
      sub_10000CAAC(v8, &unk_1019F33C0);
LABEL_10:

      v32 = *(v0 + 8);
LABEL_12:

      return v32();
    }

    if (qword_1019F19A8 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 736);
    v47 = *(v0 + 720);
    v23 = *(v0 + 680);
    v24 = *(v0 + 632);
    v25 = *(v0 + 616);
    v26 = *(v0 + 608);
    v27 = *(v0 + 552);
    v28 = *(v0 + 448);
    *(v0 + 808) = qword_101AD6CA0;
    *(v0 + 816) = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(15, 1);
    v22(v25, v24, v27);
    v22(v26, v25, v27);
    v22(v28, v26, v27);
    v22(v23, v26, v27);
    v47(v23, 0, 1, v27);
    v29 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    *(v0 + 824) = 0;
    v31 = *(v0 + 760);
    v36 = v29;
    v37 = v30;
    v38 = *(v0 + 608);
    v39 = *(v0 + 552);
    v51 = *(v0 + 472);
    v48 = *(v0 + 616);
    v50 = *(v0 + 464);
    v41 = *(v0 + 448);
    v40 = *(v0 + 456);
    v42 = *(v0 + 440);
    sub_10000CAAC(*(v0 + 680), &unk_1019F33C0);
    v31(v38, v39);
    v31(v48, v39);
    v43 = (v41 + *(v42 + 20));
    *v43 = v36;
    v43[1] = v37;
    sub_1008F2A0C(v41, v40, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v40, v50, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v50, v51, type metadata accessor for CRLUSDRendering.CompressionRequest);
    type metadata accessor for MainActor();
    *(v0 + 832) = static MainActor.shared.getter();
    v45 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100B9D3F0, v45, v44);
  }

  else
  {
    v49 = *(v0 + 760);
    v11 = *(v0 + 736);
    v12 = *(v0 + 632);
    v13 = *(v0 + 584);
    v14 = *(v0 + 552);
    v46 = *(v0 + 544);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = [*(v0 + 392) boardItemFactory];
    v18 = *&v17[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    v11(v13, v12, v14);
    v19 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
    v20 = sub_100BA1E7C(v13, 0, 0, v18, v19);
    (*(v15 + 8))(v46, v16);
    v49(v12, v14);
    v21 = *(v0 + 752);
    *(v0 + 864) = v20;
    [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
    if (!v20)
    {
      sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

      v32 = *(v0 + 8);
      goto LABEL_12;
    }

    static Task<>.checkCancellation()();
    if (v21)
    {
      sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

      goto LABEL_10;
    }

    if (qword_1019F1AB8 != -1)
    {
      swift_once();
    }

    *(v0 + 185) = byte_101AD6F08;
    v34 = swift_task_alloc();
    *(v0 + 872) = v34;
    *v34 = v0;
    v34[1] = sub_100B9F214;
    v35 = *(v0 + 432);

    return sub_100CF18DC(v35);
  }
}

uint64_t sub_100B9D3F0()
{

  *(v0 + 840) = sub_100B9BA80();

  return _swift_task_switch(sub_100B9D490, 0, 0);
}

uint64_t sub_100B9D490()
{
  if (*(v0 + 840))
  {
    v1 = swift_task_alloc();
    *(v0 + 848) = v1;
    *v1 = v0;
    v1[1] = sub_100B9E1C0;
    v2 = *(v0 + 672);
    v3 = *(v0 + 472);

    return sub_100BF94A4(v2, v3);
  }

  v5 = *(v0 + 720);
  v6 = *(v0 + 672);
  v7 = *(v0 + 552);
  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);
  v5(v6, 1, 1, v7);
  v8 = *(v0 + 824);
  sub_100044B68(*(v0 + 672), *(v0 + 696));
  static Task<>.checkCancellation()();
  if (v8)
  {
    v9 = *(v0 + 760);
    v10 = *(v0 + 696);
    v11 = *(v0 + 632);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);
    v14 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 472);

    sub_100BA30D8(v16, type metadata accessor for CRLUSDRendering.CompressionRequest);
    (*(v14 + 8))(v13, v15);
    v9(v11, v12);
    sub_10000CAAC(v10, &unk_1019F33C0);

    v17 = *(v0 + 8);
LABEL_7:

    return v17();
  }

  v18 = *(v0 + 792);
  v19 = *(v0 + 696);
  v20 = *(v0 + 664);
  v21 = *(v0 + 552);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(15, 1, *(v0 + 816));
  sub_10001ACF0(v19, v20);
  if (v18(v20, 1, v21) == 1)
  {
    sub_10000CAAC(*(v0 + 664), &unk_1019F33C0);
    goto LABEL_29;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 600), *(v0 + 664), *(v0 + 552));
  v22 = objc_opt_self();
  v23 = [v22 defaultManager];
  URL.path.getter();
  v24 = String._bridgeToObjectiveC()();

  *(v0 + 360) = 0;
  v25 = [v23 attributesOfItemAtPath:v24 error:v0 + 360];

  v26 = *(v0 + 360);
  if (!v25)
  {
    v54 = *(v0 + 760);
    v55 = *(v0 + 600);
    v56 = *(v0 + 552);
    v57 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v54(v55, v56);
    goto LABEL_29;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100BA3138(&qword_1019F3C88, 255, type metadata accessor for FileAttributeKey);
  v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v26;

  if (!*(v27 + 16) || (v29 = sub_10006E4C8(NSFileSize), (v30 & 1) == 0))
  {
    v51 = *(v0 + 760);
    v52 = *(v0 + 600);
    v53 = *(v0 + 552);

    v51(v52, v53);
    goto LABEL_29;
  }

  sub_100064288(*(v27 + 56) + 32 * v29, v0 + 296);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v92 = *(v0 + 368);
  v31 = [v22 defaultManager];
  URL.path.getter();
  v32 = String._bridgeToObjectiveC()();

  *(v0 + 376) = 0;
  v33 = [v31 attributesOfItemAtPath:v32 error:v0 + 376];

  v34 = *(v0 + 376);
  if (!v33)
  {
    v61 = *(v0 + 760);
    v62 = *(v0 + 600);
    v63 = *(v0 + 552);
    v64 = v34;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v61(v62, v63);
    goto LABEL_29;
  }

  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v34;

  if (!*(v35 + 16) || (v37 = sub_10006E4C8(NSFileSize), (v38 & 1) == 0))
  {
    v58 = *(v0 + 760);
    v59 = *(v0 + 600);
    v60 = *(v0 + 552);

    v58(v59, v60);
    goto LABEL_29;
  }

  sub_100064288(*(v35 + 56) + 32 * v37, v0 + 328);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    (*(v0 + 760))(*(v0 + 600), *(v0 + 552));
    goto LABEL_29;
  }

  v39 = *(v0 + 384);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v40 = *(v0 + 392);
  v41 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
  result = sub_100BA3138(&qword_101A13C20, v43, type metadata accessor for CRLUSDItemImporter);
  *(inited + 32) = v40;
  *(inited + 64) = result;
  v44 = v92 - v39;
  if (__OFSUB__(v92, v39))
  {
    __break(1u);
    return result;
  }

  v45 = *(v0 + 760);
  v46 = *(v0 + 600);
  v47 = *(v0 + 552);
  v48 = *(v0 + 392);
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &protocol witness table for Int64;
  *(inited + 72) = v44;
  v49 = v48;
  v50 = static os_log_type_t.info.getter();
  sub_100005404(v41, &_mh_execute_header, v50, "Importer (%p) compressed reduced: %d", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v45(v46, v47);
LABEL_29:
  v65 = *(v0 + 792);
  v66 = *(v0 + 696);
  v67 = *(v0 + 656);
  v68 = *(v0 + 552);
  v69 = [*(v0 + 392) boardItemFactory];
  v70 = *&v69[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

  sub_10001ACF0(v66, v67);
  v93 = v70;
  if (v65(v67, 1, v68) == 1)
  {
    v71 = *(v0 + 792);
    v72 = *(v0 + 656);
    v73 = *(v0 + 552);
    (*(v0 + 736))(*(v0 + 592), *(v0 + 632), v73);
    if (v71(v72, 1, v73) != 1)
    {
      sub_10000CAAC(*(v0 + 656), &unk_1019F33C0);
    }
  }

  else
  {
    (*(*(v0 + 560) + 32))(*(v0 + 592), *(v0 + 656), *(v0 + 552));
  }

  v89 = *(v0 + 760);
  v74 = *(v0 + 736);
  v75 = *(v0 + 632);
  v76 = *(v0 + 592);
  v77 = *(v0 + 584);
  v78 = *(v0 + 552);
  v79 = *(v0 + 536);
  v90 = *(v0 + 528);
  v91 = *(v0 + 544);
  v88 = *(v0 + 472);
  v80 = URL.lastPathComponent.getter();
  v82 = v81;
  v74(v77, v76, v78);
  v83 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
  v84 = v93;
  v85 = sub_100BA1E7C(v77, v80, v82, v84, v83);

  v89(v76, v78);
  sub_100BA30D8(v88, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v79 + 8))(v91, v90);
  v89(v75, v78);
  *(v0 + 864) = v85;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v85)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

    v17 = *(v0 + 8);
    goto LABEL_7;
  }

  static Task<>.checkCancellation()();
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v86 = swift_task_alloc();
  *(v0 + 872) = v86;
  *v86 = v0;
  v86[1] = sub_100B9F214;
  v87 = *(v0 + 432);

  return sub_100CF18DC(v87);
}

uint64_t sub_100B9E1C0()
{
  *(*v1 + 856) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_100B9EF88;
  }

  else
  {
    v2 = sub_100B9E320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9E320()
{
  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);
  v1 = *(v0 + 856);
  sub_100044B68(*(v0 + 672), *(v0 + 696));
  static Task<>.checkCancellation()();
  if (v1)
  {
    v2 = *(v0 + 760);
    v3 = *(v0 + 696);
    v4 = *(v0 + 632);
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    v9 = *(v0 + 472);

    sub_100BA30D8(v9, type metadata accessor for CRLUSDRendering.CompressionRequest);
    (*(v7 + 8))(v6, v8);
    v2(v4, v5);
    sub_10000CAAC(v3, &unk_1019F33C0);

    v10 = *(v0 + 8);
LABEL_3:

    return v10();
  }

  v12 = *(v0 + 792);
  v13 = *(v0 + 696);
  v14 = *(v0 + 664);
  v15 = *(v0 + 552);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(15, 1, *(v0 + 816));
  sub_10001ACF0(v13, v14);
  if (v12(v14, 1, v15) == 1)
  {
    sub_10000CAAC(*(v0 + 664), &unk_1019F33C0);
    goto LABEL_25;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 600), *(v0 + 664), *(v0 + 552));
  v16 = objc_opt_self();
  v17 = [v16 defaultManager];
  URL.path.getter();
  v18 = String._bridgeToObjectiveC()();

  *(v0 + 360) = 0;
  v19 = [v17 attributesOfItemAtPath:v18 error:v0 + 360];

  v20 = *(v0 + 360);
  if (!v19)
  {
    v48 = *(v0 + 760);
    v49 = *(v0 + 600);
    v50 = *(v0 + 552);
    v51 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v48(v49, v50);
    goto LABEL_25;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_100BA3138(&qword_1019F3C88, 255, type metadata accessor for FileAttributeKey);
  v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v20;

  if (!*(v21 + 16) || (v23 = sub_10006E4C8(NSFileSize), (v24 & 1) == 0))
  {
    v45 = *(v0 + 760);
    v46 = *(v0 + 600);
    v47 = *(v0 + 552);

    v45(v46, v47);
    goto LABEL_25;
  }

  sub_100064288(*(v21 + 56) + 32 * v23, v0 + 296);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v85 = *(v0 + 368);
  v25 = [v16 defaultManager];
  URL.path.getter();
  v26 = String._bridgeToObjectiveC()();

  *(v0 + 376) = 0;
  v27 = [v25 attributesOfItemAtPath:v26 error:v0 + 376];

  v28 = *(v0 + 376);
  if (!v27)
  {
    v55 = *(v0 + 760);
    v56 = *(v0 + 600);
    v57 = *(v0 + 552);
    v58 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v55(v56, v57);
    goto LABEL_25;
  }

  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v28;

  if (!*(v29 + 16) || (v31 = sub_10006E4C8(NSFileSize), (v32 & 1) == 0))
  {
    v52 = *(v0 + 760);
    v53 = *(v0 + 600);
    v54 = *(v0 + 552);

    v52(v53, v54);
    goto LABEL_25;
  }

  sub_100064288(*(v29 + 56) + 32 * v31, v0 + 328);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    (*(v0 + 760))(*(v0 + 600), *(v0 + 552));
    goto LABEL_25;
  }

  v33 = *(v0 + 384);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 392);
  v35 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
  result = sub_100BA3138(&qword_101A13C20, v37, type metadata accessor for CRLUSDItemImporter);
  *(inited + 32) = v34;
  *(inited + 64) = result;
  v38 = v85 - v33;
  if (__OFSUB__(v85, v33))
  {
    __break(1u);
    return result;
  }

  v39 = *(v0 + 760);
  v40 = *(v0 + 600);
  v41 = *(v0 + 552);
  v42 = *(v0 + 392);
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &protocol witness table for Int64;
  *(inited + 72) = v38;
  v43 = v42;
  v44 = static os_log_type_t.info.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Importer (%p) compressed reduced: %d", 36, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v39(v40, v41);
LABEL_25:
  v59 = *(v0 + 792);
  v60 = *(v0 + 696);
  v61 = *(v0 + 656);
  v62 = *(v0 + 552);
  v63 = [*(v0 + 392) boardItemFactory];
  v86 = *&v63[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

  sub_10001ACF0(v60, v61);
  if (v59(v61, 1, v62) == 1)
  {
    v64 = *(v0 + 792);
    v65 = *(v0 + 656);
    v66 = *(v0 + 552);
    (*(v0 + 736))(*(v0 + 592), *(v0 + 632), v66);
    if (v64(v65, 1, v66) != 1)
    {
      sub_10000CAAC(*(v0 + 656), &unk_1019F33C0);
    }
  }

  else
  {
    (*(*(v0 + 560) + 32))(*(v0 + 592), *(v0 + 656), *(v0 + 552));
  }

  v82 = *(v0 + 760);
  v67 = *(v0 + 736);
  v68 = *(v0 + 632);
  v69 = *(v0 + 592);
  v70 = *(v0 + 584);
  v71 = *(v0 + 552);
  v72 = *(v0 + 536);
  v83 = *(v0 + 528);
  v84 = *(v0 + 544);
  v81 = *(v0 + 472);
  v73 = URL.lastPathComponent.getter();
  v75 = v74;
  v67(v70, v69, v71);
  v76 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
  v77 = v86;
  v78 = sub_100BA1E7C(v70, v73, v75, v77, v76);

  v82(v69, v71);
  sub_100BA30D8(v81, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v72 + 8))(v84, v83);
  v82(v68, v71);
  *(v0 + 864) = v78;
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.3];
  if (!v78)
  {
    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

    v10 = *(v0 + 8);
    goto LABEL_3;
  }

  static Task<>.checkCancellation()();
  if (qword_1019F1AB8 != -1)
  {
    swift_once();
  }

  *(v0 + 185) = byte_101AD6F08;
  v79 = swift_task_alloc();
  *(v0 + 872) = v79;
  *v79 = v0;
  v79[1] = sub_100B9F214;
  v80 = *(v0 + 432);

  return sub_100CF18DC(v80);
}

uint64_t sub_100B9EF88()
{
  v1 = v0[95];
  v2 = v0[87];
  v3 = v0[79];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  v8 = v0[59];

  sub_100BA30D8(v8, type metadata accessor for CRLUSDRendering.CompressionRequest);
  (*(v6 + 8))(v5, v7);
  v1(v3, v4);
  sub_10000CAAC(v2, &unk_1019F33C0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100B9F214()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_100BA12FC;
  }

  else
  {
    v2 = sub_100B9F354;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100B9F354()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  sub_10001ACF0(*(v0 + 696), v1);
  v4 = *(v2 + 48);
  if (v4(v1, 1, v3) == 1)
  {
    sub_10000CAAC(*(v0 + 648), &unk_1019F33C0);
  }

  else
  {
    v5 = *(v0 + 576);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    (*(v6 + 32))(v5, *(v0 + 648), v7);
    v8 = [objc_opt_self() defaultManager];
    sub_101089214();

    (*(v6 + 8))(v5, v7);
  }

  v9 = *(v0 + 880);
  [*(*(v0 + 392) + *(v0 + 704)) setValue:*(v0 + 712) * 0.6];
  static Task<>.checkCancellation()();
  if (v9)
  {
    v10 = (v0 + 696);
    sub_100BA30D8(*(v0 + 432), type metadata accessor for CRLAssetData);
    v11 = *(v0 + 864);
    v12 = sub_100BA2560(v9);
    sub_100BA1860(v12);

LABEL_11:
    sub_10000CAAC(*v10, &unk_1019F33C0);

    v30 = *(v0 + 8);

    return v30();
  }

  v13 = [*(v0 + 392) boardItemFactory];
  v14 = *(*&v13[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board] + OBJC_IVAR____TtC8Freeform8CRLBoard_store);

  v15 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v15 + 16));
  v16 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v17 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v17)
  {
    v18 = *&v14[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v19 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v20 = v14;
    v21 = sub_10001F1A0(v20);

    v22 = *&v14[v16];
    *&v14[v16] = v21;
    v18 = v21;

    v17 = 0;
  }

  v23 = *(v0 + 640);
  v24 = *(v0 + 552);
  v25 = *(v0 + 432);
  v26 = *(v15 + 16);
  v27 = v17;
  os_unfair_lock_unlock(v26);
  sub_10108CAF4(v25, 0, 3, 0, 0, v23);

  if (v4(v23, 1, v24) == 1)
  {
    v10 = (v0 + 640);
    v28 = *(v0 + 696);
    v29 = *(v0 + 432);

    sub_100BA30D8(v29, type metadata accessor for CRLAssetData);
    sub_10000CAAC(v28, &unk_1019F33C0);
    goto LABEL_11;
  }

  (*(*(v0 + 560) + 32))(*(v0 + 568), *(v0 + 640), *(v0 + 552));
  v32 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:1 size:1 widthValid:0 heightValid:0 horizontalFlip:0.0 verticalFlip:0.0 angle:{300.0, 300.0, 0.0}];
  *(v0 + 888) = v32;
  [v32 size];
  *(v0 + 896) = sub_10011ECB4();
  *(v0 + 904) = v33;
  *(v0 + 912) = v34;
  *(v0 + 920) = v35;
  *(v0 + 928) = type metadata accessor for MainActor();
  *(v0 + 936) = static MainActor.shared.getter();
  v36 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 944) = v36;
  *(v0 + 952) = v37;

  return _swift_task_switch(sub_100B9F93C, v36, v37);
}

uint64_t sub_100B9F93C()
{
  if (*(v0 + 185) == 1)
  {
    v1 = *(v0 + 720);
    v2 = *(v0 + 552);
    _s17QLSnapshotBackendCMa(0);
    v3 = swift_allocObject();
    *(v0 + 960) = v3;
    v3[1] = vdupq_n_s64(0x408F400000000000uLL);
    v1(&v3->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_modelURL], 1, 1, v2);
    v4 = &v3->i8[OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate];
    *(&v3->i64[1] + OBJC_IVAR____TtCO8Freeform15CRLUSDRendering17QLSnapshotBackend_delegate) = 0;
    swift_unknownObjectWeakInit();
    UUID.init()();
    *(v4 + 1) = 0;
    swift_unknownObjectWeakAssign();
    _s17QLSnapshotBackendC12BackendStateOMa(0);
    swift_storeEnumTagMultiPayload();
    *(v0 + 968) = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    *(v0 + 976) = v5;
    *v5 = v0;
    v5[1] = sub_100B9FB94;
    v6 = *(v0 + 920);
    v7 = *(v0 + 912);
    v8 = *(v0 + 904);
    v9 = *(v0 + 896);
    v10 = *(v0 + 568);

    return sub_10112B93C(v0 + 192, v10, v3, &off_10188D2F0, 2.0, 1.0, v9, v8, v7, v6);
  }

  else
  {
    *(v0 + 1048) = static MainActor.shared.getter();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1056) = v12;
    *(v0 + 1064) = v13;

    return _swift_task_switch(sub_100B9FFEC, v12, v13);
  }
}

uint64_t sub_100B9FB94()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 984) = v0;
  v4 = *(v3 + 208);
  *(v3 + 992) = *(v3 + 192);
  *(v3 + 1008) = v4;
  *(v3 + 1024) = *(v3 + 224);
  *(v3 + 1040) = *(v2 + 240);
  *(v3 + 186) = *(v3 + 248);

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100B9FEB0;
  }

  else
  {
    v7 = sub_100B9FD50;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100B9FD50()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100B9FDF0, v2, v1);
}

uint64_t sub_100B9FDF0()
{
  v1 = *(v0 + 1008);
  *(v0 + 1200) = *(v0 + 1024);
  v2 = *(v0 + 992);
  *(v0 + 1184) = v1;
  v3 = *(v0 + 1040);
  v4 = *(v0 + 984);
  *(v0 + 188) = *(v0 + 186);
  *(v0 + 1216) = v3;
  *(v0 + 1168) = v2;
  *(v0 + 1160) = v4;

  return _swift_task_switch(sub_100BA0698, 0, 0);
}

uint64_t sub_100B9FEB0()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100B9FF50, v2, v1);
}

uint64_t sub_100B9FF50()
{
  *(v0 + 1224) = *(v0 + 984);

  return _swift_task_switch(sub_100BA0AB8, 0, 0);
}

uint64_t sub_100B9FFEC()
{
  v1 = objc_allocWithZone(_s15AppExRepBackendCMa(0));
  v2 = sub_1008657BC(0, 0, 0);
  *(v0 + 134) = v2;
  *(v0 + 135) = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_100BA0114;
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  v8 = *(v0 + 71);

  return sub_10112B93C((v0 + 16), v8, v2, &off_1018897F8, 2.0, 1.0, v7, v6, v5, v4);
}

uint64_t sub_100BA0114()
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 144);
  *(v3 + 1104) = *(v3 + 128);
  *(v3 + 1096) = v0;
  *(v3 + 1120) = v4;
  *(v3 + 1136) = *(v3 + 160);
  *(v3 + 1152) = *(v2 + 176);
  *(v3 + 187) = *(v3 + 184);

  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v7 = sub_100BA04C8;
  }

  else
  {
    v7 = sub_100BA02D4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100BA02D4()
{
  v1 = v0[134];

  v2 = v0[133];
  v3 = v0[132];

  return _swift_task_switch(sub_100BA0370, v3, v2);
}

uint64_t sub_100BA0370()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100BA0404, v2, v1);
}

uint64_t sub_100BA0404()
{
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1096);
  *(v0 + 188) = *(v0 + 187);
  *(v0 + 1216) = v1;
  *(v0 + 1200) = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1168) = *(v0 + 1104);
  *(v0 + 1160) = v2;

  return _swift_task_switch(sub_100BA0698, 0, 0);
}

uint64_t sub_100BA04C8()
{

  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);

  return _swift_task_switch(sub_100BA0568, v2, v1);
}

uint64_t sub_100BA0568()
{

  v1 = *(v0 + 952);
  v2 = *(v0 + 944);

  return _swift_task_switch(sub_100BA05FC, v2, v1);
}

uint64_t sub_100BA05FC()
{
  *(v0 + 1224) = *(v0 + 1096);

  return _swift_task_switch(sub_100BA0AB8, 0, 0);
}

uint64_t sub_100BA0698()
{
  v1 = *(v0 + 1160);
  static Task<>.checkCancellation()();
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  if (v1)
  {
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 432);

    sub_10002640C(v3, v2);
    (*(v5 + 8))(v4, v6);
    sub_100BA30D8(v7, type metadata accessor for CRLAssetData);
    v11 = *(v0 + 864);
    v12 = sub_100BA2560(v1);
    sub_100BA1860(v12);

    sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v8 = [*(v0 + 392) boardItemFactory];
    v9 = *&v8[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];

    objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
    v10 = v9;
    sub_100024E98(v3, v2);
    *(v0 + 1232) = sub_100CF051C(v3, v2, 0xD000000000000010, 0x800000010158E0A0, v10);

    v15 = swift_task_alloc();
    *(v0 + 1240) = v15;
    *v15 = v0;
    v15[1] = sub_100BA0D48;
    v16 = *(v0 + 424);

    return sub_100CF18DC(v16);
  }
}

uint64_t sub_100BA0AB8()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 552);
  v4 = *(v0 + 432);

  (*(v2 + 8))(v1, v3);
  sub_100BA30D8(v4, type metadata accessor for CRLAssetData);
  v5 = *(v0 + 864);
  v6 = sub_100BA2560(*(v0 + 1224));
  sub_100BA1860(v6);

  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100BA0D48()
{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = sub_100BA1540;
  }

  else
  {
    v2 = sub_100BA0E88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BA0E88()
{
  v1 = *(v0 + 1248);
  static Task<>.checkCancellation()();
  v2 = *(v0 + 1232);
  if (v1)
  {
    v3 = *(v0 + 1176);
    v4 = *(v0 + 1168);
    v5 = *(v0 + 568);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    v9 = *(v0 + 424);
    v8 = *(v0 + 432);

    sub_10002640C(v4, v3);
    sub_100BA30D8(v9, type metadata accessor for CRLAssetData);
    (*(v6 + 8))(v5, v7);
    sub_100BA30D8(v8, type metadata accessor for CRLAssetData);
    v10 = *(v0 + 864);
    v11 = sub_100BA2560(v1);
    sub_100BA1860(v11);
  }

  else
  {
    v29 = *(v0 + 188);
    v28 = *(v0 + 1216);
    v35 = *(v0 + 1176);
    v34 = *(v0 + 1168);
    v12 = *(v0 + 888);
    v32 = *(v0 + 864);
    v13 = *(v0 + 712);
    v30 = *(v0 + 704);
    v37 = *(v0 + 568);
    v33 = *(v0 + 560);
    v36 = *(v0 + 552);
    v14 = *(v0 + 424);
    v15 = *(v0 + 432);
    v31 = v14;
    v17 = *(v0 + 408);
    v16 = *(v0 + 416);
    v19 = *(v0 + 392);
    v18 = *(v0 + 400);
    v26 = *(v0 + 1200);
    v27 = *(v0 + 1184);
    v20 = [v19 boardItemFactory];
    sub_1008786E0(v14, v18);
    (*(v16 + 56))(v18, 0, 1, v17);
    *(v0 + 256) = v27;
    *(v0 + 272) = v26;
    *(v0 + 288) = 0;
    v21 = sub_10110E108(v12, v15, v18, (v0 + 256), v28, v29);

    sub_10000CAAC(v18, &unk_101A1B880);
    v22 = *&v19[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem];
    *&v19[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = v21;

    v23 = *&v19[v30];
    [v23 setValue:v13 * 0.9];

    sub_10002640C(v34, v35);
    sub_100BA30D8(v31, type metadata accessor for CRLAssetData);
    (*(v33 + 8))(v37, v36);
    sub_100BA30D8(v15, type metadata accessor for CRLAssetData);
  }

  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100BA12FC()
{
  v1 = v0[108];
  v2 = sub_100BA2560(v0[110]);
  sub_100BA1860(v2);

  sub_10000CAAC(v0[87], &unk_1019F33C0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BA1540()
{
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 432);

  sub_10002640C(v3, v2);
  (*(v5 + 8))(v4, v6);
  sub_100BA30D8(v7, type metadata accessor for CRLAssetData);
  v8 = *(v0 + 864);
  v9 = sub_100BA2560(*(v0 + 1248));
  sub_100BA1860(v9);

  sub_10000CAAC(*(v0 + 696), &unk_1019F33C0);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100BA1860(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = a1;
  swift_errorRetain();

  if (a1)
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.crlDefault;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    *(inited + 56) = type metadata accessor for CRLUSDItemImporter();
    *(inited + 64) = sub_100BA3138(&qword_101A13C20, v6, type metadata accessor for CRLUSDItemImporter);
    *(inited + 32) = v1;
    swift_getErrorValue();
    v7 = v1;
    v8 = Error.publicDescription.getter(v16, v17);
    v10 = v9;
    *(inited + 96) = &type metadata for String;
    v11 = sub_1000053B0();
    *(inited + 104) = v11;
    *(inited + 72) = v8;
    *(inited + 80) = v10;
    swift_getErrorValue();
    v12 = Error.fullDescription.getter(v15);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v11;
    *(inited + 112) = v12;
    *(inited + 120) = v13;
    v14 = static os_log_type_t.error.getter();
    sub_100005404(v4, &_mh_execute_header, v14, "Importer (%p) error: %{public}@ <%@>", 36, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    return swift_arrayDestroy();
  }

  return result;
}

id sub_100BA1A5C(uint64_t a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_largeBoundingSize] = vdupq_n_s64(0x4072C00000000000uLL);
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_smallBoundingSize] = vdupq_n_s64(0x4051800000000000uLL);
  v6 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *&v3[v6] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer] = xmmword_101482150;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = 0;
  v7 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error;
  *&v3[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = 0;
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for CRLUSDItemImporter();
  v10 = objc_msgSendSuper2(&v13, "initWithURL:boardItemFactory:", v9, a2);

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

id sub_100BA1C3C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_largeBoundingSize] = vdupq_n_s64(0x4072C00000000000uLL);
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_smallBoundingSize] = vdupq_n_s64(0x4051800000000000uLL);
  v5 = OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__progress;
  *&v2[v5] = [objc_allocWithZone(CRLBasicProgress) initWithMaxValue:100.0];
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter_importBoardItemTask] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter____lazy_storage___asyncRenderer] = xmmword_101482150;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__boardItem] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform18CRLUSDItemImporter__error] = 0;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLUSDItemImporter();
  v6 = objc_msgSendSuper2(&v8, "initWithData:boardItemFactory:", a1, a2);

  if (v6)
  {
  }

  return v6;
}

id sub_100BA1D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDItemImporter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100BA1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a1, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  if (!a3)
  {
    a2 = URL.lastPathComponent.getter();
    a3 = v15;
  }

  v53 = type metadata accessor for CRLPreinsertionAssetWrapper();
  v16 = objc_allocWithZone(v53);
  v51 = v12;
  v52 = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v45 = a2;
    v46 = a3;
    v47 = v13;
    v48 = a4;
    v49 = a1;
    v50 = a5;
    v44 = objc_opt_self();
    v17 = [v44 _atomicIncrementAssertCount];
    v55 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v55);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_1005CF000();
    *(inited + 96) = v26;
    v27 = sub_100BA3138(&qword_1019F52E0, 255, sub_1005CF000);
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 82;
    v29 = v55;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "Invalid init arguments.", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v36 file:v37 lineNumber:82 isFatal:0 format:v38 args:v35];

    a1 = v49;
    v13 = v47;
    a4 = v48;
    a2 = v45;
    a3 = v46;
  }

  v39 = v51;
  sub_10001ACF0(v51, &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__url]);
  v40 = &v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__filename];
  *v40 = a2;
  v40[1] = a3;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__owner] = a4;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__alreadyInsertedAsset] = 0;
  *&v16[OBJC_IVAR____TtC8Freeform27CRLPreinsertionAssetWrapper__tempDir] = 0;
  v54.receiver = v16;
  v54.super_class = v53;
  v41 = objc_msgSendSuper2(&v54, "init");
  (*(v52 + 8))(a1, v13);
  sub_10000CAAC(v39, &unk_1019F33C0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v41;
}

uint64_t sub_100BA246C()
{
  result = sub_1002BC924(0x2000000000000uLL);
  if (result)
  {
    v1 = [objc_opt_self() defaultManager];
    if (URL.isFileURL.getter())
    {
      v4 = 0;
      URL.path.getter();
      v2 = String._bridgeToObjectiveC()();

      v3 = [v1 fileExistsAtPath:v2 isDirectory:&v4];

      return v3 & (v4 ^ 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100BA2560(unint64_t a1)
{
  v99 = a1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {
    if (v98 == 6 && v97 == 0)
    {
      v62 = objc_opt_self();
      v63 = [v62 mainBundle];
      v64 = String._bridgeToObjectiveC()();
      v65 = String._bridgeToObjectiveC()();
      v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = [v62 mainBundle];
      v68 = String._bridgeToObjectiveC()();
      v69 = String._bridgeToObjectiveC()();
      v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = sub_10000BCE4(_swiftEmptyArrayStorage);
      v96 = &type metadata for Bool;
      LOBYTE(v95) = 1;
      sub_10000BF3C(&v95, v94);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, isUniquelyReferenced_nonNull_native);
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;
      swift_getErrorValue();
      v96 = v90;
      v76 = sub_10002C58C(&v95);
      (*(*(v90 - 1) + 16))(v76);
      sub_10000BF3C(&v95, v94);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, v73, v75, v77);

      v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v79;
      type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
      v96 = v81;
      *&v95 = 104;
      sub_10000BF3C(&v95, v94);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9EF34(v94, v78, v80, v82);

      v83 = v71;
      v84 = objc_opt_self();
      v85 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
      v86 = String._bridgeToObjectiveC()();
      v87 = String._bridgeToObjectiveC()();
      sub_10007941C(v83);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = [v84 crl_errorWithDomain:v85 code:105 alertTitle:v86 alertMessage:v87 userInfo:isa];

      goto LABEL_12;
    }

    sub_100863EEC(v97, *(&v97 + 1), v98);
  }

  *&v97 = a1;
  swift_errorRetain();
  if (swift_dynamicCast() && v91 == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = [v3 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10000BCE4(_swiftEmptyArrayStorage);
    v96 = &type metadata for Bool;
    LOBYTE(v95) = 1;
    sub_10000BF3C(&v95, v94);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v12;
    sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, v13);
    v14 = v99;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    swift_getErrorValue();
    v96 = v92;
    v18 = sub_10002C58C(&v95);
    (*(*(v92 - 1) + 16))(v18);
    sub_10000BF3C(&v95, v94);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v14;
    sub_100A9EF34(v94, v15, v17, v19);

    v20 = v99;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
    v96 = v24;
    *&v95 = 104;
    sub_10000BF3C(&v95, v94);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v99 = v20;
    sub_100A9EF34(v94, v21, v23, v25);

    v26 = v99;
    v27 = objc_opt_self();
    v28 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    sub_10007941C(v26);

    v31 = Dictionary._bridgeToObjectiveC()().super.isa;

    v32 = [v27 crl_errorWithDomain:v28 code:103 alertTitle:v29 alertMessage:v30 userInfo:v31];

LABEL_12:

    return v32;
  }

  v33 = objc_opt_self();
  v34 = [v33 mainBundle];
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = [v33 mainBundle];
  v39 = String._bridgeToObjectiveC()();
  v40 = String._bridgeToObjectiveC()();
  v41 = [v38 localizedStringForKey:v39 value:v40 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = sub_10000BCE4(_swiftEmptyArrayStorage);
  v96 = &type metadata for Bool;
  LOBYTE(v95) = 1;
  sub_10000BF3C(&v95, v94);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v42;
  sub_100A9EF34(v94, 0xD000000000000026, 0x800000010158BA90, v43);
  v44 = v97;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  swift_getErrorValue();
  v96 = v93;
  v48 = sub_10002C58C(&v95);
  (*(*(v93 - 1) + 16))(v48);
  sub_10000BF3C(&v95, v94);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v44;
  sub_100A9EF34(v94, v45, v47, v49);

  v50 = v97;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  type metadata accessor for CRLBoardItemImporterErrorMediaType(0);
  v96 = v54;
  *&v95 = 104;
  sub_10000BF3C(&v95, v94);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  *&v97 = v50;
  sub_100A9EF34(v94, v51, v53, v55);

  v56 = v97;
  v57 = objc_opt_self();
  v58 = @"com.apple.freeform.CRLErrorDomainInfoImporter";
  v59 = String._bridgeToObjectiveC()();
  v60 = String._bridgeToObjectiveC()();
  sub_10007941C(v56);

  v61 = Dictionary._bridgeToObjectiveC()().super.isa;

  v32 = [v57 crl_errorWithDomain:v58 code:100 alertTitle:v59 alertMessage:v60 userInfo:v61];

  return v32;
}

uint64_t sub_100BA30D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100BA3138(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100BA3180(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100B9B6FC(a1, v4, v5, v6);
}

unint64_t sub_100BA3234()
{
  result = qword_101A13C28;
  if (!qword_101A13C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C28);
  }

  return result;
}

uint64_t sub_100BA3288()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D3D4;

  return sub_100B9ADF8(v2, v3);
}

unint64_t sub_100BA3348()
{
  result = qword_101A13C30;
  if (!qword_101A13C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C30);
  }

  return result;
}

unint64_t sub_100BA33A0()
{
  result = qword_101A13C38;
  if (!qword_101A13C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C38);
  }

  return result;
}

unint64_t sub_100BA33F8()
{
  result = qword_101A13C40;
  if (!qword_101A13C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C40);
  }

  return result;
}

uint64_t sub_100BA349C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a1;
  v144 = a3;
  v137 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v134 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v133 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for LocalizedStringResource();
  v158 = *(v155 - 8);
  __chkstk_darwin(v155);
  v146 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for InputConnectionBehavior();
  v157 = *(v159 - 8);
  __chkstk_darwin(v159);
  v149 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v11 - 8);
  v145 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v154 = &v130 - v14;
  v15 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v15 - 8);
  v132 = &v130 - v16;
  v17 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v17 - 8);
  v138 = &v130 - v18;
  v19 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v19 - 8);
  v141 = &v130 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v148 = &v130 - v22;
  __chkstk_darwin(v23);
  v150 = &v130 - v24;
  v151 = type metadata accessor for CRLBoardEntity();
  v131 = *(v151 - 8);
  __chkstk_darwin(v151);
  v143 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v142 = &v130 - v27;
  __chkstk_darwin(v28);
  v156 = &v130 - v29;
  v30 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v30 - 8);
  v171 = (&v130 - v31);
  v32 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v32 - 8);
  v140 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v139 = &v130 - v35;
  __chkstk_darwin(v36);
  v147 = &v130 - v37;
  __chkstk_darwin(v38);
  v40 = &v130 - v39;
  v178 = type metadata accessor for URL();
  v41 = *(v178 - 8);
  __chkstk_darwin(v178);
  v169 = &v130 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v168 = &v130 - v44;
  v45 = sub_1005B981C(&qword_101A13C68);
  __chkstk_darwin(v45 - 8);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = &v130 - v49;
  v51 = type metadata accessor for IntentFile();
  __chkstk_darwin(v51);
  v177 = &v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a2 + 16);
  v153 = v41;
  if (v54)
  {
    v55 = a2 + 32;
    v56 = (v41 + 48);
    v164 = (v41 + 32);
    v163 = (v41 + 16);
    v162 = (v41 + 8);
    v175 = (v52 + 56);
    v174 = (v52 + 48);
    v167 = v52;
    v173 = (v52 + 32);
    v179 = _swiftEmptyArrayStorage;
    v176 = v40;
    v170 = v47;
    v166 = v50;
    v165 = v51;
    while (1)
    {
      v180 = v55;
      sub_10000630C(v55, v185);
      v57 = v186;
      v58 = v187;
      sub_100020E58(v185, v186);
      (*(v58 + 16))(v57, v58);
      if ((*v56)(v40, 1, v178) != 1)
      {
        break;
      }

      sub_10000CAAC(v40, &unk_1019F33C0);
      v59 = v186;
      v60 = v187;
      sub_100020E58(v185, v186);
      (*(v60 + 8))(v59, v60);
      if (v61 >> 60 != 15)
      {
        v172 = v54;
        v75 = v186;
        v76 = v187;
        sub_100020E58(v185, v186);
        v77 = v75;
        v47 = v170;
        v161 = (*(v76 + 24))(v77, v76);
        v160 = v78;
        v80 = v186;
        v79 = v187;
        sub_100020E58(v185, v186);
        (*(v79 + 32))(v80, v79);
        v54 = v172;
        IntentFile.init(data:filename:type:)();
        goto LABEL_10;
      }

      v62 = 1;
LABEL_11:
      (*v175)(v47, v62, 1, v51);
      sub_100BAB424(v47, v50);
      sub_100005070(v185);
      if ((*v174)(v50, 1, v51) == 1)
      {
        sub_10000CAAC(v50, &qword_101A13C68);
      }

      else
      {
        v81 = *v173;
        (*v173)(v177, v50, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = sub_100B372BC(0, *(v179 + 2) + 1, 1, v179);
        }

        v83 = *(v179 + 2);
        v82 = *(v179 + 3);
        v84 = v167;
        if (v83 >= v82 >> 1)
        {
          v86 = sub_100B372BC(v82 > 1, v83 + 1, 1, v179);
          v84 = v167;
          v179 = v86;
        }

        v85 = v179;
        *(v179 + 2) = v83 + 1;
        v81(&v85[((*(v84 + 80) + 32) & ~*(v84 + 80)) + v84[9] * v83], v177, v51);
      }

      v40 = v176;
      v55 = v180 + 40;
      v54 = (v54 - 1);
      if (!v54)
      {
        goto LABEL_18;
      }
    }

    v63 = v168;
    v64 = v178;
    (*v164)(v168, v40, v178);
    (*v163)(v169, v63, v64);
    v65 = v186;
    v66 = v187;
    sub_100020E58(v185, v186);
    v172 = (*(v66 + 24))(v65, v66);
    v67 = v56;
    v68 = v54;
    v69 = v186;
    v70 = v187;
    sub_100020E58(v185, v186);
    v71 = *(v70 + 32);
    v72 = v69;
    v47 = v170;
    v73 = v70;
    v54 = v68;
    v56 = v67;
    v71(v72, v73);
    v51 = v165;
    IntentFile.init(fileURL:filename:type:)();
    v74 = v63;
    v50 = v166;
    (*v162)(v74, v64);
LABEL_10:
    v62 = 0;
    goto LABEL_11;
  }

  v179 = _swiftEmptyArrayStorage;
LABEL_18:
  if (*(v179 + 2))
  {
    sub_1006B05D0(v152, v156);
    v168 = type metadata accessor for AttributedString();
    v87 = *(v168 - 1);
    v167 = *(v87 + 56);
    v169 = (v87 + 56);
    (v167)(v150, 1, 1, v168);
    v88 = *(v153 + 56);
    v153 += 56;
    v171 = v88;
    v88(v147, 1, 1, v178);
    v184[3] = &type metadata for CRLAddItemToBoardIntentPerformer;
    v184[4] = &off_1018AC330;
    v89 = swift_allocObject();
    v184[0] = v89;
    v89[5] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
    v89[6] = &off_101887238;
    v90 = swift_allocObject();
    v89[2] = v90;
    *(v90 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
    *(v90 + 48) = &off_101891740;
    v89[10] = &type metadata for CRLInsertURLToBoardIntentPerformer;
    v89[11] = &off_1018844F8;
    v91 = swift_allocObject();
    v89[7] = v91;
    *(v91 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
    *(v91 + 48) = &off_101891740;
    sub_1005B981C(&qword_1019F6278);
    v92 = *(v158 + 56);
    v158 += 56;
    v176 = v92;
    v93 = v138;
    (v92)(v138, 1, 1, v155);
    (*(v131 + 56))(v132, 1, 1, v151);
    v94 = type metadata accessor for IntentDialog();
    v175 = v94;
    v95 = *(v94 - 8);
    v96 = *(v95 + 56);
    v177 = v96;
    v180 = v95 + 56;
    (v96)(v154, 1, 1, v94);
    (v96)(v145, 1, 1, v94);
    LODWORD(v174) = enum case for InputConnectionBehavior.default(_:);
    v173 = *(v157 + 104);
    v157 += 104;
    v97 = v149;
    (v173)(v149);
    v172 = type metadata accessor for CRLBoardEntity;
    sub_100BABB30(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
    v170 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
    v185[0] = v170;
    v166 = sub_1005B981C(&qword_101A13C70);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v98 = enum case for LocalizedStringResource.BundleDescription.main(_:);
    v99 = *(v135 + 104);
    v100 = v136;
    v101 = v137;
    v99(v136, enum case for LocalizedStringResource.BundleDescription.main(_:), v137);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v99(v100, v98, v101);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v102 = v155;
    (v176)(v93, 0, 1, v155);
    LOBYTE(v183) = 10;
    v103 = v175;
    v104 = v177;
    (v177)(v154, 1, 1, v175);
    (v104)(v145, 1, 1, v103);
    v105 = v174;
    v106 = v159;
    v107 = v173;
    (v173)(v97, v174, v159);
    sub_100ADC2CC();
    v185[1] = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
    v166 = sub_1005B981C(&qword_1019FC888);
    v108 = v102;
    v109 = v176;
    (v176)(v93, 1, 1, v102);
    (v167)(v148, 1, 1, v168);
    v110 = v154;
    (v177)(v154, 1, 1, v175);
    v111 = v149;
    (v107)(v149, v105, v106);
    v169 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
    v185[2] = v169;
    v168 = sub_1005B981C(&qword_1019F8AF8);
    v112 = v93;
    v109(v93, 1, 1, v108);
    v183 = _swiftEmptyArrayStorage;
    sub_1005B981C(&qword_101A054A0);
    type metadata accessor for UTType();
    *(swift_allocObject() + 16) = xmmword_10146C6B0;
    static UTType.item.getter();
    v113 = v175;
    (v177)(v110, 1, 1, v175);
    v114 = v111;
    v115 = v111;
    v116 = v174;
    v117 = v173;
    (v173)(v115, v174, v159);
    v186 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
    sub_1005B981C(&qword_101A13C78);
    (v176)(v112, 1, 1, v155);
    v118 = v139;
    v171(v139, 1, 1, v178);
    (v177)(v110, 1, 1, v113);
    (v117)(v114, v116, v159);
    v180 = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
    v187 = v180;
    sub_1005B981C(&qword_1019F6280);
    v181 = 0xD00000000000001FLL;
    v182 = 0x8000000101558510;
    AnyHashable.init<A>(_:)();
    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v188 = AppDependency.__allocating_init(key:manager:)();
    sub_10000630C(v184, v189);
    v119 = v142;
    sub_1006B05D0(v156, v142);
    v120 = v143;
    sub_1006B05D0(v119, v143);
    IntentParameter.wrappedValue.setter();
    sub_100689004(v119);
    v121 = v150;
    v122 = v148;
    sub_10000BE14(v150, v148, &qword_1019FC880);
    sub_10000BE14(v122, v141, &qword_1019FC880);
    IntentParameter.wrappedValue.setter();
    sub_10000CAAC(v122, &qword_1019FC880);
    v183 = v179;
    IntentParameter.wrappedValue.setter();
    v123 = v147;
    sub_10000BE14(v147, v118, &unk_1019F33C0);
    sub_10000BE14(v118, v140, &unk_1019F33C0);
    IntentParameter.wrappedValue.setter();
    sub_10000CAAC(v118, &unk_1019F33C0);
    sub_10000CAAC(v123, &unk_1019F33C0);
    sub_10000CAAC(v121, &qword_1019FC880);
    v124 = v156;
    sub_100689004(v156);
    sub_100005070(v184);
    v125 = v144;
    *(v144 + 24) = &type metadata for CRLAddItemToBoardIntent;
    v125[4] = sub_100BAB3C0();
    v126 = swift_allocObject();
    *v125 = v126;
    sub_100BAB494(v185, v126 + 16);
    v125[8] = sub_1005B981C(&qword_1019F7400);
    v125[9] = sub_10001A2F8(&qword_1019F7408, &qword_1019F7400);
    sub_10002C58C(v125 + 5);
    sub_1006B05D0(v152, v124);
    v127 = sub_100B0768C();
    sub_1006B05D0(v124, v119);
    sub_1006B05D0(v119, v120);
    IntentParameter.wrappedValue.setter();
    sub_100689004(v119);
    sub_100689004(v124);
    v184[0] = v127;
    sub_100BABB30(&qword_1019F7410, v172);
    sub_10068984C();
    static IntentResult.result<A, B>(value:opensIntent:)();

    return sub_100BABB00(v185);
  }

  else
  {
    v129 = v144;
    *(v144 + 48) = 0u;
    v129[4] = 0u;
    v129[1] = 0u;
    v129[2] = 0u;
    *v129 = 0u;
  }
}

uint64_t sub_100BA4E44@<X0>(uint64_t *a1@<X8>)
{
  v73 = a1;
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v62 = v57 - v2;
  v3 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v3 - 8);
  v61 = v57 - v4;
  v60 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v57[4] = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v57[3] = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  v71 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v67 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for InputConnectionBehavior();
  v13 = *(v75 - 8);
  __chkstk_darwin(v75);
  v64 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v15 - 8);
  v17 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v57 - v19;
  v21 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v21 - 8);
  v23 = v57 - v22;
  v24 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v24 - 8);
  v26 = v57 - v25;
  sub_1005B981C(&qword_1019F6278);
  v27 = *(v11 + 56);
  v72 = v11 + 56;
  v66 = v27;
  v27(v26, 1, 1, v10);
  v28 = type metadata accessor for CRLBoardEntity();
  (*(*(v28 - 8) + 56))(v23, 1, 1, v28);
  v29 = type metadata accessor for IntentDialog();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v69 = v31;
  v70 = v30 + 56;
  v63 = v20;
  v31(v20, 1, 1, v29);
  v57[0] = v17;
  v31(v17, 1, 1, v29);
  v74 = enum case for InputConnectionBehavior.default(_:);
  v32 = *(v13 + 104);
  v57[2] = v13 + 104;
  v68 = v32;
  v32(v64);
  sub_100BABB30(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v73 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v57[1] = sub_1005B981C(&qword_101A13C70);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v34 = *(v59 + 104);
  v35 = v58;
  v36 = v60;
  v34(v58, enum case for LocalizedStringResource.BundleDescription.main(_:), v60);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v35, v33, v36);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v37 = v26;
  v38 = v71;
  v39 = v66;
  v66(v26, 0, 1, v71);
  LOBYTE(v78) = 10;
  v65 = v29;
  v40 = v69;
  v69(v63, 1, 1, v29);
  v40(v57[0], 1, 1, v29);
  v41 = v64;
  v42 = v68;
  v68(v64, v74, v75);
  sub_100ADC2CC();
  v43 = v41;
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v45 = v73;
  v73[1] = v44;
  sub_1005B981C(&qword_1019FC888);
  v46 = v37;
  v39(v37, 1, 1, v38);
  v47 = type metadata accessor for AttributedString();
  (*(*(v47 - 8) + 56))(v61, 1, 1, v47);
  v48 = v63;
  v69(v63, 1, 1, v65);
  v42(v43, v74, v75);
  v45[2] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  v67 = sub_1005B981C(&qword_1019F8AF8);
  v39(v46, 1, 1, v71);
  v78 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A054A0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.item.getter();
  v49 = v65;
  v50 = v69;
  v69(v48, 1, 1, v65);
  v68(v43, v74, v75);
  v51 = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v52 = v73;
  v73[3] = v51;
  sub_1005B981C(&qword_101A13C78);
  v66(v46, 1, 1, v71);
  v53 = type metadata accessor for URL();
  (*(*(v53 - 8) + 56))(v62, 1, 1, v53);
  v50(v48, 1, 1, v49);
  v68(v43, v74, v75);
  v52[4] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280);
  v76 = 0xD00000000000001FLL;
  v77 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v52[5] = AppDependency.__allocating_init(key:manager:)();
  v52[9] = &type metadata for CRLAddItemToBoardIntentPerformer;
  v52[10] = &off_1018AC330;
  v54 = swift_allocObject();
  v52[6] = v54;
  v54[5] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
  v54[6] = &off_101887238;
  v55 = swift_allocObject();
  v54[2] = v55;
  *(v55 + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(v55 + 48) = &off_101891740;
  v54[10] = &type metadata for CRLInsertURLToBoardIntentPerformer;
  v54[11] = &off_1018844F8;
  result = swift_allocObject();
  v54[7] = result;
  *(result + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(result + 48) = &off_101891740;
  return result;
}

uint64_t sub_100BA5A14(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[34] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[35] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[36] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[37] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  v5 = type metadata accessor for AttributedString();
  v2[41] = v5;
  v2[42] = *(v5 - 8);
  v2[43] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  sub_1005B981C(&qword_1019FC880);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = type metadata accessor for CRLBoardEntity();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_1005B981C(&qword_101A13C80);
  v2[56] = swift_task_alloc();
  v6 = type metadata accessor for IntentSystemContext();
  v2[57] = v6;
  v2[58] = *(v6 - 8);
  v2[59] = swift_task_alloc();
  v7 = type metadata accessor for IntentSystemContext.Source();
  v2[60] = v7;
  v2[61] = *(v7 - 8);
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();

  return _swift_task_switch(sub_100BA5E44, 0, 0);
}

uint64_t sub_100BA5E44()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 464);
  v3 = *(v0 + 472);
  v6 = *(v0 + 448);
  v5 = *(v0 + 456);
  sub_100BAB3C0();
  AppIntent.systemContext.getter();
  IntentSystemContext.source.getter();
  (*(v4 + 8))(v3, v5);
  v7 = *(v2 + 48);
  v8 = v7(v6, 1, v1);
  v9 = *(v0 + 504);
  v11 = *(v0 + 480);
  v10 = *(v0 + 488);
  v12 = *(v0 + 448);
  if (v8 == 1)
  {
    v13 = enum case for IntentSystemContext.Source.shortcuts(_:);
    (*(v10 + 104))(v9, enum case for IntentSystemContext.Source.shortcuts(_:), *(v0 + 480));
    if (v7(v12, 1, v11) != 1)
    {
      sub_10000CAAC(*(v0 + 448), &qword_101A13C80);
    }
  }

  else
  {
    (*(v10 + 32))(v9, *(v0 + 448), *(v0 + 480));
    v13 = enum case for IntentSystemContext.Source.shortcuts(_:);
  }

  v14 = *(v0 + 496);
  v16 = *(v0 + 480);
  v15 = *(v0 + 488);
  v17 = *(v0 + 240);
  *(v0 + 512) = sub_100020E58(v17 + 6, v17[9]);
  *(v0 + 520) = *v17;
  IntentParameter.wrappedValue.getter();
  (*(v15 + 104))(v14, v13, v16);
  sub_100BABB30(&qword_101A13C88, &type metadata accessor for IntentSystemContext.Source);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v15 + 8);
  *(v0 + 528) = v18;
  *(v0 + 536) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v14, v16);
  v19 = *(v0 + 168);
  v20 = *(v0 + 176);
  AppDependency.wrappedValue.getter();
  v21 = *(v0 + 184);
  *(v0 + 112) = &type metadata for CRLBoardLibraryProvidingDependency;
  *(v0 + 120) = &off_1018AD9D0;
  *(v0 + 88) = v21;
  *(v0 + 544) = v17[1];
  IntentParameter.wrappedValue.getter();
  LODWORD(v14) = *(v0 + 760);
  *(v0 + 762) = v14;
  IntentParameter.wrappedValue.getter();
  *(v0 + 552) = v17[3];
  IntentParameter.wrappedValue.getter();
  *(v0 + 560) = *(v0 + 192);
  *(v0 + 568) = v17[4];
  IntentParameter.wrappedValue.getter();
  if (v14 == 10 && v19 == v20)
  {
    v22 = *(v0 + 440);
    v23 = *(v0 + 392);
    v24 = *(v0 + 368);

    sub_100BABB78();
    v25 = swift_allocError();
    *v26 = 2;
    swift_willThrow();
    sub_10000CAAC(v24, &unk_1019F33C0);
    sub_10000CAAC(v23, &qword_1019FC880);
    sub_100689004(v22);
    sub_100005070(v0 + 88);
    *(v0 + 200) = v25;
    swift_errorRetain();
    sub_1005B981C(&unk_1019F6B40);
    if (swift_dynamicCast())
    {

      if (*(v0 + 761) == 2)
      {
        if (qword_1019F2238 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 528);
        v53 = *(v0 + 480);
        v54 = *(v0 + 504);
        v27 = *(v0 + 296);
        v28 = *(v0 + 256);
        v29 = *(v0 + 264);
        v30 = *(v0 + 248);
        v31 = static OS_os_log.appIntents;
        v32 = static os_log_type_t.default.getter();
        sub_100005404(v31, &_mh_execute_header, v32, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
        IntentParameter.projectedValue.getter();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*(v28 + 104))(v29, enum case for LocalizedStringResource.BundleDescription.main(_:), v30);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        v33 = type metadata accessor for IntentDialog();
        (*(*(v33 - 8) + 56))(v27, 0, 1, v33);
        type metadata accessor for AppIntentError();
        sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_10000CAAC(v27, &qword_1019F6260);
        swift_willThrow();
        v56(v54, v53);
      }

      else
      {
        v46 = *(v0 + 248);
        v47 = (*(v0 + 256) + 104);
        v48 = *(v0 + 528);
        v55 = *(v0 + 504);
        v57 = *(v0 + 480);
        v49 = *(v0 + 296);
        v50 = *(v0 + 264);
        IntentParameter.projectedValue.getter();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        (*v47)(v50, enum case for LocalizedStringResource.BundleDescription.main(_:), v46);
        LocalizedStringResource.init(_:table:locale:bundle:comment:)();
        IntentDialog.init(_:)();
        v51 = type metadata accessor for IntentDialog();
        (*(*(v51 - 8) + 56))(v49, 0, 1, v51);
        type metadata accessor for AppIntentError();
        sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
        swift_allocError();
        IntentParameter.needsValueError(_:)();

        sub_10000CAAC(v49, &qword_1019F6260);
        swift_willThrow();
        v48(v55, v57);
      }
    }

    else
    {

      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v37 = *(v0 + 528);
      v38 = *(v0 + 504);
      v39 = *(v0 + 480);
      v40 = static OS_os_log.appIntents;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(v0 + 208) = v25;
      swift_errorRetain();
      v42 = String.init<A>(describing:)();
      v44 = v43;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v42;
      *(inited + 40) = v44;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v45, "Error inserting content: %@", 27, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      static AppIntentError.Unrecoverable.unknown.getter();
      swift_willThrow();

      v37(v38, v39);
    }

    v52 = *(v0 + 8);

    return v52();
  }

  else
  {
    sub_100020E58((v0 + 88), *(v0 + 112));
    *(v0 + 576) = type metadata accessor for MainActor();
    *(v0 + 584) = static MainActor.shared.getter();
    v34 = swift_task_alloc();
    *(v0 + 592) = v34;
    *v34 = v0;
    v34[1] = sub_100BA69A4;
    v35 = *(v0 + 440);

    return sub_1010AF408(v35);
  }
}

uint64_t sub_100BA69A4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {

    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_100BA7230;
  }

  else
  {
    *(v4 + 608) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_100BA6B34;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_100BA6B34()
{
  v1 = v0[76];

  v0[19] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v0[20] = &off_1018ADA90;
  v0[16] = v1;

  return _swift_task_switch(sub_100BA6BB8, 0, 0);
}

uint64_t sub_100BA6BB8()
{
  *(v0 + 216) = _swiftEmptyArrayStorage;
  v1 = v0 + 128;
  v2 = *(v0 + 762);
  if (v2 == 10)
  {
    v3 = *(v0 + 384);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    sub_10000BE14(*(v0 + 392), v3, &qword_1019FC880);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(*(v0 + 384), &qword_1019FC880);
    }

    else
    {
      v11 = *(v0 + 376);
      v13 = *(v0 + 336);
      v12 = *(v0 + 344);
      v14 = *(v0 + 328);
      (*(v13 + 32))(v12, *(v0 + 384), v14);
      (*(v13 + 16))(v11, v12, v14);
      (*(v13 + 56))(v11, 0, 1, v14);
      v15 = sub_100020E58((v0 + 128), *(v0 + 152));
      v16 = sub_100BAB4CC(6u, v11, *v15);
      sub_10000CAAC(v11, &qword_1019FC880);
      if (v16 >> 62)
      {
        type metadata accessor for CRLBoardItem(0);

        v17 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for CRLBoardItem(0);
        v17 = v16;
      }

      v19 = *(v0 + 336);
      v18 = *(v0 + 344);
      v20 = *(v0 + 328);

      sub_100798D00(v17);
      (*(v19 + 8))(v18, v20);
    }

    v21 = *(v0 + 360);
    v22 = *(v0 + 304);
    v23 = *(v0 + 312);
    sub_10000BE14(*(v0 + 368), v21, &unk_1019F33C0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10000CAAC(*(v0 + 360), &unk_1019F33C0);
      if (*(*(v0 + 560) + 16))
      {
        v24 = swift_task_alloc();
        *(v0 + 736) = v24;
        *v24 = v0;
        v25 = sub_100BA9D34;
LABEL_26:
        v24[1] = v25;
        v33 = *(v0 + 560);

        return sub_100FC1094(v33, v1);
      }

      v8 = *(v0 + 216);
      goto LABEL_7;
    }

    v26 = *(v0 + 352);
    v28 = *(v0 + 312);
    v27 = *(v0 + 320);
    v29 = *(v0 + 304);
    (*(v28 + 32))(v27, *(v0 + 360), v29);
    (*(v28 + 16))(v26, v27, v29);
    (*(v28 + 56))(v26, 0, 1, v29);
    v30 = swift_task_alloc();
    *(v0 + 712) = v30;
    *v30 = v0;
    v30[1] = sub_100BA98A8;
    v31 = *(v0 + 352);
LABEL_19:

    return sub_100FC0A84(v31, v1);
  }

  if (v2 >= 8)
  {
    if (v2 != 8)
    {
      v24 = swift_task_alloc();
      *(v0 + 632) = v24;
      *v24 = v0;
      v25 = sub_100BA7BD8;
      goto LABEL_26;
    }

    v32 = swift_task_alloc();
    *(v0 + 616) = v32;
    *v32 = v0;
    v32[1] = sub_100BA7AB0;
    v31 = *(v0 + 368);
    goto LABEL_19;
  }

  v6 = *(v0 + 392);

  v7 = sub_100020E58((v0 + 128), *(v0 + 152));
  v8 = sub_100BAB4CC(v2, v6, *v7);
  if (v8 >> 62)
  {
    type metadata accessor for CRLBoardItem(0);
    v38 = _bridgeCocoaArray<A>(_:)();

    v8 = v38;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    type metadata accessor for CRLBoardItem(0);
  }

LABEL_7:
  *(v0 + 648) = v8;
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_9;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    sub_100020E58((v0 + 128), *(v0 + 152));
    v9 = swift_task_alloc();
    *(v0 + 656) = v9;
    *v9 = v0;
    v9[1] = sub_100BA7D1C;

    return sub_100FE17C4(v8);
  }

  sub_100BABB78();
  v34 = swift_allocError();
  *v35 = 2;
  swift_willThrow();
  *(v0 + 672) = v34;
  v36 = *sub_100020E58((v0 + 88), *(v0 + 112));
  v37 = swift_task_alloc();
  *(v0 + 680) = v37;
  *v37 = v0;
  v37[1] = sub_100BA7FF4;

  return sub_100FF8D2C(v1, v36);
}

uint64_t sub_100BA7230()
{

  return _swift_task_switch(sub_100BA7298, 0, 0);
}

uint64_t sub_100BA7298()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  sub_10000CAAC(*(v0 + 368), &unk_1019F33C0);
  sub_10000CAAC(v2, &qword_1019FC880);
  sub_100689004(v1);
  v3 = *(v0 + 600);
  sub_100005070(v0 + 88);
  *(v0 + 200) = v3;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    if (*(v0 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 528);
      v28 = *(v0 + 480);
      v29 = *(v0 + 504);
      v4 = *(v0 + 296);
      v5 = *(v0 + 256);
      v6 = *(v0 + 264);
      v7 = *(v0 + 248);
      v8 = static OS_os_log.appIntents;
      v9 = static os_log_type_t.default.getter();
      sub_100005404(v8, &_mh_execute_header, v9, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v5 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v10 = type metadata accessor for IntentDialog();
      (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v4, &qword_1019F6260);
      swift_willThrow();
      v31(v29, v28);
    }

    else
    {
      v20 = *(v0 + 248);
      v21 = (*(v0 + 256) + 104);
      v22 = *(v0 + 528);
      v30 = *(v0 + 504);
      v32 = *(v0 + 480);
      v23 = *(v0 + 296);
      v24 = *(v0 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v21)(v24, enum case for LocalizedStringResource.BundleDescription.main(_:), v20);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v25 = type metadata accessor for IntentDialog();
      (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v23, &qword_1019F6260);
      swift_willThrow();
      v22(v30, v32);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 528);
    v12 = *(v0 + 504);
    v13 = *(v0 + 480);
    v14 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 208) = v3;
    swift_errorRetain();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v19, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v11(v12, v13);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100BA7AB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 624) = v1;

  if (v1)
  {
    v5 = sub_100BA95B0;
  }

  else
  {
    *(v4 + 696) = a1;
    v5 = sub_100BA9418;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA7BD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 640) = v1;

  if (v1)
  {
    v5 = sub_100BA97F8;
  }

  else
  {
    *(v4 + 704) = a1;
    v5 = sub_100BA9660;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA7D1C()
{

  return _swift_task_switch(sub_100BA7E34, 0, 0);
}

uint64_t sub_100BA7E34()
{
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7EDC;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA7EDC()
{

  if (v0)
  {

    v1 = sub_100BABCA4;
  }

  else
  {
    v1 = sub_100BA9160;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100BA7FF4()
{
  *(*v1 + 688) = v0;

  if (v0)
  {
    v2 = sub_100BA8934;
  }

  else
  {
    v2 = sub_100BA8108;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100BA8108()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);
  swift_willThrow();
  sub_10000CAAC(v3, &unk_1019F33C0);
  sub_10000CAAC(v2, &qword_1019FC880);
  sub_100689004(v1);
  sub_100005070(v0 + 128);
  v4 = *(v0 + 672);
  sub_100005070(v0 + 88);
  *(v0 + 200) = v4;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    if (*(v0 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 528);
      v29 = *(v0 + 480);
      v30 = *(v0 + 504);
      v5 = *(v0 + 296);
      v6 = *(v0 + 256);
      v7 = *(v0 + 264);
      v8 = *(v0 + 248);
      v9 = static OS_os_log.appIntents;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v6 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v11 = type metadata accessor for IntentDialog();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v5, &qword_1019F6260);
      swift_willThrow();
      v32(v30, v29);
    }

    else
    {
      v21 = *(v0 + 248);
      v22 = (*(v0 + 256) + 104);
      v23 = *(v0 + 528);
      v31 = *(v0 + 504);
      v33 = *(v0 + 480);
      v24 = *(v0 + 296);
      v25 = *(v0 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v22)(v25, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v26 = type metadata accessor for IntentDialog();
      (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v24, &qword_1019F6260);
      swift_willThrow();
      v23(v31, v33);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 528);
    v13 = *(v0 + 504);
    v14 = *(v0 + 480);
    v15 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 208) = v4;
    swift_errorRetain();
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v12(v13, v14);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100BA8934()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);

  sub_10000CAAC(v3, &unk_1019F33C0);
  sub_10000CAAC(v2, &qword_1019FC880);
  sub_100689004(v1);
  sub_100005070(v0 + 128);
  v4 = *(v0 + 688);
  sub_100005070(v0 + 88);
  *(v0 + 200) = v4;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  if (swift_dynamicCast())
  {

    if (*(v0 + 761) == 2)
    {
      if (qword_1019F2238 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 528);
      v29 = *(v0 + 480);
      v30 = *(v0 + 504);
      v5 = *(v0 + 296);
      v6 = *(v0 + 256);
      v7 = *(v0 + 264);
      v8 = *(v0 + 248);
      v9 = static OS_os_log.appIntents;
      v10 = static os_log_type_t.default.getter();
      sub_100005404(v9, &_mh_execute_header, v10, "Nothing available to be inserted, requesting item type", 54, 2, _swiftEmptyArrayStorage);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*(v6 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v11 = type metadata accessor for IntentDialog();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v5, &qword_1019F6260);
      swift_willThrow();
      v32(v30, v29);
    }

    else
    {
      v21 = *(v0 + 248);
      v22 = (*(v0 + 256) + 104);
      v23 = *(v0 + 528);
      v31 = *(v0 + 504);
      v33 = *(v0 + 480);
      v24 = *(v0 + 296);
      v25 = *(v0 + 264);
      IntentParameter.projectedValue.getter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      (*v22)(v25, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      v26 = type metadata accessor for IntentDialog();
      (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
      type metadata accessor for AppIntentError();
      sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
      swift_allocError();
      IntentParameter.needsValueError(_:)();

      sub_10000CAAC(v24, &qword_1019F6260);
      swift_willThrow();
      v23(v31, v33);
    }
  }

  else
  {

    if (qword_1019F2238 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 528);
    v13 = *(v0 + 504);
    v14 = *(v0 + 480);
    v15 = static OS_os_log.appIntents;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(v0 + 208) = v4;
    swift_errorRetain();
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v20, "Error inserting content: %@", 27, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    type metadata accessor for AppIntentError();
    sub_100BABB30(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
    swift_willThrow();

    v12(v13, v14);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_100BA9160()
{
  v1 = v0[63];
  v11 = v0[60];
  v12 = v0[66];
  v2 = v0[55];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[49];
  sub_10000CAAC(v0[46], &unk_1019F33C0);
  sub_10000CAAC(v7, &qword_1019FC880);
  sub_100689004(v2);
  sub_100005070((v0 + 16));
  sub_100005070((v0 + 11));
  IntentParameter.wrappedValue.getter();
  sub_1006B05D0(v3, v4);
  v8 = sub_100B0768C();
  sub_1006B05D0(v4, v6);
  sub_1006B05D0(v6, v5);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v6);
  sub_100689004(v4);
  v0[28] = v8;
  sub_100BABB30(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v3);
  v12(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100BA9418()
{
  v1 = v0[87];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BA95B0()
{
  v0[84] = v0[78];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA9660()
{
  v1 = v0[88];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BA97F8()
{
  v0[84] = v0[80];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA98A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 720) = v1;

  if (v1)
  {
    v5 = *(v4 + 352);

    sub_10000CAAC(v5, &unk_1019F33C0);

    v6 = sub_100BA9C6C;
  }

  else
  {
    v7 = *(v4 + 352);
    *(v4 + 728) = a1;
    sub_10000CAAC(v7, &unk_1019F33C0);
    v6 = sub_100BA9A10;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100BA9A10()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  sub_100798D00(v0[91]);
  (*(v2 + 8))(v1, v3);
  if (*(v0[70] + 16))
  {
    v4 = swift_task_alloc();
    v0[92] = v4;
    *v4 = v0;
    v4[1] = sub_100BA9D34;
    v5 = v0[70];

    return sub_100FC1094(v5, (v0 + 16));
  }

  v7 = v0[27];
  v0[81] = v7;
  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_100020E58(v0 + 16, v0[19]);
    v8 = swift_task_alloc();
    v0[82] = v8;
    *v8 = v0;
    v8[1] = sub_100BA7D1C;

    return sub_100FE17C4(v7);
  }

  sub_100BABB78();
  v9 = swift_allocError();
  *v10 = 2;
  swift_willThrow();
  v0[84] = v9;
  v11 = *sub_100020E58(v0 + 11, v0[14]);
  v12 = swift_task_alloc();
  v0[85] = v12;
  *v12 = v0;
  v12[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v11);
}

uint64_t sub_100BA9C6C()
{
  (*(v0[39] + 8))(v0[40], v0[38]);
  v0[84] = v0[90];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BA9D34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 744) = v1;

  if (v1)
  {

    v5 = sub_100BAA018;
  }

  else
  {
    *(v4 + 752) = a1;
    v5 = sub_100BA9E74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100BA9E74()
{
  sub_100798D00(v0[94]);
  v1 = v0[27];
  v0[81] = v1;
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_100020E58(v0 + 16, v0[19]);
    v2 = swift_task_alloc();
    v0[82] = v2;
    *v2 = v0;
    v2[1] = sub_100BA7D1C;

    return sub_100FE17C4(v1);
  }

  sub_100BABB78();
  v4 = swift_allocError();
  *v5 = 2;
  swift_willThrow();
  v0[84] = v4;
  v6 = *sub_100020E58(v0 + 11, v0[14]);
  v7 = swift_task_alloc();
  v0[85] = v7;
  *v7 = v0;
  v7[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v6);
}

uint64_t sub_100BAA018()
{
  v0[84] = v0[93];
  v1 = *sub_100020E58(v0 + 11, v0[14]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_100BA7FF4;

  return sub_100FF8D2C((v0 + 16), v1);
}

uint64_t sub_100BAA0C8@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = sub_1005B981C(&qword_101A13C98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CE0);
  sub_100BAB3C0();
  sub_10001A2F8(&qword_101A13CE8, &qword_101A13CE0);
  ParameterSummarySwitchCondition.init(_:_:)();
  sub_10001A2F8(&qword_101A13CA8, &qword_101A13C98);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v8 = *(v2 + 8);
  v8(v4, v1);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v8)(v7, v1);
}

uint64_t sub_100BAA2DC@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1005B981C(&qword_101A13CF0);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v35 = &v30 - v5;
  v6 = sub_1005B981C(&qword_101A13CF8);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v30 - v9;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  __chkstk_darwin(v13);
  v32 = &v30 - v14;
  v47 = 9;
  sub_1005B981C(&qword_101A13D00);
  v15 = sub_1005B981C(&qword_101A13CA0);
  v30 = sub_100BAB3C0();
  v40 = sub_100BABBCC();
  v41 = sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0);
  v39 = v15;
  ParameterSummaryCaseCondition.init(_:_:)();
  sub_10001A2F8(&qword_101A13D10, &qword_101A13CF8);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16 = *(v44 + 8);
  v44 += 8;
  v31 = v12;
  v16(v12, v6);
  v46 = 1;
  v17 = v43;
  ParameterSummaryCaseCondition.init(_:_:)();
  v42 = v6;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16(v17, v6);
  v18 = v16;
  v45 = 8;
  v19 = v33;
  ParameterSummaryCaseCondition.init(_:_:)();
  v20 = v42;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v16(v19, v20);
  v21 = v34;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_10001A2F8(&qword_101A13D18, &qword_101A13CF0);
  v22 = v35;
  v23 = v36;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v24 = *(v37 + 8);
  v24(v21, v23);
  v25 = v31;
  v26 = v32;
  v27 = v43;
  v28 = v42;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C, D>(_:_:_:_:)();
  v24(v22, v23);
  v18(v27, v28);
  v18(v25, v28);
  return (v18)(v26, v28);
}

uint64_t sub_100BAA8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a1;
  v16[1] = a2;
  v2 = sub_1005B981C(&qword_101A13CC0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A13CC8);
  __chkstk_darwin(v3);
  v4 = sub_1005B981C(&qword_101A13CA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_100BAB3C0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 543450177;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v13);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:_:)();
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v14)(v10, v4);
}

uint64_t sub_100BAAC3C()
{
  swift_getKeyPath();
  sub_100BAB3C0();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_1005B981C(&unk_1019F4D60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101465920;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100BAACF0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1005B981C(&qword_101A13CC0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1005B981C(&qword_101A13CC8);
  __chkstk_darwin(v2);
  v3 = sub_1005B981C(&qword_101A13CA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100BAB3C0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 543450177;
  v10._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 544175136;
  v11._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13CD8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_100BAB02C(uint64_t a1)
{
  v2 = sub_100BABC50();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100BAB078()
{
  HasValueComparisonOperator = type metadata accessor for HasValueComparisonOperator();
  v1 = *(HasValueComparisonOperator - 8);
  __chkstk_darwin(HasValueComparisonOperator);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  (*(v1 + 104))(v3, enum case for HasValueComparisonOperator.hasAnyValue(_:), HasValueComparisonOperator);
  sub_1005B981C(&qword_101A13C98);
  sub_1005B981C(&qword_101A13CA0);
  sub_10001A2F8(&qword_101A13CA8, &qword_101A13C98);
  sub_10001A2F8(&qword_101A13CB0, &qword_101A13CA0);
  sub_10001A2F8(&qword_101A13CB8, &qword_101A13C70);
  return ParameterSummaryWhenCondition.init<A>(_:_:_:otherwise:)();
}

uint64_t sub_100BAB28C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100BA5A14(a1);
}

uint64_t sub_100BAB328(uint64_t a1)
{
  v2 = sub_100BAB3C0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100BAB368()
{
  result = qword_101A13C48;
  if (!qword_101A13C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C48);
  }

  return result;
}

unint64_t sub_100BAB3C0()
{
  result = qword_101A13C50;
  if (!qword_101A13C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C50);
  }

  return result;
}

uint64_t sub_100BAB424(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A13C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100BAB4CC(unsigned __int8 a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v5 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v5 - 8);
  v42 = &v41 - v6;
  v7 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v7 - 8);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v41 - v17;
  v47[3] = &type metadata for CRLBoardLibraryHeadlessControllerDependency;
  v47[4] = &off_1018ADA90;
  v47[0] = a3;
  v46 = _swiftEmptyArrayStorage;
  if (sub_100ADBC5C(a1) == 0x6F4E796B63697473 && v19 == 0xEA00000000006574)
  {
    v20 = a3;

LABEL_5:
    v23 = *(*(*sub_100020E58(v47, &type metadata for CRLBoardLibraryHeadlessControllerDependency) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
    sub_10000BE14(v43, v11, &qword_1019FC880);
    v24 = *(v13 + 48);
    if (v24(v11, 1, v12) == 1)
    {
      v25 = v23;
      AttributedString.init()();
      if (v24(v11, 1, v12) != 1)
      {
        sub_10000CAAC(v11, &qword_1019FC880);
      }
    }

    else
    {
      (*(v13 + 32))(v18, v11, v12);
      v26 = v23;
    }

    sub_100824394();
    v27 = NSAttributedString.init(_:)();
    sub_10110F4B0(v27);

    goto LABEL_10;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = a3;

  if (v21)
  {
    goto LABEL_5;
  }

  v30 = sub_100ADACBC(a1);
  if (v31)
  {
    v28 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v32 = v30;
  v33 = *(*(*sub_100020E58(v47, &type metadata for CRLBoardLibraryHeadlessControllerDependency) + OBJC_IVAR____TtC8Freeform33CRLBoardLibraryHeadlessController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
  sub_1006950BC(v44);
  v48[12] = v44[12];
  v48[13] = v44[13];
  v48[14] = v44[14];
  v49 = v45;
  v48[8] = v44[8];
  v48[9] = v44[9];
  v48[10] = v44[10];
  v48[11] = v44[11];
  v48[4] = v44[4];
  v48[5] = v44[5];
  v48[6] = v44[6];
  v48[7] = v44[7];
  v48[0] = v44[0];
  v48[1] = v44[1];
  v48[2] = v44[2];
  v48[3] = v44[3];
  v34 = sub_100818518(v32);
  v35 = v33;
  if (v34)
  {
    v36 = 0;
  }

  else
  {
    v37 = v41;
    sub_10000BE14(v43, v41, &qword_1019FC880);
    v38 = *(v13 + 48);
    if (v38(v37, 1, v12) == 1)
    {
      AttributedString.init(stringLiteral:)();
      if (v38(v37, 1, v12) != 1)
      {
        sub_10000CAAC(v37, &qword_1019FC880);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v37, v12);
    }

    sub_100824394();
    v36 = NSAttributedString.init(_:)();
  }

  v39 = type metadata accessor for CRLWPStorageCRDTData(0);
  v40 = v42;
  (*(*(v39 - 8) + 56))(v42, 1, 1, v39);
  sub_1011133FC(v32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v36, v40, v48, 0, 0, 0, 0, 1u);

  sub_10000CAAC(v40, &unk_101A0B1C0);
LABEL_10:
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v28 = v46;
LABEL_13:
  sub_100005070(v47);
  return v28;
}

uint64_t sub_100BABB30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100BABB78()
{
  result = qword_101A13C90;
  if (!qword_101A13C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13C90);
  }

  return result;
}

unint64_t sub_100BABBCC()
{
  result = qword_101A13D08;
  if (!qword_101A13D08)
  {
    sub_1005C4E5C(&qword_101A13D00);
    sub_100ADC184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D08);
  }

  return result;
}

unint64_t sub_100BABC50()
{
  result = qword_101A13D20;
  if (!qword_101A13D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D20);
  }

  return result;
}

id sub_100BABCAC(void *a1, void *a2)
{
  UUID.init()();
  *&v2[OBJC_IVAR____TtC8Freeform10CRLFileRep____lazy_storage___placeholderImage] = 1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for CRLFileRep();
  v5 = objc_msgSendSuper2(&v9, "initWithLayout:canvas:", a1, a2);
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    if ([a2 isCanvasInteractive])
    {
      sub_100BAC1BC();
    }
  }

  else
  {
    v7 = a1;
  }

  return v6;
}

void sub_100BABDB0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v36 = v33 - v6;
  v7 = type metadata accessor for CRLFileRep();
  v39.receiver = v0;
  v39.super_class = v7;
  objc_msgSendSuper2(&v39, "willBeRemoved");
  v37 = v0;
  v8 = sub_100BAC798();
  v9 = *&v8[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store];

  v10 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v12 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v12)
  {
    v13 = *&v9[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v34 = type metadata accessor for CRLAssetManager();
    v14 = objc_allocWithZone(v34);
    v33[1] = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v15 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v16 = swift_allocObject();
    v17 = v9;
    v35 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v19 = 0;
    *(v16 + 16) = v19;
    atomic_thread_fence(memory_order_acq_rel);
    *&v14[v15] = v16;
    v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v20 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v14[v20] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v14[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v38.receiver = v14;
    v38.super_class = v34;
    v21 = objc_msgSendSuper2(&v38, "init");

    v1 = v35;
    v22 = *&v9[v11];
    *&v9[v11] = v21;
    v13 = v21;

    v12 = 0;
  }

  v23 = *(v10 + 16);
  v24 = v12;
  os_unfair_lock_unlock(v23);

  v25 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = type metadata accessor for TaskPriority();
    v29 = v36;
    (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
    (*(v2 + 16))(v4, v37 + v25, v1);
    v30 = (*(v2 + 80) + 40) & ~*(v2 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    *(v31 + 4) = v27;
    (*(v2 + 32))(&v31[v30], v4, v1);
    v32 = v27;
    sub_10064191C(0, 0, v29, &unk_1014773B0, v31);
  }
}

void sub_100BAC1BC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  v9 = sub_100BAC798();
  v10 = sub_100BEBD9C();

  v11 = &v10[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
  v12 = *&v10[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
  v13 = *&v10[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
  sub_100020E58(&v10[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v12);
  if ((*(v13 + 64))(v12, v13))
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v51 = v10;
    v16 = *(v11 + 3);
    v15 = *(v11 + 4);
    sub_100020E58(v11, v16);
    v50 = v4;
    v17 = v7;
    v18 = *(v15 + 72);

    v19 = v15;
    v10 = v51;
    v18(v1 + v8, 2, sub_10070D774, v14, v16, v19);
    v7 = v17;
    v4 = v50;

    v20 = *(v11 + 3);
    v21 = *(v11 + 4);
    sub_100020E58(v11, v20);
    if ((*(v21 + 64))(v20, v21))
    {
      v22 = *(v11 + 3);
      v23 = *(v11 + 4);
      sub_100020E58(v11, v22);
      (*(v23 + 88))(v22, v23);
    }
  }

  v24 = sub_100BAC798();
  v25 = sub_100BAC798();
  if (**(v25 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v26 = v25;
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v4, v7);
    sub_1009DB3B0(v4, type metadata accessor for CRLFileItemAtomicDataStruct);
    v27 = [v24 store];
    v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v28 + 16));
    v29 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v30 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v30)
    {
      v31 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v32 = type metadata accessor for CRLAssetManager();
      v33 = objc_allocWithZone(v32);
      v51 = v7;
      swift_unknownObjectWeakInit();
      v34 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v35 = swift_allocObject();
      v36 = v27;
      v37 = swift_slowAlloc();
      *v37 = 0;
      *(v35 + 16) = v37;
      atomic_thread_fence(memory_order_acq_rel);
      *&v33[v34] = v35;
      *&v33[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v38 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v33[v38] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v33[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      v7 = v51;
      swift_unknownObjectWeakAssign();
      v52.receiver = v33;
      v52.super_class = v32;
      v39 = objc_msgSendSuper2(&v52, "init");

      v40 = *&v27[v29];
      *&v27[v29] = v39;
      v31 = v39;

      v30 = 0;
    }

    v41 = *(v28 + 16);
    v42 = v30;
    os_unfair_lock_unlock(v41);

    v43 = sub_1011255E0(v7, v24, v31);
    sub_1009DB3B0(v7, type metadata accessor for CRLAssetData);
    v44 = &v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
    v45 = *&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v46 = *&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v45);
    if ((*(v46 + 64))(v45, v46))
    {
      v47 = *(v44 + 3);
      v48 = *(v44 + 4);
      sub_100020E58(v44, v47);
      (*(v48 + 88))(v47, v48);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BAC798()
{
  v1 = [v0 layout];
  v2 = [v1 info];

  if (!v2)
  {
LABEL_4:
    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v14 = sub_1005CF000();
      *(inited + 96) = v14;
      v15 = sub_1005CF04C();
      *(inited + 104) = v15;
      *(inited + 72) = v6;
      *(inited + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(inited + 112) = v9;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v16;
      *(inited + 152) = 78;
      v17 = v27;
      *(inited + 216) = v14;
      *(inited + 224) = v15;
      *(inited + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      v11 = &_mh_execute_header;
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v5 = v22;
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = v25;
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v9 lineNumber:78 isFatal:0 format:v26 args:v23];

      __break(1u);
LABEL_6:
      swift_once();
    }
  }

  type metadata accessor for CRLFileItem();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_100BACB7C()
{
  v0 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100BAC798();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v7 = result;
    swift_beginAccess();

    sub_1005B981C(&qword_101A0B528);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v2, v5);
    sub_1009DB3B0(v2, type metadata accessor for CRLFileItemAtomicDataStruct);
    v8 = *&v5[*(v3 + 20)];

    sub_1009DB3B0(v5, type metadata accessor for CRLAssetData);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BACE08()
{
  v0 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v0 - 8);
  v2 = &v68 - v1;
  v3 = type metadata accessor for CRLFileItemAtomicDataStruct(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v6);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  result = sub_100BAC798();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A241E8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v13 = result;
  v70 = v2;
  swift_beginAccess();

  sub_1005B981C(&qword_101A0B528);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v5, v11);
  sub_1009DB3B0(v5, type metadata accessor for CRLFileItemAtomicDataStruct);

  sub_1009DB3B0(v11, type metadata accessor for CRLAssetData);
  v14 = objc_allocWithZone(NSString);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithString:v15];

  v17 = [v16 stringByDeletingPathExtension];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v73 = v18;
  v74 = v20;
  v21 = sub_100BAC798();
  result = sub_100BAC798();
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A241E8)
  {
    v22 = result;
    swift_beginAccess();

    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008786E0(v5, v8);
    sub_1009DB3B0(v5, type metadata accessor for CRLFileItemAtomicDataStruct);
    v23 = [v21 store];
    v24 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
    os_unfair_lock_lock(*(v24 + 16));
    v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
    v26 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    if (v26)
    {
      v27 = *&v23[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
    }

    else
    {
      v69 = type metadata accessor for CRLAssetManager();
      v28 = objc_allocWithZone(v69);
      swift_unknownObjectWeakInit();
      v29 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
      type metadata accessor for CRLUnfairLock();
      v30 = swift_allocObject();
      v31 = v23;
      v32 = swift_slowAlloc();
      *v32 = 0;
      *(v30 + 16) = v32;
      atomic_thread_fence(memory_order_acq_rel);
      *&v28[v29] = v30;
      *&v28[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
      v33 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
      *&v28[v33] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
      *&v28[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
      swift_unknownObjectWeakAssign();
      v71.receiver = v28;
      v71.super_class = v69;
      v34 = objc_msgSendSuper2(&v71, "init");

      v35 = *&v23[v25];
      *&v23[v25] = v34;
      v27 = v34;

      v26 = 0;
    }

    v36 = *(v24 + 16);
    v37 = v26;
    os_unfair_lock_unlock(v36);

    v38 = sub_1011255E0(v8, v21, v27);
    sub_1009DB3B0(v8, type metadata accessor for CRLAssetData);
    v39 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v40 = *&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v38[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v39);
    (*(v40 + 16))(v39, v40);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v41 crl_pathUTI];

    v43 = v70;
    if (v42)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UTType.init(_:)();
      v44 = type metadata accessor for UTType();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v43, 1, v44) != 1)
      {
        v75 = UTType.localizedDescription.getter();
        v76 = v46;
        (*(v45 + 8))(v43, v44);
        goto LABEL_11;
      }
    }

    else
    {

      v47 = type metadata accessor for UTType();
      (*(*(v47 - 8) + 56))(v43, 1, 1, v47);
    }

    sub_100BAD934(v43);
    v75 = 0;
    v76 = 0;
LABEL_11:
    v48 = 0;
    v49 = _swiftEmptyArrayStorage;
LABEL_12:
    v50 = &v74 + 2 * v48;
    while (++v48 != 3)
    {
      v51 = v50 + 2;
      v52 = *v50;
      v50 += 2;
      if (v52)
      {
        v53 = *(v51 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_100024CBC(0, *(v49 + 2) + 1, 1, v49);
        }

        v55 = *(v49 + 2);
        v54 = *(v49 + 3);
        if (v55 >= v54 >> 1)
        {
          v49 = sub_100024CBC((v54 > 1), v55 + 1, 1, v49);
        }

        *(v49 + 2) = v55 + 1;
        v56 = &v49[16 * v55];
        *(v56 + 4) = v53;
        *(v56 + 5) = v52;
        goto LABEL_12;
      }
    }

    sub_1005B981C(&unk_1019F6C70);
    result = swift_arrayDestroy();
    v57 = 0;
    v58 = *(v49 + 2);
    v59 = _swiftEmptyArrayStorage;
LABEL_21:
    v60 = &v49[16 * v57 + 40];
    while (1)
    {
      if (v58 == v57)
      {

        v72 = v59;
        sub_1005B981C(&unk_1019F4D80);
        sub_100613214();
        v67 = BidirectionalCollection<>.joined(separator:)();

        return v67;
      }

      if (v57 >= *(v49 + 2))
      {
        break;
      }

      ++v57;
      v62 = *(v60 - 1);
      v61 = *v60;
      v60 += 16;
      v63 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v63 = v62 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {

        result = swift_isUniquelyReferenced_nonNull_native();
        v72 = v59;
        if ((result & 1) == 0)
        {
          result = sub_100034080(0, v59[2] + 1, 1);
          v59 = v72;
        }

        v65 = v59[2];
        v64 = v59[3];
        if (v65 >= v64 >> 1)
        {
          result = sub_100034080((v64 > 1), v65 + 1, 1);
          v59 = v72;
        }

        v59[2] = v65 + 1;
        v66 = &v59[2 * v65];
        v66[4] = v62;
        v66[5] = v61;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_100BAD69C()
{
  v1 = OBJC_IVAR____TtC8Freeform10CRLFileRep_downloadObserverIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform10CRLFileRep____lazy_storage___placeholderImage);

  sub_1000505D0(v3);
}

id sub_100BAD714()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileRep();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLFileRep()
{
  result = qword_101A13D68;
  if (!qword_101A13D68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BAD81C()
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

uint64_t sub_100BAD934(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F8DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100BAD99C()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD7698);
  sub_1005EB3DC(v10, qword_101AD7698);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100BADC90()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v57 = v40 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v52 = v40 - v3;
  v48 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v58 = *(v13 - 8);
  v59 = v13;
  __chkstk_darwin(v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A13DE8);
  v53 = sub_1005B981C(&qword_101A13DF0);
  v16 = *(v53 - 8);
  v49 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v45 = v18;
  *(v18 + 16) = xmmword_10146D2A0;
  v55 = v18 + v17;
  *(v18 + v17) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = v4 + 104;
  v56 = *(v4 + 104);
  v20 = v6;
  v56(v6);
  v21 = v9;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46 = *(v58 + 56);
  v58 += 56;
  v22 = v52;
  v46(v52, 1, 1, v59);
  v54 = type metadata accessor for DisplayRepresentation.Image();
  v23 = *(v54 - 8);
  v50 = *(v23 + 56);
  v51 = v23 + 56;
  v50(v57, 1, 1, v54);
  v24 = v55;
  DisplayRepresentation.init(title:subtitle:image:)();
  v25 = v49;
  v26 = (v24 + v49);
  v27 = v53;
  v28 = *(v53 + 48);
  v42 = v26;
  v43 = v28;
  *v26 = 1;
  v40[1] = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v40[2] = v21;
  static Locale.current.getter();
  v41 = v20;
  v29 = v20;
  v30 = v47;
  v31 = v48;
  v44 = v19;
  (v56)(v29, v47, v48);
  v40[0] = v15;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = v46;
  v46(v22, 1, 1, v59);
  v50(v57, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v43 = *(v27 + 48);
  *(v55 + 2 * v25) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v41;
  (v56)(v41, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v52;
  v32(v52, 1, 1, v59);
  v35 = v57;
  v36 = v50;
  v50(v57, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = 2 * v25 + v49;
  v49 = *(v53 + 48);
  *(v55 + v37) = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v56)(v33, v47, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v46(v34, 1, 1, v59);
  v36(v35, 1, 1, v54);
  DisplayRepresentation.init(title:subtitle:image:)();
  v38 = sub_100BD89F8(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD76B0 = v38;
  return result;
}

unint64_t sub_100BAE474()
{
  result = qword_101A13D78;
  if (!qword_101A13D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D78);
  }

  return result;
}

Swift::Int sub_100BAE4C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100BAE590()
{
  String.hash(into:)();
}

Swift::Int sub_100BAE644()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100BAE708@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100BAEDEC(*a1);
  *a2 = result;
  return result;
}

void sub_100BAE738(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684828002;
  v4 = 0xE900000000000065;
  v5 = 0x6E696C7265646E75;
  if (*v1 != 2)
  {
    v5 = 0x6874656B69727473;
    v4 = 0xED00006867756F72;
  }

  if (*v1)
  {
    v3 = 0x63696C617469;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100BAE7C0()
{
  result = qword_101A13D80;
  if (!qword_101A13D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D80);
  }

  return result;
}

unint64_t sub_100BAE818()
{
  result = qword_101A13D88;
  if (!qword_101A13D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D88);
  }

  return result;
}

unint64_t sub_100BAE870()
{
  result = qword_101A13D90;
  if (!qword_101A13D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D90);
  }

  return result;
}

unint64_t sub_100BAE8C8()
{
  result = qword_101A13D98;
  if (!qword_101A13D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13D98);
  }

  return result;
}

unint64_t sub_100BAE91C()
{
  result = qword_101A13DA0;
  if (!qword_101A13DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DA0);
  }

  return result;
}

unint64_t sub_100BAE970()
{
  result = qword_101A13DA8;
  if (!qword_101A13DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DA8);
  }

  return result;
}

unint64_t sub_100BAE9C8()
{
  result = qword_101A13DB0;
  if (!qword_101A13DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DB0);
  }

  return result;
}

uint64_t sub_100BAEA1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1DF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BAEB14()
{
  result = qword_101A13DB8;
  if (!qword_101A13DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DB8);
  }

  return result;
}

uint64_t sub_100BAEB68(uint64_t a1)
{
  v2 = sub_100BAEB14();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100BAEBB8()
{
  result = qword_101A13DC0;
  if (!qword_101A13DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DC0);
  }

  return result;
}

unint64_t sub_100BAEC10()
{
  result = qword_101A13DC8;
  if (!qword_101A13DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DC8);
  }

  return result;
}

unint64_t sub_100BAEC68()
{
  result = qword_101A13DD0;
  if (!qword_101A13DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DD0);
  }

  return result;
}

uint64_t sub_100BAECBC()
{
  if (qword_1019F1DF8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100BAED18(uint64_t a1)
{
  v2 = sub_100BAE9C8();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100BAED68()
{
  result = qword_101A13DD8;
  if (!qword_101A13DD8)
  {
    sub_1005C4E5C(&qword_101A13DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13DD8);
  }

  return result;
}

unint64_t sub_100BAEDEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018764D0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_100BAEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1BAC0)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_100D19F00(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A226A0);

    v28 = sub_1005B981C(&qword_101A01F08);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A226A0);
    sub_10000BE14(v10, v30, &qword_1019F6990);
    sub_100BB0540(v10);
    sub_100D1A6AC(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990);
      v40 = CRRegister.wrappedValue.modify();
      sub_100803880(v39, v41);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLUnknownItem());
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100BAF3CC()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A1BAC0)
  {

    v1 = sub_100D19F00(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLUnknownItem());
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v5.receiver = v3;
    v5.super_class = type metadata accessor for CRLBoardItemBase(0);
    v4 = v2;
    objc_msgSendSuper2(&v5, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BAF4C4()
{
  type metadata accessor for CRLUnknownItem();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    goto LABEL_183;
  }

  v6 = v1;
  v7 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v8 != &off_101A1BAC0)
  {
    __break(1u);
    goto LABEL_153;
  }

  v5 = qword_101A1BA58;
  v9 = v8 + qword_101A1BA58;
  v4 = *v9;
  v2 = *(v9 + 1);
  v3 = v9[16];
  if (v9[17] == 1)
  {
    if (v2 | v4)
    {
      v10 = 0;
    }

    else
    {
      v10 = v3 == 0;
    }

    if (v10)
    {
      v2 = 0;
      v3 = 0;
      v4 = 2;
    }

    else if (v4 == 1 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 3;
    }

    else if (v4 == 2 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 4;
    }

    else if (v4 == 3 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 5;
    }

    else if (v4 == 4 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 6;
    }

    else if (v4 == 5 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 7;
    }

    else if (v4 == 6 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 8;
    }

    else if (v4 == 7 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 9;
    }

    else if (v4 == 8 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 10;
    }

    else
    {
      if (v4 != 9 || v2 || v9[16])
      {
        goto LABEL_154;
      }

      v2 = 0;
      v3 = 1;
      v4 = 11;
    }
  }

  while (1)
  {
    v27 = *(v0 + v7);
    if (*v27 == &off_101A1BAC0)
    {
      break;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    if (v4 != 10 || v2 || v3)
    {
      if (v3)
      {
        v72 = 0;
      }

      else
      {
        v72 = v2 == 0;
      }

      if (v72 && v4 == 11)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }

      v4 = 2;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 1;
      v4 = 12;
    }
  }

  v28 = v27 + v5;
  v30 = *v28;
  v29 = *(v28 + 1);
  v31 = v28[16];
  if (v28[17] == 1)
  {
    if (v29 | v30)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31 == 0;
    }

    if (v32)
    {
      v29 = 0;
      LOBYTE(v31) = 0;
      v30 = 2;
    }

    else if (v30 == 1 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 3;
    }

    else if (v30 == 2 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 4;
    }

    else if (v30 == 3 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 5;
    }

    else if (v30 == 4 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 6;
    }

    else if (v30 == 5 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 7;
    }

    else if (v30 == 6 && v29 == 0 && v31 == 0)
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 8;
    }

    else if (v30 != 7 || v29 || v28[16])
    {
      if (v30 != 8 || v29 || v28[16])
      {
        if (v30 != 9 || v29 || v28[16])
        {
          if (v30 != 10 || v29 || v28[16])
          {
            if (v28[16])
            {
              v74 = 0;
            }

            else
            {
              v74 = v29 == 0;
            }

            v75 = v74 && v30 == 11;
            v29 = 1;
            if (!v75)
            {
              v29 = 2;
            }

            v30 = 2;
            LOBYTE(v31) = 0;
          }

          else
          {
            v29 = 0;
            LOBYTE(v31) = 1;
            v30 = 12;
          }
        }

        else
        {
          v29 = 0;
          LOBYTE(v31) = 1;
          v30 = 11;
        }
      }

      else
      {
        v29 = 0;
        LOBYTE(v31) = 1;
        v30 = 10;
      }
    }

    else
    {
      v29 = 0;
      LOBYTE(v31) = 1;
      v30 = 9;
    }
  }

  if (v4 != v30)
  {
    goto LABEL_183;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_142;
  }

  if ((v31 & 1) == 0)
  {
LABEL_183:
    do
    {
      v45 = objc_opt_self();
      v46 = [v45 _atomicIncrementAssertCount];
      v76 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v76);
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      v49 = [v48 lastPathComponent];

      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v46;
      v55 = sub_1005CF000();
      *(inited + 96) = v55;
      v56 = sub_1005CF04C();
      *(inited + 104) = v56;
      *(inited + 72) = v47;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v50;
      *(inited + 120) = v52;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 38;
      v58 = v76;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v47;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
      type metadata accessor for __VaListBuilder();
      v0 = swift_allocObject();
      v0[2] = 8;
      v0[3] = 0;
      v0[4] = 0;
      v0[5] = 0;
      v63 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v6 = v66;
      v67 = String._bridgeToObjectiveC()();

      [v45 handleFailureInFunction:v64 file:v65 lineNumber:38 isFatal:1 format:v67 args:v63];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v68, v69);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_142:
      ;
    }

    while (v31 & 1 | (v2 != v29));
  }

  swift_unknownObjectRetain();
  v70 = sub_1011F0C64(v6, v0);
  swift_unknownObjectRelease();
  return v70;
}

void *sub_100BAFC7C()
{
  type metadata accessor for CRLUnknownItem();
  v1 = swift_dynamicCastClass();
  if (!v1)
  {
    goto LABEL_183;
  }

  v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v7 != &off_101A1BAC0)
  {
    __break(1u);
    goto LABEL_153;
  }

  v5 = qword_101A1BA58;
  v8 = v7 + qword_101A1BA58;
  v4 = *v8;
  v2 = *(v8 + 1);
  v3 = v8[16];
  if (v8[17] == 1)
  {
    if (v2 | v4)
    {
      v9 = 0;
    }

    else
    {
      v9 = v3 == 0;
    }

    if (v9)
    {
      v2 = 0;
      v3 = 0;
      v4 = 2;
    }

    else if (v4 == 1 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 3;
    }

    else if (v4 == 2 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 4;
    }

    else if (v4 == 3 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 5;
    }

    else if (v4 == 4 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 6;
    }

    else if (v4 == 5 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 7;
    }

    else if (v4 == 6 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 8;
    }

    else if (v4 == 7 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 9;
    }

    else if (v4 == 8 && v2 == 0 && v3 == 0)
    {
      v2 = 0;
      v3 = 1;
      v4 = 10;
    }

    else
    {
      if (v4 != 9 || v2 || v8[16])
      {
        goto LABEL_154;
      }

      v2 = 0;
      v3 = 1;
      v4 = 11;
    }
  }

  while (1)
  {
    v26 = *(v0 + v6);
    if (*v26 == &off_101A1BAC0)
    {
      break;
    }

LABEL_153:
    __break(1u);
LABEL_154:
    if (v4 != 10 || v2 || v3)
    {
      if (v3)
      {
        v70 = 0;
      }

      else
      {
        v70 = v2 == 0;
      }

      if (v70 && v4 == 11)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }

      v4 = 2;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 1;
      v4 = 12;
    }
  }

  v27 = v26 + v5;
  v29 = *v27;
  v28 = *(v27 + 1);
  v30 = v27[16];
  if (v27[17] == 1)
  {
    if (v28 | v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = v30 == 0;
    }

    if (v31)
    {
      v28 = 0;
      LOBYTE(v30) = 0;
      v29 = 2;
    }

    else if (v29 == 1 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 3;
    }

    else if (v29 == 2 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 4;
    }

    else if (v29 == 3 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 5;
    }

    else if (v29 == 4 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 6;
    }

    else if (v29 == 5 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 7;
    }

    else if (v29 == 6 && v28 == 0 && v30 == 0)
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 8;
    }

    else if (v29 != 7 || v28 || v27[16])
    {
      if (v29 != 8 || v28 || v27[16])
      {
        if (v29 != 9 || v28 || v27[16])
        {
          if (v29 != 10 || v28 || v27[16])
          {
            if (v27[16])
            {
              v72 = 0;
            }

            else
            {
              v72 = v28 == 0;
            }

            v73 = v72 && v29 == 11;
            v28 = 1;
            if (!v73)
            {
              v28 = 2;
            }

            v29 = 2;
            LOBYTE(v30) = 0;
          }

          else
          {
            v28 = 0;
            LOBYTE(v30) = 1;
            v29 = 12;
          }
        }

        else
        {
          v28 = 0;
          LOBYTE(v30) = 1;
          v29 = 11;
        }
      }

      else
      {
        v28 = 0;
        LOBYTE(v30) = 1;
        v29 = 10;
      }
    }

    else
    {
      v28 = 0;
      LOBYTE(v30) = 1;
      v29 = 9;
    }
  }

  if (v4 != v29)
  {
    goto LABEL_183;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_142;
  }

  if ((v30 & 1) == 0)
  {
LABEL_183:
    do
    {
      v44 = objc_opt_self();
      v45 = [v44 _atomicIncrementAssertCount];
      v74 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v74);
      StaticString.description.getter();
      v46 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      v48 = [v47 lastPathComponent];

      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v52 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v45;
      v54 = sub_1005CF000();
      *(inited + 96) = v54;
      v55 = sub_1005CF04C();
      *(inited + 104) = v55;
      *(inited + 72) = v46;
      *(inited + 136) = &type metadata for String;
      v56 = sub_1000053B0();
      *(inited + 112) = v49;
      *(inited + 120) = v51;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v56;
      *(inited + 152) = 48;
      v57 = v74;
      *(inited + 216) = v54;
      *(inited + 224) = v55;
      *(inited + 192) = v57;
      v58 = v46;
      v59 = v57;
      v60 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

      v61 = static os_log_type_t.error.getter();
      sub_100005404(v52, &_mh_execute_header, v61, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
      type metadata accessor for __VaListBuilder();
      v62 = swift_allocObject();
      v62[2] = 8;
      v62[3] = 0;
      v62[4] = 0;
      v62[5] = 0;
      v63 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v64 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      [v44 handleFailureInFunction:v64 file:v65 lineNumber:48 isFatal:1 format:v66 args:v63];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v67, v68);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_142:
      ;
    }

    while (v30 & 1 | (v2 != v28));
  }

  return _swiftEmptyDictionarySingleton;
}

id sub_100BB047C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUnknownItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLUnknownItem()
{
  result = qword_101A13E20;
  if (!qword_101A13E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100BB0540(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardItemParentAffinity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100BB05A0()
{
  result = qword_101A13E30;
  if (!qword_101A13E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E30);
  }

  return result;
}

uint64_t sub_100BB05F4()
{
  v0 = sub_1005B981C(&qword_101A13EC0);
  sub_10061655C(v0, qword_101AD76B8);
  sub_1005EB3DC(v0, qword_101AD76B8);
  sub_1006896D0();
  return IntentDeprecation.init(replacedBy:)();
}

uint64_t sub_100BB0664()
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
  sub_10061655C(v6, qword_101AD76D0);
  sub_1005EB3DC(v6, qword_101AD76D0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_100BB085C()
{
  v0 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v0 - 8);
  v2 = v20 - v1;
  v3 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for CRLiOSAppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_100787FE4();
      if (v8)
      {
        v9 = v8;
        v10 = *&v8[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
        if (v10)
        {
          v11 = [v10 windowScene];
          if (v11)
          {
            v12 = v11;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v13 = static OS_os_log.sceneManagement;
            v14 = static os_log_type_t.default.getter();
            sub_100005404(v13, &_mh_execute_header, v14, "Creating new board from app intent", 34, 2, _swiftEmptyArrayStorage);
            sub_100BB2334();
            v15 = type metadata accessor for CRLBoardIdentifier(0);
            (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
            v16 = type metadata accessor for UUID();
            (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
            v17 = sub_1000801CC(7u, 1, v5, v2);
            sub_100C2E834(v17);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v18 = static OS_os_log.sceneManagement;
  v19 = static os_log_type_t.default.getter();
  sub_100005404(v18, &_mh_execute_header, v19, "Failed to create new board from app intent", 42, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100BB0B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1005B981C(&qword_101A13EC0);
  v3 = sub_1005EB3DC(v2, qword_101AD76B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BB0C30()
{
  result = qword_101A13E38;
  if (!qword_101A13E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E38);
  }

  return result;
}

unint64_t sub_100BB0C88()
{
  result = qword_101A13E40;
  if (!qword_101A13E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E40);
  }

  return result;
}

uint64_t sub_100BB0D38()
{
  v0 = sub_1005B981C(&qword_101A13EB8);
  __chkstk_darwin(v0 - 8);
  ParameterSummaryString.init(stringLiteral:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100BB0E38()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB0ECC, v2, v1);
}

uint64_t sub_100BB0ECC()
{

  sub_100BB085C();

  return _swift_task_switch(sub_100BB2380, 0, 0);
}

uint64_t sub_100BB0F70(uint64_t a1)
{
  v2 = sub_100BB05A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100BB0FB0()
{
  result = qword_101A13E48;
  if (!qword_101A13E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E48);
  }

  return result;
}

uint64_t sub_100BB1004()
{
  v0 = sub_1005B981C(&qword_101A13EB0);
  sub_10061655C(v0, qword_101AD76E8);
  sub_1005EB3DC(v0, qword_101AD76E8);
  sub_10068984C();
  return IntentDeprecation.init(replacedBy:)();
}

uint64_t sub_100BB1074()
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
  sub_10061655C(v6, qword_101AD7700);
  sub_1005EB3DC(v6, qword_101AD7700);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void sub_100BB126C(uint64_t a1)
{
  v38 = a1;
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v37 = &v31 - v2;
  v3 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for UUID();
  v39 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v36 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLiOSBoardEntity();
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    type metadata accessor for CRLiOSAppDelegate();
    if (swift_dynamicCastClass())
    {
      sub_100787FE4();
      if (v17)
      {
        v18 = v17;
        v19 = *&v17[OBJC_IVAR____TtC8Freeform16CRLSceneDelegate_window];
        if (v19)
        {
          v20 = [v19 windowScene];
          if (v20)
          {
            v34 = v20;
            v35 = v18;
            if (qword_1019F2220 != -1)
            {
              swift_once();
            }

            v33 = static OS_os_log.sceneManagement;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            IntentParameter.wrappedValue.getter();
            sub_1005F1308(v14, v11);
            v32 = type metadata accessor for CRLiOSBoardEntity;
            sub_100BB22D4(v14, type metadata accessor for CRLiOSBoardEntity);
            (*(v39 + 16))(v8, v11, v6);
            sub_100BB22D4(v11, type metadata accessor for CRLBoardIdentifier);
            v22 = UUID.uuidString.getter();
            v24 = v23;
            (*(v39 + 8))(v8, v6);
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v22;
            *(inited + 40) = v24;
            v25 = static os_log_type_t.default.getter();
            sub_100005404(v33, &_mh_execute_header, v25, "Opening the board:%@ from app intent", 36, 2, inited);
            swift_setDeallocating();
            sub_100005070(inited + 32);
            sub_100BB2334();
            IntentParameter.wrappedValue.getter();
            sub_1005F1308(v14, v5);
            sub_100BB22D4(v14, v32);
            (*(v36 + 56))(v5, 0, 1, v9);
            v26 = v37;
            (*(v39 + 56))(v37, 1, 1, v6);
            v27 = sub_1000801CC(5u, 1, v5, v26);
            v28 = v35;
            sub_100C2E834(v27);
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.sceneManagement;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "Failed to open a board from app intent", 38, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100BB17C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1005B981C(&qword_101A13EB0);
  v3 = sub_1005EB3DC(v2, qword_101AD76E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100BB1880()
{
  result = qword_101A13E50;
  if (!qword_101A13E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E50);
  }

  return result;
}

unint64_t sub_100BB18D8()
{
  result = qword_101A13E58;
  if (!qword_101A13E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A13E58);
  }

  return result;
}

uint64_t sub_100BB1988()
{
  v0 = sub_1005B981C(&qword_101A13E98);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A13EA0);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x616F42206E65704FLL;
  v2._object = 0xEB00000000206472;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A13EA8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100BB1B3C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100BB1B60, 0, 0);
}

uint64_t sub_100BB1B60()
{
  type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100BB1BF4, v2, v1);
}

uint64_t sub_100BB1BF4()
{
  v1 = *(v0 + 24);

  sub_100BB126C(v1);

  return _swift_task_switch(sub_100BB1C9C, 0, 0);
}

uint64_t sub_100BB1C9C()
{
  static IntentResult.result<>()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100BB1D00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100BB1D84();
  *a1 = result;
  return result;
}

uint64_t sub_100BB1D28(uint64_t a1)
{
  v2 = sub_100BB0FB0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100BB1D84()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v2 - 8);
  v26 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = v24 - v5;
  v6 = sub_1005B981C(&qword_101A13E80);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v24[1] = sub_1005B981C(&qword_101A13E88);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = type metadata accessor for CRLiOSBoardEntity();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  v22 = *(*(v21 - 8) + 56);
  v22(v25, 1, 1, v21);
  v22(v26, 1, 1, v21);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_100BB227C();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_100BB227C()
{
  result = qword_101A01D50;
  if (!qword_101A01D50)
  {
    type metadata accessor for CRLiOSBoardEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D50);
  }

  return result;
}

uint64_t sub_100BB22D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100BB2334()
{
  result = qword_101A13E90;
  if (!qword_101A13E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A13E90);
  }

  return result;
}

id sub_100BB2384()
{
  v1 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v1 - 8);
  v90 = &v83 - v2;
  v3 = type metadata accessor for UTType();
  v92 = *(v3 - 8);
  __chkstk_darwin(v3);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v95 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v94 = &v83 - v8;
  __chkstk_darwin(v9);
  v11 = &v83 - v10;
  __chkstk_darwin(v12);
  v96 = &v83 - v13;
  v14 = type metadata accessor for URL();
  v98 = *(v14 - 8);
  v15 = *(v98 + 64);
  __chkstk_darwin(v14);
  v88 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v83 - v17;
  __chkstk_darwin(v18);
  v97 = &v83 - v19;
  v20 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = type metadata accessor for CRLAssetData();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v0;
  type metadata accessor for CRLImageItem();
  sub_100BBECE4(v22);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    v86 = v3;
    v87 = v11;
    v93 = v14;
    sub_100BBFCFC(v22, v26, type metadata accessor for CRLAssetData);
    v29 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    v31 = *(v30 + 16);
    v32 = v29;
    os_unfair_lock_lock(v31);
    v33 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v34 = *&v32[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v34)
    {
      v35 = *&v32[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v36 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
      v37 = v32;
      v38 = sub_10001F1A0(v37);

      v39 = *&v32[v33];
      *&v32[v33] = v38;
      v35 = v38;

      v34 = 0;
    }

    v40 = v96;
    v41 = *(v30 + 16);
    v42 = v34;
    os_unfair_lock_unlock(v41);
    sub_10108CAF4(v26, 0, 3, 0, 0, v40);

    v43 = v98;
    v44 = *(v98 + 48);
    v45 = v93;
    if (v44(v40, 1, v93) == 1)
    {
      sub_100BBFD64(v26, type metadata accessor for CRLAssetData);
      v27 = &unk_1019F33C0;
      v28 = v40;
      goto LABEL_8;
    }

    v85 = *(v43 + 32);
    v85(v97, v40, v45);
    v49 = v87;
    (*(v43 + 56))(v87, 1, 1, v45);
    v50 = &v26[*(v23 + 20)];
    v51 = v50[1];
    v52 = v94;
    v84 = *v50;
    v83 = v51;
    v96 = sub_10125B790(v94, v84, v51);
    sub_10000CAAC(v49, &unk_1019F33C0);
    sub_10003DFF8(v52, v49, &unk_1019F33C0);
    v53 = v49;
    v54 = v95;
    sub_10000BE14(v53, v95, &unk_1019F33C0);
    v55 = v26;
    if (v44(v54, 1, v45) == 1)
    {
      sub_10000CAAC(v54, &unk_1019F33C0);
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v56 = static OS_os_log.crlDefault;
      v57 = static os_log_type_t.error.getter();
      sub_100005404(v56, &_mh_execute_header, v57, "Unable to cacheItemToURL", 24, 2, _swiftEmptyArrayStorage);
      v58 = objc_allocWithZone(NSItemProvider);
      URL._bridgeToObjectiveC()(v59);
      v61 = v60;
      v48 = [v58 initWithContentsOfURL:v60];

      if (v48)
      {
        v62 = String._bridgeToObjectiveC()();
        [v48 setSuggestedName:v62];
      }

      sub_10000CAAC(v87, &unk_1019F33C0);
      (*(v98 + 8))(v97, v45);
      goto LABEL_26;
    }

    v63 = v91;
    v85(v91, v54, v45);
    v48 = [objc_allocWithZone(NSItemProvider) init];
    v64 = v90;
    sub_1007AC4D0(0, v90);
    v65 = v92;
    v66 = v86;
    if ((*(v92 + 48))(v64, 1, v86) == 1)
    {
      sub_10000CAAC(v64, &unk_1019F8DB0);
      if (!v48)
      {
LABEL_23:
        if (!v96)
        {
LABEL_25:
          v80 = *(v98 + 8);
          v81 = v93;
          v80(v63, v93);
          sub_10000CAAC(v87, &unk_1019F33C0);
          v80(v97, v81);
LABEL_26:
          sub_100BBFD64(v55, type metadata accessor for CRLAssetData);
          return v48;
        }

LABEL_24:
        aBlock[0] = v48;
        sub_1005B981C(&qword_101A13F98);
        v78 = Optional._bridgeToObjectiveC()();
        v79 = v96;
        [v96 setAssociatedLifetimeObject:v78];

        swift_unknownObjectRelease();
        goto LABEL_25;
      }
    }

    else
    {
      v67 = v89;
      (*(v65 + 32))(v89, v64, v66);
      if (!v48)
      {
        (*(v65 + 8))(v67, v66);
        if (!v96)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      UTType.identifier.getter();
      v94 = String._bridgeToObjectiveC()();

      v69 = v98 + 16;
      v68 = *(v98 + 16);
      v95 = v26;
      v70 = v88;
      v71 = v93;
      v68(v88, v63, v93);
      v72 = (*(v69 + 64) + 16) & ~*(v69 + 64);
      v73 = swift_allocObject();
      v74 = v70;
      v55 = v95;
      v85((v73 + v72), v74, v71);
      aBlock[4] = sub_100BBFDC4;
      aBlock[5] = v73;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100BB2E30;
      aBlock[3] = &unk_101899530;
      v75 = _Block_copy(aBlock);

      v76 = v94;
      [v48 registerFileRepresentationForTypeIdentifier:v94 fileOptions:0 visibility:0 loadHandler:v75];
      _Block_release(v75);

      (*(v65 + 8))(v89, v66);
    }

    v77 = String._bridgeToObjectiveC()();
    [v48 setSuggestedName:v77];

    goto LABEL_23;
  }

  v27 = &unk_101A1B880;
  v28 = v22;
LABEL_8:
  sub_10000CAAC(v28, v27);
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v46 = static OS_os_log.crlDefault;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v46, &_mh_execute_header, v47, "Unable to make itemProvider from backing asset because the asset is missing", 75, 2, _swiftEmptyArrayStorage);
  return 0;
}

id sub_100BB2E30(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v5 = v2(sub_100BBFE44, v4);

  return v5;
}

void sub_100BB2ED0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  sub_10000BE14(a1, &v17 - v9, &unk_1019F33C0);
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v14 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    URL._bridgeToObjectiveC()(v13);
    v14 = v15;
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v16 = _convertErrorToNSError(_:)();
  }

  else
  {
    v16 = 0;
  }

  (*(a4 + 16))(a4, v14, a2 & 1, v16);
}

_UNKNOWN ****sub_100BB30D8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v65 - v17;
  v19 = OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData;
  v20 = *&v1[OBJC_IVAR____TtC8Freeform12CRLImageItem__imageAssetAsData];
  if (!v20)
  {
    if (**&v1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A25280)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0);
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      sub_100BBFC94(v4, v7, type metadata accessor for CRLAssetData);
      sub_100BBFD64(v4, type metadata accessor for CRLImageItemAssetData);
      v69 = v1;
      v29 = [v1 store];
      v30 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v30 + 16));
      v31 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v32 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v32)
      {
        v33 = *&v29[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v68 = type metadata accessor for CRLAssetManager();
        v52 = objc_allocWithZone(v68);
        swift_unknownObjectWeakInit();
        v53 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v54 = swift_allocObject();
        v67 = v29;
        v55 = swift_slowAlloc();
        *v55 = 0;
        *(v54 + 16) = v55;
        atomic_thread_fence(memory_order_acq_rel);
        *&v52[v53] = v54;
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v56 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v52[v56] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v52[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v57 = v67;
        swift_unknownObjectWeakAssign();
        v70.receiver = v52;
        v70.super_class = v68;
        v58 = objc_msgSendSuper2(&v70, "init");

        v59 = *&v29[v31];
        *&v29[v31] = v58;
        v33 = v58;

        v32 = 0;
      }

      v60 = *(v30 + 16);
      v61 = v32;
      os_unfair_lock_unlock(v60);

      v62 = v69;
      v63 = sub_1011255E0(v7, v69, v33);

      sub_100BBFD64(v7, type metadata accessor for CRLAssetData);
      v51 = *(v62 + v19);
      *(v62 + v19) = v63;
      v28 = v63;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v65 = v10;
  v66 = v16;
  v67 = v15;
  v68 = v4;
  v19 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v21 = *(v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  LODWORD(v10) = sub_100020E58((v20 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v19);
  v4 = v1;
  v22 = *(v21 + 24);
  v69 = v20;
  v22(v19, v21);
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (*v20 != &off_101A25280)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2F5B0);
  v23 = v68;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v24 = v65;
  sub_100BBFC94(v23, v65, type metadata accessor for CRLAssetData);
  sub_100BBFD64(v23, type metadata accessor for CRLImageItemAssetData);
  v26 = v66;
  v25 = v67;
  (*(v66 + 16))(v13, v24, v67);
  sub_100BBFD64(v24, type metadata accessor for CRLAssetData);
  LOBYTE(v24) = static UUID.== infix(_:_:)();
  v27 = *(v26 + 8);
  v27(v13, v25);
  v27(v18, v25);
  if ((v24 & 1) == 0)
  {
    v20 = objc_opt_self();
    LODWORD(v10) = [v20 _atomicIncrementAssertCount];
    v71 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v71);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    v35 = [v34 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v36;

    if (qword_1019F20A0 == -1)
    {
LABEL_9:
      v37 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v10;
      v39 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v39;
      v40 = sub_1005CF04C();
      *(inited + 104) = v40;
      *(inited + 72) = v4;
      *(inited + 136) = &type metadata for String;
      v41 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v41;
      *(inited + 152) = 53;
      v42 = v71;
      *(inited + 216) = v39;
      *(inited + 224) = v40;
      *(inited + 192) = v42;
      v43 = v4;
      v44 = v42;
      v45 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v37, &_mh_execute_header, v46, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v47 = swift_allocObject();
      v47[2] = 8;
      v47[3] = 0;
      v47[4] = 0;
      v47[5] = 0;
      v48 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v20 handleFailureInFunction:v49 file:v50 lineNumber:53 isFatal:0 format:v51 args:v48];

      v28 = v69;
LABEL_12:

      return v28;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  return v69;
}

char *sub_100BB3AB4()
{
  v1 = type metadata accessor for UUID();
  v58 = *(v1 - 1);
  __chkstk_darwin(v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v4);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v7 - 8);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CRLAssetData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v0;
  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A25280)
  {
    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();

  sub_1005B981C(&unk_101A2F5B0);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_10000BE14(&v6[*(v4 + 20)], v9, &unk_101A1B880);
  sub_100BBFD64(v6, type metadata accessor for CRLImageItemAssetData);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CAAC(v9, &unk_101A1B880);
    return 0;
  }

  v13 = v60;
  sub_100BBFCFC(v9, v60, type metadata accessor for CRLAssetData);
  v14 = OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData;
  v15 = v59;
  v9 = *&v59[OBJC_IVAR____TtC8Freeform12CRLImageItem__thumbnailAssetAsData];
  if (v9)
  {
    v16 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v17 = *&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v9[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v16);
    v18 = *(v17 + 24);
    v19 = v9;
    v18(v16, v17);
    v20 = static UUID.== infix(_:_:)();
    (*(v58 + 1))(v3, v1);
    if (v20)
    {
LABEL_8:
      sub_100BBFD64(v13, type metadata accessor for CRLAssetData);
      return v9;
    }

    v59 = objc_opt_self();
    LODWORD(v0) = [v59 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
    StaticString.description.getter();
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v23;

    if (qword_1019F20A0 == -1)
    {
LABEL_7:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v0;
      v26 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v26;
      v27 = sub_1005CF04C();
      *(inited + 104) = v27;
      *(inited + 72) = v1;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v10;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 70;
      v29 = v62;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v1;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Cached CRLAsset instance has not been updated as expected.", 58, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      [v59 handleFailureInFunction:v36 file:v37 lineNumber:70 isFatal:0 format:v38 args:v35];

      v13 = v60;
      goto LABEL_8;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v39 = [v59 store];
  v40 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v40 + 16));
  v41 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v42 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v42)
  {
    v43 = *&v39[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v58 = type metadata accessor for CRLAssetManager();
    v44 = objc_allocWithZone(v58);
    swift_unknownObjectWeakInit();
    v45 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v46 = swift_allocObject();
    v47 = v39;
    v48 = swift_slowAlloc();
    *v48 = 0;
    *(v46 + 16) = v48;
    atomic_thread_fence(memory_order_acq_rel);
    *&v44[v45] = v46;
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v49 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v44[v49] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v44[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v15 = v59;
    swift_unknownObjectWeakAssign();
    v61.receiver = v44;
    v61.super_class = v58;
    v50 = objc_msgSendSuper2(&v61, "init");

    v51 = *&v39[v41];
    *&v39[v41] = v50;
    v43 = v50;

    v42 = 0;
  }

  v52 = *(v40 + 16);
  v53 = v42;
  os_unfair_lock_unlock(v52);

  v54 = v60;
  v9 = sub_1011255E0(v60, v15, v43);

  sub_100BBFD64(v54, type metadata accessor for CRLAssetData);
  v55 = *&v15[v14];
  *&v15[v14] = v9;
  v56 = v9;

  return v9;
}

double sub_100BB442C()
{
  v0 = sub_100BB30D8();
  v1 = [objc_opt_self() sharedPool];
  v2 = [v1 providerForAsset:v0 shouldValidate:1];

  [v2 naturalSize];
  v4 = v3;

  return v4;
}

void sub_100BB44D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v9 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v15 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v26 = &v45 - v25;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    v46 = v19;
    v47 = a2;
    v48 = v24;
    v49 = v23;
    v50 = v22;
    v51 = v4;

    v27 = sub_100FA3AC8(1);
    v54 = a4;
    v28 = v27;

    v29 = *(*v28 + 736);
    v52 = v6;
    v30 = v28 + v29;
    swift_beginAccess();
    sub_10000BE14(v30, v14, &unk_101A226A0);

    v31 = v11;
    v32 = sub_1005B981C(&qword_101A01F08);
    CRRegister.wrappedValue.getter();
    sub_10000CAAC(v14, &unk_101A226A0);
    sub_10000BE14(v31, v26, &qword_1019F6990);
    v33 = v31;
    v34 = v28;
    sub_100BBFD64(v33, type metadata accessor for CRLBoardItemParentAffinity);
    v35 = v52;
    sub_100FA4008(v54);
    if (v35)
    {

      sub_10000CAAC(v26, &qword_1019F6990);
    }

    else
    {
      v45 = v32;
      v52 = 0;
      v54 = v12;
      v36 = v46;
      sub_10000BE14(v47, v46, &qword_1019F6990);
      v37 = type metadata accessor for UUID();
      v38 = *(v37 - 8);
      v39 = *(v38 + 48);
      if (v39(v36, 1, v37) == 1)
      {
        v40 = v49;
        sub_10000BE14(v26, v49, &qword_1019F6990);
        if (v39(v36, 1, v37) != 1)
        {
          sub_10000CAAC(v36, &qword_1019F6990);
        }
      }

      else
      {
        v40 = v49;
        (*(v38 + 32))(v49, v36, v37);
        (*(v38 + 56))(v40, 0, 1, v37);
      }

      v41 = v50;
      sub_10000BE14(v40, v50, &qword_1019F6990);
      swift_beginAccess();
      v42 = v48;
      sub_10000BE14(v41, v48, &qword_1019F6990);
      v43 = CRRegister.wrappedValue.modify();
      sub_10002C638(v42, v44, &qword_1019F6990);
      v43(v53, 0);
      sub_10000CAAC(v41, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v40, &qword_1019F6990);
      sub_101122410(*(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v34);
      sub_10000CAAC(v26, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BB4A48(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  __chkstk_darwin(v11);
  v13 = &v67 - v12;
  v14 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v14 - 8);
  v79 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v80 = &v67 - v17;
  __chkstk_darwin(v18);
  v20 = &v67 - v19;
  v21 = type metadata accessor for CRLAssetData();
  v82 = *(v21 - 8);
  v83 = v21;
  __chkstk_darwin(v21);
  v81 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = &v67 - v24;
  v78 = v2;
  result = sub_1011255D0(v25);
  if (result)
  {
    v74 = v20;
    if (qword_1019F2878 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for UUID();
    v28 = sub_1005EB3DC(v27, qword_101AD8F08);
    v29 = v84;
    (*(*(v27 - 8) + 16))(v84, v28, v27);
    v30 = v83;
    v31 = (v29 + *(v83 + 20));
    *v31 = 0;
    v31[1] = 0xE000000000000000;
    *(v29 + *(v30 + 24)) = _swiftEmptyDictionarySingleton;
    sub_10000630C(a1 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v86);
    v32 = sub_1005B981C(&qword_1019FF208);
    v72 = type metadata accessor for CRLAssetBackedAssetStorage();
    v73 = v32;
    v33 = swift_dynamicCast();
    v76 = a1;
    v77 = a2;
    if (!v33)
    {
      v69 = v5;
      v70 = v7;
      v71 = v10;
      v75 = *(v82 + 56);
      v75(v80, 1, 1, v30);
      v68 = objc_opt_self();
      LODWORD(v5) = [v68 _atomicIncrementAssertCount];
      v86[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v86);
      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v38 = String._bridgeToObjectiveC()();

      v39 = [v38 lastPathComponent];

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    v34 = v80;
    sub_100BBFC94(v85 + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v80, type metadata accessor for CRLAssetData);
    v35 = v83;

    v36 = v82;
    v75 = *(v82 + 56);
    v75(v34, 0, 1, v35);
    while (1)
    {
      v40 = v74;
      sub_10003DFF8(v34, v74, &unk_101A1B880);
      if ((*(v36 + 48))(v40, 1, v35) == 1)
      {
        sub_10000CAAC(v40, &unk_101A1B880);
      }

      else
      {
        v58 = v84;
        sub_100BBFD64(v84, type metadata accessor for CRLAssetData);
        sub_100BBFCFC(v40, v58, type metadata accessor for CRLAssetData);
      }

      v59 = sub_100BBF8EC(v76);
      if (v59)
      {
        v80 = v13;
        v60 = v7;
        v61 = swift_allocObject();
        v61[2] = _swiftEmptyArrayStorage;
        v62 = v61 + 2;
        v86[4] = sub_1009CEBEC;
        v86[5] = v61;
        v86[0] = _NSConcreteStackBlock;
        v86[1] = *"";
        v86[2] = sub_100CD0AFC;
        v86[3] = &unk_1018994E0;
        v63 = _Block_copy(v86);

        [v59 iteratePathElementsWithBlock:v63];

        v64 = v63;
        v7 = v60;
        v13 = v80;
        _Block_release(v64);
        swift_beginAccess();
        v59 = *v62;

        a2 = v77;
      }

      v37 = v79;
      sub_100BBFC94(v84, v81, type metadata accessor for CRLAssetData);
      if (a2 && (sub_10000630C(a2 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage, v86), swift_dynamicCast()))
      {
        sub_100BBFC94(v86[6] + OBJC_IVAR____TtC8Freeform26CRLAssetBackedAssetStorage_assetData, v37, type metadata accessor for CRLAssetData);

        v65 = v37;
        v66 = 0;
      }

      else
      {
        v65 = v37;
        v66 = 1;
      }

      v75(v65, v66, 1, v83);
      sub_100BBFCFC(v81, v13, type metadata accessor for CRLAssetData);
      sub_10003DFF8(v37, &v13[v5[5]], &unk_101A1B880);
      *&v13[v5[6]] = v59;
      v13[v5[7]] = 2;
      v13[v5[8]] = 2;
      *&v13[v5[9]] = _swiftEmptyDictionarySingleton;
      v42 = *(v78 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v42 == &off_101A25280)
      {
        break;
      }

      __break(1u);
LABEL_21:
      swift_once();
LABEL_7:
      v43 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v5;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v45;
      v46 = sub_1005CF04C();
      *(inited + 104) = v46;
      *(inited + 72) = v37;
      *(inited + 136) = &type metadata for String;
      v47 = sub_1000053B0();
      *(inited + 112) = v40;
      *(inited + 120) = v42;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v47;
      *(inited + 152) = 139;
      v48 = v86[0];
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v48;
      v49 = v37;
      v50 = v48;
      v51 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v53 = swift_allocObject();
      v53[2] = 8;
      v53[3] = 0;
      v53[4] = 0;
      v53[5] = 0;
      v54 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v55 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      [v68 handleFailureInFunction:v55 file:v56 lineNumber:139 isFatal:0 format:v57 args:v54];

      v7 = v70;
      v10 = v71;
      v5 = v69;
      a2 = v77;
      v36 = v82;
      v35 = v83;
      v34 = v80;
    }

    sub_100BBFC94(v13, v10, type metadata accessor for CRLImageItemAssetData);
    swift_beginAccess();
    sub_100BBFC94(v10, v7, type metadata accessor for CRLImageItemAssetData);

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.setter();
    sub_100BBFD64(v10, type metadata accessor for CRLImageItemAssetData);
    swift_endAccess();

    sub_100BBFD64(v13, type metadata accessor for CRLImageItemAssetData);
    return sub_100BBFD64(v84, type metadata accessor for CRLAssetData);
  }

  return result;
}

void sub_100BB5634()
{
  v1 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v4 = *&v3[*(v1 + 24)];

    sub_100BBFD64(v3, type metadata accessor for CRLImageItemAssetData);
    if (v4)
    {
      sub_100006370(0, &qword_101A02480);
      sub_100C58684(v4);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100BB584C(void *a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v6);
  v8 = v26 - v7 + 16;
  __chkstk_darwin(v9);
  v11 = v26 - v10 + 16;
  if ((sub_1011255D0(v12) & 1) == 0)
  {
    v19 = v25;

    return;
  }

  v13 = **(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  if (!v25)
  {
    if (v13 == &off_101A25280)
    {
      v20 = type metadata accessor for CRLMaskInfoData();
      (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
      sub_10000BE14(v11, v8, &qword_101A13F10);
      swift_beginAccess();
      sub_10000BE14(v8, v5, &qword_101A13F10);
      type metadata accessor for CRLImageItemCRDTData(0);

      sub_1005B981C(&qword_101A13F18);
      CRRegister.wrappedValue.setter();
      sub_10000CAAC(v8, &qword_101A13F10);
      swift_endAccess();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

  if (v13 != &off_101A25280)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = type metadata accessor for CRLMaskInfoData();
  *&v11[*(v14 + 24)] = _swiftEmptyDictionarySingleton;
  v15 = v25;

  sub_100C3D740([v15 pathSource], v11);
  v16 = [v15 geometry];
  sub_101271CCC(v16, v26);

  v17 = &v11[*(v14 + 20)];
  v18 = v26[1];
  *v17 = v26[0];
  *(v17 + 1) = v18;
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  sub_10000BE14(v11, v8, &qword_101A13F10);
  swift_beginAccess();
  sub_10000BE14(v8, v5, &qword_101A13F10);
  type metadata accessor for CRLImageItemCRDTData(0);
  sub_1005B981C(&qword_101A13F18);
  CRRegister.wrappedValue.setter();
  sub_10000CAAC(v8, &qword_101A13F10);
  swift_endAccess();

LABEL_10:

  sub_10000CAAC(v11, &qword_101A13F10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = (*((swift_isaMask & *Strong) + 0x388))();

    if (v23)
    {
      return;
    }
  }

  else
  {
  }

  v24 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo) = 0;
}

id sub_100BB5CC8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v10 = v8(v9);

  *&v7[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
  v11 = v10;
  [v11 size];
  result = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v12, v13}];
  if (result)
  {
    v15 = result;
    [v11 center];
    v17 = v16;
    v19 = v18;
    [v11 position];
    v21 = sub_10011F31C(v17, v19, v20);
    v23 = v22;
    [v11 size];
    v26 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v21 size:{v23, v24, v25}];
    v27 = v15;
    sub_100C3D740(v27, v7);
    sub_101271CCC(v26, v47);

    v28 = &v7[*(v2 + 20)];
    v29 = v47[1];
    *v28 = v47[0];
    *(v28 + 1) = v29;
    sub_100BBFC94(v7, v4, type metadata accessor for CRLMaskInfoData);
    v30 = objc_allocWithZone(CRLMaskInfo);
    v31 = &v4[*(v2 + 20)];
    LODWORD(v21) = *v31;
    LODWORD(v23) = *(v31 + 1);
    v32 = *(v31 + 2);
    v33 = *(v31 + 3);
    v34 = *(v31 + 4);
    v35 = v31[20];
    v36 = v31[21];
    v46 = v7;
    v37 = v4;
    v38 = v31[22];
    v39 = v31[23];
    v40 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v41 = v1;
    v42 = [v40 initWithPosition:v35 size:v36 widthValid:v38 heightValid:v39 horizontalFlip:*&v21 verticalFlip:*&v23 angle:{v32, v33, v34}];
    v43 = sub_100C49F20(v37);
    v44 = [v30 initWithImageItem:v41 geometry:v42 pathSource:v43];

    sub_100BBFD64(v37, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v46, type metadata accessor for CRLMaskInfoData);
    return v44;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BB60A8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v53 - v6;
  result = sub_100BBF54C();
  if (result)
  {
    v56 = result;
    v55 = [v56 geometry];
    v9 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v11 = v9(v10);

    *&v7[*(v2 + 24)] = _swiftEmptyDictionarySingleton;
    v12 = v11;
    [v12 size];
    result = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v13, v14}];
    if (result)
    {
      v15 = result;
      [v12 center];
      v17 = v16;
      v19 = v18;
      [v12 position];
      v21 = sub_10011F31C(v17, v19, v20);
      v23 = v22;
      [v12 size];
      v26 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v21 size:{v23, v24, v25}];
      v27 = v15;
      sub_100C3D740(v27, v7);
      sub_101271CCC(v26, v57);

      v28 = &v7[*(v2 + 20)];
      v29 = v57[1];
      *v28 = v57[0];
      *(v28 + 1) = v29;
      sub_100BBFC94(v7, v4, type metadata accessor for CRLMaskInfoData);
      v54 = objc_allocWithZone(CRLMaskInfo);
      v30 = &v4[*(v2 + 20)];
      LODWORD(v21) = *v30;
      LODWORD(v23) = *(v30 + 1);
      v31 = *(v30 + 2);
      v32 = *(v30 + 3);
      v33 = *(v30 + 4);
      v34 = v30[20];
      v35 = v30[21];
      v36 = v30[22];
      v37 = v30[23];
      v38 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v39 = v4;
      v40 = v1;
      v41 = [v38 initWithPosition:v34 size:v35 widthValid:v36 heightValid:v37 horizontalFlip:*&v21 verticalFlip:*&v23 angle:{v31, v32, v33}];
      v42 = sub_100C49F20(v4);
      v43 = [v54 initWithImageItem:v40 geometry:v41 pathSource:v42];

      sub_100BBFD64(v39, type metadata accessor for CRLMaskInfoData);
      sub_100BBFD64(v7, type metadata accessor for CRLMaskInfoData);
      v44 = [v43 geometry];

      v45 = v55;
      v46 = [v55 isEqual:v44];

      if (v46)
      {
        v47 = v56;
        v48 = [v56 pathSource];
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();
        if (v49)
        {
          v50 = [v49 shouldShowKnob];

          return v50;
        }

        else
        {

          v51 = [v47 pathSource];
          v52 = [v51 isRectangular];

          return v52 ^ 1;
        }
      }

      else
      {

        return 1;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100BB66D0(char a1)
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  result = sub_1011255D0(v12);
  if (result)
  {
    if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
    {
      swift_beginAccess();

      sub_1005B981C(&unk_101A2F5B0);
      CRRegister.wrappedValue.getter();
      swift_endAccess();
      v11[*(v3 + 28)] = a1 & 1;
      sub_100BBFC94(v11, v8, type metadata accessor for CRLImageItemAssetData);
      swift_beginAccess();
      sub_100BBFC94(v8, v5, type metadata accessor for CRLImageItemAssetData);
      CRRegister.wrappedValue.setter();
      sub_100BBFD64(v8, type metadata accessor for CRLImageItemAssetData);
      swift_endAccess();

      return sub_100BBFD64(v11, type metadata accessor for CRLImageItemAssetData);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100BB691C()
{
  v1 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = &type metadata for CRLFeatureFlags;
  v10 = sub_100004D60();
  v8[0] = 19;
  v4 = isFeatureEnabled(_:)();
  result = sub_100005070(v8);
  if ((v4 & 1) == 0)
  {
    v6 = 0;
    return v6 & 1;
  }

  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v6 = v3[*(v1 + 32)];
    sub_100BBFD64(v3, type metadata accessor for CRLImageItemAssetData);
    return v6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100BB6AEC(char a1)
{
  v3 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v3);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v15[-v7 - 8];
  __chkstk_darwin(v9);
  v11 = &v15[-v10 - 8];
  v16 = &type metadata for CRLFeatureFlags;
  v17 = sub_100004D60();
  v15[0] = 19;
  v12 = isFeatureEnabled(_:)();
  result = sub_100005070(v15);
  if (v12)
  {
    result = sub_1011255D0(result);
    if (result)
    {
      if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
      {
        swift_beginAccess();

        sub_1005B981C(&unk_101A2F5B0);
        CRRegister.wrappedValue.getter();
        swift_endAccess();
        v11[*(v3 + 32)] = a1 & 1;
        sub_100BBFC94(v11, v8, type metadata accessor for CRLImageItemAssetData);
        swift_beginAccess();
        sub_100BBFC94(v8, v5, type metadata accessor for CRLImageItemAssetData);
        CRRegister.wrappedValue.setter();
        sub_100BBFD64(v8, type metadata accessor for CRLImageItemAssetData);
        swift_endAccess();

        return sub_100BBFD64(v11, type metadata accessor for CRLImageItemAssetData);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100BB6D6C()
{
  v1 = OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial);
  if (v2 == 2)
  {
    v3 = v0;
    v4 = sub_100BB30D8();
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v6 = *(v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v5);
    v7 = (*(v6 + 64))(v5, v6);

    if (v7)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      v8 = [objc_opt_self() sharedPool];
      v9 = sub_100BB30D8();
      v10 = [v8 providerForAsset:v9 shouldValidate:1];

      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11 && (v12 = [v11 CGImageSource]) != 0)
      {
        v13 = v12;
        LOBYTE(v2) = [objc_opt_self() imageSourceIsSpatial:v12];
      }

      else
      {
        LOBYTE(v2) = 0;
      }

      *(v3 + v1) = v2;
    }
  }

  return v2 & 1;
}

BOOL sub_100BB6F04()
{
  v1 = v0;
  v2 = sub_100BB30D8();
  v3 = objc_opt_self();
  v4 = [v3 sharedPool];
  v5 = [v4 providerForAsset:v2 shouldValidate:1];

  [v5 naturalSize];
  v7 = v6;

  if (sub_1007C87EC(v7, 0.0))
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v9 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v11 = v9(v10);

  [v11 size];
  v13 = v12;

  if (sub_1007C87EC(v13, 0.0))
  {
    return 0;
  }

  v15 = sub_100BB30D8();
  v16 = [v3 sharedPool];
  v17 = [v16 providerForAsset:v15 shouldValidate:1];

  [v17 naturalSize];
  v19 = v18;

  v20 = sub_100BB30D8();
  v21 = [v3 sharedPool];
  v22 = [v21 providerForAsset:v20 shouldValidate:1];

  [v22 naturalSize];
  v24 = v23;

  v25 = v19 / v24;
  v26 = *(**(v1 + v8) + 296);

  v28 = v26(v27);

  [v28 size];
  v30 = v29;

  v31 = *(**(v1 + v8) + 296);

  v33 = v31(v32);

  [v33 size];
  v35 = v34;

  return sub_1007C87EC(fabs(v25), fabs(v30 / v35));
}

BOOL sub_100BB721C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLImageItemAssetData(0);
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform12CRLImageItem__isSpatial);
  if (v6 == 2)
  {
    v7 = sub_100BB30D8();
    v8 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v9 = *(v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
    sub_100020E58((v7 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v8);
    v10 = (*(v9 + 64))(v8, v9);

    if (v10)
    {
      goto LABEL_12;
    }

    v11 = [objc_opt_self() sharedPool];
    v12 = sub_100BB30D8();
    v13 = [v11 providerForAsset:v12 shouldValidate:1];

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14 || (v15 = [v14 CGImageSource]) == 0)
    {

      v20 = 0;
      *(v1 + v5) = 0;
      return v20 & 1;
    }

    v16 = v15;
    v17 = [objc_opt_self() imageSourceIsSpatial:v15];

    *(v1 + v5) = v17;
    if (!v17)
    {
      goto LABEL_12;
    }
  }

  else if ((v6 & 1) == 0)
  {
LABEL_12:
    v20 = 0;
    return v20 & 1;
  }

  if (sub_100BB60A8())
  {
    goto LABEL_12;
  }

  result = sub_100BB6F04();
  if (!result)
  {
    goto LABEL_12;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2F5B0);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v19 = v4[*(v2 + 28)];
    sub_100BBFD64(v4, type metadata accessor for CRLImageItemAssetData);
    v20 = v19 ^ 1;
    return v20 & 1;
  }

  __break(1u);
  return result;
}

id sub_100BB74D4()
{
  v1 = type metadata accessor for UUID();
  v82 = *(v1 - 8);
  __chkstk_darwin(v1);
  v81 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v3);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v77 - v7;
  v9 = sub_100BBF54C();
  v80 = v0;
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = [v11 pathSource];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      if (([v13 shouldShowKnob] & 1) == 0)
      {
        v57 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

        v59 = v57(v58);

        [v59 center];
        v61 = v60;
        v63 = v62;
        [v59 position];
        v65 = sub_10011F31C(v61, v63, v64);
        v67 = v66;
        [v59 size];
        v70 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v65 size:{v67, v68, v69}];

        v71 = objc_opt_self();
        [v14 scalar];
        v73 = v72;
        v51 = v80;
        [v70 size];
        v76 = [v71 roundedRectangleWithScalar:1 naturalSize:v73 continuousCurve:{v74, v75}];
        [v76 setShouldShowKnob:0];
        v50 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v51 geometry:v70 pathSource:v76];

        goto LABEL_7;
      }
    }

    v8 = v10;
  }

  v79 = v1;
  v15 = *(**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v17 = v15(v16);

  *&v8[*(v3 + 24)] = _swiftEmptyDictionarySingleton;
  v18 = v17;
  [v18 size];
  result = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v19, v20}];
  if (result)
  {
    v22 = result;
    [v18 center];
    v24 = v23;
    v26 = v25;
    [v18 position];
    v28 = sub_10011F31C(v24, v26, v27);
    v30 = v29;
    [v18 size];
    v33 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v28 size:{v30, v31, v32}];
    v34 = v22;
    sub_100C3D740(v34, v8);
    sub_101271CCC(v33, v83);

    v35 = &v8[*(v3 + 20)];
    v36 = v83[1];
    *v35 = v83[0];
    *(v35 + 1) = v36;
    sub_100BBFC94(v8, v5, type metadata accessor for CRLMaskInfoData);
    v77 = objc_allocWithZone(CRLMaskInfo);
    v78 = v8;
    v37 = &v5[*(v3 + 20)];
    LODWORD(v28) = *v37;
    LODWORD(v30) = *(v37 + 1);
    v38 = *(v37 + 2);
    v39 = *(v37 + 3);
    v40 = *(v37 + 4);
    v41 = v37[20];
    v42 = v37[21];
    v43 = v37[22];
    v44 = v37[23];
    v45 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v46 = v80;
    v47 = v80;
    v48 = [v45 initWithPosition:v41 size:v42 widthValid:v43 heightValid:v44 horizontalFlip:*&v28 verticalFlip:*&v30 angle:{v38, v39, v40}];
    v49 = sub_100C49F20(v5);
    v50 = [v77 initWithImageItem:v47 geometry:v48 pathSource:v49];

    sub_100BBFD64(v5, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v78, type metadata accessor for CRLMaskInfoData);
    v1 = v79;
    v51 = v46;
LABEL_7:
    v52 = objc_allocWithZone(type metadata accessor for CRLCommandSetMask());
    v53 = v81;
    (*(**&v51[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
    v54 = v50;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v82 + 8))(v53, v1);
    v56 = [v52 initWithId:isa maskInfo:v54];

    return v56;
  }

  __break(1u);
  return result;
}

id sub_100BB7BA4(char a1)
{
  result = sub_100BBF54C();
  if (result)
  {
    v4 = result;
    v5 = [v4 geometry];
    [v5 position];
    v7 = v6;
    v9 = v8;

    v22.x = 0.0;
    v22.y = 0.0;
    v21.x = v7;
    v21.y = v9;
    if (CGPointEqualToPoint(v21, v22) && (v10 = [v4 geometry], v11 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296), v12 = , v13 = v11(v12), , v14 = objc_msgSend(v10, "isEqualExceptForPosition:", v13), v10, v13, v14))
    {
      v15 = [v4 pathSource];
      v16 = v15;
      if (a1)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 type];

          return (v18 == 0);
        }

        v16 = [v4 pathSource];
        v19 = [v16 isRectangular];
      }

      else
      {
        v19 = [v15 isRectangular];
      }

      v20 = v19;

      return v20;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_100BB7E00()
{
  v1 = sub_100BBF54C();
  if (v1)
  {
    v2 = v1;
    v3 = [v2 geometry];
    v4 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v6 = v4(v5);

    v7 = [v3 geometryWithParentGeometry:v6];

    return v7;
  }

  else
  {
    v9 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v11 = v9(v10);

    return v11;
  }
}

void sub_100BB8084(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v4 = sub_1005B981C(&qword_101A13F10);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v10 = type metadata accessor for CRLMaskInfoData();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v60 - v15;
  __chkstk_darwin(v16);
  v62 = &v60 - v17;
  if (**&v2[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A25280)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  type metadata accessor for CRLImageItemCRDTData(0);

  sub_1005B981C(&qword_101A13F18);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) != 1)
  {
    v22 = v9;
    v23 = v62;
    sub_100BBFCFC(v22, v62, type metadata accessor for CRLMaskInfoData);
    sub_10000BE14(a1, v6, &qword_101A13F10);
    if (v18(v6, 1, v10) == 1)
    {
      sub_10000CAAC(v6, &qword_101A13F10);
    }

    else
    {
      v24 = v61;
      sub_100BBFCFC(v6, v61, type metadata accessor for CRLMaskInfoData);
      v25 = *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
      if (v25)
      {
        v26 = v25;
        v27 = sub_100B7DC20(v24);
        v28 = v63;
        if (v27)
        {
          v29 = v27;
          [v26 setGeometry:v27];
          if (v28)
          {
            v30 = sub_100BBF54C();
            v31 = v30;
            if (v30)
            {
              v30 = sub_100006370(0, &qword_101A13F78);
            }

            else
            {
              v66 = 0;
              v67 = 0;
            }

            v65 = v31;
            v68 = v30;
            sub_10000BE14(&v65, v64, &unk_1019F4D00);
            swift_beginAccess();
            v55 = v31;
            sub_100BC1F00(v64, 41);
            swift_endAccess();

            sub_10000CAAC(&v65, &unk_1019F4D00);
          }

          else
          {
          }
        }

        if ((sub_100C48FE0(v23, v24) & 1) == 0)
        {
          v56 = sub_100C49F20(v23);
          [v26 setPathSource:v56];
          if (v28)
          {
            v57 = sub_100BBF54C();
            v58 = v57;
            if (v57)
            {
              v57 = sub_100006370(0, &qword_101A13F78);
            }

            else
            {
              v66 = 0;
              v67 = 0;
            }

            v65 = v58;
            v68 = v57;
            sub_10000BE14(&v65, v64, &unk_1019F4D00);
            swift_beginAccess();
            v59 = v58;
            sub_100BC1F00(v64, 42);
            swift_endAccess();

            sub_100BBFD64(v61, type metadata accessor for CRLMaskInfoData);
            sub_100BBFD64(v23, type metadata accessor for CRLMaskInfoData);
            goto LABEL_22;
          }
        }

        sub_100BBFD64(v24, type metadata accessor for CRLMaskInfoData);
        v52 = v23;
LABEL_32:
        sub_100BBFD64(v52, type metadata accessor for CRLMaskInfoData);
        return;
      }

      sub_100BBFD64(v24, type metadata accessor for CRLMaskInfoData);
    }

    sub_100BBFC94(v23, v13, type metadata accessor for CRLMaskInfoData);
    v33 = objc_allocWithZone(CRLMaskInfo);
    v34 = &v13[*(v10 + 20)];
    v35 = *v34;
    v36 = *(v34 + 1);
    v37 = *(v34 + 2);
    v38 = *(v34 + 3);
    v39 = *(v34 + 4);
    v40 = v34[20];
    v41 = v34[21];
    v42 = v34[22];
    v43 = v34[23];
    v44 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v45 = v2;
    v46 = [v44 initWithPosition:v40 size:v41 widthValid:v42 heightValid:v43 horizontalFlip:v35 verticalFlip:v36 angle:{v37, v38, v39}];
    v47 = sub_100C49F20(v13);
    v48 = [v33 initWithImageItem:v45 geometry:v46 pathSource:v47];

    sub_100BBFD64(v13, type metadata accessor for CRLMaskInfoData);
    v49 = *&v45[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
    *&v45[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = v48;

    if (v63)
    {
      v50 = sub_100BBF54C();
      v51 = v50;
      if (v50)
      {
        v50 = sub_100006370(0, &qword_101A13F78);
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v53 = v62;
      v65 = v51;
      v68 = v50;
      sub_10000BE14(&v65, v64, &unk_1019F4D00);
      swift_beginAccess();
      v54 = v51;
      sub_100BC1F00(v64, 40);
      swift_endAccess();
      sub_100BBFD64(v53, type metadata accessor for CRLMaskInfoData);
      goto LABEL_22;
    }

    v52 = v62;
    goto LABEL_32;
  }

  sub_10000CAAC(v9, &qword_101A13F10);
  v19 = *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo];
  *&v2[OBJC_IVAR____TtC8Freeform12CRLImageItem__maskInfo] = 0;

  if (v63)
  {
    v20 = sub_100BBF54C();
    v21 = v20;
    if (v20)
    {
      v20 = sub_100006370(0, &qword_101A13F78);
    }

    else
    {
      v66 = 0;
      v67 = 0;
    }

    v65 = v21;
    v68 = v20;
    sub_10000BE14(&v65, v64, &unk_1019F4D00);
    swift_beginAccess();
    v32 = v21;
    sub_100BC1F00(v64, 40);
    swift_endAccess();
LABEL_22:
    sub_10000CAAC(&v65, &unk_1019F4D00);
  }
}

uint64_t sub_100BB88FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v3 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v5 = v3(v4);

  [v5 transform];
  v25 = v32;
  v28 = v31;
  v22 = v33;

  v31 = v28;
  v32 = v25;
  v33 = v22;
  result = sub_100139B08(&v31, 0.0001);
  if (result)
  {
    v7 = *(**(v0 + v2) + 392);

    LOBYTE(v7) = v7(v8);

    if (v7)
    {
      v9 = sub_100BBF54C();
      if (v9)
      {
        v10 = v9;
        v11 = [v10 geometry];
        [v11 transform];
        v26 = v32;
        v29 = v31;
        v23 = v33;

        v31 = v29;
        v32 = v26;
        v33 = v23;
        LODWORD(v11) = sub_100139B08(&v31, 0.0001);

        if (!v11)
        {
          return 0;
        }
      }

      v12 = *(**(v1 + v2) + 368);

      LOBYTE(v12) = v12(v13);

      if (v12)
      {
        return 0;
      }
    }

    v14 = sub_100BBF54C();
    if (v14)
    {
      v15 = v14;
      v16 = [v15 geometry];
      [v16 transform];
      v27 = v32;
      v30 = v31;
      v24 = v33;

      v31 = v30;
      v32 = v27;
      v33 = v24;
      LODWORD(v16) = sub_100139B08(&v31, 0.0001);

      if (!v16)
      {
        return 0;
      }
    }

    v17 = sub_100BBF54C();
    if (v17)
    {
      v18 = [v17 pathSource];
      if (v18)
      {
        v19 = v18;
        if ([v18 conformsToProtocol:&OBJC_PROTOCOL___CRLSmartPathSource])
        {
          objc_opt_self();
          v20 = swift_dynamicCastObjCClass();
          if (v20)
          {
            v21 = [v20 shouldShowKnob];

            return v21 ^ 1;
          }

          else
          {

            return 0;
          }
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_100BB8C1C()
{
  v1 = sub_100BBF54C();
  if (v1 && (v2 = v1, v3 = [v2 geometry], objc_msgSend(v3, "transform"), v9 = v12, v10 = v11, v8 = v13, v3, v11 = v10, v12 = v9, v13 = v8, LODWORD(v3) = sub_100139B08(&v11, 0.0001), v2, !v3))
  {
    v6 = 0;
  }

  else
  {
    v4 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 368);

    LOBYTE(v4) = v4(v5);

    v6 = v4 ^ 1;
  }

  return v6 & 1;
}

void *sub_100BB8D20@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v4 = sub_100D652D4();
  if (v4)
  {
    sub_100B965E4(v4, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v5);
    __src[12] = v26;
    __src[13] = v27;
    *&__src[14] = v28;
    __src[8] = v22;
    __src[9] = v23;
    __src[10] = v24;
    __src[11] = v25;
    __src[4] = v18;
    __src[5] = v19;
    __src[6] = v20;
    __src[7] = v21;
    __src[0] = v14;
    __src[1] = v15;
    __src[2] = v16;
    __src[3] = v17;
  }

  else
  {
    sub_1005D0BD8(__src);
  }

  v6 = *(**&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 440);
  v7 = v3;

  v9 = v6(v8);

  if (v9)
  {
    sub_100A72CD4(v9, &v14);
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v14, v10);
  }

  else
  {
    sub_1005D0C00(&v14);
  }

  *(&__src[18] + 8) = v18;
  *(&__src[19] + 8) = v19;
  *(&__src[20] + 8) = v20;
  *(&__src[21] + 8) = v21;
  *(&__src[16] + 8) = v16;
  *(&__src[17] + 8) = v17;
  *(&__src[14] + 8) = v14;
  *(&__src[15] + 8) = v15;
  v11 = sub_100BB96E0();

  a1[3] = &type metadata for CRLImagePresetData;
  a1[4] = sub_100B6D4C4();
  v12 = swift_allocObject();
  *a1 = v12;
  result = memcpy((v12 + 16), __src, 0x168uLL);
  *(v12 + 376) = v11;
  *(v12 + 384) = _swiftEmptyDictionarySingleton;
  *(v12 + 392) = _swiftEmptyDictionarySingleton;
  return result;
}

void sub_100BB8F14(void *a1)
{
  sub_100B4100C(a1);
  type metadata accessor for CRLImageItem();
  if (swift_dynamicCastClass())
  {
    v10 = a1;
    v2 = sub_100BBF54C();
    if (v2)
    {
      v3 = v2;
      v4 = [v3 pathSource];
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        if (([v5 shouldShowKnob] & 1) == 0)
        {
          [v6 cornerRadius];
          *&v7 = v7;
          v8 = sub_100BB9950(*&v7);
          sub_100BB584C(v8);
        }
      }

      v9 = v4;
    }

    else
    {
      v9 = v10;
    }
  }
}

uint64_t sub_100BB91B0()
{
  v0 = _s13ImageExporterCMa();
  sub_100BBFB80(&qword_101A13F70, _s13ImageExporterCMa);
  return v0;
}

void sub_100BB9214(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_100BBF54C();
  if (v8)
  {
    v9 = v8;
    v34 = v8;
    v10 = [v34 geometry];
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = sub_100121E8C(v11, v13, a2, a3);
    if (v15 < v12 || v16 < v14)
    {
      v18 = v15 / v12;
      v19 = v16 / v14;
      v20 = [v34 geometry];
      CGAffineTransformMakeScale(&v35, v18, v19);
      v21 = [v20 geometryByAppendingTransform:&v35];

      v22 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v23 = *(**&v4[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

      v25 = v23(v24);

      CGAffineTransformMakeScale(&v35, v18, v19);
      v26 = [v25 geometryByAppendingTransform:&v35];

      [v34 setGeometry:v21];
      v27 = v34;
      sub_100BB584C(v9);
      if ((sub_1011255D4(v28) & 1) != 0 && (v29 = *(**&v4[v22] + 296), v30 = , v31 = v29(v30), , sub_100006370(0, &unk_1019F5730), v32 = static NSObject.== infix(_:_:)(), v31, (v32 & 1) == 0))
      {
        v33 = *(**&v4[v22] + 304);

        v33(v26);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v36.receiver = v3;
    v36.super_class = type metadata accessor for CRLImageItem();
    objc_msgSendSuper2(&v36, "scaleDownSizeToFitWithinSize:board:", a1, a2, a3);
  }
}

float sub_100BB96E0()
{
  v0 = sub_100BBF54C();
  v1 = 0.0;
  if (v0)
  {
    v2 = v0;
    v3 = [v2 pathSource];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v5 = v4, ![v4 type]))
    {
      [v5 scalar];
      v7 = v6;

      return v7;
    }

    else
    {
    }
  }

  return v1;
}

id sub_100BB9798(char a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0.0;
  if (a1)
  {
    v7 = 10.0;
  }

  v8 = sub_100BB9950(v7);
  v9 = objc_allocWithZone(type metadata accessor for CRLCommandSetMask());
  (*(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v11 = [v9 initWithId:isa maskInfo:v8];

  return v11;
}

id sub_100BB9950(float a1)
{
  v2 = v1;
  v4 = sub_100BBF54C();
  if (a1 <= 0.0)
  {
    if (!v4)
    {
      return 0;
    }

    v6 = v4;
    v7 = [v6 geometry];
    [v7 size];
    v10 = [objc_opt_self() pathSourceForShapeType:3 naturalSize:{v8, v9}];
    v11 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v2 geometry:v7 pathSource:v10];
  }

  else
  {
    if (v4)
    {
      v5 = [v4 geometry];
    }

    else
    {
      v12 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v14 = v12(v13);

      [v14 center];
      v16 = v15;
      v18 = v17;
      [v14 position];
      v20 = sub_10011F31C(v16, v18, v19);
      v22 = v21;
      [v14 size];
      v5 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v20 size:{v22, v23, v24}];
    }

    v25 = objc_opt_self();
    v7 = v5;
    [v7 size];
    v6 = [v25 roundedRectangleWithScalar:1 naturalSize:a1 continuousCurve:{v26, v27}];
    [v6 setShouldShowKnob:0];
    v11 = [objc_allocWithZone(CRLMaskInfo) initWithImageItem:v2 geometry:v7 pathSource:v6];
    v10 = v7;
  }

  return v11;
}

uint64_t sub_100BB9CD8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 BOOLForKey:@"CRLImageItemsRequireAssetDownloadForSendCopyUserDefault"];

  if (v1)
  {
    return 1;
  }

  return sub_1009B07F4();
}

void sub_100BB9D68(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v4);
  v162 = &v153[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v6);
  v163 = &v153[-v8];
  v9 = *((swift_isaMask & *a1) + 0xE0);
  v10 = v9(v7);
  [v10 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730);
  if (!swift_dynamicCast())
  {
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165);
    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v26 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v19;
    v28 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v28;
    v29 = sub_1005CF04C();
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 585;
    v31 = v165;
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:585 isFatal:0 format:v40 args:v37];

    return;
  }

  v160 = v2;
  v11 = v165;
  type metadata accessor for CRLImageItem();
  if (swift_dynamicCastClass())
  {
    v12 = v11;
    v13 = a1;
    v14 = sub_100BBF54C();
    if (v14)
    {
      v15 = v14;
      v16 = [v15 pathSource];
      v17 = [v15 geometry];

      v11 = v12;
      goto LABEL_10;
    }

    v11 = v12;
  }

  [v11 size];
  v41 = sub_10011ECB4();
  v45 = sub_100120414(v41, v42, v43, v44);
  v47 = v46;
  v48 = (v9)();
  [v48 size];
  v50 = v49;
  v52 = v51;

  v17 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v45 size:{v47, v50, v52}];
  v16 = 0;
LABEL_10:
  v164 = v11;
  [v11 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  v53 = swift_dynamicCast();
  v161 = v17;
  if ((v53 & 1) == 0)
  {
    v163 = v16;
    v65 = objc_opt_self();
    v66 = [v65 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165);
    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    v69 = [v68 lastPathComponent];

    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v73 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_10146CA70;
    *(v74 + 56) = &type metadata for Int32;
    *(v74 + 64) = &protocol witness table for Int32;
    *(v74 + 32) = v66;
    v75 = sub_100006370(0, &qword_1019F4D30);
    *(v74 + 96) = v75;
    v76 = sub_1005CF04C();
    *(v74 + 104) = v76;
    *(v74 + 72) = v67;
    *(v74 + 136) = &type metadata for String;
    v77 = sub_1000053B0();
    *(v74 + 112) = v70;
    *(v74 + 120) = v72;
    *(v74 + 176) = &type metadata for UInt;
    *(v74 + 184) = &protocol witness table for UInt;
    *(v74 + 144) = v77;
    *(v74 + 152) = 601;
    v78 = v165;
    *(v74 + 216) = v75;
    *(v74 + 224) = v76;
    *(v74 + 192) = v78;
    v79 = v67;
    v80 = v78;
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v74);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v82, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v83 = swift_allocObject();
    v83[2] = 8;
    v83[3] = 0;
    v83[4] = 0;
    v83[5] = 0;
    v84 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v85 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v86 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v87 = String._bridgeToObjectiveC()();

    [v65 handleFailureInFunction:v85 file:v86 lineNumber:601 isFatal:0 format:v87 args:v84];

    goto LABEL_21;
  }

  v54 = v165;
  [v17 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v163 = v16;
    v162 = objc_opt_self();
    v88 = [v162 _atomicIncrementAssertCount];
    v165 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v165);
    StaticString.description.getter();
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    v91 = [v90 lastPathComponent];

    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v95 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v96 = swift_initStackObject();
    *(v96 + 16) = xmmword_10146CA70;
    *(v96 + 56) = &type metadata for Int32;
    *(v96 + 64) = &protocol witness table for Int32;
    *(v96 + 32) = v88;
    v97 = sub_100006370(0, &qword_1019F4D30);
    *(v96 + 96) = v97;
    v98 = sub_1005CF04C();
    *(v96 + 104) = v98;
    *(v96 + 72) = v89;
    *(v96 + 136) = &type metadata for String;
    v99 = sub_1000053B0();
    *(v96 + 112) = v92;
    *(v96 + 120) = v94;
    *(v96 + 176) = &type metadata for UInt;
    *(v96 + 184) = &protocol witness table for UInt;
    *(v96 + 144) = v99;
    *(v96 + 152) = 602;
    v100 = v165;
    *(v96 + 216) = v97;
    *(v96 + 224) = v98;
    *(v96 + 192) = v100;
    v101 = v89;
    v102 = v100;
    v103 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v96);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v104 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v104, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v105 = swift_allocObject();
    v105[2] = 8;
    v105[3] = 0;
    v105[4] = 0;
    v105[5] = 0;
    v106 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v107 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v108 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v87 = String._bridgeToObjectiveC()();

    [v162 handleFailureInFunction:v107 file:v108 lineNumber:602 isFatal:0 format:v87 args:v106];

LABEL_21:

    return;
  }

  v55 = v165;
  v56 = v160;
  v159 = sub_100BB30D8();
  sub_100BBEE78(v54, v55, v159, v164, v17, v56);
  v57 = v54;
  v58 = v56;
  v59 = v57;
  if (sub_1011255D4(v57))
  {
    v158 = v55;
    v60 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v61 = *(**(v56 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v63 = v61(v62);

    v64 = static NSObject.== infix(_:_:)();

    if (v64)
    {
    }

    else
    {
      v113 = *(**&v58[v60] + 304);

      v113(v59);
    }

    v109 = v164;
    v55 = v158;
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_23:
    v110 = objc_allocWithZone(CRLMaskInfo);
    v111 = v161;
    v112 = [v110 initWithImageItem:v58 geometry:v161 pathSource:v16];
LABEL_28:
    v152 = v112;
    [v152 setGeometry:v55];
    sub_100BB584C(v152);

    return;
  }

  v109 = v164;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_26:
  v157 = v59;
  v158 = v55;
  v114 = *(**&v58[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

  v116 = v114(v115);

  v117 = v163;
  *&v163[*(v4 + 24)] = _swiftEmptyDictionarySingleton;
  v118 = v116;
  [v118 size];
  v121 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v119, v120}];
  if (v121)
  {
    v122 = v121;
    v123 = v58;
    [v118 center];
    v125 = v124;
    v127 = v126;
    [v118 position];
    v129 = sub_10011F31C(v125, v127, v128);
    v131 = v130;
    v132 = v118;
    v156 = v118;
    [v118 size];
    v135 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v129 size:{v131, v133, v134}];
    v136 = v122;
    sub_100C3D740(v136, v117);
    sub_101271CCC(v135, v166);

    v137 = &v117[*(v4 + 20)];
    v138 = v166[1];
    *v137 = v166[0];
    *(v137 + 1) = v138;
    v139 = v162;
    sub_100BBFC94(v117, v162, type metadata accessor for CRLMaskInfoData);
    v155 = objc_allocWithZone(CRLMaskInfo);
    v140 = &v139[*(v4 + 20)];
    LODWORD(v129) = *v140;
    LODWORD(v131) = *(v140 + 1);
    v141 = *(v140 + 2);
    v142 = *(v140 + 3);
    v143 = *(v140 + 4);
    v144 = v140[20];
    v145 = v140[21];
    v146 = v140[22];
    v154 = v140[23];
    v147 = objc_allocWithZone(CRLCanvasInfoGeometry);
    v148 = v123;
    v149 = [v147 initWithPosition:v144 size:v145 widthValid:v146 heightValid:v154 horizontalFlip:*&v129 verticalFlip:*&v131 angle:{v141, v142, v143}];
    v150 = sub_100C49F20(v139);
    v151 = [v155 initWithImageItem:v148 geometry:v149 pathSource:v150];

    sub_100BBFD64(v139, type metadata accessor for CRLMaskInfoData);
    sub_100BBFD64(v117, type metadata accessor for CRLMaskInfoData);
    v112 = v151;
    v16 = 0;
    v109 = v164;
    v59 = v157;
    v55 = v158;
    v111 = v161;
    goto LABEL_28;
  }

  __break(1u);
}

double sub_100BBAFAC()
{
  v1 = sub_100BBF54C();
  if (v1)
  {
    v2 = v1;
    v3 = [v2 geometry];
    v4 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v6 = v4(v5);

    v7 = [v3 geometryWithParentGeometry:v6];
  }

  else
  {
    v8 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v7 = v8(v9);
  }

  [v7 center];
  v11 = v10;

  return v11;
}

void sub_100BBB1E0()
{
  v1 = sub_100BB30D8();
  v2 = [objc_opt_self() sharedPool];
  v3 = [v2 temporaryProviderForAsset:v1 shouldValidate:1];

  [v3 naturalSize];
  v5 = v4;
  v7 = v6;

  v8 = *(**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v10 = v8(v9);

  [v10 size];
  v12 = v11;
  v14 = v13;

  if (v5 == 0.0 || v7 == 0.0 || v12 == 0.0 || v14 == 0.0)
  {
  }

  else
  {
    v15 = sub_10050CFE8();
    if (v15 < v5)
    {
      v5 = v15;
    }

    sub_10050CFE8();
    if (v16 >= v7)
    {
      v17 = v7;
    }

    else
    {
      v17 = v16;
    }

    sub_100121E58(v12, v14, v5, v17);
  }
}

void sub_100BBB36C()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A25280)
  {

    v1 = sub_100FA3AC8(0);

    sub_101122410(*(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store), v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100BBB41C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLImageItemCRDTData(0);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = sub_1005B981C(&qword_101A13F28);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  type metadata accessor for CRLImageItem();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    swift_unknownObjectRetain();
    v15 = sub_1011F0C64(v14, v2);
    v16 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v16 == &off_101A25280)
    {
      v53 = v4;
      v54 = v15;
      v55 = a1;
      v17 = qword_101AD8A28;
      swift_beginAccess();
      sub_100BBFC94(v16 + v17, v9, type metadata accessor for CRLImageItemCRDTData);
      v18 = *(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v18 == &off_101A25280)
      {
        v19 = qword_101AD8A28;
        swift_beginAccess();
        sub_100BBFC94(v18 + v19, v6, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFB80(&qword_101A13F38, type metadata accessor for CRLImageItemCRDTData);
        CRStruct_3.actionUndoingDifference(from:)();
        sub_100BBFD64(v6, type metadata accessor for CRLImageItemCRDTData);
        sub_100BBFD64(v9, type metadata accessor for CRLImageItemCRDTData);
        v20 = sub_1005B981C(&qword_101A13F30);
        if ((*(*(v20 - 8) + 48))(v12, 1, v20) == 1)
        {
          sub_10000CAAC(v12, &qword_101A13F28);
          memset(v56, 0, sizeof(v56));
          v57 = 1;
        }

        else
        {
          v21 = *(v20 + 48);
          v22 = *(v20 + 64);
          v57 = v20;
          v23 = sub_10002C58C(v56);
          v24 = *(v20 + 48);
          v25 = *(v20 + 64);
          sub_10003DFF8(v12, v23, &qword_101A13F58);
          sub_10003DFF8(&v12[v21], v23 + v24, &qword_101A13F60);
          sub_10003DFF8(&v12[v22], v23 + v25, &qword_101A13F68);
        }

        v26 = v54;
        swift_beginAccess();
        sub_100BC1DF4(v56, 3);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v28 = objc_opt_self();
  v29 = [v28 _atomicIncrementAssertCount];
  v56[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v56);
  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v36 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v29;
  v38 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v38;
  v39 = sub_1005CF04C();
  *(inited + 104) = v39;
  *(inited + 72) = v30;
  *(inited + 136) = &type metadata for String;
  v40 = sub_1000053B0();
  *(inited + 112) = v33;
  *(inited + 120) = v35;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v40;
  *(inited + 152) = 671;
  v41 = v56[0];
  *(inited + 216) = v38;
  *(inited + 224) = v39;
  *(inited + 192) = v41;
  v42 = v30;
  v43 = v41;
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v45 = static os_log_type_t.error.getter();
  sub_100005404(v36, &_mh_execute_header, v45, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
  type metadata accessor for __VaListBuilder();
  v46 = swift_allocObject();
  v46[2] = 8;
  v46[3] = 0;
  v46[4] = 0;
  v46[5] = 0;
  v47 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  [v28 handleFailureInFunction:v48 file:v49 lineNumber:671 isFatal:1 format:v50 args:v47];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v51, v52);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}