void sub_1011A1CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v60 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v54 = type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
  __chkstk_darwin(v54);
  v53 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v44 - v18;
  __chkstk_darwin(v20);
  v62 = &v44 - v22;
  v46 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v57 = (v10 + 16);
    v58 = v19;
    v55 = (v10 + 8);
    v56 = v15;
    v25 = v23 + v24 * (a3 - 1);
    v51 = -v24;
    v52 = v23;
    v26 = a1 - a3;
    v45 = v24;
    v27 = v23 + v24 * a3;
    v59 = v9;
LABEL_5:
    v49 = v25;
    v50 = a3;
    v47 = v27;
    v48 = v26;
    v28 = v26;
    while (1)
    {
      v61 = v28;
      v29 = v62;
      sub_1011A04B8(v27, v62, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      sub_1011A04B8(v25, v19, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      v30 = v15;
      v31 = v12;
      v32 = *v57;
      (*v57)(v30, v29, v9);
      v32(v12, v19, v9);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v34 = v60;
      v35 = [v60 indexOfObject:isa];

      v36 = v12;
      v37 = UUID._bridgeToObjectiveC()().super.isa;
      v38 = [v34 indexOfObject:v37];

      if (v35 == NSNotFound.getter() || v38 == NSNotFound.getter())
      {
        v15 = v56;
        v12 = v36;
        v39 = static UUID.< infix(_:_:)();
      }

      else
      {
        v39 = v35 < v38;
        v12 = v31;
        v15 = v56;
      }

      v40 = *v55;
      v9 = v59;
      (*v55)(v12, v59);
      v40(v15, v9);
      v19 = v58;
      sub_1011A0324(v58, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      sub_1011A0324(v62, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      v41 = v61;
      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v25 = v49 + v45;
        v26 = v48 - 1;
        v27 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v42 = v53;
      sub_1011A0450(v27, v53, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      swift_arrayInitWithTakeFrontToBack();
      sub_1011A0450(v42, v25, type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper);
      v25 += v51;
      v27 += v51;
      v43 = __CFADD__(v41, 1);
      v28 = v41 + 1;
      if (v43)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1011A210C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0) - 8);
      v11[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v11[1] = v7;
      v10 = v4;
      sub_1011A0F20(v11, v12, a1, v6, v10);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1011A1CF0(0, v3, 1, a1, v4);
  }
}

void sub_1011A2278(void **a1, void *a2)
{
  v4 = *(type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(0) - 8);
  v5 = *a1;
  v6 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10113E1A8(v5);
  }

  v7 = v5[2];
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;
  v8 = v6;
  sub_1011A210C(v9, v8);

  *a1 = v5;
}

id sub_1011A2358(id a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v128 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990);
  v6 = *(v5 - 8);
  v132 = v5;
  v133 = v6;
  __chkstk_darwin(v5);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v131 = &v124 - v10;
  __chkstk_darwin(v11);
  v135 = &v124 - v12;
  __chkstk_darwin(v13);
  v139 = &v124 - v14;
  v15 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v15 - 8);
  v17 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  v21 = type metadata accessor for PKDrawing();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v130 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v141 = &v124 - v25;
  v1[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_isTornDown] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_undoObserver] = 0;
  swift_unknownObjectWeakAssign();
  type metadata accessor for CRLTouchTransparentUIView();
  v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v129 = OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_dataDetectorDecorationView;
  v138 = v1;
  *&v1[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_dataDetectorDecorationView] = v26;
  v27 = [a1 pkDrawingProvider];
  v136 = a1;
  v137 = v21;
  v140 = v22;
  if (v27)
  {
    v28 = v27;
    v29 = [v27 unifiedDrawing];

    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v22 + 56))(v17, 0, 1, v21);
  }

  else
  {
    (*(v22 + 56))(v17, 1, 1, v21);
    v127 = objc_opt_self();
    v30 = [v127 _atomicIncrementAssertCount];
    v142[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v142);
    StaticString.description.getter();
    v125 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v124 = v34;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v126 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v36 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v36;
    v37 = sub_1005CF04C();
    *(inited + 104) = v37;
    v38 = v125;
    *(inited + 72) = v125;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    v40 = v124;
    *(inited + 112) = v33;
    *(inited + 120) = v40;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 60;
    v41 = v142[0];
    *(inited + 216) = v36;
    *(inited + 224) = v37;
    *(inited + 192) = v41;
    v42 = v38;
    v43 = v41;
    v44 = static os_log_type_t.error.getter();
    v45 = v126;
    sub_100005404(v126, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v127 handleFailureInFunction:v49 file:v50 lineNumber:60 isFatal:0 format:v51 args:v48];

    a1 = v136;
    v21 = v137;
    v22 = v140;
  }

  sub_10003DFF8(v17, v20, &qword_101A01C10);
  v52 = *(v22 + 48);
  if (v52(v20, 1, v21) == 1)
  {
    PKDrawing.init()();
    if (v52(v20, 1, v21) != 1)
    {
      sub_10000CAAC(v20, &qword_101A01C10);
    }
  }

  else
  {
    (*(v22 + 32))(v141, v20, v21);
  }

  v53 = [a1 board];
  if (v53)
  {
    v54 = *&v53[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v55 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    v56 = v53;
    swift_beginAccess();
    v57 = v54 + v55;
    v58 = v128;
    sub_1011A04B8(v57, v128, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v59 = v135;
    CRRegister.wrappedValue.getter();

    sub_1011A0324(v58, type metadata accessor for CRLBoardCRDTData);
    v60 = type metadata accessor for UUID();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  }

  else
  {
    v61 = type metadata accessor for UUID();
    v62 = *(*(v61 - 8) + 56);
    v126 = v61;
    v127 = ((v61 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
    v62(v135, 1, 1);
    v125 = objc_opt_self();
    LODWORD(v128) = [v125 _atomicIncrementAssertCount];
    v142[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v142);
    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    v65 = [v64 lastPathComponent];

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v69 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v128;
    v71 = sub_100006370(0, &qword_1019F4D30);
    *(v70 + 96) = v71;
    v72 = sub_1005CF04C();
    *(v70 + 104) = v72;
    *(v70 + 72) = v63;
    *(v70 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v70 + 112) = v66;
    *(v70 + 120) = v68;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v73;
    *(v70 + 152) = 61;
    v74 = v142[0];
    *(v70 + 216) = v71;
    *(v70 + 224) = v72;
    *(v70 + 192) = v74;
    v75 = v63;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v78 = static os_log_type_t.error.getter();
    sub_100005404(v69, &_mh_execute_header, v78, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v79 = swift_allocObject();
    v79[2] = 8;
    v79[3] = 0;
    v79[4] = 0;
    v79[5] = 0;
    v80 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    [v125 handleFailureInFunction:v81 file:v82 lineNumber:61 isFatal:0 format:v83 args:v80];

    v21 = v137;
    v59 = v135;
    v60 = v126;
  }

  v84 = v59;
  v85 = v139;
  sub_10003DFF8(v84, v139, &qword_1019F6990);
  type metadata accessor for RecognitionStrokeProvider();
  (*(v140 + 16))(v130, v141, v21);
  sub_10000BE14(v85, v131, &qword_1019F6990);
  v86 = RecognitionStrokeProvider.__allocating_init(drawing:proactive:identifier:)();
  v87 = v138;
  *&v138[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_strokeProvider] = v86;
  type metadata accessor for RecognitionController();

  *&v87[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController] = RecognitionController.__allocating_init(strokeProvider:)();
  v88 = *&v87[v129];
  type metadata accessor for CanvasDataDetectorInteraction();
  swift_allocObject();

  v89 = v88;
  *&v87[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_detectorInteraction] = CanvasDataDetectorInteraction.init(strokeProvider:view:)();
  type metadata accessor for UUID();
  sub_10119D3B8(&qword_1019FB870, &type metadata accessor for UUID);
  v90 = Set.init(minimumCapacity:)();
  (*(*(v60 - 8) + 56))(v8, 1, 1, v60);
  v91 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v91 + 16) = 100;
  v92 = v133;
  v93 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  sub_10000BE14(v8, v91 + v93, &qword_1019F6990);
  v94 = *(v92 + 72);
  v95 = v91 + v94 + v93;
  v96 = 99;
  do
  {
    sub_10000BE14(v8, v95, &qword_1019F6990);
    v95 += v94;
    --v96;
  }

  while (v96);
  sub_10000CAAC(v8, &qword_1019F6990);
  v97 = v138;
  v98 = &v138[OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recentlyReplacedStrokes];
  *v98 = 100;
  *(v98 + 1) = v90;
  *(v98 + 2) = v91;
  *(v98 + 3) = 0;
  v144.receiver = v97;
  v144.super_class = ObjectType;
  v99 = objc_msgSendSuper2(&v144, "init");
  v100 = [v136 pkDrawingProvider];
  if (v100)
  {
    v101 = v100;
    [v100 addConsolidatedPKDrawingObserver:v99];
  }

  else
  {
    v138 = objc_opt_self();
    v102 = [v138 _atomicIncrementAssertCount];
    v143 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v143);
    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v104 = String._bridgeToObjectiveC()();

    v105 = [v104 lastPathComponent];

    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v109 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v110 = swift_initStackObject();
    *(v110 + 16) = xmmword_10146CA70;
    *(v110 + 56) = &type metadata for Int32;
    *(v110 + 64) = &protocol witness table for Int32;
    *(v110 + 32) = v102;
    v111 = sub_100006370(0, &qword_1019F4D30);
    *(v110 + 96) = v111;
    v112 = sub_1005CF04C();
    *(v110 + 104) = v112;
    *(v110 + 72) = v103;
    *(v110 + 136) = &type metadata for String;
    v113 = sub_1000053B0();
    *(v110 + 112) = v106;
    *(v110 + 120) = v108;
    *(v110 + 176) = &type metadata for UInt;
    *(v110 + 184) = &protocol witness table for UInt;
    *(v110 + 144) = v113;
    *(v110 + 152) = 73;
    v114 = v143;
    *(v110 + 216) = v111;
    *(v110 + 224) = v112;
    *(v110 + 192) = v114;
    v115 = v103;
    v116 = v114;
    v117 = static os_log_type_t.error.getter();
    sub_100005404(v109, &_mh_execute_header, v117, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v110);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v118 = static os_log_type_t.error.getter();
    sub_100005404(v109, &_mh_execute_header, v118, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v119 = swift_allocObject();
    v119[2] = 8;
    v119[3] = 0;
    v119[4] = 0;
    v119[5] = 0;
    v120 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v121 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v122 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v101 = String._bridgeToObjectiveC()();

    [v138 handleFailureInFunction:v121 file:v122 lineNumber:73 isFatal:0 format:v101 args:v120];
  }

  sub_10117DAD0();
  sub_10117DE8C();
  sub_10000CAAC(v139, &qword_1019F6990);
  (*(v140 + 8))(v141, v137);
  return v99;
}

uint64_t sub_1011A35C0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

void *sub_1011A36E4(uint64_t a1)
{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v30 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = *(v3 + 16);
  v10 = v3 + 16;
  v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
  v12 = a1 + v26;
  v13 = *(v10 + 56);
  v25 = (v10 - 8);
  v28 = (v10 + 16);
  v29 = v11;
  v14 = _swiftEmptyArrayStorage;
  v27 = v10;
  v11(v8, a1 + v26, v2, v6);
  while (1)
  {
    v16 = objc_opt_self();
    isa = PKStroke._bridgeToObjectiveC()().super.isa;
    v18 = [(objc_class *)isa _shapeType];

    if ([v16 isFillableForShapeType:v18])
    {
      v19 = *v28;
      (*v28)(v30, v8, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776904(0, v14[2] + 1, 1);
        v14 = v31;
      }

      v22 = v14[2];
      v21 = v14[3];
      if (v22 >= v21 >> 1)
      {
        sub_100776904(v21 > 1, v22 + 1, 1);
        v14 = v31;
      }

      v14[2] = v22 + 1;
      v19(v14 + v26 + v22 * v13, v30, v2);
    }

    else
    {
      (*v25)(v8, v2);
    }

    v12 += v13;
    if (!--v9)
    {
      break;
    }

    v29(v8, v12, v2, v15);
  }

  return v14;
}

void *sub_1011A3950(uint64_t a1)
{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  __chkstk_darwin(v4);
  v7 = &v57 - v6;
  result = _swiftEmptyArrayStorage;
  v75 = _swiftEmptyArrayStorage;
  v65 = *(a1 + 16);
  if (v65)
  {
    v60 = v5;
    v9 = objc_opt_self();
    v10 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v11 = v13;
    v58 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v62 = a1 + v58;
    v14 = *(v12 + 56);
    v59 = PKInkTypePen;
    v57 = xmmword_10146CA70;
    v63 = v9;
    v73 = v2;
    v64 = v12;
    v68 = v13;
    v61 = (v12 - 8);
    v72 = v14;
    v71 = v7;
    do
    {
      v70 = v10;
      v11(v7, v62 + v14 * v10, v2);
      isa = PKStroke._bridgeToObjectiveC()().super.isa;
      v16 = [v9 pathFromPKStroke:isa pencilKitStrokePathData:0];

      v69 = v16;
      v17 = [v16 pathByNormalizingClosedPathToRemoveSelfIntersections];
      if (v17)
      {
        v18 = v17;
        v19 = PKStroke._bridgeToObjectiveC()().super.isa;
        v20 = [(objc_class *)v19 _shapeType];

        v21 = sub_100D633F0(v20);
        v22 = [objc_opt_self() blackColor];
        v23 = objc_allocWithZone(CRLPencilKitInkStroke);
        v24 = [v23 initWithInkType:v59 color:v22 adjustedWidth:1.0];

        v66 = v18;
        v25 = [v9 pencilKitStrokesFromPath:v18 inkStroke:v24 strokePathCompactData:0 maskPath:0 snappedShapeType:v21];

        v2 = v73;
        v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v67 = v26;
        v27 = *(v26 + 2);
        v28 = v68;
        v29 = v61;
        v30 = v60;
        if (v27)
        {
          v31 = &v67[v58];
          do
          {
            v28(v30, v31, v2);
            v32 = PKStroke._bridgeToObjectiveC()().super.isa;
            (*v29)(v30, v2);
            v33 = PKStroke._bridgeToObjectiveC()().super.isa;
            v34 = [(objc_class *)v33 crl_fill];

            [(objc_class *)v32 crl_setFill:v34];
            v2 = v73;

            v31 += v72;
            --v27;
          }

          while (v27);
        }

        sub_10079AD64(v67);

        v7 = v71;
        (*v29)(v71, v2);
        v14 = v72;
      }

      else
      {
        v67 = objc_opt_self();
        v35 = [v67 _atomicIncrementAssertCount];
        v74 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v74);
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
        *(inited + 16) = v57;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v35;
        v44 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v44;
        v45 = sub_1005CF04C();
        *(inited + 104) = v45;
        *(inited + 72) = v36;
        *(inited + 136) = &type metadata for String;
        v46 = sub_1000053B0();
        *(inited + 112) = v39;
        *(inited + 120) = v41;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 144) = v46;
        *(inited + 152) = 455;
        v47 = v74;
        *(inited + 216) = v44;
        *(inited + 224) = v45;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v47;
        v48 = v36;
        v49 = v47;
        v50 = static os_log_type_t.error.getter();
        sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v51 = static os_log_type_t.error.getter();
        sub_100005404(v42, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

        [v67 handleFailureInFunction:v54 file:v55 lineNumber:455 isFatal:0 format:v56 args:v53];

        v2 = v73;
        (*v61)(v7, v73);

        v14 = v72;
      }

      v10 = v70 + 1;
      v9 = v63;
      v11 = v68;
    }

    while (v70 + 1 != v65);
    return v75;
  }

  return result;
}

uint64_t sub_1011A4180(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_1005B981C(&qword_101A01C10);
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for PKDrawing();
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  v5 = type metadata accessor for PKStroke();
  *(v3 + 72) = v5;
  *(v3 + 80) = *(v5 - 8);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 128) = v7;
  *(v3 + 136) = v6;

  return _swift_task_switch(sub_1011A4330, v7, v6);
}

uint64_t sub_1011A4330()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 288) = v6;
    v7 = OBJC_IVAR____TtC8Freeform38CRLFreehandDrawingIntelligenceProvider_recognitionController;
    *(v0 + 292) = 0;
    *(v0 + 152) = v7;
    *(v0 + 160) = _swiftEmptyArrayStorage;
    *(v0 + 168) = *(v4 + 56);
    *(v0 + 176) = 1;
    v8 = *(v0 + 112);
    *(v0 + 184) = v5;
    *(v0 + 192) = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v5(v8, v1 + ((v6 + 32) & ~v6), v3);
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1011A44CC;
    v10 = *(v0 + 112);
    v11 = *(v0 + 32);

    return sub_101183314(v10, v11);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(0);
  }
}

uint64_t sub_1011A44CC(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_1011A45CC, 0, 0);
}

uint64_t sub_1011A45CC()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = sub_1011A4878;
LABEL_3:

    return _swift_task_switch(v3, v1, v2);
  }

  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v5 = [(objc_class *)isa crl_fill];

  if (!v5)
  {
    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = sub_1011A4C28;
    goto LABEL_3;
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 288);
  v8 = *(v0 + 112);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);

  v11 = (v7 + 32) & ~v7;
  *(v0 + 216) = sub_1005B981C(&qword_101A11B00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146C6B0;
  v6(v12 + v11, v8, v9);
  v13 = sub_1011A3950(v12);
  *(v0 + 224) = v13;
  swift_setDeallocating();
  v14 = *(v10 + 8);
  *(v0 + 232) = v14;
  *(v0 + 240) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v12 + v11, v9);
  v15 = swift_deallocClassInstance();
  v18 = v13[2];
  *(v0 + 248) = v18;
  if (!v18)
  {

    v1 = *(v0 + 128);
    v2 = *(v0 + 136);
    v3 = sub_1011A7380;
    goto LABEL_3;
  }

  v19 = *(v0 + 288);
  *(v0 + 256) = 0;
  v20 = *(v0 + 224);
  if (*(v20 + 16))
  {
    v21 = (v19 + 32) & ~v19;
    v22 = *(v0 + 184);
    v23 = *(v0 + 104);
    v24 = *(v0 + 72);
    v22(v23, v20 + v21, v24);
    v25 = swift_allocObject();
    *(v0 + 264) = v25;
    *(v25 + 16) = xmmword_10146C6B0;
    v22(v25 + v21, v23, v24);
    v26 = swift_task_alloc();
    *(v0 + 272) = v26;
    *v26 = v0;
    v26[1] = sub_1011A4ECC;
    v15 = *(v0 + 40);
    v17.n128_u64[0] = *(v0 + 32);
    v16 = v25;
  }

  else
  {
    __break(1u);
  }

  return RecognitionController.drawingBySnapping(strokes:inputScale:)(v15, v16, v17);
}

uint64_t sub_1011A4878()
{
  v2 = *(v1 + 208);
  v3 = *(v2 + 16);
  if (!v3)
  {

    (*(v1 + 184))(*(v1 + 88), *(v1 + 112), *(v1 + 72));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 160);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  v4 = *(*(v1 + 160) + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 160);
  if (!v6 || v5 > *(v0 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v3;
    }

    else
    {
      v7 = v4;
    }

    v0 = sub_100B36FA8(v6, v7, 1, *(v1 + 160));
  }

  if (!*(v2 + 16))
  {

    __break(1u);
    return result;
  }

  if ((*(v0 + 3) >> 1) - *(v0 + 2) < v3)
  {
    goto LABEL_31;
  }

  swift_arrayInitWithCopy();

  v8 = *(v0 + 2);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v1 + 176);
  v12 = *(v1 + 144);
  v13 = *(v1 + 112);
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  *(v0 + 2) = v10;
  (*(v15 + 8))(v13, v14);
  if (v11 == v12)
  {
  }

  else
  {
    v29 = *(v1 + 176);
    *(v1 + 292) = 1;
    while (1)
    {
      *(v1 + 160) = v0;
      if (v29 >= *(v1 + 144))
      {
LABEL_33:
        __break(1u);
      }

      else
      {
        v30 = *(v1 + 80);
        v31 = *(v30 + 72);
        *(v1 + 168) = v31;
        *(v1 + 176) = v29 + 1;
        if (!__OFADD__(v29, 1))
        {
          v32 = *(v1 + 112);
          v33 = *(v1 + 72);
          v34 = *(v1 + 16) + ((*(v1 + 288) + 32) & ~*(v1 + 288)) + v31 * v29;
          v35 = *(v30 + 16);
          *(v1 + 184) = v35;
          *(v1 + 192) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v35(v32, v34, v33);
          v36 = swift_task_alloc();
          *(v1 + 200) = v36;
          *v36 = v1;
          v36[1] = sub_1011A44CC;
          v37 = *(v1 + 112);
          v38 = *(v1 + 32);

          return sub_101183314(v37, v38);
        }
      }

      __break(1u);
LABEL_35:
      v0 = sub_100B36FA8(0, *(v0 + 2) + 1, 1, v0);
LABEL_15:
      v18 = *(v0 + 2);
      v17 = *(v0 + 3);
      if (v18 >= v17 >> 1)
      {
        v0 = sub_100B36FA8(v17 > 1, v18 + 1, 1, v0);
      }

      v20 = *(v1 + 168);
      v19 = *(v1 + 176);
      v21 = *(v1 + 144);
      v23 = *(v1 + 80);
      v22 = *(v1 + 88);
      v24 = *(v1 + 72);
      v25 = (*(v1 + 288) + 32) & ~*(v1 + 288);
      (*(v23 + 8))(*(v1 + 112), v24);
      *(v0 + 2) = v18 + 1;
      (*(v23 + 32))(&v0[v25 + v20 * v18], v22, v24);
      if (v19 == v21)
      {
        break;
      }

      v29 = *(v1 + 176);
    }

    v26 = *(v1 + 292);

    if ((v26 & 1) == 0)
    {

      v0 = 0;
    }
  }

  v27 = *(v1 + 8);

  return v27(v0);
}

uint64_t sub_1011A4C28()
{
  (*(v0 + 184))(*(v0 + 88), *(v0 + 112), *(v0 + 72));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 160);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100B36FA8(0, *(v2 + 2) + 1, 1, *(v0 + 160));
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100B36FA8(v3 > 1, v4 + 1, 1, v2);
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 144);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = (*(v0 + 288) + 32) & ~*(v0 + 288);
  (*(v9 + 8))(*(v0 + 112), v10);
  *(v2 + 2) = v4 + 1;
  result = (*(v9 + 32))(&v2[v11 + v6 * v4], v8, v10);
  if (v5 == v7)
  {
    v13 = *(v0 + 292);

    if ((v13 & 1) == 0)
    {

      v2 = 0;
    }

    v14 = *(v0 + 8);

    return v14(v2);
  }

  v15 = *(v0 + 176);
  *(v0 + 160) = v2;
  if (v15 >= *(v0 + 144))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = *(v0 + 80);
  v17 = *(v16 + 72);
  *(v0 + 168) = v17;
  *(v0 + 176) = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v18 = *(v0 + 112);
  v19 = *(v0 + 72);
  v20 = *(v0 + 16) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + v17 * v15;
  v21 = *(v16 + 16);
  *(v0 + 184) = v21;
  *(v0 + 192) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v18, v20, v19);
  v22 = swift_task_alloc();
  *(v0 + 200) = v22;
  *v22 = v0;
  v22[1] = sub_1011A44CC;
  v23 = *(v0 + 112);
  v24 = *(v0 + 32);

  return sub_101183314(v23, v24);
}

uint64_t sub_1011A4ECC()
{

  return _swift_task_switch(sub_1011A4FE4, 0, 0);
}

uint64_t sub_1011A4FE4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(v3, &qword_101A01C10);
    goto LABEL_3;
  }

  (*(v2 + 32))(*(v0 + 64), v3, v1);
  isa = PKStroke._bridgeToObjectiveC()().super.isa;
  v13 = [(objc_class *)isa crl_fill];

  v14 = *(v0 + 64);
  if (!v13)
  {
    v35 = *(v0 + 48);
    v36 = *(v0 + 56);
    v16 = PKDrawing.strokes.getter();
    (*(v36 + 8))(v14, v35);
LABEL_16:
    *(v0 + 280) = v16;
    (*(v0 + 232))(*(v0 + 104), *(v0 + 72));

    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = sub_1011A536C;
    goto LABEL_17;
  }

  v15 = PKDrawing.strokes.getter();
  v16 = sub_1011A36E4(v15);

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = v16 + ((*(v0 + 288) + 32) & ~*(v0 + 288));
    do
    {
      v20 = *(v0 + 232);
      v21 = *(v0 + 96);
      v22 = *(v0 + 72);
      (*(v0 + 184))(v21, v19 + *(v0 + 168) * v18++, v22);
      v23 = PKStroke._bridgeToObjectiveC()().super.isa;
      v20(v21, v22);
      [(objc_class *)v23 crl_setFill:v13];
    }

    while (v17 != v18);
  }

  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v26 = *(v0 + 48);

  (*(v25 + 8))(v24, v26);
  if (*(v16 + 16))
  {
    goto LABEL_16;
  }

LABEL_3:
  v4 = *(v0 + 248);
  v5 = *(v0 + 256) + 1;
  v6 = (*(v0 + 232))(*(v0 + 104), *(v0 + 72));
  if (v5 == v4)
  {

    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = sub_1011A7380;
LABEL_17:

    return _swift_task_switch(v11, v9, v10);
  }

  v27 = *(v0 + 256) + 1;
  *(v0 + 256) = v27;
  v28 = *(v0 + 224);
  if (v27 >= *(v28 + 16))
  {
    __break(1u);
  }

  else
  {
    v29 = *(v0 + 184);
    v30 = *(v0 + 104);
    v31 = *(v0 + 72);
    v32 = (*(v0 + 288) + 32) & ~*(v0 + 288);
    v29(v30, v28 + v32 + *(v0 + 168) * v27, v31);
    v33 = swift_allocObject();
    *(v0 + 264) = v33;
    *(v33 + 16) = xmmword_10146C6B0;
    v29(v33 + v32, v30, v31);
    v34 = swift_task_alloc();
    *(v0 + 272) = v34;
    *v34 = v0;
    v34[1] = sub_1011A4ECC;
    v6 = *(v0 + 40);
    v8.n128_u64[0] = *(v0 + 32);
    v7 = v33;
  }

  return RecognitionController.drawingBySnapping(strokes:inputScale:)(v6, v7, v8);
}

uint64_t sub_1011A536C()
{
  v2 = *(v1 + 280);
  v3 = *(v2 + 16);
  if (!v3)
  {

    (*(v1 + 184))(*(v1 + 88), *(v1 + 112), *(v1 + 72));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0 = *(v1 + 160);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

  v4 = *(*(v1 + 160) + 16);
  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v0 = *(v1 + 160);
  if (!v6 || v5 > *(v0 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v3;
    }

    else
    {
      v7 = v4;
    }

    v0 = sub_100B36FA8(v6, v7, 1, *(v1 + 160));
  }

  if (!*(v2 + 16))
  {

    __break(1u);
    return result;
  }

  if ((*(v0 + 3) >> 1) - *(v0 + 2) < v3)
  {
    goto LABEL_31;
  }

  swift_arrayInitWithCopy();

  v8 = *(v0 + 2);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v11 = *(v1 + 176);
  v12 = *(v1 + 144);
  v13 = *(v1 + 112);
  v14 = *(v1 + 72);
  v15 = *(v1 + 80);
  *(v0 + 2) = v10;
  (*(v15 + 8))(v13, v14);
  if (v11 == v12)
  {
  }

  else
  {
    v29 = *(v1 + 176);
    *(v1 + 292) = 1;
    while (1)
    {
      *(v1 + 160) = v0;
      if (v29 >= *(v1 + 144))
      {
LABEL_33:
        __break(1u);
      }

      else
      {
        v30 = *(v1 + 80);
        v31 = *(v30 + 72);
        *(v1 + 168) = v31;
        *(v1 + 176) = v29 + 1;
        if (!__OFADD__(v29, 1))
        {
          v32 = *(v1 + 112);
          v33 = *(v1 + 72);
          v34 = *(v1 + 16) + ((*(v1 + 288) + 32) & ~*(v1 + 288)) + v31 * v29;
          v35 = *(v30 + 16);
          *(v1 + 184) = v35;
          *(v1 + 192) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v35(v32, v34, v33);
          v36 = swift_task_alloc();
          *(v1 + 200) = v36;
          *v36 = v1;
          v36[1] = sub_1011A44CC;
          v37 = *(v1 + 112);
          v38 = *(v1 + 32);

          return sub_101183314(v37, v38);
        }
      }

      __break(1u);
LABEL_35:
      v0 = sub_100B36FA8(0, *(v0 + 2) + 1, 1, v0);
LABEL_15:
      v18 = *(v0 + 2);
      v17 = *(v0 + 3);
      if (v18 >= v17 >> 1)
      {
        v0 = sub_100B36FA8(v17 > 1, v18 + 1, 1, v0);
      }

      v20 = *(v1 + 168);
      v19 = *(v1 + 176);
      v21 = *(v1 + 144);
      v23 = *(v1 + 80);
      v22 = *(v1 + 88);
      v24 = *(v1 + 72);
      v25 = (*(v1 + 288) + 32) & ~*(v1 + 288);
      (*(v23 + 8))(*(v1 + 112), v24);
      *(v0 + 2) = v18 + 1;
      (*(v23 + 32))(&v0[v25 + v20 * v18], v22, v24);
      if (v19 == v21)
      {
        break;
      }

      v29 = *(v1 + 176);
    }

    v26 = *(v1 + 292);

    if ((v26 & 1) == 0)
    {

      v0 = 0;
    }
  }

  v27 = *(v1 + 8);

  return v27(v0);
}

id sub_1011A571C(void *a1, void *a2, char a3, char a4, uint64_t a5, uint64_t a6, Swift::Int a7, unint64_t a8, unint64_t a9)
{
  v104[0] = a7;

  v15 = v104;
  sub_10079C16C(v14);
  v97 = v104[0];
  v104[0] = a8;

  sub_10079C16C(a9);
  v94 = v104[0];
  if (a6 >> 62)
  {
LABEL_50:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v16 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_53;
    }
  }

  if (v97 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_53:

    v59 = [a1 selectionPathForInfos:0];
    goto LABEL_54;
  }

  if (!*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_53;
  }

LABEL_5:
  v104[0] = _swiftEmptySetSingleton;
  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_68;
  }

  v91 = a1;
  v17 = 0;
  v18 = a6 & 0xC000000000000001;
  a1 = _swiftEmptyArrayStorage;
  v10 = &off_101A09000;
  v101 = xmmword_10146CA70;
  v99 = v16;
  v100 = a6;
  v98 = a6 & 0xC000000000000001;
  do
  {
    if (v18)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(a6 + 8 * v17 + 32);
    }

    v9 = v40;
    v41 = v10[408];
    v42 = *&v41[v40];
    if (!v42)
    {
      LODWORD(v15) = v9;
      sub_10096C7D4();
      v42 = *&v41[v9];
    }

    if (v42)
    {
      a8 = v42;
    }

    else
    {
      a8 = _swiftEmptyArrayStorage;
    }

    if (a8 >> 62)
    {
      LODWORD(v15) = v42;
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_7:

        v102 = objc_opt_self();
        v19 = [v102 _atomicIncrementAssertCount];
        v103 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v103);
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
        *(inited + 144) = v30;
        *(inited + 152) = 1194;
        v31 = v103;
        *(inited + 216) = v28;
        *(inited + 224) = v29;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 192) = v31;
        v15 = v20;
        v32 = v31;
        v33 = static os_log_type_t.error.getter();
        sub_100005404(v26, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v34 = static os_log_type_t.error.getter();
        sub_100005404(v26, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v35 = swift_allocObject();
        LODWORD(v15) = v35;
        v35[2] = 8;
        v35[3] = 0;
        v35[4] = 0;
        v35[5] = 0;
        v36 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v37 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v38 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v39 = String._bridgeToObjectiveC()();

        [v102 handleFailureInFunction:v37 file:v38 lineNumber:1194 isFatal:0 format:v39 args:v36];

        v16 = v99;
        a6 = v100;
        v18 = v98;
        a1 = _swiftEmptyArrayStorage;
        v10 = &off_101A09000;
        goto LABEL_10;
      }
    }

    else if (!*((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    if ((a8 & 0xC000000000000001) != 0)
    {

      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_50;
      }

      v43 = *(a8 + 32);

      v44 = v43;
    }

    v45 = v44;

    v46 = v45;
    v15 = v104;
    sub_100E6CCD4(&v103, v46);

LABEL_10:
    ++v17;
  }

  while (v16 != v17);
  v47 = v104[0];
  if ((v104[0] & 0xC000000000000001) == 0)
  {
    a1 = v91;
    if (!*(v104[0] + 16))
    {
      goto LABEL_34;
    }

LABEL_30:
    sub_1012E3B78(v47);

    isa = Set._bridgeToObjectiveC()().super.isa;

    a8 = [a1 selectionPathForInfos:isa];

    v49 = type metadata accessor for CRLBoardItemSelection();
    v50 = [a8 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
    if (v50)
    {
      v51 = v50;
      v52 = swift_dynamicCastClass();
      if (v52)
      {
        v53 = v52;
        v54 = sub_100E944A4(v97);

        sub_1012E3FAC(v54);
        v56 = v55;
        a1 = v91;

        v57 = objc_allocWithZone(v49);
        v58 = sub_100616DB8(v56);
        v16 = [a8 selectionPathReplacingMostSpecificLocationOfSelection:v53 withSelection:v58];

        while (1)
        {

          if (a3)
          {
            goto LABEL_55;
          }

LABEL_39:
          v104[0] = _swiftEmptySetSingleton;
          v15 = [a2 orderedSelections];
          sub_100006370(0, &qword_1019F6CB0);
          a8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v10 = a1;
          if (a8 >> 62)
          {
            a6 = _CocoaArrayWrapper.endIndex.getter();
            if (!a6)
            {
              goto LABEL_57;
            }
          }

          else
          {
            a6 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!a6)
            {
              goto LABEL_57;
            }
          }

          if (a6 >= 1)
          {
            v77 = 0;
            do
            {
              if ((a8 & 0xC000000000000001) != 0)
              {
                v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v78 = *(a8 + 8 * v77 + 32);
              }

              v79 = v78;
              type metadata accessor for CRLBoardItemSelection();
              if (swift_dynamicCastClass())
              {

                sub_1006369C4(v80);
              }

              ++v77;
            }

            while (a6 != v77);
LABEL_57:

            v82 = sub_10119E14C(a5, v104[0]);
            if ((v82 & 0xC000000000000001) != 0)
            {
              v83 = __CocoaSet.count.getter();
            }

            else
            {
              v83 = *(v82 + 16);
            }

            if (v83 >= 1)
            {
              v81 = [a1 selectionPathForInfos:0];
              goto LABEL_62;
            }

            v84 = 0;
            if (a4)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }

LABEL_68:
          __break(1u);
LABEL_69:
          swift_once();
LABEL_37:
          v63 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v64 = swift_initStackObject();
          *(v64 + 16) = v101;
          *(v64 + 56) = &type metadata for Int32;
          *(v64 + 64) = &protocol witness table for Int32;
          *(v64 + 32) = v15;
          v65 = sub_100006370(0, &qword_1019F4D30);
          *(v64 + 96) = v65;
          v66 = sub_1005CF04C();
          *(v64 + 104) = v66;
          *(v64 + 72) = a6;
          *(v64 + 136) = &type metadata for String;
          v67 = sub_1000053B0();
          *(v64 + 112) = v9;
          *(v64 + 120) = v10;
          *(v64 + 176) = &type metadata for UInt;
          *(v64 + 144) = v67;
          *(v64 + 152) = 1201;
          v68 = v103;
          *(v64 + 216) = v65;
          *(v64 + 224) = v66;
          *(v64 + 184) = &protocol witness table for UInt;
          *(v64 + 192) = v68;
          v69 = a6;
          v70 = v68;
          v71 = static os_log_type_t.error.getter();
          sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v72 = static os_log_type_t.error.getter();
          sub_100005404(v63, &_mh_execute_header, v72, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v73 = swift_allocObject();
          v73[2] = 8;
          v73[3] = 0;
          v73[4] = 0;
          v73[5] = 0;
          v74 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v75 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v9 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v76 = String._bridgeToObjectiveC()();

          [v16 handleFailureInFunction:v75 file:v9 lineNumber:1201 isFatal:0 format:v76 args:v74];

          a1 = v91;
          v16 = [v91 selectionPathForInfos:0];
        }
      }
    }

    v16 = objc_opt_self();
    LODWORD(v15) = [v16 _atomicIncrementAssertCount];
    v103 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v103);
    StaticString.description.getter();
    a6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    v61 = [v60 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v62;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_69;
    }

    goto LABEL_37;
  }

  a1 = v91;
  if (__CocoaSet.count.getter())
  {
    goto LABEL_30;
  }

LABEL_34:

  v59 = [a1 selectionPathForInfos:0];
LABEL_54:
  v16 = v59;
  if ((a3 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_55:
  v81 = v16;
LABEL_62:
  v84 = v81;
  if (a4)
  {
LABEL_63:
    v85 = v16;
    v86 = sub_100E944A4(v94);

    sub_1012E3BAC(v86);

    v87 = Set._bridgeToObjectiveC()().super.isa;

    v88 = [a1 selectionPathForInfos:v87];
  }

  else
  {
LABEL_65:
    v85 = [a1 selectionPathForInfos:0];

    v88 = [a1 selectionPathForInfos:0];
  }

  v89 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v84 forwardSelectionPath:v85 reverseSelectionPath:v88];

  return v89;
}

uint64_t sub_1011A6494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_10118D360(v2, v3);
}

void sub_1011A6544()
{
  v1 = *(sub_1005B981C(&qword_101A15A30) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);

  sub_101192FF0(v4, (v0 + v2), v5, v7, v8, v9);
}

uint64_t sub_1011A65F4()
{
  v1 = *(sub_1005B981C(&qword_101A15A30) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);

  return sub_101193908(v0 + v2, v5, v6, v8, v9, v10);
}

uint64_t sub_1011A66AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_10118BB1C(v2, v3);
}

uint64_t sub_1011A6758()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_101187E70(v2, v3);
}

uint64_t sub_1011A681C(uint64_t a1)
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
  v10[1] = sub_10002D4C8;

  return sub_101183904(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1011A6950()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002D4C8;

  return sub_1011831CC(v2, v3);
}

uint64_t sub_1011A69FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D4C8;

  return sub_101180440(v2, v3, v4);
}

uint64_t sub_1011A6AB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10118825C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1011A6B80(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D4C8;

  return sub_101188AE0(a1, a2, v6);
}

uint64_t sub_1011A6C40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10118819C(a1, v4, v5, v6);
}

uint64_t sub_1011A6CF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10117FC98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1011A6DBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10117F598(a1, v4, v5, v6);
}

uint64_t sub_1011A6E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_101199F8C(a1, v4, v5, v6, v7, v8);
}

void sub_1011A6F74()
{
  type metadata accessor for CRLFreehandDrawingIntelligenceProvider.CRLOriginalStrokesWrapper(319);
  if (v0 <= 0x3F)
  {
    sub_1011A7310(319, &qword_101A2BFB8, &type metadata accessor for PKStroke, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1011A7310(319, &unk_101A2BFC0, type metadata accessor for CRLiOSFreehandDrawingStrokeAnimator, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1011A7084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1011A7158(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1011A7214()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1011A7310(319, &unk_101A2C060, &type metadata accessor for UUID, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1011A7310(319, &qword_101A2BFB8, &type metadata accessor for PKStroke, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1011A7310(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1011A73CC()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ListProperties.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ListProperties.version.unsafeMutableAddressor()
{
  if (qword_1019F29F0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ListProperties.version;
}

id static TSContentLanguage.Models.ListProperties.version.getter()
{
  if (qword_1019F29F0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ListProperties.version;

  return v1;
}

uint64_t TSContentLanguage.Models.ListProperties.fontName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t TSContentLanguage.Models.ListProperties.fontName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

__n128 TSContentLanguage.Models.ListProperties.shadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *(a1 + 64) = *(v1 + 128);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 160);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v3;
  result = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = result;
  return result;
}

__n128 TSContentLanguage.Models.ListProperties.shadow.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v2;
  *(v1 + 160) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  result = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = result;
  return result;
}

uint64_t TSContentLanguage.Models.ListProperties.levels.setter(uint64_t a1)
{

  *(v1 + 168) = a1;
  return result;
}

__n128 TSContentLanguage.Models.ListProperties.init(fontColor:fontColorNone:fontName:fontNameNone:writingDirection:shadow:levels:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unsigned __int8 a5@<W4>, unsigned __int8 a6@<W5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = a1[1];
  v42[0] = *a1;
  v42[1] = v10;
  v43 = *(a1 + 32);
  v11 = *a7;
  v12 = a7[1];
  v13 = a7[2];
  v14 = a7[3];
  v15 = a7[4];
  v16 = a7[5];
  v17 = a7[6];
  v18 = a7[7];
  v19 = a7[8];
  v20 = a7[9];
  v21 = a7[10];
  v22 = a7[11];
  v23 = *(a7 + 48);
  v24 = a1[1];
  v31 = *a1;
  v32 = v24;
  LOBYTE(v33) = *(a1 + 32);
  BYTE1(v33) = a2;
  *(&v33 + 1) = a3;
  v34.n128_u64[0] = a4;
  v34.n128_u8[8] = a5;
  v34.n128_u8[9] = a6;
  *&v35 = v11;
  *(&v35 + 1) = v12;
  *&v36 = v13;
  *(&v36 + 1) = v14;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  *&v39 = v19;
  *(&v39 + 1) = v20;
  *&v40 = v21;
  *(&v40 + 1) = v22;
  LOWORD(v41) = v23;
  *(&v41 + 1) = a8;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = v11;
  v50 = v12;
  v51 = v13;
  v52 = v14;
  v53 = v15;
  v54 = v16;
  v55 = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  v62 = a8;
  sub_1011A865C(&v31, &v30);
  sub_1011A8694(v42);
  v25 = v40;
  *(a9 + 128) = v39;
  *(a9 + 144) = v25;
  *(a9 + 160) = v41;
  v26 = v36;
  *(a9 + 64) = v35;
  *(a9 + 80) = v26;
  v27 = v38;
  *(a9 + 96) = v37;
  *(a9 + 112) = v27;
  v28 = v32;
  *a9 = v31;
  *(a9 + 16) = v28;
  result = v34;
  *(a9 + 32) = v33;
  *(a9 + 48) = result;
  return result;
}

uint64_t sub_1011A7740(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      return 0x6C6F635F746E6F66;
    }

    else
    {
      return 0x6D616E5F746E6F66;
    }
  }

  else
  {
    v1 = 0x736C6576656CLL;
    v2 = 0x6564695F65707974;
    if (a1 != 7)
    {
      v2 = 0x6E6F6973726576;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0x776F64616873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1011A787C()
{
  Hasher.init(_seed:)();
  sub_100CB0C7C();
  return Hasher._finalize()();
}

Swift::Int sub_1011A78CC()
{
  Hasher.init(_seed:)();
  sub_100CB0C7C();
  return Hasher._finalize()();
}

unint64_t sub_1011A7910@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011A86C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011A7940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1011A7740(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1011A7988@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011A86C4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011A79B0(uint64_t a1)
{
  v2 = sub_1011A9198();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011A79EC(uint64_t a1)
{
  v2 = sub_1011A9198();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 TSContentLanguage.Models.ListProperties.init(from:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1011A8710(a1, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v5;
    *(a2 + 160) = v9[10];
    v6 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v6;
    v7 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v7;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
    result = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ListProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C0A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011A9198();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v14 = *v3;
  v15 = v9;
  LOBYTE(v16) = *(v3 + 32);
  v21 = 0;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v14) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v14) = *(v3 + 57);
  v21 = 4;
  sub_10114D494();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v11 = v3[9];
  v18 = v3[8];
  v19 = v11;
  v20 = *(v3 + 80);
  v12 = v3[5];
  v14 = v3[4];
  v15 = v12;
  v13 = v3[7];
  v16 = v3[6];
  v17 = v13;
  v21 = 5;
  sub_101144428();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v14 = *(v3 + 21);
  v21 = 6;
  sub_1005B981C(&qword_101A00640);
  sub_1011A91EC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v14) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F29F0 != -1)
  {
    swift_once();
  }

  *&v14 = static TSContentLanguage.Models.ListProperties.version;
  v21 = 8;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ListProperties.isEquivalent(to:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))), xmmword_10148D100)) & 0xF;
    if (v3 == 2 || v4 != 0)
    {
      return 0;
    }

    v6 = a1;
    if (v2)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v3)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v3)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {

      a1 = v6;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a1 = v6;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = *(v1 + 33);
  v14 = *(a1 + 33);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else if (v14 == 2 || ((v13 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v15 = *(v1 + 48);
  v16 = *(a1 + 48);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (*(v1 + 40) != *(a1 + 40) || v15 != v16)
    {
      v17 = a1;
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a1 = v17;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v19 = *(v1 + 56);
  v20 = *(a1 + 56);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  v21 = *(v1 + 57);
  v22 = *(a1 + 57);
  if (v21 == 3)
  {
    if (v22 != 3)
    {
      return 0;
    }

    goto LABEL_62;
  }

  if (v22 == 3)
  {
    return 0;
  }

  v23 = 0xED00007468676972;
  v24 = 0x5F6F745F7466656CLL;
  if (*(v1 + 57))
  {
    if (v21 == 1)
    {
      v25 = 0xE700000000000000;
      v26 = 0x6C61727574616ELL;
    }

    else
    {
      v26 = 0x6F745F7468676972;
      v25 = 0xED00007466656C5FLL;
    }
  }

  else
  {
    v26 = 0x5F6F745F7466656CLL;
    v25 = 0xED00007468676972;
  }

  if (*(a1 + 57))
  {
    if (v22 == 1)
    {
      v23 = 0xE700000000000000;
      v24 = 0x6C61727574616ELL;
    }

    else
    {
      v24 = 0x6F745F7468676972;
      v23 = 0xED00007466656C5FLL;
    }
  }

  v27 = a1;
  if (v26 == v24 && v25 == v23)
  {

    a1 = v27;
    goto LABEL_62;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a1 = v27;
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_62:
  v29 = *(v1 + 128);
  v30 = *(v1 + 144);
  v31 = *(v1 + 96);
  v47 = *(v1 + 112);
  v48 = v29;
  v49 = v30;
  v50 = *(v1 + 160);
  v32 = *(v1 + 80);
  v44 = *(v1 + 64);
  v45 = v32;
  v46 = v31;
  v33 = *(a1 + 80);
  v42[0] = *(a1 + 64);
  v42[1] = v33;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v36 = *(a1 + 128);
  v37 = *(a1 + 144);
  v43 = *(a1 + 160);
  v42[4] = v36;
  v42[5] = v37;
  v42[2] = v34;
  v42[3] = v35;
  v38 = a1;
  if ((sub_1007C73A8(v42) & 1) == 0)
  {
    return 0;
  }

  v39 = *(v1 + 168);
  v40 = *(v38 + 168);

  return sub_100B5EC88(v40, v39);
}

uint64_t sub_1011A81D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v14[8] = a2[8];
  v14[9] = v7;
  v14[10] = a2[10];
  v8 = a2[5];
  v14[4] = a2[4];
  v14[5] = v8;
  v9 = a2[7];
  v14[6] = a2[6];
  v14[7] = v9;
  v10 = a2[1];
  v14[0] = *a2;
  v14[1] = v10;
  v11 = a2[3];
  v14[2] = a2[2];
  v14[3] = v11;
  return _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v13, v14) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_10148D100)) & 0xF;
    if (v3 == 2 || v4 != 0)
    {
      return 0;
    }

    v6 = a1;
    v7 = a2;
    if (v2)
    {
      v8 = 1650946675;
    }

    else
    {
      v8 = 13168;
    }

    if (v2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE200000000000000;
    }

    if (v3)
    {
      v10 = 1650946675;
    }

    else
    {
      v10 = 13168;
    }

    if (v3)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    if (v8 == v10 && v9 == v11)
    {

      a2 = v7;
      a1 = v6;
    }

    else
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v7;
      a1 = v6;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + 33);
  v15 = *(a2 + 33);
  if (v14 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }
  }

  else if (v15 == 2 || ((v15 ^ v14) & 1) != 0)
  {
    return 0;
  }

  v16 = *(a1 + 48);
  v17 = *(a2 + 48);
  if (v16)
  {
    if (!v17)
    {
      return 0;
    }

    if (*(a1 + 40) != *(a2 + 40) || v16 != v17)
    {
      v18 = a1;
      v19 = a2;
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v19;
      v21 = v20;
      a1 = v18;
      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v22 = *(a1 + 56);
  v23 = *(a2 + 56);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v23 ^ v22) & 1) != 0)
  {
    return 0;
  }

  v24 = *(a1 + 57);
  v25 = *(a2 + 57);
  if (v24 == 3)
  {
    if (v25 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v25 == 3)
    {
      return 0;
    }

    v26 = 0xED00007468676972;
    v27 = 0x5F6F745F7466656CLL;
    if (*(a1 + 57))
    {
      if (v24 == 1)
      {
        v28 = 0xE700000000000000;
        v29 = 0x6C61727574616ELL;
      }

      else
      {
        v29 = 0x6F745F7468676972;
        v28 = 0xED00007466656C5FLL;
      }
    }

    else
    {
      v29 = 0x5F6F745F7466656CLL;
      v28 = 0xED00007468676972;
    }

    if (*(a2 + 57))
    {
      if (v25 == 1)
      {
        v26 = 0xE700000000000000;
        v27 = 0x6C61727574616ELL;
      }

      else
      {
        v27 = 0x6F745F7468676972;
        v26 = 0xED00007466656C5FLL;
      }
    }

    v30 = a1;
    v31 = a2;
    if (v29 == v27 && v28 == v26)
    {

      a2 = v31;
      a1 = v30;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v31;
      a1 = v30;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v33 = *(a1 + 160);
  v34 = *(a2 + 160);
  if (v33 == 4)
  {
    if (v34 == 4)
    {
      goto LABEL_64;
    }

    return 0;
  }

  if (v34 == 4)
  {
    return 0;
  }

  if (v33 == 3)
  {
    if (v34 != 3)
    {
      return 0;
    }
  }

  else
  {
    v38 = *(a1 + 112);
    v49[2] = *(a1 + 96);
    v49[3] = v38;
    v39 = *(a1 + 144);
    v49[4] = *(a1 + 128);
    v49[5] = v39;
    v40 = *(a1 + 80);
    v49[0] = *(a1 + 64);
    v49[1] = v40;
    v50 = v33;
    if (v34 == 3)
    {
      return 0;
    }

    v41 = *(a2 + 96);
    v42 = *(a2 + 128);
    v43 = *(a2 + 144);
    v51[3] = *(a2 + 112);
    v51[4] = v42;
    v51[5] = v43;
    v44 = *(a2 + 80);
    v51[0] = *(a2 + 64);
    v51[1] = v44;
    v51[2] = v41;
    v52 = v34;
    v45 = a1;
    v46 = a2;
    v47 = _s8Freeform17TSContentLanguageO6ModelsO14ScaffoldShadowO0eF4TypeV23__derived_struct_equalsySbAI_AItFZ_0(v49, v51);
    a2 = v46;
    v48 = v47;
    a1 = v45;
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_64:
  v35 = *(a1 + 168);
  v36 = *(a2 + 168);

  return sub_100672AD8(v35, v36);
}

unint64_t sub_1011A86C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879628, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011A8710@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v43[-v4];
  v6 = type metadata accessor for CodingUserInfoKey();
  v60 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1005B981C(&qword_101A00648);
  v62 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43[-v10];
  v12 = a1[3];
  v108 = a1;
  sub_100020E58(a1, v12);
  sub_1011A9198();
  v13 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_12;
  }

  v59 = v5;
  v63 = v8;
  v14 = v61;
  LOBYTE(v75) = 7;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v16)
  {
    if (v15 == 0xD00000000000002FLL && v16 == 0x800000010158A970)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v19[1] = 0;
        v19[2] = 0;
        *v19 = 0;
        swift_willThrow();
LABEL_11:
        (*(v62 + 8))(v11, v9);
LABEL_12:
        sub_100005070(v108);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v64) = 8;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v75;
  if (v75)
  {
    if (qword_1019F29F0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ListProperties.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v21[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v22 = xmmword_101463530;
      *(v22 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(v108, v108[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BB98C(0, v23, 0, 0, v106);

  v103 = v106[0];
  v104 = v106[1];
  v105 = v107;
  sub_100020E58(v108, v108[3]);
  v24 = dispatch thunk of Decoder.userInfo.getter();
  v58 = sub_1007BB9B4(1, v24, 0, 0);

  sub_100020E58(v108, v108[3]);
  v25 = dispatch thunk of Decoder.userInfo.getter();
  v26 = sub_1007BB9DC(2, v25, 0, 0);
  v28 = v27;
  v56 = v26;

  v29 = v108[3];
  v57 = v108[4];
  sub_100020E58(v108, v29);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  v55 = sub_1007BB9B4(3, v30, 0, 0);

  v31 = v108[3];
  v57 = v108[4];
  sub_100020E58(v108, v31);
  v32 = dispatch thunk of Decoder.userInfo.getter();
  v53 = sub_1007BBA04(4, v32, 0, 0);

  v33 = v108[3];
  v57 = v108[4];
  sub_100020E58(v108, v33);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v64) = 5;
  sub_1011443D4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v54 = v9;

  v63 = v75;
  v59 = v76;
  v60 = *(&v75 + 1);
  v57 = *(&v76 + 1);
  v51 = v78;
  v52 = v77;
  v49 = v80;
  v50 = v79;
  v47 = v82;
  v48 = v81;
  v45 = v84;
  v46 = v83;
  v44 = v85;
  sub_100020E58(v108, v108[3]);
  v34 = dispatch thunk of Decoder.userInfo.getter();
  v35 = sub_1007C27D0(6u, v34, 0, 0, 0);
  (*(v62 + 8))(v11, v54);

  v64 = v103;
  v65 = v104;
  LOBYTE(v66) = v105;
  v36 = v58;
  BYTE1(v66) = v58;
  *(&v66 + 2) = v101;
  WORD3(v66) = v102;
  v37 = v56;
  *(&v66 + 1) = v56;
  *&v67 = v28;
  LOBYTE(v33) = v55;
  BYTE8(v67) = v55;
  LOBYTE(v34) = v53;
  BYTE9(v67) = v53;
  *(&v67 + 10) = v99;
  HIWORD(v67) = v100;
  *&v68 = v63;
  *(&v68 + 1) = v60;
  *&v69 = v59;
  *(&v69 + 1) = v57;
  *&v70 = v52;
  *(&v70 + 1) = v51;
  *&v71 = v50;
  *(&v71 + 1) = v49;
  *&v72 = v48;
  *(&v72 + 1) = v47;
  *&v73 = v46;
  *(&v73 + 1) = v45;
  LOWORD(v74) = v44;
  *(&v74 + 2) = v97;
  WORD3(v74) = v98;
  *(&v74 + 1) = v35;
  sub_1011A865C(&v64, &v75);
  sub_100005070(v108);
  v75 = v103;
  v76 = v104;
  LOBYTE(v77) = v105;
  BYTE1(v77) = v36;
  *(&v77 + 2) = v101;
  HIWORD(v77) = v102;
  v78 = v37;
  v79 = v28;
  LOBYTE(v80) = v33;
  BYTE1(v80) = v34;
  *(&v80 + 2) = v99;
  HIWORD(v80) = v100;
  v81 = v63;
  v82 = v60;
  v83 = v59;
  v84 = v57;
  v85 = v52;
  v86 = v51;
  v87 = v50;
  v88 = v49;
  v89 = v48;
  v90 = v47;
  v91 = v46;
  v92 = v45;
  v93 = v44;
  v94 = v97;
  v95 = v98;
  v96 = v35;
  result = sub_1011A8694(&v75);
  v38 = v73;
  v14[8] = v72;
  v14[9] = v38;
  v14[10] = v74;
  v39 = v69;
  v14[4] = v68;
  v14[5] = v39;
  v40 = v71;
  v14[6] = v70;
  v14[7] = v40;
  v41 = v65;
  *v14 = v64;
  v14[1] = v41;
  v42 = v67;
  v14[2] = v66;
  v14[3] = v42;
  return result;
}

unint64_t sub_1011A9198()
{
  result = qword_101A2C0A8;
  if (!qword_101A2C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0A8);
  }

  return result;
}

unint64_t sub_1011A91EC()
{
  result = qword_101A2C0B0;
  if (!qword_101A2C0B0)
  {
    sub_1005C4E5C(&qword_101A00640);
    sub_1011A9270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0B0);
  }

  return result;
}

unint64_t sub_1011A9270()
{
  result = qword_101A2C0B8;
  if (!qword_101A2C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0B8);
  }

  return result;
}

unint64_t sub_1011A92C4(uint64_t a1)
{
  result = sub_100B0F9C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011A92EC(void *a1)
{
  a1[2] = sub_10114B154();
  a1[3] = sub_10114AC04();
  result = sub_1011A9324();
  a1[4] = result;
  return result;
}

unint64_t sub_1011A9324()
{
  result = qword_101A2C0C0;
  if (!qword_101A2C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0C0);
  }

  return result;
}

__n128 sub_1011A9378(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1011A93AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1011A93F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1011A9484()
{
  result = qword_101A2C0C8;
  if (!qword_101A2C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0C8);
  }

  return result;
}

unint64_t sub_1011A94DC()
{
  result = qword_101A2C0D0;
  if (!qword_101A2C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0D0);
  }

  return result;
}

unint64_t sub_1011A9534()
{
  result = qword_101A2C0D8;
  if (!qword_101A2C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0D8);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ColumnMetrics.version.unsafeMutableAddressor()
{
  if (qword_1019F29F8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ColumnMetrics.version;
}

uint64_t TSContentLanguage.Models.ColumnMetrics.init<A>(object:)(uint64_t a1, uint64_t a2)
{
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

Swift::Int sub_1011A973C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011A9804()
{
  String.hash(into:)();
}

Swift::Int sub_1011A98B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011A997C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011ABF1C(*a1);
  *a2 = result;
  return result;
}

void sub_1011A99AC(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C61757165;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6C617571656E75;
    v2 = 0xE700000000000000;
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

uint64_t sub_1011A9A30()
{
  v1 = 0x6C61757165;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x6C617571656E75;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1011A9AB0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011ABF1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011A9AD8(uint64_t a1)
{
  v2 = sub_1011AC4F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011A9B14(uint64_t a1)
{
  v2 = sub_1011AC4F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.ColumnMetrics.init(from:)(void *a1)
{
  result = sub_1011ABF68(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ColumnMetrics.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = sub_1005B981C(&qword_101A2C0E0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v19 - v16;
  if (a5)
  {
    if (a5 == 1)
    {
      v19 = v15;
      sub_100020E58(a1, a1[3]);
      sub_1011AC4F4();
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v20 = a2;
      v21 = a3;
      v22 = a4;
      v24 = 1;
      sub_1011AC548();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v5)
      {
        LOBYTE(v20) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F29F8 != -1)
        {
          swift_once();
        }

        v20 = static TSContentLanguage.Models.ColumnMetrics.version;
        v24 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v19 + 8))(v13, v11);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v20, v23);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v20);
    }
  }

  else
  {
    v19 = v15;
    sub_100020E58(a1, a1[3]);
    sub_1011AC4F4();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v20 = a2;
    v21 = a3;
    LOBYTE(v22) = a4 & 1;
    v24 = 0;
    sub_1011AC59C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v5)
    {
      LOBYTE(v20) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F29F8 != -1)
      {
        swift_once();
      }

      v20 = static TSContentLanguage.Models.ColumnMetrics.version;
      v24 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v19 + 8))(v17, v11);
  }
}

uint64_t static TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else if ((a6 & 1) == 0 && *&a2 == *&a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1011AA020@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1011ABF68(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.version.unsafeMutableAddressor()
{
  if (qword_1019F2A00 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.version;
}

uint64_t TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.init(count:gutterWidth:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  if ((a1 - 11) <= 0xFFFFFFFFFFFFFFF5)
  {
    v14 = sub_1005B981C(&qword_101A2C100);
    v15 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v13 = xmmword_1014CE6A0;
    sub_1005B981C(&qword_101A2C110);
    sub_10001A2F8(&qword_101A2C118, &qword_101A2C110);
    v4 = swift_allocError();
    *(v5 + 40) = v3;
    sub_100050F74(&v13, v5);
    v6 = 0xE500000000000000;
    v7 = 0x746E756F63;
LABEL_3:
    swift_willThrow();
    sub_100810B2C();
    v3 = swift_allocError();
    *v8 = v7;
    v8[1] = v6;
    v8[2] = v4;
    swift_willThrow();
    return v3;
  }

  if ((a3 & 1) == 0 && (*&a2 < 0.0 || *&a2 > 75.0))
  {
    v14 = sub_1005B981C(&qword_101A02780);
    v15 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v13 = xmmword_1014CE690;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v4 = swift_allocError();
    *(v11 + 40) = *&a2;
    sub_100050F74(&v13, v11);
    v6 = 0xEB00000000687464;
    v7 = 0x6957726574747567;
    goto LABEL_3;
  }

  return v3;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.validate()()
{
  if ((v0 - 11) <= 0xFFFFFFFFFFFFFFF5)
  {
    v3 = v0;
    v13 = sub_1005B981C(&qword_101A2C100);
    v14 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v12 = xmmword_1014CE6A0;
    sub_1005B981C(&qword_101A2C110);
    sub_10001A2F8(&qword_101A2C118, &qword_101A2C110);
    v4 = swift_allocError();
    *(v5 + 40) = v3;
    sub_100050F74(&v12, v5);
    v6 = 0xE500000000000000;
    v7 = 0x746E756F63;
LABEL_3:
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v8 = v7;
    v8[1] = v6;
    v8[2] = v4;
    swift_willThrow();
    return;
  }

  if ((v2 & 1) == 0 && (v1 < 0.0 || v1 > 75.0))
  {
    v10 = v1;
    v13 = sub_1005B981C(&qword_101A02780);
    v14 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v12 = xmmword_1014CE690;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v4 = swift_allocError();
    *(v11 + 40) = v10;
    sub_100050F74(&v12, v11);
    v6 = 0xEB00000000687464;
    v7 = 0x6957726574747567;
    goto LABEL_3;
  }
}

Swift::Int sub_1011AA608()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011AA6DC()
{
  String.hash(into:)();
}

Swift::Int sub_1011AA79C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011AA86C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011AC5F0(*a1);
  *a2 = result;
  return result;
}

void sub_1011AA89C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x746E756F63;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x775F726574747567;
    v2 = 0xEC00000068746469;
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

uint64_t sub_1011AA92C()
{
  v1 = 0x746E756F63;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x775F726574747567;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1011AA9B8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011AC5F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011AA9E0(uint64_t a1)
{
  v2 = sub_1011ACCB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AAA1C(uint64_t a1)
{
  v2 = sub_1011ACCB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.init(from:)(void *a1)
{
  result = sub_1011AC63C(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1011AAA80(uint64_t result, char a2)
{
  if ((a2 & 1) == 0 && (*&result < 0.0 || *&result > 75.0))
  {
    v12 = v2;
    v13 = v3;
    v5 = result;
    v10 = sub_1005B981C(&qword_101A02780);
    v11 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v9 = xmmword_1014CE690;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v6 = swift_allocError();
    *(v7 + 40) = v5;
    sub_100050F74(&v9, v7);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v8 = 0x6957726574747567;
    v8[1] = 0xEB00000000687464;
    v8[2] = v6;
    *&result = COERCE_DOUBLE(swift_willThrow());
  }

  return result;
}

uint64_t TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a3;
  v5 = sub_1005B981C(&qword_101A2C120);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011ACCB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A00 != -1)
  {
    swift_once();
  }

  v10[1] = static TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.version;
  v11 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.isEquivalent(to:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  if (a6)
  {
    return (a3 & 1) != 0;
  }

  if (a3)
  {
    return 0;
  }

  return sub_1007C87EC(*&a5, *&a2);
}

uint64_t sub_1011AAEB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1011AC63C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1011AAF30(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 8) != *(a2 + 8))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_1011AAF74(uint64_t a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if (*(v1 + 16) == 1)
  {
    return (*(a1 + 16) & 1) != 0;
  }

  if (*(a1 + 16))
  {
    return 0;
  }

  return sub_1007C87EC(*(v1 + 8), *(a1 + 8));
}

uint64_t *TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.version.unsafeMutableAddressor()
{
  if (qword_1019F2A08 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.version;
}

uint64_t TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.init(count:columnWidths:gutterWidths:)(uint64_t a1)
{
  TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.validate()();
  if (v2)
  {
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.validate()()
{
  if ((v0 - 11) > 0xFFFFFFFFFFFFFFF5)
  {
    v8 = v2;
    sub_1011ACD04(v1);
    if (!v3)
    {
      sub_1000BA350(v8);
    }
  }

  else
  {
    v4 = v0;
    v10 = sub_1005B981C(&qword_101A2C100);
    v11 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v9 = xmmword_1014CE6A0;
    sub_1005B981C(&qword_101A2C110);
    sub_10001A2F8(&qword_101A2C118, &qword_101A2C110);
    v5 = swift_allocError();
    *(v6 + 40) = v4;
    sub_100050F74(&v9, v6);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v7 = 0x746E756F63;
    v7[1] = 0xE500000000000000;
    v7[2] = v5;
    swift_willThrow();
  }
}

Swift::Int sub_1011AB24C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011AB350()
{
  String.hash(into:)();
}

Swift::Int sub_1011AB440()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011AB540@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011ACEB4(*a1);
  *a2 = result;
  return result;
}

void sub_1011AB570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x746E756F63;
  v5 = 0x775F726574747567;
  v6 = 0xED00007368746469;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x775F6E6D756C6F63;
    v3 = 0xED00007368746469;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1011AB630()
{
  v1 = *v0;
  v2 = 0x746E756F63;
  v3 = 0x775F726574747567;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x775F6E6D756C6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011AB6EC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011ACEB4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011AB714(uint64_t a1)
{
  v2 = sub_1011AD5D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AB750(uint64_t a1)
{
  v2 = sub_1011AD5D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.init(from:)(void *a1)
{
  result = sub_1011ACF00(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1011AB7B4(uint64_t *a1)
{
  v1 = *a1;
  v9 = sub_1005B981C(&qword_101A2C100);
  v10 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
  v8 = xmmword_1014CE6A0;
  v7[3] = sub_1005B981C(&qword_101A00608);
  v7[4] = sub_10001A2F8(&qword_101A2C1B8, &qword_101A00608);
  v7[0] = v1;
  if ((*(v1 + 16) - 11) >= 0xFFFFFFFFFFFFFFF6)
  {

    sub_100005070(v7);
    return sub_100005070(&v8);
  }

  else
  {
    sub_100852F1C();
    v2 = swift_allocError();
    v4 = v3;
    sub_10000630C(&v8, v3);
    sub_10000630C(v7, v4 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(&v8);
    sub_100810B2C();
    swift_allocError();
    strcpy(v5, "columnWidths");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    *(v5 + 2) = v2;
    return swift_willThrow();
  }
}

uint64_t TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a3;
  v7 = sub_1005B981C(&qword_101A2C130);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_100020E58(a1, a1[3]);
  sub_1011AD5D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = v12;
    v13 = 1;
    sub_1005B981C(&qword_101A00608);
    sub_1011AD62C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = a4;
    v13 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F2A08 != -1)
    {
      swift_once();
    }

    v14 = static TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.version;
    v13 = 4;
    type metadata accessor for TSCLVersion();
    sub_100969804(&qword_101A00458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

BOOL TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 != a1)
  {
    return 0;
  }

  v6 = *(a5 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  v9 = (a5 + 32);
  v10 = (a2 + 32);
  while (v6)
  {
    v11 = *v9++;
    v12 = v11;
    v13 = *v10++;
    --v6;
    if (!sub_1007C87EC(v12, v13))
    {
      return 0;
    }
  }

  if (!a6)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  return sub_100B5EE10(a3, a6);
}

uint64_t sub_1011ABCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1011ACF00(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO13ColumnMetricsO25UnequalColumnsDescriptionV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != a4)
  {
    return 0;
  }

  v6 = *(a2 + 16);
  if (v6 != *(a5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = a2 == a5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_11:
    if (a3)
    {
      if (a6 && (sub_100673058(a3, a6) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  v8 = (a2 + 32);
  v9 = (a5 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO13ColumnMetricsO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 != 1)
    {
      return a8 == 2 && !(a6 | a5 | a7);
    }

    if (a8 != 1)
    {
      return 0;
    }

    if (a1 != a5)
    {
      return 0;
    }

    v8 = *(a2 + 16);
    if (v8 != *(a6 + 16))
    {
      return 0;
    }

    if (v8 && a2 != a6)
    {
      v9 = (a2 + 32);
      v10 = (a6 + 32);
      while (*v9 == *v10)
      {
        ++v9;
        ++v10;
        if (!--v8)
        {
          goto LABEL_11;
        }
      }

      return 0;
    }

LABEL_11:
    if (a3)
    {
      return a7 && (sub_100673058(a3, a7) & 1) != 0;
    }

    if (a7)
    {
      return 0;
    }
  }

  else
  {
    if (a8 || a1 != a5)
    {
      return 0;
    }

    if ((a3 & 1) == 0)
    {
      return (a7 & 1) == 0 && *&a2 == *&a6;
    }

    if ((a7 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1011ABF1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879720, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011ABF68(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00628);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27[-1] - v5;
  sub_100020E58(a1, a1[3]);
  sub_1011AC4F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    LOBYTE(v27[0]) = 2;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v8)
    {
      if (v7 == 0xD00000000000002ELL && v8 == 0x800000010158A690)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          sub_1007C8648();
          swift_allocError();
          v11[1] = 0;
          v11[2] = 0;
          *v11 = 0;
          swift_willThrow();
LABEL_11:
          (*(v4 + 8))(v6, v3);
          goto LABEL_12;
        }
      }
    }

    type metadata accessor for TSCLVersion();
    v28 = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v17 = v27[0];
    if (v27[0])
    {
      if (qword_1019F29F8 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.ColumnMetrics.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v17[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v18 = xmmword_101463530;
        *(v18 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(a1, a1[3]);
    v20 = dispatch thunk of Decoder.userInfo.getter();
    v15 = sub_1007BBA48(0, v20, 0);
    v22 = v21;

    if ((v22 & 0x100) == 0)
    {
      (*(v4 + 8))(v6, v3);
      goto LABEL_13;
    }

    sub_100020E58(a1, a1[3]);
    v23 = dispatch thunk of Decoder.userInfo.getter();
    v15 = sub_1007BBD28(1, v23, 0, 0);
    v25 = v24;
    (*(v4 + 8))(v6, v3);

    if (v25)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_12:
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v27, v27[3]);
  v12 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  if (v12 != 0x656C676E6973 || v13 != 0xE600000000000000)
  {
    v15 = v13;
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_18;
    }

    sub_100005070(v27);
LABEL_25:
    sub_1007C8648();
    swift_allocError();
    *v19 = xmmword_101478600;
    *(v19 + 16) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

LABEL_18:
  sub_100005070(v27);
  v15 = 0;
LABEL_13:
  sub_100005070(a1);
  return v15;
}

unint64_t sub_1011AC4F4()
{
  result = qword_101A2C0E8;
  if (!qword_101A2C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0E8);
  }

  return result;
}

unint64_t sub_1011AC548()
{
  result = qword_101A2C0F0;
  if (!qword_101A2C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0F0);
  }

  return result;
}

unint64_t sub_1011AC59C()
{
  result = qword_101A2C0F8;
  if (!qword_101A2C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C0F8);
  }

  return result;
}

unint64_t sub_1011AC5F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018797A0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011AC63C(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00620);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - v5;
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_1011ACCB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_30;
  }

  LOBYTE(v34) = 2;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD000000000000048 && v9 == 0x800000010158A6C0)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
LABEL_28:
        swift_willThrow();
        goto LABEL_29;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v37) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v34;
  if (v34)
  {
    if (qword_1019F2A00 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ColumnMetrics.EqualColumnsDescription.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v13 = xmmword_101463530;
      *(v13 + 16) = 0;
      swift_willThrow();

LABEL_29:
      (*(v4 + 8))(v6, v3);
LABEL_30:
      sub_100005070(a1);
      return v7;
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v38 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v34))
  {
    v33 = v3;
    v14 = KeyedDecodingContainer.codingPath.getter();
    v7 = *(v14 + 16);
    if (v7)
    {
      v32 = v4;
      v37 = _swiftEmptyArrayStorage;
      sub_100034080(0, v7, 0);
      v15 = v37;
      v16 = v14 + 32;
      do
      {
        sub_10000630C(v16, &v34);
        sub_100020E58(&v34, v35);
        v17 = dispatch thunk of CodingKey.stringValue.getter();
        v19 = v18;
        sub_100005070(&v34);
        v37 = v15;
        v21 = v15[2];
        v20 = v15[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v31 = v17;
          sub_100034080((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v17 = v31;
          v15 = v37;
        }

        v15[2] = v22;
        v23 = &v15[2 * v21];
        v23[4] = v17;
        v23[5] = v19;
        v16 += 40;
        --v7;
      }

      while (v7);

      v4 = v32;
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v28 = 0x746E756F63;
    v28[1] = 0xE500000000000000;
    v28[2] = v15;
    swift_willThrow();
    v3 = v33;
    goto LABEL_28;
  }

  v7 = v34;
  if ((v34 - 11) <= 0xFFFFFFFFFFFFFFF5)
  {
    v35 = sub_1005B981C(&qword_101A2C100);
    v36 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v34 = xmmword_1014CE6A0;
    sub_1005B981C(&qword_101A2C110);
    sub_10001A2F8(&qword_101A2C118, &qword_101A2C110);
    v24 = swift_allocError();
    *(v25 + 40) = v7;
    sub_100050F74(&v34, v25);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v26 = 0x746E756F63;
    v26[1] = 0xE500000000000000;
    v26[2] = v24;
    swift_willThrow();
    goto LABEL_28;
  }

  sub_100020E58(a1, a1[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BC00C(1, v27, sub_1011AABF0, 0);
  (*(v4 + 8))(v6, v3);

  sub_100005070(a1);
  return v7;
}

unint64_t sub_1011ACCB0()
{
  result = qword_101A2C128;
  if (!qword_101A2C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C128);
  }

  return result;
}

uint64_t sub_1011ACD04(uint64_t a1)
{
  v9 = sub_1005B981C(&qword_101A2C100);
  v10 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
  v8 = xmmword_1014CE6A0;
  v7[3] = sub_1005B981C(&qword_101A00608);
  v7[4] = sub_10001A2F8(&qword_101A2C1B8, &qword_101A00608);
  v7[0] = a1;
  if ((*(a1 + 16) - 11) >= 0xFFFFFFFFFFFFFFF6)
  {

    sub_100005070(v7);
    return sub_100005070(&v8);
  }

  else
  {
    sub_100852F1C();
    v2 = swift_allocError();
    v4 = v3;
    sub_10000630C(&v8, v3);
    sub_10000630C(v7, v4 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(&v8);
    sub_100810B2C();
    swift_allocError();
    strcpy(v5, "columnWidths");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    *(v5 + 2) = v2;
    return swift_willThrow();
  }
}

unint64_t sub_1011ACEB4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879820, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011ACF00(void *a1)
{
  v3 = sub_1005B981C(&qword_101A00610);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - v5;
  v7 = a1[3];
  sub_100020E58(a1, v7);
  sub_1011AD5D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_31;
  }

  LOBYTE(v35) = 3;
  v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v9)
  {
    if (v8 == 0xD00000000000004ALL && v9 == 0x800000010158A710)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v11[1] = 0;
        v11[2] = 0;
        *v11 = 0;
LABEL_29:
        swift_willThrow();
        goto LABEL_30;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v38) = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v35;
  if (v35)
  {
    if (qword_1019F2A08 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ColumnMetrics.UnequalColumnsDescription.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v12[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v13 = xmmword_101463530;
      *(v13 + 16) = 0;
      swift_willThrow();

LABEL_30:
      (*(v4 + 8))(v6, v3);
LABEL_31:
      sub_100005070(a1);
      return v7;
    }
  }

  sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v39 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v35))
  {
    v14 = KeyedDecodingContainer.codingPath.getter();
    v7 = *(v14 + 16);
    if (v7)
    {
      v33 = v4;
      v34 = v3;
      v38 = _swiftEmptyArrayStorage;
      sub_100034080(0, v7, 0);
      v15 = v38;
      v16 = v14 + 32;
      do
      {
        sub_10000630C(v16, &v35);
        sub_100020E58(&v35, v36);
        v17 = dispatch thunk of CodingKey.stringValue.getter();
        v19 = v18;
        sub_100005070(&v35);
        v38 = v15;
        v21 = v15[2];
        v20 = v15[3];
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          v32 = v17;
          sub_100034080((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v17 = v32;
          v15 = v38;
        }

        v15[2] = v22;
        v23 = &v15[2 * v21];
        v23[4] = v17;
        v23[5] = v19;
        v16 += 40;
        --v7;
      }

      while (v7);

      v4 = v33;
      v3 = v34;
    }

    else
    {

      v15 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v28 = 0x746E756F63;
    v28[1] = 0xE500000000000000;
    v28[2] = v15;
    goto LABEL_28;
  }

  v7 = v35;
  if ((v35 - 11) <= 0xFFFFFFFFFFFFFFF5)
  {
    v36 = sub_1005B981C(&qword_101A2C100);
    v37 = sub_10001A2F8(&qword_101A2C108, &qword_101A2C100);
    v35 = xmmword_1014CE6A0;
    sub_1005B981C(&qword_101A2C110);
    sub_10001A2F8(&qword_101A2C118, &qword_101A2C110);
    v24 = swift_allocError();
    *(v25 + 40) = v7;
    sub_100050F74(&v35, v25);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v26 = 0x746E756F63;
    v26[1] = 0xE500000000000000;
    v26[2] = v24;
LABEL_28:
    swift_willThrow();
    goto LABEL_29;
  }

  v34 = v3;
  sub_100020E58(a1, a1[3]);
  v27 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007C2D58(1u, v27, sub_1011AB7B4, 0, 0);

  sub_100020E58(a1, a1[3]);
  v30 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007BC034(2, v30, sub_1011AB964, 0);
  (*(v4 + 8))(v6, v34);

  sub_100005070(a1);
  return v7;
}

unint64_t sub_1011AD5D8()
{
  result = qword_101A2C138;
  if (!qword_101A2C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C138);
  }

  return result;
}

unint64_t sub_1011AD62C()
{
  result = qword_101A2C140;
  if (!qword_101A2C140)
  {
    sub_1005C4E5C(&qword_101A00608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C140);
  }

  return result;
}

unint64_t sub_1011AD6A8(uint64_t a1)
{
  *(a1 + 8) = sub_1011AD6D8();
  result = sub_1011AD72C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1011AD6D8()
{
  result = qword_101A2C148;
  if (!qword_101A2C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C148);
  }

  return result;
}

unint64_t sub_1011AD72C()
{
  result = qword_101A2C150;
  if (!qword_101A2C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C150);
  }

  return result;
}

unint64_t sub_1011AD7C0()
{
  result = qword_101A2C158;
  if (!qword_101A2C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C158);
  }

  return result;
}

unint64_t sub_1011AD814(uint64_t a1)
{
  result = sub_100B0FD5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011AD87C()
{
  result = qword_101A2C160;
  if (!qword_101A2C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C160);
  }

  return result;
}

unint64_t sub_1011AD8D0(uint64_t a1)
{
  result = sub_100B0FD08();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1011AD938(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_1011AD98C()
{
  result = qword_101A2C168;
  if (!qword_101A2C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C168);
  }

  return result;
}

unint64_t sub_1011ADA44()
{
  result = qword_101A2C170;
  if (!qword_101A2C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C170);
  }

  return result;
}

unint64_t sub_1011ADA9C()
{
  result = qword_101A2C178;
  if (!qword_101A2C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C178);
  }

  return result;
}

unint64_t sub_1011ADAF4()
{
  result = qword_101A2C180;
  if (!qword_101A2C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C180);
  }

  return result;
}

unint64_t sub_1011ADB4C()
{
  result = qword_101A2C188;
  if (!qword_101A2C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C188);
  }

  return result;
}

unint64_t sub_1011ADBA4()
{
  result = qword_101A2C190;
  if (!qword_101A2C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C190);
  }

  return result;
}

unint64_t sub_1011ADBFC()
{
  result = qword_101A2C198;
  if (!qword_101A2C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C198);
  }

  return result;
}

unint64_t sub_1011ADC54()
{
  result = qword_101A2C1A0;
  if (!qword_101A2C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1A0);
  }

  return result;
}

unint64_t sub_1011ADCAC()
{
  result = qword_101A2C1A8;
  if (!qword_101A2C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1A8);
  }

  return result;
}

unint64_t sub_1011ADD04()
{
  result = qword_101A2C1B0;
  if (!qword_101A2C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1B0);
  }

  return result;
}

id sub_1011ADDD0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Insets.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Insets.version.unsafeMutableAddressor()
{
  if (qword_1019F2A10 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Insets.version;
}

id static TSContentLanguage.Models.Insets.version.getter()
{
  if (qword_1019F2A10 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Insets.version;

  return v1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Insets.validate()()
{
  v4 = v0;
  if (v0 < 0.0 || v0 > 50000000.0)
  {
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v6 = swift_allocError();
    *(v7 + 40) = v4;
    sub_100050F74(&v18, v7);
    swift_willThrow();
    v8 = 0xE300000000000000;
    v9 = 7368564;
LABEL_19:
    sub_100810B2C();
    swift_allocError();
    *v17 = v9;
    v17[1] = v8;
    v17[2] = v6;
    swift_willThrow();
    return;
  }

  if (v1 < 0.0 || v1 > 50000000.0)
  {
    v11 = v1;
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v6 = swift_allocError();
    *(v12 + 40) = v11;
    sub_100050F74(&v18, v12);
    swift_willThrow();
    v8 = 0xE600000000000000;
    v9 = 0x6D6F74746F62;
    goto LABEL_19;
  }

  if (v2 < 0.0 || v2 > 50000000.0)
  {
    v15 = v2;
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v6 = swift_allocError();
    *(v16 + 40) = v15;
    sub_100050F74(&v18, v16);
    swift_willThrow();
    v8 = 0xE400000000000000;
    v9 = 1952867692;
    goto LABEL_19;
  }

  if (v3 < 0.0 || v3 > 50000000.0)
  {
    v13 = v3;
    v19 = sub_1005B981C(&qword_101A02780);
    v20 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v18 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v6 = swift_allocError();
    *(v14 + 40) = v13;
    sub_100050F74(&v18, v14);
    swift_willThrow();
    v8 = 0xE500000000000000;
    v9 = 0x7468676972;
    goto LABEL_19;
  }
}

uint64_t sub_1011AE384()
{
  String.hash(into:)();
}

unint64_t sub_1011AE470@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011AEA28(*a1);
  *a2 = result;
  return result;
}

void sub_1011AE4A0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xE500000000000000;
  v6 = 0x7468676972;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 4)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x6D6F74746F62;
  if (v2 != 1)
  {
    v10 = 1952867692;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1011AE554()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x7468676972;
  v4 = 0x6564695F65707974;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D6F74746F62;
  if (v1 != 1)
  {
    v5 = 1952867692;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1011AE604@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011AEA28(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011AE62C(uint64_t a1)
{
  v2 = sub_1011AFB10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011AE668(uint64_t a1)
{
  v2 = sub_1011AFB10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Insets.encode(to:)(void *a1)
{
  v3 = sub_1005B981C(&qword_101A2C1C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_100020E58(a1, a1[3]);
  sub_1011AFB10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A10 != -1)
  {
    swift_once();
  }

  v8[1] = static TSContentLanguage.Models.Insets.version;
  v9 = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

BOOL static TSContentLanguage.Models.Insets.__derived_struct_equals(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1011AE99C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1011AEA74(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

unint64_t sub_1011AEA28(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018798B8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011AEA74(void *a1)
{
  v2 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v2 - 8);
  v84 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v81 - v5;
  __chkstk_darwin(v6);
  v87 = &v81 - v7;
  __chkstk_darwin(v8);
  v88 = &v81 - v9;
  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = *(v10 - 8);
  v89 = v10;
  v90 = v11;
  __chkstk_darwin(v10);
  v85 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v81 - v14;
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  __chkstk_darwin(v19);
  v21 = &v81 - v20;
  v22 = sub_1005B981C(&qword_101A2C1F0);
  v91 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  sub_100020E58(a1, a1[3]);
  sub_1011AFB10();
  v25 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v28 = a1;
    return sub_100005070(v28);
  }

  v92 = v18;
  v83 = v15;
  LOBYTE(v93) = 4;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v82 = a1;
  if (v27)
  {
    if (v26 == 0xD000000000000026 && v27 == 0x800000010158A940)
    {
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v32[1] = 0;
        v32[2] = 0;
        *v32 = 0;
        swift_willThrow();
LABEL_34:
        (*(v91 + 8))(v24, v22);
        v28 = v82;
        return sub_100005070(v28);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v97 = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33 = v93;
  if (v93)
  {
    if (qword_1019F2A10 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Insets.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v33[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v34 = xmmword_101463530;
      *(v34 + 16) = 0;
      swift_willThrow();

      goto LABEL_34;
    }
  }

  sub_100020E58(v82, v82[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  v97 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v93))
  {
    v36 = 0.0;
  }

  else
  {
    v36 = *&v93;
  }

  if (v36 < 0.0 || v36 > 50000000.0)
  {
    v94 = sub_1005B981C(&qword_101A02780);
    v95 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v93 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v37 = swift_allocError();
    *(v38 + 40) = v36;
    sub_100050F74(&v93, v38);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v39 = 7368564;
    v39[1] = 0xE300000000000000;
    v39[2] = v37;
    swift_willThrow();
    v40 = v88;
    CodingUserInfoKey.init(rawValue:)();
    v41 = v89;
    v42 = v90;
    result = (*(v90 + 48))(v40, 1, v89);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_81;
    }

    (*(v42 + 32))(v21, v40, v41);
    if (*(v35 + 16) && (v43 = sub_1007C8514(v21), (v44 & 1) != 0))
    {
      sub_100064288(*(v35 + 56) + 32 * v43, &v93);
      (*(v42 + 8))(v21, v41);
      if (swift_dynamicCast() && (v96 & 1) != 0)
      {

        goto LABEL_31;
      }
    }

    else
    {
      (*(v42 + 8))(v21, v41);
    }

    swift_willThrow();

    goto LABEL_34;
  }

LABEL_31:
  sub_100020E58(v82, v82[3]);
  v45 = dispatch thunk of Decoder.userInfo.getter();
  v97 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v81 = v22;
  if (BYTE8(v93))
  {
    v46 = 0.0;
  }

  else
  {
    v46 = *&v93;
  }

  if (v46 < 0.0 || v46 > 50000000.0)
  {
    v94 = sub_1005B981C(&qword_101A02780);
    v95 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v93 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v48 = swift_allocError();
    *(v49 + 40) = v46;
    sub_100050F74(&v93, v49);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v50 = 0x6D6F74746F62;
    v50[1] = 0xE600000000000000;
    v50[2] = v48;
    swift_willThrow();
    v51 = v87;
    CodingUserInfoKey.init(rawValue:)();
    v53 = v89;
    v52 = v90;
    result = (*(v90 + 48))(v51, 1, v89);
    if (result != 1)
    {
      v54 = v92;
      (*(v52 + 32))(v92, v51, v53);
      if (*(v45 + 16) && (v55 = sub_1007C8514(v54), (v56 & 1) != 0))
      {
        sub_100064288(*(v45 + 56) + 32 * v55, &v93);
        (*(v90 + 8))(v54, v53);
        v57 = swift_dynamicCast();
        v47 = v91;
        if (v57 && (v96 & 1) != 0)
        {

          goto LABEL_47;
        }
      }

      else
      {
        (*(v90 + 8))(v54, v53);
        v47 = v91;
      }

      swift_willThrow();

      (*(v47 + 8))(v24, v81);
LABEL_79:
      v28 = v82;
      return sub_100005070(v28);
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v47 = v91;
LABEL_47:
  sub_100020E58(v82, v82[3]);
  v58 = dispatch thunk of Decoder.userInfo.getter();
  v97 = 2;
  v92 = v24;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v93))
  {
    v59 = 0.0;
  }

  else
  {
    v59 = *&v93;
  }

  v60 = v86;
  v61 = v83;
  if (v59 < 0.0 || v59 > 50000000.0)
  {
    v94 = sub_1005B981C(&qword_101A02780);
    v95 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v93 = xmmword_1014CEE60;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v62 = swift_allocError();
    *(v63 + 40) = v59;
    sub_100050F74(&v93, v63);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v64 = 1952867692;
    v64[1] = 0xE400000000000000;
    v64[2] = v62;
    swift_willThrow();
    CodingUserInfoKey.init(rawValue:)();
    v66 = v89;
    v65 = v90;
    result = (*(v90 + 48))(v60, 1, v89);
    if (result != 1)
    {
      (*(v65 + 32))(v61, v60, v66);
      if (*(v58 + 16) && (v67 = sub_1007C8514(v61), (v68 & 1) != 0))
      {
        sub_100064288(*(v58 + 56) + 32 * v67, &v93);
        (*(v90 + 8))(v61, v66);
        if (swift_dynamicCast() && (v96 & 1) != 0)
        {

          goto LABEL_62;
        }
      }

      else
      {
        (*(v90 + 8))(v61, v66);
      }

LABEL_78:
      swift_willThrow();

      (*(v47 + 8))(v92, v81);
      goto LABEL_79;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_62:
  sub_100020E58(v82, v82[3]);
  v69 = dispatch thunk of Decoder.userInfo.getter();
  v97 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v93))
  {
    v70 = 0.0;
  }

  else
  {
    v70 = *&v93;
  }

  if (v70 >= 0.0 && v70 <= 50000000.0)
  {

LABEL_76:
    (*(v47 + 8))(v92, v81);
    return sub_100005070(v82);
  }

  v94 = sub_1005B981C(&qword_101A02780);
  v95 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v93 = xmmword_1014CEE60;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v71 = swift_allocError();
  *(v72 + 40) = v70;
  sub_100050F74(&v93, v72);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v73 = 0x7468676972;
  v73[1] = 0xE500000000000000;
  v73[2] = v71;
  swift_willThrow();
  v74 = v84;
  CodingUserInfoKey.init(rawValue:)();
  v76 = v89;
  v75 = v90;
  result = (*(v90 + 48))(v74, 1, v89);
  if (result != 1)
  {
    v77 = *(v75 + 32);
    v78 = v85;
    v77(v85, v74, v76);
    if (*(v69 + 16) && (v79 = sub_1007C8514(v78), v78 = v85, (v80 & 1) != 0))
    {
      sub_100064288(*(v69 + 56) + 32 * v79, &v93);
      (*(v90 + 8))(v78, v76);
      if (swift_dynamicCast() && (v96 & 1) != 0)
      {

        goto LABEL_76;
      }
    }

    else
    {
      (*(v90 + 8))(v78, v76);
    }

    goto LABEL_78;
  }

LABEL_83:
  __break(1u);
  return result;
}

unint64_t sub_1011AFB10()
{
  result = qword_101A2C1C8;
  if (!qword_101A2C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1C8);
  }

  return result;
}

unint64_t sub_1011AFB64(uint64_t a1)
{
  result = sub_100B0FA14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011AFB8C(void *a1)
{
  a1[2] = sub_1007CE968();
  a1[3] = sub_10114D3EC();
  result = sub_1011AFBC4();
  a1[4] = result;
  return result;
}

unint64_t sub_1011AFBC4()
{
  result = qword_101A2C1D0;
  if (!qword_101A2C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1D0);
  }

  return result;
}

unint64_t sub_1011AFC3C()
{
  result = qword_101A2C1D8;
  if (!qword_101A2C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1D8);
  }

  return result;
}

unint64_t sub_1011AFC94()
{
  result = qword_101A2C1E0;
  if (!qword_101A2C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1E0);
  }

  return result;
}

unint64_t sub_1011AFCEC()
{
  result = qword_101A2C1E8;
  if (!qword_101A2C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C1E8);
  }

  return result;
}

Swift::Int sub_1011AFD40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011AFE38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011AFF48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011B0048()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011B015C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011B0284()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011B0380()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1011B0474()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

id sub_1011B05D0()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.ScaffoldListStyle.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.ScaffoldListStyle.version.unsafeMutableAddressor()
{
  if (qword_1019F2A18 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ScaffoldListStyle.version;
}

id static TSContentLanguage.Models.ScaffoldListStyle.version.getter()
{
  if (qword_1019F2A18 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.ScaffoldListStyle.version;

  return v1;
}

double TSContentLanguage.Models.ScaffoldListStyle.init(name:identifier:parent:properties:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  sub_1005BC764(v39);
  v36 = v39[8];
  v37 = v39[9];
  v38 = v39[10];
  v32 = v39[4];
  v33 = v39[5];
  v34 = v39[6];
  v35 = v39[7];
  v28 = v39[0];
  v29 = v39[1];
  v30 = v39[2];
  v31 = v39[3];
  *&v25 = a1;
  *(&v25 + 1) = a2;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  *&v27 = a5;
  *(&v27 + 1) = a6;
  sub_1011B1868(a7, &v28);
  v50 = v35;
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = v34;
  v42 = v27;
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v40 = v25;
  v41 = v26;
  v54[10] = v35;
  v54[11] = v36;
  v54[12] = v37;
  v54[13] = v38;
  v54[6] = v31;
  v54[7] = v32;
  v54[8] = v33;
  v54[9] = v34;
  v54[2] = v27;
  v54[3] = v28;
  v54[4] = v29;
  v54[5] = v30;
  v54[0] = v25;
  v54[1] = v26;
  sub_1011B18D8(&v40, &v24);
  sub_1011B1910(v54);
  v16 = v51;
  a8[10] = v50;
  a8[11] = v16;
  v17 = v53;
  a8[12] = v52;
  a8[13] = v17;
  v18 = v47;
  a8[6] = v46;
  a8[7] = v18;
  v19 = v49;
  a8[8] = v48;
  a8[9] = v19;
  v20 = v43;
  a8[2] = v42;
  a8[3] = v20;
  v21 = v45;
  a8[4] = v44;
  a8[5] = v21;
  result = *&v40;
  v23 = v41;
  *a8 = v40;
  a8[1] = v23;
  return result;
}

unint64_t sub_1011B0898@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011B1940(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1011B08C8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011B1940(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011B08F0(uint64_t a1)
{
  v2 = sub_1011B2530();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B092C(uint64_t a1)
{
  v2 = sub_1011B2530();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ScaffoldListStyle.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1011B198C(a1, v12);
  if (!v2)
  {
    v5 = v12[11];
    a2[10] = v12[10];
    a2[11] = v5;
    v6 = v12[13];
    a2[12] = v12[12];
    a2[13] = v6;
    v7 = v12[7];
    a2[6] = v12[6];
    a2[7] = v7;
    v8 = v12[9];
    a2[8] = v12[8];
    a2[9] = v8;
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    v10 = v12[5];
    a2[4] = v12[4];
    a2[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a2 = v12[0];
    a2[1] = v11;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ScaffoldListStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C1F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1011B2530();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v25) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v25) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v25) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = v3[11];
  v11 = v3[9];
  v43 = v3[10];
  v44 = v10;
  v12 = v3[11];
  v13 = v3[13];
  v45 = v3[12];
  v46 = v13;
  v14 = v3[7];
  v15 = v3[5];
  v39 = v3[6];
  v40 = v14;
  v16 = v3[7];
  v17 = v3[9];
  v41 = v3[8];
  v42 = v17;
  v18 = v3[3];
  v19 = v3[5];
  v37 = v3[4];
  v38 = v19;
  v20 = v3[3];
  v33 = v12;
  v34 = v45;
  v35 = v3[13];
  v36 = v20;
  v29 = v16;
  v30 = v41;
  v31 = v11;
  v32 = v43;
  v25 = v18;
  v26 = v37;
  v27 = v15;
  v28 = v39;
  v24 = 3;
  sub_1011B17F8(&v36, v23);
  sub_10114AC04();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v23[8] = v33;
  v23[9] = v34;
  v23[10] = v35;
  v23[4] = v29;
  v23[5] = v30;
  v23[6] = v31;
  v23[7] = v32;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  sub_10000CAAC(v23, &qword_101A005F0);
  LOBYTE(v22) = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A18 != -1)
  {
    swift_once();
  }

  v22 = static TSContentLanguage.Models.ScaffoldListStyle.version;
  v21[7] = 5;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ScaffoldListStyle.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(a1 + 8);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_29;
    }

    v5 = *v1 == *a1 && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v4)
  {
    goto LABEL_29;
  }

  v6 = *(v1 + 24);
  v7 = *(a1 + 24);
  if (v6)
  {
    if (!v7 || (*(v1 + 16) != *(a1 + 16) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v7)
  {
    goto LABEL_29;
  }

  v8 = *(v1 + 40);
  v9 = *(a1 + 40);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_24;
    }

LABEL_29:
    v54 = 0;
    return v54 & 1;
  }

  if (!v9 || (*(v1 + 32) != *(a1 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_24:
  v10 = *(v1 + 160);
  v11 = *(v1 + 192);
  v121 = *(v1 + 176);
  v122 = v11;
  v12 = *(v1 + 192);
  v123 = *(v1 + 208);
  v13 = *(v1 + 96);
  v14 = *(v1 + 128);
  v117 = *(v1 + 112);
  v118 = v14;
  v15 = *(v1 + 128);
  v16 = *(v1 + 144);
  v17 = v16;
  v120 = *(v1 + 160);
  v119 = v16;
  v18 = *(v1 + 64);
  v116[0] = *(v1 + 48);
  v116[1] = v18;
  v19 = *(v1 + 80);
  v20 = *(v1 + 48);
  v21 = *(v1 + 64);
  v22 = v19;
  v116[3] = *(v1 + 96);
  v116[2] = v19;
  v23 = *(a1 + 160);
  v24 = *(a1 + 192);
  v113 = *(a1 + 176);
  v114 = v24;
  v25 = *(a1 + 192);
  v115 = *(a1 + 208);
  v26 = *(a1 + 96);
  v27 = *(a1 + 128);
  v109 = *(a1 + 112);
  v110 = v27;
  v29 = *(a1 + 128);
  v28 = *(a1 + 144);
  v30 = v28;
  v112 = *(a1 + 160);
  v111 = v28;
  v31 = *(a1 + 64);
  v108[0] = *(a1 + 48);
  v108[1] = v31;
  v32 = *(a1 + 80);
  v34 = *(a1 + 48);
  v33 = *(a1 + 64);
  v35 = v32;
  v108[3] = *(a1 + 96);
  v108[2] = v32;
  v36 = *(v1 + 160);
  v37 = *(v1 + 192);
  __src[8] = *(v1 + 176);
  __src[9] = v37;
  v38 = *(v1 + 96);
  v39 = *(v1 + 128);
  __src[4] = *(v1 + 112);
  __src[5] = v39;
  v40 = *(v1 + 144);
  __src[7] = v36;
  __src[6] = v40;
  v41 = *(v1 + 64);
  __src[0] = *(v1 + 48);
  __src[1] = v41;
  v42 = *(v1 + 80);
  __src[3] = v38;
  __src[2] = v42;
  __src[18] = v23;
  __src[19] = v113;
  v43 = *(a1 + 208);
  __src[20] = v25;
  __src[21] = v43;
  __src[14] = v26;
  __src[15] = v109;
  __src[16] = v29;
  __src[17] = v30;
  __src[10] = *(v1 + 208);
  __src[11] = v34;
  __src[12] = v33;
  __src[13] = v35;
  v107[8] = v121;
  v107[9] = v12;
  v107[10] = *(v1 + 208);
  v107[4] = v117;
  v107[5] = v15;
  v107[7] = v10;
  v107[6] = v17;
  v107[0] = v20;
  v107[1] = v21;
  v107[3] = v13;
  v107[2] = v22;
  if (sub_1007CE118(v107) != 1)
  {
    v55 = *(v1 + 192);
    v102 = *(v1 + 176);
    v103 = v55;
    v104 = *(v1 + 208);
    v56 = *(v1 + 128);
    v98 = *(v1 + 112);
    v99 = v56;
    v57 = *(v1 + 160);
    v100 = *(v1 + 144);
    v101 = v57;
    v58 = *(v1 + 64);
    v94 = *(v1 + 48);
    v95 = v58;
    v59 = *(v1 + 96);
    v96 = *(v1 + 80);
    v97 = v59;
    v60 = *(a1 + 192);
    v105[8] = *(a1 + 176);
    v105[9] = v60;
    v105[10] = *(a1 + 208);
    v61 = *(a1 + 128);
    v105[4] = *(a1 + 112);
    v105[5] = v61;
    v62 = *(a1 + 160);
    v105[6] = *(a1 + 144);
    v105[7] = v62;
    v63 = *(a1 + 64);
    v105[0] = *(a1 + 48);
    v105[1] = v63;
    v64 = *(a1 + 96);
    v105[2] = *(a1 + 80);
    v105[3] = v64;
    if (sub_1007CE118(v105) != 1)
    {
      __dst[8] = v102;
      __dst[9] = v103;
      __dst[10] = v104;
      __dst[4] = v98;
      __dst[5] = v99;
      __dst[6] = v100;
      __dst[7] = v101;
      __dst[0] = v94;
      __dst[1] = v95;
      __dst[2] = v96;
      __dst[3] = v97;
      v66 = *(a1 + 160);
      v67 = *(a1 + 192);
      v89 = *(a1 + 176);
      v90 = v67;
      v68 = *(a1 + 192);
      v91 = *(a1 + 208);
      v69 = *(a1 + 96);
      v70 = *(a1 + 128);
      v85 = *(a1 + 112);
      v86 = v70;
      v71 = *(a1 + 128);
      v72 = *(a1 + 160);
      v87 = *(a1 + 144);
      v88 = v72;
      v73 = *(a1 + 64);
      v82[0] = *(a1 + 48);
      v82[1] = v73;
      v74 = *(a1 + 96);
      v76 = *(a1 + 48);
      v75 = *(a1 + 64);
      v83 = *(a1 + 80);
      v84 = v74;
      v132 = v89;
      v133 = v68;
      v134 = *(a1 + 208);
      v128 = v85;
      v129 = v71;
      v130 = v87;
      v131 = v66;
      v124 = v76;
      v125 = v75;
      v126 = v83;
      v127 = v69;
      sub_1011B17F8(v116, v92);
      sub_1011B17F8(v108, v92);
      sub_1011B17F8(&v94, v92);
      v54 = TSContentLanguage.Models.ListProperties.isEquivalent(to:)(&v124);
      sub_10000CAAC(v82, &qword_101A005F0);
      sub_10000CAAC(&v94, &qword_101A005F0);
      v77 = *(v1 + 192);
      v92[8] = *(v1 + 176);
      v92[9] = v77;
      v92[10] = *(v1 + 208);
      v78 = *(v1 + 128);
      v92[4] = *(v1 + 112);
      v92[5] = v78;
      v79 = *(v1 + 160);
      v92[6] = *(v1 + 144);
      v92[7] = v79;
      v80 = *(v1 + 64);
      v92[0] = *(v1 + 48);
      v92[1] = v80;
      v81 = *(v1 + 96);
      v92[2] = *(v1 + 80);
      v92[3] = v81;
      sub_10000CAAC(v92, &qword_101A005F0);
      return v54 & 1;
    }

    goto LABEL_28;
  }

  v44 = *(a1 + 192);
  __dst[8] = *(a1 + 176);
  __dst[9] = v44;
  __dst[10] = *(a1 + 208);
  v45 = *(a1 + 128);
  __dst[4] = *(a1 + 112);
  __dst[5] = v45;
  v46 = *(a1 + 160);
  __dst[6] = *(a1 + 144);
  __dst[7] = v46;
  v47 = *(a1 + 64);
  __dst[0] = *(a1 + 48);
  __dst[1] = v47;
  v48 = *(a1 + 96);
  __dst[2] = *(a1 + 80);
  __dst[3] = v48;
  if (sub_1007CE118(__dst) != 1)
  {
LABEL_28:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1011B17F8(v116, &v124);
    sub_1011B17F8(v108, &v124);
    sub_10000CAAC(__dst, &qword_101A005F8);
    goto LABEL_29;
  }

  v49 = *(v1 + 192);
  v132 = *(v1 + 176);
  v133 = v49;
  v134 = *(v1 + 208);
  v50 = *(v1 + 128);
  v128 = *(v1 + 112);
  v129 = v50;
  v51 = *(v1 + 160);
  v130 = *(v1 + 144);
  v131 = v51;
  v52 = *(v1 + 64);
  v124 = *(v1 + 48);
  v125 = v52;
  v53 = *(v1 + 96);
  v126 = *(v1 + 80);
  v127 = v53;
  sub_1011B17F8(v116, v105);
  sub_1011B17F8(v108, v105);
  sub_10000CAAC(&v124, &qword_101A005F0);
  v54 = 1;
  return v54 & 1;
}

BOOL sub_1011B12C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[11];
  v17[10] = a1[10];
  v17[11] = v2;
  v3 = a1[13];
  v17[12] = a1[12];
  v17[13] = v3;
  v4 = a1[7];
  v17[6] = a1[6];
  v17[7] = v4;
  v5 = a1[9];
  v17[8] = a1[8];
  v17[9] = v5;
  v6 = a1[3];
  v17[2] = a1[2];
  v17[3] = v6;
  v7 = a1[5];
  v17[4] = a1[4];
  v17[5] = v7;
  v8 = a1[1];
  v17[0] = *a1;
  v17[1] = v8;
  v9 = a2[11];
  v18[10] = a2[10];
  v18[11] = v9;
  v10 = a2[13];
  v18[12] = a2[12];
  v18[13] = v10;
  v11 = a2[7];
  v18[6] = a2[6];
  v18[7] = v11;
  v12 = a2[9];
  v18[8] = a2[8];
  v18[9] = v12;
  v13 = a2[3];
  v18[2] = a2[2];
  v18[3] = v13;
  v14 = a2[5];
  v18[4] = a2[4];
  v18[5] = v14;
  v15 = a2[1];
  v18[0] = *a2;
  v18[1] = v15;
  return _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(v17, v18);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO17ScaffoldListStyleV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  if (v7)
  {
    if (!v8 || (*(a1 + 16) != *(a2 + 16) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10 || (*(a1 + 32) != *(a2 + 32) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 160);
  v12 = *(a1 + 192);
  v109 = *(a1 + 176);
  v110 = v12;
  v13 = *(a1 + 192);
  v111 = *(a1 + 208);
  v14 = *(a1 + 96);
  v15 = *(a1 + 128);
  v105 = *(a1 + 112);
  v106 = v15;
  v16 = *(a1 + 128);
  v17 = *(a1 + 144);
  v18 = v17;
  v108 = *(a1 + 160);
  v107 = v17;
  v19 = *(a1 + 64);
  v104[0] = *(a1 + 48);
  v104[1] = v19;
  v20 = *(a1 + 80);
  v21 = *(a1 + 48);
  v22 = *(a1 + 64);
  v23 = v20;
  v104[3] = *(a1 + 96);
  v104[2] = v20;
  v24 = *(a2 + 160);
  v25 = *(a2 + 192);
  v101 = *(a2 + 176);
  v102 = v25;
  v26 = *(a2 + 192);
  v103 = *(a2 + 208);
  v27 = *(a2 + 96);
  v28 = *(a2 + 128);
  v97 = *(a2 + 112);
  v98 = v28;
  v30 = *(a2 + 128);
  v29 = *(a2 + 144);
  v31 = v29;
  v100 = *(a2 + 160);
  v99 = v29;
  v32 = *(a2 + 64);
  v96[0] = *(a2 + 48);
  v96[1] = v32;
  v33 = *(a2 + 80);
  v35 = *(a2 + 48);
  v34 = *(a2 + 64);
  v36 = v33;
  v96[3] = *(a2 + 96);
  v96[2] = v33;
  v37 = *(a1 + 160);
  v38 = *(a1 + 192);
  __src[8] = *(a1 + 176);
  __src[9] = v38;
  v39 = *(a1 + 96);
  v40 = *(a1 + 128);
  __src[4] = *(a1 + 112);
  __src[5] = v40;
  __src[6] = *(a1 + 144);
  __src[7] = v37;
  v41 = *(a1 + 64);
  __src[0] = *(a1 + 48);
  __src[1] = v41;
  __src[2] = *(a1 + 80);
  __src[3] = v39;
  __src[18] = v24;
  __src[19] = v101;
  v42 = *(a2 + 208);
  __src[20] = v26;
  __src[21] = v42;
  __src[14] = v27;
  __src[15] = v97;
  __src[16] = v30;
  __src[17] = v31;
  __src[10] = *(a1 + 208);
  __src[11] = v35;
  __src[12] = v34;
  __src[13] = v36;
  v95[8] = v109;
  v95[9] = v13;
  v95[10] = *(a1 + 208);
  v95[4] = v105;
  v95[5] = v16;
  v95[7] = v11;
  v95[6] = v18;
  v95[0] = v21;
  v95[1] = v22;
  v95[3] = v14;
  v95[2] = v23;
  if (sub_1007CE118(v95) != 1)
  {
    v53 = *(a2 + 192);
    v92[8] = *(a2 + 176);
    v92[9] = v53;
    v92[10] = *(a2 + 208);
    v54 = *(a2 + 128);
    v92[4] = *(a2 + 112);
    v92[5] = v54;
    v55 = *(a2 + 160);
    v92[6] = *(a2 + 144);
    v92[7] = v55;
    v56 = *(a2 + 64);
    v92[0] = *(a2 + 48);
    v92[1] = v56;
    v57 = *(a2 + 96);
    v92[2] = *(a2 + 80);
    v92[3] = v57;
    if (sub_1007CE118(v92) == 1)
    {
      goto LABEL_28;
    }

    v59 = *(a2 + 160);
    v60 = *(a2 + 192);
    v88 = *(a2 + 176);
    v89 = v60;
    v61 = *(a2 + 192);
    v90 = *(a2 + 208);
    v62 = *(a2 + 96);
    v63 = *(a2 + 128);
    v84 = *(a2 + 112);
    v85 = v63;
    v64 = *(a2 + 128);
    v65 = *(a2 + 160);
    v86 = *(a2 + 144);
    v87 = v65;
    v66 = *(a2 + 64);
    v81[0] = *(a2 + 48);
    v81[1] = v66;
    v67 = *(a2 + 96);
    v69 = *(a2 + 48);
    v68 = *(a2 + 64);
    v82 = *(a2 + 80);
    v83 = v67;
    __dst[8] = v88;
    __dst[9] = v61;
    __dst[10] = *(a2 + 208);
    __dst[4] = v84;
    __dst[5] = v64;
    __dst[6] = v86;
    __dst[7] = v59;
    __dst[0] = v69;
    __dst[1] = v68;
    __dst[2] = v82;
    __dst[3] = v62;
    v70 = *(a1 + 192);
    v120 = *(a1 + 176);
    v121 = v70;
    v122 = *(a1 + 208);
    v71 = *(a1 + 128);
    v116 = *(a1 + 112);
    v117 = v71;
    v72 = *(a1 + 160);
    v118 = *(a1 + 144);
    v119 = v72;
    v73 = *(a1 + 64);
    v112 = *(a1 + 48);
    v113 = v73;
    v74 = *(a1 + 96);
    v114 = *(a1 + 80);
    v115 = v74;
    sub_1011B17F8(v104, v91);
    sub_1011B17F8(v96, v91);
    v75 = _s8Freeform17TSContentLanguageO6ModelsO14ListPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(&v112, __dst);
    sub_10000CAAC(v81, &qword_101A005F0);
    v76 = *(a1 + 192);
    v91[8] = *(a1 + 176);
    v91[9] = v76;
    v91[10] = *(a1 + 208);
    v77 = *(a1 + 128);
    v91[4] = *(a1 + 112);
    v91[5] = v77;
    v78 = *(a1 + 160);
    v91[6] = *(a1 + 144);
    v91[7] = v78;
    v79 = *(a1 + 64);
    v91[0] = *(a1 + 48);
    v91[1] = v79;
    v80 = *(a1 + 96);
    v91[2] = *(a1 + 80);
    v91[3] = v80;
    sub_10000CAAC(v91, &qword_101A005F0);
    return (v75 & 1) != 0;
  }

  v43 = *(a2 + 192);
  __dst[8] = *(a2 + 176);
  __dst[9] = v43;
  __dst[10] = *(a2 + 208);
  v44 = *(a2 + 128);
  __dst[4] = *(a2 + 112);
  __dst[5] = v44;
  v45 = *(a2 + 160);
  __dst[6] = *(a2 + 144);
  __dst[7] = v45;
  v46 = *(a2 + 64);
  __dst[0] = *(a2 + 48);
  __dst[1] = v46;
  v47 = *(a2 + 96);
  __dst[2] = *(a2 + 80);
  __dst[3] = v47;
  if (sub_1007CE118(__dst) != 1)
  {
LABEL_28:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1011B17F8(v104, &v112);
    sub_1011B17F8(v96, &v112);
    sub_10000CAAC(__dst, &qword_101A005F8);
    return 0;
  }

  v48 = *(a1 + 192);
  v120 = *(a1 + 176);
  v121 = v48;
  v122 = *(a1 + 208);
  v49 = *(a1 + 128);
  v116 = *(a1 + 112);
  v117 = v49;
  v50 = *(a1 + 160);
  v118 = *(a1 + 144);
  v119 = v50;
  v51 = *(a1 + 64);
  v112 = *(a1 + 48);
  v113 = v51;
  v52 = *(a1 + 96);
  v114 = *(a1 + 80);
  v115 = v52;
  sub_1011B17F8(v104, v92);
  sub_1011B17F8(v96, v92);
  sub_10000CAAC(&v112, &qword_101A005F0);
  return 1;
}

uint64_t sub_1011B17F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A005F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1011B1868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A005F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1011B1940(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101879968, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1011B198C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v57 = &v49 - v4;
  v5 = type metadata accessor for CodingUserInfoKey();
  v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A00600);
  v59 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  sub_1005BC764(&v122);
  v120 = v131;
  v121 = v132;
  v115 = v126;
  v116 = v127;
  v118 = v129;
  v119 = v130;
  v117 = v128;
  v111 = v122;
  v112 = v123;
  v113 = v124;
  v114 = v125;
  v11 = a1;
  sub_100020E58(a1, a1[3]);
  sub_1011B2530();
  v12 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_11;
  }

  v60 = v7;
  LOBYTE(v97) = 4;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15 = v10;
  if (v14)
  {
    if (v13 == 0xD000000000000033 && v14 == 0x800000010158A3F0)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v18[1] = 0;
        v18[2] = 0;
        *v18 = 0;
        swift_willThrow();
        (*(v59 + 8))(v15, v8);
LABEL_11:
        sub_100005070(a1);
        v97 = 0uLL;
        v98 = 0uLL;
        v99 = 0uLL;
        v108 = v119;
        v109 = v120;
        v110 = v121;
        v104 = v115;
        v105 = v116;
        v106 = v117;
        v107 = v118;
        v100 = v111;
        v101 = v112;
        v102 = v113;
        v103 = v114;
        return sub_1011B1910(&v97);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v72) = 5;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v97;
  if (v97)
  {
    if (qword_1019F2A18 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.ScaffoldListStyle.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v20[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v21 = xmmword_101463530;
      *(v21 + 16) = 0;
      swift_willThrow();

      (*(v59 + 8))(v15, v8);
      goto LABEL_11;
    }

    v55 = v8;
  }

  else
  {
    v55 = v8;
  }

  sub_100020E58(a1, a1[3]);
  v22 = dispatch thunk of Decoder.userInfo.getter();
  v23 = sub_1007BC320(0, v22, 0, 0);
  v25 = v24;
  v54 = v23;

  sub_100020E58(a1, a1[3]);
  v26 = dispatch thunk of Decoder.userInfo.getter();
  v27 = sub_1007BC320(1, v26, 0, 0);
  v52 = v28;
  v53 = v27;

  sub_100020E58(a1, a1[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  v30 = sub_1007BC320(2, v29, 0, 0);
  v49 = v31;
  v51 = v30;

  v32 = a1[3];
  v50 = a1[4];
  sub_100020E58(a1, v32);
  v50 = dispatch thunk of Decoder.userInfo.getter();
  v133 = 3;
  sub_10114B154();
  v33 = v55;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v80 = v105;
  v81 = v106;
  v82 = v107;
  v76 = v101;
  v77 = v102;
  v78 = v103;
  v79 = v104;
  v72 = v97;
  v73 = v98;
  v74 = v99;
  v75 = v100;
  v34 = sub_1007CE118(&v72);
  v35 = (v59 + 8);
  if (v34 == 1)
  {

    (*v35)(v15, v33);
    v69 = v105;
    v70 = v106;
    v71 = v107;
    v65 = v101;
    v66 = v102;
    v67 = v103;
    v68 = v104;
    v61 = v97;
    v62 = v98;
    v63 = v99;
    v64 = v100;
    sub_10000CAAC(&v61, &qword_101A005F0);
    v94 = v130;
    v95 = v131;
    v96 = v132;
    v90 = v126;
    v91 = v127;
    v92 = v128;
    v93 = v129;
    v86 = v122;
    v87 = v123;
    v88 = v124;
    v89 = v125;
  }

  else
  {

    v94 = v105;
    v95 = v106;
    v96 = v107;
    v90 = v101;
    v91 = v102;
    v92 = v103;
    v93 = v104;
    v86 = v97;
    v87 = v98;
    v88 = v99;
    v89 = v100;
    (*v35)(v15, v33);
  }

  v36 = v56;
  v37 = v54;
  v39 = v52;
  v38 = v53;
  v40 = v51;
  v69 = v119;
  v70 = v120;
  v71 = v121;
  v65 = v115;
  v66 = v116;
  v67 = v117;
  v68 = v118;
  v61 = v111;
  v62 = v112;
  v63 = v113;
  v64 = v114;
  sub_10000CAAC(&v61, &qword_101A005F0);
  *&v72 = v37;
  *(&v72 + 1) = v25;
  *&v73 = v38;
  *(&v73 + 1) = v39;
  *&v74 = v40;
  v41 = v49;
  *(&v74 + 1) = v49;
  v83 = v94;
  v84 = v95;
  v85 = v96;
  v79 = v90;
  v80 = v91;
  v81 = v92;
  v82 = v93;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  sub_1011B18D8(&v72, &v97);
  sub_100005070(v11);
  *&v97 = v37;
  *(&v97 + 1) = v25;
  *&v98 = v38;
  *(&v98 + 1) = v39;
  *&v99 = v51;
  *(&v99 + 1) = v41;
  v108 = v94;
  v109 = v95;
  v110 = v96;
  v104 = v90;
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v100 = v86;
  v101 = v87;
  v102 = v88;
  v103 = v89;
  result = sub_1011B1910(&v97);
  v42 = v83;
  v36[10] = v82;
  v36[11] = v42;
  v43 = v85;
  v36[12] = v84;
  v36[13] = v43;
  v44 = v79;
  v36[6] = v78;
  v36[7] = v44;
  v45 = v81;
  v36[8] = v80;
  v36[9] = v45;
  v46 = v75;
  v36[2] = v74;
  v36[3] = v46;
  v47 = v77;
  v36[4] = v76;
  v36[5] = v47;
  v48 = v73;
  *v36 = v72;
  v36[1] = v48;
  return result;
}

unint64_t sub_1011B2530()
{
  result = qword_101A2C200;
  if (!qword_101A2C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C200);
  }

  return result;
}

unint64_t sub_1011B2584(uint64_t a1)
{
  result = sub_100B100A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1011B25AC(void *a1)
{
  a1[2] = sub_10114B1A8();
  a1[3] = sub_10114ABB0();
  result = sub_1011B25E4();
  a1[4] = result;
  return result;
}

unint64_t sub_1011B25E4()
{
  result = qword_101A2C208;
  if (!qword_101A2C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C208);
  }

  return result;
}

__n128 sub_1011B2638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1011B2674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1011B26D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1011B2780()
{
  result = qword_101A2C210;
  if (!qword_101A2C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C210);
  }

  return result;
}

unint64_t sub_1011B27D8()
{
  result = qword_101A2C218;
  if (!qword_101A2C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C218);
  }

  return result;
}

unint64_t sub_1011B2830()
{
  result = qword_101A2C220;
  if (!qword_101A2C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2C220);
  }

  return result;
}

uint64_t *TSContentLanguage.Models.ParagraphProperties.version.unsafeMutableAddressor()
{
  if (qword_1019F2A20 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ParagraphProperties.version;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.decimalTab.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.defaultTabs.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.fill.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.fill.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.firstLineIndent.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.followingStyle.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.followingStyle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.listStyle.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.listStyle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.leftIndent.setter(uint64_t result, char a2)
{
  *(v2 + 328) = result;
  *(v2 + 336) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.lineSpacing.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.outlineLevel.setter(uint64_t result, char a2)
{
  *(v2 + 360) = result;
  *(v2 + 368) = a2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.borders.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 424);
  *(a1 + 32) = *(v1 + 408);
  *(a1 + 48) = v2;
  v3 = *(v1 + 456);
  *(a1 + 64) = *(v1 + 440);
  *(a1 + 80) = v3;
  result = *(v1 + 376);
  v5 = *(v1 + 392);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.borders.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 408) = *(a1 + 32);
  *(v1 + 424) = v2;
  v3 = *(a1 + 80);
  *(v1 + 440) = *(a1 + 64);
  *(v1 + 456) = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 376) = *a1;
  *(v1 + 392) = v5;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.rightIndent.setter(uint64_t result, char a2)
{
  *(v2 + 472) = result;
  *(v2 + 480) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.spaceAfter.setter(uint64_t result, char a2)
{
  *(v2 + 488) = result;
  *(v2 + 496) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.spaceBefore.setter(uint64_t result, char a2)
{
  *(v2 + 504) = result;
  *(v2 + 512) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.tabs.setter(uint64_t a1)
{

  *(v1 + 520) = a1;
  return result;
}

void *TSContentLanguage.Models.ParagraphProperties.init(alignment:decimalTab:defaultTabs:fill:fillNone:firstLineIndent:followingStyle:followingStyleNone:hyphenate:listStyle:listStyleNone:listProperties:keepLinesTogether:keepWithNext:leftIndent:lineSpacing:outlineLevel:outlineStyle:startOnNewPage:borders:rightIndent:spaceAfter:spaceBefore:tabs:preventWidow:showInBookmarks:showInTOCNavigator:characterProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, __int16 a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, __int16 a17, uint64_t a18, char a19, __int128 a20, uint64_t a21, int a22, _OWORD *a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, int a31, uint64_t a32)
{
  __chkstk_darwin(a1);
  v53 = v32;
  v52 = v33;
  v35 = v34;
  v51 = v36;
  v50 = v37;
  v49 = v38;
  v48 = v39;
  v47 = v40;
  __dst = v41;
  sub_1005BC764(v57);
  *&v56[272] = v57[8];
  *&v56[288] = v57[9];
  *&v56[304] = v57[10];
  *&v56[208] = v57[4];
  *&v56[224] = v57[5];
  *&v56[240] = v57[6];
  *&v56[256] = v57[7];
  *&v56[144] = v57[0];
  *&v56[160] = v57[1];
  *&v56[176] = v57[2];
  *&v56[192] = v57[3];
  memset(&v56[376], 0, 32);
  memset(&v56[416], 0, 56);
  *&v56[408] = 0xFFFFFFFD00;
  sub_1005BC71C(__src);
  memcpy(&v56[536], __src, 0x37CuLL);
  v42 = *(v35 + 16);
  *&v56[40] = *v35;
  v56[0] = v47;
  *&v56[8] = v48;
  *&v56[16] = v49;
  *&v56[24] = v50;
  v56[32] = v51 & 1;
  *&v56[56] = v42;
  v56[72] = *(v35 + 32);
  v56[73] = v52;
  *&v56[80] = v53;
  v56[88] = a9 & 1;
  *&v56[96] = a10;
  *&v56[104] = a11;
  *&v56[112] = a12;
  *&v56[120] = a13;
  *&v56[128] = a14;
  v56[136] = a15;
  sub_10002C638(a16, &v56[144], &qword_101A005F0);
  *&v56[320] = a17;
  *&v56[328] = a18;
  v56[336] = a19 & 1;
  *&v56[344] = a20;
  *&v56[360] = a21;
  v56[368] = a22 & 1;
  *&v56[369] = *(&a22 + 1);
  v43 = a23[3];
  *&v56[408] = a23[2];
  *&v56[424] = v43;
  v44 = a23[5];
  *&v56[440] = a23[4];
  *&v56[456] = v44;
  v45 = a23[1];
  *&v56[376] = *a23;
  *&v56[392] = v45;
  *&v56[472] = a24;
  v56[480] = a25 & 1;
  *&v56[488] = a26;
  v56[496] = a27 & 1;
  *&v56[504] = a28;
  v56[512] = a29 & 1;
  *&v56[520] = a30;
  v56[528] = a31;
  *&v56[529] = *(&a31 + 1);
  sub_10002C638(a32, &v56[536], &qword_101A006A0);
  memcpy(v59, v56, 0x594uLL);
  memcpy(v60, v56, 0x594uLL);
  sub_1011B78B4(v59, v55);
  sub_1011B78EC(v60);
  return memcpy(__dst, v59, 0x594uLL);
}

unint64_t sub_1011B3290(char a1)
{
  result = 0x6E656D6E67696C61;
  switch(a1)
  {
    case 1:
      result = 0x5F6C616D69636564;
      break;
    case 2:
      result = 0x5F746C7561666564;
      break;
    case 3:
      result = 1819044198;
      break;
    case 4:
      result = 0x6E6F6E5F6C6C6966;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6E69776F6C6C6F66;
      break;
    case 7:
    case 26:
    case 27:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x74616E6568707968;
      break;
    case 9:
    case 10:
      result = 0x7974735F7473696CLL;
      break;
    case 11:
      result = 0x6F72705F7473696CLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7469775F7065656BLL;
      break;
    case 14:
      result = 0x646E695F7466656CLL;
      break;
    case 15:
      result = 0x6170735F656E696CLL;
      break;
    case 16:
    case 17:
      result = 0x5F656E696C74756FLL;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x73726564726F62;
      break;
    case 20:
      result = 0x6E695F7468676972;
      break;
    case 21:
      result = 0x66615F6563617073;
      break;
    case 22:
      result = 0x65625F6563617073;
      break;
    case 23:
      result = 1935827316;
      break;
    case 24:
      result = 0x5F746E6576657270;
      break;
    case 25:
      result = 0xD000000000000011;
      break;
    case 28:
      result = 0x6564695F65707974;
      break;
    case 29:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1011B35E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1011B3290(*a1);
  v5 = v4;
  if (v3 == sub_1011B3290(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1011B3670()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011B3290(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011B36D4()
{
  sub_1011B3290(*v0);
  String.hash(into:)();
}

Swift::Int sub_1011B3728()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011B3290(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011B3788@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1011B791C();
  *a1 = result;
  return result;
}

unint64_t sub_1011B37B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1011B3290(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1011B37EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1011B791C();
  *a1 = result;
  return result;
}

uint64_t sub_1011B3820(uint64_t a1)
{
  v2 = sub_1011BA450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B385C(uint64_t a1)
{
  v2 = sub_1011BA450();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.ParagraphProperties.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1011B7970(a1);
  if (!v2)
  {
    return memcpy(a2, __src, 0x594uLL);
  }

  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C228);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-v7];
  sub_100020E58(a1, a1[3]);
  sub_1011BA450();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27[0]) = *v3;
  v26[0] = 0;
  sub_1011BA4A4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v27[0]) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v10 = *(v3 + 56);
  v27[0] = *(v3 + 40);
  v27[1] = v10;
  LOBYTE(v27[2]) = *(v3 + 72);
  v26[0] = 3;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v27[0]) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11 = *(v3 + 240);
  v42[7] = *(v3 + 256);
  v12 = *(v3 + 256);
  v42[8] = *(v3 + 272);
  v13 = *(v3 + 272);
  v42[9] = *(v3 + 288);
  v14 = *(v3 + 288);
  v42[10] = *(v3 + 304);
  v15 = *(v3 + 176);
  v42[3] = *(v3 + 192);
  v16 = *(v3 + 192);
  v42[4] = *(v3 + 208);
  v17 = *(v3 + 208);
  v42[5] = *(v3 + 224);
  v18 = *(v3 + 224);
  v42[6] = *(v3 + 240);
  v19 = *(v3 + 160);
  v42[0] = *(v3 + 144);
  v20 = *(v3 + 144);
  v42[1] = *(v3 + 160);
  v42[2] = *(v3 + 176);
  v37 = v12;
  v38 = v13;
  v39 = v14;
  v40 = *(v3 + 304);
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v11;
  v30 = v20;
  v31 = v19;
  v32 = v15;
  v29 = 11;
  sub_10000BE14(v42, v27, &qword_101A005F0);
  sub_10114AC04();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v28[7] = v37;
  v28[8] = v38;
  v28[9] = v39;
  v28[10] = v40;
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  sub_10000CAAC(v28, &qword_101A005F0);
  LOBYTE(v27[0]) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 13;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 14;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v27[0] = *(v3 + 344);
  v26[0] = 15;
  sub_101151058();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v27[0]) = 16;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = *(v3 + 369);
  v26[0] = 17;
  sub_1011BA4F8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v27[0]) = 18;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = *(v3 + 424);
  v27[2] = *(v3 + 408);
  v27[3] = v21;
  v22 = *(v3 + 456);
  v27[4] = *(v3 + 440);
  v27[5] = v22;
  v23 = *(v3 + 392);
  v27[0] = *(v3 + 376);
  v27[1] = v23;
  v26[0] = 19;
  sub_1011BA54C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v27[0]) = 20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 21;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 22;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v27[0] = *(v3 + 520);
  v26[0] = 23;
  sub_1005B981C(&qword_101A005B0);
  sub_1011BA5A0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v27[0]) = 24;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 25;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v27[0]) = 26;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  memcpy(v41, (v3 + 536), 0x37CuLL);
  memcpy(v27, (v3 + 536), 0x37CuLL);
  v26[895] = 27;
  sub_10000BE14(v41, v26, &qword_101A006A0);
  sub_10115CE3C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v26, v27, 0x37CuLL);
  sub_10000CAAC(v26, &qword_101A006A0);
  LOBYTE(v25) = 28;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A20 != -1)
  {
    swift_once();
  }

  v25 = static TSContentLanguage.Models.ParagraphProperties.version;
  v24[7] = 29;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ParagraphProperties.isEquivalent(to:)(unsigned __int8 *a1)
{
  v3 = *v1;
  v4 = *a1;
  if (v3 == 5)
  {
    if (v4 != 5)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (v4 == 5)
    {
      goto LABEL_193;
    }

    v5 = 0x7265746E6563;
    if (*v1 <= 1u)
    {
      if (*v1)
      {
        v6 = 0x7966697473756ALL;
      }

      else
      {
        v6 = 0x7265746E6563;
      }

      if (*v1)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }
    }

    else if (v3 == 2)
    {
      v7 = 0xE400000000000000;
      v6 = 1952867692;
    }

    else
    {
      if (v3 == 3)
      {
        v6 = 0x6C61727574616ELL;
      }

      else
      {
        v6 = 0x7468676972;
      }

      if (v3 == 3)
      {
        v7 = 0xE700000000000000;
      }

      else
      {
        v7 = 0xE500000000000000;
      }
    }

    v8 = 0xE600000000000000;
    v9 = 0xE400000000000000;
    v10 = 1952867692;
    v11 = 0xE700000000000000;
    v12 = 0x6C61727574616ELL;
    if (v4 != 3)
    {
      v12 = 0x7468676972;
      v11 = 0xE500000000000000;
    }

    if (v4 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (v4)
    {
      v5 = 0x7966697473756ALL;
      v8 = 0xE700000000000000;
    }

    if (v4 <= 1)
    {
      v13 = v5;
    }

    else
    {
      v13 = v10;
    }

    if (v4 <= 1)
    {
      v14 = v8;
    }

    else
    {
      v14 = v9;
    }

    if (v6 == v13 && v7 == v14)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        goto LABEL_193;
      }
    }
  }

  v16 = *(v1 + 2);
  v17 = *(a1 + 2);
  if (v16)
  {
    if (!v17 || (*(v1 + 1) != *(a1 + 1) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else if (v17)
  {
    goto LABEL_193;
  }

  if (v1[32] == 1)
  {
    if ((a1[32] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[32])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 3), *(a1 + 3));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  v19 = v1[72];
  v20 = a1[72];
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_193;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    if (v20 == 2 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 40), *(a1 + 40)), vceqq_f64(*(v1 + 56), *(a1 + 56))), xmmword_10148D100)) & 0xF) != 0)
    {
      return v18 & 1;
    }

    if (v19)
    {
      v21 = 1650946675;
    }

    else
    {
      v21 = 13168;
    }

    if (v19)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    if (v20)
    {
      v23 = 1650946675;
    }

    else
    {
      v23 = 13168;
    }

    if (v20)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE200000000000000;
    }

    if (v21 == v23 && v22 == v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_193;
      }
    }
  }

  v26 = v1[73];
  v27 = a1[73];
  if (v26 == 2)
  {
    if (v27 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v27 == 2 || ((v26 ^ v27) & 1) != 0)
  {
    goto LABEL_193;
  }

  if (v1[88] == 1)
  {
    if ((a1[88] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[88])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 10), *(a1 + 10));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  v28 = *(v1 + 13);
  v29 = *(a1 + 13);
  if (v28)
  {
    if (!v29 || (*(v1 + 12) != *(a1 + 12) || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else if (v29)
  {
    goto LABEL_193;
  }

  v30 = v1[112];
  v31 = a1[112];
  if (v30 == 2)
  {
    if (v31 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v31 == 2 || ((v30 ^ v31) & 1) != 0)
  {
    goto LABEL_193;
  }

  v32 = v1[113];
  v33 = a1[113];
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
  {
    goto LABEL_193;
  }

  v34 = *(v1 + 16);
  v35 = *(a1 + 16);
  if (v34)
  {
    if (!v35 || (*(v1 + 15) != *(a1 + 15) || v34 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else if (v35)
  {
    goto LABEL_193;
  }

  v36 = v1[136];
  v37 = a1[136];
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    goto LABEL_193;
  }

  v38 = *(v1 + 17);
  v39 = *(v1 + 18);
  v40 = *(v1 + 15);
  v83[18] = *(v1 + 16);
  v83[19] = v38;
  v41 = *(v1 + 19);
  v83[20] = v39;
  v83[21] = v41;
  v42 = *(v1 + 13);
  v43 = *(v1 + 14);
  v44 = *(v1 + 11);
  v83[14] = *(v1 + 12);
  v83[15] = v42;
  v83[16] = v43;
  v83[17] = v40;
  v45 = *(v1 + 9);
  v83[12] = *(v1 + 10);
  v83[13] = v44;
  v46 = *(a1 + 18);
  v83[8] = *(a1 + 17);
  v83[9] = v46;
  v83[10] = *(a1 + 19);
  v83[11] = v45;
  v47 = *(a1 + 14);
  v83[4] = *(a1 + 13);
  v83[5] = v47;
  v48 = *(a1 + 16);
  v83[6] = *(a1 + 15);
  v83[7] = v48;
  v49 = *(a1 + 10);
  v83[0] = *(a1 + 9);
  v83[1] = v49;
  v50 = *(a1 + 12);
  v83[2] = *(a1 + 11);
  v83[3] = v50;
  if ((sub_1007C686C(v83) & 1) == 0)
  {
LABEL_193:
    LOBYTE(v18) = 0;
    return v18 & 1;
  }

  v51 = v1[320];
  v52 = a1[320];
  if (v51 == 2)
  {
    if (v52 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
  {
    goto LABEL_193;
  }

  v53 = v1[321];
  v54 = a1[321];
  if (v53 == 2)
  {
    if (v54 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v54 == 2 || ((v53 ^ v54) & 1) != 0)
  {
    goto LABEL_193;
  }

  if (v1[336] == 1)
  {
    if ((a1[336] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[336])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 41), *(a1 + 41));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  v55 = v1[344];
  v56 = a1[344];
  if (v55 == 6)
  {
    if (v56 != 6)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (v56 == 6)
    {
      goto LABEL_193;
    }

    v58 = *(v1 + 44);
    v59 = *(a1 + 44);
    if (v55 == 5)
    {
      if (v56 != 5)
      {
        goto LABEL_193;
      }
    }

    else if (v56 == 5 || (sub_100B5AF18(v55, v56) & 1) == 0)
    {
      goto LABEL_193;
    }

    if (!sub_1007C87EC(v58, v59))
    {
      goto LABEL_193;
    }
  }

  v57 = a1[368];
  if (v1[368])
  {
    if (!a1[368])
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (*(v1 + 45) != *(a1 + 45))
    {
      v57 = 1;
    }

    if (v57)
    {
      goto LABEL_193;
    }
  }

  if (!sub_1007C6CBC(a1[369], v1[369]))
  {
    goto LABEL_193;
  }

  v60 = v1[370];
  v61 = a1[370];
  if (v60 == 2)
  {
    if (v61 != 2)
    {
      goto LABEL_193;
    }
  }

  else if (v61 == 2 || ((v60 ^ v61) & 1) != 0)
  {
    goto LABEL_193;
  }

  v62 = *(v1 + 408);
  v63 = *(v1 + 53);
  v64 = *(a1 + 408);
  v65 = *(a1 + 53);
  v67 = (v65 & 0xF0) == 0 && *(a1 + 51) >> 8 == 4294967293;
  if (*(v1 + 51) >> 8 != 4294967293 || (v63 & 0xF0) != 0)
  {
    if (v67)
    {
      goto LABEL_193;
    }

    v68 = *(v1 + 392);
    v89 = *(v1 + 376);
    v90 = v68;
    v69 = *(v1 + 28);
    v93 = *(v1 + 27);
    v94 = v69;
    v95 = *(v1 + 58);
    v91 = v62;
    v92 = v63;
    v70 = *(a1 + 392);
    v84[0] = *(a1 + 376);
    v84[1] = v70;
    v71 = *(a1 + 27);
    v72 = *(a1 + 28);
    v88 = *(a1 + 58);
    v87 = v72;
    v86 = v71;
    v84[2] = v64;
    v85 = v65;
    if ((TSContentLanguage.Models.ParagraphProperties.BorderStyleType.isEquivalent(to:)(v84) & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else if (!v67)
  {
    goto LABEL_193;
  }

  if (v1[480] == 1)
  {
    if ((a1[480] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[480])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 59), *(a1 + 59));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  if (v1[496] == 1)
  {
    if ((a1[496] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[496])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 61), *(a1 + 61));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  if (v1[512] == 1)
  {
    if ((a1[512] & 1) == 0)
    {
      goto LABEL_193;
    }
  }

  else
  {
    if (a1[512])
    {
      goto LABEL_193;
    }

    LODWORD(v18) = sub_1007C87EC(*(v1 + 63), *(a1 + 63));
    if (!v18)
    {
      return v18 & 1;
    }
  }

  v73 = *(v1 + 65);
  v18 = *(a1 + 65);
  if (!v73)
  {
    if (v18)
    {
      goto LABEL_193;
    }

LABEL_178:
    v74 = v1[528];
    v75 = a1[528];
    if (v74 == 2)
    {
      if (v75 != 2)
      {
        goto LABEL_193;
      }
    }

    else if (v75 == 2 || ((v74 ^ v75) & 1) != 0)
    {
      goto LABEL_193;
    }

    v76 = v1[529];
    v77 = a1[529];
    if (v76 == 2)
    {
      if (v77 != 2)
      {
        goto LABEL_193;
      }
    }

    else if (v77 == 2 || ((v76 ^ v77) & 1) != 0)
    {
      goto LABEL_193;
    }

    v78 = v1[530];
    v79 = a1[530];
    if (v78 != 2)
    {
      if (v79 == 2 || ((v78 ^ v79) & 1) != 0)
      {
        goto LABEL_193;
      }

LABEL_195:
      memcpy(__dst, v1 + 536, sizeof(__dst));
      memcpy(v81, a1 + 536, 0x37CuLL);
      LOBYTE(v18) = sub_1007C65A4(v81);
      return v18 & 1;
    }

    if (v79 == 2)
    {
      goto LABEL_195;
    }

    goto LABEL_193;
  }

  if (v18)
  {
    if ((sub_100B5E9AC(v18, v73) & 1) == 0)
    {
      goto LABEL_193;
    }

    goto LABEL_178;
  }

  return v18 & 1;
}

BOOL sub_1011B4A64(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x594uLL);
  memcpy(__dst, a2, sizeof(__dst));
  return _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV23__derived_struct_equalsySbAG_AGtFZ_0(v4);
}

void *TSContentLanguage.Models.ParagraphProperties.AlignmentType.version.unsafeMutableAddressor()
{
  if (qword_1019F2A28 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ParagraphProperties.AlignmentType.version;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.AlignmentType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7265746E6563;
  v2 = 1952867692;
  v3 = 0x6C61727574616ELL;
  if (a1 != 3)
  {
    v3 = 0x7468676972;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x7966697473756ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1011B4C04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011B4CD8()
{
  String.hash(into:)();
}

Swift::Int sub_1011B4D98()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011B4E68@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV13AlignmentTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1011B4E98(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  v7 = 0xE700000000000000;
  v8 = 0x6C61727574616ELL;
  if (v2 != 3)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7966697473756ALL;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *TSContentLanguage.Models.ParagraphProperties.OutlineStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F2A30 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ParagraphProperties.OutlineStyleType.version;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.OutlineStyleType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 2036625250;
  }

  if (a1 == 1)
  {
    return 0x676E6964616568;
  }

  return 0x6669636570736E75;
}

uint64_t sub_1011B5100(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x676E6964616568;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2036625250;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x676E6964616568;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 2036625250;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1011B520C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011B52B0()
{
  String.hash(into:)();
}

Swift::Int sub_1011B5340()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011B53E0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO19ParagraphPropertiesV16OutlineStyleTypeO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1011B5410(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x676E6964616568;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 2036625250;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t *TSContentLanguage.Models.ParagraphProperties.BorderStyleType.version.unsafeMutableAddressor()
{
  if (qword_1019F2A38 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.ParagraphProperties.BorderStyleType.version;
}

__n128 TSContentLanguage.Models.ParagraphProperties.BorderStyleType.stroke.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.BorderStyleType.stroke.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(a1 + 48);
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.BorderStyleType.width.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.BorderStyleType.offset.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

__n128 TSContentLanguage.Models.ParagraphProperties.BorderStyleType.init(stroke:width:offset:offsetNone:rounded:all:before:after:leading:trailing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a1 + 48);
  v11 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v11;
  result = *(a1 + 32);
  *(a9 + 32) = result;
  *(a9 + 48) = v10;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3 & 1;
  *(a9 + 72) = a4;
  *(a9 + 80) = a5;
  *(a9 + 88) = a6 & 1;
  *(a9 + 89) = a7;
  *(a9 + 90) = a8;
  *(a9 + 91) = a10;
  *(a9 + 92) = *(&a10 + 1);
  return result;
}

uint64_t sub_1011B5808(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x676E696C69617274;
    v7 = 0x6564695F65707974;
    if (a1 != 10)
    {
      v7 = 0x6E6F6973726576;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x65726F666562;
    v9 = 0x7265746661;
    if (a1 != 7)
    {
      v9 = 0x676E696461656CLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656B6F727473;
    v2 = 0x6E5F74657366666FLL;
    v3 = 0x6465646E756F72;
    if (a1 != 4)
    {
      v3 = 7105633;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6874646977;
    if (a1 != 1)
    {
      v4 = 0x74657366666FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1011B597C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1011B5808(*a1);
  v5 = v4;
  if (v3 == sub_1011B5808(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1011B5A04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011B5808(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1011B5A68()
{
  sub_1011B5808(*v0);
  String.hash(into:)();
}

Swift::Int sub_1011B5ABC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1011B5808(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1011B5B1C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BA6BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011B5B4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1011B5808(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1011B5B94@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1011BA6BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1011B5BC8(uint64_t a1)
{
  v2 = sub_1011BB134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1011B5C04(uint64_t a1)
{
  v2 = sub_1011BB134();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.ParagraphProperties.BorderStyleType.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1011BA708(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.ParagraphProperties.BorderStyleType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2C258);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1011BB134();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = v3[2];
  v16 = *(v3 + 48);
  v12 = 0;
  sub_100969518();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v13 = *(v3 + 72);
  LOBYTE(v14) = *(v3 + 88);
  v12 = 2;
  sub_1011BB188();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v13) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2A38 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.ParagraphProperties.BorderStyleType.version;
  v12 = 11;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.ParagraphProperties.BorderStyleType.isEquivalent(to:)(double *a1)
{
  v2 = *(v1 + 1);
  v4 = v1[3];
  v3 = v1[4];
  v5 = v1[5];
  v6 = *(v1 + 48);
  v8 = *a1;
  v7 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 48);
  v14 = v3 & 0xFFFFFFFFFFFFFF00;
  v16 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFE00 && v13 < 0x10;
  if (v14 == 0xFFFFFFFE00 && v6 <= 0xF)
  {
    if (!v16)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (v16)
    {
      goto LABEL_80;
    }

    v18 = (v11 & 0xFFFFFFFFFFFFFF00) == 0xFFFFFFFF00 && v13 < 0x10;
    if (v14 == 0xFFFFFFFF00 && v6 <= 0xF)
    {
      if (!v18)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v18)
      {
        goto LABEL_80;
      }

      if (v6 >> 6)
      {
        if (v6 >> 6 == 1)
        {
          v49 = *v1;
          v50 = v2;
          v51 = v4;
          v52 = v3;
          v53 = v5;
          v54 = v6 & 0x3F;
          if ((v13 & 0xC0) != 0x40)
          {
            goto LABEL_80;
          }

          *v55 = v8;
          v55[1] = v7;
          v55[2] = v9;
          v55[3] = v10;
          v56 = v11;
          v57 = v12;
          v58 = v13 & 0x3F;
          v23 = a1;
          v24 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v49, v55);
          a1 = v23;
          if ((v24 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if ((v13 & 0xC0) != 0x80)
          {
            goto LABEL_80;
          }

          LOBYTE(v20) = 0;
          if (v7 | *&v8 | v9 | v10 | v11 | v12 || v13 != 128)
          {
            return v20 & 1;
          }
        }
      }

      else
      {
        if (v13 >= 0x40)
        {
          goto LABEL_80;
        }

        v48 = *(v1 + 1);
        v28 = a1;
        v29 = a1[1];
        v30 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*v1);
        v32 = v31;
        if (v30 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(SLOBYTE(v8)) && v32 == v33)
        {

          a1 = v28;
          if (*&v48 != v29)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          LOBYTE(v20) = 0;
          if ((v38 & 1) == 0)
          {
            return v20 & 1;
          }

          a1 = v28;
          if (*&v48 != v29)
          {
            return v20 & 1;
          }
        }
      }
    }
  }

  if (*(v1 + 64) == 1)
  {
    if ((a1[8] & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (a1[8])
    {
      goto LABEL_80;
    }

    v19 = a1;
    v20 = sub_1007C87EC(*(v1 + 7), a1[7]);
    a1 = v19;
    if (!v20)
    {
      return v20 & 1;
    }
  }

  if (*(v1 + 88) == 1)
  {
    if ((a1[11] & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (a1[11])
    {
      goto LABEL_80;
    }

    v25 = *(v1 + 10);
    v26 = a1[10];
    v27 = a1;
    if (!sub_1007C87EC(*(v1 + 9), a1[9]))
    {
      goto LABEL_80;
    }

    v20 = sub_1007C87EC(v25, v26);
    a1 = v27;
    if (!v20)
    {
      return v20 & 1;
    }
  }

  v21 = *(v1 + 89);
  v22 = *(a1 + 89);
  if (v21 == 2)
  {
    if (v22 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v22 == 2 || ((v21 ^ v22) & 1) != 0)
  {
    goto LABEL_80;
  }

  v34 = *(v1 + 90);
  v35 = *(a1 + 90);
  if (v34 == 2)
  {
    if (v35 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v35 == 2 || ((v34 ^ v35) & 1) != 0)
  {
    goto LABEL_80;
  }

  v36 = *(v1 + 91);
  v37 = *(a1 + 91);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v37 == 2 || ((v36 ^ v37) & 1) != 0)
  {
    goto LABEL_80;
  }

  v39 = *(v1 + 92);
  v40 = *(a1 + 92);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v40 == 2 || ((v39 ^ v40) & 1) != 0)
  {
    goto LABEL_80;
  }

  v41 = *(v1 + 93);
  v42 = *(a1 + 93);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    goto LABEL_80;
  }

  v43 = *(v1 + 94);
  v44 = *(a1 + 94);
  if (v43 != 2)
  {
    if (v44 != 2 && ((v43 ^ v44) & 1) == 0)
    {
      goto LABEL_82;
    }

LABEL_80:
    LOBYTE(v20) = 0;
    return v20 & 1;
  }

  if (v44 != 2)
  {
    goto LABEL_80;
  }

LABEL_82:
  v46 = *(v1 + 95);
  LOBYTE(v20) = v46 == 2;
  v47 = *(a1 + 95);
  if (v47 != 2)
  {
    LOBYTE(v20) = 0;
  }

  if (v46 != 2 && v47 != 2)
  {
    LOBYTE(v20) = v46 ^ v47 ^ 1;
  }

  return v20 & 1;
}