void sub_1008EA1B4(void *a1, double a2, double a3)
{
  sub_100006370(0, &qword_101A0E8B0);
  if ([swift_getObjCClassFromMetadata() instancesRespondToSelector:"addMiniFormatterElementsToArray:atPoint:"])
  {
    v46.receiver = v3;
    v46.super_class = type metadata accessor for CRLUSDZEditor();
    objc_msgSendSuper2(&v46, "addMiniFormatterElementsToArray:atPoint:", a1, a2, a3);
  }

  v7 = [v3 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(v8 + 16);
  }

  if (v9 <= 1)
  {
    v45 = a1;
    v10 = objc_opt_self();
    v11 = [v10 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

    if (!v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = String._bridgeToObjectiveC()();
    }

    v15 = String._bridgeToObjectiveC()();
    v44 = objc_opt_self();
    v16 = [v44 crl_quickInspectorImageNamed:v15];

    v17 = [objc_allocWithZone(CRLQuickInspectorElement) initWithName:v14 image:v16 type:2 options:0x800000];
    [v17 setTag:14];
    v18 = [v10 mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

    if (!v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = String._bridgeToObjectiveC()();
    }

    [v17 setToolTip:v21];

    [v45 addObject:v17];
    v22 = [v10 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    if (!v25)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = String._bridgeToObjectiveC()();
    }

    v26 = String._bridgeToObjectiveC()();
    v27 = [v44 crl_quickInspectorImageNamed:v26];

    v28 = objc_opt_self();
    v29 = [v28 elementWithName:v25 image:v27 type:2 action:"showPreview:"];

    [v29 setTag:23];
    v30 = [v3 boardItems];
    v31 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = sub_100BC17C8(v31);

    if (v32)
    {
      (*((swift_isaMask & *v32) + 0x2D8))(v33);
      v35 = v34;

      v36 = v45;
      if (v35)
      {
        v32 = String._bridgeToObjectiveC()();
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v36 = v45;
    }

    [v29 setToolTip:v32];

    [v36 addObject:v29];
    v37 = [v10 mainBundle];
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v37 localizedStringForKey:v38 value:v39 table:0];

    if (!v40)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = String._bridgeToObjectiveC()();
    }

    v41 = String._bridgeToObjectiveC()();
    v42 = [v44 crl_quickInspectorImageNamed:v41];

    v43 = [v28 elementWithName:v40 image:v42 type:1 action:"compress:"];
    [v36 addObject:v43];
  }
}

void sub_1008EA910(void *a1, double a2, double a3)
{
  v28.receiver = v3;
  v28.super_class = type metadata accessor for CRLUSDZEditor();
  objc_msgSendSuper2(&v28, "addContextualMenuElementsToArray:atPoint:", a1, a2, a3);
  sub_100006370(0, &unk_1019FF3D0);
  v7 = [objc_opt_self() mainBundle];
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  aBlock = 0u;
  v25 = 0u;
  p_aBlock = &aBlock;
  v14 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v26 = sub_1008EAD30;
  v27 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = *"";
  *&v25 = sub_1012E44CC;
  *(&v25 + 1) = &unk_10188CD18;
  v15 = _Block_copy(&aBlock);

  v16 = [a1 indexOfObjectPassingTest:{v15, _swiftEmptyArrayStorage, 0, 0, 0, 0}];
  _Block_release(v15);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
LABEL_9:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_5;
  }

  if (v16 == NSNotFound.getter() || (v17 = [a1 objectAtIndexedSubscript:v16], _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), sub_100006370(0, &qword_1019F6C00), (swift_dynamicCast() & 1) == 0))
  {
    [a1 addObject:v14];
    goto LABEL_7;
  }

  p_aBlock = v23;
  v18 = [v23 children];
  sub_100006370(0, &unk_1019F61A0);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&aBlock = v19;
  v20 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [p_aBlock menuByReplacingChildren:isa];

  [a1 setObject:v22 atIndexedSubscript:v16];
LABEL_7:
}

uint64_t sub_1008EADB4()
{
  v1 = type metadata accessor for UTType();
  v82 = *(v1 - 8);
  __chkstk_darwin(v1);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_101A07810);
  __chkstk_darwin(v3);
  v5 = &v69 - v4;
  v6 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v6 - 8);
  v80 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v69 - v9;
  __chkstk_darwin(v11);
  v13 = &v69 - v12;
  v78 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v78);
  v81 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLAssetData();
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v83 = v0;
  v84 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v0 boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  if (v20 != 1)
  {
    goto LABEL_27;
  }

  v21 = [v83 boardItems];
  v22 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = sub_100BC17C8(v22);

  if (!v23)
  {
    goto LABEL_27;
  }

  type metadata accessor for CRLUSDZItem();
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_27:
    v64 = 0;
    return v64 & 1;
  }

  v25 = result;
  v74 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  if (**(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_34;
  }

  swift_beginAccess();

  v76 = v23;
  v26 = sub_1005B981C(&unk_101A2EF00);
  v27 = v81;
  v73 = v26;
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v27, v84);
  sub_1008F2A74(v27, type metadata accessor for CRLUSDZAssetDataStruct);
  v77 = v25;
  v28 = [v25 store];
  v29 = *&v28[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v29 + 16));
  v30 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v31 = *&v28[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v31)
  {
    v32 = *&v28[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v75 = type metadata accessor for CRLAssetManager();
    v33 = objc_allocWithZone(v75);
    v72 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v70 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v34 = swift_allocObject();
    v71 = v28;
    v35 = swift_slowAlloc();
    *v35 = 0;
    *(v34 + 16) = v35;
    atomic_thread_fence(memory_order_acq_rel);
    *&v33[v70] = v34;
    *&v33[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v36 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v33[v36] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v33[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v37 = v71;
    swift_unknownObjectWeakAssign();
    v85.receiver = v33;
    v85.super_class = v75;
    v38 = objc_msgSendSuper2(&v85, "init");

    v39 = *&v28[v30];
    *&v28[v30] = v38;
    v32 = v38;

    v31 = 0;
  }

  v40 = v82;
  v41 = *(v29 + 16);
  v42 = v31;
  os_unfair_lock_unlock(v41);

  v43 = sub_1011255E0(v84, v77, v32);
  v75 = v43;
  v44 = (v43 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
  v45 = *(v43 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
  v46 = *(v43 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32);
  sub_100020E58((v43 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage), v45);
  (*(v46 + 16))(v45, v46);
  v47 = String._bridgeToObjectiveC()();

  v48 = [v47 crl_pathUTI];

  if (v48)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    UTType.init(_:)();
  }

  else
  {
    (*(v40 + 56))(v13, 1, 1, v1);
  }

  static UTType.realityFile.getter();
  (*(v40 + 56))(v10, 0, 1, v1);
  v49 = *(v3 + 48);
  sub_10000BE14(v13, v5, &unk_1019F8DB0);
  sub_10000BE14(v10, &v5[v49], &unk_1019F8DB0);
  v50 = *(v40 + 48);
  if (v50(v5, 1, v1) == 1)
  {
    sub_10000CAAC(v10, &unk_1019F8DB0);
    sub_10000CAAC(v13, &unk_1019F8DB0);
    if (v50(&v5[v49], 1, v1) == 1)
    {
      sub_10000CAAC(v5, &unk_1019F8DB0);
LABEL_25:
      v63 = v76;

LABEL_26:
      sub_1008F2A74(v84, type metadata accessor for CRLAssetData);
      goto LABEL_27;
    }
  }

  else
  {
    v51 = v80;
    sub_10000BE14(v5, v80, &unk_1019F8DB0);
    if (v50(&v5[v49], 1, v1) != 1)
    {
      v59 = v82;
      v60 = &v5[v49];
      v61 = v79;
      (*(v82 + 32))(v79, v60, v1);
      sub_1008F2AD4(&qword_101A07820, &type metadata accessor for UTType);
      LODWORD(v72) = dispatch thunk of static Equatable.== infix(_:_:)();
      v62 = *(v59 + 8);
      v62(v61, v1);
      sub_10000CAAC(v10, &unk_1019F8DB0);
      sub_10000CAAC(v13, &unk_1019F8DB0);
      v62(v51, v1);
      sub_10000CAAC(v5, &unk_1019F8DB0);
      v52 = v77;
      if (v72)
      {
        goto LABEL_25;
      }

      goto LABEL_21;
    }

    sub_10000CAAC(v10, &unk_1019F8DB0);
    sub_10000CAAC(v13, &unk_1019F8DB0);
    (*(v82 + 8))(v51, v1);
  }

  sub_10000CAAC(v5, &unk_101A07810);
  v52 = v77;
LABEL_21:
  v53 = v44[3];
  v54 = v44[4];
  sub_100020E58(v44, v53);
  if ((*(v54 + 64))(v53, v54))
  {
    goto LABEL_25;
  }

  v55 = v74;
  v56 = *(**&v52[v74] + 368);

  LOBYTE(v56) = v56(v57);
  v58 = v76;

  if (v56)
  {
    sub_1008F2A74(v84, type metadata accessor for CRLAssetData);

    goto LABEL_27;
  }

  if (!sub_1008EBAD4())
  {

    goto LABEL_26;
  }

  result = swift_unknownObjectRelease();
  if (**&v52[v55] == &off_101A2E658)
  {
    swift_beginAccess();

    v65 = v81;
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v66 = v65 + *(v78 + 32);
    v67 = *v66;
    v68 = *(v66 + 8);
    sub_1008F2A74(v65, type metadata accessor for CRLUSDZAssetDataStruct);

    sub_1008F2A74(v84, type metadata accessor for CRLAssetData);
    v64 = v68 | (v67 == 0);
    return v64 & 1;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1008EB8B0(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return sub_1008EADB4() & 1;
  }

  sub_10000BE14(a2, v16, &unk_1019F4D00);
  v6 = v17;
  if (v17)
  {
    v7 = sub_100020E58(v16, v17);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100005070(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for CRLUSDZEditor();
  v15.receiver = v2;
  v15.super_class = v13;
  v14 = objc_msgSendSuper2(&v15, "canPerformEditorAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  return v14;
}

id sub_1008EBAD4()
{
  v1 = (v0 + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___asyncRenderer);
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform13CRLUSDZEditor____lazy_storage___asyncRenderer);
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

uint64_t sub_1008EBBC4()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = v4;
  v9 = sub_10064191C(0, 0, v3, &unk_101486C00, v8);
  swift_beginAccess();
  *(v4 + 16) = v9;
}

uint64_t sub_1008EBD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[135] = a5;
  v5[134] = a4;
  v5[136] = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  v5[137] = swift_task_alloc();
  v5[138] = swift_task_alloc();
  type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[141] = v6;
  v5[142] = *(v6 - 8);
  v5[143] = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750);
  v5[144] = swift_task_alloc();
  type metadata accessor for CRLUSDZAssetDataStruct(0);
  v5[145] = swift_task_alloc();
  type metadata accessor for CRLAssetData();
  v5[146] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = swift_task_alloc();
  v5[150] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[151] = v7;
  v5[152] = *(v7 - 8);
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();
  v5[155] = swift_task_alloc();
  v5[156] = swift_task_alloc();
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v5[160] = type metadata accessor for MainActor();
  v5[161] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[162] = v8;
  v5[163] = v9;

  return _swift_task_switch(sub_1008EC080, v8, v9);
}

uint64_t sub_1008EC080()
{
  v1 = [*(v0 + 1072) boardItems];
  type metadata accessor for CRLBoardItem(0);
  sub_1008F2AD4(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  v4 = [*(v0 + 1072) boardItems];
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = sub_100BC17C8(v5);
  *(v0 + 1312) = v6;

  if (!v6)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLUSDZItem();
  v7 = swift_dynamicCastClass();
  *(v0 + 1320) = v7;
  if (!v7)
  {

LABEL_10:

LABEL_11:
    sub_1008F276C();
    swift_allocError();
    swift_willThrow();
    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlThreeDimensionalObjects;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    v21 = v20;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v22, "CRLUSDZEditor.compress: Unable to perform compression: %{public}@", 65, 2, inited);

    swift_setDeallocating();
    sub_100005070(inited + 32);

    v23 = *(v0 + 8);

    return v23();
  }

  v8 = v7;
  if (**(v7 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
  }

  v9 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  swift_beginAccess();

  v11 = v6;
  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_1008786E0(v10, v9);
  sub_1008F2A74(v10, type metadata accessor for CRLUSDZAssetDataStruct);
  v12 = *(v8 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);

  v13 = *&v12[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v15 = *&v12[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v15)
  {
    v16 = *&v12[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v25 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v26 = v12;
    v27 = sub_10001F1A0(v26);

    v28 = *&v12[v14];
    *&v12[v14] = v27;
    v16 = v27;

    v15 = 0;
  }

  v29 = *(v0 + 1216);
  v30 = *(v0 + 1208);
  v31 = *(v0 + 1200);
  v32 = *(v0 + 1168);
  v33 = *(v13 + 16);
  v34 = v15;
  os_unfair_lock_unlock(v33);
  sub_10108CAF4(v32, 0, 3, 0, 0, v31);

  sub_1008F2A74(v32, type metadata accessor for CRLAssetData);
  v35 = *(v29 + 48);
  *(v0 + 1328) = v35;
  *(v0 + 1336) = (v29 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v35(v31, 1, v30) == 1)
  {
    v36 = *(v0 + 1200);

    sub_10000CAAC(v36, &unk_1019F33C0);
    goto LABEL_11;
  }

  v37 = *(v0 + 1272);
  v38 = *(v0 + 1216);
  v39 = *(v0 + 1208);
  v40 = *(v0 + 1200);
  v41 = *(v0 + 1072);
  v42 = *(v38 + 32);
  *(v0 + 1344) = v42;
  *(v0 + 1352) = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v42(v37, v40, v39);
  v43 = [v41 interactiveCanvasController];
  *(v0 + 1360) = v43;
  if (!v43)
  {
    (*(*(v0 + 1216) + 8))(*(v0 + 1272), *(v0 + 1208));
LABEL_32:

    goto LABEL_11;
  }

  v44 = v43;
  v45 = [v43 commandController];
  *(v0 + 1368) = v45;
  if (!v45)
  {
    (*(*(v0 + 1216) + 8))(*(v0 + 1272), *(v0 + 1208));

    goto LABEL_32;
  }

  v46 = v45;
  v47 = [v44 layerHost];
  *(v0 + 1376) = v47;
  if (!v47)
  {
    (*(*(v0 + 1216) + 8))(*(v0 + 1272), *(v0 + 1208));

    goto LABEL_32;
  }

  v48 = v47;
  v49 = sub_1008EBAD4();
  *(v0 + 1384) = v49;
  if (!v49)
  {
    (*(*(v0 + 1216) + 8))(*(v0 + 1272), *(v0 + 1208));

    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  v50 = [objc_allocWithZone(CRLFakeProgress) initWithMaxValue:1 numberOfStages:1.0];
  *(v0 + 1392) = v50;
  v51 = swift_allocObject();
  *(v0 + 1400) = v51;
  *(v51 + 16) = 0;
  v52 = objc_opt_self();
  *(v0 + 1408) = v52;
  v53 = [v52 mainBundle];
  v54 = String._bridgeToObjectiveC()();
  v55 = String._bridgeToObjectiveC()();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  if (!v56)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = String._bridgeToObjectiveC()();
  }

  *(v0 + 1416) = v56;
  v57 = *(v0 + 1080);
  v58 = swift_allocObject();
  *(v0 + 1424) = v58;
  v58[2] = v50;
  v58[3] = v57;
  v58[4] = v51;
  v58[5] = v48;
  v59 = v50;

  swift_unknownObjectRetain();
  v60 = swift_task_alloc();
  *(v0 + 1432) = v60;
  *v60 = v0;
  v60[1] = sub_1008EC9C0;

  return sub_1008F1124();
}

uint64_t sub_1008EC9C0(char a1)
{
  v2 = *v1;
  *(*v1 + 1544) = a1;

  v3 = *(v2 + 1304);
  v4 = *(v2 + 1296);

  return _swift_task_switch(sub_1008ECB1C, v4, v3);
}

id sub_1008ECB1C()
{
  v162 = v0;
  if (*(v0 + 1544) != 1)
  {

    if (qword_1019F21E0 != -1)
    {
      swift_once();
    }

    v72 = v0[174];
    v73 = v160[171];
    v74 = v160[170];
    v75 = v160[164];
    v153 = v160[159];
    v76 = v160[152];
    v77 = v160[151];
    v78 = static OS_os_log.crlThreeDimensionalObjects;
    v79 = static os_log_type_t.info.getter();
    sub_100005404(v78, &_mh_execute_header, v79, "CRLUSDZEditor.compress: User cancelled compression before it began", 66, 2, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v76 + 8))(v153, v77);
    goto LABEL_24;
  }

  v1 = [v0[170] repForInfo:v0[165]];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for CRLUSDZRep(0);
    if (swift_dynamicCastClass())
    {
      sub_100D0450C(1);
    }
  }

  v3 = v0[178];
  v4 = v0[177];
  v5 = v0[175];
  v6 = v0[174];
  v7 = v0[172];
  v0[109] = sub_1008F2880;
  v0[110] = v3;
  v0[105] = _NSConcreteStackBlock;
  v0[106] = *"";
  v0[107] = sub_100007638;
  v0[108] = &unk_10188CBB0;
  v8 = _Block_copy(v0 + 105);
  v9 = v6;

  v10 = [v7 beginModalOperationWithPresentedLocalizedMessage:v4 progress:v9 cancelHandler:v8];
  _Block_release(v8);

  swift_beginAccess();
  *(v5 + 16) = v10;
  swift_unknownObjectRelease();
  if (!v10)
  {
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v161[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v161);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 333;
    v0 = v160;
    v24 = v161[0];
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:333 isFatal:0 format:v33 args:v30];
  }

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v34 = v0[174];
  v35 = static OS_os_log.crlThreeDimensionalObjects;
  v0[180] = static OS_os_log.crlThreeDimensionalObjects;
  v36 = static os_log_type_t.info.getter();
  sub_100005404(v35, &_mh_execute_header, v36, "CRLUSDZEditor.compress: Modal operation began", 45, 2, _swiftEmptyArrayStorage);
  [v34 start];
  v37 = objc_opt_self();
  v0[181] = v37;
  v156 = v37;
  v38 = [v37 defaultManager];
  result = sub_100017A38();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = [v38 containerURLForSecurityApplicationGroupIdentifier:result];

  if (!v41)
  {

    v157 = objc_opt_self();
    v80 = [v157 _atomicIncrementAssertCount];
    v161[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v161);
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v87 = v0[172];
    v140 = v0[170];
    v141 = v0[171];
    v147 = v0[164];
    v148 = v0[174];
    v138 = v0[175];
    v154 = v0[159];
    v145 = v0[152];
    v150 = v0[151];
    v137 = v0[144];
    v88 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v89 = swift_initStackObject();
    *(v89 + 16) = xmmword_10146CA70;
    *(v89 + 56) = &type metadata for Int32;
    *(v89 + 64) = &protocol witness table for Int32;
    *(v89 + 32) = v80;
    v90 = sub_100006370(0, &qword_1019F4D30);
    *(v89 + 96) = v90;
    v91 = sub_1005CF04C();
    *(v89 + 104) = v91;
    *(v89 + 72) = v81;
    *(v89 + 136) = &type metadata for String;
    v92 = sub_1000053B0();
    *(v89 + 112) = v84;
    *(v89 + 120) = v86;
    *(v89 + 176) = &type metadata for UInt;
    *(v89 + 184) = &protocol witness table for UInt;
    *(v89 + 144) = v92;
    *(v89 + 152) = 350;
    v93 = v161[0];
    *(v89 + 216) = v90;
    *(v89 + 224) = v91;
    *(v89 + 192) = v93;
    v94 = v81;
    v95 = v93;
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v96, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v89);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v97 = static os_log_type_t.error.getter();
    sub_100005404(v88, &_mh_execute_header, v97, "Unable to get containerURL for CRLAppGroupIdentifier()", 54, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v98 = swift_allocObject();
    v98[2] = 8;
    v98[3] = 0;
    v98[4] = 0;
    v98[5] = 0;
    v99 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v101 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    [v157 handleFailureInFunction:v100 file:v101 lineNumber:350 isFatal:0 format:v102 args:v99];

    v103 = type metadata accessor for TaskPriority();
    (*(*(v103 - 8) + 56))(v137, 1, 1, v103);

    swift_unknownObjectRetain();
    v104 = static MainActor.shared.getter();
    v105 = swift_allocObject();
    v105[2] = v104;
    v105[3] = &protocol witness table for MainActor;
    v105[4] = v138;
    v105[5] = v87;
    sub_10064191C(0, 0, v137, &unk_101486C18, v105);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v145 + 8))(v154, v150);
LABEL_24:

    goto LABEL_28;
  }

  v42 = v160[156];
  v43 = v160[152];
  v149 = v35;
  v152 = v160[151];
  v44 = v160[143];
  v45 = v160[142];
  v46 = v160[141];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init()();
  UUID.uuidString.getter();
  (*(v45 + 8))(v44, v46);
  URL.appendingPathComponent(_:)();

  URL.pathExtension.getter();
  URL.appendingPathExtension(_:)();

  v47 = *(v43 + 8);
  v160[182] = v47;
  v160[183] = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v42, v152);
  v48 = [v156 defaultManager];
  URL._bridgeToObjectiveC()(v49);
  v51 = v50;
  URL._bridgeToObjectiveC()(v52);
  v54 = v53;
  v160[129] = 0;
  v55 = [v48 copyItemAtURL:v51 toURL:v53 error:v160 + 129];

  v56 = v160[129];
  if (v55)
  {
    v146 = v47;
    v160[184] = sub_1005B981C(&qword_1019F54E0);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_10146C6B0;
    v58 = v56;
    v59 = URL.path.getter();
    v61 = v60;
    *(v57 + 56) = &type metadata for String;
    v62 = sub_1000053B0();
    v160[185] = v62;
    *(v57 + 64) = v62;
    *(v57 + 32) = v59;
    *(v57 + 40) = v61;
    v63 = static os_log_type_t.info.getter();
    sub_100005404(v149, &_mh_execute_header, v63, "CRLUSDZEditor.compress: Created temporary source USDZ file: %{public}@", 70, 2, v57);
    swift_setDeallocating();
    sub_100005070(v57 + 32);
    if (qword_1019F19A8 != -1)
    {
      swift_once();
    }

    v64 = v160[157];
    v65 = v160[155];
    v66 = v160[154];
    v67 = v160[152];
    v68 = v160[151];
    v69 = v160[149];
    v70 = v160[137];
    v160[186] = qword_101AD6CA0;
    v160[187] = CRLAnalyticsOSSignpostManager.beginSignpostIntervalWithReturnedState(for:)(15, 1);
    v71 = *(v67 + 16);
    v71(v65, v64, v68);
    v71(v66, v65, v68);
    v71(v70, v66, v68);
    v71(v69, v66, v68);
    (*(v67 + 56))(v69, 0, 1, v68);
    v124 = URL.bookmarkData(options:includingResourceValuesForKeys:relativeTo:)();
    v126 = v125;
    v155 = v160[155];
    v127 = v160[154];
    v128 = v160[151];
    v159 = v160[140];
    v129 = v160[139];
    v130 = v160[138];
    v131 = v160[137];
    v132 = v160[136];
    sub_10000CAAC(v160[149], &unk_1019F33C0);
    v146(v127, v128);
    v146(v155, v128);
    v133 = (v131 + *(v132 + 20));
    *v133 = v124;
    v133[1] = v126;
    sub_1008F2A0C(v131, v130, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v130, v129, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_1008F2A0C(v129, v159, type metadata accessor for CRLUSDRendering.CompressionRequest);
    v134 = swift_task_alloc();
    v160[188] = v134;
    *v134 = v160;
    v134[1] = sub_1008EE298;
    v135 = v160[148];
    v136 = v160[140];

    return sub_100BF94A4(v135, v136);
  }

  v106 = v160[175];
  v107 = v160[174];
  v144 = v160[171];
  v142 = v160[172];
  v143 = v160[170];
  v158 = v160[164];
  v151 = v160[159];
  v108 = v160[158];
  v109 = v160[157];
  v110 = v160[151];
  v139 = v160[144];
  v111 = v56;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  v112 = v109;
  v113 = v106;
  v47(v112, v110);
  v47(v108, v110);
  v114 = type metadata accessor for TaskPriority();
  (*(*(v114 - 8) + 56))(v139, 1, 1, v114);

  swift_unknownObjectRetain();
  v115 = static MainActor.shared.getter();
  v116 = swift_allocObject();
  v116[2] = v115;
  v116[3] = &protocol witness table for MainActor;
  v116[4] = v113;
  v116[5] = v142;
  sub_10064191C(0, 0, v139, &unk_101486C20, v116);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v47(v151, v110);

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v117 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v119 = Error.localizedDescription.getter();
  v121 = v120;
  *(v118 + 56) = &type metadata for String;
  *(v118 + 64) = sub_1000053B0();
  *(v118 + 32) = v119;
  *(v118 + 40) = v121;
  v122 = static os_log_type_t.error.getter();
  sub_100005404(v117, &_mh_execute_header, v122, "CRLUSDZEditor.compress: Unable to perform compression: %{public}@", 65, 2, v118);

  swift_setDeallocating();
  sub_100005070(v118 + 32);
LABEL_28:

  v123 = v160[1];

  return v123();
}

uint64_t sub_1008EE298()
{
  v2 = *v1;
  *(*v1 + 1512) = v0;

  if (v0)
  {

    v3 = *(v2 + 1304);
    v4 = *(v2 + 1296);
    v5 = sub_1008EF14C;
  }

  else
  {
    v3 = *(v2 + 1304);
    v4 = *(v2 + 1296);
    v5 = sub_1008EE3F0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008EE3F0()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1208);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1176);
  CRLAnalyticsOSSignpostManager.endSignpostInterval(for:state:)(15, 1, *(v0 + 1496));
  sub_10000BE14(v3, v4, &unk_1019F33C0);
  if (v1(v4, 1, v2) == 1)
  {
    v79 = *(v0 + 1480);
    v86 = *(v0 + 1456);
    v5 = *(v0 + 1448);
    v6 = *(v0 + 1440);
    v101 = *(v0 + 1400);
    v95 = *(v0 + 1392);
    v93 = *(v0 + 1368);
    v89 = *(v0 + 1376);
    v91 = *(v0 + 1360);
    v99 = *(v0 + 1312);
    v97 = *(v0 + 1272);
    v7 = *(v0 + 1256);
    v81 = *(v0 + 1208);
    v83 = *(v0 + 1264);
    v8 = *(v0 + 1184);
    v9 = *(v0 + 1176);
    v84 = *(v0 + 1152);
    v10 = *(v0 + 1120);

    sub_10000CAAC(v9, &unk_1019F33C0);
    v11 = static os_log_type_t.error.getter();
    sub_100005404(v6, &_mh_execute_header, v11, "CRLUSDZEditor.compress: Model compression returned empty URL", 60, 2, _swiftEmptyArrayStorage);

    sub_10000CAAC(v8, &unk_1019F33C0);
    sub_1008F2A74(v10, type metadata accessor for CRLUSDRendering.CompressionRequest);
    v12 = [v5 defaultManager];
    sub_101089214();

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = URL.path.getter();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v79;
    *(inited + 32) = v14;
    *(inited + 40) = v15;
    v16 = static os_log_type_t.info.getter();
    sub_100005404(v6, &_mh_execute_header, v16, "CRLUSDZEditor.compress: Deleted temporary source USDZ file: %{public}@", 70, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v86(v7, v81);
    v86(v83, v81);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v84, 1, 1, v17);

    swift_unknownObjectRetain();
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v101;
    v19[5] = v89;
    sub_10064191C(0, 0, v84, &unk_101486C38, v19);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v86(v97, v81);
LABEL_5:

    v35 = *(v0 + 8);

    return v35();
  }

  (*(v0 + 1344))(*(v0 + 1224), *(v0 + 1176), *(v0 + 1208));
  if (static Task<>.isCancelled.getter())
  {
    v85 = *(v0 + 1480);
    v20 = *(v0 + 1456);
    v80 = *(v0 + 1448);
    v21 = *(v0 + 1440);
    v102 = *(v0 + 1400);
    v96 = *(v0 + 1392);
    v94 = *(v0 + 1368);
    v90 = *(v0 + 1376);
    v92 = *(v0 + 1360);
    v100 = *(v0 + 1312);
    v98 = *(v0 + 1272);
    v87 = *(v0 + 1264);
    v78 = *(v0 + 1256);
    v22 = *(v0 + 1224);
    v23 = *(v0 + 1208);
    v82 = v23;
    v24 = *(v0 + 1184);
    v88 = *(v0 + 1152);
    v25 = *(v0 + 1120);

    v26 = static os_log_type_t.info.getter();
    sub_100005404(v21, &_mh_execute_header, v26, "CRLUSDZEditor.compress: Model compression task cancelled", 56, 2, _swiftEmptyArrayStorage);

    v20(v22, v23);
    sub_10000CAAC(v24, &unk_1019F33C0);
    sub_1008F2A74(v25, type metadata accessor for CRLUSDRendering.CompressionRequest);
    v27 = [v80 defaultManager];
    sub_101089214();

    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10146C6B0;
    v29 = URL.path.getter();
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v85;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    v31 = static os_log_type_t.info.getter();
    sub_100005404(v21, &_mh_execute_header, v31, "CRLUSDZEditor.compress: Deleted temporary source USDZ file: %{public}@", 70, 2, v28);
    swift_setDeallocating();
    sub_100005070(v28 + 32);
    swift_deallocClassInstance();
    v20(v78, v82);
    v20(v87, v82);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v88, 1, 1, v32);

    swift_unknownObjectRetain();
    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = &protocol witness table for MainActor;
    v34[4] = v102;
    v34[5] = v90;
    sub_10064191C(0, 0, v88, &unk_101486C50, v34);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v20(v98, v82);
    goto LABEL_5;
  }

  v37 = *(v0 + 1440);
  v38 = *(v0 + 1392);
  v39 = *(v0 + 1360);
  v40 = *(v0 + 1320);
  [v38 stop];
  [v38 advanceToStage:1];
  v41 = static os_log_type_t.info.getter();
  sub_100005404(v37, &_mh_execute_header, v41, "CRLUSDZEditor.compress: Model compression completed", 51, 2, _swiftEmptyArrayStorage);
  v42 = [v39 repForInfo:v40];
  if (v42)
  {
    v43 = v42;
    type metadata accessor for CRLUSDZRep(0);
    if (swift_dynamicCastClass())
    {
      sub_100F97B24(0);
    }
  }

  v44 = [*(v0 + 1448) defaultManager];
  URL.path.getter();
  v45 = String._bridgeToObjectiveC()();

  *(v0 + 1040) = 0;
  v46 = [v44 attributesOfItemAtPath:v45 error:v0 + 1040];

  v47 = *(v0 + 1040);
  if (!v46)
  {
    v66 = v47;
    goto LABEL_24;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1008F2AD4(&qword_1019F3C88, type metadata accessor for FileAttributeKey);
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v47;

  if (!*(v48 + 16) || (v50 = sub_10006E4C8(NSFileSize), (v51 & 1) == 0))
  {
LABEL_22:

    goto LABEL_25;
  }

  sub_100064288(*(v48 + 56) + 32 * v50, v0 + 888);

  if (swift_dynamicCast())
  {
    v103 = *(v0 + 1048);
    v52 = [*(v0 + 1448) defaultManager];
    URL.path.getter();
    v53 = String._bridgeToObjectiveC()();

    *(v0 + 1056) = 0;
    v54 = [v52 attributesOfItemAtPath:v53 error:v0 + 1056];

    v55 = *(v0 + 1056);
    if (v54)
    {
      v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v55;

      if (*(v56 + 16))
      {
        v58 = sub_10006E4C8(NSFileSize);
        if (v59)
        {
          sub_100064288(*(v56 + 56) + 32 * v58, v0 + 920);

          if (swift_dynamicCast())
          {
            v60 = *(v0 + 1064);
            v61 = swift_allocObject();
            *(v61 + 16) = xmmword_10146C4D0;
            *(v61 + 32) = v103;
            *(v61 + 56) = &type metadata for Int64;
            *(v61 + 64) = &protocol witness table for Int64;
            *(v61 + 96) = &type metadata for Int64;
            *(v61 + 104) = &protocol witness table for Int64;
            *(v61 + 72) = v60;
            v62 = v103 - v60;
            if (__OFSUB__(v103, v60))
            {
              __break(1u);
            }

            v63 = *(v0 + 1440);
            *(v61 + 136) = &type metadata for Int64;
            *(v61 + 144) = &protocol witness table for Int64;
            *(v61 + 112) = v62;
            v64 = v61;
            v65 = static os_log_type_t.info.getter();
            sub_100005404(v63, &_mh_execute_header, v65, "CRLUSDZEditor.compress: Compressed from %d to %d bytes, reduced: %d", 67, 2, v64);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            swift_deallocClassInstance();
          }

          goto LABEL_25;
        }
      }

      goto LABEL_22;
    }

    v66 = v55;
LABEL_24:
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

LABEL_25:
  v67 = [*(v0 + 1408) mainBundle];
  v68 = String._bridgeToObjectiveC()();
  v69 = String._bridgeToObjectiveC()();
  v70 = String._bridgeToObjectiveC()();
  v71 = [v67 localizedStringForKey:v68 value:v69 table:v70];

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  *(v0 + 1520) = v74;
  v75 = swift_task_alloc();
  *(v0 + 1528) = v75;
  *v75 = v0;
  v75[1] = sub_1008EF648;
  v76 = *(v0 + 1320);
  v77 = *(v0 + 1224);

  return sub_1008F0330(v76, v77, v72, v74);
}

uint64_t sub_1008EF14C()
{
  v1 = v0[185];
  v25 = v0[182];
  v2 = v0[181];
  v3 = v0[180];
  v27 = v0[175];
  v32 = v0[174];
  v4 = v0[172];
  v29 = v0[171];
  v28 = v0[170];
  v31 = v0[164];
  v30 = v0[159];
  v24 = v0[158];
  v5 = v0[157];
  v6 = v0[151];
  v26 = v0[144];
  v7 = v0[140];

  sub_1008F2A74(v7, type metadata accessor for CRLUSDRendering.CompressionRequest);
  v8 = [v2 defaultManager];
  sub_101089214();

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = URL.path.getter();
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v12, "CRLUSDZEditor.compress: Deleted temporary source USDZ file: %{public}@", 70, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v25(v5, v6);
  v25(v24, v6);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v26, 1, 1, v13);

  swift_unknownObjectRetain();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v27;
  v15[5] = v4;
  sub_10064191C(0, 0, v26, &unk_101486C30, v15);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v25(v30, v6);

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v18 = Error.localizedDescription.getter();
  v20 = v19;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_1000053B0();
  *(v17 + 32) = v18;
  *(v17 + 40) = v20;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v21, "CRLUSDZEditor.compress: Unable to perform compression: %{public}@", 65, 2, v17);

  swift_setDeallocating();
  sub_100005070(v17 + 32);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1008EF648()
{
  v2 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {

    v3 = *(v2 + 1304);
    v4 = *(v2 + 1296);
    v5 = sub_1008EFC74;
  }

  else
  {

    v3 = *(v2 + 1304);
    v4 = *(v2 + 1296);
    v5 = sub_1008EF7CC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008EF7CC()
{
  v21 = v0[185];
  v1 = v0[182];
  v20 = v0[181];
  v2 = v0[180];
  v24 = v0[175];
  v3 = v0[174];
  v27 = v0[171];
  v25 = v0[172];
  v26 = v0[170];
  v29 = v0[164];
  v28 = v0[159];
  v4 = v0[157];
  v5 = v0[153];
  v6 = v0[151];
  v7 = v0[148];
  v22 = v0[158];
  v23 = v0[144];
  v8 = v0[140];

  [v3 maxValue];
  [v3 setValue:?];

  v9 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "CRLUSDZEditor.compress: Completed", 33, 2, _swiftEmptyArrayStorage);

  v1(v5, v6);
  sub_10000CAAC(v7, &unk_1019F33C0);
  sub_1008F2A74(v8, type metadata accessor for CRLUSDRendering.CompressionRequest);
  v10 = [v20 defaultManager];
  sub_101089214();

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146C6B0;
  v12 = URL.path.getter();
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = v21;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v14, "CRLUSDZEditor.compress: Deleted temporary source USDZ file: %{public}@", 70, 2, v11);
  swift_setDeallocating();
  sub_100005070(v11 + 32);
  swift_deallocClassInstance();
  v1(v4, v6);
  v1(v22, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);

  swift_unknownObjectRetain();
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v24;
  v17[5] = v25;
  sub_10064191C(0, 0, v23, &unk_101486C48, v17);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1(v28, v6);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1008EFC74()
{
  v1 = v0[182];
  v2 = v0[181];
  v24 = v0[185];
  v25 = v0[180];
  v28 = v0[175];
  v34 = v0[174];
  v29 = v0[172];
  v31 = v0[171];
  v30 = v0[170];
  v33 = v0[164];
  v32 = v0[159];
  v3 = v0[157];
  v4 = v0[153];
  v5 = v0[151];
  v6 = v0[148];
  v26 = v0[158];
  v27 = v0[144];
  v7 = v0[140];

  v1(v4, v5);
  sub_10000CAAC(v6, &unk_1019F33C0);
  sub_1008F2A74(v7, type metadata accessor for CRLUSDRendering.CompressionRequest);
  v8 = [v2 defaultManager];
  sub_101089214();

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v10 = URL.path.getter();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = v24;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v25, &_mh_execute_header, v12, "CRLUSDZEditor.compress: Deleted temporary source USDZ file: %{public}@", 70, 2, v9);
  swift_setDeallocating();
  sub_100005070(v9 + 32);
  swift_deallocClassInstance();
  v1(v3, v5);
  v1(v26, v5);
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v27, 1, 1, v13);

  swift_unknownObjectRetain();
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v28;
  v15[5] = v29;
  sub_10064191C(0, 0, v27, &unk_101486C40, v15);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1(v32, v5);

  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlThreeDimensionalObjects;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v18 = Error.localizedDescription.getter();
  v20 = v19;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v18;
  *(inited + 40) = v20;
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v21, "CRLUSDZEditor.compress: Unable to perform compression: %{public}@", 65, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v22 = v0[1];

  return v22();
}

id sub_1008F01B8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a1 value];
  if (v9 < 1.0)
  {
    [a1 stop];
    swift_beginAccess();
    if (*(a2 + 16))
    {

      Task.cancel()();
    }

    swift_beginAccess();
    if (*(a3 + 16))
    {
      [a4 endModalOperationWithToken:?];
    }

    swift_beginAccess();
    *(a3 + 16) = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1008F0330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = type metadata accessor for UUID();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  sub_1005B981C(&unk_101A1B880);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = type metadata accessor for CRLAssetData();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[33] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[34] = v9;
  v5[35] = v8;

  return _swift_task_switch(sub_1008F0550, v9, v8);
}

uint64_t sub_1008F0550()
{
  v1 = [*(v0 + 136) interactiveCanvasController];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 commandController];
    *(v0 + 296) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v2 editingCoordinator];
      *(v0 + 304) = v5;
      if (v5)
      {
        v6 = v5;
        v7 = [*(v0 + 104) parentContainerItem];
        if (v7)
        {
          v8 = *(v0 + 120);
          v2 = *(v0 + 128);
          v9 = *(v0 + 104);

          sub_10088E3FC(0);

          sub_10088DE20(v8, v2);
          sub_10088F490();
          v4 = *&v6[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];
          v10 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
          *(v0 + 312) = v4;
          *(v0 + 320) = v10;
          if (**(v9 + v10) == &off_101A2E658)
          {
            v11 = *(v0 + 256);
            v13 = *(v0 + 224);
            v12 = *(v0 + 232);
            v15 = *(v0 + 192);
            v14 = *(v0 + 200);
            v29 = *(v0 + 112);
            v30 = *(v0 + 184);
            v16 = *&v4[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
            swift_beginAccess();
            v17 = v4;
            v18 = v16;

            *(v0 + 328) = sub_1005B981C(&unk_101A2EF00);
            CRRegister.wrappedValue.getter();
            swift_endAccess();

            sub_1008786E0(v13, v11);
            sub_1008F2A74(v13, type metadata accessor for CRLUSDZAssetDataStruct);
            v19 = (v11 + *(v12 + 20));
            v20 = *v19;
            v21 = v19[1];

            sub_1008F2A74(v11, type metadata accessor for CRLAssetData);
            (*(v15 + 16))(v14, v29, v30);
            v22 = objc_allocWithZone(type metadata accessor for CRLPreinsertionAssetWrapper());
            *(v0 + 336) = sub_100BA1E7C(v14, v20, v21, v18, v22);
            v23 = swift_task_alloc();
            *(v0 + 344) = v23;
            *v23 = v0;
            v23[1] = sub_1008F0A00;
            v24 = *(v0 + 248);

            return sub_100CF18DC(v24);
          }

          __break(1u);
        }

        else
        {

          if (qword_1019F21E0 == -1)
          {
LABEL_17:
            v27 = static OS_os_log.crlThreeDimensionalObjects;
            v28 = static os_log_type_t.info.getter();
            sub_100005404(v27, &_mh_execute_header, v28, "replaceAssetData: item.parentContainerItem is nil, skipping update", 66, 2, _swiftEmptyArrayStorage);

            v26 = *(v0 + 8);
            goto LABEL_13;
          }
        }

        swift_once();
        goto LABEL_17;
      }
    }

    else
    {
      v4 = v2;
    }
  }

  sub_1008F276C();
  swift_allocError();
  swift_willThrow();

  v26 = *(v0 + 8);
LABEL_13:

  return v26();
}

uint64_t sub_1008F0A00()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_1008F1020;
  }

  else
  {
    v5 = sub_1008F0B3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008F0B3C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 256);
  v3 = *(v0 + 248);
  v4 = *(v0 + 104);

  result = sub_1008786E0(v3, v2);
  if (**(v4 + v1) != &off_101A2E658)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 224);
  v8 = *(v0 + 208);
  v9 = *(v0 + 176);
  v10 = *(v0 + 104);
  swift_beginAccess();

  CRRegister.wrappedValue.getter();
  swift_endAccess();

  sub_10000BE14(v7 + *(v8 + 20), v9, &unk_101A1B880);
  result = sub_1008F2A74(v7, type metadata accessor for CRLUSDZAssetDataStruct);
  if (**(v10 + v6) != &off_101A2E658)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v25 = *(v0 + 320);
  v34 = *(v0 + 336);
  v35 = *(v0 + 312);
  v37 = *(v0 + 304);
  v32 = *(v0 + 296);
  v33 = *(v0 + 288);
  v38 = *(v0 + 256);
  v36 = *(v0 + 248);
  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 168);
  v26 = *(v0 + 240);
  v27 = *(v0 + 176);
  v15 = *(v0 + 152);
  v14 = *(v0 + 160);
  v31 = *(v0 + 144);
  v16 = *(v0 + 104);
  swift_beginAccess();

  CRRegister.wrappedValue.getter();
  swift_endAccess();

  v17 = v11 + *(v12 + 28);
  v28 = *(v17 + 8);
  v29 = *v17;
  v30 = *(v17 + 16);
  v18 = sub_1008F2A74(v11, type metadata accessor for CRLUSDZAssetDataStruct);
  (*(**(v16 + v25) + 264))(v18);
  sub_1008786E0(v38, v26);
  sub_10000BE14(v27, v13, &unk_101A1B880);
  v19 = type metadata accessor for CRLCommandSetUSDZAsset();
  v20 = objc_allocWithZone(v19);
  (*(v15 + 16))(&v20[OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_id], v14, v31);
  sub_1008786E0(v26, &v20[OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_assetData]);
  sub_10000BE14(v13, &v20[OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_posterAssetData], &unk_101A1B880);
  v21 = &v20[OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_boundingRectData];
  *v21 = v29;
  *(v21 + 1) = v28;
  v21[16] = v30;
  v22 = &v20[OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_compression];
  *v22 = 1;
  v22[8] = 0;
  *(v0 + 88) = v20;
  *(v0 + 96) = v19;
  v23 = objc_msgSendSuper2((v0 + 88), "init");
  sub_10000CAAC(v13, &unk_101A1B880);
  sub_1008F2A74(v26, type metadata accessor for CRLAssetData);
  (*(v15 + 8))(v14, v31);
  sub_10000CAAC(v27, &unk_101A1B880);
  sub_1008F2A74(v38, type metadata accessor for CRLAssetData);
  sub_100888700(v23, 0, 0, 4, 0);

  sub_10088E600(0);
  sub_1008F2A74(v36, type metadata accessor for CRLAssetData);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1008F1020()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1008F1124()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_1008F11C0, v3, v2);
}

uint64_t sub_1008F11C0()
{
  v1 = [*(v0 + 16) interactiveCanvasController];
  if (v1 && (v2 = v1, v3 = [v1 layerHost], *(v0 + 56) = v3, v2, v3))
  {
    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v0 + 64) = v11;
    v12 = [v4 mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    *(v0 + 72) = v18;
    v19 = static MainActor.shared.getter();
    *(v0 + 80) = v19;
    v20 = swift_task_alloc();
    *(v0 + 88) = v20;
    v20[2] = v9;
    v20[3] = v11;
    v20[4] = v16;
    v20[5] = v18;
    v20[6] = v3;
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_1008F14B8;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 104, v19, &protocol witness table for MainActor, 0xD000000000000019, 0x80000001015755E0, sub_1008F23CC, v20, &type metadata for Bool);
  }

  else
  {

    v22 = *(v0 + 8);

    return v22(0);
  }
}

uint64_t sub_1008F14B8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_1008F1658, v3, v2);
}

uint64_t sub_1008F1658()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 104);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1008F16C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v44 = a1;
  v45 = sub_1005B981C(&unk_101A07790);
  v7 = *(v45 - 8);
  v46 = *(v7 + 64);
  __chkstk_darwin(v45);
  v9 = v38 - v8;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v42 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v40 = objc_opt_self();
  v12 = [v40 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = *(v7 + 16);
  v38[0] = v9;
  v16 = v45;
  v41(v9, a1, v45);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v39 = *(v7 + 32);
  v39(v18 + v17, v9, v16);
  v19 = String._bridgeToObjectiveC()();

  v51 = sub_1008F23DC;
  v52 = v18;
  aBlock = _NSConcreteStackBlock;
  v48 = *"";
  v38[1] = &v49;
  v49 = sub_10068B39C;
  v50 = &unk_10188CA98;
  v20 = _Block_copy(&aBlock);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  v23 = [v40 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v38[0];
  v28 = v45;
  v41(v38[0], v44, v45);
  v29 = v28;
  v30 = swift_allocObject();
  v31 = v30 + v17;
  v32 = v42;
  v39(v31, v27, v29);
  v33 = String._bridgeToObjectiveC()();

  v51 = sub_1008F2478;
  v52 = v30;
  aBlock = _NSConcreteStackBlock;
  v48 = *"";
  v49 = sub_10068B39C;
  v50 = &unk_10188CAE8;
  v34 = _Block_copy(&aBlock);

  v35 = [v21 actionWithTitle:v33 style:1 handler:v34];
  _Block_release(v34);

  [v32 addAction:v22];
  [v32 addAction:v35];
  [v32 setPreferredAction:v22];
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    swift_unknownObjectRetain();
    [v37 presentViewController:v32 animated:1 completion:0];
    sub_1011047E4(v32);
    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(aBlock) = 0;
    CheckedContinuation.resume(returning:)();
  }
}

id sub_1008F1CA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZEditor();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1008F1E0C(uint64_t a1, uint64_t a2, NSString a3, void *a4, uint64_t a5)
{
  v9 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:v5];
  type metadata accessor for CRLAsset();
  v10.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
    a3 = String._bridgeToObjectiveC()();
  }

  if (a4)
  {
    v11[4] = a4;
    v11[5] = a5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = *"";
    v11[2] = sub_1008E899C;
    v11[3] = &unk_10188CA48;
    a4 = _Block_copy(v11);
  }

  [v9 replaceSelectedMediaWithData:v10.super.isa actionString:a3 completion:a4];
  _Block_release(a4);
}

void sub_1008F2044(uint64_t a1, uint64_t a2, Class isa, uint64_t a4, NSString a5, void *a6, uint64_t a7)
{
  v13 = [objc_allocWithZone(CRLMediaReplacingHelper) initWithEditor:v7];
  type metadata accessor for URL();
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (isa)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  if (a6)
  {
    v15[4] = a6;
    v15[5] = a7;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = *"";
    v15[2] = sub_100007638;
    v15[3] = &unk_10188C9F8;
    a6 = _Block_copy(v15);
  }

  [v13 replaceCanvasElementInfo:a1 withFilesAtURLs:v14.super.isa allowedTypes:isa actionString:a5 completion:a6];
  _Block_release(a6);
}

uint64_t sub_1008F23E4()
{
  v1 = sub_1005B981C(&unk_101A07790);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1008F2480()
{
  sub_1005B981C(&unk_101A07790);
  sub_1005B981C(&unk_101A07790);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1008F2524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008F25BC, v7, v6);
}

uint64_t sub_1008F25BC()
{
  v1 = *(v0 + 64);

  swift_beginAccess();
  if (*(v1 + 16))
  {
    [*(v0 + 72) endModalOperationWithToken:?];
  }

  v2 = *(v0 + 64);
  swift_beginAccess();
  *(v2 + 16) = 0;
  swift_unknownObjectRelease();
  if (qword_1019F21E0 != -1)
  {
    swift_once();
  }

  v3 = static OS_os_log.crlThreeDimensionalObjects;
  v4 = static os_log_type_t.info.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "CRLUSDZEditor.compress: Modal operation ended", 45, 2, _swiftEmptyArrayStorage);
  v5 = *(v0 + 8);

  return v5();
}

void *sub_1008F26DC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_1005DF828(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

unint64_t sub_1008F276C()
{
  result = qword_101A077A0;
  if (!qword_101A077A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A077A0);
  }

  return result;
}

uint64_t sub_1008F27C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1008EBD48(a1, v4, v5, v7, v6);
}

uint64_t sub_1008F288C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1008F2524(a1, v4, v5, v7, v6);
}

uint64_t sub_1008F294C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_1008F2524(a1, v4, v5, v7, v6);
}

uint64_t sub_1008F2A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008F2A74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1008F2AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008F2B1C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1008F2B2C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1008F2B3C(uint64_t a1)
{
  sub_100064288(a1, v10);
  sub_100006370(0, &qword_1019F6C00);
  if (swift_dynamicCast())
  {
    v1 = [v9 identifier];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
    if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1008F2C84()
{
  result = qword_101A07830;
  if (!qword_101A07830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A07830);
  }

  return result;
}

id sub_1008F2CF4(double a1, double a2, double a3, double a4)
{
  v9 = sub_1005B981C(&qword_101A23CF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for UIBackgroundConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_dimsThumbnail] = 0;
  v19 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardTitle];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_lastEditedTimestampText];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_folderName];
  *v22 = 0;
  v22[1] = 0;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite] = 0;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_canShowFavoriteButton] = 1;
  v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController] = 0;
  v23 = _s11iOSListItemCMa();
  v29.receiver = v4;
  v29.super_class = v23;
  v24 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v25 = objc_allocWithZone(_s8ListItemC18ListViewControllerCMa());
  v26 = v24;
  v27 = [v25 init];
  sub_1008F66CC(v27);

  sub_1008F3B2C();
  static UIBackgroundConfiguration.listPlainCell()();
  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v13 + 16))(v11, v15, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  UICollectionViewCell.backgroundConfiguration.setter();

  (*(v13 + 8))(v15, v12);
  return v26;
}

void sub_1008F30E4(char a1)
{
  v8.receiver = v1;
  v8.super_class = _s11iOSListItemCMa();
  objc_msgSendSuper2(&v8, "setSelected:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 isSelected];
    v4[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isSelected] = v5;
    v6 = *&v4[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge];
    v7 = v6[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked];
    v6[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController19SelectionStateBadge_isChecked] = v5;
    if (v5 != v7)
    {
      [v6 setNeedsDisplay];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1008F31A8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (v2)
  {
    v4 = OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode;
    v2[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode] = a1 & 1;
    v5 = *&v2[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_selectionStateBadge];
    v9 = v2;
    [v5 setHidden:(a1 & 1) == 0];
    v6 = *&v9[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_isInMultipleSelectionModeConstraint];
    if (v6)
    {
      v7 = v2[v4];
      v8 = v6;
      [v8 setActive:v7];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1008F3278(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
  v4 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (v4)
  {
    v5 = [*(v4 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) superview];
    if (!v5)
    {
      v39 = objc_opt_self();
      v13 = [v39 _atomicIncrementAssertCount];
      v40 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v40);
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

      v20 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v13;
      v22 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v22;
      v23 = sub_1005CF04C();
      *(inited + 104) = v23;
      *(inited + 72) = v14;
      *(inited + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(inited + 112) = v17;
      *(inited + 120) = v19;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v24;
      *(inited + 152) = 90;
      v25 = v40;
      *(inited + 216) = v22;
      *(inited + 224) = v23;
      *(inited + 192) = v25;
      v26 = v14;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v29, "Thumbnail image view has no superview, so we can't determine a rect for the zoom animation.", 91, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v30 = swift_allocObject();
      *(v30 + 16) = 8;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0u;
      v31 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      [v39 handleFailureInFunction:v32 file:v33 lineNumber:90 isFatal:0 format:v34 args:v31];

      v11 = 0uLL;
      v12 = 0uLL;
      goto LABEL_8;
    }

    v6 = *(v1 + v3);
    if (v6)
    {
      [*(v6 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) frame];
      [v5 convertRect:v1 toCoordinateSpace:?];
      v36 = v7;
      v37 = v8;
      v35 = v9;
      v38 = v10;

      *&v12 = v35;
      *&v11 = v36;
      *(&v11 + 1) = v37;
      *(&v12 + 1) = v38;
LABEL_8:
      *a1 = v11;
      *(a1 + 16) = v12;
      *(a1 + 32) = v5 == 0;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1008F3704(uint64_t result, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = (v4 + *a3);
  v7 = *v6;
  v8 = v6[1];
  *v6 = result;
  v6[1] = a2;
  if (!a2)
  {
    if (!v8)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (!v8 || (v7 == result ? (v9 = v8 == a2) : (v9 = 0), !v9 && (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0)))
  {
LABEL_10:
    v10 = *(v4 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
    if (!v10)
    {
      __break(1u);
      return result;
    }

    v11 = v10;
    a4();
  }
}

void sub_1008F37B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName + 8);
  if (!v5)
  {
    if (!a2)
    {
      return;
    }

LABEL_10:
    v7 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
    v8 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_collaboratorNameLabel];
      v10 = v8;
      sub_100A50EB4();
      v11 = String._bridgeToObjectiveC()();

      [v9 setText:v11];

      v12 = *(v3 + v7);
      if (v12)
      {
        v13 = [v12 view];
        if (v13)
        {
          v14 = v13;
          [v13 setNeedsUpdateConstraints];

          return;
        }

LABEL_18:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  v6 = *(v2 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName) == a1 && v5 == a2;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }
}

void sub_1008F38F0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_favoriteButton);
    v3 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite);
    v4 = OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite;
    v2[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_isFavorite] = v3;
    v5 = *&v2[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconFillImageView];
    v7 = v2;
    [v5 setHidden:v3 ^ 1u];
    if (v2[v4] == 1)
    {
      v6 = v7[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_showsOuterGlow] ^ 1;
    }

    else
    {
      v6 = 1;
    }

    [*&v7[OBJC_IVAR____TtCCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController14FavoriteButton_favoriteIconOuterGlowImageView] setHidden:v6 & 1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1008F39E4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
  v4 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *&v4[OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_attributionView];
  if (!v6)
  {
    goto LABEL_7;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  sub_100006370(0, &qword_1019F77C0);
  v7 = v6;
  v13 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    v4 = *(v2 + v3);
    if (v4)
    {
      goto LABEL_8;
    }

    __break(1u);
LABEL_7:
    if (!a1)
    {
      return;
    }

LABEL_8:
    v13 = a1;
    v9 = v4;
    sub_100EE10AC(a1);

    v10 = *(v2 + v3);
    if (v10)
    {
      v11 = [v10 view];
      if (v11)
      {
        v12 = v11;
        [v11 setNeedsUpdateConstraints];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

void sub_1008F3B2C()
{
  v1 = v0;
  v2 = [v0 contentView];
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController;
  v4 = *&v0[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v2;
  *(v4 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_owningItem + 8) = &off_10188CE10;
  swift_unknownObjectWeakAssign();
  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v6 loadViewIfNeeded];
  v7 = *&v0[v3];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [v7 view];
  v50 = v5;
  if (v8)
  {
    v9 = v8;
    [v5 addSubview:v8];
    v10 = [v5 layer];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v1 contentView];
    sub_100B480BC(v1, v11);

    sub_100B480BC(v5, v9);
    [v10 setMasksToBounds:0];
    sub_1005B981C(&unk_1019F4D60);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10146CE00;
    v13 = [v1 separatorLayoutGuide];
    v14 = [v13 leadingAnchor];

    v15 = *&v1[v3];
    if (v15)
    {
      v16 = [*(v15 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController8ListItem18ListViewController_textLayoutGuide) leadingAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];

      *(v12 + 32) = v17;
      v18 = [v1 separatorLayoutGuide];
      v19 = [v18 trailingAnchor];

      v20 = *&v1[v3];
      if (v20)
      {
        v21 = [v20 view];
        if (v21)
        {
          v22 = v21;
          v23 = objc_opt_self();
          v24 = [v22 trailingAnchor];

          v25 = [v19 constraintEqualToAnchor:v24];
          *(v12 + 40) = v25;
          sub_100006370(0, &qword_1019F4D70);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v23 activateConstraints:isa];

          return;
        }

LABEL_19:
        __break(1u);
        return;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = objc_opt_self();
  v27 = [v26 _atomicIncrementAssertCount];
  v51 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v51);
  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v29 lastPathComponent];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v36 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v36;
  v37 = sub_1005CF04C();
  *(inited + 104) = v37;
  *(inited + 72) = v28;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v31;
  *(inited + 120) = v33;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 196;
  v39 = v51;
  *(inited + 216) = v36;
  *(inited + 224) = v37;
  *(inited + 192) = v39;
  v40 = v28;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v46 file:v47 lineNumber:196 isFatal:0 format:v48 args:v45];
}

uint64_t sub_1008F4214()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v51 - v10;
  v12 = _s11iOSListItemCMa();
  v54.receiver = v1;
  v54.super_class = v12;
  v13 = objc_msgSendSuper2(&v54, "accessibilityLabel");
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_9:
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v52 = v2;
  v19 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100024CBC((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[16 * v21];
  *(v22 + 4) = v15;
  *(v22 + 5) = v17;
  v2 = v52;
LABEL_10:
  v23 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  swift_beginAccess();
  sub_1006BF2A8(&v1[v23], v11);
  v24 = *(v3 + 48);
  if (v24(v11, 1, v2))
  {
    sub_1008F6574(v11);
  }

  else
  {
    sub_10075ABD8(v11, v5);
    sub_1008F6574(v11);
    v25 = sub_100F888B8();
    v51 = v26;
    v52 = v25;
    sub_1000510BC(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v27 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v29 = *(v19 + 2);
    v28 = *(v19 + 3);
    if (v29 >= v28 >> 1)
    {
      v19 = sub_100024CBC((v28 > 1), v29 + 1, 1, v19);
    }

    *(v19 + 2) = v29 + 1;
    v30 = &v19[16 * v29];
    v31 = v51;
    *(v30 + 4) = v52;
    *(v30 + 5) = v31;
    v2 = v27;
  }

  sub_1006BF2A8(&v1[v23], v8);
  if (v24(v8, 1, v2))
  {
    sub_1008F6574(v8);
  }

  else
  {
    sub_10075ABD8(v8, v5);
    sub_1008F6574(v8);
    v32 = sub_100F88220();
    v34 = v33;
    sub_1000510BC(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v36 = *(v19 + 2);
    v35 = *(v19 + 3);
    if (v36 >= v35 >> 1)
    {
      v19 = sub_100024CBC((v35 > 1), v36 + 1, 1, v19);
    }

    *(v19 + 2) = v36 + 1;
    v37 = &v19[16 * v36];
    *(v37 + 4) = v32;
    *(v37 + 5) = v34;
  }

  v38 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText + 8];
  if (v38)
  {
    v39 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v41 = *(v19 + 2);
    v40 = *(v19 + 3);
    if (v41 >= v40 >> 1)
    {
      v19 = sub_100024CBC((v40 > 1), v41 + 1, 1, v19);
    }

    *(v19 + 2) = v41 + 1;
    v42 = &v19[16 * v41];
    *(v42 + 4) = v39;
    *(v42 + 5) = v38;
  }

  v43 = &v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName];
  v44 = *&v1[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName + 8];
  if (v44)
  {
    v45 = *v43;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_100024CBC(0, *(v19 + 2) + 1, 1, v19);
    }

    v47 = *(v19 + 2);
    v46 = *(v19 + 3);
    if (v47 >= v46 >> 1)
    {
      v19 = sub_100024CBC((v46 > 1), v47 + 1, 1, v19);
    }

    *(v19 + 2) = v47 + 1;
    v48 = &v19[16 * v47];
    *(v48 + 4) = v45;
    *(v48 + 5) = v44;
  }

  v53 = v19;
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  v49 = BidirectionalCollection<>.joined(separator:)();

  return v49;
}

uint64_t sub_1008F475C()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v7 = sub_1005B981C(&qword_1019F3480);
    (*(*(v7 - 8) + 56))(v3, 5, 5, v7);
    LOBYTE(v6) = sub_100068604(v5 + v6, v3);
    swift_unknownObjectRelease();
    sub_1000510BC(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (v6)
    {
      return 0;
    }
  }

  if (*(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite) != 1)
  {
    return 0;
  }

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_1008F4950(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1008F49D0()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v7 = sub_1005B981C(&qword_1019F3480);
    (*(*(v7 - 8) + 56))(v3, 5, 5, v7);
    LOBYTE(v6) = sub_100068604(v5 + v6, v3);
    sub_1000510BC(v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if ((v6 & 1) != 0 || *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState) == 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v8 = [objc_opt_self() mainBundle];
      v9 = String._bridgeToObjectiveC()();
      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return v12;
    }
  }

  return result;
}

void *sub_1008F4CAC()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  v8 = _s5BoardVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return v11;
  }

  v13 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  type metadata accessor for CRLBoardLibrary();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  v41 = v10;
  v42 = v13;
  v15 = v14;
  v16 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  swift_beginAccess();
  sub_1006BF2A8(v1 + v16, v7);
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v7, 1, v17) == 1)
  {
    swift_unknownObjectRelease();
    sub_1008F6574(v7);
    return _swiftEmptyArrayStorage;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    swift_unknownObjectRelease();
    v37 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_23:
    sub_1000510BC(v7, v37);
    return _swiftEmptyArrayStorage;
  }

  v19 = v7;
  v7 = v41;
  sub_100065C18(v19, v41, _s5BoardVMa);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v37 = _s5BoardVMa;
    goto LABEL_23;
  }

  sub_1006BF2A8(v1 + v16, v4);
  result = (v18)(v4, 1, v17);
  if (result != 1)
  {
    v21 = *(*(v15 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
    __chkstk_darwin(result);
    *(&v38 - 2) = v41;

    v22 = sub_101107CA8(sub_1008F65DC, (&v38 - 4), v21);

    v23 = sub_100F48B98(v4, v22);
    swift_unknownObjectRelease();

    sub_1000510BC(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v24 = *(v23 + 2);
    v38 = v23;
    if (v24)
    {
      v25 = (v23 + 32);
      v39 = v44;
      v40 = 0x8000000101552E20;
      v11 = _swiftEmptyArrayStorage;
      do
      {
        v27 = *v25++;
        v26 = v27;
        if (v27 <= 4 || v26 > 7 || v26 == 5 || v26 == 6)
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v28 & 1) == 0)
          {
            sub_1012C8024();
            v29 = sub_1012C843C();
            v30 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v31 = swift_allocObject();
            *(v31 + 16) = v30;
            *(v31 + 24) = v26;
            v32 = objc_allocWithZone(UIAccessibilityCustomAction);

            v33 = String._bridgeToObjectiveC()();

            v44[2] = sub_1008F65FC;
            v44[3] = v31;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = *"";
            v44[0] = sub_100FDE79C;
            v44[1] = &unk_10188D028;
            v34 = _Block_copy(aBlock);
            v35 = [v32 initWithName:v33 image:v29 actionHandler:{v34, v38, v39}];

            _Block_release(v34);

            v36 = v35;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v11 = v45;
          }
        }

        else
        {
        }

        --v24;
      }

      while (v24);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    swift_unknownObjectRelease();

    sub_1000510BC(v41, _s5BoardVMa);
    return v11;
  }

  __break(1u);
  return result;
}

BOOL sub_1008F53A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = Strong;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    *(v11 + 32) = v9;
    *(v11 + 40) = a3;
    sub_10064191C(0, 0, v6, &unk_101486E38, v11);
  }

  return Strong != 0;
}

uint64_t sub_1008F550C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 120) = a4;
  sub_1005B981C(&unk_101A15B20);
  *(v5 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 136) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 144) = v7;
  *(v5 + 152) = v6;

  return _swift_task_switch(sub_1008F55E0, v7, v6);
}

uint64_t sub_1008F55E0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 120);
    v2 = *(v0 + 128);
    v4 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
    swift_beginAccess();
    sub_1006BF2A8(v3 + v4, v2);
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_1008F5710;
    v6 = *(v0 + 128);
    v7 = *(v0 + 184);

    return sub_100F46DFC(v7, v6);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1008F5710()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(*v1 + 176) = v0;

  swift_unknownObjectRelease();
  sub_1008F6574(v3);
  v4 = *(v2 + 152);
  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_1008F58F4;
  }

  else
  {
    v6 = sub_1008F588C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1008F588C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1008F58F4()
{

  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = static OS_os_log.crlDefault;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[14] = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error calling action for item: %@", 33, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1008F5A74()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v10 = sub_1005B981C(&qword_1019F3480);
    (*(*(v10 - 8) + 56))(v6, 5, 5, v10);
    LOBYTE(v9) = sub_100068604(v8 + v9, v6);
    sub_1000510BC(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if ((v9 & 1) != 0 || *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState) == 1)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v11 = type metadata accessor for TaskPriority();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
      type metadata accessor for MainActor();
      v12 = v0;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v12;
      sub_10064191C(0, 0, v3, &unk_101486E28, v14);
      swift_unknownObjectRelease();

      return 1;
    }
  }

  return result;
}

uint64_t sub_1008F5CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v7;
  v4[14] = v6;

  return _swift_task_switch(sub_1008F5DF8, v7, v6);
}

uint64_t sub_1008F5DF8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = v0[10];
    v3 = v0[5];
    v4 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
    swift_beginAccess();
    sub_1006BF2A8(v3 + v4, v2);
    v0[16] = static MainActor.shared.getter();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008F5F2C, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1008F5F2C()
{
  v2 = v0 + 10;
  v1 = v0[10];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];

  sub_1006BF2A8(v1, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = *v2;
    swift_unknownObjectRelease();
    sub_1008F6574(v6);
    v2 = v0 + 9;
  }

  else
  {
    v7 = v0[8];
    v8 = v0[7];
    sub_100065C18(v0[9], v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1005B981C(&qword_101A23C10);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10146C6B0;
    sub_10075ABD8(v7, v10 + v9);
    sub_100F37F34(v10);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    sub_1000510BC(v10 + v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_deallocClassInstance();
    sub_1000510BC(v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  sub_1008F6574(*v2);
  v11 = v0[13];
  v12 = v0[14];

  return _swift_task_switch(sub_1008F60D0, v11, v12);
}

uint64_t sub_1008F60D0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1008F6180()
{
  v2.receiver = v0;
  v2.super_class = _s11iOSListItemCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008F6280@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  swift_beginAccess();
  return sub_1006BF2A8(v1 + v3, a1);
}

void sub_1008F62D8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (v2)
  {
    [*(v2 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_thumbnailImageView) setImage:?];
  }

  else
  {
    __break(1u);
  }
}

double sub_1008F6340@<D0>(uint64_t a1@<X8>)
{
  sub_1008F3278(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1008F6388()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardTitle);

  return v1;
}

uint64_t sub_1008F63C8()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_lastEditedTimestampText);

  return v1;
}

uint64_t sub_1008F6404()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName);

  return v1;
}

uint64_t sub_1008F6488()
{
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  if (v1)
  {
    return *(v1 + OBJC_IVAR____TtCCC8Freeform30CRLiOSFolderGridViewController4Item14ViewController_isInMultipleSelectionMode);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008F64C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1008F5CBC(a1, v4, v5, v6);
}

uint64_t sub_1008F6574(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A15B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008F6608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_1008F550C(a1, v4, v5, v6, v7);
}

void sub_1008F66CC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController);
  *(v1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController) = a1;
  if (v2)
  {
    v3 = a1;
    v7 = v2;
    [v7 removeFromParentViewController];
    v4 = [v7 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = a1;
    v7 = 0;
  }

  sub_1008F3B2C();
}

void sub_1008F6788()
{
  v1 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxLastEditedTimestampText);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_item;
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_dimsThumbnail) = 0;
  v4 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardTitle);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_lastEditedTimestampText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_collaboratorName);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_folderName);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_isFavorite) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_canShowFavoriteButton) = 1;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_boardAccessState) = 0;
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_crlaxDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController11iOSListItem_viewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1008F69BC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong removeToolkitObserver:v0];
  }

  swift_unknownObjectWeakAssign();
  v4 = [v0 viewIfLoaded];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 _setContentCoordinateSpace:0];
    }
  }

  v7 = OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager;
  [*&v0[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager] teardown];
  v8 = *&v0[v7];
  *&v0[v7] = 0;

  v0[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_isTornDown] = 1;
}

id CRLiOSPencilKitCanvasViewController.__deallocating_deinit()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_isTornDown) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 153;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "CRLiOSPencilKitCanvasViewController must be torn down before deinit.", 68, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:153 isFatal:0 format:v24 args:v21];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLiOSPencilKitCanvasViewController();
  return objc_msgSendSuper2(&v26, "dealloc");
}

void sub_1008F708C()
{
  if ([v0 isViewLoaded])
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      objc_opt_self();
      v3 = [swift_dynamicCastObjCClassUnconditional() _tiledView];

      v4 = [v3 canvasView];
      if (!v4)
      {
        v5 = objc_opt_self();
        v6 = [v5 _atomicIncrementAssertCount];
        v28 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v28);
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
        v15 = sub_1005CF000();
        *(inited + 96) = v15;
        v16 = sub_1005CF04C();
        *(inited + 104) = v16;
        *(inited + 72) = v7;
        *(inited + 136) = &type metadata for String;
        v17 = sub_1000053B0();
        *(inited + 112) = v10;
        *(inited + 120) = v12;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v17;
        *(inited + 152) = 170;
        v18 = v28;
        *(inited + 216) = v15;
        *(inited + 224) = v16;
        *(inited + 192) = v18;
        v19 = v7;
        v20 = v18;
        v21 = static os_log_type_t.error.getter();
        sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v22 = static os_log_type_t.error.getter();
        sub_100005404(v13, &_mh_execute_header, v22, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

        [v5 handleFailureInFunction:v25 file:v26 lineNumber:170 isFatal:0 format:v27 args:v24];
      }

      [v4 _finishCombiningStrokesIfNecessary];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController.loadView()()
{
  v1 = v0;
  v2 = type metadata accessor for UITraitOverrides();
  v3 = [v0 viewIfLoaded];
  if (v3)
  {

    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    v79[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v79);
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
    *(inited + 152) = 181;
    v17 = v79[0];
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
    sub_100005404(v12, &_mh_execute_header, v21, "loadView should not be called when the view is already loaded.", 62, 2, _swiftEmptyArrayStorage);

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

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:181 isFatal:0 format:v26 args:v23];
  }

  else
  {
    v27 = [swift_unknownObjectUnownedLoadStrong() pencilKitSnapshotViewForPencilKitCanvasViewController:v0];
    swift_unknownObjectRelease();
    v25 = [objc_allocWithZone(PKCanvasView) initWithFrame:1 sixChannelBlend:v27 snapshotView:{0.0, 0.0, 0.0, 0.0}];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
    UIView.traitOverrides.getter();
    UIMutableTraits.userInterfaceStyle.setter();
    UIView.traitOverrides.setter();
    v28 = [objc_opt_self() clearColor];
    [v25 setBackgroundColor:v28];

    [v25 setOpaque:0];
    [v25 setUserInteractionEnabled:0];
    [v25 setHidden:1];
    [v25 set_disableUndoManager:1];
    [v25 _setDisableTileRendering:1];
    [v25 setDelegate:v1];
    v24 = [swift_unknownObjectUnownedLoadStrong() interactiveCanvasControllerForPencilKitCanvasViewController:v1];
    swift_unknownObjectRelease();
    v29 = [v24 canvasView];
    if (v29)
    {
      v30 = v29;
      [v25 _setContentCoordinateSpace:{objc_msgSend(v29, "unscaledCoordinateSpace")}];

      swift_unknownObjectRelease();
    }

    else
    {
      v77 = v27;
      v74 = objc_opt_self();
      v31 = [v74 _atomicIncrementAssertCount];
      v79[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v79);
      StaticString.description.getter();
      v72 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      v33 = [v32 lastPathComponent];

      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v35;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v70 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v36 = swift_initStackObject();
      *(v36 + 16) = xmmword_10146CA70;
      *(v36 + 56) = &type metadata for Int32;
      *(v36 + 64) = &protocol witness table for Int32;
      *(v36 + 32) = v31;
      v37 = sub_1005CF000();
      *(v36 + 96) = v37;
      v38 = sub_1005CF04C();
      *(v36 + 104) = v38;
      *(v36 + 72) = v72;
      *(v36 + 136) = &type metadata for String;
      v39 = sub_1000053B0();
      *(v36 + 112) = v34;
      *(v36 + 120) = v69;
      *(v36 + 176) = &type metadata for UInt;
      *(v36 + 184) = &protocol witness table for UInt;
      *(v36 + 144) = v39;
      *(v36 + 152) = 211;
      v40 = v79[0];
      *(v36 + 216) = v37;
      *(v36 + 224) = v38;
      *(v36 + 192) = v40;
      v41 = v72;
      v42 = v40;
      v43 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v44 = static os_log_type_t.error.getter();
      sub_100005404(v70, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v45 = swift_allocObject();
      v45[2] = 8;
      v45[3] = 0;
      v45[4] = 0;
      v45[5] = 0;
      v46 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v47 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      [v74 handleFailureInFunction:v47 file:v48 lineNumber:211 isFatal:0 format:v49 args:v46];

      v27 = v77;
    }

    v50 = [swift_unknownObjectUnownedLoadStrong() freehandDrawingToolkitForPencilKitCanvasViewController:v1];
    swift_unknownObjectRelease();
    if (v50)
    {
      [v50 addToolkitObserver:v1];
    }

    else
    {
      v78 = v27;
      v76 = objc_opt_self();
      v51 = [v76 _atomicIncrementAssertCount];
      v79[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v79);
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      v53 = [v52 lastPathComponent];

      v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v55;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v73 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v56 = swift_initStackObject();
      *(v56 + 16) = xmmword_10146CA70;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v51;
      v57 = sub_1005CF000();
      *(v56 + 96) = v57;
      v58 = sub_1005CF04C();
      *(v56 + 104) = v58;
      *(v56 + 72) = v75;
      *(v56 + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(v56 + 112) = v54;
      *(v56 + 120) = v71;
      *(v56 + 176) = &type metadata for UInt;
      *(v56 + 184) = &protocol witness table for UInt;
      *(v56 + 144) = v59;
      *(v56 + 152) = 216;
      v60 = v79[0];
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 192) = v60;
      v61 = v75;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v73, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v73, &_mh_execute_header, v64, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      [v76 handleFailureInFunction:v67 file:v68 lineNumber:216 isFatal:0 format:v50 args:v66];

      v27 = v78;
    }

    [v1 setView:v25];
    v26 = v25;
  }
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRLiOSPencilKitCanvasViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1);
  v3 = [swift_unknownObjectUnownedLoadStrong() freehandDrawingToolkitForPencilKitCanvasViewController:v1];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [v3 currentTool];
    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      objc_opt_self();
      [v4 updatePencilKitToolIfAppropriateFor:swift_dynamicCastObjCClassUnconditional()];
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v53.receiver = v1;
  v53.super_class = type metadata accessor for CRLiOSPencilKitCanvasViewController();
  objc_msgSendSuper2(&v53, "viewDidAppear:", a1);
  if ([objc_opt_self() isOSFeatureEnabled:9])
  {
    v3 = *&v1[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionManager];
    if (v3)
    {
      v4 = v3;
      [v4 updatePKStrokesFromAllFreehandDrawingItemsOnCanvas];
      v5 = [v1 view];
      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = v5;
      v7 = [v5 window];

      v8 = [v7 windowScene];
      if (v8)
      {
        [v4 didAppearInWindowScene:v8];
      }

      else
      {
        v30 = objc_opt_self();
        v31 = [v30 _atomicIncrementAssertCount];
        v52 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v52);
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
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v31;
        v40 = sub_1005CF000();
        *(inited + 96) = v40;
        v41 = sub_1005CF04C();
        *(inited + 104) = v41;
        *(inited + 72) = v32;
        *(inited + 136) = &type metadata for String;
        v42 = sub_1000053B0();
        *(inited + 112) = v35;
        *(inited + 120) = v37;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v42;
        *(inited + 152) = 238;
        v43 = v52;
        *(inited + 216) = v40;
        *(inited + 224) = v41;
        *(inited + 192) = v43;
        v44 = v32;
        v45 = v43;
        v46 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v47 = static os_log_type_t.error.getter();
        sub_100005404(v38, &_mh_execute_header, v47, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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
        v8 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v51 = String._bridgeToObjectiveC()();

        [v30 handleFailureInFunction:v50 file:v8 lineNumber:238 isFatal:0 format:v51 args:v49];

        v4 = v51;
      }
    }

    else
    {
      v9 = objc_opt_self();
      v10 = [v9 _atomicIncrementAssertCount];
      v52 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v52);
      StaticString.description.getter();
      v11 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v12 = String._bridgeToObjectiveC()();

      v13 = [v12 lastPathComponent];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v17 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_10146CA70;
      *(v18 + 56) = &type metadata for Int32;
      *(v18 + 64) = &protocol witness table for Int32;
      *(v18 + 32) = v10;
      v19 = sub_1005CF000();
      *(v18 + 96) = v19;
      v20 = sub_1005CF04C();
      *(v18 + 104) = v20;
      *(v18 + 72) = v11;
      *(v18 + 136) = &type metadata for String;
      v21 = sub_1000053B0();
      *(v18 + 112) = v14;
      *(v18 + 120) = v16;
      *(v18 + 176) = &type metadata for UInt;
      *(v18 + 184) = &protocol witness table for UInt;
      *(v18 + 144) = v21;
      *(v18 + 152) = 235;
      v22 = v52;
      *(v18 + 216) = v19;
      *(v18 + 224) = v20;
      *(v18 + 192) = v22;
      v23 = v11;
      v24 = v22;
      v25 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v27 = swift_allocObject();
      v27[2] = 8;
      v27[3] = 0;
      v27[4] = 0;
      v27[5] = 0;
      v28 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v4 = String._bridgeToObjectiveC()();

      [v9 handleFailureInFunction:v29 file:v8 lineNumber:235 isFatal:0 format:v4 args:v28];
    }
  }
}

id sub_1008F8BBC(char a1)
{
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  if ([v5 isRulerActive] && (v10 = xmmword_1014629F0, objc_msgSend(v5, "rulerSnapLineOriginAndNormal:topSide:", &v10, a1 & 1), sub_1008F9058(1, v11, v6, v7, *&v10, *(&v10 + 1)), (v12 & 1) == 0))
  {
    v9 = [objc_opt_self() bezierPathWithStart:v11[0] end:{v11[1], v11[2], v11[3]}];

    return v9;
  }

  else
  {

    return 0;
  }
}

id sub_1008F8DA4()
{
  sub_1008F8E94(v10);
  if (v11)
  {
    return 0;
  }

  v2 = *&v10[6];
  v1 = *&v10[7];
  v4 = *&v10[4];
  v3 = *&v10[5];
  v6 = *&v10[2];
  v5 = *&v10[3];
  v8 = *v10;
  v7 = *&v10[1];
  v9 = [objc_allocWithZone(CRLBezierPath) init];
  [v9 moveToPoint:{v8, v7}];
  [v9 lineToPoint:{v6, v5}];
  [v9 lineToPoint:{v4, v3}];
  [v9 lineToPoint:{v2, v1}];
  [v9 closePath];
  return v9;
}

void sub_1008F8E94(uint64_t a1@<X8>)
{
  v24 = INFINITY;
  v25 = INFINITY;
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
  }

  v4 = v3;
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() rulerSnapLineOriginAndNormal:&v24 topSide:1];
  v6 = v5;
  v8 = v7;

  sub_1008F9058(0, v26, v6, v8, v24, v25);
  if (v27)
  {
    goto LABEL_5;
  }

  v20 = v26[1];
  v21 = v26[0];
  v22 = INFINITY;
  v23 = INFINITY;
  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() rulerSnapLineOriginAndNormal:&v22 topSide:0];
    v12 = v11;
    v14 = v13;

    sub_1008F9058(0, v28, v12, v14, v22, v23);
    if ((v29 & 1) == 0)
    {
      v15 = 0;
      v18 = v28[0];
      v19 = v28[1];
      v17 = v20;
      v16 = v21;
      goto LABEL_7;
    }

LABEL_5:
    v15 = 1;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
LABEL_7:
    *a1 = v16;
    *(a1 + 16) = v17;
    *(a1 + 32) = v18;
    *(a1 + 48) = v19;
    *(a1 + 64) = v15;
    return;
  }

  __break(1u);
}

void sub_1008F9058(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v14 = [swift_unknownObjectUnownedLoadStrong() interactiveCanvasControllerForPencilKitCanvasViewController:v6];
  swift_unknownObjectRelease();
  v15 = [v14 canvasView];
  if (v15)
  {
    v16 = v15;
    v17 = [swift_unknownObjectUnownedLoadStrong() pencilKitRulerHostingViewForPencilKitCanvasViewController:v7];
    swift_unknownObjectRelease();
    [v17 convertPoint:v16 toCoordinateSpace:{a3, a4}];
    [v14 convertBoundsToUnscaledPoint:?];
    v19 = v18;
    v69 = v20;
    [v14 visibleBoundsRectForTiling];
    [v14 convertBoundsToUnscaledRect:?];
    v21 = a5;
    x = v73.origin.x;
    y = v73.origin.y;
    width = v73.size.width;
    height = v73.size.height;
    v26 = CGRectGetWidth(v73);
    v27 = a6;
    v28 = v26 * v26;
    v68 = y;
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    v29 = CGRectGetHeight(v74);
    v30 = ceil(sqrt(v28 + v29 * v29));
    v31 = sub_100121068(1, v21, v27, 1.57079633);
    v33 = sub_10011F340(v31, v32, v30);
    v34 = sub_10011F31C(v19, *&v69, v33);
    v36 = v35;
    v38 = sub_10011F334(v19, *&v69, v33);
    v39 = v37;
    if (a1)
    {
      v70 = sub_100120594(v34, v36, x, v68, width, height, v38, v37);
      v67 = v40;
      v38 = sub_100120594(v38, v39, x, v68, width, height, v34, v36);
      v39 = v41;
      v34 = v70;
      v36 = v67;
    }

    v42 = sub_1001208AC(v34, v36);

    v43 = 0.0;
    if (!v42 && !sub_1001208AC(v38, v39))
    {
      v44 = 0;
      v43 = v34;
      goto LABEL_11;
    }

    v44 = 1;
  }

  else
  {
    v71 = objc_opt_self();
    v45 = [v71 _atomicIncrementAssertCount];
    v72 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v72);
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
    *(inited + 152) = 305;
    v57 = v72;
    *(inited + 216) = v54;
    *(inited + 224) = v55;
    *(inited + 192) = v57;
    v58 = v46;
    v59 = v57;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v61 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v61, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v71 handleFailureInFunction:v64 file:v65 lineNumber:305 isFatal:0 format:v66 args:v63];

    v44 = 1;
    v43 = 0.0;
  }

  v36 = 0.0;
  v38 = 0.0;
  v39 = 0.0;
LABEL_11:
  *a2 = v43;
  *(a2 + 8) = v36;
  *(a2 + 16) = v38;
  *(a2 + 24) = v39;
  *(a2 + 32) = v44;
}

id CRLiOSParticipantContactViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController._canvasView(_:didChangeHiddenState:)(PKCanvasView _, Swift::Bool didChangeHiddenState)
{
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 setHidden:didChangeHiddenState];

    [swift_unknownObjectUnownedLoadStrong() pencilKitViewWantsSuppressedFreehandContent:!didChangeHiddenState forPencilKitCanvasViewController:v2];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t CRLiOSPencilKitCanvasViewController._canvasView(_:endedStroke:shapeStrokes:)()
{
  [swift_unknownObjectUnownedLoadStrong() prepareForPencilKitEndingOrCancellingStroke:v0];

  return swift_unknownObjectRelease();
}

uint64_t sub_1008F9A40(uint64_t a1, uint64_t a2, SEL *a3)
{
  [swift_unknownObjectUnownedLoadStrong() *a3];

  return swift_unknownObjectRelease();
}

uint64_t sub_1008F9AA8(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v8 = type metadata accessor for PKStroke();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a4;
  v13 = a1;
  static PKStroke._unconditionallyBridgeFromObjectiveC(_:)();

  [swift_unknownObjectUnownedLoadStrong() *a5];
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v11, v8);
}

uint64_t CRLiOSPencilKitCanvasViewController._canvasView(_:hoverShouldBeActiveAt:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = [swift_unknownObjectUnownedLoadStrong() interactiveCanvasControllerForPencilKitCanvasViewController:v4];
  swift_unknownObjectRelease();
  if (![v8 isInDynamicOperation] && !objc_msgSend(v8, "isDynamicOperationEnding"))
  {
    v11 = [v8 layerHost];
    if (v11)
    {
      v12 = v11;
      if ([v11 respondsToSelector:"asPencilGestureProvider"])
      {
        v13 = [v12 asPencilGestureProvider];
        swift_unknownObjectRelease();
LABEL_11:
        v14 = [v8 canvasView];
        [a1 convertPoint:v14 toView:{a2, a3}];
        v16 = v15;
        v18 = v17;

        [v8 convertBoundsToUnscaledPoint:{v16, v18}];
        v20 = v19;
        v22 = v21;
        if (v13 && (v23 = [v13 pencilHoverGestureHandler]) != 0)
        {
          v24 = v23;
          sub_100C83CE4(v20, v22);
          v26 = v25;

          if (v26 != 3)
          {

LABEL_23:
            swift_unknownObjectRelease();
            goto LABEL_4;
          }
        }

        else
        {
          v73 = objc_opt_self();
          v27 = [v73 _atomicIncrementAssertCount];
          v75[0] = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, v75);
          StaticString.description.getter();
          v28 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v29 = String._bridgeToObjectiveC()();

          v30 = [v29 lastPathComponent];

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v34 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v27;
          v36 = sub_1005CF000();
          *(inited + 96) = v36;
          v37 = sub_1005CF04C();
          *(inited + 104) = v37;
          *(inited + 72) = v28;
          *(inited + 136) = &type metadata for String;
          v38 = sub_1000053B0();
          *(inited + 112) = v31;
          *(inited + 120) = v33;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v38;
          *(inited + 152) = 529;
          v39 = v75[0];
          *(inited + 216) = v36;
          *(inited + 224) = v37;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v39;
          v40 = v28;
          v41 = v39;
          v42 = static os_log_type_t.error.getter();
          sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v43 = static os_log_type_t.error.getter();
          sub_100005404(v34, &_mh_execute_header, v43, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v44 = swift_allocObject();
          v44[2] = 8;
          v44[3] = 0;
          v44[4] = 0;
          v44[5] = 0;
          v45 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v46 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v47 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v48 = String._bridgeToObjectiveC()();

          [v73 handleFailureInFunction:v46 file:v47 lineNumber:529 isFatal:0 format:v48 args:v45];

          if (!v13)
          {
LABEL_20:
            v74 = objc_opt_self();
            v51 = [v74 _atomicIncrementAssertCount];
            v75[0] = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, v75);
            StaticString.description.getter();
            v52 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v53 = String._bridgeToObjectiveC()();

            v54 = [v53 lastPathComponent];

            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v58 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v59 = swift_initStackObject();
            *(v59 + 16) = xmmword_10146CA70;
            *(v59 + 56) = &type metadata for Int32;
            *(v59 + 64) = &protocol witness table for Int32;
            *(v59 + 32) = v51;
            v60 = sub_1005CF000();
            *(v59 + 96) = v60;
            v61 = sub_1005CF04C();
            *(v59 + 104) = v61;
            *(v59 + 72) = v52;
            *(v59 + 136) = &type metadata for String;
            v62 = sub_1000053B0();
            *(v59 + 112) = v55;
            *(v59 + 120) = v57;
            *(v59 + 176) = &type metadata for UInt;
            *(v59 + 144) = v62;
            *(v59 + 152) = 536;
            v63 = v75[0];
            *(v59 + 216) = v60;
            *(v59 + 224) = v61;
            *(v59 + 184) = &protocol witness table for UInt;
            *(v59 + 192) = v63;
            v64 = v52;
            v65 = v63;
            v66 = static os_log_type_t.error.getter();
            sub_100005404(v58, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v59);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v67 = static os_log_type_t.error.getter();
            sub_100005404(v58, &_mh_execute_header, v67, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v68 = swift_allocObject();
            v68[2] = 8;
            v68[3] = 0;
            v68[4] = 0;
            v68[5] = 0;
            v69 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v70 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v71 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v72 = String._bridgeToObjectiveC()();

            [v74 handleFailureInFunction:v70 file:v71 lineNumber:536 isFatal:0 format:v72 args:v69];

            goto LABEL_23;
          }
        }

        v49 = [v13 pencilMediator];
        if (v49)
        {
          v50 = v49;
          v9 = CRLiOSPencilMediator.shouldAllowPencilKitHoverPreview(at:)();

          swift_unknownObjectRelease();
          return v9 & 1;
        }

        goto LABEL_20;
      }

      swift_unknownObjectRelease();
    }

    v13 = 0;
    goto LABEL_11;
  }

LABEL_4:
  v9 = 0;
  return v9 & 1;
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController.toolkitDidUpdateCurrentToolSelection()()
{
  v1 = v0;
  v2 = [swift_unknownObjectUnownedLoadStrong() freehandDrawingToolkitForPencilKitCanvasViewController:v0];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = [v2 currentTool];
    v4 = [v1 view];
    if (v4)
    {
      objc_opt_self();
      [v3 updatePencilKitToolIfAppropriateFor:swift_dynamicCastObjCClassUnconditional()];
    }

    else
    {
      __break(1u);
    }
  }
}

PKCanvasView __swiftcall CRLiOSPencilKitCanvasViewController.pencilKitCanvasView(for:)(CRLFreehandDrawingPKSelectionManager *a1)
{
  result.super.super.super.super.isa = [v1 view];
  if (result.super.super.super.super.isa)
  {
    objc_opt_self();

    return swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1008FA974(uint64_t a1, SEL *a2)
{
  v3 = [swift_unknownObjectUnownedLoadStrong() *a2];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1008FA9E0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = a1;
  v8 = [Strong *a4];

  swift_unknownObjectRelease();

  return v8;
}

Swift::Void __swiftcall CRLiOSPencilKitCanvasViewController.removeSmartSelectionViewIfNecessary()()
{
  v1 = OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

void sub_1008FAB74()
{
  if ([objc_opt_self() isOSFeatureEnabled:8])
  {
    v1 = [swift_unknownObjectUnownedLoadStrong() freehandDrawingToolkitForPencilKitCanvasViewController:v0];
    swift_unknownObjectRelease();
    if (v1)
    {
      v2 = [v1 currentTool];
      type metadata accessor for PKStroke();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v2 convertToScratchOutOfStrokes:isa];
    }

    else
    {
      v3 = objc_opt_self();
      v4 = [v3 _atomicIncrementAssertCount];
      v27 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v27);
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
      v14 = sub_1005CF04C();
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 502;
      v16 = v27;
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
      sub_100005404(v11, &_mh_execute_header, v20, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

      [v3 handleFailureInFunction:v23 file:v24 lineNumber:502 isFatal:0 format:v25 args:v22];
    }
  }
}

void _s8Freeform35CRLiOSPencilKitCanvasViewControllerC07_canvasF18WillCreateSnapshotyySo08PKCanvasF0CF_0()
{
  v1 = v0;
  v35 = [swift_unknownObjectUnownedLoadStrong() interactiveCanvasControllerForPencilKitCanvasViewController:v0];
  swift_unknownObjectRelease();
  v2 = [v35 layerHost];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  if (([v2 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_1005CF000();
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 546;
    v24 = v36;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:546 isFatal:0 format:v33 args:v30];

    return;
  }

  v4 = [v3 asiOSCVC];
  swift_unknownObjectRelease();
  v34 = [swift_unknownObjectUnownedLoadStrong() freehandDrawingToolkitForPencilKitCanvasViewController:v1];
  swift_unknownObjectRelease();
  if (v34)
  {
    v5 = objc_opt_self();
    [v5 begin];
    v6 = [v34 currentTool];
    v7 = [v6 type];

    if (v7 == 9)
    {
      v8 = [v4 pencilHoverGestureHandler];
      if (!v8)
      {
        __break(1u);
        return;
      }

      v9 = v8;
      sub_100C83BC8();
    }

    [swift_unknownObjectUnownedLoadStrong() prepareForPencilKitSnapshottingForPencilKitCanvasViewController:v1];
    swift_unknownObjectRelease();
    [v5 flush];
    [v5 commit];

    v10 = v34;
  }

  else
  {

    v10 = v35;
  }
}

void _s8Freeform35CRLiOSPencilKitCanvasViewControllerC021installSmartSelectionF0_3forySo6UIViewCSg_So36CRLFreehandDrawingPKSelectionManagerCtF_0(void *a1)
{
  [v1 removeSmartSelectionViewIfNecessary];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView];
  *&v1[OBJC_IVAR____TtC8Freeform35CRLiOSPencilKitCanvasViewController_smartSelectionView] = a1;
  v4 = a1;

  v10 = [swift_unknownObjectUnownedLoadStrong() interactiveCanvasControllerForPencilKitCanvasViewController:v1];
  swift_unknownObjectRelease();
  if (a1)
  {
    v5 = v4;
    v6 = [v10 layerHost];
    if (v6)
    {
      v7 = [v6 canvasView];
      if (v7)
      {
        v8 = v7;
        [v7 addSubview:v5];
      }

      [v5 resignFirstResponder];
      v9 = [v10 textInputResponder];
      [v9 becomeFirstResponder];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1008FB7A4()
{
  v2[3] = &type metadata for CRLFeatureFlags;
  v2[4] = sub_100004D60();
  LOBYTE(v2[0]) = 13;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v2);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v2[0])
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1008FB8F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1008FBA1C()
{
  v0 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(result + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v8 + v9, v6, &qword_101A08DF0);
    swift_unknownObjectRelease();
    if ((*(v1 + 48))(v6, 1, v0))
    {
      sub_10000CAAC(v6, &qword_101A08DF0);
      return 0;
    }

    else
    {
      sub_10090F948(v6, v3, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v6, &qword_101A08DF0);

      sub_10090FA18(v3, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v10 = sub_1007DE720();

      return v10;
    }
  }

  return result;
}

void *sub_1008FBCE0()
{
  v0 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v9 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v8 + v9, v6, &qword_101A08DF0);
    swift_unknownObjectRelease();
    if ((*(v1 + 48))(v6, 1, v0))
    {
      sub_10000CAAC(v6, &qword_101A08DF0);
    }

    else
    {
      sub_10090F948(v6, v3, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v6, &qword_101A08DF0);

      sub_10090FA18(v3, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v11 = sub_1007DE720();

      if (v11)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        return v12;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

id sub_1008FC218()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_followingParticipantsStartEndFollowTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CRLFollowCoordinator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1008FC774()
{
  v1 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  result = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) anyObject];
  if (result)
  {
    v9 = result;
    v10 = [result board];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v10 + v11, v7, &qword_101A08DF0);

    if ((*(v2 + 48))(v7, 1, v1))
    {
      sub_10000CAAC(v7, &qword_101A08DF0);
      return 0;
    }

    sub_10090F948(v7, v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    sub_10000CAAC(v7, &qword_101A08DF0);
    v12 = *v4;

    sub_10090FA18(v4, type metadata accessor for CRLBoard.RealTimeSessionInfo);
    return v12;
  }

  return result;
}

uint64_t type metadata accessor for CRLFollowCoordinator()
{
  result = qword_101A07B50;
  if (!qword_101A07B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008FC9F4(uint64_t a1)
{
  v46 = a1;
  v2 = sub_1005B981C(&qword_101A07BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40[-v3];
  v47 = type metadata accessor for CRLStartOrEndFollow();
  v5 = *(v47 - 8);
  v6 = __chkstk_darwin(v47);
  v44 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v45 = &v40[-v8];
  v9 = sub_1005B981C(&qword_1019F6990);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v10);
  v15 = &v40[-v14];
  __chkstk_darwin(v13);
  v17 = &v40[-v16];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = v1;
  sub_100902EAC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000CAAC(v17, &qword_1019F6990);
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlFollow;
    v23 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v23, "Unable to retrieve the localPresenceUUID in sendStartFollowMessage", 66, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v24 = *(v19 + 16);
    v41 = v21;
    v24(v15, v21, v18);
    v42 = v19;
    v25 = *(v19 + 56);
    v25(v15, 0, 1, v18);
    v24(v12, v46, v18);
    v46 = v18;
    v25(v12, 0, 1, v18);
    sub_100B81020(v15, v12, v4);
    (*(v5 + 56))(v4, 0, 1, v47);
    v26 = v45;
    sub_10090F9B0(v4, v45, type metadata accessor for CRLStartOrEndFollow);
    type metadata accessor for CRContext();
    memset(v48, 0, 40);
    v27 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
    sub_10000CAAC(v48, &qword_101A07B90);
    v29 = sub_100B8134C();
    v31 = v30;

    sub_100024E98(v29, v31);
    v32 = sub_1008FC774();
    if (v32)
    {
      v33 = v32;
      sub_100024E98(v29, v31);
      sub_1010FA260(2, v29, v31, 1, v33);

      sub_10002640C(v29, v31);
    }

    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlFollow;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10090F948(v26, v44, type metadata accessor for CRLStartOrEndFollow);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    v39 = static os_log_type_t.default.getter();
    sub_100005404(v34, &_mh_execute_header, v39, "Sending end follow message: %@", 30, 2, inited);
    sub_10002640C(v29, v31);
    sub_10002640C(v29, v31);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10090FA18(v26, type metadata accessor for CRLStartOrEndFollow);
    (*(v42 + 8))(v41, v46);
    return 1;
  }
}

uint64_t sub_1008FD628(uint64_t a1)
{
  v46 = a1;
  v2 = sub_1005B981C(&qword_101A07BB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40[-v3];
  v47 = type metadata accessor for CRLStartOrEndFollow();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v45 = &v40[-v8];
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v40[-v13];
  __chkstk_darwin(v15);
  v17 = &v40[-v16];
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v40[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = v1;
  sub_100902EAC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000CAAC(v17, &qword_1019F6990);
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlFollow;
    v23 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v23, "Unable to retrieve the localPresenceUUID in sendStartFollowMessage", 66, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v24 = *(v19 + 16);
    v41 = v21;
    v24(v14, v21, v18);
    v42 = v19;
    v25 = *(v19 + 56);
    v25(v14, 0, 1, v18);
    v24(v11, v46, v18);
    v46 = v18;
    v25(v11, 0, 1, v18);
    sub_100B81020(v14, v11, v4);
    (*(v5 + 56))(v4, 0, 1, v47);
    v26 = v45;
    sub_10090F9B0(v4, v45, type metadata accessor for CRLStartOrEndFollow);
    type metadata accessor for CRContext();
    memset(v48, 0, 40);
    v27 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
    sub_10000CAAC(v48, &qword_101A07B90);
    v29 = sub_100B8134C();
    v31 = v30;

    sub_100024E98(v29, v31);
    v32 = sub_1008FC774();
    if (v32)
    {
      v33 = v32;
      sub_100024E98(v29, v31);
      sub_1010FA260(1, v29, v31, 1, v33);

      sub_10002640C(v29, v31);
    }

    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlFollow;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10090F948(v26, v44, type metadata accessor for CRLStartOrEndFollow);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v36;
    *(inited + 40) = v38;
    v39 = static os_log_type_t.default.getter();
    sub_100005404(v34, &_mh_execute_header, v39, "Sending start follow message: %@", 32, 2, inited);
    sub_10002640C(v29, v31);
    sub_10002640C(v29, v31);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    sub_10090FA18(v26, type metadata accessor for CRLStartOrEndFollow);
    (*(v42 + 8))(v41, v46);
    return 1;
  }
}

uint64_t sub_1008FE25C(uint64_t a1)
{
  v58 = a1;
  v62 = type metadata accessor for CRLRefuseOrEndFollow();
  __chkstk_darwin(v62);
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v57 = &v53 - v4;
  __chkstk_darwin(v5);
  v56 = &v53 - v6;
  __chkstk_darwin(v7);
  v60 = &v53 - v8;
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v53 - v13;
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v55 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v54 = v1;
  sub_100902EAC(v17);
  v24 = *(v19 + 48);
  if (v24(v17, 1, v18) == 1)
  {
    sub_10000CAAC(v17, &qword_1019F6990);
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlFollow;
    v26 = static os_log_type_t.default.getter();
    sub_100005404(v25, &_mh_execute_header, v26, "Unable to retrieve the localPresenceUUID in sendRefuseFollowMessage", 67, 2, _swiftEmptyArrayStorage);
    return 0;
  }

  v27 = v17;
  v28 = *(v19 + 32);
  v28(v23, v27, v18);
  (*(v19 + 16))(v14, v23, v18);
  v53 = v19;
  (*(v19 + 56))(v14, 0, 1, v18);
  sub_10063FD1C(v14, v11);
  v29 = v23;
  if (v24(v11, 1, v18) == 1)
  {
    sub_10000CAAC(v11, &qword_1019F6990);
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlFollow;
    v31 = static os_log_type_t.default.getter();
    sub_100005404(v30, &_mh_execute_header, v31, "Unable to generate a CRLRefuseFollow object in sendRefuseFollowMessage", 70, 2, _swiftEmptyArrayStorage);
    (*(v53 + 8))(v23, v18);
    return 0;
  }

  v32 = v55;
  v28(v55, v11, v18);
  v33 = v57;
  v55 = v18;
  v28(v57, v32, v18);
  *&v33[*(v62 + 20)] = v58;
  v34 = v33;
  v35 = v56;
  sub_10090F9B0(v34, v56, type metadata accessor for CRLRefuseOrEndFollow);
  v36 = v60;
  sub_10090F9B0(v35, v60, type metadata accessor for CRLRefuseOrEndFollow);
  type metadata accessor for CRContext();
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  v37 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  sub_10000CAAC(v63, &qword_101A07B90);
  v38 = sub_100FB16E4();
  v61 = v29;
  v40 = v38;
  v42 = v41;

  sub_100024E98(v40, v42);
  v43 = sub_1008FC774();
  v44 = v53;
  if (v43)
  {
    v45 = v43;
    sub_100024E98(v40, v42);
    sub_1010FA260(7, v40, v42, 1, v45);

    sub_10002640C(v40, v42);
  }

  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v46 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  sub_10090F948(v36, v59, type metadata accessor for CRLRefuseOrEndFollow);
  v48 = String.init<A>(describing:)();
  v49 = v36;
  v51 = v50;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v48;
  *(inited + 40) = v51;
  v52 = static os_log_type_t.default.getter();
  sub_100005404(v46, &_mh_execute_header, v52, "Sent a refuse follow message: %@", 32, 2, inited);
  sub_10002640C(v40, v42);
  sub_10002640C(v40, v42);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_10090FA18(v49, type metadata accessor for CRLRefuseOrEndFollow);
  (*(v44 + 8))(v61, v55);
  return 1;
}

void sub_1008FEE94(char a1)
{
  v5[3] = &type metadata for CRLFeatureFlags;
  v5[4] = sub_100004D60();
  LOBYTE(v5[0]) = 13;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v5);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v5[0])
    {

      if (qword_1019F21B8 != -1)
      {
        swift_once();
      }

      v3 = static OS_os_log.crlFollow;
      v4 = static os_log_type_t.default.getter();
      sub_100005404(v3, &_mh_execute_header, v4, "Calling didEndFollowing because of the public endFollowSessionForLocalParticipant method was called", 99, 2, _swiftEmptyArrayStorage);
      sub_1008FF010(a1 & 1);
    }
  }
}

void sub_1008FF010(int a1)
{
  v3 = v1;
  v141 = a1;
  v151 = type metadata accessor for Date();
  v140 = *(v151 - 1);
  v4 = __chkstk_darwin(v151);
  v150 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v149 = &v135 - v6;
  v142 = type metadata accessor for UUID();
  v139 = *(v142 - 8);
  v7 = __chkstk_darwin(v142);
  v137 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v138 = &v135 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v154[0];
  v11 = &type metadata for String;
  if (!v154[0])
  {
    v153 = objc_opt_self();
    v12 = [v153 _atomicIncrementAssertCount];
    v154[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v154);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v152;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 230;
    v2 = v154[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v2;
    v23 = v13;
    v11 = &type metadata for String;
    v24 = v23;
    v25 = v2;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

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
    v10 = String._bridgeToObjectiveC()();

    [v153 handleFailureInFunction:v30 file:v31 lineNumber:230 isFatal:0 format:v10 args:v29];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = v154[0];
  v33 = &qword_1019F2000;
  v34 = &unk_10146C000;
  if (v154[0])
  {
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v143 = v32;
    static Published.subscript.getter();

    v36 = v154[0];
    if (v154[0] >> 62)
    {
LABEL_29:
      v37 = _CocoaArrayWrapper.endIndex.getter();
      v38 = v143;
      if (v37)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v37 = *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v38 = v143;
      if (v37)
      {
LABEL_8:
        v148 = (v36 & 0xC000000000000001);
        if ((v36 & 0xC000000000000001) != 0)
        {
          v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_79;
          }

          v39 = *(v36 + 4);
        }

        KeyPath = v39;
        v136 = v3;
        if (v37 != 1)
        {
          v146 = v36;
          v147 = (v140 + 16);
          v144 = v36 & 0xFFFFFFFFFFFFFF8;
          v145 = (v140 + 8);
          v40 = 1;
          v41 = v151;
          while (2)
          {
            v152 = KeyPath;
            v34 = v40;
            while (1)
            {
              if (v148)
              {
                v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v43 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_26;
                }
              }

              else
              {
                if ((v34 & 0x8000000000000000) != 0)
                {
                  goto LABEL_27;
                }

                if (v34 >= *(v144 + 16))
                {
                  goto LABEL_28;
                }

                v42 = *(v36 + v34 + 4);
                v43 = (v34 + 1);
                if (__OFADD__(v34, 1))
                {
LABEL_26:
                  __break(1u);
LABEL_27:
                  __break(1u);
LABEL_28:
                  __break(1u);
                  goto LABEL_29;
                }
              }

              v153 = v43;
              KeyPath = v42;
              v44 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
              v45 = v152;
              swift_beginAccess();
              isa = v147->isa;
              v47 = &v45[v44];
              v48 = v149;
              (v147->isa)(v149, v47, v41);
              v49 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
              swift_beginAccess();
              v2 = v150;
              isa(v150, KeyPath + v49, v41);
              LOBYTE(v49) = static Date.< infix(_:_:)();
              v3 = v145;
              v11 = *v145;
              (*v145)(v2, v41);
              (v11)(v48, v41);
              if (v49)
              {
                break;
              }

              ++v34;
              v36 = v146;
              if (v153 == v37)
              {
                KeyPath = v152;
                v34 = 0x10146C000;
                goto LABEL_25;
              }
            }

            v40 = v153;
            v34 = 0x10146C000;
            v36 = v146;
            if (v153 != v37)
            {
              continue;
            }

            break;
          }
        }

LABEL_25:

        v50 = v139;
        v51 = v137;
        v52 = v142;
        (*(v139 + 2))(v137, KeyPath + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID, v142);

        v53 = v138;
        (*(v50 + 4))(v138, v51, v52);
        v3 = v136;
        sub_1008FC9F4(v53);
        (*(v50 + 1))(v53, v52);
        goto LABEL_34;
      }
    }

    v33 = &qword_1019F2000;
  }

  if (v33[55] != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  v55 = swift_initStackObject();
  *(v55 + 16) = *(v34 + 1712);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v56 = v154[0];
  sub_1005B981C(&qword_101A07B70);
  v57 = Optional.debugDescription.getter();
  v59 = v58;
  *(v55 + 56) = v11;
  *(v55 + 64) = sub_1000053B0();

  *(v55 + 32) = v57;
  *(v55 + 40) = v59;
  v60 = static os_log_type_t.default.getter();
  sub_100005404(v54, &_mh_execute_header, v60, "Did not have a presence UUID to send an endFollowMessage to for participant: %@", 79, 2, v55);
  swift_setDeallocating();
  sub_100005070(v55 + 32);
LABEL_34:
  if (qword_1019F21B8 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v61 = static OS_os_log.crlFollow;
    v147 = sub_1005B981C(&qword_1019F54E0);
    v62 = swift_initStackObject();
    *(v62 + 16) = *(v34 + 1712);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v63 = v154[0];
    sub_1005B981C(&qword_101A07B70);
    v64 = Optional.debugDescription.getter();
    v66 = v65;
    *(v62 + 56) = &type metadata for String;
    v148 = sub_1000053B0();
    *(v62 + 64) = v148;

    *(v62 + 32) = v64;
    v34 = v62 + 32;
    *(v62 + 40) = v66;
    v67 = static os_log_type_t.default.getter();
    sub_100005404(v61, &_mh_execute_header, v67, "Stopped following participant: %@", 33, 2, v62);
    swift_setDeallocating();
    sub_100005070(v62 + 32);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v68 = v154[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v154[0] = 0;
    v69 = v3;
    v153 = v69;
    static Published.subscript.setter();
    *&v69[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp] = 0;
    v152 = v68;
    if (!v68)
    {
      break;
    }

    v70 = swift_getKeyPath();
    swift_getKeyPath();
    v2 = v152;
    static Published.subscript.getter();

    KeyPath = v154[0];
    if (v154[0] >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
LABEL_73:

        break;
      }
    }

    else
    {
      v3 = *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_73;
      }
    }

    v147 = (KeyPath & 0xC000000000000001);
    if ((KeyPath & 0xC000000000000001) != 0)
    {
LABEL_79:
      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_81;
      }

      v71 = *(KeyPath + 32);
    }

    v148 = v71;
    v139 = v2;
    if (v3 != 1)
    {
      v142 = KeyPath & 0xFFFFFFFFFFFFFF8;
      v143 = v3;
      v145 = (v140 + 8);
      v146 = (v140 + 16);
      v76 = 1;
      v144 = KeyPath;
      v77 = v151;
      while (1)
      {
        if (v147)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v79 = (v76 + 1);
          if (__OFADD__(v76, 1))
          {
            goto LABEL_68;
          }
        }

        else
        {
          if ((v76 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          if (v76 >= *(v142 + 16))
          {
            goto LABEL_70;
          }

          v78 = *(KeyPath + 8 * v76 + 32);
          v79 = (v76 + 1);
          if (__OFADD__(v76, 1))
          {
            goto LABEL_68;
          }
        }

        v70 = v78;
        v80 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        v81 = v148;
        swift_beginAccess();
        v82 = v146->isa;
        v83 = v149;
        (v146->isa)(v149, v81 + v80, v77);
        v84 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        v85 = v150;
        v82(v150, v70 + v84, v77);
        LOBYTE(v84) = static Date.< infix(_:_:)();
        v34 = v145;
        v86 = *v145;
        (*v145)(v85, v77);
        (v86)(v83, v77);
        if (v84)
        {

          v148 = v70;
          v76 = v79;
          v3 = v143;
          KeyPath = v144;
          if (v79 == v143)
          {
            goto LABEL_43;
          }
        }

        else
        {

          ++v76;
          v3 = v143;
          KeyPath = v144;
          if (v79 == v143)
          {
            break;
          }
        }
      }
    }

    v70 = v148;
LABEL_43:

    v72 = [*&v153[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers] allObjects];
    sub_100006370(0, &qword_1019F8508);
    KeyPath = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(KeyPath >> 62))
    {
      v73 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v73)
      {
        goto LABEL_82;
      }

      goto LABEL_45;
    }

LABEL_81:
    v73 = _CocoaArrayWrapper.endIndex.getter();
    if (!v73)
    {
LABEL_82:

      goto LABEL_83;
    }

LABEL_45:
    v74 = 0;
    while (1)
    {
      if ((KeyPath & 0xC000000000000001) != 0)
      {
        v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v74 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v75 = *(KeyPath + 8 * v74 + 32);
      }

      v3 = v75;
      v34 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        break;
      }

      [v75 updateCollaboratorHUDForStopFollowingCollaborator:v70];

      ++v74;
      if (v34 == v73)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    swift_once();
  }

  v151 = objc_opt_self();
  v87 = [v151 _atomicIncrementAssertCount];
  v154[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v154);
  StaticString.description.getter();
  v88 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v89 = String._bridgeToObjectiveC()();

  v90 = [v89 lastPathComponent];

  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v93 = v92;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v94 = static OS_os_log.crlAssert;
  v95 = swift_initStackObject();
  *(v95 + 16) = xmmword_10146CA70;
  *(v95 + 56) = &type metadata for Int32;
  *(v95 + 64) = &protocol witness table for Int32;
  *(v95 + 32) = v87;
  v96 = sub_100006370(0, &qword_1019F4D30);
  *(v95 + 96) = v96;
  v97 = sub_1005CF04C();
  *(v95 + 72) = v88;
  v98 = v148;
  *(v95 + 136) = &type metadata for String;
  *(v95 + 144) = v98;
  *(v95 + 104) = v97;
  *(v95 + 112) = v91;
  *(v95 + 120) = v93;
  *(v95 + 176) = &type metadata for UInt;
  *(v95 + 184) = &protocol witness table for UInt;
  *(v95 + 152) = 245;
  v99 = v154[0];
  *(v95 + 216) = v96;
  *(v95 + 224) = v97;
  *(v95 + 192) = v99;
  v100 = v88;
  v101 = v99;
  v102 = static os_log_type_t.error.getter();
  sub_100005404(v94, &_mh_execute_header, v102, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v95);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v103 = static os_log_type_t.error.getter();
  sub_100005404(v94, &_mh_execute_header, v103, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v104 = swift_allocObject();
  v104[2] = 8;
  v104[3] = 0;
  v104[4] = 0;
  v104[5] = 0;
  v105 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v106 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v107 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v108 = String._bridgeToObjectiveC()();

  [v151 handleFailureInFunction:v106 file:v107 lineNumber:245 isFatal:0 format:v108 args:v105];

LABEL_83:
  v109 = [*&v153[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers] allObjects];
  sub_100006370(0, &qword_1019F8508);
  v110 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v110 >> 62)
  {
    goto LABEL_95;
  }

  for (i = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v112 = 0;
    v150 = (v110 & 0xFFFFFFFFFFFFFF8);
    v151 = (v110 & 0xC000000000000001);
    v147 = @"CRLCanvasWillZoomNotification";
    v148 = @"CRLCanvasWillScrollNotification";
    v146 = @"CRLEditorControllerSelectionPathDidChangeNotification";
    v149 = v110;
    while (1)
    {
      if (v151)
      {
        v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v112 >= *(v150 + 2))
        {
          goto LABEL_94;
        }

        v113 = *(v110 + 8 * v112 + 32);
      }

      v114 = v113;
      v115 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        break;
      }

      v116 = objc_opt_self();
      v117 = [v116 defaultCenter];
      v118 = v153;
      [v117 removeObserver:v153 name:v148 object:v114];

      v119 = [v116 defaultCenter];
      [v119 removeObserver:v118 name:v147 object:v114];

      v120 = [v116 defaultCenter];
      v121 = [v114 editorController];
      v122 = v118;
      v110 = v149;
      [v120 removeObserver:v122 name:v146 object:v121];

      ++v112;
      if (v115 == i)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    ;
  }

LABEL_96:

  v123 = [*&v153[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates] allObjects];
  sub_1005B981C(&qword_101A07B78);
  v124 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v124 >> 62)
  {
    goto LABEL_108;
  }

  v125 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v126 = v141;
  if (v125)
  {
LABEL_98:
    v127 = 0;
    do
    {
      if ((v124 & 0xC000000000000001) != 0)
      {
        v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v129 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v127 >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_107;
        }

        v128 = *(v124 + 8 * v127 + 32);
        swift_unknownObjectRetain();
        v129 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          v125 = _CocoaArrayWrapper.endIndex.getter();
          v126 = v141;
          if (!v125)
          {
            break;
          }

          goto LABEL_98;
        }
      }

      [v128 didEndFollowingParticipant:v152 shouldShowRefollowPlacard:v126 & 1];
      swift_unknownObjectRelease();
      ++v127;
    }

    while (v129 != v125);
  }

  v130 = v153;
  sub_100903CF4(v154);
  v131 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver;
  swift_beginAccess();
  sub_10002C638(v154, &v130[v131], &unk_101A08DE0);
  swift_endAccess();
  v132 = objc_opt_self();
  v133 = [v132 defaultCenter];
  if (qword_1019F15B0 != -1)
  {
    swift_once();
  }

  [v133 removeObserver:v130 name:qword_101AD6548 object:0];

  v134 = [v132 defaultCenter];
  [v134 removeObserver:v130 name:UIDeviceOrientationDidChangeNotification object:0];
}

void sub_100900650(char **a1, int a2)
{
  LODWORD(v3) = a2;
  v5 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v5 - 8);
  v91 = &v86[-v6];
  v98 = type metadata accessor for Date();
  v7 = *(v98 - 8);
  __chkstk_darwin(v98);
  *&v100 = &v86[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v99 = &v86[-v10];
  if (qword_1019F21B8 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v11 = static OS_os_log.crlFollow;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v12, "Wants to start following a collaborator", 39, 2, _swiftEmptyArrayStorage);
    v92 = KeyPath;
    v90 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant;
    v13 = *(KeyPath + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant);
    if (v13)
    {
      type metadata accessor for CRLCollaborationParticipant(0);
      v14 = v13;
      v15 = a1;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        return;
      }
    }

    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v17 = aBlock[0];
    if (aBlock[0] >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (!v18)
      {
LABEL_57:

        v53 = static os_log_type_t.default.getter();
        sub_100005404(v11, &_mh_execute_header, v53, "Unable to retrieve the latestPresence of the collaborator we are trying to follow in localParticipantWantsToStartFollowing", 122, 2, _swiftEmptyArrayStorage);
        return;
      }
    }

    else
    {
      v18 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_57;
      }
    }

    v97 = v17 & 0xC000000000000001;
    v89 = v11;
    v88 = a1;
    v87 = v3;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_60;
      }

      v19 = *(v17 + 32);
    }

    v101 = v19;
    if (v18 == 1)
    {
      break;
    }

    v93 = v17 & 0xFFFFFFFFFFFFFF8;
    v96 = (v7 + 16);
    v94 = (v7 + 8);
    v20 = 1;
    v95 = v17;
    v3 = v98;
    while (1)
    {
      if (v97)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          goto LABEL_53;
        }

        if (v20 >= *(v93 + 16))
        {
          goto LABEL_54;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      KeyPath = v21;
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      v24 = v101;
      swift_beginAccess();
      v25 = KeyPath;
      v26 = *v96;
      v27 = &v24[v23];
      v28 = v99;
      (*v96)(v99, v27, v3);
      v29 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
      swift_beginAccess();
      v30 = v100;
      v26(v100, &v25[v29], v3);
      v7 = static Date.< infix(_:_:)();
      a1 = v94;
      KeyPath = *v94;
      (*v94)(v30, v3);
      (KeyPath)(v28, v3);
      if (v7)
      {

        v101 = v25;
        ++v20;
        KeyPath = v25;
        v17 = v95;
        if (v22 == v18)
        {
          goto LABEL_23;
        }
      }

      else
      {

        ++v20;
        v17 = v95;
        if (v22 == v18)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

LABEL_22:
  KeyPath = v101;
LABEL_23:

  v31 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v100 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  a1 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  v101 = KeyPath;
  v33 = UUID.uuidString.getter();
  v35 = v34;
  *(inited + 56) = &type metadata for String;
  v36 = sub_1000053B0();
  *(inited + 64) = v36;
  *(inited + 32) = v33;
  *(inited + 40) = v35;
  v37 = static os_log_type_t.default.getter();
  v7 = v89;
  sub_100005404(v89, &_mh_execute_header, v37, "Wants to start following presence ID: %{public}@", 48, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  KeyPath = v92;
  v38 = sub_1008FBCE0();
  LOBYTE(inited) = sub_10079DC7C(v88, v38);

  if ((inited & 1) == 0)
  {
    goto LABEL_35;
  }

  v39 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v39, "Detected circular follow request. Notifying delegate and aborting.", 66, 2, _swiftEmptyArrayStorage);
  v40 = [*(KeyPath + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates) allObjects];
  sub_1005B981C(&qword_101A07B78);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    KeyPath = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (KeyPath)
    {
      goto LABEL_26;
    }

LABEL_61:

    return;
  }

LABEL_60:
  KeyPath = _CocoaArrayWrapper.endIndex.getter();
  if (!KeyPath)
  {
    goto LABEL_61;
  }

LABEL_26:
  v41 = 0;
  v31 = v18 & 0xFFFFFFFFFFFFFF8;
  a1 = &selRef_canRemoveImageBackground;
  while ((v18 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v36 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      goto LABEL_34;
    }

LABEL_30:
    [v7 showFollowFailedAlertFor:1];
    swift_unknownObjectRelease();
    ++v41;
    if (v36 == KeyPath)
    {
      goto LABEL_61;
    }
  }

  if (v41 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_51;
  }

  v7 = *(v18 + 8 * v41 + 32);
  swift_unknownObjectRetain();
  v36 = v41 + 1;
  if (!__OFADD__(v41, 1))
  {
    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v97 = v31;
  v42 = [*(KeyPath + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
  sub_100006370(0, &qword_1019F8508);
  KeyPath = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = a1;
  v98 = v36;
  if (KeyPath >> 62)
  {
    v43 = _CocoaArrayWrapper.endIndex.getter();
    if (v43)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v43 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
LABEL_37:
      v44 = 0;
      LODWORD(v3) = KeyPath & 0xFFFFFFF8;
      v7 = &selRef_scrollViewDidEndScrollingAnimation_;
      do
      {
        if ((KeyPath & 0xC000000000000001) != 0)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v44 >= *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v45 = *(KeyPath + 8 * v44 + 32);
        }

        v46 = v45;
        a1 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          goto LABEL_50;
        }

        v47 = [v45 *(v7 + 832)];
        if (v47)
        {
          v48 = v47;
          v49 = [v47 selectionPathForInfos:0];

          if (v49)
          {
            v50 = [v46 editorController];
            if (v50)
            {
              v51 = v7;
              v52 = v50;
              [v50 setSelectionPath:v49 withFlags:0];

              v49 = v52;
              v7 = v51;
            }
          }
        }

        ++v44;
      }

      while (a1 != v43);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v54 = aBlock[0];
  v55 = v89;
  v56 = v88;
  v57 = v87;
  v58 = v99;
  v59 = v98;
  if (aBlock[0])
  {
    type metadata accessor for CRLCollaborationParticipant(0);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v60 = static os_log_type_t.default.getter();
      sub_100005404(v55, &_mh_execute_header, v60, "Already following another user. Ending that follow session.", 59, 2, _swiftEmptyArrayStorage);
      sub_1008FEE94(0);
    }
  }

  v61 = type metadata accessor for CRLFollowViewportState();
  v62 = v91;
  (*(*(v61 - 8) + 56))(v91, 1, 1, v61);
  v63 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply;
  swift_beginAccess();
  v64 = v92;
  sub_10002C638(v62, v92 + v63, &qword_101A07B80);
  swift_endAccess();
  if (*(v64 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
  {
    v65 = static os_log_type_t.default.getter();
    sub_100005404(v55, &_mh_execute_header, v65, "We have followers that can no longer follow us. Notifying them.", 63, 2, _swiftEmptyArrayStorage);
    sub_1008FE25C(0);
  }

  *(v64 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowIsRefollow) = v57 & 1;
  v66 = v101;
  if (sub_1008FD628(v58 + v101))
  {
    v67 = *(v92 + v90);
    *(v92 + v90) = v56;
    v68 = v56;

    v69 = v92;
    v70 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer;
    v71 = *(v92 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer);
    if (v71)
    {
      [v71 invalidate];
      v72 = *(v69 + v70);
      *(v69 + v70) = 0;
    }

    v73 = swift_initStackObject();
    *(v73 + 16) = v100;
    v74 = v101;
    v75 = UUID.uuidString.getter();
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = v59;
    *(v73 + 32) = v75;
    *(v73 + 40) = v76;
    v77 = static os_log_type_t.default.getter();
    sub_100005404(v55, &_mh_execute_header, v77, "Starting timer for start follow request for presence ID: %{public}@", 67, 2, v73);
    swift_setDeallocating();
    sub_100005070(v73 + 32);
    v78 = objc_opt_self();
    v79 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v80 = swift_allocObject();
    *(v80 + 16) = v79;
    *(v80 + 24) = v74;
    aBlock[4] = sub_10090F940;
    aBlock[5] = v80;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_10188D2A8;
    v81 = _Block_copy(aBlock);
    v82 = v74;

    v83 = [v78 scheduledTimerWithTimeInterval:0 repeats:v81 block:5.0];

    _Block_release(v81);
    v84 = *(v69 + v70);
    *(v69 + v70) = v83;
  }

  else
  {
    v85 = static os_log_type_t.default.getter();
    sub_100005404(v55, &_mh_execute_header, v85, "Failed to send start follow message. Aborting", 45, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100901320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1019F21B8 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v6 = static OS_os_log.crlFollow;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v8 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
      v9 = UUID.uuidString.getter();
      v11 = v10;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v9;
      *(inited + 40) = v11;
      v12 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v12, "Start follow timer fired for presence ID: %{public}@", 52, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      if ((sub_1008FB7A4() & 1) != 0 || (v13 = *&v5[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant]) == 0)
      {
LABEL_20:

        return;
      }

      v24 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_10146C6B0;
      *(v14 + 56) = type metadata accessor for CRLCollaborationParticipant(0);
      *(v14 + 64) = sub_10090F834(&qword_101A07BA8, type metadata accessor for CRLCollaborationParticipant);
      *(v14 + 32) = v13;
      v26 = v13;
      v15 = static os_log_type_t.default.getter();
      sub_100005404(v6, &_mh_execute_header, v15, "Start follow session failed for unknown reason. unconfirmedFollowingParticipant: %@", 83, 2, v14);
      swift_setDeallocating();
      sub_100005070(v14 + 32);
      v16 = [*&v5[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates] allObjects];
      sub_1005B981C(&qword_101A07B78);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v8;
      if (v17 >> 62)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
        if (!v18)
        {
LABEL_19:

          v22 = *&v5[v24];
          *&v5[v24] = 0;

          v23 = *&v5[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer];
          *&v5[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer] = 0;

          *&v5[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp] = 0;
          sub_1008FC9F4(a3 + v25);

          goto LABEL_20;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_19;
        }
      }

      v19 = 0;
      while ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_15;
        }

LABEL_11:
        [v20 showFollowFailedAlertFor:{0, v24}];
        swift_unknownObjectRelease();
        ++v19;
        if (v21 == v18)
        {
          goto LABEL_19;
        }
      }

      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v20 = *(v17 + 8 * v19 + 32);
      swift_unknownObjectRetain();
      v21 = v19 + 1;
      if (!__OFADD__(v19, 1))
      {
        goto LABEL_11;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      swift_once();
    }
  }
}

void sub_100901770(void *a1)
{
  v2 = v1;
  v112 = a1;
  v3 = type metadata accessor for UUID();
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for Date();
  v110 = *(v108 - 8);
  v5 = __chkstk_darwin(v108);
  v107 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v94 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v113[0];
  if (v113[0])
  {
    v109 = v1;
    v111 = objc_opt_self();
    v9 = [v111 _atomicIncrementAssertCount];
    v113[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v113);
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
    *(inited + 152) = 365;
    v21 = v113[0];
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
    sub_100005404(v16, &_mh_execute_header, v25, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

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

    [v111 handleFailureInFunction:v28 file:v29 lineNumber:365 isFatal:0 format:v30 args:v27];

    v2 = v109;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v112;
  v113[0] = v112;
  v32 = v2;
  v112 = v31;
  static Published.subscript.setter();
  v33 = *&v32[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant];
  *&v32[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowingParticipant] = 0;

  *&v32[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_latestViewportUpdateTimestamp] = 0;
  v34 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer;
  v35 = *&v32[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowTimer];
  if (v35)
  {
    [v35 invalidate];
    v36 = *&v32[v34];
    *&v32[v34] = 0;
  }

  v37 = [*&v32[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates] allObjects];
  sub_1005B981C(&qword_101A07B78);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v111 = v32;
  if (v38 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v40 = 0;
    while ((v38 & 0xC000000000000001) != 0)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_17;
      }

LABEL_13:
      [v41 didStartFollowingParticipant:v112];
      swift_unknownObjectRelease();
      ++v40;
      if (v42 == i)
      {
        goto LABEL_20;
      }
    }

    if (v40 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v41 = *(v38 + 8 * v40 + 32);
    swift_unknownObjectRetain();
    v42 = v40 + 1;
    if (!__OFADD__(v40, 1))
    {
      goto LABEL_13;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:

  v43 = [*&v111[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers] allObjects];
  sub_100006370(0, &qword_1019F8508);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    goto LABEL_32;
  }

  for (j = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v46 = 0;
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v47 = *(v44 + 8 * v46 + 32);
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v113[0] = v47;
      sub_1009025D0(v113, v111, v112);

      ++v46;
      if (v49 == j)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

LABEL_33:
  v96 = 0;

  v50 = v111;
  sub_100903CF4(v113);
  v51 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver;
  swift_beginAccess();
  sub_10002C638(v113, &v50[v51], &unk_101A08DE0);
  swift_endAccess();
  v52 = objc_opt_self();
  v53 = &selRef_crlaxViewAncestorOfType_;
  v54 = [v52 defaultCenter];
  if (qword_1019F15B0 != -1)
  {
LABEL_58:
    swift_once();
  }

  [v54 addObserver:v50 selector:? name:? object:?];

  v55 = [v52 v53[190]];
  [v55 addObserver:v50 selector:"deviceDidRotateWhileFollowingNotification:" name:UIDeviceOrientationDidChangeNotification object:0];

  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v56 = static OS_os_log.crlFollow;
  sub_1005B981C(&qword_1019F54E0);
  v57 = swift_initStackObject();
  *(v57 + 16) = xmmword_10146C6B0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = v113[0];
  if (v113[0] >> 62)
  {
    v58 = _CocoaArrayWrapper.endIndex.getter();
    if (v58)
    {
      goto LABEL_38;
    }

LABEL_60:

    v76 = 0;
    goto LABEL_61;
  }

  v58 = *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v58)
  {
    goto LABEL_60;
  }

LABEL_38:
  v105 = v52 & 0xC000000000000001;
  if ((v52 & 0xC000000000000001) != 0)
  {
    v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v59 = *(v52 + 32);
  }

  v54 = v59;
  v97 = v57;
  if (v58 != 1)
  {
    v103 = v52;
    v104 = (v110 + 16);
    v101 = v52 & 0xFFFFFFFFFFFFFF8;
    v102 = (v110 + 8);
    v60 = 1;
    v95 = v56;
    while (2)
    {
      v109 = v54;
      v61 = v60;
      while (1)
      {
        if (v105)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v61 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

          if (v61 >= *(v101 + 16))
          {
            goto LABEL_57;
          }

          v62 = *(v52 + 8 * v61 + 32);
        }

        v63 = v62;
        if (__OFADD__(v61, 1))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v110 = v61 + 1;
        v64 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        v65 = v109;
        swift_beginAccess();
        v66 = *v104;
        v67 = &v65[v64];
        v50 = v106;
        v54 = v108;
        (*v104)(v106, v67, v108);
        v68 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        v69 = &v63[v68];
        v70 = v63;
        v71 = v107;
        v66(v107, v69, v54);
        LOBYTE(v68) = static Date.< infix(_:_:)();
        v53 = v102;
        v72 = *v102;
        (*v102)(v71, v54);
        (v72)(v50, v54);
        if (v68)
        {
          break;
        }

        ++v61;
        v52 = v103;
        if (v110 == v58)
        {
          v54 = v109;
          v56 = v95;
          goto LABEL_54;
        }
      }

      v60 = v110;
      v56 = v95;
      v52 = v103;
      v54 = v70;
      if (v110 != v58)
      {
        continue;
      }

      break;
    }
  }

LABEL_54:

  v73 = v98;
  v74 = v99;
  v75 = v100;
  (*(v99 + 16))(v98, &v54[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v100);

  v76 = UUID.uuidString.getter();
  v58 = v77;
  (*(v74 + 8))(v73, v75);
  v57 = v97;
LABEL_61:
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = sub_1000053B0();
  if (v58)
  {
    v78 = v76;
  }

  else
  {
    v78 = 0;
  }

  v79 = 0xE000000000000000;
  if (v58)
  {
    v79 = v58;
  }

  *(v57 + 32) = v78;
  *(v57 + 40) = v79;
  v80 = static os_log_type_t.default.getter();
  sub_100005404(v56, &_mh_execute_header, v80, "Started following presence ID: %{public}@", 41, 2, v57);
  swift_setDeallocating();
  sub_100005070(v57 + 32);
  v81 = objc_opt_self();
  v82 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(12);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v81 sendEventInDomain:v82 lazily:1 eventPayload:isa];

  if (v111[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowIsRefollow] == 1)
  {
    v111[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_unconfirmedFollowIsRefollow] = 0;
    v84 = String._bridgeToObjectiveC()();
    _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(13);
    v85 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v81 sendEventInDomain:v84 lazily:1 eventPayload:v85];
  }

  v86 = sub_10090E86C();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (!Strong)
  {
    goto LABEL_74;
  }

  v88 = swift_unknownObjectWeakLoadStrong();
  if (!v88)
  {
    v92 = Strong;
    goto LABEL_73;
  }

  v89 = v88;
  type metadata accessor for CRLCollaborationParticipant(0);
  v90 = Strong;
  v91 = static NSObject.== infix(_:_:)();

  if ((v91 & 1) == 0)
  {
LABEL_73:
    sub_100CC542C();

    v93 = OBJC_IVAR____TtC8Freeform43CRLFollowAccessibilityExperienceCoordinator_historyBuffer;
    swift_beginAccess();
    *&v86[v93] = _swiftEmptyArrayStorage;

    goto LABEL_74;
  }

LABEL_74:
  if ([objc_opt_self() isVoiceOverOrSwitchControlEnabled])
  {
    sub_100CC4F54();
  }

  else
  {
    sub_100CC542C();
  }
}

void sub_1009025D0(void **a1, uint64_t a2, void *a3)
{
  v59 = a3;
  v56 = type metadata accessor for Date();
  v49 = *(v56 - 8);
  v5 = __chkstk_darwin(v56);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = (&v47 - v7);
  v8 = *a1;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  v11 = &selRef__crlaxSetShouldPreventAccessToCanvas_;
  [v10 addObserver:a2 selector:"canvasDidZoomOrScrollWhileFollowingNotification:" name:@"CRLCanvasWillScrollNotification" object:v8];

  v12 = [v9 defaultCenter];
  [v12 addObserver:a2 selector:"canvasDidZoomOrScrollWhileFollowingNotification:" name:@"CRLCanvasWillZoomNotification" object:v8];

  v13 = [v9 defaultCenter];
  v14 = @"CRLEditorControllerSelectionPathDidChangeNotification";
  v47 = v8;
  v15 = [v8 editorController];
  [v13 addObserver:a2 selector:"selectionPathDidChangeWithNotification:" name:@"CRLEditorControllerSelectionPathDidChangeNotification" object:v15];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v58;
  if (v58 >> 62)
  {
    goto LABEL_24;
  }

  v17 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    while (1)
    {
      v53 = v16 & 0xC000000000000001;
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v18 = *(v16 + 32);
      }

      v57 = v18;
      if (v17 == 1)
      {
        break;
      }

      v51 = (v49 + 2);
      v52 = v16;
      v48 = v16 & 0xFFFFFFFFFFFFFF8;
      ++v49;
      v19 = 1;
      v50 = v17;
      while (1)
      {
        if (v53)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_22;
          }

          if (v19 >= *(v48 + 16))
          {
            goto LABEL_23;
          }

          v20 = *(v16 + 8 * v19 + 32);
        }

        v15 = v20;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v59 = (v19 + 1);
        v21 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        v22 = v57;
        swift_beginAccess();
        v23 = *v51;
        v24 = &v22[v21];
        v11 = v54;
        v25 = v56;
        (*v51)(v54, v24, v56);
        v26 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        v27 = &v15[v26];
        v28 = v15;
        v15 = v55;
        v23(v55, v27, v25);
        v14 = static Date.< infix(_:_:)();
        v29 = *v49;
        (*v49)(v15, v25);
        v29(v11, v25);
        if (v14)
        {

          v57 = v28;
          v19 = v59;
          v16 = v52;
          v11 = v28;
          if (v59 == v50)
          {
            goto LABEL_8;
          }
        }

        else
        {

          ++v19;
          v16 = v52;
          if (v59 == v50)
          {
            goto LABEL_7;
          }
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      v17 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
        goto LABEL_25;
      }
    }

LABEL_7:
    v11 = v57;
LABEL_8:

    [v47 updateCollaboratorHUDForBeginFollowingCollaborator:v11];
  }

  else
  {
LABEL_25:

    v59 = objc_opt_self();
    LODWORD(v16) = [v59 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v32;

    if (qword_1019F20A0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v35 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v35;
    v36 = sub_1005CF04C();
    *(inited + 104) = v36;
    *(inited + 72) = v11;
    *(inited + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v14;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v37;
    *(inited + 152) = 383;
    v38 = v58;
    *(inited + 216) = v35;
    *(inited + 224) = v36;
    *(inited + 192) = v38;
    v39 = v11;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v43 = swift_allocObject();
    v43[2] = 8;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    [v59 handleFailureInFunction:v45 file:v46 lineNumber:383 isFatal:0 format:v11 args:v44];
  }
}

uint64_t sub_100902EAC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v10 + v11, v8, &qword_101A08DF0);
    swift_unknownObjectRelease();
    if ((*(v3 + 48))(v8, 1, v2))
    {
      sub_10000CAAC(v8, &qword_101A08DF0);
    }

    else
    {
      sub_10090F948(v8, v5, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v8, &qword_101A08DF0);

      sub_10090FA18(v5, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v14 = sub_1007DE5D0();

      if (v14)
      {
        v15 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
        v16 = type metadata accessor for UUID();
        v17 = *(v16 - 8);
        (*(v17 + 16))(a1, &v14[v15], v16);

        return (*(v17 + 56))(a1, 0, 1, v16);
      }
    }
  }

  v12 = type metadata accessor for UUID();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_1009031B0()
{
  v1 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  sub_100902EAC(&v22 - v2);
  v4 = type metadata accessor for UUID();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  result = sub_10000CAAC(v3, &qword_1019F6990);
  if (v5 != 1)
  {
    *(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) = 1;
    sub_100903CF4(v28);
    v7 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver;
    swift_beginAccess();
    sub_10002C638(v28, v0 + v7, &unk_101A08DE0);
    swift_endAccess();
    v8 = [*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
    sub_100006370(0, &qword_1019F8508);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v11 = 0;
      v27 = v9 & 0xC000000000000001;
      v25 = @"CRLCanvasUpdateScrollNotification";
      v26 = v9 & 0xFFFFFFFFFFFFFF8;
      v23 = @"CRLCanvasUpdateZoomNotification";
      v24 = @"CRLCanvasDidScrollNotification";
      v22 = @"CRLCanvasDidZoomNotification";
      while (1)
      {
        if (v27)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v26 + 16))
          {
            goto LABEL_13;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = objc_opt_self();
        v16 = [v15 defaultCenter];
        [v16 addObserver:v0 selector:"canvasUpdateScrollWhileHostingWithNotification:" name:v25 object:v13];

        v17 = [v15 defaultCenter];
        [v17 addObserver:v0 selector:"canvasDidScrollWhileHostingWithNotification:" name:v24 object:v13];

        v18 = [v15 defaultCenter];
        [v18 addObserver:v0 selector:"canvasUpdateZoomWhileHostingWithNotification:" name:v23 object:v13];

        v19 = [v15 defaultCenter];
        [v19 addObserver:v0 selector:"canvasDidZoomWhileHostingWithNotification:" name:v22 object:v13];

        ++v11;
        if (v14 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_1009056EC(0, 1);
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlFollow;
    v21 = static os_log_type_t.default.getter();
    return sub_100005404(v20, &_mh_execute_header, v21, "Started hosting a follow session", 32, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

uint64_t sub_100903598()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v2 - 8);
  v48 = &v46 - v3;
  v47 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) & 1) == 0)
  {
    v55 = objc_opt_self();
    v4 = [v55 _atomicIncrementAssertCount];
    v56[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v56);
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
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 458;
    v16 = v56[0];
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
    sub_100005404(v11, &_mh_execute_header, v20, "localParticipantDidStopHosting called when not being followed", 61, 2, _swiftEmptyArrayStorage);

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

    [v55 handleFailureInFunction:v23 file:v24 lineNumber:458 isFatal:0 format:v25 args:v22];
  }

  v26 = [*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
  sub_100006370(0, &qword_1019F8508);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v55 = v27;
  if (v27 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v29 = 0;
    v53 = v55 & 0xFFFFFFFFFFFFFF8;
    v54 = v55 & 0xC000000000000001;
    v52 = @"CRLCanvasUpdateScrollNotification";
    v51 = @"CRLCanvasDidScrollNotification";
    v50 = @"CRLCanvasUpdateZoomNotification";
    v49 = @"CRLCanvasDidZoomNotification";
    while (1)
    {
      if (v54)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v53 + 16))
        {
          goto LABEL_16;
        }

        v30 = *(v55 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = objc_opt_self();
      v34 = [v33 defaultCenter];
      [v34 removeObserver:v1 name:v52 object:v31];

      v35 = [v33 defaultCenter];
      [v35 removeObserver:v1 name:v51 object:v31];

      v36 = [v33 defaultCenter];
      [v36 removeObserver:v1 name:v50 object:v31];

      v37 = [v33 defaultCenter];
      [v37 removeObserver:v1 name:v49 object:v31];

      ++v29;
      if (v32 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  *(v1 + v47) = 0;
  sub_100903CF4(v56, v38);
  v39 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver;
  swift_beginAccess();
  sub_10002C638(v56, v1 + v39, &unk_101A08DE0);
  swift_endAccess();
  v40 = type metadata accessor for CRLFollowViewportState();
  v41 = v48;
  (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
  v42 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToSend;
  swift_beginAccess();
  sub_10002C638(v41, v1 + v42, &qword_101A07B80);
  swift_endAccess();
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v43 = static OS_os_log.crlFollow;
  v44 = static os_log_type_t.default.getter();
  return sub_100005404(v43, &_mh_execute_header, v44, "Stopped hosting a follow session", 32, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100903CF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1005B981C(&qword_101A07B98);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A08DF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_activeParticipantObserver;
  swift_beginAccess();
  v28 = v1;
  sub_10000BE14(v1 + v12, v29, &unk_101A08DE0);
  v13 = v30;
  result = sub_10000CAAC(v29, &unk_101A08DE0);
  if (v13)
  {
LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v24 = v8;
  v25 = v5;
  v15 = v27;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_5:
    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlFollow;
    v20 = static os_log_type_t.default.getter();
    result = sub_100005404(v19, &_mh_execute_header, v20, "Unable to retrieve the collaborationParticipants in addRemoveActiveParticipantObserver", 86, 2, _swiftEmptyArrayStorage);
    goto LABEL_8;
  }

  v17 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
  swift_beginAccess();
  sub_10000BE14(v17 + v18, v11, &qword_101A08DF0);
  swift_unknownObjectRelease();
  if ((*(v15 + 48))(v11, 1, v6))
  {
    sub_10000CAAC(v11, &qword_101A08DF0);
    goto LABEL_5;
  }

  v21 = v24;
  sub_10090F948(v11, v24, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  sub_10000CAAC(v11, &qword_101A08DF0);

  sub_10090FA18(v21, type metadata accessor for CRLBoard.RealTimeSessionInfo);
  swift_beginAccess();
  sub_1005B981C(&qword_101A00E48);
  v22 = v25;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001A2F8(&qword_101A07BA0, &qword_101A07B98);
  v23 = Publisher<>.sink(receiveValue:)();

  (*(v26 + 8))(v22, v3);
  *(a1 + 24) = type metadata accessor for AnyCancellable();
  *(a1 + 32) = &protocol witness table for AnyCancellable;

  *a1 = v23;
  return result;
}

void sub_100904184(unint64_t *a1)
{
  v2 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A08DF0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v44 = v5;
    v45 = v11;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = v51;
    if (!v51)
    {
      goto LABEL_22;
    }

    v47 = v3;
    v48 = v2;
    v49 = v14;
    v46 = v9;
    if (v12 >> 62)
    {
LABEL_42:
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    while (v16 != v17)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v18 = *(v12 + 8 * v17 + 32);
      }

      v19 = v18;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      sub_100006370(0, &qword_1019F54D0);
      v20 = static NSObject.== infix(_:_:)();

      ++v17;
      if (v20)
      {
        goto LABEL_21;
      }
    }

    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v23 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
      swift_beginAccess();
      v24 = v45;
      sub_10000BE14(v22 + v23, v45, &qword_101A08DF0);
      swift_unknownObjectRelease();
      v25 = v48;
      if ((*(v47 + 48))(v24, 1, v48))
      {
        sub_10000CAAC(v24, &qword_101A08DF0);
      }

      else
      {
        v26 = v44;
        sub_10090F948(v24, v44, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        sub_10000CAAC(v24, &qword_101A08DF0);
        v27 = *(v26 + *(v25 + 24));

        sub_10090FA18(v26, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        v28 = OBJC_IVAR____TtC8Freeform37CRLCollaborationParticipantCollection_pendingAddedParticipants;
        v29 = swift_beginAccess();
        v30 = *(v27 + v28);
        v51 = v15;
        __chkstk_darwin(v29);
        *(&v43 - 2) = &v51;

        LOBYTE(v26) = sub_100C33540(sub_10090FEB8, (&v43 - 4), v30);

        if (v26)
        {
LABEL_21:

          v2 = v48;
          v14 = v49;
          v9 = v46;
          v3 = v47;
LABEL_22:
          if (*(v14 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
          {
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = *(v33 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
              v35 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
              swift_beginAccess();
              sub_10000BE14(v34 + v35, v9, &qword_101A08DF0);
              swift_unknownObjectRelease();
              if ((*(v3 + 48))(v9, 1, v2))
              {
                sub_10000CAAC(v9, &qword_101A08DF0);
              }

              else
              {
                v38 = v44;
                sub_10090F948(v9, v44, type metadata accessor for CRLBoard.RealTimeSessionInfo);
                sub_10000CAAC(v9, &qword_101A08DF0);

                sub_10090FA18(v38, type metadata accessor for CRLBoard.RealTimeSessionInfo);
                v39 = sub_1007DE720();

                if (v39)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter();

                  if ((v50 & 0xC000000000000001) != 0)
                  {
                    v40 = __CocoaSet.count.getter();
                  }

                  else
                  {
                    v40 = *(v50 + 16);
                  }

                  if (!v40)
                  {
                    if (qword_1019F21B8 != -1)
                    {
                      swift_once();
                    }

                    v41 = static OS_os_log.crlFollow;
                    v42 = static os_log_type_t.default.getter();
                    sub_100005404(v41, &_mh_execute_header, v42, "Calling localParticipantDidStopHosting because there are no longer any followers", 80, 2, _swiftEmptyArrayStorage);
                    sub_100903598();
                  }

                  v14 = v39;
                  goto LABEL_29;
                }
              }
            }

            if (qword_1019F21B8 != -1)
            {
              swift_once();
            }

            v36 = static OS_os_log.crlFollow;
            v37 = static os_log_type_t.default.getter();
            sub_100005404(v36, &_mh_execute_header, v37, "Unable to retrieve the collaborationParticipants local participant in the active participant observer", 101, 2, _swiftEmptyArrayStorage);
          }

LABEL_29:

          return;
        }
      }
    }

    if (qword_1019F21B8 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlFollow;
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v32, "Calling didEndFollowing because the participant we were following is no longer an active participant", 100, 2, _swiftEmptyArrayStorage);
    sub_1008FF010(0);
    goto LABEL_21;
  }
}

id sub_1009048F8(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) allObjects];
  sub_100006370(0, &qword_1019F8508);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
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
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 *a1];

      if ((v10 & 1) == 0)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

void sub_100904A50(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
  {
    v7 = a3;
    v8 = a1;
    if ((a4() & 1) == 0)
    {
      sub_100904B68(v7, 0);
    }
  }
}

void sub_100904AE4(void *a1, uint64_t a2, void *a3)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) == 1)
  {
    v5 = a3;
    v6 = a1;
    sub_100904B68(v5, 1);
  }
}

void sub_100904B68(void *a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isFollowed) != 1)
  {
    v5 = objc_opt_self();
    v6 = [v5 _atomicIncrementAssertCount];
    *&v73[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v73);
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
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v17;
    *(inited + 152) = 554;
    v18 = *&v73[0];
    *(inited + 216) = v15;
    *(inited + 224) = v16;
    *(inited + 192) = v18;
    v19 = v7;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v13, &_mh_execute_header, v22, "viewportHasUpdated called when not being followed", 49, 2, _swiftEmptyArrayStorage);

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

    [v5 handleFailureInFunction:v25 file:v26 lineNumber:554 isFatal:0 format:v27 args:v24];
    goto LABEL_20;
  }

  if ([a1 object])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v73[0] = v71;
  v73[1] = v72;
  if (!*(&v72 + 1))
  {
    sub_10000CAAC(v73, &unk_1019F4D00);
    goto LABEL_14;
  }

  sub_100006370(0, &qword_1019F8508);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    *&v73[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v73);
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
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146CA70;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(v37 + 96) = v38;
    v39 = sub_1005CF04C();
    *(v37 + 104) = v39;
    *(v37 + 72) = v30;
    *(v37 + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(v37 + 112) = v33;
    *(v37 + 120) = v35;
    *(v37 + 176) = &type metadata for UInt;
    *(v37 + 184) = &protocol witness table for UInt;
    *(v37 + 144) = v40;
    *(v37 + 152) = 558;
    v41 = *&v73[0];
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
    *(v37 + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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
    v27 = String._bridgeToObjectiveC()();

    [v28 handleFailureInFunction:v48 file:v49 lineNumber:558 isFatal:0 format:v27 args:v47];

    goto LABEL_17;
  }

  v27 = v70;
  if (([*(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) containsObject:v70] & 1) == 0)
  {
LABEL_17:

    v50 = objc_opt_self();
    v51 = [v50 _atomicIncrementAssertCount];
    *&v73[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v73);
    StaticString.description.getter();
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v53 = String._bridgeToObjectiveC()();

    v54 = [v53 lastPathComponent];

    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v58 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v59 = swift_initStackObject();
    *(v59 + 16) = xmmword_10146CA70;
    *(v59 + 56) = &type metadata for Int32;
    *(v59 + 64) = &protocol witness table for Int32;
    *(v59 + 32) = v51;
    v60 = sub_100006370(0, &qword_1019F4D30);
    *(v59 + 96) = v60;
    v61 = sub_1005CF04C();
    *(v59 + 104) = v61;
    *(v59 + 72) = v52;
    *(v59 + 136) = &type metadata for String;
    v62 = sub_1000053B0();
    *(v59 + 112) = v55;
    *(v59 + 120) = v57;
    *(v59 + 176) = &type metadata for UInt;
    *(v59 + 184) = &protocol witness table for UInt;
    *(v59 + 144) = v62;
    *(v59 + 152) = 560;
    v63 = *&v73[0];
    *(v59 + 216) = v60;
    *(v59 + 224) = v61;
    *(v59 + 192) = v63;
    v64 = v52;
    v65 = v63;
    v66 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v66, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v59);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v58, &_mh_execute_header, v67, "CRLFollowCoordinator receiving viewport notifications for unknown ICC", 69, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v68 = swift_allocObject();
    v68[2] = 8;
    v68[3] = 0;
    v68[4] = 0;
    v68[5] = 0;
    v69 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v25 file:v26 lineNumber:560 isFatal:0 format:v27 args:v69];
LABEL_20:

    goto LABEL_21;
  }

  if (*(v2 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter) <= 0)
  {
    sub_1009056EC(a1, a2 & 1);
  }

LABEL_21:
}

void sub_1009056EC(void *a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLFollowViewportState();
  v92 = *(v6 - 8);
  v93 = v6;
  __chkstk_darwin(v6);
  v88 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v8 - 8);
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v78 - v11;
  __chkstk_darwin(v12);
  v14 = &v78 - v13;
  v15 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v15 - 8);
  v89 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v90 = &v78 - v18;
  __chkstk_darwin(v19);
  v21 = &v78 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v86 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v78 - v26;
  sub_100902EAC(v21);
  v28 = *(v23 + 48);
  if ((v28)(v21, 1, v22) != 1)
  {
    v31 = *(v23 + 32);
    v80 = v23 + 32;
    v79 = v31;
    v31(v27, v21, v22);
    if (a1)
    {
      if ([a1 object])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v98 = 0u;
        v99 = 0u;
      }

      v96 = v98;
      v97 = v99;
      if (*(&v99 + 1))
      {
        sub_100006370(0, &qword_1019F8508);
        if (swift_dynamicCast())
        {
          v32 = v100;
          if (v100)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

LABEL_15:
        v100 = 0;
LABEL_16:
        v33 = [*(v3 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers) anyObject];
        v34 = v100;
        v100 = v33;

        v32 = v100;
        if (!v100)
        {
          if (qword_1019F21B8 != -1)
          {
            swift_once();
          }

          v45 = static OS_os_log.crlFollow;
          v46 = static os_log_type_t.default.getter();
          sub_100005404(v45, &_mh_execute_header, v46, "Unable to retrieve an interactive canvas controller to generate a viewport", 74, 2, _swiftEmptyArrayStorage);
          (*(v23 + 8))(v27, v22);
          goto LABEL_46;
        }

        if (!a1)
        {
          v83 = v23;
          v35 = v100;
          goto LABEL_28;
        }

LABEL_18:
        v35 = v32;
        v36 = [a1 userInfo];
        v83 = v23;
        if (v36)
        {
          v84 = v28;
          v37 = v36;
          v38 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v39;
          AnyHashable.init<A>(_:)();
          v40 = *(v38 + 16);
          v82 = v27;
          if (v40 && (v41 = sub_1000640CC(&v96), (v42 & 1) != 0))
          {
            sub_100064288(*(v38 + 56) + 32 * v41, &v98);
            sub_100064234(&v96);

            if (*(&v99 + 1))
            {
              v43 = swift_dynamicCast();
              v28 = v84;
              if (v43)
              {
                v85 = a2;
                v44 = *&v96;
                goto LABEL_33;
              }

LABEL_32:
              v85 = a2;
              [v35 currentViewScale];
LABEL_33:
              v47 = v44;
              [v35 visibleBoundsRectForTiling];
              v84 = v35;
              [v35 convertBoundsToUnscaledRect:?];
              v49 = v48;
              v51 = v50;
              v53 = v52;
              v55 = v54;
              v81 = v3;
              v56 = (v3 + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToSend);
              swift_beginAccess();
              sub_10000BE14(v56, v14, &qword_101A07B80);
              v57 = *(v92 + 48);
              v58 = v57(v14, 1, v93);
              sub_10000CAAC(v14, &qword_101A07B80);
              if (v58 == 1)
              {
                v59 = v83;
                v60 = v28;
                v61 = v90;
                v62 = v82;
                (*(v83 + 16))(v90, v82, v22);
                (*(v59 + 56))(v61, 0, 1, v22);
                v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
                v64 = v89;
                sub_10000BE14(v61, v89, &qword_1019F6990);
                if (v60(v64, 1, v22) == 1)
                {
                  sub_10000CAAC(v64, &qword_1019F6990);
                  sub_10000CAAC(v61, &qword_1019F6990);
                  v65 = 1;
                  v66 = v93;
                  v67 = v91;
                }

                else
                {
                  v74 = v86;
                  v75 = v79;
                  v79(v86, v64, v22);
                  sub_10000CAAC(v61, &qword_1019F6990);
                  v66 = v93;
                  v76 = v88;
                  v75(v88 + *(v93 + 20), v74, v22);
                  *(v76 + *(v66 + 24)) = v47;
                  v77 = (v76 + *(v66 + 28));
                  *v77 = v49;
                  v77[1] = v51;
                  v77[2] = v53;
                  v77[3] = v55;
                  *v76 = v63;
                  v67 = v91;
                  sub_10090F9B0(v76, v91, type metadata accessor for CRLFollowViewportState);
                  v65 = 0;
                }

                (*(v92 + 56))(v67, v65, 1, v66);
                swift_beginAccess();
                sub_10002C638(v67, v56, &qword_101A07B80);
                swift_endAccess();
                sub_100907F70(v85 & 1);

                (*(v59 + 8))(v62, v22);
                goto LABEL_46;
              }

              v68 = v93;
              v69 = v84;
              if ((v85 & 1) == 0)
              {
                v70 = v87;
                sub_10000BE14(v56, v87, &qword_101A07B80);
                if (v57(v70, 1, v68) == 1)
                {
LABEL_50:
                  __break(1u);
                  return;
                }

                v101.origin.x = v49;
                v101.origin.y = v51;
                v101.size.width = v53;
                v101.size.height = v55;
                v71 = CGRectEqualToRect(v101, *(v70 + *(v68 + 28)));
                sub_10090FA18(v70, type metadata accessor for CRLFollowViewportState);
                if (v71)
                {
                  (*(v83 + 8))(v82, v22);

LABEL_46:
                  return;
                }
              }

              if (v57(v56, 1, v68) == 1)
              {
                __break(1u);
              }

              else
              {
                *(v56 + *(v68 + 24)) = v47;
                if (v57(v56, 1, v68) != 1)
                {
                  v72 = (v56 + *(v68 + 28));
                  *v72 = v49;
                  v72[1] = v51;
                  v72[2] = v53;
                  v72[3] = v55;
                  v73 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
                  if (v57(v56, 1, v68) != 1)
                  {
                    *v56 = v73;
                    sub_100907F70(v85 & 1);

                    (*(v83 + 8))(v82, v22);
                    goto LABEL_46;
                  }

                  goto LABEL_49;
                }
              }

              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          else
          {

            sub_100064234(&v96);
            v98 = 0u;
            v99 = 0u;
          }

          v28 = v84;
LABEL_31:
          sub_10000CAAC(&v98, &unk_1019F4D00);
          goto LABEL_32;
        }

LABEL_28:
        v82 = v27;
        v98 = 0u;
        v99 = 0u;
        goto LABEL_31;
      }
    }

    else
    {
      v96 = 0u;
      v97 = 0u;
    }

    sub_10000CAAC(&v96, &unk_1019F4D00);
    goto LABEL_15;
  }

  sub_10000CAAC(v21, &qword_1019F6990);
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v29 = static OS_os_log.crlFollow;
  v30 = static os_log_type_t.default.getter();
  sub_100005404(v29, &_mh_execute_header, v30, "Unable to retrieve the localPresenceUUID in generateAndSendViewportUpdate", 73, 2, _swiftEmptyArrayStorage);
}

void sub_10090624C(int a1)
{
  v90 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v93 = *(v5 - 8);
  __chkstk_darwin(v5);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLFollowViewportState();
  v8 = *(v7 - 8);
  v95 = v7;
  v96 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v89 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v85 - v11;
  v12 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v12 - 8);
  v14 = &v85 - v13;
  v15 = sub_1005B981C(&qword_101A07B80);
  __chkstk_darwin(v15 - 8);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v21 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_shouldSyncViewportState;
  if (v1[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_shouldSyncViewportState] != 1)
  {
    return;
  }

  v85 = v9;
  v86 = v4;
  v87 = v5;
  v88 = v2;
  v22 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_viewportToApply;
  swift_beginAccess();
  sub_10000BE14(&v1[v22], v20, &qword_101A07B80);
  v23 = sub_10090D0B4(v20);
  sub_10000CAAC(v20, &qword_101A07B80);
  v24 = v1;
  if (sub_1008FB7A4())
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v23 & 1) == 0)
  {
    v65 = objc_opt_self();
    v66 = [v65 _atomicIncrementAssertCount];
    v97[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v97);
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
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v66;
    v75 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v75;
    v76 = sub_1005CF04C();
    *(inited + 104) = v76;
    *(inited + 72) = v67;
    *(inited + 136) = &type metadata for String;
    v77 = sub_1000053B0();
    *(inited + 112) = v70;
    *(inited + 120) = v72;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v77;
    *(inited + 152) = 629;
    v78 = v97[0];
    *(inited + 216) = v75;
    *(inited + 224) = v76;
    *(inited + 192) = v78;
    v79 = v67;
    v80 = v78;
    v81 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v81, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v82 = static os_log_type_t.error.getter();
    sub_100005404(v73, &_mh_execute_header, v82, "syncViewportStateIfNeeded called when not following", 51, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v83 = swift_allocObject();
    v83[2] = 8;
    v83[3] = 0;
    v83[4] = 0;
    v83[5] = 0;
    v84 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    [v65 handleFailureInFunction:v48 file:v49 lineNumber:629 isFatal:0 format:v50 args:v84];
    goto LABEL_17;
  }

  v25 = type metadata accessor for UUID();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_expectingViewportFromUUID;
  swift_beginAccess();
  sub_10002C638(v14, &v24[v26], &qword_1019F6990);
  swift_endAccess();
LABEL_7:
  v24[v21] = 0;
  sub_10000BE14(&v24[v22], v17, &qword_101A07B80);
  v27 = v96;
  if ((*(v96 + 48))(v17, 1, v95) == 1)
  {
    sub_10000CAAC(v17, &qword_101A07B80);
    v28 = objc_opt_self();
    v29 = [v28 _atomicIncrementAssertCount];
    v97[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v97);
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
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_10146CA70;
    *(v37 + 56) = &type metadata for Int32;
    *(v37 + 64) = &protocol witness table for Int32;
    *(v37 + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(v37 + 96) = v38;
    v39 = sub_1005CF04C();
    *(v37 + 104) = v39;
    *(v37 + 72) = v30;
    *(v37 + 136) = &type metadata for String;
    v40 = sub_1000053B0();
    *(v37 + 112) = v33;
    *(v37 + 120) = v35;
    *(v37 + 176) = &type metadata for UInt;
    *(v37 + 184) = &protocol witness table for UInt;
    *(v37 + 144) = v40;
    *(v37 + 152) = 641;
    v41 = v97[0];
    *(v37 + 216) = v38;
    *(v37 + 224) = v39;
    *(v37 + 192) = v41;
    v42 = v30;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v37);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "syncViewportStateIfNeeded called with no viewportToApply", 56, 2, _swiftEmptyArrayStorage);

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

    [v28 handleFailureInFunction:v48 file:v49 lineNumber:641 isFatal:0 format:v50 args:v47];
LABEL_17:

    return;
  }

  v51 = v91;
  sub_10090F9B0(v17, v91, type metadata accessor for CRLFollowViewportState);
  if (qword_1019F21B8 != -1)
  {
    swift_once();
  }

  v52 = static OS_os_log.crlFollow;
  v53 = static os_log_type_t.default.getter();
  sub_100005404(v52, &_mh_execute_header, v53, "syncing ViewportState to canvas", 31, 2, _swiftEmptyArrayStorage);
  sub_100006370(0, &qword_1019F2D90);
  v54 = static OS_dispatch_queue.main.getter();
  v55 = v89;
  sub_10090F948(v51, v89, type metadata accessor for CRLFollowViewportState);
  v56 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v57 = v56 + v85;
  v58 = swift_allocObject();
  v58[2] = v24;
  sub_10090F9B0(v55, v58 + v56, type metadata accessor for CRLFollowViewportState);
  v59 = v58 + v57;
  *v59 = v90 & 1;
  v59[1] = v23 & 1;
  v97[4] = sub_10090F7A8;
  v97[5] = v58;
  v97[0] = _NSConcreteStackBlock;
  v97[1] = *"";
  v97[2] = sub_100007638;
  v97[3] = &unk_10188D190;
  v60 = _Block_copy(v97);
  v61 = v24;

  v62 = v92;
  static DispatchQoS.unspecified.getter();
  v97[0] = _swiftEmptyArrayStorage;
  sub_10090F834(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v63 = v86;
  v64 = v88;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v60);

  (*(v94 + 8))(v63, v64);
  (*(v93 + 8))(v62, v87);
  sub_10090FA18(v51, type metadata accessor for CRLFollowViewportState);
}

void sub_100906FC0(_BYTE *a1, uint64_t a2, char a3, int a4)
{
  v48 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v15 - 8);
  v17 = &v39[-v16];
  v18 = *&a1[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *&a1[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_syncingViewportStateCounter] = v20;
    v47 = v8;
    v42 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isUpdatingLocalICCState;
    a1[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_isUpdatingLocalICCState] = 1;
    static Date.now.getter();
    v21 = type metadata accessor for Date();
    v46 = v11;
    v22 = v21;
    v23 = *(v21 - 8);
    v44 = v10;
    v24 = *(v23 + 56);
    v45 = v12;
    v24(v17, 0, 1, v21);
    v40 = a4;
    v25 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_crlaxFollowFeatureLastScrollTimestamp;
    swift_beginAccess();
    sub_10002C638(v17, &a1[v25], &qword_101A0A320);
    swift_endAccess();
    v43 = v7;
    v26 = sub_10090E86C();
    sub_100CC7EB8();
    v27 = v48;
    sub_100CC8928(v48);

    v28 = [*&a1[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers] allObjects];
    sub_100006370(0, &qword_1019F8508);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v14;
    v30 = v29;

    __chkstk_darwin(v31);
    *&v39[-32] = v27;
    v39[-24] = a3 & 1;
    v39[-23] = v40 & 1;
    *&v39[-16] = a1;
    sub_1012EE97C(sub_10090F87C, &v39[-48], v30);

    a1[v42] = 0;
    static Date.now.getter();
    v24(v17, 0, 1, v22);
    swift_beginAccess();
    sub_10002C638(v17, &a1[v25], &qword_101A0A320);
    swift_endAccess();
    sub_100006370(0, &qword_1019F2D90);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = a1;
    aBlock[4] = sub_10090F8A4;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10188D1E0;
    v34 = _Block_copy(aBlock);
    v35 = a1;

    v36 = v41;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10090F834(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v38 = v43;
    v37 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);

    (*(v47 + 8))(v37, v38);
    (*(v45 + 8))(v36, v46);
  }
}