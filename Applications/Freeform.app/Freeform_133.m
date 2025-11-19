char *sub_101007A80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A045A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_101007B74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v116 = a3;
  v117 = sub_1005B981C(&unk_1019FFD10);
  v123 = *(v117 - 8);
  __chkstk_darwin(v117);
  v120 = &v103[-v9];
  v119 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v119);
  v118 = &v103[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v103[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1005B981C(&qword_1019F8790);
  v108 = *(v14 - 8);
  v109 = v14;
  __chkstk_darwin(v14);
  v16 = &v103[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v103[-v18];
  v20 = type metadata accessor for CRLWPEditor();
  v126[3] = v20;
  v126[4] = &off_101891630;
  v126[0] = a4;
  v107 = a5;
  v21 = *(a5 + 16);
  v22 = a4;
  sub_100A33D9C(a1, a2);
  v24 = v23;
  v26 = v25;
  v27 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v28 = sub_10078CDF0(v24, v26);
  v29 = &v28[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  sub_100A1ED54(*&v28[OBJC_IVAR____TtC8Freeform12CRLTextRange_range], 1, v19);
  v114 = v29;
  v30 = *(v29 + 1);
  v121 = v16;
  sub_100A1ED54(v30, 2, v16);
  sub_100020E58(v126, v20);
  v31 = type metadata accessor for CRLWPTextString();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v34 = v116;
  *v33 = v116;
  *(v33 + 1) = 0;
  v33[16] = 1;
  v125.receiver = v32;
  v125.super_class = v31;
  v35 = &selRef_ignoreUrl_;
  v36 = v34;
  v37 = objc_msgSendSuper2(&v125, "init");
  v106 = v28;
  sub_100A066F8(v28, v37);

  v115 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v122 = v21;
  v38 = *(v21 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (v38)
  {
    v39 = v118;
    (*(*v38 + 896))();
    v40 = v119;
    sub_1005E0A78(v39 + *(v119 + 20), v13);
    sub_1005E0ADC(v39, type metadata accessor for CRLWPShapeItemCRDTData);
    v41 = v123;
    v42 = v120;
    v43 = v117;
    v111 = v123[2];
    v112 = (v123 + 2);
    v111(v120, v13, v117);
    sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
    v113 = v19;
    v116 = CRAttributedString.index(of:)();
    v45 = v44;
    v47 = v41[1];
    v46 = v41 + 1;
    v110 = v47;
    v47(v42, v43);
    v48 = v46;
    if ((v45 & 1) == 0)
    {
      v69 = v42;
      v68 = v122;
      goto LABEL_6;
    }

    v105 = v13;
    v123 = v46;
    v116 = objc_opt_self();
    v104 = [v116 _atomicIncrementAssertCount];
    v124 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v124);
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    v51 = [v50 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v52;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v53 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v104;
      v55 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v55;
      v56 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v56;
      *(inited + 72) = v49;
      *(inited + 136) = &type metadata for String;
      v57 = sub_1000053B0();
      *(inited + 112) = v48;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v57;
      *(inited + 152) = 53;
      v58 = v124;
      *(inited + 216) = v55;
      *(inited + 224) = v56;
      *(inited + 192) = v58;
      v59 = v49;
      v60 = v58;
      v61 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v63 = swift_allocObject();
      v63[2] = 8;
      v63[3] = 0;
      v63[4] = 0;
      v63[5] = 0;
      v64 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v65 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v67 = String._bridgeToObjectiveC()();

      [v116 handleFailureInFunction:v65 file:v66 lineNumber:53 isFatal:0 format:v67 args:v64];

      v116 = *v114;
      v68 = v122;
      v48 = v123;
      v40 = v119;
      v69 = v120;
      v43 = v117;
      v39 = v118;
      v13 = v105;
      v35 = &selRef_ignoreUrl_;
LABEL_6:
      v70 = *(v68 + v115);
      if (!v70)
      {
        break;
      }

      (*(*v70 + 896))();
      sub_1005E0A78(v39 + *(v40 + 20), v13);
      sub_1005E0ADC(v39, type metadata accessor for CRLWPShapeItemCRDTData);
      v111(v69, v13, v43);
      sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
      v71 = CRAttributedString.index(of:)();
      v73 = v72;
      v110(v69, v43);
      if (v73)
      {
        v123 = objc_opt_self();
        v74 = [v123 _atomicIncrementAssertCount];
        v124 = [objc_allocWithZone(NSString) v35[165]];
        sub_100604538(_swiftEmptyArrayStorage, &v124);
        StaticString.description.getter();
        v75 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v76 = String._bridgeToObjectiveC()();

        v77 = [v76 lastPathComponent];

        v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v81 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v48 = swift_initStackObject();
        v48[1] = xmmword_10146CA70;
        *(v48 + 7) = &type metadata for Int32;
        *(v48 + 8) = &protocol witness table for Int32;
        *(v48 + 8) = v74;
        v82 = sub_100006370(0, &qword_1019F4D30);
        *(v48 + 12) = v82;
        v83 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v48 + 13) = v83;
        *(v48 + 9) = v75;
        *(v48 + 17) = &type metadata for String;
        v84 = sub_1000053B0();
        *(v48 + 14) = v78;
        *(v48 + 15) = v80;
        *(v48 + 22) = &type metadata for UInt;
        *(v48 + 23) = &protocol witness table for UInt;
        *(v48 + 18) = v84;
        *(v48 + 19) = 54;
        v85 = v124;
        *(v48 + 27) = v82;
        *(v48 + 28) = v83;
        *(v48 + 24) = v85;
        v86 = v75;
        v87 = v85;
        v88 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v48);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v89 = static os_log_type_t.error.getter();
        sub_100005404(v81, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v90 = swift_allocObject();
        v90[2] = 8;
        v90[3] = 0;
        v90[4] = 0;
        v90[5] = 0;
        v91 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v43 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v92 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v93 = String._bridgeToObjectiveC()();

        [v123 handleFailureInFunction:v43 file:v92 lineNumber:54 isFatal:0 format:v93 args:v91];

        v71 = *(v114 + 1);
      }

      v49 = v113;
      if (v71 < v116)
      {
        __break(1u);
      }

      else if (!__OFSUB__(v71, v116))
      {
        sub_100A33D9C(v116, v71 - v116);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v124 = v97;
          *v96 = 136315138;
          v98 = _NSRange.description.getter();
          v100 = sub_101007640(v98, v99, &v124);

          *(v96 + 4) = v100;
          _os_log_impl(&_mh_execute_header, v94, v95, "Changed storage range: %s", v96, 0xCu);
          sub_100005070(v97);
        }

        v101 = v109;
        v102 = *(v108 + 8);
        v102(v121, v109);
        v102(v49, v101);
        sub_100005070(v126);
        return;
      }

      __break(1u);
LABEL_18:
      swift_once();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_101008904()
{
  if (qword_1019F22E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static OS_os_log.writingTools;
  Logger.init(_:)();
  v2 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  *&v0[v2] = sub_100BD99C4(_swiftEmptyArrayStorage);
  *&v0[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended] = 0;
  v0[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = sub_1005C1FC4(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = _swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_observerSubscriptions] = v3;
  swift_unknownObjectWeakAssign();
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLWPWritingToolsHandler();
  return objc_msgSendSuper2(&v5, "init");
}

void sub_101008A64(id a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_22;
  }

  v4 = [a1 selectionModelTranslator];
  if (!v4)
  {

    v2 = 0;
LABEL_23:
    v7 = 0;
    goto LABEL_24;
  }

  v5 = [v2 editorController];
  if (!v5)
  {

LABEL_8:
    v2 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (type metadata accessor for CRLWPEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v5 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  v10 = swift_dynamicCastClass();
  v7 = v10;
  if (!v10)
  {

    swift_unknownObjectRelease();
    v2 = 0;
    v4 = 0;
LABEL_24:
    v8 = 0;
    goto LABEL_25;
  }

  v11 = [*(v10 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v10];
  if (!v11)
  {
    swift_unknownObjectRelease();

LABEL_21:
    v2 = 0;
LABEL_22:
    v4 = 0;
    goto LABEL_23;
  }

  v12 = v11;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    swift_unknownObjectRelease();

    v2 = 0;
    v4 = 0;
    v7 = 0;
LABEL_25:
    v5 = 0;
    goto LABEL_26;
  }

  sub_100960E34();
  v14 = v13;
  swift_unknownObjectRetain();

  if (!v14)
  {
    swift_unknownObjectRelease();

    goto LABEL_21;
  }

  type metadata accessor for CRLWPTextSelectionManager();
  v15 = swift_dynamicCastClass();
  v5 = v15;
  if (!v15)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v16 = *(v15 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v16)
  {
    v17 = v16;
  }

  else
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v2 = 0;
    v4 = 0;
    v7 = 0;
    v8 = 0;
    v5 = 0;
  }

LABEL_27:
  *a2 = v2;
  a2[1] = v4;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v5;
  a2[5] = v16;
}

uint64_t sub_101008CE4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_101008D2C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v48 = a3;
  v47 = type metadata accessor for UUID();
  v5 = *(v47 - 1);
  __chkstk_darwin(v47);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin(v8 - 8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v53[0] = v12;
    *v11 = 136315138;
    v13 = sub_101002A8C(a1);
    v15 = sub_101007640(v13, v14, v53);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "writingToolsCoordinator(contextsFor:) scope: %s", v11, 0xCu);
    sub_100005070(v12);
  }

  sub_101005B24(v53);
  v16 = v53[0];
  if (!v53[0])
  {
    sub_1005B981C(&unk_1019F4D60);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_101465920;
    sub_100006370(0, &qword_1019F76F0);
    AttributedString.init(stringLiteral:)();
    v41 = NSAttributedString.init(_:)();
    v42 = [objc_allocWithZone(UIWritingToolsCoordinatorContext) initWithAttributedString:v41 range:{0, 0}];

    *(v40 + 32) = v42;
    sub_100006370(0, &qword_101A27F80);
    v39.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (v48)[2](v48, v39.super.isa);
LABEL_11:

    return;
  }

  v17 = v53[1];
  v18 = v53[2];
  v19 = v53[3];
  v45 = v53[5];
  v46 = v53[4];
  if (!*(a2 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state))
  {
    v20 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
    swift_beginAccess();
    *(a2 + v20) = _swiftEmptyDictionarySingleton;
  }

  v21 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v22 = *(*(v18 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v22)
  {
    v23 = v22;
    v44 = v19;
    v24 = [v19 range];
    v26 = v25;
    type metadata accessor for CRLWPWritingToolsContext();
    swift_allocObject();
    v27 = sub_100CC41C8(v23, v24, v26);

    v28 = [v27[5] identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = *(a2 + v29);
    *(a2 + v29) = 0x8000000000000000;
    sub_100AA1770(v27, v7, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v7, v47);
    *(a2 + v29) = v49;
    swift_endAccess();
    v47 = v18;
    v31 = *(v18 + v21);
    v32 = [v16 changeNotifier];
    if (v32)
    {
      v50 = v32;
      v51 = v31;
      v52 = 256;
      v43 = v16;
      v33 = v17;
      v34 = v32;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v31;
      sub_1005B981C(&qword_101A27FD0);
      sub_10001A2F8(&qword_101A27FD8, &qword_101A27FD0);
      Publisher.sink(receiveCompletion:receiveValue:)();

      v17 = v33;
      v16 = v43;

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }

    sub_1005B981C(&unk_1019F4D60);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101465920;
    v37 = v27[5];
    *(v36 + 32) = v37;
    sub_100006370(0, &qword_101A27F80);
    v38 = v37;
    v39.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (v48)[2](v48, v39.super.isa);

    goto LABEL_11;
  }

  _Block_release(v48);
  __break(1u);
}

void sub_101009374(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v127 = a5;
  v126 = type metadata accessor for UUID();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v115 - v17;
  v19 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v124 = a6;
  v20 = a6;
  v21 = a4;
  v22 = a3;
  v121 = v19;
  v23 = Logger.logObject.getter();
  LODWORD(a4) = static os_log_type_t.default.getter();
  v122 = v20;

  v123 = a4;
  v24 = os_log_type_enabled(v23, a4);
  v25 = &selRef_geometryWithMask;
  v118 = a1;
  v119 = a2;
  if (v24)
  {
    v26 = swift_slowAlloc();
    v117 = a7;
    v27 = v26;
    v116 = swift_slowAlloc();
    v129 = v116;
    *v27 = 136316418;
    v28 = _NSRange.description.getter();
    v30 = sub_101007640(v28, v29, &v129);
    v120 = a8;
    v31 = v30;

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v130 = 0xD000000000000029;
    v131 = 0x80000001015B9030;
    v32 = [v22 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_101008CE4(&qword_101A02180, &type metadata accessor for UUID);
    v33 = v126;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    (*(v128 + 1))(v18, v33);
    v35._countAndFlagsBits = 41;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = sub_101007640(v130, v131, &v129);

    *(v27 + 14) = v36;
    *(v27 + 22) = 2080;
    v37 = [v21 string];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = sub_101007640(v38, v40, &v129);
    v42 = v120;

    *(v27 + 24) = v41;
    *(v27 + 32) = 2048;
    v43 = [v21 length];

    *(v27 + 34) = v43;
    *(v27 + 42) = 2080;
    v44 = v127;
    v45 = sub_101002E38(v127);
    v47 = sub_101007640(v45, v46, &v129);

    *(v27 + 44) = v47;
    *(v27 + 52) = 2080;
    v130 = v124;
    v48 = v122;
    sub_1005B981C(&qword_101A27FC8);
    v49 = String.init<A>(describing:)();
    v51 = sub_101007640(v49, v50, &v129);
    v25 = &selRef_geometryWithMask;

    *(v27 + 54) = v51;
    _os_log_impl(&_mh_execute_header, v23, v123, "writingToolsCoordinator(replace:) range: %s, context: %s, proposedText: %s, length: %ld, reason: %s, animationParameters: %s", v27, 0x3Eu);
    swift_arrayDestroy();

    a7 = v117;

    v52 = v44;
    v53 = v33;
  }

  else
  {

    v42 = a8;
    v53 = v126;
    v52 = v127;
  }

  v54 = v128;
  v55 = [v22 v25[505]];
  v56 = v125;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v57 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v58 = *(a7 + v57);
  if (!*(v58 + 16))
  {
    goto LABEL_21;
  }

  v59 = sub_10003E994(v56);
  if ((v60 & 1) == 0)
  {

LABEL_21:
    (*(v54 + 1))(v56, v53);
LABEL_22:
    (*(v42 + 16))(v42, 0);
    return;
  }

  v61 = v52;
  v62 = v54;
  v63 = *(*(v58 + 56) + 8 * v59);
  v64 = *(v62 + 1);

  v64(v56, v53);

  v65 = *(v63 + 16);
  v66 = sub_101007324(v65);

  if (!v66)
  {

    goto LABEL_22;
  }

  v67 = &qword_101A0C000;
  if (v61 != 1)
  {
LABEL_16:
    v83 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges;
    *(a7 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_shouldNotifyCoordinatorOfChanges) = 0;
    v84 = v66;
    sub_101007B74(v118, v119, v21, v84, v63);
    v86 = v85;
    v88 = v87;
    v128 = v84;

    *(a7 + v83) = 1;
    v127 = v63;
    v89 = *(v63 + 16);
    if ((*(v89 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
    {
      sub_100A2A960();
    }

    v90 = [*(v89 + v67[458]) attributedSubstringFromRange:{v86, v88}];
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.debug.getter();
    v93 = os_log_type_enabled(v91, v92);
    v120 = v42;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v129 = v95;
      *v94 = 136315394;
      v96 = [v90 string];
      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;

      v100 = sub_101007640(v97, v99, &v129);

      *(v94 + 4) = v100;
      *(v94 + 12) = 2048;
      v101 = [v90 length];

      *(v94 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v91, v92, "Replaced text in storage: %s, length: %ld", v94, 0x16u);
      sub_100005070(v95);
    }

    else
    {
    }

    v102 = v127;

    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v129 = v106;
      *v105 = 136315138;
      v107 = [*(v102 + 16) debugDescription];
      v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v110 = v109;

      v111 = sub_101007640(v108, v110, &v129);

      *(v105 + 4) = v111;
      _os_log_impl(&_mh_execute_header, v103, v104, "Full storage: %s", v105, 0xCu);
      sub_100005070(v106);
    }

    (*(v120 + 16))(v120, v90);

    return;
  }

  v68 = v66;
  v128 = v21;
  v69 = a7;
  v70 = v42;
  v71 = *(v63 + 16);
  if ((*(v71 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties) & 1) == 0)
  {
    sub_100A2A960();
  }

  v72 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString);
  v73 = [v128 string];
  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;

  v77 = [v72 string];
  v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v79;

  if (v74 == v78 && v76 == v80)
  {

    v42 = v70;
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v42 = v70;
    a7 = v69;
    if ((v82 & 1) == 0)
    {

      v21 = v128;
      v67 = &qword_101A0C000;
      v66 = v68;
      goto LABEL_16;
    }
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "Writing tools tried to replace identical text", v114, 2u);
  }

  (*(v42 + 16))(v42, v128);
}

void sub_101009D68(unint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v85 - v11;
  v13 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;

  v14 = a2;
  v92 = v13;
  v93 = a3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v95 = v8;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v98[0] = v91;
    *v18 = 136315394;
    sub_100006370(0, &qword_101A04270);
    v19 = Array.description.getter();
    v21 = a1;
    v22 = a4;
    v23 = v12;
    v24 = v14;
    v25 = sub_101007640(v19, v20, v98);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    v26 = sub_101002CA8();
    v28 = sub_101007640(v26, v27, v98);

    *(v18 + 14) = v28;
    v14 = v24;
    v12 = v23;
    a4 = v22;
    a1 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "writingToolsCoordinator(select:) ranges: %s, context: %s", v18, 0x16u);
    swift_arrayDestroy();

    v8 = v95;
  }

  v29 = a1 >> 62;
  if (a1 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v96 = a4;
  if (v30 == 1)
  {
    goto LABEL_8;
  }

  v88 = a1 >> 62;
  v89 = v12;
  v91 = v14;
  v87 = objc_opt_self();
  LODWORD(v15) = [v87 _atomicIncrementAssertCount];
  v98[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v98);
  StaticString.description.getter();
  v86 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v31 = String._bridgeToObjectiveC()();

  v32 = [v31 lastPathComponent];

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v33;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v15;
    v37 = v86;
    *(inited + 72) = v86;
    *(inited + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(inited + 112) = v85;
    *(inited + 120) = a4;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v38;
    *(inited + 152) = 154;
    v39 = v98[0];
    *(inited + 216) = v36;
    *(inited + 224) = v15;
    *(inited + 192) = v39;
    v40 = v37;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "Unexpected number of ranges received", 36, 2, _swiftEmptyArrayStorage);

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
    LODWORD(v15) = v48;
    v49 = String._bridgeToObjectiveC()();

    [v87 handleFailureInFunction:v46 file:v47 lineNumber:154 isFatal:0 format:v49 args:v45];

    v8 = v95;
    a4 = v96;
    v14 = v91;
    v29 = v88;
    v12 = v89;
LABEL_8:
    if (v29)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_18:
        (*(a4 + 16))(a4);
        return;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = v8;
      v51 = *(a1 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

  v50 = v8;
  v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_13:
  v52 = v51;
  v53 = [v51 rangeValue];
  v55 = v54;

  v56 = &selRef_geometryWithMask;
  v57 = [v14 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  v59 = v93;
  swift_beginAccess();
  v60 = *&v59[v58];
  v61 = v94;
  if (*(v60 + 16))
  {

    v62 = sub_10003E994(v12);
    if (v63)
    {
      v89 = v53;
      v91 = v14;
      v64 = v96;
      v65 = *(*(v60 + 56) + 8 * v62);
      v66 = *(v61 + 8);

      v66(v12, v50);

      v67 = *(v65 + 16);
      v68 = sub_101007324(v67);

      if (v68)
      {
        sub_101003020(v68, v89, v55);
        (*(v64 + 16))(v64);

        return;
      }

      v14 = v91;
      v56 = &selRef_geometryWithMask;
      v69 = v66;
      goto LABEL_21;
    }
  }

  v69 = *(v61 + 8);
  v69(v12, v50);
LABEL_21:
  v70 = v14;
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v93 = v69;
    v74 = v73;
    v75 = swift_slowAlloc();
    v76 = v56;
    v77 = v75;
    v97 = v75;
    *v74 = 136315138;
    v78 = [v70 v76[505]];
    v79 = v90;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_101008CE4(&qword_101A02180, &type metadata accessor for UUID);
    v80 = dispatch thunk of CustomStringConvertible.description.getter();
    v82 = v81;
    (v93)(v79, v50);
    v83 = sub_101007640(v80, v82, &v97);
    v84 = v96;

    *(v74 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v71, v72, "Missing wp context for identifier: %s", v74, 0xCu);
    sub_100005070(v77);
  }

  else
  {

    v84 = v96;
  }

  (*(v84 + 16))(v84);
}

void sub_10100A6F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = 0;
  v115 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a1, a2}];
  v109 = [a5 selectionPathForRange:a1 onStorage:{a2, a3}];
  v11 = sub_100F22994(v109);
  v12 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  if (v11)
  {
    sub_101002784(v11);
    v14 = v13;

    if (!(*&v14 >> 62))
    {
      goto LABEL_3;
    }

LABEL_99:
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_100;
  }

LABEL_98:
  v14 = v12;
  if (*&v12 >> 62)
  {
    goto LABEL_99;
  }

LABEL_3:
  v15 = *((*&v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_100:

    v16 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    v86 = _swiftEmptyArrayStorage[2];
    if (!v86)
    {
      goto LABEL_101;
    }

LABEL_65:
    v87 = 0;
    v88 = _swiftEmptyArrayStorage;
    v126 = (*&v16 + 32);
    v117 = v16;
    v120 = v86;
    while (1)
    {
      if (v87 >= *(*&v16 + 16))
      {
        goto LABEL_103;
      }

      a4 = v126[v87];
      v89 = a4 >> 62;
      v12 = a4 >> 62 ? COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter()) : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v88 >> 62;
      if (v88 >> 62)
      {
        v107 = _CocoaArrayWrapper.endIndex.getter();
        v91 = v107 + *&v12;
        if (__OFADD__(v107, *&v12))
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }
      }

      else
      {
        v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v91 = v90 + *&v12;
        if (__OFADD__(v90, *&v12))
        {
          goto LABEL_97;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_78;
      }

LABEL_79:
      v129 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v92 = v129 & 0xFFFFFFFFFFFFFF8;
LABEL_80:
      v131 = *&v12;
      v93 = *(v92 + 16);
      v94 = *(v92 + 24);
      if (v89)
      {
        v96 = v92;
        v97 = _CocoaArrayWrapper.endIndex.getter();
        v92 = v96;
        v95 = v97;
        if (!v97)
        {
LABEL_66:

          if (v131 > 0)
          {
            goto LABEL_104;
          }

          goto LABEL_67;
        }
      }

      else
      {
        v95 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v95)
        {
          goto LABEL_66;
        }
      }

      if (((v94 >> 1) - v93) < v131)
      {
        goto LABEL_108;
      }

      v98 = v92 + 8 * v93 + 32;
      v124 = v92;
      if (v89)
      {
        if (v95 < 1)
        {
          goto LABEL_111;
        }

        sub_10001A2F8(&qword_101A27FB8, &qword_101A27FB0);
        for (i = 0; i != v95; ++i)
        {
          sub_1005B981C(&qword_101A27FB0);
          v101 = sub_100777974(&v132, i, a4);
          v103 = *v102;
          (v101)(&v132, 0);
          *(v98 + 8 * i) = v103;
        }

        v86 = v120;
        v16 = v117;
        v99 = v131;
      }

      else
      {
        sub_100006370(0, &qword_101A02480);
        v99 = v131;
        swift_arrayInitWithCopy();
      }

      if (v99 > 0)
      {
        v104 = *(v124 + 16);
        v105 = __OFADD__(v104, v99);
        v106 = v104 + v99;
        if (v105)
        {
          goto LABEL_110;
        }

        *(v124 + 16) = v106;
      }

LABEL_67:
      ++v87;
      v88 = v129;
      if (v87 == v86)
      {
        goto LABEL_101;
      }
    }

    if (!v10)
    {
      v92 = v88 & 0xFFFFFFFFFFFFFF8;
      v129 = v88;
      if (v91 <= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }

LABEL_78:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_79;
  }

LABEL_4:
  v134 = v12;
  sub_100776D44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    return;
  }

  v108 = v10;
  v16 = v134;
  v113 = objc_opt_self();
  v17 = 0;
  v114 = *&v14 & 0xC000000000000001;
  v111 = *&v14 & 0xFFFFFFFFFFFFFF8;
  v110 = *&v14 + 32;
  v112 = v15;
  v118 = a4;
  do
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
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
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    if (v114)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v111 + 16))
      {
        goto LABEL_109;
      }

      v19 = *(v110 + 8 * v17);
    }

    v122 = v19;
    isa = [v19 columns];
    if (!isa)
    {
      sub_100006370(0, &unk_1019FFD00);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v21 = [v113 selectionRectsforColumns:isa forSelection:v115];

    if (!v21)
    {
      goto LABEL_113;
    }

    sub_100006370(0, &qword_101A04270);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v119 = v18;
      if (!v23)
      {
LABEL_26:

        a = v12;
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v119 = v18;
      if (!v23)
      {
        goto LABEL_26;
      }
    }

    v132.a = v12;
    sub_100776AA4(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      goto LABEL_105;
    }

    v24 = 0;
    a = v132.a;
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      [v26 CGRectValue];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

      v132.a = a;
      v37 = *(*&a + 16);
      v36 = *(*&a + 24);
      if (v37 >= v36 >> 1)
      {
        sub_100776AA4((v36 > 1), v37 + 1, 1);
        a = v132.a;
      }

      ++v24;
      *(*&a + 16) = v37 + 1;
      v38 = (*&a + 32 * v37);
      v38[4] = v29;
      v38[5] = v31;
      v38[6] = v33;
      v38[7] = v35;
    }

    while (v23 != v24);

LABEL_27:
    v132.a = v12;
    v39 = *(*&a + 16);
    v40 = v118;
    v41 = &selRef_isEnumeratingForUserSearch;
    if (v39)
    {
      v42 = objc_opt_self();
      v43 = (*&a + 56);
      v123 = v12;
      do
      {
        if ([v42 bezierPathWithRect:{*(v43 - 3), *(v43 - 2), *(v43 - 1), *v43}])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v132.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v41 = &selRef_isEnumeratingForUserSearch;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v123 = v132.a;
        }

        v43 += 4;
        --v39;
      }

      while (v39);
    }

    else
    {
      v123 = v12;
    }

    v44 = v123;
    if (*&v123 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
LABEL_58:

        v75 = v12;
        if (!(*&v12 >> 62))
        {
          goto LABEL_49;
        }

        goto LABEL_59;
      }
    }

    else
    {
      v45 = *((*&v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_58;
      }
    }

    v133 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v45 < 0)
    {
      goto LABEL_106;
    }

    v116 = v16;
    v46 = 0;
    v47 = *&v123 & 0xC000000000000001;
    v48 = v122;
    v121 = v45;
    do
    {
      if (v47)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(*&v44 + 8 * v46 + 32);
      }

      v51 = v50;
      v52 = [v48 v41[343]];
      if (v52)
      {
        v49 = v52;
        [v52 transformInRoot];
        *v127 = *&v132.c;
        v130 = *&v132.a;
        v125 = *&v132.tx;

        *&v132.a = v130;
        *&v132.c = *v127;
        *&v132.tx = v125;
        [v51 transformUsingAffineTransform:&v132];
      }

      else
      {
        v128 = objc_opt_self();
        v53 = [v128 _atomicIncrementAssertCount];
        *&v132.a = [objc_allocWithZone(NSString) init];
        sub_100604538(*&v12, &v132);
        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v55 = String._bridgeToObjectiveC()();

        v56 = [v55 lastPathComponent];

        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v60 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v53;
        v62 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v62;
        v63 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v63;
        *(inited + 72) = v54;
        *(inited + 136) = &type metadata for String;
        v64 = sub_1000053B0();
        *(inited + 112) = v57;
        *(inited + 120) = v59;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v64;
        *(inited + 152) = 636;
        v65 = v132.a;
        *(inited + 216) = v62;
        *(inited + 224) = v63;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v65;
        v66 = v54;
        v67 = *&v65;
        v68 = static os_log_type_t.error.getter();
        sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v69 = static os_log_type_t.error.getter();
        v12 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
        sub_100005404(v60, &_mh_execute_header, v69, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v70 = swift_allocObject();
        v70[2] = 8;
        v70[3] = 0;
        v70[4] = 0;
        v70[5] = 0;
        v71 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v72 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v73 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v74 = String._bridgeToObjectiveC()();

        [v128 handleFailureInFunction:v72 file:v73 lineNumber:636 isFatal:0 format:v74 args:v71];

        v41 = &selRef_isEnumeratingForUserSearch;
        v48 = v122;
        v44 = v123;
        v47 = *&v123 & 0xC000000000000001;
        v45 = v121;
      }

      ++v46;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v45 != v46);

    v75 = v133;
    v16 = v116;
    v40 = v118;
    if (!(*&v133 >> 62))
    {
LABEL_49:
      v76 = *((*&v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v76)
      {
        goto LABEL_60;
      }

      goto LABEL_50;
    }

LABEL_59:
    v76 = _CocoaArrayWrapper.endIndex.getter();
    if (!v76)
    {
LABEL_60:

      v83 = v12;
      goto LABEL_61;
    }

LABEL_50:
    v133 = v12;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v76 < 0)
    {
      goto LABEL_107;
    }

    v77 = 0;
    do
    {
      if ((*&v75 & 0xC000000000000001) != 0)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v78 = *(*&v75 + 8 * v77 + 32);
      }

      v79 = v78;
      ++v77;
      v80 = [v40 canvas];
      [v80 viewScale];
      v82 = v81;

      CGAffineTransformMakeScale(&v132, v82, v82);
      [v79 transformUsingAffineTransform:&v132];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v76 != v77);

    v83 = v133;
LABEL_61:
    v134 = v16;
    v85 = *(*&v16 + 16);
    v84 = *(*&v16 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_100776D44((v84 > 1), v85 + 1, 1);
      v16 = v134;
    }

    *(*&v16 + 16) = v85 + 1;
    *(*&v16 + 8 * v85 + 32) = v83;
    v17 = v119;
  }

  while (v119 != v112);

  v86 = *(*&v16 + 16);
  if (v86)
  {
    goto LABEL_65;
  }

LABEL_101:
}

void sub_10100B4BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = 0;
  v132 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a1, a2}];
  v126 = [a5 selectionPathForRange:a1 onStorage:{a2, a3}];
  v11 = sub_100F22994(v126);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    sub_101002784(v11);
    v14 = v13;

    v12 = _swiftEmptyArrayStorage;
    if (!(v14 >> 62))
    {
      goto LABEL_3;
    }

LABEL_106:
    v123 = v12;
    v124 = _CocoaArrayWrapper.endIndex.getter();
    v12 = v123;
    v15 = v124;
    if (v124)
    {
      goto LABEL_4;
    }

    goto LABEL_107;
  }

LABEL_105:
  v14 = v12;
  if (v12 >> 62)
  {
    goto LABEL_106;
  }

LABEL_3:
  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
LABEL_107:

    v16 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage[2];
    if (!v100)
    {
      goto LABEL_108;
    }

LABEL_72:
    v101 = 0;
    v102 = _swiftEmptyArrayStorage;
    v144 = v16 + 4;
    v134 = v16;
    v138 = v100;
    while (1)
    {
      if (v101 >= v16[2])
      {
        goto LABEL_110;
      }

      a4 = v144[v101];
      v103 = a4 >> 62;
      v104 = a4 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v102 >> 62;
      if (v102 >> 62)
      {
        v122 = _CocoaArrayWrapper.endIndex.getter();
        v106 = v122 + v104;
        if (__OFADD__(v122, v104))
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }
      }

      else
      {
        v105 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v106 = v105 + v104;
        if (__OFADD__(v105, v104))
        {
          goto LABEL_104;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v10)
      {
        goto LABEL_85;
      }

LABEL_86:
      v147 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v107 = v147 & 0xFFFFFFFFFFFFFF8;
LABEL_87:
      v149 = v104;
      v108 = *(v107 + 16);
      v109 = *(v107 + 24);
      if (v103)
      {
        v111 = v107;
        v112 = _CocoaArrayWrapper.endIndex.getter();
        v107 = v111;
        v110 = v112;
        if (!v112)
        {
LABEL_73:

          if (v149 > 0)
          {
            goto LABEL_111;
          }

          goto LABEL_74;
        }
      }

      else
      {
        v110 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v110)
        {
          goto LABEL_73;
        }
      }

      if (((v109 >> 1) - v108) < v149)
      {
        goto LABEL_115;
      }

      v113 = v107 + 8 * v108 + 32;
      v142 = v107;
      if (v103)
      {
        if (v110 < 1)
        {
          goto LABEL_118;
        }

        sub_10001A2F8(&qword_101A27FB8, &qword_101A27FB0);
        for (i = 0; i != v110; ++i)
        {
          sub_1005B981C(&qword_101A27FB0);
          v116 = sub_100777974(&v150, i, a4);
          v118 = *v117;
          (v116)(&v150, 0);
          *(v113 + 8 * i) = v118;
        }

        v100 = v138;
        v16 = v134;
        v114 = v149;
      }

      else
      {
        sub_100006370(0, &qword_101A02480);
        v114 = v149;
        swift_arrayInitWithCopy();
      }

      if (v114 > 0)
      {
        v12 = v142;
        v119 = v142[2];
        v120 = __OFADD__(v119, v114);
        v121 = v119 + v114;
        if (v120)
        {
          goto LABEL_117;
        }

        v142[2] = v121;
      }

LABEL_74:
      ++v101;
      v102 = v147;
      if (v101 == v100)
      {
        goto LABEL_108;
      }
    }

    if (!v10)
    {
      v107 = v102 & 0xFFFFFFFFFFFFFF8;
      v147 = v102;
      if (v106 <= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_87;
      }

      goto LABEL_86;
    }

LABEL_85:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_86;
  }

LABEL_4:
  v152 = v12;
  sub_100776D44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
    return;
  }

  v125 = v10;
  v16 = v152;
  v130 = objc_opt_self();
  v17 = 0;
  v131 = v14 & 0xC000000000000001;
  v128 = v14 & 0xFFFFFFFFFFFFFF8;
  v127 = v14 + 32;
  v129 = v15;
  v135 = a4;
  do
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
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
      goto LABEL_119;
    }

    if (v131)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v128 + 16))
      {
        goto LABEL_116;
      }

      v19 = *(v127 + 8 * v17);
    }

    v141 = v19;
    isa = [v19 columns];
    if (!isa)
    {
      sub_100006370(0, &unk_1019FFD00);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v21 = [v130 selectionRectsforColumns:isa forSelection:v132];

    if (!v21)
    {
      goto LABEL_120;
    }

    sub_100006370(0, &qword_101A04270);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v136 = v18;
    if (v23)
    {
      *&v150.a = _swiftEmptyArrayStorage;
      sub_100776AA4(0, v23 & ~(v23 >> 63), 0);
      if (v23 < 0)
      {
        goto LABEL_112;
      }

      v24 = 0;
      a = v150.a;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v22 + 8 * v24 + 32);
        }

        v27 = v26;
        [v26 CGRectValue];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v150.a = a;
        v37 = *(*&a + 16);
        v36 = *(*&a + 24);
        if (v37 >= v36 >> 1)
        {
          sub_100776AA4((v36 > 1), v37 + 1, 1);
          a = v150.a;
        }

        ++v24;
        *(*&a + 16) = v37 + 1;
        v38 = (*&a + 32 * v37);
        v38[4] = v29;
        v38[5] = v31;
        v38[6] = v33;
        v38[7] = v35;
      }

      while (v23 != v24);
    }

    else
    {

      a = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    v39 = *(*&a + 16);
    if (v39)
    {
      *&v150.a = _swiftEmptyArrayStorage;
      sub_100776AA4(0, v39, 0);
      v40 = v150.a;
      v41 = (*&a + 56);
      do
      {
        v42 = *(v41 - 3);
        v43 = *(v41 - 2);
        v44 = *(v41 - 1);
        v45 = *v41;
        v153.origin.x = v42;
        v153.origin.y = v43;
        v153.size.width = v44;
        v153.size.height = *v41;
        MinX = CGRectGetMinX(v153);
        v154.origin.x = v42;
        v154.origin.y = v43;
        v154.size.width = v44;
        v154.size.height = v45;
        MaxY = CGRectGetMaxY(v154);
        v155.origin.x = v42;
        v155.origin.y = v43;
        v155.size.width = v44;
        v155.size.height = v45;
        Width = CGRectGetWidth(v155);
        v150.a = v40;
        v50 = *(*&v40 + 16);
        v49 = *(*&v40 + 24);
        if (v50 >= v49 >> 1)
        {
          v52 = Width;
          sub_100776AA4((v49 > 1), v50 + 1, 1);
          Width = v52;
          v40 = v150.a;
        }

        *(*&v40 + 16) = v50 + 1;
        v51 = *&v40 + 32 * v50;
        *(v51 + 32) = MinX;
        *(v51 + 40) = MaxY;
        *(v51 + 48) = Width;
        *(v51 + 56) = 0x4000000000000000;
        v41 += 4;
        --v39;
      }

      while (v39);

      v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    else
    {

      v53 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      v40 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
    }

    *&v150.a = _swiftEmptyArrayStorage;
    v54 = *(*&v40 + 16);
    if (v54)
    {
      v55 = objc_opt_self();
      v56 = (*&v40 + 56);
      do
      {
        if ([v55 bezierPathWithRect:{*(v56 - 3), *(v56 - 2), *(v56 - 1), *v56}])
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v150.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v150.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v53 = v150.a;
        }

        v56 += 4;
        --v54;
      }

      while (v54);
    }

    if (*&v53 >> 62)
    {
      v57 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v135;
      v59 = &selRef_isEnumeratingForUserSearch;
      if (!v57)
      {
LABEL_65:

        v90 = _swiftEmptyArrayStorage;
        v89 = _swiftEmptyArrayStorage;
        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_55;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v57 = *((*&v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v58 = v135;
      v59 = &selRef_isEnumeratingForUserSearch;
      if (!v57)
      {
        goto LABEL_65;
      }
    }

    v151 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v57 < 0)
    {
      goto LABEL_113;
    }

    v133 = v16;
    v60 = 0;
    v61 = *&v53 & 0xC000000000000001;
    v62 = v141;
    v139 = v57;
    v140 = v53;
    v137 = *&v53 & 0xC000000000000001;
    do
    {
      if (v61)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v64 = *(*&v53 + 8 * v60 + 32);
      }

      v65 = v64;
      v66 = [v62 v59[343]];
      if (v66)
      {
        v63 = v66;
        [v66 transformInRoot];
        *v145 = *&v150.c;
        v148 = *&v150.a;
        v143 = *&v150.tx;

        *&v150.a = v148;
        *&v150.c = *v145;
        *&v150.tx = v143;
        [v65 transformUsingAffineTransform:&v150];
      }

      else
      {
        v146 = objc_opt_self();
        v67 = [v146 _atomicIncrementAssertCount];
        *&v150.a = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v150);
        StaticString.description.getter();
        v68 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v69 = String._bridgeToObjectiveC()();

        v70 = [v69 lastPathComponent];

        v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v74 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v67;
        v76 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v76;
        v77 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v77;
        *(inited + 72) = v68;
        *(inited + 136) = &type metadata for String;
        v78 = sub_1000053B0();
        *(inited + 112) = v71;
        *(inited + 120) = v73;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v78;
        *(inited + 152) = 678;
        v79 = v150.a;
        *(inited + 216) = v76;
        *(inited + 224) = v77;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v79;
        v80 = v68;
        v81 = *&v79;
        v82 = static os_log_type_t.error.getter();
        sub_100005404(v74, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v83 = static os_log_type_t.error.getter();
        sub_100005404(v74, &_mh_execute_header, v83, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v84 = swift_allocObject();
        v84[2] = 8;
        v84[3] = 0;
        v84[4] = 0;
        v84[5] = 0;
        v85 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v86 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v87 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v88 = String._bridgeToObjectiveC()();

        [v146 handleFailureInFunction:v86 file:v87 lineNumber:678 isFatal:0 format:v88 args:v85];

        v59 = &selRef_isEnumeratingForUserSearch;
        v53 = v140;
        v62 = v141;
        v61 = v137;
        v57 = v139;
      }

      ++v60;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v57 != v60);

    v89 = v151;
    v16 = v133;
    v58 = v135;
    v90 = _swiftEmptyArrayStorage;
    if (!(v151 >> 62))
    {
LABEL_55:
      v91 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v91)
      {
        goto LABEL_67;
      }

      goto LABEL_56;
    }

LABEL_66:
    v91 = _CocoaArrayWrapper.endIndex.getter();
    if (!v91)
    {
LABEL_67:

      goto LABEL_68;
    }

LABEL_56:
    v151 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v91 < 0)
    {
      goto LABEL_114;
    }

    v92 = 0;
    do
    {
      if ((v89 & 0xC000000000000001) != 0)
      {
        v93 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v93 = *(v89 + 8 * v92 + 32);
      }

      v94 = v93;
      ++v92;
      v95 = [v58 canvas];
      [v95 viewScale];
      v97 = v96;

      CGAffineTransformMakeScale(&v150, v97, v97);
      [v94 transformUsingAffineTransform:&v150];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v91 != v92);

    v90 = v151;
LABEL_68:
    v152 = v16;
    v99 = v16[2];
    v98 = v16[3];
    if (v99 >= v98 >> 1)
    {
      sub_100776D44((v98 > 1), v99 + 1, 1);
      v16 = v152;
    }

    v16[2] = v99 + 1;
    v16[v99 + 4] = v90;
    v17 = v136;
  }

  while (v136 != v129);

  v100 = v16[2];
  if (v100)
  {
    goto LABEL_72;
  }

LABEL_108:
}

void sub_10100C3C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t (*a7)(uint64_t, uint64_t, id, void *, void *), const char *a8)
{
  v53 = a8;
  v57 = a7;
  v59 = a6;
  v61 = a5;
  v12 = type metadata accessor for UUID();
  v60 = *(v12 - 1);
  __chkstk_darwin(v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v16 = a3;
  v54 = v15;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v55 = a1;
  v56 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v58 = v12;
    v21 = v20;
    v63[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = _NSRange.description.getter();
    v24 = sub_101007640(v22, v23, v63);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = sub_101002CA8();
    v27 = sub_101007640(v25, v26, v63);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, v59, v21, 0x16u);
    swift_arrayDestroy();

    v12 = v58;
  }

  sub_101005268(v16, v63);
  v28 = v63[0];
  if (!v63[0])
  {
    goto LABEL_11;
  }

  v29 = v63[1];
  v30 = v63[4];
  v58 = v63[3];
  v59 = v63[2];
  v31 = v63[5];
  v32 = [v16 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v34 = *(a4 + v33);
  if (!*(v34 + 16))
  {
LABEL_10:

    (*(v60 + 8))(v14, v12);
LABEL_11:
    sub_100006370(0, &qword_101A27FC0);
    v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
    (*(v61 + 16))(v61, v50.super.isa);
    goto LABEL_12;
  }

  v35 = sub_10003E994(v14);
  if ((v36 & 1) == 0)
  {

    goto LABEL_10;
  }

  v52 = v31;
  v37 = *(*(v34 + 56) + 8 * v35);
  v38 = *(v60 + 8);

  v38(v14, v12);

  v60 = v37;
  v39 = *(v37 + 16);
  v40 = v57(v55, v56, v39, v28, v29);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v57 = v30;
    v45 = v44;
    v62 = v44;
    *v43 = 136315138;
    sub_100006370(0, &qword_101A02480);
    v46 = Array.description.getter();
    v48 = sub_101007640(v46, v47, &v62);

    *(v43 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, v53, v43, 0xCu);
    sub_100005070(v45);
    v30 = v57;
  }

  v49 = v52;
  sub_101003330(v40);

  sub_100006370(0, &qword_101A27FC0);
  v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v61 + 16))(v61, v50.super.isa);

LABEL_12:
}

uint64_t sub_10100C8C8(uint64_t a1, NSUInteger a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a4;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v40 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v41 = a3;
    v20 = v19;
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v20 = 136315650;
    v21 = sub_101003708(a1);
    v23 = sub_101007640(v21, v22, v44);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = _NSRange.description.getter();
    v26 = sub_101007640(v24, v25, v44);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = sub_101002CA8();
    v29 = sub_101007640(v27, v28, v44);

    *(v20 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v16, v17, "writingToolsCoordinator(prepareForTextAnimation:) animation: %s, range: %s, in: %s", v20, 0x20u);
    swift_arrayDestroy();

    a3 = v41;
  }

  v30 = [v15 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v32 = *(a5 + v31);
  if (*(v32 + 16))
  {

    v33 = sub_10003E994(v14);
    if (v34)
    {
      v35 = *(*(v32 + 56) + 8 * v33);
      v36 = *(v42 + 8);

      v36(v14, v43);

      v37 = *(v35 + 16);
      sub_10100625C(v37, v40, a3);

      (*(a6 + 16))(a6);
    }
  }

  return (*(v42 + 8))(v14, v43);
}

uint64_t sub_10100CBE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a3;
  v10 = type metadata accessor for UUID();
  v41 = *(v10 - 8);
  v42 = v10;
  __chkstk_darwin(v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = a6;
    v17 = v16;
    v43[0] = swift_slowAlloc();
    *v17 = 136315650;
    v18 = sub_101003708(a1);
    v20 = sub_101007640(v18, v19, v43);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2080;
    v21 = _NSRange.description.getter();
    v23 = sub_101007640(v21, v22, v43);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2080;
    v24 = sub_101002CA8();
    v26 = sub_101007640(v24, v25, v43);

    *(v17 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "writingToolsCoordinator(finishTextAnimation:) animation: %s, range: %s, in: %s", v17, 0x20u);
    swift_arrayDestroy();

    a6 = v39;
  }

  v27 = [v13 identifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v29 = *(a5 + v28);
  if (*(v29 + 16))
  {

    v30 = sub_10003E994(v12);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      v33 = *(v41 + 8);

      v33(v12, v42);

      v34 = *(v32 + 16);
      v35 = [v34 range];
      sub_101006584(v34, v35, v36);

      (*(a6 + 16))(a6);
    }
  }

  return (*(v41 + 8))(v12, v42);
}

id sub_10100CF0C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = [*(a5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
  v10 = sub_100F22994(v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_100BC17E0(v10);

  if (!v11)
  {
    return 0;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12 || (v13 = v12, (v14 = [objc_allocWithZone(CRLWPSelection) initWithRange:{a2, a3}]) == 0))
  {

    return 0;
  }

  v15 = v14;
  [a4 visibleUnscaledRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v13 frameInUnscaledCanvas];
  v51.origin.x = v24;
  v51.origin.y = v25;
  v51.size.width = v26;
  v51.size.height = v27;
  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  if (!CGRectIntersectsRect(v50, v51))
  {

    return 0;
  }

  v28 = [a4 renderingOverrideController];
  v29 = [v28 overrideWithKey:@"CRLWPRenderingOverrideAttributeHiddenText" forStorage:a1];

  v48 = v29;
  if (v29)
  {
    sub_101006584(a1, a2, a3);
  }

  [a4 layoutIfNeeded];
  v30 = v11;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v47 = v30;

  if (os_log_type_enabled(v31, v32))
  {
    buf = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v49[0] = v46;
    *buf = 136315138;
    v44 = v32;
    v33 = [v13 debugDescription];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    log = v31;
    v35 = v34;

    v36 = sub_101007640(v42, v35, v49);

    *(buf + 4) = v36;
    _os_log_impl(&_mh_execute_header, log, v44, "Text rep: %s", buf, 0xCu);
    sub_100005070(v46);
  }

  else
  {
  }

  size = CGRectNull.size;
  v49[0] = CGRectNull.origin;
  v49[1] = size;
  LOBYTE(v41) = 0;
  v39 = [v13 textImageForSelection:v15 frame:v49 usingGlyphRect:1 shouldPulsate:0 suppressInvisibles:1 suppressChildReps:0 drawBackground:0.0 inset:v41];
  if (v48)
  {
    v40 = [a4 renderingOverrideController];
    [v40 addOverride:v48 forStorage:a1];

    sub_101006C80(a2, a3, a1);
  }

  return v39;
}

void sub_10100D2FC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v98 = a6;
  v11 = type metadata accessor for UUID();
  v95 = *(v11 - 1);
  v96 = v11;
  __chkstk_darwin(v11);
  v94 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_logger;
  v14 = a4;
  v99 = a5;
  v97 = v13;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v92 = a2;
  v93 = a3;
  v91 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v101[0] = swift_slowAlloc();
    *v18 = 136315650;
    v19 = sub_101003708(a1);
    v21 = sub_101007640(v19, v20, v101);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = _NSRange.description.getter();
    v24 = sub_101007640(v22, v23, v101);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_101002CA8();
    v27 = sub_101007640(v25, v26, v101);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v15, v16, "writingToolsCoordinator(previewForTextAnimation:) animation: %s range: %s, in: %s", v18, 0x20u);
    swift_arrayDestroy();
  }

  v28 = v99;
  sub_101005268(v14, v101);
  if (!v101[0])
  {
    goto LABEL_17;
  }

  v90 = v101[0];
  v30 = v101[1];
  v29 = v101[2];
  v32 = v101[3];
  v31 = v101[4];
  v33 = v101[5];
  v34 = [v14 identifier];
  v35 = v94;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
  swift_beginAccess();
  v37 = *(v28 + v36);
  if (!*(v37 + 16))
  {

LABEL_16:
    (v95)[1](v35, v96);
    goto LABEL_17;
  }

  v89 = v30;

  v38 = sub_10003E994(v35);
  if ((v39 & 1) == 0)
  {

    goto LABEL_16;
  }

  v87 = v33;
  v88 = v32;
  v40 = *(*(v37 + 56) + 8 * v38);
  v41 = v95[1];

  v41(v35, v96);

  v42 = v90;
  v43 = [v90 canvasView];
  if (v43)
  {
    v95 = v43;
    v96 = v29;
    v44 = [*(v40 + 16) range];
    v47 = v92;
    v46 = v93;
    if (v44 <= v92 && v44 + v45 >= v93 + v92)
    {
      v74 = *(v40 + 16);
      v75 = v96;
      v76 = sub_10100CF0C(v74, v47, v46, v42, v96);
      v77 = v87;
      if (v76)
      {
        v78 = v76;
        v79 = v47;
        v80 = v89;
        sub_10100A6F4(v79, v46, v74, v42, v89);
        v97 = v74;
        v81 = v95;
        v83 = sub_101003960(v78, v82, v95);

        (*(v98 + 16))(v98, v83);
      }

      else
      {
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Unable to capture image from text rep.", v86, 2u);
        }

        (*(v98 + 16))(v98, 0);
      }
    }

    else
    {

      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v87;
      if (v51)
      {
        v53 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v53 = 136315394;
        v54 = _NSRange.description.getter();
        v56 = sub_101007640(v54, v55, &v100);

        *(v53 + 4) = v56;
        *(v53 + 12) = 2080;
        [*(v40 + 16) range];
        v57 = _NSRange.description.getter();
        v59 = sub_101007640(v57, v58, &v100);

        *(v53 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v49, v50, "Writing tools requested preview for an illegal range: %s for storage range: %s", v53, 0x16u);
        swift_arrayDestroy();
      }

      v60 = v88;
      (*(v98 + 16))(v98, 0);
    }

    return;
  }

LABEL_17:
  v61 = v14;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v64 = 136315650;
    v65 = sub_101003708(v91);
    v67 = sub_101007640(v65, v66, &v100);

    *(v64 + 4) = v67;
    *(v64 + 12) = 2080;
    v68 = _NSRange.description.getter();
    v70 = sub_101007640(v68, v69, &v100);

    *(v64 + 14) = v70;
    *(v64 + 22) = 2080;
    v71 = sub_101002CA8();
    v73 = sub_101007640(v71, v72, &v100);

    *(v64 + 24) = v73;
    _os_log_impl(&_mh_execute_header, v62, v63, "Unable to proview preview for animation: %s range: %s context: %s", v64, 0x20u);
    swift_arrayDestroy();
  }

  (*(v98 + 16))(v98, 0);
}

uint64_t sub_10100DB54()
{
  v0 = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, v1, "restoreViews()", v2, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x190))();
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_10100DC64(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = v65 - v9;
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = &selRef_shouldQueueBeginScribbleMode;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v66 = v10;
    v67 = a4;
    v70[0] = v16;
    *v15 = 136315394;
    v17 = sub_101003EF0(a2);
    v19 = sub_101007640(v17, v18, v70);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v20 = sub_101003EF0([v11 state]);
    v22 = sub_101007640(v20, v21, v70);
    v14 = &selRef_shouldQueueBeginScribbleMode;

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "writingToolsCoordinator(willChangeTo:) state: %s from: %s", v15, 0x16u);
    swift_arrayDestroy();
    v10 = v66;
    a4 = v67;
  }

  v23 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state;
  *(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_state) = a2;
  if (a2)
  {
    if (![v11 v14[244]])
    {
      sub_10100607C(v11);
    }

    v24 = *(a3 + v23);
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v45 = 0;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_21;
        }

        if ((*(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended) & 1) == 0)
        {
          *(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended) = 1;
          v41 = type metadata accessor for TaskPriority();
          (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
          type metadata accessor for MainActor();
          v42 = a3;
          v43 = static MainActor.shared.getter();
          v44 = swift_allocObject();
          v44[2] = v43;
          v44[3] = &protocol witness table for MainActor;
          v44[4] = v42;
          sub_100641C1C(0, 0, v10, &unk_1014C1BA8, v44);
        }

        v45 = 1;
      }

      sub_101005C20(v45);
      return (*(a4 + 16))(a4);
    }

    if (v24)
    {
      if (v24 == 1)
      {
        if ((*(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended) & 1) == 0)
        {
          *(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended) = 1;
          v25 = type metadata accessor for TaskPriority();
          (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
          type metadata accessor for MainActor();
          v26 = a3;
          v27 = static MainActor.shared.getter();
          v28 = swift_allocObject();
          v28[2] = v27;
          v28[3] = &protocol witness table for MainActor;
          v28[4] = v26;
          sub_100641C1C(0, 0, v10, &unk_1014C1BB0, v28);
        }

        return (*(a4 + 16))(a4);
      }

LABEL_21:
      v46 = a3;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v70[0] = v50;
        *v49 = 136315138;
        v51 = sub_101003EF0(*(a3 + v23));
        v53 = sub_101007640(v51, v52, v70);

        *(v49 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unknown state: %s", v49, 0xCu);
        sub_100005070(v50);
      }

      return (*(a4 + 16))(a4);
    }
  }

  if (![v11 v14[244]])
  {
    return (*(a4 + 16))(a4);
  }

  sub_101006784();
  if (*(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended))
  {
    *(a3 + OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_collaborationSuspended) = 0;
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    type metadata accessor for MainActor();
    v30 = a3;
    v31 = static MainActor.shared.getter();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = &protocol witness table for MainActor;
    v32[4] = v30;
    sub_100641C1C(0, 0, v10, &unk_1014C1BC0, v32);
  }

  sub_101005C20(0);
  sub_10100DB54();
  v33 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_observerSubscriptions;
  swift_beginAccess();
  v66 = v33;
  v67 = a4;
  v34 = *(a3 + v33);
  if ((v34 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    sub_101008CE4(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
    result = Set.Iterator.init(_cocoa:)();
    v37 = v70[0];
    v36 = v70[1];
    v38 = v70[2];
    v39 = v70[3];
    v40 = v70[4];
  }

  else
  {
    v54 = -1 << *(v34 + 32);
    v36 = v34 + 56;
    v38 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v40 = v56 & *(v34 + 56);
    result = swift_bridgeObjectRetain_n();
    v39 = 0;
    v37 = v34;
  }

  v65[1] = v38;
  v57 = (v38 + 64) >> 6;
  if (v37 < 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v58 = v39;
    v59 = v40;
    v60 = v39;
    if (!v40)
    {
      break;
    }

LABEL_35:
    v61 = (v59 - 1) & v59;
    v62 = *(*(v37 + 48) + ((v60 << 9) | (8 * __clz(__rbit64(v59)))));

    if (!v62)
    {
LABEL_41:
      sub_100035F90();

      *&v66[a3] = _swiftEmptySetSingleton;

      v64 = OBJC_IVAR____TtC8Freeform24CRLWPWritingToolsHandler_contexts;
      swift_beginAccess();
      *(a3 + v64) = _swiftEmptyDictionarySingleton;

      a4 = v67;
      return (*(a4 + 16))(a4);
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v39 = v60;
      v40 = v61;
      if ((v37 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_37:
      v63 = __CocoaSet.Iterator.next()();
      if (v63)
      {
        v68 = v63;
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v60 = v39;
        v61 = v40;
        if (v69)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {
      goto LABEL_41;
    }

    v59 = *(v36 + 8 * v60);
    ++v58;
    if (v59)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10100E440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_101005D74(a1, v4, v5, v6);
}

uint64_t sub_10100E4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_101005EF8(a1, v4, v5, v6);
}

void sub_10100E5B0()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlStatusHUD;
  v2 = static os_log_type_t.debug.getter();
  sub_100005404(v1, &_mh_execute_header, v2, "CRLBaseHUDControllerProtocol_mi setupView", 41, 2, _swiftEmptyArrayStorage);
  v3 = [v0 contentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  v4 = [v0 hudView];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [v0 containerView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10100E82C();
  sub_10100E9D0();
  sub_10100EB00();
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v6 = [v0 hudView];
    v7 = [v6 layer];

    [v7 setCornerRadius:20.0];
  }

  if ([v0 swipable])
  {
    v8 = [v0 swipeGestureRecognizer];
    if (!v8)
    {
      v9 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v0 action:"swipedWithSender:"];
      [v0 setSwipeGestureRecognizer:v9];
      v8 = v9;
    }

    v10 = [v0 containerView];
    v11 = [v0 swipeGestureRecognizer];
    if (v11)
    {
      v12 = v11;
      [v10 addGestureRecognizer:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10100E82C()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [objc_opt_self() crl_popoverVibrantBackgroundEffect];
    v2 = [v0 contentView];
    v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];
    [v2 addSubview:v3];

    v4 = [v0 hudView];
    if (_UISolariumEnabled())
    {
      v5 = 0;
    }

    else
    {
      v5 = [objc_opt_self() systemBackgroundColor];
    }

    [v4 setBackgroundColor:v5];

    v6 = [v0 containerView];
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor:v7];
  }
}

void sub_10100E9D0()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [v0 hudView];
    v5 = [v1 layer];

    if ((_UISolariumEnabled() & 1) != 0 || (v2 = [objc_opt_self() secondaryLabelColor], v3 = objc_msgSend(v2, "colorWithAlphaComponent:", 0.07), v2, !v3))
    {
      v4 = 0;
    }

    else
    {
      v4 = [v3 CGColor];
    }

    [v5 setBorderColor:v4];

    [v5 setBorderWidth:1.0];
  }
}

void sub_10100EB00()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [v0 hudView];
    v7 = [v1 layer];

    v2 = [objc_opt_self() blackColor];
    v3 = [v2 CGColor];

    [v7 setShadowColor:v3];
    [v7 setShadowRadius:5.0];
    v4 = [v0 hudView];
    v5 = [v4 traitCollection];

    LODWORD(v4) = [v5 crl_isUserInterfaceStyleLight];
    LODWORD(v6) = 1047569367;
    if (v4)
    {
      *&v6 = 0.15;
    }

    [v7 setShadowOpacity:v6];
    [v7 setShadowOffset:{0.0, 0.01}];
  }
}

uint64_t sub_10100EC98(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for CRLBoardEntity();
    return a2;
  }

  return result;
}

uint64_t sub_10100ED2C(uint64_t a1)
{
  v29 = type metadata accessor for UUID();
  __chkstk_darwin(v29);
  v32 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v23 - v4;
  __chkstk_darwin(v5);
  v28 = &v23 - v7;
  v8 = *(a1 + 56);
  v25 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v24 = (v9 + 63) >> 6;
  v31 = v6;
  v26 = v6 + 8;
  v27 = v6 + 16;
  v33 = a1;

  v13 = 0;
  for (i = v29; v11; result = v22(v19, i))
  {
    v15 = v13;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v31;
    v18 = *(v31 + 16);
    v19 = v28;
    v18(v28, *(v33 + 48) + *(v31 + 72) * (v16 | (v15 << 6)), i);
    v20 = v32;
    v18(v32, v19, i);
    v21 = v30;
    sub_100E6AF38(v30, v20);
    v22 = *(v17 + 8);
    v22(v21, i);
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v24)
    {
    }

    v11 = *(v25 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10100EF9C()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_101A28650);
  sub_10001A2F8(&unk_101A09E10, &unk_101A28650);
  dispatch thunk of Collection._customIndexOfEquatableElement(_:)();
  if ((v11 & 1) == 0)
  {
    return v10;
  }

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v4 = v12;
  if (v12 == v10)
  {
    return 0;
  }

  v5 = (v1 + 16);
  v6 = (v1 + 8);
  while (1)
  {
    v7 = dispatch thunk of Collection.subscript.read();
    (*v5)(v3);
    (v7)(&v10, 0);
    sub_100006760(&qword_1019F37C0, &type metadata accessor for UUID);
    LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v6)(v3, v0);
    if (v7)
    {
      break;
    }

    dispatch thunk of Collection.formIndex(after:)();
    dispatch thunk of Collection.endIndex.getter();
    v4 = v12;
    if (v12 == v10)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_10100F218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(type metadata accessor for UUID() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_100006760(&qword_1019F37C0, &type metadata accessor for UUID);
  v7 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_10100F338(uint64_t a1, unint64_t a2, void (*a3)(void))
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
    a3(0);
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

unint64_t sub_10100F44C(uint64_t a1, unint64_t a2, unint64_t *a3)
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
    sub_100006370(0, a3);
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

uint64_t sub_10100F56C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      for (j = 0; ; ++j)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (static OSSignpostID.== infix(_:_:)())
        {
          v5 = StaticString.description.getter();
          v7 = v6;
          if (v5 == StaticString.description.getter() && v7 == v8)
          {

            swift_unknownObjectRelease();
            return j;
          }

          v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

          swift_unknownObjectRelease();
          if (v9)
          {
            return j;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v10 == i)
        {
          return 0;
        }
      }

      __break(1u);
    }

    else
    {
      j = 0;
      v11 = v2 + 32;
      v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v2 + 32;
      while (v12 != j)
      {
        v2 = *(v11 + 8 * j);

        if (static OSSignpostID.== infix(_:_:)())
        {
          v13 = StaticString.description.getter();
          v15 = v14;
          if (v13 == StaticString.description.getter() && v15 == v16)
          {

            return j;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v11 = v19;
          if (v17)
          {
            return j;
          }
        }

        else
        {
        }

        if (i == ++j)
        {
          return 0;
        }
      }
    }

    __break(1u);
LABEL_28:
    ;
  }

  return 0;
}

void sub_1010100AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = a1;
  v53 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v13 = __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = &v45 - v17;
  v19 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v19)
  {
    v48 = v16;
    v49 = v9;
    v50 = v8;
    v54 = v19;
    v20 = [v3 presentedViewController];
    if (v20)
    {
      v21 = v20;
      sub_100006370(0, &qword_101A10AB0);
      v51 = v54;
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {

        v23 = v51;
LABEL_13:

        return;
      }
    }

    else
    {
      v26 = v54;
    }

    v27 = [v54 isBeingPresented];

    if (v27)
    {
      v23 = v54;
      goto LABEL_13;
    }

    v46 = v4;
    v51 = v5;
    v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator] = 1;
    v28 = [objc_opt_self() isReduceMotionEnabled];
    v29 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    [v29 leaveQuickSelectModeIfNeeded];
    [v3 endDrawingModeIfNeeded];
    v30 = [v29 miniFormatterPresenter];
    if (v30)
    {
      v31 = v30;
      if ([v30 isPresentingMiniFormatter])
      {
        [v31 dismissMiniFormatterWithAnimated:v28 ^ 1];
      }

      swift_unknownObjectRelease();
    }

    sub_100006370(0, &qword_1019F2D90);
    v45 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v32 = *(v48 + 1);
    v47 = v12;
    v48 = v32;
    v32(v15, v12);
    v33 = swift_allocObject();
    v35 = v53;
    v34 = v54;
    *(v33 + 16) = v3;
    *(v33 + 24) = v34;
    *(v33 + 32) = v28;
    *(v33 + 40) = v52;
    *(v33 + 48) = v35;
    aBlock[4] = sub_10104DDB8;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_1018ADE40;
    v36 = _Block_copy(aBlock);
    v54 = v54;
    v37 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    v38 = v37;
    sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
    v39 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v40 = v45;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v36);

    (*(v51 + 1))(v7, v39);
    (*(v49 + 8))(v11, v50);
    v48(v18, v47);
    if (v38[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] == 1)
    {
      v41 = v54;
      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v42 = static OS_os_log.crlDefault;
      v43 = static os_log_type_t.info.getter();
      sub_100005404(v42, &_mh_execute_header, v43, "Skipping request to update toolbar buttons after teardown.", 58, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      v44 = [v38 traitCollection];
      sub_100642864(v44, [*&v38[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] documentIsSharedReadOnly], aBlock);
      sub_100642CDC(aBlock, 0);

      sub_1005EB2D4(aBlock);
    }
  }

  else
  {
    if (qword_1019F21D0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlScenes;
    v25 = static os_log_type_t.error.getter();

    sub_100005404(v24, &_mh_execute_header, v25, "Attempted to present compact scenes navigator when its view controller was nil.", 79, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1010107F4(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v4 = [v3 layerHost];
  if (v4 && (v45 = [v4 canvasLayer], swift_unknownObjectRelease(), v45))
  {
    [v45 minimumPinchViewScale];
    v6 = v5;
    [v45 maximumPinchViewScale];
    v8 = sub_1004C3240(a1, v6, v7);
    [v3 visibleUnscaledRect];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v3 viewScale];
    v18 = v17 / v8;
    v19 = sub_100120414(v10, v12, v14, v16);
    v21 = v20;
    v22 = sub_10011F340(v14, v16, v18);
    [v3 zoomWithAnimationToUnscaledRect:{sub_10011EC70(v19, v21, v22)}];
  }

  else
  {
    v46 = objc_opt_self();
    v23 = [v46 _atomicIncrementAssertCount];
    v47 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v47);
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v32;
    v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 4318;
    v35 = v47;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v46 handleFailureInFunction:v42 file:v43 lineNumber:4318 isFatal:0 format:v44 args:v41];

    [v3 setViewScale:a1];
  }
}

void sub_101010D34()
{
  v1 = [*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] pencilMediator];
  if (v1)
  {
    v2 = [v1 pencilModeToBeginFromToolbarItem];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [v0 pencilDocumentModeFor:v2];
      v27 = sub_101012FD4();
      [v27 setMode:v3 animated:1];
    }

    else
    {
      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
      v28 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v28);
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
      *(inited + 152) = 3904;
      v17 = v28;
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
      sub_100005404(v12, &_mh_execute_header, v21, "Should not be asked to begin pencil mode from toolbar item if we cannot begin a pencil mode.", 92, 2, _swiftEmptyArrayStorage);

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

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:3904 isFatal:0 format:v26 args:v23];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1010111B0()
{
  v28 = &type metadata for CRLFeatureFlags;
  v1 = sub_100004D60();
  v29 = v1;
  LOBYTE(aBlock[0]) = 10;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v2)
  {
    v3 = [v0 traitCollection];
    v4 = [v3 crl_isCompactWidth];

    if ((v4 & 1) == 0)
    {
      v5 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v5)
      {
        v6 = v0;
        v7 = v5;
        v8 = sub_100ACC400();

        v28 = &type metadata for CRLFeatureFlags;
        v29 = v1;
        LOBYTE(aBlock[0]) = 0;
        LOBYTE(v7) = isFeatureEnabled(_:)();
        sub_100005070(aBlock);
        if ((v7 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v9 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v11 = sub_10067E168();
        v12 = dispatch thunk of Tip.id.getter();
        v14 = v13;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v12;
        *(inited + 40) = v14;
        v15 = static os_log_type_t.info.getter();
        sub_100005404(v9, &_mh_execute_header, v15, "presenting tip on canvas: %{public}@", 36, 2, inited);
        swift_setDeallocating();
        sub_100005070(inited + 32);
        if (sub_101039428())
        {
          type metadata accessor for TipUIPopoverViewController();
          v28 = &type metadata for CRLTipConnectionLinesEntryPointFull;
          v29 = v11;
          swift_unknownObjectRetain();
          v16 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
          swift_unknownObjectRetain();
          TipUIPopoverViewController.presentationDelegate.setter();
          v17 = TipUIPopoverViewController.popoverPresentationController.getter();
          if (v17)
          {
            v18 = v17;
            v19 = [v6 traitCollection];
            v20 = [v19 verticalSizeClass];

            if (v20 != 1)
            {
              [v18 setPermittedArrowDirections:3];
            }
          }

          v21 = swift_allocObject();
          v21[2] = v6;
          v21[3] = v16;
          v21[4] = sub_101039CF8;
          v21[5] = 0;
          v29 = sub_10105B11C;
          v30 = v21;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = *"";
          aBlock[2] = sub_100007638;
          v28 = &unk_1018AF150;
          v22 = _Block_copy(aBlock);
          v23 = v6;
          v24 = v16;

          [v23 presentViewController:v24 animated:1 completion:v22];

          _Block_release(v22);
        }

        else
        {
LABEL_13:
        }
      }

      else
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v25 = static OS_os_log.crlError;
        v26 = static os_log_type_t.error.getter();
        sub_100005404(v25, &_mh_execute_header, v26, "Unable to present connection lines entry point tip because relative rect not found", 82, 2, _swiftEmptyArrayStorage);
      }
    }
  }
}

void sub_101011590(char a1, char a2)
{
  v13 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  v12[0] = 0;
  v5 = isFeatureEnabled(_:)();
  sub_100005070(v12);
  if (v5)
  {
    v6 = [v2 presentedViewController];
    if (v6)
    {
      v7 = v6;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_100006370(0, &qword_101A10AB0);
        v10 = v7;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v10 dismissViewControllerAnimated:a1 & 1 completion:0];
          sub_10103ADB8(a2 & 1);
        }
      }
    }
  }
}

void sub_1010116A8()
{
  v32 = &type metadata for CRLFeatureFlags;
  v1 = sub_100004D60();
  v33 = v1;
  LOBYTE(aBlock[0]) = 0;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
    }

    else
    {
      v4 = v0;
      sub_10103A88C(v35);
      if (v36)
      {
        if (qword_1019F20A8 != -1)
        {
          swift_once();
        }

        v5 = static OS_os_log.crlError;
        v6 = static os_log_type_t.error.getter();
        sub_100005404(v5, &_mh_execute_header, v6, "Unable to present connection line on selection because there is no connection line knob position to present off of", 114, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        v7 = v35[4];
        v8 = [objc_allocWithZone(UIView) initWithFrame:{v35[0], v35[1], v35[2], v35[3]}];
        v9 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView];
        *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView] = v8;
        v10 = v8;

        if (v10)
        {
          v11 = [*&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] view];
          if (v11)
          {
            v12 = v11;
            [v11 addSubview:v10];

            v32 = &type metadata for CRLFeatureFlags;
            v33 = v1;
            LOBYTE(aBlock[0]) = 0;
            LOBYTE(v12) = isFeatureEnabled(_:)();
            sub_100005070(aBlock);
            if ((v12 & 1) == 0)
            {
              goto LABEL_19;
            }

            v30 = v7;
            if (qword_1019F2098 != -1)
            {
              swift_once();
            }

            v13 = static OS_os_log.crlDefault;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v15 = sub_10067E1BC();
            v16 = dispatch thunk of Tip.id.getter();
            v18 = v17;
            *(inited + 56) = &type metadata for String;
            *(inited + 64) = sub_1000053B0();
            *(inited + 32) = v16;
            *(inited + 40) = v18;
            v19 = static os_log_type_t.info.getter();
            sub_100005404(v13, &_mh_execute_header, v19, "presenting tip on canvas: %{public}@", 36, 2, inited);
            swift_setDeallocating();
            sub_100005070(inited + 32);
            if (sub_101039428())
            {
              type metadata accessor for TipUIPopoverViewController();
              v32 = &type metadata for CRLTipConnectionLinesOnSelection;
              v33 = v15;
              swift_unknownObjectRetain();
              v20 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
              swift_unknownObjectRetain();
              TipUIPopoverViewController.presentationDelegate.setter();
              v21 = TipUIPopoverViewController.popoverPresentationController.getter();
              v22 = v4;
              if (v21)
              {
                v23 = v21;
                v24 = [v4 traitCollection];
                v25 = [v24 verticalSizeClass];

                if (v25 != 1)
                {
                  [v23 setPermittedArrowDirections:*&v30];
                }
              }

              v26 = swift_allocObject();
              v26[2] = v4;
              v26[3] = v20;
              v26[4] = 0;
              v26[5] = 0;
              v33 = sub_10105ABD0;
              v34 = v26;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = *"";
              aBlock[2] = sub_100007638;
              v32 = &unk_1018AEE58;
              v27 = _Block_copy(aBlock);
              v28 = v22;
              v29 = v20;

              [v28 presentViewController:v29 animated:1 completion:v27];

              _Block_release(v27);
            }

            else
            {
LABEL_19:
            }
          }

          else
          {
            __break(1u);
          }
        }
      }
    }
  }
}

void sub_101011AFC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &type metadata for CRLFeatureFlags;
  v34 = sub_100004D60();
  LOBYTE(aBlock[0]) = 20;
  v12 = isFeatureEnabled(_:)();
  sub_100005070(aBlock);
  if (v12)
  {
    v30 = v2;
    v13 = [v0 traitCollection];
    v14 = [v13 crl_isCompactWidth];

    if (v14)
    {
      v15 = [v0 navigationItem];
      v16 = [v15 overflowPresentationSource];

      if (v16)
      {
        sub_101039A5C(v16, 0, 0);
        if (qword_1019F16C8 != -1)
        {
          swift_once();
        }

        v17 = sub_1005B981C(&unk_101A287C0);
        sub_1005EB3DC(v17, qword_101AD6818);
        Tips.Event.sendDonation<>(_:)();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v18 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
      if (v18)
      {
        v19 = v18;
        v20 = v0;
        if (sub_101039428())
        {
          v21 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
          sub_10091FD94();

          sub_100006370(0, &qword_1019F2D90);
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          v22 = swift_allocObject();
          *(v22 + 16) = v20;
          *(v22 + 24) = v19;
          v34 = sub_10105B158;
          v35 = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = *"";
          aBlock[2] = sub_100007638;
          v33 = &unk_1018AF1A0;
          v27 = _Block_copy(aBlock);
          v28 = v19;
          v23 = v20;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          v26 = sub_100006760(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
          sub_1005B981C(&unk_1019FF400);
          sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v24 = v27;
          v25 = v29;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v24);

          (*(v30 + 8))(v4, v1);
          (*(v31 + 8))(v7, v5);
          (*(v9 + 8))(v11, v8);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_10101200C()
{
  v13 = &type metadata for CRLFeatureFlags;
  v14 = sub_100004D60();
  LOBYTE(v12[0]) = 24;
  v1 = isFeatureEnabled(_:)();
  result = sub_100005070(v12);
  if (v1)
  {
    v3 = [v0 traitCollection];
    if ([v3 horizontalSizeClass] == 1)
    {
    }

    else
    {
      v4 = [objc_opt_self() crl_phoneUI];

      if (!v4)
      {
        v5 = sub_101013310();
        v6 = &type metadata for CRLTipStencilLibraryFull;
        v13 = &type metadata for CRLTipStencilLibraryFull;
        v7 = sub_10103AD30;
        v8 = sub_10067E9D0();
        goto LABEL_7;
      }
    }

    v5 = sub_101013290();
    v6 = &type metadata for CRLTipStencilLibraryCompact;
    v13 = &type metadata for CRLTipStencilLibraryCompact;
    v7 = sub_10103AD0C;
    v8 = sub_10067E97C();
LABEL_7:
    v9 = v8;
    v14 = v8;
    v10 = sub_100020E58(v12, v6);
    v11 = v5;
    sub_1010395E4(v10, v11, v7, 0, v6, v9);

    return sub_100005070(v12);
  }

  return result;
}

void sub_101012178(uint64_t a1@<X8>)
{
  URL.init(string:)();
  v2 = type metadata accessor for URL();
  if ((*(*(v2 - 8) + 48))(a1, 1, v2) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
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
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 31;
    v16 = v26;
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
    sub_100005404(v11, &_mh_execute_header, v20, "Cloud Quota Exceeded Change Plan URL is nil", 43, 2, _swiftEmptyArrayStorage);

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

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:31 isFatal:0 format:v25 args:v22];
  }
}

uint64_t sub_1010125B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  return sub_1007D40B4();
}

uint64_t sub_101012638(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_1010126D0, v4, v3);
}

uint64_t sub_1010126D0()
{
  v1 = objc_allocWithZone(type metadata accessor for CRLFileWriteAssetDownloadAlertViewController());
  *(v0 + 152) = 0;
  State.init(wrappedValue:)();
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 24) = *(v0 + 88);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  v2 = UIHostingController.init(rootView:)();
  *(v0 + 136) = v2;
  [v2 setModalPresentationStyle:2];
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_1010127C8;
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);

  return sub_101228C4C(v5, v4);
}

uint64_t sub_1010127C8()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_1010128E8, v3, v2);
}

uint64_t sub_1010128E8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_101012978(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v4 setDocumentIsSharedReadOnly:a1 & 1];
  if (a1)
  {
    sub_101029C04(0);
  }

  v5 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
  if (v5)
  {
    v6 = v5;
    sub_100ACD0A8();
  }

  *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = sub_10064E0E4();

  v7 = [v2 traitCollection];
  sub_100642864(v7, [v4 documentIsSharedReadOnly], v18);
  sub_100642CDC(v18, 0);
  sub_1005EB2D4(v18);

  v8 = [v2 traitCollection];
  [v4 documentIsSharedReadOnly];
  sub_10067AD3C(v8);

  v9 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  static Published.subscript.setter();
  v11 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1006A4EF0();
    v14 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu;
    v15 = *&v12[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu];
    *&v12[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = v13;

    v16 = sub_1006A4738();
    v17 = *&v12[v14];
    [v16 setMenu:v17];
  }
}

id sub_101012B64()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
    v5 = sub_101013094();
    v6 = objc_allocWithZone(CRLEditorController);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithEditingCoordinator:v4 rootEditor:v5 debugName:v7];

    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_101012C40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_100050004(v16 + v17, v5, type metadata accessor for CRLBoardCRDTData);
    v18 = v14;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v5, type metadata accessor for CRLBoardCRDTData);
    v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v20 = *v19;
    v21 = v19[1];

    sub_10084BD4C(v8, v20, v21, v11);

    sub_1010AB99C(v11, a1);
    sub_10003D7BC(v11, type metadata accessor for CRLBoardIdentifier);

    v24 = _s5BoardVMa(0);
    return (*(*(v24 - 8) + 56))(a1, 0, 1, v24);
  }

  else
  {
    v22 = _s5BoardVMa(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

id sub_101012FD4()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLiOSDocumentModeController) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_101013094()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLBoardEditor) initWithInteractiveCanvasController:*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController)];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_101013118()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper);
  }

  else
  {
    type metadata accessor for CRLBoardItemInsertingHelper();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

unint64_t sub_101013350()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem;
  if (*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem);
  }

  else
  {
    v2 = sub_10064E0E4();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1010133D4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

objc_class *sub_101013474(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v1;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0);
    v11.value.super.super.isa = v6;
    v11.is_nil = 0;
    v7.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v11, v12).super.super.isa;
    v8 = *(v1 + v2);
    *(v5 + v2) = v7;
    v4 = v7.super.super.isa;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

id sub_1010135A8()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem);
  }

  else
  {
    v4 = sub_100678AC0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_101013608()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController);
    if (v4)
    {
      v5 = v4;
      v3 = sub_100FA0048();

      v6 = *(v0 + v1);
    }

    else
    {
      v3 = 0;
      v6 = 1;
    }

    *(v0 + v1) = v3;
    v7 = v3;
    sub_1000505D0(v6);
  }

  sub_1000505E0(v2);
  return v3;
}

id sub_1010136CC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    type metadata accessor for CRLCanvasLayerSnapshotHostingView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1010137CC()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController);
  }

  else
  {
    v4 = [objc_allocWithZone(CRLFindReplaceController) initWithEditingCoordinator:*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) delegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_10101389C(void *a1)
{
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v52 = sub_100006370(0, &qword_1019F6D00);
  sub_1005B981C(&qword_101A28718);
  String.init<A>(describing:)();
  v3 = String._bridgeToObjectiveC()();

  v4 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v4;
  v5 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v3;
  v6 = inited + 32;
  *(inited + 64) = v5;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v48 = objc_opt_self();
    v49 = [v48 _atomicIncrementAssertCount];
    v52 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v52);
    StaticString.description.getter();
    v51 = inited;
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v20 = static OS_os_log.crlAssert;
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_10146CA70;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = v49;
      *(v21 + 96) = v4;
      *(v21 + 104) = v5;
      *(v21 + 72) = v14;
      *(v21 + 136) = &type metadata for String;
      v22 = sub_1000053B0();
      *(v21 + 112) = v17;
      *(v21 + 120) = v19;
      *(v21 + 176) = &type metadata for UInt;
      *(v21 + 184) = &protocol witness table for UInt;
      *(v21 + 144) = v22;
      *(v21 + 152) = 208;
      v23 = v52;
      *(v21 + 216) = v4;
      *(v21 + 224) = v5;
      *(v21 + 192) = v23;
      v24 = v14;
      v25 = v23;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
      swift_setDeallocating();
      v49 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v20, &_mh_execute_header, v27, "expected equality between two values of type %{public}@", 55, 2, v51);

      type metadata accessor for __VaListBuilder();
      v5 = swift_allocObject();
      v5[2] = 8;
      v5[3] = 0;
      v28 = v5 + 3;
      v5[4] = 0;
      v5[5] = 0;
      v4 = *(v51 + 16);
      if (!v4)
      {
LABEL_31:
        v43 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v44 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        [v48 handleFailureInFunction:v44 file:v45 lineNumber:208 isFatal:0 format:v46 args:v43];

        swift_setDeallocating();
        swift_arrayDestroy();
        return 0;
      }

      v29 = 0;
      while (1)
      {
        v30 = (v6 + 40 * v29);
        v17 = v30[3];
        v19 = sub_100020E58(v30, v17);
        v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v14 = *v28;
        v32 = *(v31 + 16);
        v33 = __OFADD__(*v28, v32);
        v34 = *v28 + v32;
        if (v33)
        {
          break;
        }

        v19 = v5[4];
        if (v19 >= v34)
        {
          goto LABEL_23;
        }

        if (v19 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v17 = v5[5];
        if (2 * v19 > v34)
        {
          v34 = 2 * v19;
        }

        v5[4] = v34;
        if ((v34 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v35 = v31;
        v36 = swift_slowAlloc();
        v37 = v36;
        v5[5] = v36;
        if (v17)
        {
          if (v36 != v17 || v36 >= &v17[8 * v14])
          {
            memmove(v36, v17, 8 * v14);
          }

          v19 = v5;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v31 = v35;
LABEL_23:
          v37 = v5[5];
          if (!v37)
          {
            goto LABEL_30;
          }

          goto LABEL_24;
        }

        v31 = v35;
        if (!v37)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v39 = *(v31 + 16);
        if (v39)
        {
          v40 = (v31 + 32);
          v41 = *v28;
          while (1)
          {
            v42 = *v40++;
            *&v37[8 * v41] = v42;
            v41 = *v28 + 1;
            if (__OFADD__(*v28, 1))
            {
              break;
            }

            *v28 = v41;
            if (!--v39)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          break;
        }

LABEL_8:

        if (++v29 == v4)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession;
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession);
  if (!v8)
  {
    v9 = sub_1010137CC();
    v10 = objc_allocWithZone(type metadata accessor for CRLiOSFindSession());
    v11 = sub_100FB1CC8(v9, a1);
    v12 = *(v1 + v7);
    *(v1 + v7) = v11;

    v8 = *(v1 + v7);
  }

  v13 = v8;
  return v8;
}

id sub_10101412C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UILayoutGuide) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

char *sub_101014204(char *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___editorController] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardEditor] = 0;
  v8 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator;
  *&v4[v8] = [objc_allocWithZone(CRLSelectionModelTranslator) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertingHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertingCancellableToken] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isSuppressingBottomToolTrayForPresentationController] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isExportingToPDF] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressTimer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_progressViewController] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardHasSyncedAtLeastOnce] = 0;
  v9 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_cloudQuotaMessagingObserver;
  type metadata accessor for CRLCloudQuotaMessagingObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = ICQCurrentInAppMessageChangedNotification;
  *(v10 + 32) = 0;
  *(v10 + 40) = v11;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *&v4[v9] = v10;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController] = 0;
  v12 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSyncAwaitTask];
  v12[1] = 0;
  v12[2] = 0;
  *v12 = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView] = 0;
  v13 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey];
  strcpy(&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUpdateInfoKey], "iOSUpdateInfo");
  *(v13 + 7) = -4864;
  v14 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_CRLUnsupportedDevicesKey];
  *v14 = 0xD000000000000012;
  v14[1] = 0x80000001015935E0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions] = _swiftEmptySetSingleton;
  v15 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastContentOffset];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastCanvasCenter];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_toolbarButtonState];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 8) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___undoToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertTextBoxToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertAVMediaToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStickyNoteToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertShapeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___togglePencilModeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___insertStencilToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___shareToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___boardViewControlsItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___newBoardToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithModeToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___doneWithScenesNavigatorToolbarItem] = 0;
  *(v10 + 80) = 0x4122750000000000;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___viewOnlyToolbarItem] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___collaborationButtonItem] = 1;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_photoPickerLoadingProgress] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_gpHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_insertURLAlert] = 0;
  v18 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView;
  v19 = objc_allocWithZone(CRLScrollView);
  v20 = v11;
  *&v4[v18] = [v19 init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomToolTray] = 0;
  v21 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper;
  *&v4[v21] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___bottomSceneCaptureSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___topSceneCaptureSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___sceneNavigationSnapshotHostingView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomControlViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasZoomAndScenesContainerView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController] = 0;
  v22 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewState;
  *&v4[v22] = [objc_allocWithZone(type metadata accessor for CRLConnectorModeMessageViewState()) init];
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_skipNextToolbarUpdate] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController] = 0;
  v23 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  *&v4[v23] = [objc_allocWithZone(type metadata accessor for CRLScenesNavigatorState()) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigationCrossfadeSnapshotLayers] = _swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  *&v4[v24] = [objc_allocWithZone(type metadata accessor for CRLScenesPopoverState(0)) init];
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter] = 0;
  v25 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
  *v25 = 0;
  v25[8] = 1;
  v26 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_sceneToContentDict;
  *&v4[v26] = sub_100BD99E8(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_presentedSceneAlert] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_willPresentCompactScenesNavigator] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_findSession] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___findReplaceController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_topUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_bottomUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_leadingUnobscuredRectLayoutGuideConstraint] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_trailingUnobscuredRectLayoutGuideConstraint] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isChangingDocumentModeToHandwriting] = 0;
  v27 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shapeLibrarySearchTerm];
  *v27 = 0;
  v27[1] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipObservation] = 0;
  swift_unknownObjectWeakInit();
  v28 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentlyPresentedTip];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_tipPresentationView] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_wantsToRestoreModeAfterGP] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_mediaReplacer] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___unobscuredRectLayout] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___keyboardFrameLayoutGuide] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosing] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isClosed] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followHUD] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_followBorderHighlightView] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation] = 0;
  v29 = &v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver];
  *v29 = 0u;
  v29[1] = 0u;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState] = 0;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled] = 2;
  v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isConnectorModeEnabled] = 2;
  v30 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_lastPrintContentDate;
  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 56))(&v4[v30], 1, 1, v31);
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] = a1;
  *(*&a1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator] + OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_delegate + 8) = &off_10188DDF0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController] = a3;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] = a4;
  v32 = *&a1[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard];
  v33 = type metadata accessor for CRLGelatoShareSheetProvider();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_thumbnailProvider];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_presentingViewController] = 0;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_icc] = a3;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_board] = v32;
  *&v34[OBJC_IVAR____TtC8Freeform27CRLGelatoShareSheetProvider_boardLibrary] = a2;
  *v35 = 0;
  *(v35 + 1) = 0;
  v79.receiver = v34;
  v79.super_class = v33;
  v36 = a3;
  v73 = a1;
  v37 = a4;
  v38 = v32;
  v39 = a2;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_shareSheetProvider] = objc_msgSendSuper2(&v79, "init");
  *&v4[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager] = [objc_allocWithZone(type metadata accessor for CRLStatusHUDManager()) init];
  v78.receiver = v4;
  v78.super_class = type metadata accessor for CRLiOSBoardViewController();
  v40 = objc_msgSendSuper2(&v78, "initWithNibName:bundle:", 0, 0);
  v41 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator;
  v42 = *(*&v40[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  type metadata accessor for CRLViewStateRestorationHelper();
  swift_allocObject();
  v43 = v40;
  v44 = v36;
  v45 = v39;
  v46 = v43;
  v47 = v42;
  v48 = sub_10075335C(v47, v45, v44);

  *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper] = v48;

  v49 = objc_allocWithZone(type metadata accessor for CRLGelatoInterstitialUIController());
  v50 = sub_100FA2D34(v46);

  v51 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
  *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController] = v50;

  sub_101014DFC();
  v52 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager);
  [v52 addDelegate:v46];

  v76 = &type metadata for CRLFeatureFlags;
  v53 = sub_100004D60();
  v77 = v53;
  v75[0] = 13;
  LOBYTE(v52) = isFeatureEnabled(_:)();
  sub_100005070(v75);
  if (v52)
  {
    v72 = v45;
    v54 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v55 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
    v56 = *&v54[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates];
    v57 = v54;
    if (([v56 containsObject:v46] & 1) == 0)
    {
      [*&v54[v55] addObject:v46];
    }

    v58 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v59 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
    v60 = *&v58[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers];
    v61 = v58;
    if (([v60 containsObject:v44] & 1) == 0)
    {
      [*&v58[v59] addObject:v44];
    }

    v45 = v72;
  }

  if ([objc_opt_self() isOSFeatureEnabled:5])
  {
    v62 = objc_allocWithZone(type metadata accessor for CRLiOSFreehandDrawingItemsSearchTarget());
    v63 = v44;
    v64 = sub_100712620();

    v65 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget];
    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget] = v64;

    v66 = [objc_allocWithZone(CRLiOSFreehandDrawingHighlightManager) initWithInteractiveCanvasController:v63];
    v67 = *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager];
    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] = v66;
  }

  v76 = &type metadata for CRLFeatureFlags;
  v77 = v53;
  v75[0] = 1;
  v68 = isFeatureEnabled(_:)();
  sub_100005070(v75);
  if (v68)
  {
    v69 = *(*&v40[v41] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
    type metadata accessor for CRLAASBoardTracker();
    swift_allocObject();
    v70 = sub_10074DC30(v46, v69);

    *&v46[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker] = v70;
  }

  else
  {
  }

  return v46;
}

void sub_101014DFC()
{
  v1 = sub_101012FD4();
  [v1 addModeObserver:v0];

  v2 = [objc_opt_self() defaultCenter];
  v3 = qword_1019F1710;
  v4 = *(*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD6898;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_10105AAFC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = *"";
  v10[2] = sub_100059694;
  v10[3] = &unk_1018AED90;
  v7 = _Block_copy(v10);
  v8 = v4;

  v9 = [v2 addObserverForName:v5 object:v8 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  if (qword_1019F1F48 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  if (qword_1019F28A0 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
  if (qword_1019F1AA8 != -1)
  {
    swift_once();
  }

  [v2 addObserver:v0 selector:? name:? object:?];
}

void sub_1010150C8()
{
  v0 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v28[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController);

      v14 = *(*&v10[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
      v15 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v16 = *&v14[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v17 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_100050004(v16 + v17, v2, type metadata accessor for CRLBoardCRDTData);
      v18 = v14;
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D7BC(v2, type metadata accessor for CRLBoardCRDTData);
      v19 = (*&v14[v15] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v20 = *v19;
      v21 = v19[1];

      sub_10084BD4C(v5, v20, v21, v8);

      v22 = *&v13[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights];
      __chkstk_darwin(v23);
      *&v28[-16] = v8;

      v24 = sub_101107CA8(sub_1008F65DC, &v28[-32], v22);

      if (v24)
      {
        v25 = [objc_allocWithZone(SWHighlightChangeEvent) initWithHighlight:*&v24[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] trigger:1];
        v26 = *&v13[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter];
        v27 = v25;
        [v26 postNoticeForHighlightEvent:v27];
      }

      else
      {
        v27 = v10;
        v10 = v13;
      }

      sub_10003D7BC(v8, type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
    }
  }
}

id sub_10101542C()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v89 - v3;
  v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown;
  if (v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] != 1)
  {
    goto LABEL_4;
  }

  v92 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown;
  v91 = objc_opt_self();
  LODWORD(i) = [v91 _atomicIncrementAssertCount];
  *&v99[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v99);
  StaticString.description.getter();
  v93 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v10;

  if (qword_1019F20A0 == -1)
  {
    goto LABEL_3;
  }

  while (1)
  {
    swift_once();
LABEL_3:
    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = i;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    v15 = v93;
    *(inited + 72) = v93;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    v17 = v90;
    *(inited + 112) = v9;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 387;
    v18 = *&v99[0];
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v18;
    v19 = v15;
    v20 = v18;
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v21, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v22, "Should not call tearDown() twice.", 33, 2, _swiftEmptyArrayStorage);

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

    [v91 handleFailureInFunction:v25 file:v26 lineNumber:387 isFatal:0 format:v27 args:v24];

    v5 = v92;
LABEL_4:
    v1[v5] = 1;
    sub_10102231C(v99);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = v1;
    v30 = v99[0];
    *(v29 + 56) = v99[1];
    v31 = v100[0];
    *(v29 + 72) = v99[2];
    *(v29 + 88) = v31;
    *(v29 + 97) = *(v100 + 9);
    *(v29 + 40) = v30;
    v1 = v1;
    sub_1006D62AC(v99, v96);
    sub_100CA64C8(0, 0, v4, &unk_1014C2350, v29);

    sub_1006D62E4(v99);
    sub_10000CAAC(v4, &qword_1019FB750);
    v32 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    [*(v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager) removeDelegate:v1];
    v33 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator;
    v34 = *(v32 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator);
    v35 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates;
    v36 = *&v34[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_uiDelegates];
    v37 = v34;
    if ([v36 containsObject:v1])
    {
      [*&v34[v35] removeObject:v1];
    }

    v38 = *(v32 + v33);
    v39 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
    v40 = OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers;
    v41 = *&v38[OBJC_IVAR____TtC8Freeform20CRLFollowCoordinator_interactiveCanvasControllers];
    v42 = v38;
    if ([v41 containsObject:v39])
    {
      [*&v38[v40] removeObject:v39];
    }

    v43 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray];
    if (v43)
    {
      v44 = v43;
      sub_100F08C7C();
    }

    v45 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController;
    v46 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController];
    if (v46)
    {
      v47 = v46;
      sub_1008F69BC();

      v46 = *&v1[v45];
    }

    *&v1[v45] = 0;

    v48 = sub_101012FD4();
    v49 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    [v48 removeModeObserver:v49];

    [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController] removeModeObserver:v1];
    v97 = &type metadata for CRLFeatureFlags;
    v98 = sub_100004D60();
    LOBYTE(v96[0]) = 20;
    LOBYTE(v48) = isFeatureEnabled(_:)();
    sub_100005070(v96);
    if (v48)
    {
      v50 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorViewController];
      if (v50)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v52 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
          v53 = Strong;
          v54 = v50;
          v55 = v52;

          [v55 removeDecorator:v54];
        }
      }

      v56 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPresenter];
      if (v56)
      {
        v57 = v56;
        sub_100697070();
      }

      v58 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesPresenter];
      if (v58)
      {
        v59 = v58;
        sub_1006984F8();
      }
    }

    [v49 teardown];
    v60 = [v39 textInputResponder];
    [v60 resignFirstResponder];

    [v39 teardown];
    [v39 setDelegate:0];
    [v49 setUserDialogPresenter:0];
    [v49 setDelegate:0];
    [v39 setLayerHost:0];
    v61 = sub_101012B64();
    [v61 teardown];

    result = [v1 view];
    if (!result)
    {
      break;
    }

    v63 = result;
    type metadata accessor for CRLiOSBoardView();
    *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();

    v64 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController;
    v65 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
    if (v65)
    {
      v66 = v65;
      sub_100FA05F0();

      v65 = *&v1[v64];
    }

    *&v1[v64] = 0;

    v67 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
    *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController] = 0;

    v68 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController];
    *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_connectorModeMessageViewController] = 0;

    v69 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget;
    v70 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingItemsSearchTarget];
    if (v70)
    {
      v71 = v70;
      sub_10070F334();

      v70 = *&v1[v69];
    }

    *&v1[v69] = 0;

    v72 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager;
    [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_freehandDrawingHighlightManager] teardown];
    v73 = *&v1[v72];
    *&v1[v72] = 0;

    v74 = [objc_opt_self() sharedPrintController];
    [v74 dismissAnimated:0];

    v75 = [objc_opt_self() defaultCenter];
    [v75 removeObserver:v1];

    [objc_opt_self() removeKeyboardObserver:v1];
    sub_100C86398();
    v76 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions;
    swift_beginAccess();
    v92 = *&v1[v76];
    v93 = v76;
    if ((v92 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      sub_100006760(&qword_1019FB8C0, &type metadata accessor for AnyCancellable);
      Set.Iterator.init(_cocoa:)();
      v78 = v96[0];
      v77 = v96[1];
      v79 = v96[2];
      v9 = v97;
      v4 = v98;
    }

    else
    {
      v80 = -1 << *(v92 + 32);
      v77 = v92 + 56;
      v79 = ~v80;
      v81 = -v80;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      else
      {
        v82 = -1;
      }

      v4 = (v82 & *(v92 + 56));
      v78 = v92;
      swift_bridgeObjectRetain_n();
      v9 = 0;
    }

    v91 = v79;
    for (i = (v79 + 64) >> 6; v78 < 0; v4 = v86)
    {
      v88 = __CocoaSet.Iterator.next()();
      if (!v88)
      {
        goto LABEL_42;
      }

      v94 = v88;
      type metadata accessor for AnyCancellable();
      swift_dynamicCast();
      v85 = v9;
      v86 = v4;
      if (!v95)
      {
        goto LABEL_42;
      }

LABEL_40:
      AnyCancellable.cancel()();

      v9 = v85;
    }

    v83 = v9;
    v84 = v4;
    v85 = v9;
    if (v4)
    {
LABEL_36:
      v86 = (v84 - 1) & v84;
      v87 = *(*(v78 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));

      if (v87)
      {
        goto LABEL_40;
      }

LABEL_42:
      sub_100035F90();

      *&v93[v1] = _swiftEmptySetSingleton;
    }

    while (1)
    {
      v85 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v85 >= i)
      {
        goto LABEL_42;
      }

      v84 = *(v77 + 8 * v85);
      ++v83;
      if (v84)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_101016020()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown) & 1) == 0)
  {
    v25 = objc_opt_self();
    v2 = [v25 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
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
    *(inited + 152) = 445;
    v14 = v27;
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
    sub_100005404(v9, &_mh_execute_header, v18, "Must call tearDown() before deallocation occurs.", 48, 2, _swiftEmptyArrayStorage);

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

    [v25 handleFailureInFunction:v21 file:v22 lineNumber:445 isFatal:0 format:v23 args:v20];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLiOSBoardViewController();
  return objc_msgSendSuper2(&v26, "dealloc");
}

uint64_t type metadata accessor for CRLiOSBoardViewController()
{
  result = qword_101A28570;
  if (!qword_101A28570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101016B0C()
{
  v1[87] = v0;
  type metadata accessor for MainActor();
  v1[88] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[89] = v3;
  v1[90] = v2;

  return _swift_task_switch(sub_101016BA8, v3, v2);
}

uint64_t sub_101016BA8()
{
  v1 = v0[87];
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState;
  v0[91] = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_didRestoreCanvasViewState;
  if ((*(v1 + v2) & 1) != 0 || (v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper), (v0[92] = v3) == 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_101016C78, v3, 0);
  }
}

uint64_t sub_101016C78()
{
  v1 = *(v0 + 736);
  if (*(v1 + 144) == 1)
  {
    *(v0 + 416) = *(v1 + 152);
    v2 = *(v1 + 168);
    v3 = *(v1 + 184);
    v4 = *(v1 + 200);
    *(v0 + 473) = *(v1 + 209);
    *(v0 + 448) = v3;
    *(v0 + 464) = v4;
    *(v0 + 432) = v2;
    sub_10000BE14(v0 + 416, v0 + 496, &qword_1019FE618);

    v5 = *(v0 + 464);
    *(v0 + 48) = *(v0 + 448);
    *(v0 + 64) = v5;
    *(v0 + 73) = *(v0 + 473);
    v6 = *(v0 + 432);
    *(v0 + 16) = *(v0 + 416);
    *(v0 + 32) = v6;
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);

    return _swift_task_switch(sub_101016F84, v8, v7);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 744) = v9;
    *v9 = v0;
    v9[1] = sub_101016DB0;

    return sub_1007528DC();
  }
}

uint64_t sub_101016DB0()
{
  v1 = *v0;

  v2 = *(v1 + 736);

  return _swift_task_switch(sub_101016EC0, v2, 0);
}

uint64_t sub_101016EC0()
{
  v1 = *(v0 + 736);
  *(v0 + 96) = *(v1 + 152);
  v2 = *(v1 + 184);
  v3 = *(v1 + 200);
  v4 = *(v1 + 168);
  *(v0 + 153) = *(v1 + 209);
  *(v0 + 128) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v4;
  sub_10000BE14(v0 + 96, v0 + 176, &qword_1019FE618);

  v5 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v5;
  *(v0 + 73) = *(v0 + 153);
  v6 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v6;
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);

  return _swift_task_switch(sub_101016F84, v8, v7);
}

uint64_t sub_101016F84()
{

  v1 = *(v0 + 88);
  if (v1 != 2)
  {
    v2 = *(v0 + 728);
    v3 = *(v0 + 696);
    v4 = *(v0 + 64);
    *(v0 + 608) = *(v0 + 48);
    *(v0 + 624) = v4;
    *(v0 + 640) = *(v0 + 80);
    v5 = *(v0 + 32);
    *(v0 + 576) = *(v0 + 16);
    *(v0 + 592) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v9 = *(v0 + 576);
    *(v8 + 40) = *(v0 + 592);
    v10 = *(v0 + 624);
    *(v8 + 56) = *(v0 + 608);
    *(v8 + 72) = v10;
    *(v8 + 16) = v7;
    *(v8 + 88) = *(v0 + 640);
    *(v8 + 24) = v9;
    *(v8 + 96) = v1;
    *(v0 + 680) = sub_10105AA80;
    *(v0 + 688) = v8;
    *(v0 + 648) = _NSConcreteStackBlock;
    *(v0 + 656) = *"";
    *(v0 + 664) = sub_100007638;
    *(v0 + 672) = &unk_1018AED40;
    v11 = _Block_copy((v0 + 648));
    v12 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = v12;
    *(v0 + 313) = *(v0 + 73);
    v13 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v13;
    sub_1006D62AC(v0 + 256, v0 + 336);

    [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v11];
    sub_10000CAAC(v0 + 16, &qword_1019FE618);
    _Block_release(v11);
    *(v3 + v2) = 1;
  }

  v14 = *(v0 + 8);

  return v14();
}

void sub_101017174()
{
  v1 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v1 - 8);
  v3 = &v122 - v2;
  type metadata accessor for CRLiOSBoardView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8Freeform15CRLiOSBoardView_delegate + 8] = &off_1018ADDD8;
  swift_unknownObjectWeakAssign();
  v130 = v4;
  [v0 setView:v4];
  v5 = [objc_allocWithZone(CRLCanvasView) init];
  v6 = [v5 canvasLayer];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v0;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_10064191C(0, 0, v3, &unk_1014C24D0, v10);

  v11 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
  [v11 setView:v5];
  v12 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
  v128 = v5;
  [v12 addSubview:v5];
  v13 = [objc_opt_self() iOSBoardViewControllerScrollViewIdentifier];
  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = String._bridgeToObjectiveC()();
  }

  [v12 setAccessibilityIdentifier:v13];

  v14 = *&v8[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v11 setInteractiveCanvasController:v14];
  [v14 setLayerHost:v11];
  [v14 setDelegate:v8];
  [v11 setDelegate:v8];
  [v11 setUserDialogPresenter:v8];
  v15 = sub_101012FD4();
  [v15 addModeObserver:v11];

  [v14 setShouldCanvasScrollingSizeGrowToFitBoardContent:1];
  v129 = v6;
  [v6 setUnscaledSize:0 fixFrame:{1000.0, 500.0}];
  [v14 setCreateRepsForOffscreenLayouts:0];
  v16 = [objc_allocWithZone(CRLFreehandDrawingToolkitUIState) init];
  v17 = objc_allocWithZone(CRLFreehandDrawingToolkit);
  v127 = v16;
  v18 = [v17 initWithDelegate:v8 uiState:v16];
  [v14 setFreehandDrawingToolkit:v18];

  v19 = objc_allocWithZone(type metadata accessor for CRLiOSPencilKitCanvasViewController());
  v20 = v8;
  v21 = sub_101050084(v20, v19);
  [v20 addChildViewController:v21];
  [v21 didMoveToParentViewController:v20];
  v22 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewController] = v21;
  v23 = v21;

  v126 = v23;
  if (![v23 view])
  {
    __break(1u);
    return;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClassUnconditional();
  v25 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView] = v24;

  v26 = [objc_allocWithZone(UIViewController) initWithNibName:0 bundle:0];
  [v20 addChildViewController:v26];
  [v26 didMoveToParentViewController:v20];
  [v26 setView:v12];
  v27 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasScrollViewController] = v26;
  v28 = v26;

  [v28 addChildViewController:v11];
  [v11 didMoveToParentViewController:v28];
  v125 = v28;

  [v12 setContentInsetAdjustmentBehavior:3];
  v29 = [v14 canvasBackground];
  (*((swift_isaMask & *v29) + 0x80))();

  type metadata accessor for CRLCanvasBackgroundView();
  v30 = swift_dynamicCastMetatype();
  v131 = v14;
  v132 = v12;
  if (!v30)
  {
    v124 = objc_opt_self();
    v41 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133);
    StaticString.description.getter();
    v123 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [v42 lastPathComponent];

    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v47 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v41;
    v49 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v49;
    v50 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v50;
    v51 = v123;
    *(inited + 72) = v123;
    *(inited + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(inited + 112) = v44;
    *(inited + 120) = v46;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v52;
    *(inited + 152) = 533;
    v53 = v133[0];
    *(inited + 216) = v49;
    *(inited + 224) = v50;
    *(inited + 192) = v53;
    v54 = v51;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v57 = static os_log_type_t.error.getter();
    sub_100005404(v47, &_mh_execute_header, v57, "Unable to determine canvas background view class!", 49, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v60 file:v61 lineNumber:533 isFatal:0 format:v39 args:v59];
    goto LABEL_13;
  }

  v31 = v30;
  v32 = v14;
  [v12 frame];
  v37 = [objc_allocWithZone(v31) initWithFrame:{v33, v34, v35, v36}];
  v38 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView] = v37;
  v39 = v37;

  if (!v39)
  {
    v124 = objc_opt_self();
    v62 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133);
    StaticString.description.getter();
    v123 = String._bridgeToObjectiveC()();

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
    v69 = swift_initStackObject();
    *(v69 + 16) = xmmword_10146CA70;
    *(v69 + 56) = &type metadata for Int32;
    *(v69 + 64) = &protocol witness table for Int32;
    *(v69 + 32) = v62;
    v70 = sub_100006370(0, &qword_1019F4D30);
    *(v69 + 96) = v70;
    v71 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v69 + 104) = v71;
    v72 = v123;
    *(v69 + 72) = v123;
    *(v69 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v69 + 112) = v65;
    *(v69 + 120) = v67;
    *(v69 + 176) = &type metadata for UInt;
    *(v69 + 184) = &protocol witness table for UInt;
    *(v69 + 144) = v73;
    *(v69 + 152) = 530;
    v74 = v133[0];
    *(v69 + 216) = v70;
    *(v69 + 224) = v71;
    *(v69 + 192) = v74;
    v75 = v72;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v69);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v68, &_mh_execute_header, v78, "Unable to load canvas background view!", 38, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v60 file:v61 lineNumber:530 isFatal:0 format:v39 args:v80];
LABEL_13:

    v32 = v131;
    v12 = v132;
    goto LABEL_14;
  }

  [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper];
  [v40 addSubview:v39];
  [v40 addSubview:v12];
LABEL_14:

  v81 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
  if (!v81)
  {
    goto LABEL_21;
  }

  v82 = [v81 layer];
  if (!v82)
  {
    goto LABEL_21;
  }

  v83 = v82;
  type metadata accessor for CRLCanvasBackgroundLayer();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {

LABEL_21:
    v124 = objc_opt_self();
    v91 = [v124 _atomicIncrementAssertCount];
    v133[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v133);
    StaticString.description.getter();
    v123 = String._bridgeToObjectiveC()();

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
    sub_1005B981C(&qword_1019F54E0);
    v98 = swift_initStackObject();
    *(v98 + 16) = xmmword_10146CA70;
    *(v98 + 56) = &type metadata for Int32;
    *(v98 + 64) = &protocol witness table for Int32;
    *(v98 + 32) = v91;
    v99 = sub_100006370(0, &qword_1019F4D30);
    *(v98 + 96) = v99;
    v100 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v98 + 104) = v100;
    v101 = v123;
    *(v98 + 72) = v123;
    *(v98 + 136) = &type metadata for String;
    v102 = sub_1000053B0();
    *(v98 + 112) = v94;
    *(v98 + 120) = v96;
    *(v98 + 176) = &type metadata for UInt;
    *(v98 + 184) = &protocol witness table for UInt;
    *(v98 + 144) = v102;
    *(v98 + 152) = 544;
    v103 = v133[0];
    *(v98 + 216) = v99;
    *(v98 + 224) = v100;
    *(v98 + 192) = v103;
    v104 = v101;
    v105 = v103;
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v106, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v98);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v107 = static os_log_type_t.error.getter();
    sub_100005404(v97, &_mh_execute_header, v107, "Unable to load canvas background layer!", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v108 = swift_allocObject();
    v108[2] = 8;
    v108[3] = 0;
    v108[4] = 0;
    v108[5] = 0;
    v109 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v110 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v88 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v110 file:v88 lineNumber:544 isFatal:0 format:v90 args:v109];

    v89 = v129;
    v32 = v131;
    v12 = v132;
    goto LABEL_24;
  }

  v85 = v84;
  v84[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_scalesWithCanvas] = 0;
  [v84 setNeedsLayout];
  *&v85[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_viewScale] = 0x3FF0000000000000;
  v86 = OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled;
  if (v85[OBJC_IVAR____TtC8Freeform24CRLCanvasBackgroundLayer_enabled] == 1)
  {
    [v85 setNeedsLayout];
  }

  swift_unknownObjectWeakAssign();
  v85[v86] = 1;
  [v85 setNeedsLayout];
  v87 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer];
  *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundLayer] = v85;
  v88 = v83;

  v89 = v129;
  [v129 setAssociatedBackgroundLayer:v85];
  v90 = v88;
LABEL_24:

  v111 = *(*&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  sub_100EB8D4C();

  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 setInfosToDisplay:isa];

  v113 = sub_101012B64();
  v114 = [*&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_selectionModelTranslator] selectionPathForInfos:0];
  [v113 setSelectionPath:v114];

  v115 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray;
  v116 = *&v20[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__sharedPencilTray];
  if (v116)
  {
    v117 = v116;
    sub_100F08C7C();
  }

  v118 = sub_101023BFC();
  v119 = *&v20[v115];
  *&v20[v115] = v118;

  sub_1010259A4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v121 = Strong;
  }

  else
  {
    v121 = [objc_allocWithZone(UIFindInteraction) initWithSessionDelegate:v20];
    [v12 addInteraction:v121];

    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_10101853C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1010185EC;

  return sub_101016B0C();
}

uint64_t sub_1010185EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_101018728, v1, v0);
}

uint64_t sub_101018728()
{
  v1 = *(v0 + 16);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v4 = v2;
  v5 = [v3 versionFidelityAlertWasShown];
  v6 = sub_10001FF1C();
  v7 = sub_100EC7A40();

  if (v6 < v7 && v6 != v5)
  {
    sub_10101EDB0();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_10101884C()
{
  v1 = v0;
  swift_getObjectType();
  v60.receiver = v0;
  v60.super_class = type metadata accessor for CRLiOSBoardViewController();
  objc_msgSendSuper2(&v60, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController];
    v5 = [*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasViewController] canvasView];
    if (v5)
    {
      v6 = v5;
      v7 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
      if (v7)
      {
        v8 = v7;
        v9 = [v4 canvasLayer];
        if (v9)
        {
          v10 = v9;
          [v4 viewDidLoad];
          v11 = [v1 navigationItem];
          sub_100006760(&qword_101A28740, type metadata accessor for CRLiOSBoardViewController);
          swift_unknownObjectRetain();
          UINavigationItem.renameDelegate.setter();

          v12 = objc_opt_self();
          v13 = [v12 whiteColor];
          [v3 setBackgroundColor:v13];

          [v10 setAllowsPinchZoom:1];
          v14 = v10;
          v15 = [v12 clearColor];
          v16 = [v15 CGColor];

          [v14 setBackgroundColor:v16];
          v57 = v14;

          v17 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollView];
          v18 = [v12 clearColor];
          [v17 setBackgroundColor:v18];

          [v17 setIndicatorStyle:1];
          [v17 setDecelerationRate:UIScrollViewDecelerationRateFast];
          [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
          v19 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_snapshotViewWrapper];
          [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
          [v3 addSubview:v19];
          v20 = sub_1010136C0();
          [v3 addSubview:v20];

          v21 = sub_1010136A8();
          [v3 addSubview:v21];

          v22 = sub_1010136B4();
          [v3 addSubview:v22];

          [v3 addSubview:v8];
          isa = [v19 crl_constraintsToAllSidesOfItem:v17];
          if (!isa)
          {
            sub_100006370(0, &qword_1019F4D70);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          v24 = objc_opt_self();
          [v24 activateConstraints:isa];

          v25 = [v3 crl_constraintsToAllSidesOfItem:v19];
          if (!v25)
          {
            sub_100006370(0, &qword_1019F4D70);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v25 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:{v25, v57}];

          v26 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___sceneNavigationSnapshotHostingView]];
          if (!v26)
          {
            sub_100006370(0, &qword_1019F4D70);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v26];

          v27 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___bottomSceneCaptureSnapshotHostingView]];
          if (!v27)
          {
            sub_100006370(0, &qword_1019F4D70);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v27];

          v28 = [v3 crl_constraintsToAllSidesOfItem:*&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___topSceneCaptureSnapshotHostingView]];
          if (!v28)
          {
            sub_100006370(0, &qword_1019F4D70);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v28 = Array._bridgeToObjectiveC()().super.isa;
          }

          [v24 activateConstraints:v28];

          sub_1010196BC();
          v29 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_canvasBackgroundView];
          if (v29)
          {
            v30 = v29;
            v31 = [v3 crl_constraintsToAllSidesOfItem:v30];
            if (!v31)
            {
              sub_100006370(0, &qword_1019F4D70);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();
              v31 = Array._bridgeToObjectiveC()().super.isa;
            }

            [v24 activateConstraints:v31];
          }

          [v17 setScrollsToTop:0];
          v32 = [objc_opt_self() defaultCenter];
          if (qword_1019F2748 != -1)
          {
            swift_once();
          }

          [v32 addObserver:v1 selector:? name:? object:?];

          sub_100006370(0, &qword_1019F66C0);
          static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
          UIViewController.registerForTraitChanges<A>(_:handler:)();
          swift_unknownObjectRelease();

          sub_1005B981C(&unk_101A150B0);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_10146BDE0;
          *(v33 + 32) = type metadata accessor for UITraitVerticalSizeClass();
          *(v33 + 40) = &protocol witness table for UITraitVerticalSizeClass;
          *(v33 + 48) = type metadata accessor for UITraitHorizontalSizeClass();
          *(v33 + 56) = &protocol witness table for UITraitHorizontalSizeClass;
          UIViewController.registerForTraitChanges<A>(_:handler:)();

          swift_unknownObjectRelease();

          return;
        }

        v3 = v6;
      }

      else
      {
        v8 = v5;
      }

      v3 = v8;
    }
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v59 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v59);
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v44;
  v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 572;
  v47 = v59;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Unable to load view hierarchy!", 30, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:572 isFatal:0 format:v56 args:v53];
}

void sub_1010193C0()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A28650);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(*(*&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data) + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  v7 = type metadata accessor for CRLBoardCRDTData(0);
  (*(v3 + 16))(v5, v6 + *(v7 + 36), v2);
  v8 = CROrderedSet.count.getter();
  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
  if ((*(v9 + OBJC_IVAR____TtC8Freeform21CRLScenesPopoverState_isAnimatingToScene) & 1) == 0 && v8 == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v17;
    v18 = v9;
    static Published.subscript.getter();

    if (v19)
    {
    }
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  }

  sub_10091FF38();

  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState;
  v12 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  v13 = [v1 traitCollection];
  [v13 crl_isCompactWidth];

  sub_10091FDBC();
  v14 = *&v1[v11];
  v15 = objc_opt_self();
  v16 = v14;
  [v15 crl_landscapePhoneUI];
  sub_10091FDE4();
}

void sub_1010196BC()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasView];
  if (!v1)
  {
    v36 = objc_opt_self();
    v37 = [v36 _atomicIncrementAssertCount];
    v56 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v56);
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    v40 = [v39 lastPathComponent];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v44 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v37;
    v46 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v46;
    v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v47;
    *(inited + 72) = v38;
    *(inited + 136) = &type metadata for String;
    v48 = sub_1000053B0();
    *(inited + 112) = v41;
    *(inited + 120) = v43;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v48;
    *(inited + 152) = 627;
    v49 = v56;
    *(inited + 216) = v46;
    *(inited + 224) = v47;
    *(inited + 192) = v49;
    v50 = v38;
    v51 = v49;
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v54 = swift_allocObject();
    v54[2] = 8;
    v54[3] = 0;
    v54[4] = 0;
    v54[5] = 0;
    v55 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35.super.isa = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v36 handleFailureInFunction:v35.super.isa file:v32 lineNumber:627 isFatal:0 format:v28 args:v55];

    goto LABEL_21;
  }

  v2 = v0;
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_pencilKitCanvasViewConstraints;
  swift_beginAccess();
  sub_100006370(0, &qword_1019F4D70);

  v5 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *&v2[v4] = _swiftEmptyArrayStorage;

  v7 = v5;
  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  type metadata accessor for CRLiOSBoardView();
  v10 = swift_dynamicCastClassUnconditional();
  v11 = v7;
  v12 = [v3 constraintWithItem:v11 attribute:1 relatedBy:0 toItem:v10 attribute:1 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v13 = v11;
  v14 = [v2 view];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = swift_dynamicCastClassUnconditional();
  v17 = v13;
  v18 = [v3 constraintWithItem:v17 attribute:2 relatedBy:0 toItem:v16 attribute:2 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = v17;
  v20 = [v2 view];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v22 = swift_dynamicCastClassUnconditional();
  v23 = v19;
  v24 = [v3 constraintWithItem:v23 attribute:3 relatedBy:0 toItem:v22 attribute:3 multiplier:1.0 constant:0.0];

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v25 = [v2 view];
  if (!v25)
  {
    goto LABEL_25;
  }

  v26 = v25;
  v27 = [v25 window];

  v28 = v27;
  if (v27)
  {
LABEL_15:
    v32 = v23;
    v33 = v27;
    v34 = [v3 constraintWithItem:v32 attribute:4 relatedBy:0 toItem:v28 attribute:4 multiplier:1.0 constant:0.0];

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:v35.super.isa];
LABEL_21:

    return;
  }

  v29 = [v2 view];
  if (v29)
  {
    v30 = v29;
    v28 = swift_dynamicCastClassUnconditional();
    v31 = v30;
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
}

void sub_101019FA0(char a1)
{
  v2 = v1;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for CRLiOSBoardViewController();
  objc_msgSendSuper2(&v40, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = [v4 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    swift_unknownObjectRelease();
    v9 = qword_101AD75D0;
    if (qword_101AD75D0)
    {
      v10 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      v39[0] = v9;
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v2, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  if (_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  v13 = [v2 navigationController];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [v13 navigationBar];
  v16 = [v15 standardAppearance];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v17 clearColor];
  [v18 setShadowColor:v20];

  [v15 setStandardAppearance:v18];
  [v15 setScrollEdgeAppearance:v18];
  v21 = [v14 toolbar];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  v23 = [v21 standardAppearance];

  v24 = v23;
  v25 = [v17 systemBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = [v17 clearColor];
  [v24 setShadowColor:v26];

  v27 = [v14 toolbar];
  if (!v27)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  [v27 setStandardAppearance:v24];

  v29 = [v14 toolbar];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  [v29 setScrollEdgeAppearance:v24];

  v31 = [v14 toolbar];
  if (!v31)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v32 = v31;
  [v31 setTranslucent:0];

LABEL_12:
  sub_10101D2F8();
  sub_1006632BC();
  v33 = [objc_opt_self() defaultCenter];
  if (qword_1019F16E8 != -1)
  {
    swift_once();
  }

  [v33 addObserver:v2 selector:? name:? object:?];

  v34 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v34 updateCanvasDotGridVisibilityIfNeeded];
  v39[3] = &type metadata for CRLFeatureFlags;
  v39[4] = sub_100004D60();
  LOBYTE(v39[0]) = 10;
  v35 = isFeatureEnabled(_:)();
  sub_100005070(v39);
  if (v35)
  {
    v36 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
    if (v36)
    {
      v37 = v36;
      sub_100ACD8C0(0);
    }
  }

  v38 = [v2 traitCollection];
  [v34 documentIsSharedReadOnly];
  sub_10067AD3C(v38);
}

void sub_10101A4F0(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v163 = v143 - v5;
  v6 = sub_1005B981C(&qword_1019FB7D8);
  __chkstk_darwin(v6 - 8);
  v159 = v143 - v7;
  v8 = sub_1005B981C(&unk_1019FB7E0);
  __chkstk_darwin(v8 - 8);
  v152 = v143 - v9;
  v10 = sub_1005B981C(&unk_101A19AE0);
  v150 = *(v10 - 8);
  v151 = v10;
  __chkstk_darwin(v10);
  v149 = (v143 - v11);
  v12 = sub_1005B981C(&qword_101A28770);
  v154 = *(v12 - 8);
  v155 = v12;
  __chkstk_darwin(v12);
  v153 = v143 - v13;
  v14 = sub_1005B981C(&qword_101A28778);
  v157 = *(v14 - 8);
  v158 = v14;
  __chkstk_darwin(v14);
  v156 = v143 - v15;
  v16 = sub_1005B981C(&qword_101A28780);
  v147 = *(v16 - 8);
  v148 = v16;
  __chkstk_darwin(v16);
  v146 = v143 - v17;
  v18 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v18 - 8);
  v161 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  __chkstk_darwin(v20 - 8);
  v160 = v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v22 - 8);
  v165 = v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CRLiOSBoardViewController();
  v170.receiver = v2;
  v170.super_class = v24;
  v162 = v24;
  objc_msgSendSuper2(&v170, "viewDidAppear:", a1 & 1);
  v25 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v25 setupTextInputResponder];
  v26 = objc_opt_self();
  v27 = [v26 sharedApplication];
  v28 = [v27 delegate];

  if (!v28)
  {
    __break(1u);
    goto LABEL_32;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v29 = swift_dynamicCastClassUnconditional();
  v30 = [v26 sharedApplication];
  if ([v30 shouldRecordExtendedLaunchTime] && (v31 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v29 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
  {
    v32 = [v30 _launchTestName];
    [v30 finishedTest:v32];

    *(v29 + v31) = 1;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v33 = [v26 sharedApplication];
  v34 = [v33 isRunningTest];

  if (v34)
  {
    v35 = [v26 sharedApplication];
    v36 = [v35 delegate];

    if (v36)
    {
      swift_unknownObjectRelease();
      v37 = qword_101AD75D0;
      if (qword_101AD75D0)
      {
        v38 = qword_101AD75E0;
        ObjectType = swift_getObjectType();
        v166[0] = v37;
        v40 = *(v38 + 32);
        swift_unknownObjectRetain();
        v40(v2, ObjectType, v38);
        swift_unknownObjectRelease();
      }

      goto LABEL_10;
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v166[0] = v25;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v43 = v25;
    v44 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v45 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation];
    *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_viewScaleObservation] = v44;

    v46 = [objc_opt_self() defaultCenter];
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v168 = sub_10105AE80;
    v169 = v47;
    v166[0] = _NSConcreteStackBlock;
    v166[1] = *"";
    v166[2] = sub_100059694;
    v167 = &unk_1018AF060;
    v48 = _Block_copy(v166);

    v164 = v43;
    v49 = [v46 addObserverForName:@"CRLCanvasUpdateScrollNotification" object:v43 queue:0 usingBlock:v48];
    _Block_release(v48);

    v167 = swift_getObjectType();
    v166[0] = v49;
    v50 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scrollObserver;
    swift_beginAccess();
    sub_10002C638(v166, &v2[v50], &unk_1019F4D00);
    swift_endAccess();
    v51 = *&v42[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers];
    if (([v51 containsObject:v2] & 1) == 0)
    {
      [v51 addObject:v2];
    }

    v52 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator];
    v53 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v54 = *(v52 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v55 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v56 = *&v54[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v57 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v58 = v56 + v57;
    v59 = v161;
    sub_100050004(v58, v161, type metadata accessor for CRLBoardCRDTData);
    v60 = v54;
    sub_1005B981C(&unk_1019F5250);
    v61 = v160;
    CRRegister.wrappedValue.getter();
    sub_10003D7BC(v59, type metadata accessor for CRLBoardCRDTData);
    v62 = (*&v54[v55] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v63 = *v62;
    v64 = v62[1];

    v65 = v165;
    sub_10084BD4C(v61, v63, v64, v165);

    sub_1010BBCA0(v65);
    [v164 updateCanvasDotGridVisibilityIfNeeded];
    v167 = &type metadata for CRLFeatureFlags;
    v66 = sub_100004D60();
    v168 = v66;
    LOBYTE(v166[0]) = 10;
    LOBYTE(v63) = isFeatureEnabled(_:)();
    sub_100005070(v166);
    if (v63)
    {
      v67 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_boardControlsViewController];
      if (v67)
      {
        v68 = v67;
        sub_100ACD8C0(0);
      }
    }

    v161 = v53;
    v69 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interstitialUIController];
    if (v69)
    {
      v70 = v69;
      sub_100FA1294();
    }

    v71 = [v2 traitCollection];
    sub_100642864(v71, [v164 documentIsSharedReadOnly], v171);
    sub_100642CDC(v171, 1);
    sub_1005EB2D4(v171);

    v167 = &type metadata for CRLFeatureFlags;
    v168 = v66;
    LOBYTE(v166[0]) = 20;
    v72 = isFeatureEnabled(_:)();
    sub_100005070(v166);
    v73 = [v2 traitCollection];
    v74 = v73;
    if (v72)
    {
      v145 = v66;
      sub_1010309F0(v73);

      sub_101032280();
      v75 = *&v2[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
      swift_beginAccess();
      v76 = v75;
      sub_1005B981C(&unk_101A08DC0);
      v77 = v146;
      Published.projectedValue.getter();
      swift_endAccess();

      v78 = swift_allocObject();
      *(v78 + 16) = v2;
      *(v78 + 24) = v42;
      sub_10001A2F8(&qword_101A28788, &qword_101A28780);
      v79 = v2;
      v160 = v42;
      v80 = v42;
      v81 = v148;
      Publisher<>.sink(receiveValue:)();

      (*(v147 + 8))(v77, v81);
      v147 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_subscriptions;
      v144 = v79;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v148 = v52;
      v166[0] = *(*(v52 + v161) + OBJC_IVAR____TtC8Freeform8CRLBoard_changeSummaryPublisher);
      v146 = v166[0];
      sub_1005B981C(&qword_101A19B40);
      v143[1] = sub_100006370(0, &qword_1019F2D90);

      v82 = static OS_dispatch_queue.main.getter();
      v83 = v149;
      *v149 = v82;
      static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
      v85 = v150;
      v84 = v151;
      (*(v150 + 104))(v83, enum case for Publishers.TimeGroupingStrategy.byTime<A>(_:), v151);
      v86 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v87 = v152;
      (*(*(v86 - 8) + 56))(v152, 1, 1, v86);
      sub_1005B981C(&qword_101A12970);
      sub_10001A2F8(&qword_101A28790, &qword_101A12970);
      sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90);
      v88 = v153;
      Publisher.collect<A>(_:options:)();
      sub_10000CAAC(v87, &unk_1019FB7E0);
      (*(v85 + 8))(v83, v84);

      v89 = [objc_opt_self() mainRunLoop];
      v166[0] = v89;
      v90 = type metadata accessor for NSRunLoop.SchedulerOptions();
      v91 = v159;
      (*(*(v90 - 8) + 56))(v159, 1, 1, v90);
      sub_100006370(0, &qword_1019FB830);
      sub_10001A2F8(&unk_101A28798, &qword_101A28770);
      sub_10000FDE0(&qword_1019FB840, &qword_1019FB830);
      v92 = v155;
      v93 = v156;
      Publisher.receive<A>(on:options:)();
      sub_10000CAAC(v91, &qword_1019FB7D8);

      (*(v154 + 8))(v88, v92);
      swift_allocObject();
      v94 = v144;
      swift_unknownObjectWeakInit();
      sub_10001A2F8(&qword_101A287A8, &qword_101A28778);
      v95 = v158;
      Publisher<>.sink(receiveValue:)();

      (*(v157 + 8))(v93, v95);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v96 = sub_101066A04();
      v97 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
      v98 = *&v94[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState];
      swift_getKeyPath();
      swift_getKeyPath();
      v166[0] = v96;
      v99 = v96;
      v100 = v98;
      v101 = v94;
      static Published.subscript.setter();
      sub_1010193C0();

      v102 = *&v94[v97];
      swift_getKeyPath();
      swift_getKeyPath();
      v103 = v102;
      static Published.subscript.getter();

      v104 = v166[0];
      if (v166[0] && (v105 = *&v94[v97], swift_getKeyPath(), swift_getKeyPath(), v106 = v105, static Published.subscript.getter(), , , v106, v107 = sub_10100F338(v104, v166[0], type metadata accessor for CRLSceneInfo), LOBYTE(v106) = v108, v104, , (v106 & 1) == 0))
      {
        v132 = &v101[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_currentSceneIndex];
        *v132 = v107;
        v132[8] = 0;
      }

      else
      {
        sub_1010193C0();
      }

      v42 = v160;
      v131 = v161;
      v52 = v148;
      v66 = v145;
    }

    else
    {
      sub_101031D9C(v73);

      v131 = v161;
    }

    v167 = &type metadata for CRLFeatureFlags;
    v168 = v66;
    LOBYTE(v166[0]) = 10;
    v133 = isFeatureEnabled(_:)();
    sub_100005070(v166);
    if (v133)
    {
      v134 = [v2 traitCollection];
      sub_1010326E8(v134);

      sub_101032B94();
    }

    v135 = type metadata accessor for TaskPriority();
    v136 = v163;
    (*(*(v135 - 8) + 56))(v163, 1, 1, v135);
    type metadata accessor for MainActor();
    v137 = v2;
    v138 = static MainActor.shared.getter();
    v139 = swift_allocObject();
    v139[2] = v138;
    v139[3] = &protocol witness table for MainActor;
    v139[4] = v137;
    sub_10064191C(0, 0, v136, &unk_1014C2490, v139);

    [objc_opt_self() addKeyboardObserver:v137];
    sub_10101D0E4(1);
    sub_10065A048();
    sub_1005B981C(&unk_101A150B0);
    v140 = swift_allocObject();
    *(v140 + 16) = xmmword_10146BDE0;
    *(v140 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v140 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v140 + 48) = type metadata accessor for UITraitVerticalSizeClass();
    *(v140 + 56) = &protocol witness table for UITraitVerticalSizeClass;
    v167 = v162;
    v166[0] = v137;
    v141 = v137;
    v142 = UIViewController.registerForTraitChanges(_:target:action:)();

    sub_100005070(v166);
    *&v141[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_traitChangeRegistration] = v142;
    swift_unknownObjectRelease();
    *(*&v141[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_cloudQuotaMessagingObserver] + 24) = &off_1018ADDE8;
    swift_unknownObjectWeakAssign();
    sub_100C857AC();
    [*(v52 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_changeNotifier) addObserver:v141 forChangeSource:*(v52 + v131)];
    sub_10101DAB8(1);

    sub_10003D7BC(v165, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    v165 = objc_opt_self();
    v109 = [v165 _atomicIncrementAssertCount];
    v166[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v166);
    StaticString.description.getter();
    v110 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    v112 = [v111 lastPathComponent];

    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v116 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v109;
    v118 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v118;
    v119 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v119;
    *(inited + 72) = v110;
    *(inited + 136) = &type metadata for String;
    v120 = sub_1000053B0();
    *(inited + 112) = v113;
    *(inited + 120) = v115;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v120;
    *(inited + 152) = 725;
    v121 = v166[0];
    *(inited + 216) = v118;
    *(inited + 224) = v119;
    *(inited + 192) = v121;
    v122 = v110;
    v123 = v121;
    v124 = static os_log_type_t.error.getter();
    sub_100005404(v116, &_mh_execute_header, v124, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v125 = static os_log_type_t.error.getter();
    sub_100005404(v116, &_mh_execute_header, v125, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v126 = swift_allocObject();
    v126[2] = 8;
    v126[3] = 0;
    v126[4] = 0;
    v126[5] = 0;
    v127 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v128 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v129 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v130 = String._bridgeToObjectiveC()();

    [v165 handleFailureInFunction:v128 file:v129 lineNumber:725 isFatal:0 format:v130 args:v127];
  }
}

uint64_t sub_10101BC2C(char *a1, void *a2, void *a3)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a3;
  *(v11 + 40) = a2;
  *(v11 + 48) = v9;
  v12 = a3;
  v13 = a2;
  sub_100CA6768(0, 0, v8, &unk_1014C24B8, v11);

  return sub_10000CAAC(v8, &qword_1019FB750);
}

uint64_t sub_10101BD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 140) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 40) = a1;
  type metadata accessor for CRLBoardCRDTData(0);
  *(v6 + 64) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v6 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_10101BE34, 0, 0);
}

uint64_t sub_10101BE34()
{
  sub_1005B981C(&qword_101A28700);
  v1 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  *(v0 + 80) = v1;
  *(v0 + 136) = *(*(v1 - 8) + 80);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = xmmword_10146C6B0;
  type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10101BF60, v4, v3);
}

uint64_t sub_10101BF60()
{
  v1 = *(v0 + 56);

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  *(v0 + 104) = v2;
  v3 = v2;

  return _swift_task_switch(sub_10101BFF4, 0, 0);
}

uint64_t sub_10101BFF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v16 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 140);
  v6 = v2 + ((*(v0 + 136) + 32) & ~*(v0 + 136));
  v7 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v8 = *&v1[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v9 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_100050004(v8 + v9, v3, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D7BC(v3, type metadata accessor for CRLBoardCRDTData);
  v10 = (*&v1[v7] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v11 = *v10;
  v12 = v10[1];

  sub_10084BD4C(v4, v11, v12, v6);

  *(v6 + *(v16 + 20)) = v5;
  v13 = sub_1005BFFE8(v2);
  *(v0 + 112) = v13;
  swift_setDeallocating();
  sub_10003D7BC(v6, type metadata accessor for CRLBoardIdentifierAndValue);
  swift_deallocClassInstance();
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_10101C1DC;

  return sub_1010BC334(v13);
}

uint64_t sub_10101C1DC()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_10105B430;
  }

  else
  {

    v2 = sub_10101C324;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10101C324()
{
  **(v0 + 40) = *(v0 + 128) != 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10101C3A0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = *a1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;
  v10[5] = a2;
  sub_10064191C(0, 0, v6, &unk_1014C24A0, v10);
}

uint64_t sub_10101C4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_10101C56C, v7, v6);
}

uint64_t sub_10101C56C()
{
  v1 = sub_1012CE88C(v0[8]);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v0[13] = v1;
  v0[14] = v2;
  v0[15] = v4;
  v0[16] = v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_10101C75C;

    return sub_10101CB4C(v1, v3, v5, v7);
  }

  else
  {

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    v0[19] = v11;
    if (v11)
    {
      v12 = swift_task_alloc();
      v0[20] = v12;
      *v12 = v0;
      v12[1] = sub_10101CA0C;

      return sub_10101DFF8();
    }

    else
    {

      v13 = v0[1];

      return v13();
    }
  }
}

uint64_t sub_10101C75C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10101C91C, v4, v3);
}

uint64_t sub_10101C91C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_10101CA0C;

    return sub_10101DFF8();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10101CA0C()
{
  v1 = *v0;
  v2 = *(*v0 + 152);

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_100CEC2A0, v4, v3);
}

uint64_t sub_10101CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_10101CBEC, v7, v6);
}

uint64_t sub_10101CBEC()
{
  v24 = v0;
  v1 = _swiftEmptySetSingleton;
  v2 = _swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v0[2] = v2;
    v0[3] = v1;
    v1 = 0;
    sub_10100ED2C(v5);
    sub_10100ED2C(v3);
    sub_10100ED2C(v6);
    v7 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    static Published.subscript.getter();

    v9 = v0[4];
    v10 = v9 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v0[9];

    v12 = v11;
    if (!v10)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = v0[9];
      v18 = v0[5];
      v23 = v14;
      sub_1010523F8(&v23, v18, v17, v0 + 2, (v0 + 3));

      ++v13;
      if (v16 == v10)
      {
        v2 = v0[2];
        v19 = v0[9];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005C1D24(_swiftEmptyArrayStorage);
      v2 = v22;
    }

    else
    {
      v2 = _swiftEmptySetSingleton;
    }
  }

  v19 = v12;
LABEL_14:
  v0[13] = v2;

  sub_101048558(v2);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_10101CEA4;

  return sub_1010250B8(v2);
}

uint64_t sub_10101CEA4()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_10101CFC4, v3, v2);
}

uint64_t sub_10101CFC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10101D038()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10101E5FC();
}

void sub_10101D0E4(char a1)
{
  v3 = [objc_opt_self() sharedKeyboardMonitor];
  [v3 keyboardFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_1010462B8(v5, v7, v9, v11);
  v13 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint;
  v14 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_keyboardTopEdgeLayoutGuideConstraint];
  if (!v14)
  {
LABEL_9:
    v22 = [v1 view];
    if (v22)
    {
      v23 = v22;
      [v22 setNeedsUpdateConstraints];

      v20 = [v1 view];
      if (v20)
      {
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v15 = v12;
  [v14 constant];
  v17 = v16;
  v12 = -v15;
  if (v17 != -v15)
  {
LABEL_7:
    v21 = *(v13 + v1);
    if (v21)
    {
      [v21 setConstant:?];
    }

    goto LABEL_9;
  }

  if ((a1 & 1) == 0)
  {
    return;
  }

  v13 = &selRef_tailLineEndAngle;
  v18 = [v1 view];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  [v18 setNeedsUpdateConstraints];

  v20 = [v1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v24 = v20;
  [v20 setNeedsLayout];
}

void sub_10101D2F8()
{
  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlStatusHUD;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = type metadata accessor for CRLiOSBoardViewController();
  *(inited + 64) = sub_100006760(&qword_101A28710, type metadata accessor for CRLiOSBoardViewController);
  *(inited + 32) = v0;
  v3 = v0;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v4, "setupStatusHUDView: self: %p", 28, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10101D51C(v5);
  v6 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager;
  v7 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_statusHUDManager];
  v8 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_containerView;
  swift_beginAccess();
  v9 = *&v7[v8];
  *&v7[v8] = v5;
  v10 = v5;
  v11 = v7;

  v12 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  if (v11[v12] == 1)
  {
    sub_10106EB14();
  }

  v13 = *&v3[v6];
  v14 = OBJC_IVAR____TtC8Freeform19CRLStatusHUDManager_ready;
  swift_beginAccess();
  v13[v14] = 1;
  v15 = v13;
  sub_10106EB14();
}

void sub_10101D51C(void *a1)
{
  v2 = v1;
  v4 = [v1 viewIfLoaded];
  if (v4)
  {
  }

  else
  {
    v41 = objc_opt_self();
    v5 = [v41 _atomicIncrementAssertCount];
    v42 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v42);
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 32) = v5;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v13;
    *(inited + 72) = v40;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 823;
    v15 = v42;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v40;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Adding collaboration notification view too early.", 49, 2, _swiftEmptyArrayStorage);

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

    [v41 handleFailureInFunction:v22 file:v23 lineNumber:823 isFatal:0 format:v24 args:v21];
  }

  [a1 setTranslatesAutoresizingMaskIntoConstraints:{0, v39}];
  v25 = [v2 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  [v25 addSubview:a1];

  v27 = [a1 topAnchor];
  v28 = [v2 view];
  if (!v28)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = v28;
  v30 = [v28 safeAreaLayoutGuide];

  v31 = [v30 topAnchor];
  v32 = [v27 constraintEqualToAnchor:v31];

  [v32 setActive:1];
  v33 = [a1 trailingAnchor];
  v34 = [v2 view];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 safeAreaLayoutGuide];

    v37 = [v36 trailingAnchor];
    v38 = [v33 constraintEqualToAnchor:v37];

    [v38 setActive:1];
    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_10101DAB8(char a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s5BoardVMa(0);
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  v38 = &type metadata for CRLFeatureFlags;
  v39 = sub_100004D60();
  v37[0] = 1;
  v18 = isFeatureEnabled(_:)();
  result = sub_100005070(v37);
  if (v18)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    type metadata accessor for MainActor();
    v21 = v1;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_10064191C(0, 0, v17, &unk_1014C2340, v23);

    if (a1)
    {
      if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
      {
        return result;
      }

      sub_10074E09C();
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result && (v24 = *(*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard), v36 = OBJC_IVAR____TtC8Freeform8CRLBoard_data, v25 = *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_data], v26 = result, v27 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, swift_beginAccess(), v28 = v25 + v27, v29 = v26, sub_100050004(v28, v5, type metadata accessor for CRLBoardCRDTData), v30 = v24, sub_1005B981C(&unk_1019F5250), CRRegister.wrappedValue.getter(), sub_10003D7BC(v5, type metadata accessor for CRLBoardCRDTData), v31 = (*&v24[v36] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName), v32 = *v31, v33 = v31[1], , sub_10084BD4C(v8, v32, v33, v11), v30, sub_1010AB99C(v11, v14), sub_10003D7BC(v11, type metadata accessor for CRLBoardIdentifier), v29, v34 = v14[*(v12 + 52)], result = sub_10003D7BC(v14, _s5BoardVMa), v34 == 1))
      {
        if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
        {
          return result;
        }

        sub_10074E904();
      }

      else
      {
        if (!*&v21[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker])
        {
          return result;
        }

        sub_10074E22C();
      }
    }
  }

  return result;
}

uint64_t sub_10101DF4C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1005F1164;

  return sub_10101DFF8();
}

uint64_t sub_10101DFF8()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10101E090, v3, v2);
}

uint64_t sub_10101E090()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper);
  v0[6] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_10101E254, v1, 0);
  }

  else
  {

    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v3 viewScale];
    v4 = [v3 canvas];
    [v4 unscaledRectOfLayouts];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    if (*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker))
    {
      v13 = *(*(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

      v14 = v13;
      v20.origin.x = v6;
      v20.origin.y = v8;
      v20.size.width = v10;
      v20.size.height = v12;
      Height = CGRectGetHeight(v20);
      v21.origin.x = v6;
      v21.origin.y = v8;
      v21.size.width = v10;
      v21.size.height = v12;
      Width = CGRectGetWidth(v21);
      sub_10074E3CC(v14, Height, Width);
    }

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_10101E254()
{
  if (*(v0[6] + 144) == 1)
  {

    v1 = v0[4];
    v2 = v0[5];

    return _swift_task_switch(sub_10101E4A0, v1, v2);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_10101E32C;

    return sub_1007528DC();
  }
}

uint64_t sub_10101E32C()
{
  v1 = *v0;

  v2 = *(v1 + 48);

  return _swift_task_switch(sub_10101E43C, v2, 0);
}

uint64_t sub_10101E43C()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_10101E4A0, v1, v2);
}

uint64_t sub_10101E4A0()
{

  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  [v2 viewScale];
  v3 = [v2 canvas];
  [v3 unscaledRectOfLayouts];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_appAnalyticsBoardTracker))
  {
    v12 = *(*(*(v0 + 16) + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

    v13 = v12;
    v19.origin.x = v5;
    v19.origin.y = v7;
    v19.size.width = v9;
    v19.size.height = v11;
    Height = CGRectGetHeight(v19);
    v20.origin.x = v5;
    v20.origin.y = v7;
    v20.size.width = v9;
    v20.size.height = v11;
    Width = CGRectGetWidth(v20);
    sub_10074E3CC(v13, Height, Width);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10101E5FC()
{
  v1[2] = v0;
  sub_1005B981C(&qword_1019FB750);
  v1[3] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_10101E6CC, v3, v2);
}

uint64_t sub_10101E6CC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_stateRestorationHelper);
  v0[7] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_10101E950, v1, 0);
  }

  else
  {

    v2 = v0[2];
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    [v3 viewScale];
    v5 = v4;
    v6 = [v3 canvas];
    [v6 unscaledRectOfLayouts];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = *(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    Height = CGRectGetHeight(v28);
    v29.origin.x = v8;
    v29.origin.y = v10;
    v29.size.width = v12;
    v29.size.height = v14;
    Width = CGRectGetWidth(v29);
    v18 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
    v19 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
    if (v19 == 2)
    {
      v20 = sub_10102983C() & 1;
      *(v2 + v18) = v20;
    }

    else
    {
      v20 = v19 & 1;
    }

    v21 = v0[3];
    v22 = type metadata accessor for CRLAnalyticsBoardOpened();
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = v15;
    *(v24 + 40) = v22;
    *(v24 + 48) = Height;
    *(v24 + 56) = Width;
    *(v24 + 64) = v5;
    *(v24 + 72) = v20;
    sub_100796D54(0, 0, v21, &unk_1014C2330, v24);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10101E950()
{
  if (*(v0[7] + 144) == 1)
  {

    v1 = v0[5];
    v2 = v0[6];

    return _swift_task_switch(sub_10101EB9C, v1, v2);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10101EA28;

    return sub_1007528DC();
  }
}

uint64_t sub_10101EA28()
{
  v1 = *v0;

  v2 = *(v1 + 56);

  return _swift_task_switch(sub_10101EB38, v2, 0);
}

uint64_t sub_10101EB38()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10101EB9C, v1, v2);
}

uint64_t sub_10101EB9C()
{

  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  [v2 viewScale];
  v4 = v3;
  v5 = [v2 canvas];
  [v5 unscaledRectOfLayouts];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Height = CGRectGetHeight(v27);
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  Width = CGRectGetWidth(v28);
  v17 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v18 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
  if (v18 == 2)
  {
    v19 = sub_10102983C() & 1;
    *(v1 + v17) = v19;
  }

  else
  {
    v19 = v18 & 1;
  }

  v20 = v0[3];
  v21 = type metadata accessor for CRLAnalyticsBoardOpened();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v14;
  *(v23 + 40) = v21;
  *(v23 + 48) = Height;
  *(v23 + 56) = Width;
  *(v23 + 64) = v4;
  *(v23 + 72) = v19;
  sub_100796D54(0, 0, v20, &unk_1014C2330, v23);

  v24 = v0[1];

  return v24();
}

void sub_10101EDB0()
{
  v0 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v0 - 8);
  v48 = v47 - v1;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = sub_100EA63DC();
  v8 = objc_opt_self();
  if ([v8 crl_iPadDevice])
  {
    if (v7)
    {
LABEL_3:
      v9 = [v2 mainBundle];
      v10 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_3;
  }

  [v8 crl_iPadDevice];
  v9 = [v2 mainBundle];
  v10 = String._bridgeToObjectiveC()();
LABEL_6:
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  if (v7)
  {
    v16 = [v2 mainBundle];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();

    *&v52 = sub_1000A2100;
    *(&v52 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = *"";
    *&v51 = sub_10068B39C;
    *(&v51 + 1) = &unk_1018AECA0;
    v21 = _Block_copy(&aBlock);

    v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
    _Block_release(v21);

    [v15 addAction:v22];
    [v15 setPreferredAction:v22];
  }

  v23 = [v2 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = swift_allocObject();
  v28 = v2;
  v29 = v47[1];
  swift_unknownObjectWeakInit();

  v30 = String._bridgeToObjectiveC()();

  *&v52 = sub_10105A8D8;
  *(&v52 + 1) = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = *"";
  *&v51 = sub_10068B39C;
  *(&v51 + 1) = &unk_1018AEC50;
  v31 = _Block_copy(&aBlock);

  v32 = objc_opt_self();
  v33 = [v32 actionWithTitle:v30 style:0 handler:v31];
  _Block_release(v31);

  [v15 addAction:v33];
  v34 = [v28 mainBundle];
  v35 = String._bridgeToObjectiveC()();
  v36 = String._bridgeToObjectiveC()();
  v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v32 actionWithTitle:v38 style:1 handler:0];

  [v15 addAction:v39];
  [v29 presentViewController:v15 animated:1 completion:0];
  v40 = *&v29[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
  [v40 setVersionFidelityAlertWasShownIsValid:1];
  [v40 setVersionFidelityAlertWasShown:sub_10001FF1C()];
  sub_10102231C(&aBlock);
  v41 = type metadata accessor for TaskPriority();
  v42 = v48;
  (*(*(v41 - 8) + 56))(v48, 1, 1, v41);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v29;
  v44 = aBlock;
  *(v43 + 56) = v51;
  v45 = v53[0];
  *(v43 + 72) = v52;
  *(v43 + 88) = v45;
  *(v43 + 97) = *(v53 + 9);
  *(v43 + 40) = v44;
  v46 = v29;
  sub_1006D62AC(&aBlock, v49);
  sub_100CA64C8(0, 0, v42, &unk_1014A0E70, v43);

  sub_1006D62E4(&aBlock);
  sub_10000CAAC(v42, &qword_1019FB750);
  sub_1011047E4(v15);
}

void sub_10101F654()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10101F6C4();
  }
}

void sub_10101F6C4()
{
  v1 = [objc_allocWithZone(HLPHelpViewController) init];
  [v1 setShowTopicViewOnLoad:1];
  v2 = String._bridgeToObjectiveC()();
  [v1 setSelectedHelpTopicID:v2];

  v3 = objc_allocWithZone(UINavigationController);
  v4 = v1;
  v5 = [v3 initWithRootViewController:v4];
  [v4 setModalPresentationStyle:1];

  [v0 presentViewController:v5 animated:1 completion:0];
}

void sub_10101F7C8()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = type metadata accessor for CRLiOSBoardViewController();
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  if ((v0[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_isTornDown] & 1) == 0)
  {
    sub_101025F4C();
  }

  v23 = &type metadata for CRLFeatureFlags;
  v24 = sub_100004D60();
  LOBYTE(v22[0]) = 20;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v22);
  if (v2)
  {
    v3 = v1;
    v4 = v3;
    while (1)
    {
      v5 = v4;
      v4 = [v4 presentedViewController];

      if (!v4)
      {
        break;
      }

      type metadata accessor for CRLScenesViewController_iv();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for CRLCompactScenesViewController_i();
        if (!swift_dynamicCastClass())
        {
          continue;
        }
      }

      v6 = *&v3[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController];
      v7 = swift_allocObject();
      *(v7 + 16) = v3;
      v24 = sub_10105AE64;
      v25 = v7;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = *"";
      v22[2] = sub_100007638;
      v23 = &unk_1018AF038;
      v8 = _Block_copy(v22);
      v9 = v3;

      [v6 performBlockOnMainThreadAfterLayoutIfNecessary:v8];
      _Block_release(v8);
      break;
    }
  }

  v10 = [v1 presentedViewController];
  v11 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController;
  v12 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_compactScenesNavigatorViewController];
  if (v10)
  {
    v13 = v10;
    if (!v12)
    {
      v20 = 0;

      goto LABEL_19;
    }

    sub_100006370(0, &qword_101A10AB0);
    v14 = v12;
    v15 = static NSObject.== infix(_:_:)();

    if ((v15 & 1) == 0)
    {
LABEL_19:
      v12 = *&v1[v11];
      if (!v12)
      {
        return;
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (v12)
    {
LABEL_20:
      v21 = v12;
      sub_100F239FC();

      return;
    }

    v16 = 0;
  }

  v17 = *&v1[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesNavigatorState];
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v17;
  static Published.subscript.getter();

  if (v22[0])
  {
    goto LABEL_19;
  }

  v19 = *&v1[v11];
  if (v19)
  {
    [v19 dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_10101FA98(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) visibleUnscaledRect];
  v2 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState;
  v3 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_scenesPopoverState);
  v6 = v4 / v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v3;
  static Published.subscript.getter();

  result = sub_1007C87EC(v6, v11);
  if ((result & 1) == 0)
  {
    v9 = *(a1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    return static Published.subscript.setter();
  }

  return result;
}

void sub_10101FBE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100D1D100();
  type metadata accessor for CRLScenesNavigatorViewController();
  if (swift_dynamicCastClass())
  {
    v10 = 1;
  }

  else
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass() != 0;
  }

  v11 = [v4 presentedViewController];
  v236 = v4;
  if (!v11)
  {
LABEL_7:
    if (a3)
    {
      v241 = a3;
      v242 = a4;
      aBlock = _NSConcreteStackBlock;
      v238 = *"";
      v239 = sub_100007638;
      v240 = &unk_1018AEF48;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for CRLiOSBoardViewController();
    v243.receiver = v4;
    v243.super_class = v14;
    objc_msgSendSuper2(&v243, "presentViewController:animated:completion:", a1, a2 & 1, v13);
    goto LABEL_14;
  }

  v12 = v11;
  if ([v11 isBeingDismissed])
  {

    goto LABEL_7;
  }

  if (v10)
  {
    if (a3)
    {
      v241 = a3;
      v242 = a4;
      aBlock = _NSConcreteStackBlock;
      v238 = *"";
      v239 = sub_100007638;
      v240 = &unk_1018AEFC0;
      v13 = _Block_copy(&aBlock);
    }

    else
    {
      v13 = 0;
    }

    [v9 presentViewController:a1 animated:1 completion:v13];
  }

  else
  {
    v126 = swift_allocObject();
    *(v126 + 16) = v4;
    *(v126 + 24) = a1;
    *(v126 + 32) = a2 & 1;
    *(v126 + 40) = a3;
    *(v126 + 48) = a4;
    v241 = sub_10105AE34;
    v242 = v126;
    aBlock = _NSConcreteStackBlock;
    v238 = *"";
    v239 = sub_100007638;
    v240 = &unk_1018AEF98;
    v13 = _Block_copy(&aBlock);
    sub_10067F2EC(a3);
    v127 = v4;
    v128 = a1;

    [v127 dismissViewControllerAnimated:a2 & 1 completion:v13];
  }

LABEL_14:
  _Block_release(v13);
  v15 = sub_101012FD4();
  v16 = [v15 mode];

  LODWORD(v15) = [v16 wantsToEndForNonPopoverPresentations];
  v17 = &selRef_p_writingDirectionForCharAtIndex_;
  p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
  if (!v15)
  {
    goto LABEL_89;
  }

  v19 = [a1 presentationController];
  if (!v19)
  {
    v235 = v9;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v234 = a1;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v82 = NSStringFromClass(ObjCClassFromMetadata);
    v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v85 = v84;

    *(inited + 56) = &type metadata for String;
    v86 = sub_1000053B0();
    *(inited + 32) = v83;
    v87 = inited + 32;
    v232 = v86;
    *(inited + 64) = v86;
    *(inited + 40) = v85;
    v231 = objc_opt_self();
    v88 = [v231 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    v233 = inited;
    sub_100604538(inited, &aBlock);
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
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_10146CA70;
    *(v96 + 56) = &type metadata for Int32;
    *(v96 + 64) = &protocol witness table for Int32;
    *(v96 + 32) = v88;
    v97 = sub_100006370(0, &qword_1019F4D30);
    *(v96 + 96) = v97;
    v98 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v96 + 72) = v89;
    *(v96 + 136) = &type metadata for String;
    *(v96 + 144) = v232;
    *(v96 + 104) = v98;
    *(v96 + 112) = v92;
    *(v96 + 120) = v94;
    *(v96 + 176) = &type metadata for UInt;
    *(v96 + 184) = &protocol witness table for UInt;
    *(v96 + 152) = 1032;
    v99 = v89;
    v100 = aBlock;
    *(v96 + 216) = v97;
    *(v96 + 224) = v98;
    *(v96 + 192) = v100;
    v101 = v99;
    v102 = v100;
    v103 = static os_log_type_t.error.getter();
    sub_100005404(v95, &_mh_execute_header, v103, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v96);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v104 = static os_log_type_t.error.getter();
    v105 = v233;
    sub_100005404(v95, &_mh_execute_header, v104, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2, v233);

    type metadata accessor for __VaListBuilder();
    a1 = swift_allocObject();
    *(a1 + 16) = 8;
    *(a1 + 24) = 0;
    v20 = (a1 + 24);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v106 = v233[2];
    if (!v106)
    {
LABEL_80:
      v122 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v123 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v124 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v125 = String._bridgeToObjectiveC()();

      [v231 handleFailureInFunction:v123 file:v124 lineNumber:1032 isFatal:0 format:v125 args:v122];

      swift_setDeallocating();
      swift_arrayDestroy();
      v4 = v236;
      [*(v236 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) resetToDefaultModeAnimated:1];
      goto LABEL_81;
    }

    v63 = 0;
    p_class_meths = 40;
    while (1)
    {
      sub_100020E58((v87 + 40 * v63), *(v87 + 40 * v63 + 24));
      v107 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v67 = *v20;
      v108 = *(v107 + 16);
      v69 = __OFADD__(*v20, v108);
      v109 = *v20 + v108;
      if (v69)
      {
        goto LABEL_161;
      }

      v110 = *(a1 + 32);
      if (v110 >= v109)
      {
        goto LABEL_72;
      }

      if (v110 + 0x4000000000000000 < 0)
      {
        goto LABEL_164;
      }

      v111 = *(a1 + 40);
      if (2 * v110 > v109)
      {
        v109 = 2 * v110;
      }

      *(a1 + 32) = v109;
      if ((v109 - 0x1000000000000000) >> 61 != 7)
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        swift_once();
LABEL_122:
        v189 = static OS_os_log.crlAssert;
        v190 = swift_initStackObject();
        *(v190 + 16) = xmmword_10146CA70;
        *(v190 + 56) = &type metadata for Int32;
        *(v190 + 64) = &protocol witness table for Int32;
        *(v190 + 32) = v63;
        v191 = sub_100006370(0, &qword_1019F4D30);
        *(v190 + 96) = v191;
        v192 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(v190 + 72) = v234;
        v193 = aBlock;
        *(v190 + 136) = &type metadata for String;
        *(v190 + 144) = v236;
        *(v190 + 104) = v192;
        *(v190 + 112) = p_class_meths;
        *(v190 + 120) = v20;
        *(v190 + 176) = &type metadata for UInt;
        *(v190 + 184) = &protocol witness table for UInt;
        *(v190 + 152) = 1060;
        *(v190 + 216) = v191;
        *(v190 + 224) = v192;
        *(v190 + 192) = v193;
        v194 = v234;
        v195 = v193;
        v196 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v196, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v190);
        swift_setDeallocating();
        v236 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v197 = static os_log_type_t.error.getter();
        sub_100005404(v189, &_mh_execute_header, v197, "Presentation controller should not be nil when presenting view controller (%{public}@).", 87, 2, a1);

        type metadata accessor for __VaListBuilder();
        p_class_meths = swift_allocObject();
        *(p_class_meths + 16) = 8;
        *(p_class_meths + 24) = 0;
        v20 = (p_class_meths + 24);
        *(p_class_meths + 32) = 0;
        *(p_class_meths + 40) = 0;
        v63 = *(a1 + 16);
        v198 = a1;
        if (!v63)
        {
LABEL_147:
          v214 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v215 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v216 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v217 = String._bridgeToObjectiveC()();

          [v233 handleFailureInFunction:v215 file:v216 lineNumber:1060 isFatal:0 format:v217 args:v214];

          swift_setDeallocating();
          swift_arrayDestroy();

          return;
        }

        v9 = 0;
        a1 = 40;
        while (2)
        {
          v4 = sub_100020E58((v67 + 40 * v9), *(v67 + 40 * v9 + 24));
          v199 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v200 = *v20;
          v201 = *(v199 + 16);
          v69 = __OFADD__(*v20, v201);
          v202 = *v20 + v201;
          if (v69)
          {
            goto LABEL_160;
          }

          v203 = *(p_class_meths + 32);
          if (v203 >= v202)
          {
LABEL_139:
            v208 = *(p_class_meths + 40);
            if (!v208)
            {
              goto LABEL_146;
            }
          }

          else
          {
            if (v203 + 0x4000000000000000 < 0)
            {
              goto LABEL_162;
            }

            v4 = *(p_class_meths + 40);
            if (2 * v203 > v202)
            {
              v202 = 2 * v203;
            }

            *(p_class_meths + 32) = v202;
            if ((v202 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_163;
            }

            v204 = v67;
            v205 = v198;
            v206 = v199;
            v207 = swift_slowAlloc();
            v208 = v207;
            *(p_class_meths + 40) = v207;
            if (v4)
            {
              if (v207 != v4 || v207 >= &v4[v200])
              {
                memmove(v207, v4, 8 * v200);
              }

              v4 = p_class_meths;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v199 = v206;
              v198 = v205;
              v67 = v204;
              a1 = 40;
              goto LABEL_139;
            }

            v199 = v206;
            v198 = v205;
            v67 = v204;
            a1 = 40;
            if (!v208)
            {
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }
          }

          v210 = *(v199 + 16);
          if (v210)
          {
            v211 = (v199 + 32);
            v212 = *v20;
            while (1)
            {
              v213 = *v211++;
              v208[v212] = v213;
              v212 = *v20 + 1;
              if (__OFADD__(*v20, 1))
              {
                break;
              }

              *v20 = v212;
              if (!--v210)
              {
                goto LABEL_124;
              }
            }

            __break(1u);
            goto LABEL_154;
          }

LABEL_124:

          v9 = v9 + 1;
          if (v9 == v63)
          {
            goto LABEL_147;
          }

          continue;
        }
      }

      v112 = v87;
      v113 = v105;
      v114 = v107;
      v115 = swift_slowAlloc();
      v116 = v115;
      *(a1 + 40) = v115;
      if (v111)
      {
        break;
      }

      v107 = v114;
      v105 = v113;
      v87 = v112;
      p_class_meths = 40;
      if (!v116)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

LABEL_73:
      v118 = *(v107 + 16);
      if (v118)
      {
        v119 = (v107 + 32);
        v120 = *v20;
        while (1)
        {
          v121 = *v119++;
          *&v116[8 * v120] = v121;
          v120 = *v20 + 1;
          if (__OFADD__(*v20, 1))
          {
            break;
          }

          *v20 = v120;
          if (!--v118)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_157:
        v222 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v223 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v224 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v225 = String._bridgeToObjectiveC()();

        [v227 handleFailureInFunction:v223 file:v224 lineNumber:1024 isFatal:0 format:v225 args:v222];

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v4 = v236;
        v226 = *(v236 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController);
        [v226 resetToDefaultModeAnimated:1];
        swift_unknownObjectRelease();

LABEL_81:
        a1 = v234;
        v9 = v235;
LABEL_88:
        v17 = &selRef_p_writingDirectionForCharAtIndex_;
        p_class_meths = &OBJC_PROTOCOL___UIWritingToolsCoordinatorDelegate.class_meths;
LABEL_89:
        if (*(v4 + *(p_class_meths + 184)))
        {
          v130 = [a1 v17[360]];
          if (!v130)
          {
LABEL_121:
            v235 = v9;
            sub_1005B981C(&qword_1019F54E0);
            a1 = swift_initStackObject();
            *(a1 + 16) = xmmword_10146C6B0;
            swift_getObjectType();
            v181 = swift_getObjCClassFromMetadata();
            v182 = NSStringFromClass(v181);
            v183 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v184;

            *(a1 + 56) = &type metadata for String;
            v185 = sub_1000053B0();
            *(a1 + 32) = v183;
            v67 = a1 + 32;
            v236 = v185;
            *(a1 + 64) = v185;
            *(a1 + 40) = v63;
            v233 = objc_opt_self();
            LODWORD(v63) = [v233 _atomicIncrementAssertCount];
            aBlock = [objc_allocWithZone(NSString) init];
            sub_100604538(a1, &aBlock);
            StaticString.description.getter();
            v234 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v186 = String._bridgeToObjectiveC()();

            v187 = [v186 lastPathComponent];

            p_class_meths = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v20 = v188;

            if (qword_1019F20A0 != -1)
            {
              goto LABEL_170;
            }

            goto LABEL_122;
          }

          v20 = v130;
          v131 = [v130 presentationStyle];
          v132 = [v4 traitCollection];
          v133 = [v20 adaptivePresentationStyleForTraitCollection:v132];

          sub_101021A10(v131, v133);
          if ([v20 delegate])
          {
            swift_unknownObjectRelease();
            v134 = [v20 delegate];
            if (v134)
            {
              v135 = v134;
              v136 = [v236 traitCollection];
              v137 = [v136 userInterfaceIdiom];

              if (v137 && v135 != v236)
              {
                v235 = v9;
                sub_1005B981C(&qword_1019F54E0);
                v138 = swift_initStackObject();
                *(v138 + 16) = xmmword_10146C4D0;
                swift_getObjectType();
                v139 = swift_getObjCClassFromMetadata();
                v140 = NSStringFromClass(v139);
                v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v143 = v142;

                *(v138 + 56) = &type metadata for String;
                v144 = sub_1000053B0();
                *(v138 + 32) = v141;
                v236 = (v138 + 32);
                *(v138 + 64) = v144;
                *(v138 + 40) = v143;
                swift_getObjectType();
                v145 = swift_getObjCClassFromMetadata();
                v146 = NSStringFromClass(v145);
                v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v149 = v148;

                *(v138 + 96) = &type metadata for String;
                *(v138 + 104) = v144;
                *(v138 + 72) = v147;
                *(v138 + 80) = v149;
                v63 = v138;
                swift_getObjectType();
                v150 = swift_getObjCClassFromMetadata();
                v151 = NSStringFromClass(v150);
                v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v71 = v153;

                *(v138 + 136) = &type metadata for String;
                *(v138 + 144) = v144;
                v234 = v144;
                *(v138 + 112) = v152;
                *(v138 + 120) = v71;
                v230 = objc_opt_self();
                LODWORD(v71) = [v230 _atomicIncrementAssertCount];
                aBlock = [objc_allocWithZone(NSString) init];
                sub_100604538(v138, &aBlock);
                StaticString.description.getter();
                v233 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v154 = String._bridgeToObjectiveC()();

                v155 = [v154 lastPathComponent];

                v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v65 = v156;

                if (qword_1019F20A0 == -1)
                {
                  goto LABEL_96;
                }

                goto LABEL_173;
              }

              swift_unknownObjectRelease();
            }
          }

          else
          {
            [v20 setDelegate:v236];
          }
        }

        return;
      }

LABEL_57:

      if (++v63 == v106)
      {
        goto LABEL_80;
      }
    }

    if (v115 != v111 || v115 >= &v111[8 * v67])
    {
      memmove(v115, v111, 8 * v67);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v107 = v114;
    v105 = v113;
    v87 = v112;
    p_class_meths = 40;
LABEL_72:
    v116 = *(a1 + 40);
    if (!v116)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v20 = v19;
  v21 = [v19 presentationStyle];
  v22 = [v4 traitCollection];
  v23 = [v20 adaptivePresentationStyleForTraitCollection:v22];

  if (!*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_undoAlertController))
  {
    v24 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController;
    v25 = [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController____lazy_storage___documentModeController) mode];
    v26 = [v25 wantsToEndForNonPopoverPresentations];

    if (v26)
    {
      if (v21 != 7 && v23 != 7 || v23 != -1 && v23 != 7)
      {
        v129 = *(v4 + v24);
        [v129 resetToDefaultModeAnimated:1];

        goto LABEL_87;
      }
    }
  }

  if (![v20 delegate])
  {
    [v20 setDelegate:v4];
    goto LABEL_87;
  }

  swift_unknownObjectRelease();
  if ([v20 crl_willOnlyEverBePresentedAsAPopover])
  {
LABEL_87:

    goto LABEL_88;
  }

  v27 = [v20 delegate];
  p_class_meths = 0x101A28000;
  if (!v27)
  {
LABEL_155:

    v17 = &selRef_p_writingDirectionForCharAtIndex_;
    goto LABEL_89;
  }

  v28 = v27;
  v29 = [v4 traitCollection];
  v30 = [v29 userInterfaceIdiom];

  if (!v30 || v28 == v4)
  {
LABEL_154:
    swift_unknownObjectRelease();
    goto LABEL_155;
  }

  v235 = v9;
  sub_1005B981C(&qword_1019F54E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10146C4D0;
  swift_getObjectType();
  v32 = swift_getObjCClassFromMetadata();
  v33 = NSStringFromClass(v32);
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  *(v31 + 56) = &type metadata for String;
  v37 = sub_1000053B0();
  *(v31 + 32) = v34;
  v233 = (v31 + 32);
  v234 = a1;
  *(v31 + 64) = v37;
  *(v31 + 40) = v36;
  swift_getObjectType();
  v38 = swift_getObjCClassFromMetadata();
  v39 = NSStringFromClass(v38);
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  *(v31 + 96) = &type metadata for String;
  *(v31 + 104) = v37;
  *(v31 + 72) = v40;
  *(v31 + 80) = v42;
  swift_getObjectType();
  v43 = swift_getObjCClassFromMetadata();
  v44 = NSStringFromClass(v43);
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  *(v31 + 136) = &type metadata for String;
  *(v31 + 144) = v37;
  v229 = v37;
  *(v31 + 112) = v45;
  *(v31 + 120) = v47;
  v227 = objc_opt_self();
  v48 = [v227 _atomicIncrementAssertCount];
  aBlock = [objc_allocWithZone(NSString) init];
  sub_100604538(v31, &aBlock);
  StaticString.description.getter();
  v228 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  v50 = [v49 lastPathComponent];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v54 = static OS_os_log.crlAssert;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10146CA70;
  *(v55 + 56) = &type metadata for Int32;
  *(v55 + 64) = &protocol witness table for Int32;
  *(v55 + 32) = v48;
  v56 = sub_100006370(0, &qword_1019F4D30);
  *(v55 + 96) = v56;
  v57 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v55 + 72) = v228;
  *(v55 + 136) = &type metadata for String;
  *(v55 + 144) = v229;
  *(v55 + 104) = v57;
  *(v55 + 112) = v51;
  *(v55 + 120) = v53;
  *(v55 + 176) = &type metadata for UInt;
  *(v55 + 184) = &protocol witness table for UInt;
  *(v55 + 152) = 1024;
  v58 = aBlock;
  *(v55 + 216) = v56;
  *(v55 + 224) = v57;
  *(v55 + 192) = v58;
  v59 = v228;
  v60 = v58;
  v61 = static os_log_type_t.error.getter();
  sub_100005404(v54, &_mh_execute_header, v61, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v55);
  swift_setDeallocating();
  v230 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = static os_log_type_t.error.getter();
  sub_100005404(v54, &_mh_execute_header, v62, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2, v31);

  type metadata accessor for __VaListBuilder();
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  *(v63 + 24) = 0;
  a1 = v63 + 24;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  v64 = *(v31 + 16);
  if (!v64)
  {
    goto LABEL_157;
  }

  p_class_meths = 0;
  v65 = 0xF000000000000000;
  while (1)
  {
    sub_100020E58(&v233[5 * p_class_meths], v233[5 * p_class_meths + 3]);
    v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v67 = *a1;
    v68 = *(v66 + 16);
    v69 = __OFADD__(*a1, v68);
    v70 = *a1 + v68;
    if (v69)
    {
      goto LABEL_169;
    }

    v71 = v66;
    v72 = *(v63 + 32);
    if (v72 >= v70)
    {
      goto LABEL_46;
    }

    if (v72 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      swift_once();
LABEL_96:
      v157 = static OS_os_log.crlAssert;
      v158 = swift_initStackObject();
      *(v158 + 16) = xmmword_10146CA70;
      *(v158 + 56) = &type metadata for Int32;
      *(v158 + 64) = &protocol witness table for Int32;
      *(v158 + 32) = v71;
      v159 = sub_100006370(0, &qword_1019F4D30);
      *(v158 + 96) = v159;
      v160 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v158 + 72) = v233;
      *(v158 + 136) = &type metadata for String;
      *(v158 + 144) = v234;
      *(v158 + 104) = v160;
      *(v158 + 112) = v64;
      *(v158 + 120) = v65;
      *(v158 + 176) = &type metadata for UInt;
      *(v158 + 184) = &protocol witness table for UInt;
      *(v158 + 152) = 1054;
      v161 = aBlock;
      *(v158 + 216) = v159;
      *(v158 + 224) = v160;
      *(v158 + 192) = v161;
      v162 = v233;
      v163 = v161;
      v164 = static os_log_type_t.error.getter();
      sub_100005404(v157, &_mh_execute_header, v164, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v158);
      swift_setDeallocating();
      v234 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v165 = static os_log_type_t.error.getter();
      sub_100005404(v157, &_mh_execute_header, v165, "Board view controller can't become presentation delegate (of %{public}@ presenting %{public}@) if it's already set (%{public}@).", 128, 2, v63);

      type metadata accessor for __VaListBuilder();
      a1 = swift_allocObject();
      *(a1 + 16) = 8;
      *(a1 + 24) = 0;
      v166 = (a1 + 24);
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v9 = *(v63 + 16);
      if (!v9)
      {
LABEL_152:
        v218 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v219 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v220 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v221 = String._bridgeToObjectiveC()();

        [v230 handleFailureInFunction:v219 file:v220 lineNumber:1054 isFatal:0 format:v221 args:v218];

        swift_setDeallocating();
        swift_arrayDestroy();

        swift_unknownObjectRelease();
        return;
      }

      p_class_meths = 0;
      while (1)
      {
        sub_100020E58(&v236[5 * p_class_meths], v236[5 * p_class_meths + 3]);
        v167 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v67 = *v166;
        v168 = *(v167 + 16);
        v69 = __OFADD__(*v166, v168);
        v169 = *v166 + v168;
        if (v69)
        {
          goto LABEL_166;
        }

        v170 = *(a1 + 32);
        if (v170 >= v169)
        {
          goto LABEL_113;
        }

        if (v170 + 0x4000000000000000 < 0)
        {
          goto LABEL_167;
        }

        v171 = *(a1 + 40);
        if (2 * v170 > v169)
        {
          v169 = 2 * v170;
        }

        *(a1 + 32) = v169;
        if ((v169 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_168;
        }

        v172 = v63;
        v173 = v167;
        v174 = swift_slowAlloc();
        v175 = v174;
        *(a1 + 40) = v174;
        if (v171)
        {
          break;
        }

        v167 = v173;
        v63 = v172;
        if (!v175)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

LABEL_114:
        v177 = *(v167 + 16);
        if (v177)
        {
          v178 = (v167 + 32);
          v179 = *v166;
          while (1)
          {
            v180 = *v178++;
            *&v175[8 * v179] = v180;
            v179 = *v166 + 1;
            if (__OFADD__(*v166, 1))
            {
              break;
            }

            *v166 = v179;
            if (!--v177)
            {
              goto LABEL_98;
            }
          }

          __break(1u);
          goto LABEL_159;
        }

LABEL_98:

        if (++p_class_meths == v9)
        {
          goto LABEL_152;
        }
      }

      if (v174 != v171 || v174 >= &v171[8 * v67])
      {
        memmove(v174, v171, 8 * v67);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v167 = v173;
      v63 = v172;
LABEL_113:
      v175 = *(a1 + 40);
      if (!v175)
      {
        goto LABEL_120;
      }

      goto LABEL_114;
    }

    v73 = *(v63 + 40);
    if (2 * v72 > v70)
    {
      v70 = 2 * v72;
    }

    *(v63 + 32) = v70;
    if ((v70 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_172;
    }

    v74 = swift_slowAlloc();
    *(v63 + 40) = v74;
    if (v73)
    {
      if (v74 != v73 || v74 >= &v73[8 * v67])
      {
        memmove(v74, v73, 8 * v67);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_46:
      v74 = *(v63 + 40);
    }

    if (!v74)
    {
      break;
    }

    v76 = *(v71 + 16);
    if (v76)
    {
      v77 = (v71 + 32);
      v78 = *a1;
      while (1)
      {
        v79 = *v77++;
        *&v74[8 * v78] = v79;
        v78 = *a1 + 1;
        if (__OFADD__(*a1, 1))
        {
          break;
        }

        *a1 = v78;
        if (!--v76)
        {
          goto LABEL_31;
        }
      }

LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

LABEL_31:

    if (++p_class_meths == v64)
    {
      goto LABEL_157;
    }
  }

  __break(1u);
}