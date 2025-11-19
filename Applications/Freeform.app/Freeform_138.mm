void *sub_1010855F8(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v3 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0) - 8;
  __chkstk_darwin(v3);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v25[0] = v25 - v6;
  __chkstk_darwin(v7);
  v10 = v25 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = a1 + v26;
  v13 = *(v8 + 72);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  do
  {
    sub_101085AEC(v12, v10, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v19 = sub_101096C40();
    if (v19 && (v20 = sub_1008357A0(v19), , (v20 & 1) != 0))
    {
      sub_101085AEC(v10, v25[0], type metadata accessor for CRLBoardItemPeerSyncUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_100B37118(0, v14[2] + 1, 1, v14);
      }

      v22 = v14[2];
      v21 = v14[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v17 = sub_100B37118(v21 > 1, v22 + 1, 1, v14);
        v18 = v25[0];
        v14 = v17;
      }

      else
      {
        v17 = v14;
        v18 = v25[0];
      }
    }

    else
    {
      sub_101085AEC(v10, v27, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100B37118(0, v15[2] + 1, 1, v15);
      }

      v22 = v15[2];
      v24 = v15[3];
      v23 = v22 + 1;
      if (v22 >= v24 >> 1)
      {
        v17 = sub_100B37118(v24 > 1, v22 + 1, 1, v15);
        v18 = v27;
        v15 = v17;
      }

      else
      {
        v17 = v15;
        v18 = v27;
      }
    }

    sub_101085BD8(v10, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    *(v17 + 16) = v23;
    sub_101085B70(v18, v17 + v26 + v22 * v13, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v12 += v13;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_1010858F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_101085940()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_101085980()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1010859C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10107E200(a1, v4, v5, v7, v6);
}

uint64_t sub_101085A88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_101085AEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101085B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101085BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101085C3C(void *a1, uint64_t a2, int a3)
{
  v5 = v4;
  v6 = v3;
  v161 = a2;
  v159 = type metadata accessor for CRLMaskInfoData();
  __chkstk_darwin(v159);
  v10 = &v147[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v158 = &v147[-v12];
  __chkstk_darwin(v13);
  v15 = &v147[-v14];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [a1 getBoardItemForUUID:isa];

  if (v17)
  {
    type metadata accessor for CRLImageItem();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
LABEL_21:

      goto LABEL_22;
    }

    v19 = v18;
    v20 = v17;
    sub_1012E0400(v19, &off_10188FE10);

    if (v4)
    {

      return;
    }

    v155 = v6;
    v152 = v10;
    v154 = a3;
    v21 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v22 = *(**(v19 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
    v157 = v20;

    v160 = v22(v23);

    v24 = sub_100BBF54C();
    v156 = v21;
    if (v24)
    {
      v25 = [v24 geometry];
    }

    else
    {
      v151 = 0;
      v26 = *(**&v21[v19] + 296);

      v28 = v26(v27);

      v29 = v159;
      *&v15[v159[6]] = _swiftEmptyDictionarySingleton;
      v30 = v28;
      v17 = &selRef_shouldQueueBeginScribbleMode;
      [v30 size];
      v33 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v31, v32}];
      if (!v33)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v34 = v33;
      [v30 center];
      v36 = v35;
      v38 = v37;
      [v30 position];
      v40 = sub_10011F31C(v36, v38, v39);
      v42 = v41;
      [v30 size];
      v153 = v30;
      v45 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v40 size:{v42, v43, v44}];
      v46 = v34;
      sub_100C3D740(v46, v15);
      sub_101271CCC(v45, v164);

      v47 = &v15[v29[5]];
      v48 = v164[1];
      *v47 = v164[0];
      v47[1] = v48;
      v49 = v158;
      sub_100B7EE20(v15, v158);
      v150 = objc_allocWithZone(CRLMaskInfo);
      v50 = &v49[v29[5]];
      LODWORD(v40) = *v50;
      LODWORD(v42) = *(v50 + 1);
      v51 = *(v50 + 2);
      v52 = *(v50 + 3);
      v53 = *(v50 + 4);
      v54 = v50[20];
      v55 = v50[21];
      v56 = v50[22];
      v148 = v50[23];
      v57 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v149 = v157;
      v58 = [v57 initWithPosition:v54 size:v55 widthValid:v56 heightValid:v148 horizontalFlip:*&v40 verticalFlip:*&v42 angle:{v51, v52, v53}];
      v59 = sub_100C49F20(v49);
      v60 = [v150 initWithImageItem:v19 geometry:v58 pathSource:v59];

      sub_101087104(v49);
      sub_101087104(v15);
      v61 = [v60 geometry];

      v25 = v61;
      v5 = v151;
    }

    v62 = v19;
    v63 = v157;
    v64 = v25;
    [v160 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A0B030);
    swift_dynamicCast();
    v65 = v162;
    [v64 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    swift_dynamicCast();
    v66 = v162;
    v67 = v155;
    v68 = *&v155[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_imageData];
    v69 = v63;
    v153 = v66;
    sub_100BBEE78(v65, v66, v68, v160, v64, v62);
    v157 = v64;

    sub_100BB4A48(v68, *&v67[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_thumbnailData]);
    v70 = v65;
    if (sub_1011255D4(v70))
    {
      v71 = v156;
      v72 = *(**&v156[v62] + 296);

      v74 = v72(v73);

      sub_100006370(0, &unk_1019F5730);
      v75 = static NSObject.== infix(_:_:)();

      v76 = v62;
      if (v75)
      {
      }

      else
      {
        v77 = *(**&v71[v62] + 304);

        v77(v70);
      }
    }

    else
    {
      v76 = v62;

      v71 = v156;
    }

    v78 = v76;
    v79 = sub_100BBF54C();
    if (v79)
    {
      v80 = v79;
LABEL_18:
      v119 = v79;
      v120 = v153;
      [v80 setGeometry:v153];
      sub_100BB584C(v80);
      v121 = v69;
      sub_1012CF6CC(v78, &off_10188FE10, v154);

      return;
    }

    v150 = v69;
    v151 = v5;
    v155 = v70;
    v17 = *&v71[v76];
    v81 = *(*v17 + 37);

    v83 = v81(v82);

    v84 = v159;
    v85 = v152;
    *&v152[v159[6]] = _swiftEmptyDictionarySingleton;
    v86 = v83;
    [v86 size];
    v89 = [objc_allocWithZone(CRLBezierPathSource) initWithNaturalSize:{v87, v88}];
    if (v89)
    {
      v90 = v89;
      [v86 center];
      v92 = v91;
      v94 = v93;
      [v86 position];
      v96 = sub_10011F31C(v92, v94, v95);
      v98 = v97;
      [v86 size];
      v101 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithCenter:v96 size:{v98, v99, v100}];
      v102 = v86;
      v156 = v86;
      v103 = v101;
      v104 = v90;
      sub_100C3D740(v104, v85);
      sub_101271CCC(v103, v165);

      v105 = (v85 + v84[5]);
      v106 = v165[1];
      *v105 = v165[0];
      v105[1] = v106;
      v107 = v158;
      sub_100B7EE20(v85, v158);
      v149 = objc_allocWithZone(CRLMaskInfo);
      v108 = &v107[v84[5]];
      LODWORD(v96) = *v108;
      LODWORD(v98) = *(v108 + 1);
      v109 = *(v108 + 2);
      v110 = *(v108 + 3);
      v111 = *(v108 + 4);
      v112 = v108[20];
      v113 = v108[21];
      v148 = v108[22];
      v114 = v108[23];
      v115 = objc_allocWithZone(CRLCanvasInfoGeometry);
      v69 = v150;
      v159 = v150;
      v116 = [v115 initWithPosition:v112 size:v113 widthValid:v148 heightValid:v114 horizontalFlip:*&v96 verticalFlip:*&v98 angle:{v109, v110, v111}];
      v117 = sub_100C49F20(v107);
      v118 = [v149 initWithImageItem:v78 geometry:v116 pathSource:v117];

      sub_101087104(v107);
      sub_101087104(v152);
      v80 = v118;
      v79 = 0;
      v70 = v155;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_22:
  v122 = objc_opt_self();
  v123 = [v122 _atomicIncrementAssertCount];
  v163 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v163);
  StaticString.description.getter();
  v124 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v125 = String._bridgeToObjectiveC()();

  v126 = [v125 lastPathComponent];

  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v129 = v128;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v130 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v123;
  v132 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v132;
  v133 = sub_1005CF04C();
  *(inited + 104) = v133;
  *(inited + 72) = v124;
  *(inited + 136) = &type metadata for String;
  v134 = sub_1000053B0();
  *(inited + 112) = v127;
  *(inited + 120) = v129;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v134;
  *(inited + 152) = 29;
  v135 = v163;
  *(inited + 216) = v132;
  *(inited + 224) = v133;
  *(inited + 192) = v135;
  v136 = v124;
  v137 = v135;
  v138 = static os_log_type_t.error.getter();
  sub_100005404(v130, &_mh_execute_header, v138, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v139 = static os_log_type_t.error.getter();
  sub_100005404(v130, &_mh_execute_header, v139, "Unable to retrieve image item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve image item");
  type metadata accessor for __VaListBuilder();
  v140 = swift_allocObject();
  v140[2] = 8;
  v140[3] = 0;
  v140[4] = 0;
  v140[5] = 0;
  v141 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v142 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v143 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v144 = String._bridgeToObjectiveC()();

  [v122 handleFailureInFunction:v142 file:v143 lineNumber:29 isFatal:1 format:v144 args:v141];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v145, v146);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_101086ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_id;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  *&v7[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_imageData] = a2;
  *&v7[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_thumbnailData] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, "init");
  (*(v10 + 8))(a1, v9);
  return v11;
}

void sub_101086EBC()
{
  v1 = OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_thumbnailData);
}

id sub_101086F44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandReplaceImage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandReplaceImage()
{
  result = qword_101A29138;
  if (!qword_101A29138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10108705C()
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

uint64_t sub_101087104(uint64_t a1)
{
  v2 = type metadata accessor for CRLMaskInfoData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CRLFolderMetadataCRDT()
{
  result = qword_101A291A0;
  if (!qword_101A291A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1010871D4()
{
  sub_100039E5C();
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_101087258()
{
  qword_101AD8E10 = 97;
  *algn_101AD8E18 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD8E20 = result;
  return result;
}

uint64_t sub_101087298()
{
  sub_1005B981C(&qword_1019F4860);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v0 = sub_1006707A4(v2, v2);

  return v0 & 1;
}

uint64_t sub_101087328()
{
  if (qword_1019F2868 != -1)
  {
    swift_once();
  }

  v0 = qword_101AD8E10;

  return v0;
}

uint64_t sub_1010873A8(uint64_t a1)
{
  v2 = sub_101087FE0(&qword_101A29220);

  return static CRStruct_1.fieldKeys.getter(a1, v2);
}

uint64_t sub_101087400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1005B981C(&qword_1019F49A0);
  v4 = *(type metadata accessor for CRLDisjointPosition.Element() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146C6B0;
  v7 = sub_10000C3A0(0xC7uLL) - 99;
  UUID.init()();
  *(v6 + v5) = v7;
  *(a2 + *(a1 + 20)) = _swiftEmptyDictionarySingleton;
  sub_100039E08();
  return CRRegister.init(wrappedValue:)();
}

uint64_t sub_10108751C(uint64_t a1)
{
  v2 = sub_101087FE0(&qword_101A291E8);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_101087574(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1010875DC()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_10108764C()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1010876B4()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_10108771C()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.delta(_:from:)();
}

uint64_t sub_10108779C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.canMerge(delta:)(a1, a2, v4);
}

uint64_t sub_101087804()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.merge(delta:)();
}

uint64_t sub_10108786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_1010878DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10108794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.observableDifference(from:with:)(a1, a2, a3, v6);
}

uint64_t sub_1010879CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.visitReferences(_:)(a1, a2, v4);
}

BOOL sub_101087A34()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.needToFinalizeTimestamps()();
}

uint64_t sub_101087A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.finalizeTimestamps(_:)(a1, a2, v4);
}

uint64_t sub_101087AF4()
{
  sub_101087FE0(&qword_101A29220);

  return CRStruct_1.merge(_:)();
}

uint64_t sub_101087B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.merge(_:)(a1, a2, v4);
}

uint64_t sub_101087D84(uint64_t a1)
{
  v2 = sub_101087FE0(&qword_101A29220);

  return CRStruct_1.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_101087FE0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLFolderMetadataCRDT();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_101088024()
{
  sub_1010881EC(v0 + OBJC_IVAR____TtC8Freeform17CRLFolderMetadata_id, type metadata accessor for CRLFolderIdentifier);
  sub_1010881EC(v0 + OBJC_IVAR____TtC8Freeform17CRLFolderMetadata_crdtData, type metadata accessor for CRLFolderMetadataCRDT);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLFolderMetadata()
{
  result = qword_101A29250;
  if (!qword_101A29250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101088114()
{
  result = type metadata accessor for CRLFolderIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLFolderMetadataCRDT();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1010881EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10108824C(void *a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  v2 = [a1 zoneName];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x28656E6F7ALL;
}

id sub_10108831C()
{
  if (qword_1019F25F8 != -1)
  {
    swift_once();
  }

  v1 = qword_101AD87A8;
  qword_101AD8E40 = qword_101AD87A8;

  return v1;
}

uint64_t type metadata accessor for CRLZoneSyncResultScenarios()
{
  result = qword_101A29388;
  if (!qword_101A29388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1010883F4()
{
  sub_101088494();
  if (v0 <= 0x3F)
  {
    sub_10108850C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_101088494()
{
  if (!qword_101A29398)
  {
    sub_1005C4E5C(&qword_101A0A320);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101A29398);
    }
  }
}

void sub_10108850C()
{
  if (!qword_101A293A0)
  {
    sub_1005C4E5C(&qword_101A00168);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_101A293A0);
    }
  }
}

uint64_t sub_101088570(void *a1, uint64_t a2)
{
  v2[4] = _swiftEmptyArrayStorage;
  v2[5] = 0;
  v2[2] = a1;
  v4 = *(a2 + 16);
  if (!v4)
  {
    v24 = a1;
    v25 = a1;

    v7 = &_swiftEmptyDictionarySingleton;
LABEL_18:
    v2[3] = v7;
    v26 = sub_1010887F0();

    swift_beginAccess();
    v2[4] = v26;

    return v2;
  }

  v5 = a1;
  v6 = 0;
  v7 = &_swiftEmptyDictionarySingleton;
  while (v6 < *(a2 + 16))
  {
    v30 = *(a2 + 16 * v6 + 32);
    ObjectType = swift_getObjectType();
    v9 = *(*(&v30 + 1) + 8);
    v10 = *(v9 + 8);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v9);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v7;
    v13 = sub_1007C8B7C(v11);
    v15 = v7[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v7[3] < v18)
    {
      sub_100A93780(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1007C8B7C(v11);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v13;
    sub_100AAA2B0();
    v13 = v23;
    v7 = v31;
    if (v19)
    {
LABEL_3:
      *(v7[7] + 16 * v13) = v30;
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_4;
    }

LABEL_12:
    v7[(v13 >> 6) + 8] |= 1 << v13;
    *(v7[6] + 8 * v13) = v11;
    *(v7[7] + 16 * v13) = v30;
    swift_unknownObjectRelease();
    v21 = v7[2];
    v17 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v17)
    {
      goto LABEL_21;
    }

    v7[2] = v22;
LABEL_4:
    if (v4 == ++v6)
    {

      v2 = v29;
      v24 = a1;
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_100B51450();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1010887F0()
{
  v1 = sub_100DCE45C(*(v0 + 24), sub_100E5EF08, 0, sub_101089084, 0, sub_1010890E4, 0);
  v2 = v1;
  v55 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v54 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_112;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_113:

    sub_10079B898(v44);

    sub_10079B898(v45);

    return v54;
  }

LABEL_3:
  v4 = 0;
  v49 = v2 & 0xC000000000000001;
  v46 = v2 & 0xFFFFFFFFFFFFFF8;
  v5 = _swiftEmptyArrayStorage;
  v47 = v3;
  v48 = v2;
  while (1)
  {
    v51 = v5;
    if (v49)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
        goto LABEL_110;
      }
    }

    else
    {
      if (v4 >= *(v46 + 16))
      {
        goto LABEL_111;
      }

      v6 = __OFADD__(v4, 1);
      v7 = v4 + 1;
      if (v6)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        if (!v3)
        {
          goto LABEL_113;
        }

        goto LABEL_3;
      }
    }

    v50 = v7;
    v53 = _swiftEmptyArrayStorage;
    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v53;
    if (!(v53 >> 62))
    {
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_4;
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      break;
    }

LABEL_4:

    v2 = v48;
    v4 = v50;
    v5 = v51;
    if (v50 == v47)
    {
      goto LABEL_113;
    }
  }

  while (1)
  {
    v9 = v8 & 0x8000000000000000;
    v10 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
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
      __break(1u);
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

LABEL_17:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v8 & 0xFFFFFFFFFFFFFF8;
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_100;
      }

      v11 = *(v8 + 32);

      v12 = v8 & 0xFFFFFFFFFFFFFF8;
      if (!v10)
      {
LABEL_20:
        v13 = *(v12 + 16);
        if (!v13)
        {
          goto LABEL_106;
        }

        v2 = v13 - 1;
        if (__OFSUB__(v13, 1))
        {
          goto LABEL_101;
        }

        goto LABEL_37;
      }
    }

    if (v9)
    {
      v2 = v8;
    }

    else
    {
      v2 = v12;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_106;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 1)
    {
      goto LABEL_107;
    }

    v15 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v15 - 1;
    if (__OFSUB__(v15, 1))
    {
      goto LABEL_101;
    }

LABEL_37:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v10)
      {
        v16 = (v8 & 0xFFFFFFFFFFFFFF8);
        if (v2 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

LABEL_42:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_43;
    }

    if (v10)
    {
      goto LABEL_42;
    }

LABEL_43:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = (v8 & 0xFFFFFFFFFFFFFF8);
LABEL_44:
    v2 = (v16 + 4);

    v17 = v8 >> 62;
    if (v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_116;
      }

      memmove(v16 + 4, v16 + 5, 8 * (result - 1));
      v42 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v42 - 1;
      if (__OFSUB__(v42, 1))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v18 = v16[2];
      memmove(v16 + 4, v16 + 5, 8 * v18 - 8);
      v19 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_102;
      }
    }

    v16[2] = v19;
    v20 = v11[4];
    if (!v20)
    {
      goto LABEL_58;
    }

    v21 = v11[5];
    ObjectType = swift_getObjectType();
    v52[0] = v20;
    v23 = *(v21 + 8);
    v24 = *(v23 + 8);
    swift_unknownObjectRetain();
    v25 = v24(ObjectType, v23);
    v52[0] = v20;
    v26 = *(v21 + 24);
    if ((*(v26 + 16))(ObjectType, v26))
    {
      v27 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

LABEL_57:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      swift_unknownObjectRelease();
      goto LABEL_58;
    }

    v52[0] = v20;
    v28 = (*(v26 + 8))(ObjectType, v26);
    v27 = v25;
    if ((v28 & 1) == 0)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      goto LABEL_57;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_unknownObjectRelease();
    v51 = v56;
LABEL_58:
    swift_beginAccess();
    v29 = v11[6];
    v30 = v29 >> 62;
    if (v29 >> 62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
      if (!v17)
      {
LABEL_60:
        v32 = v16[2];
        v2 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_103;
        }

        goto LABEL_61;
      }
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_60;
      }
    }

    v43 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v43 + v31;
    if (__OFADD__(v43, v31))
    {
      goto LABEL_103;
    }

LABEL_61:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v17)
      {
        if (v2 <= v16[3] >> 1)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }

LABEL_66:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_67;
    }

    if (v17)
    {
      goto LABEL_66;
    }

LABEL_67:
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = (v8 & 0xFFFFFFFFFFFFFF8);
LABEL_68:
    v33 = v16[2];
    v34 = v16[3];
    if (v30)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
LABEL_75:

        if (v31 > 0)
        {
          goto LABEL_104;
        }

        goto LABEL_83;
      }
    }

    else
    {
      v2 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_75;
      }
    }

    if (((v34 >> 1) - v33) < v31)
    {
      goto LABEL_105;
    }

    v35 = &v16[v33 + 4];
    if (v30)
    {
      if (v2 < 1)
      {
        goto LABEL_109;
      }

      sub_1010891B0();
      for (i = 0; i != v2; ++i)
      {
        sub_1005B981C(&qword_101A294E8);
        v37 = sub_100777A74(v52, i, v29);
        v39 = *v38;

        (v37)(v52, 0);
        *(v35 + 8 * i) = v39;
      }

      if (v31 <= 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v2 = v29 & 0xFFFFFFFFFFFFFF8;
      sub_1005B981C(&qword_1019F6CE0);
      swift_arrayInitWithCopy();

      if (v31 <= 0)
      {
        goto LABEL_83;
      }
    }

    v40 = v16[2];
    v6 = __OFADD__(v40, v31);
    v41 = v40 + v31;
    if (v6)
    {
      goto LABEL_108;
    }

    v16[2] = v41;
LABEL_83:
    if (v8 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (!v16[2])
    {
      goto LABEL_4;
    }
  }

  if (v9)
  {
    v2 = v8;
  }

  else
  {
    v2 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_115;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_101089084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 32) + 8))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1010890E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(*(v3 + 32) + 16))(ObjectType);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_101089144()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1010891B0()
{
  result = qword_101A294F0;
  if (!qword_101A294F0)
  {
    sub_1005C4E5C(&qword_101A294E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A294F0);
  }

  return result;
}

id sub_101089214()
{
  v1 = v0;
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v25 - v5);
  URL._bridgeToObjectiveC()(v5);
  v8 = v7;
  v26 = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v7 error:&v26];

  v9 = v26;
  if (v1)
  {

    return v9;
  }

  else
  {
    v25[1] = v26;
    v11 = v26;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10001F75C(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
    LOBYTE(v11) = static _ErrorCodeProtocol.~= infix(_:_:)();

    v12 = *(v3 + 8);
    v12(v6, v2);
    if (v11)
    {
    }

    swift_errorRetain();
    static CocoaError.fileReadNoSuchFile.getter();
    v13 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v12(v6, v2);
    if (v13)
    {
    }

    else
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v16 = URL.path.getter();
      v18 = v17;
      *(inited + 56) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 64) = v19;
      *(inited + 32) = v16;
      *(inited + 40) = v18;
      swift_getErrorValue();
      v20 = Error.publicDescription.getter(v25[7], v25[8]);
      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v19;
      *(inited + 72) = v20;
      *(inited + 80) = v21;
      swift_getErrorValue();
      v22 = Error.fullDescription.getter(v25[3]);
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v19;
      *(inited + 112) = v22;
      *(inited + 120) = v23;
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v24, "Failed to remove item from disk. path=%@, error=%{public}@ <%@>", 63, 2, inited);

      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      return swift_arrayDestroy();
    }
  }
}

id sub_1010895F4(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = type metadata accessor for URL();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

uint64_t sub_10108974C()
{
  v1 = [objc_opt_self() defaultManager];
  sub_1005B981C(&unk_1019F6B30);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject() + v5;
  v7 = *(v3 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL, v2);
  v7(v6 + v4, v0 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_deletedAssetsDirectoryURL, v2);
  sub_101092C40(v6, v1);
  sub_101092C40(v6 + v4, v1);

  swift_setDeallocating();
  swift_arrayDestroy();
  return swift_deallocClassInstance();
}

void sub_1010898C8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v2 + 16));
  v3 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_didEnsureAssetDirectory;
  if (*(v0 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_didEnsureAssetDirectory))
  {
    goto LABEL_6;
  }

  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL);
  v7 = v6;
  v19 = 0;
  v8 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v19];

  v9 = v19;
  if (!v8 || (v10 = v19, v11 = [v4 defaultManager], URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_deletedAssetsDirectoryURL), v13 = v12, v19 = 0, v14 = objc_msgSend(v11, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v12, 1, 0, &v19), v11, v13, v9 = v19, !v14))
  {
    v18 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_6:
    v17 = *(v2 + 16);
    goto LABEL_7;
  }

  *(v1 + v3) = 1;
  v15 = *(v2 + 16);
  v16 = v9;
  v17 = v15;
LABEL_7:
  os_unfair_lock_unlock(v17);
}

uint64_t sub_101089A84(uint64_t a1)
{
  v2 = type metadata accessor for CocoaError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_1005B981C(&qword_1019FBED8);
  v172 = *(v187 - 8);
  __chkstk_darwin(v187);
  v159 = &v147 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v147 - v8;
  __chkstk_darwin(v9);
  v154 = &v147 - v10;
  v11 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v11 - 8);
  v167 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v170 = &v147 - v14;
  v158 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v158);
  v157 = &v147 - v15;
  v191 = type metadata accessor for URL();
  v16 = *(v191 - 8);
  __chkstk_darwin(v191);
  v182 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v165 = &v147 - v19;
  v20 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v20 - 8);
  v169 = &v147 - v21;
  v22 = sub_1005B981C(&qword_1019F6990);
  v184 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v178 = &v147 - v23;
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v190 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1005B981C(&qword_1019F6998);
  v27 = __chkstk_darwin(v183);
  v29 = &v147 - v28;
  v30 = *(a1 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
  if (!v30)
  {
    v39 = objc_opt_self();
    LODWORD(v40) = [v39 _atomicIncrementAssertCount];
    v196[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v196);
    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v124 = String._bridgeToObjectiveC()();

    v125 = [v124 lastPathComponent];

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v126;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_90;
    }

    goto LABEL_78;
  }

  v31 = (*(*v30 + 464))(v27);
  v188 = v24;
  if ((v33 & 0x100) != 0 && (v31 | v32 || v33) && (v31 != 1 || v32 || v33) && (v31 != 2 || v32 || v33) && v31 == 3 && !v32 && !v33)
  {
    v143 = objc_opt_self();

    v144 = [v143 standardUserDefaults];
    LODWORD(v143) = [v144 BOOLForKey:@"CRLImageItemsRequireAssetDownloadForSendCopyUserDefault"];

    if (v143)
    {
      if (qword_1019F2168 != -1)
      {
        swift_once();
      }

      v145 = static OS_os_log.crlSendACopy;
      v146 = static os_log_type_t.default.getter();
      sub_100005404(v145, &_mh_execute_header, v146, "UserDefaults force checkIfAssetIsStillDownloading to be true for image item.", 76, 2, _swiftEmptyArrayStorage);

      return 1;
    }
  }

  else
  {
  }

  v175 = v29;
  v150 = v5;
  v151 = v2;
  v35 = (*(*v30 + 664))(v34);
  v36 = (*(*v30 + 672))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v196[0] = v35;
  sub_1010935A0(v36, sub_100E8FDF4, 0, isUniquelyReferenced_nonNull_native, v196);

  v174 = 0;
  v38 = v30;
  v39 = v196[0] + 64;
  v40 = 1 << *(v196[0] + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v196[0] + 8);
  v164 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock;
  v43 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
  v148 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetsDirectoryURL;
  v186 = v196[0];

  v185 = v43;
  swift_beginAccess();
  v44 = 0;
  v45 = (v40 + 63) >> 6;
  v180 = (v25 + 48);
  v176 = (v172 + 48);
  v177 = (v172 + 56);
  v168 = (v16 + 32);
  v162 = (v16 + 56);
  v163 = (v25 + 32);
  v156 = (v16 + 8);
  v149 = (v3 + 8);
  v153 = (v16 + 16);
  v160 = (v16 + 48);
  v161 = (v25 + 8);
  v46 = &unk_10146D2F0;
  v147 = xmmword_10146C4D0;
  v152 = v38;
  v47 = v178;
  v181 = v39;
  v179 = v45;
  v48 = v175;
  while (v42)
  {
LABEL_22:
    v50 = __clz(__rbit64(v42)) | (v44 << 6);
    v51 = (v186[6] + 16 * v50);
    v52 = *v51;
    v40 = v51[1];
    v3 = *(v183 + 48);
    sub_10000BE14(v186[7] + *(v184 + 72) * v50, v48 + v3, &qword_1019F6990);
    *v48 = v52;
    v48[1] = v40;
    sub_10000BE14(v48 + v3, v47, &qword_1019F6990);
    v53 = v188;
    if ((*v180)(v47, 1, v188) == 1)
    {

      sub_10000CAAC(v47, &qword_1019F6990);
      v39 = v181;
      goto LABEL_16;
    }

    v54 = v190;
    (*v163)(v190, v47, v53);
    v55 = v189;
    v56 = *(v189 + v164);
    v57 = *(v56 + 16);

    os_unfair_lock_lock(v57);
    v58 = *(v55 + v185);
    if (*(v58 + 16))
    {

      v59 = sub_10003E994(v54);
      if (v60)
      {
        v61 = v170;
        sub_10000BE14(*(v58 + 56) + *(v172 + 72) * v59, v170, &qword_1019FBED8);
        v62 = 0;
      }

      else
      {
        v62 = 1;
        v61 = v170;
      }
    }

    else
    {
      v62 = 1;
      v61 = v170;
    }

    v63 = *v177;
    v64 = v187;
    (*v177)(v61, v62, 1, v187);
    os_unfair_lock_unlock(*(v56 + 16));
    v166 = *v176;
    v65 = v166(v61, 1, v64);
    v173 = v56;
    if (v65 == 1)
    {
      sub_10000CAAC(v61, &qword_101A0B040);
      goto LABEL_33;
    }

    v155 = v63;
    v66 = v61;
    v67 = *(v61 + *(v64 + 48));
    v68 = v191;
    v70 = v157;
    v69 = v158;
    v3 = *(v158 + 48);
    v71 = *v168;
    (*v168)(v157, v66, v191);
    *&v70[v3] = v67;
    v72 = v68;
    v73 = *&v70[*(v69 + 48)];
    v74 = v165;
    v71(v165, v70, v72);
    if ((v73 & 2) == 0)
    {
      (*v156)(v74, v191);
      v56 = v173;
      v63 = v155;
LABEL_33:
      os_unfair_lock_lock(*(v56 + 16));
      v75 = *(v189 + v185);
      if (*(v75 + 16))
      {

        v76 = sub_10003E994(v190);
        if (v77)
        {
          sub_10000BE14(*(v75 + 56) + *(v172 + 72) * v76, v167, &qword_1019FBED8);
          v78 = 0;
        }

        else
        {
          v78 = 1;
        }
      }

      else
      {
        v78 = 1;
      }

      v79 = v167;
      v80 = v78;
      v81 = v187;
      v63(v167, v80, 1, v187);
      os_unfair_lock_unlock(*(v56 + 16));
      if (v166(v79, 1, v81) == 1)
      {
        sub_10000CAAC(v79, &qword_101A0B040);
        v82 = v190;
        v83 = sub_10108C21C();
        if (v83)
        {
          v84 = *(v83 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
          v85 = *(v83 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);

          UUID.uuidString.getter();
          if (v85)
          {
            v86 = HIBYTE(v85) & 0xF;
            if ((v85 & 0x2000000000000000) == 0)
            {
              v86 = v84 & 0xFFFFFFFFFFFFLL;
            }

            if (v86)
            {
              v87 = String._bridgeToObjectiveC()();
              v88 = String._bridgeToObjectiveC()();
              v89 = [v87 stringByAppendingPathExtension:v88];

              if (v89)
              {
                static String._unconditionallyBridgeFromObjectiveC(_:)();
              }
            }

            else
            {
            }
          }

          v93 = 1;
          v82 = v190;
        }

        else
        {
          UUID.uuidString.getter();
          v93 = 0;
        }

        v96 = v182;
        URL.appendingPathComponent(_:)();

        LODWORD(v166) = v93;
        sub_10108B1E0(v82, v96, v93);
      }

      else
      {
        v90 = v154;
        sub_10003DFF8(v79, v154, &qword_1019FBED8);
        v91 = v90;
        v92 = v171;
        sub_10003DFF8(v91, v171, &qword_1019FBED8);
        LODWORD(v166) = *(v92 + *(v81 + 48));
        (*v168)(v182, v92, v191);
      }

      v97 = URL.checkResourceIsReachable()();
      v3 = v98;
      if (v98)
      {
        swift_errorRetain();
        v99 = v150;
        static CocoaError.fileNoSuchFile.getter();
        sub_10001F75C(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
        v100 = v151;
        v101 = static _ErrorCodeProtocol.~= infix(_:_:)();

        v102 = *v149;
        (*v149)(v99, v100);
        if (v101 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v103 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v102(v99, v100), (v103))
        {

          LODWORD(v155) = 0;
          v174 = 0;
          v104 = 2;
          goto LABEL_62;
        }

        swift_willThrow();
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v174 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v147;
        v114 = URL.path.getter();
        v116 = v115;
        *(inited + 56) = &type metadata for String;
        v117 = sub_1000053B0();
        *(inited + 64) = v117;
        *(inited + 32) = v114;
        v173 = inited + 32;
        *(inited + 40) = v116;
        swift_getErrorValue();
        v118 = Error.publicDescription.getter(v194, v195);
        *(inited + 96) = &type metadata for String;
        *(inited + 104) = v117;
        *(inited + 72) = v118;
        *(inited + 80) = v119;
        swift_getErrorValue();
        v120 = Error.fullDescription.getter(v193);
        *(inited + 136) = &type metadata for String;
        *(inited + 144) = v117;
        *(inited + 112) = v120;
        *(inited + 120) = v121;
        v122 = static os_log_type_t.error.getter();
        sub_100005404(v174, &_mh_execute_header, v122, "Failed to check if file exists. filePath=%@, error=%{public}@ <%@>", 68, 2, inited);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v174 = 0;
        v48 = v175;
      }

      else
      {
        v174 = 0;
        LODWORD(v155) = v97;
        if (v97)
        {
          v104 = 6;
        }

        else
        {
          v104 = 2;
        }

LABEL_62:
        v105 = v187;
        if (v166)
        {
          v104 |= 1u;
        }

        v106 = v173;
        os_unfair_lock_lock(*(v173 + 16));
        v107 = *(v105 + 48);
        v3 = v171;
        v108 = v182;
        (*v153)(v171, v182, v191);
        *(v3 + v107) = v104;
        v109 = v189;
        v110 = v185;
        swift_beginAccess();
        v111 = v159;
        sub_10003DFF8(v3, v159, &qword_1019FBED8);
        v112 = swift_isUniquelyReferenced_nonNull_native();
        v192 = *(v109 + v110);
        sub_100A9B1E0(v111, v190, v112);
        *(v109 + v110) = v192;
        swift_endAccess();
        os_unfair_lock_unlock(*(v106 + 16));
        if (v155)
        {
          v94 = v169;
          (*v168)(v169, v108, v191);
          v95 = 0;
          v47 = v178;
          v48 = v175;
          goto LABEL_73;
        }

        v48 = v175;
      }

      (*v156)(v182, v191);
LABEL_71:
      v95 = 1;
      v94 = v169;
      goto LABEL_72;
    }

    v48 = v175;
    if ((v73 & 4) == 0)
    {
      (*v156)(v165, v191);
      goto LABEL_71;
    }

    v94 = v169;
    v71(v169, v165, v191);
    v95 = 0;
LABEL_72:
    v47 = v178;
LABEL_73:
    v123 = v191;
    (*v162)(v94, v95, 1, v191);
    (*v161)(v190, v188);
    v40 = (*v160)(v94, 1, v123);
    sub_10000CAAC(v94, &unk_1019F33C0);
    v39 = v181;
    if (v40 == 1)
    {
      sub_10000CAAC(v48, &qword_1019F6998);
LABEL_76:

      return v40;
    }

LABEL_16:
    v42 &= v42 - 1;
    sub_10000CAAC(v48, &qword_1019F6998);
    v45 = v179;
    v46 = &unk_10146D2F0;
  }

  while (1)
  {
    v49 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v49 >= v45)
    {
      v40 = 0;
      goto LABEL_76;
    }

    v42 = *&v39[8 * v49];
    ++v44;
    if (v42)
    {
      v44 = v49;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_90:
  swift_once();
LABEL_78:
  v127 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v128 = swift_initStackObject();
  *(v128 + 16) = xmmword_10146CA70;
  *(v128 + 56) = &type metadata for Int32;
  *(v128 + 64) = &protocol witness table for Int32;
  *(v128 + 32) = v40;
  v129 = sub_100006370(0, &qword_1019F4D30);
  *(v128 + 96) = v129;
  v130 = sub_1005CF04C();
  *(v128 + 104) = v130;
  *(v128 + 72) = v48;
  *(v128 + 136) = &type metadata for String;
  v131 = sub_1000053B0();
  *(v128 + 112) = v46;
  *(v128 + 120) = v3;
  *(v128 + 176) = &type metadata for UInt;
  *(v128 + 184) = &protocol witness table for UInt;
  *(v128 + 144) = v131;
  *(v128 + 152) = 71;
  v132 = v196[0];
  *(v128 + 216) = v129;
  *(v128 + 224) = v130;
  *(v128 + 192) = v132;
  v133 = v48;
  v134 = v132;
  v135 = static os_log_type_t.error.getter();
  sub_100005404(v127, &_mh_execute_header, v135, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v128);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v136 = static os_log_type_t.error.getter();
  sub_100005404(v127, &_mh_execute_header, v136, "Unexpected missing itemData for boardItemSyncLocalChangeRecord", 62, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v137 = swift_allocObject();
  v137[2] = 8;
  v137[3] = 0;
  v137[4] = 0;
  v137[5] = 0;
  v138 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v139 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v140 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v141 = String._bridgeToObjectiveC()();

  [v39 handleFailureInFunction:v139 file:v140 lineNumber:71 isFatal:0 format:v141 args:v138];

  return 1;
}

void sub_10108B03C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_10003E994(a1);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    v14 = sub_1005B981C(&qword_1019FBED8);
    (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
    goto LABEL_6;
  }

  v10 = v8;
  v11 = *(v7 + 56);
  v12 = sub_1005B981C(&qword_1019FBED8);
  v13 = *(v12 - 8);
  sub_10000BE14(v11 + *(v13 + 72) * v10, a2, &qword_1019FBED8);

  (*(v13 + 56))(a2, 0, 1, v12);
LABEL_6:
  os_unfair_lock_unlock(*(v5 + 16));
}

void sub_10108B1E0(uint64_t a1, void *a2, int a3)
{
  LODWORD(v101) = a3;
  v105 = a2;
  v106 = a1;
  v4 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v4 - 8);
  v6 = &v93 - v5;
  v99 = type metadata accessor for UUID();
  v7 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLResourceValues();
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = __chkstk_darwin(v9);
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = &v93 - v12;
  v13 = sub_1005B981C(&qword_1019FBED8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v93 - v15;
  v17 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v17 - 8);
  v19 = &v93 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v103 = v20;
  v104 = v21;
  __chkstk_darwin(v20);
  v98 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v102 + 16));
  v23 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
  swift_beginAccess();
  v24 = *(v3 + v23);
  if (!*(v24 + 16))
  {
    goto LABEL_7;
  }

  v25 = sub_10003E994(v106);
  if ((v26 & 1) == 0)
  {

LABEL_7:
    v40 = v100;
    (*(v7 + 16))(v100, v106, v99);
    v41 = *(v13 + 48);
    (*(v104 + 16))(v6, v105, v103);
    *&v6[v41] = v101;
    (*(v14 + 56))(v6, 0, 1, v13);
    swift_beginAccess();
    sub_100BC2038(v6, v40);
    swift_endAccess();
LABEL_8:
    v39 = v102;
    goto LABEL_9;
  }

  sub_10000BE14(*(v24 + 56) + *(v14 + 72) * v25, v16, &qword_1019FBED8);

  v28 = v103;
  v27 = v104;
  v29 = *(v104 + 32);
  v29(v19, v16, v103);
  v30 = v98;
  v29(v98, v19, v28);
  v31 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v33 = URL.path.getter();
  v35 = v34;
  *(inited + 56) = &type metadata for String;
  v36 = sub_1000053B0();
  *(inited + 32) = v33;
  v106 = inited + 32;
  *(inited + 64) = v36;
  *(inited + 40) = v35;
  v37 = URL.path.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v36;
  *(inited + 72) = v37;
  *(inited + 80) = v38;
  if (static URL.== infix(_:_:)())
  {
    v39 = v102;
    goto LABEL_5;
  }

  v99 = v31;
  v100 = v36;
  sub_1005B981C(&qword_101A00280);
  v42 = swift_initStackObject();
  v101 = xmmword_10146C6B0;
  *(v42 + 16) = xmmword_10146C6B0;
  *(v42 + 32) = NSURLCanonicalPathKey;
  v43 = NSURLCanonicalPathKey;
  sub_1005BC3E8(v42);
  swift_setDeallocating();
  sub_1007B00E4(v42 + 32);
  v44 = v96;
  v45 = 0;
  URL.resourceValues(forKeys:)();

  v46 = URLResourceValues.canonicalPath.getter();
  v47 = v44;
  v48 = v46;
  v50 = v49;
  (*(v94 + 8))(v47, v95);
  v51 = swift_initStackObject();
  *(v51 + 16) = v101;
  *(v51 + 32) = v43;
  v52 = v51 + 32;
  sub_1005BC3E8(v51);
  swift_setDeallocating();
  sub_1007B00E4(v52);
  v53 = v97;
  URL.resourceValues(forKeys:)();

  v89 = URLResourceValues.canonicalPath.getter();
  v91 = v90;
  (*(v94 + 8))(v53, v95);
  if (v50)
  {
    v30 = v98;
    if (v91)
    {
      if (v48 != v89 || v50 != v91)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v30 = v98;
    if (!v91)
    {
      goto LABEL_48;
    }
  }

  do
  {
    v97 = v45;
    v105 = objc_opt_self();
    LODWORD(v54) = [v105 _atomicIncrementAssertCount];
    v107 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v107);
    StaticString.description.getter();
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v56 = String._bridgeToObjectiveC()();

    v57 = [v56 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    if (qword_1019F20A0 != -1)
    {
LABEL_52:
      swift_once();
    }

    v60 = static OS_os_log.crlAssert;
    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_10146CA70;
    *(v61 + 56) = &type metadata for Int32;
    *(v61 + 64) = &protocol witness table for Int32;
    *(v61 + 32) = v54;
    v62 = sub_100006370(0, &qword_1019F4D30);
    *(v61 + 96) = v62;
    v63 = sub_1005CF04C();
    *(v61 + 72) = v55;
    v64 = v100;
    *(v61 + 136) = &type metadata for String;
    *(v61 + 144) = v64;
    *(v61 + 104) = v63;
    *(v61 + 112) = v28;
    *(v61 + 120) = v59;
    *(v61 + 176) = &type metadata for UInt;
    *(v61 + 184) = &protocol witness table for UInt;
    *(v61 + 152) = 113;
    v65 = v107;
    *(v61 + 216) = v62;
    *(v61 + 224) = v63;
    *(v61 + 192) = v65;
    v66 = v55;
    v67 = v65;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v68, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v61);
    swift_setDeallocating();
    *&v101 = sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v69 = static os_log_type_t.error.getter();
    sub_100005404(v60, &_mh_execute_header, v69, "Asset file URL mutated unexpectedly. current=%@, new=%@", 55, 2, inited);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v59 = v28 + 3;
    v28[4] = 0;
    v28[5] = 0;
    v70 = *(inited + 16);
    if (!v70)
    {
LABEL_38:
      v85 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v86 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v87 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v88 = String._bridgeToObjectiveC()();

      [v105 handleFailureInFunction:v86 file:v87 lineNumber:113 isFatal:0 format:v88 args:v85];

      swift_setDeallocating();
      swift_arrayDestroy();
      (*(v104 + 8))(v98, v103);
      goto LABEL_8;
    }

    v30 = 0;
    v45 = 40;
    while (1)
    {
      v71 = (v106 + 40 * v30);
      v55 = v71[3];
      LODWORD(v54) = sub_100020E58(v71, v55);
      v72 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v73 = *v59;
      v74 = *(v72 + 16);
      v75 = __OFADD__(*v59, v74);
      v76 = *v59 + v74;
      if (v75)
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v54 = v28[4];
      if (v54 >= v76)
      {
        goto LABEL_30;
      }

      if (v54 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v55 = v28[5];
      if (2 * v54 > v76)
      {
        v76 = 2 * v54;
      }

      v28[4] = v76;
      if ((v76 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v77 = v72;
      v78 = swift_slowAlloc();
      v79 = v78;
      v28[5] = v78;
      if (v55)
      {
        if (v78 != v55 || v78 >= &v55[8 * v73])
        {
          memmove(v78, v55, 8 * v73);
        }

        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v72 = v77;
        v45 = 40;
LABEL_30:
        v79 = v28[5];
        if (!v79)
        {
          goto LABEL_37;
        }

        goto LABEL_31;
      }

      v72 = v77;
      v45 = 40;
      if (!v79)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_31:
      v81 = *(v72 + 16);
      if (v81)
      {
        break;
      }

LABEL_15:

      if (++v30 == v70)
      {
        goto LABEL_38;
      }
    }

    v82 = (v72 + 32);
    v83 = *v59;
    while (1)
    {
      v84 = *v82++;
      *&v79[8 * v83] = v84;
      v83 = *v59 + 1;
      if (__OFADD__(*v59, 1))
      {
        break;
      }

      *v59 = v83;
      if (!--v81)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_47:
    v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v92 & 1) == 0);
LABEL_48:
  v39 = v102;
  v27 = v104;
LABEL_5:

  (*(v27 + 8))(v30, v28);
LABEL_9:
  os_unfair_lock_unlock(*(v39 + 16));
}

void sub_10108BDC8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v39 = a2;
  v40 = a3;
  v44 = a1;
  v4 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v4 - 8);
  v42 = &v34 - v5;
  v6 = type metadata accessor for UUID();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v43 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v41 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FBED8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  v15 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  v45 = *(v3 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v45 + 16));
  v18 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_assetFileURLCache;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (*(v19 + 16))
  {
    v36 = v9;

    v20 = sub_10003E994(v44);
    if (v21)
    {
      v22 = *(v19 + 56);
      v35 = v12;
      sub_10000BE14(v22 + *(v12 + 72) * v20, v14, &qword_1019FBED8);

      v34 = v11;
      v23 = *&v14[*(v11 + 48)];
      v24 = *(v15 + 48);
      v25 = v36;
      (*(v36 + 32))(v17, v14, v8);
      *&v17[v24] = v23;
      v27 = v42;
      v26 = v43;
      v28 = v44;
      v29 = *&v17[*(v15 + 48)];
      v30 = *(v25 + 8);
      v30(v17, v8);
      if ((v29 & 1) == 0)
      {
        sub_1010934D4(v28, v39, v40);
        v40 = v30;
        v31 = v41;
        URL.appendingPathComponent(_:)();

        (*(v37 + 16))(v26, v28, v38);
        v32 = v34;
        v33 = *(v34 + 48);
        (*(v36 + 16))(v27, v31, v8);
        *(v27 + v33) = 1;
        (*(v35 + 56))(v27, 0, 1, v32);
        swift_beginAccess();
        sub_100BC2038(v27, v43);
        swift_endAccess();
        v40(v31, v8);
      }
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(*(v45 + 16));
}

uint64_t sub_10108C21C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = __chkstk_darwin(result);
    sub_1005B981C(&qword_1019FD598);
    OS_dispatch_queue.sync<A>(execute:)();

    return v2;
  }

  return result;
}

uint64_t sub_10108C46C(uint64_t a1)
{
  *(v2 + 240) = a1;
  *(v2 + 248) = v1;
  return _swift_task_switch(sub_10108C48C, 0, 0);
}

uint64_t sub_10108C48C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[30];
    v4 = swift_task_alloc();
    v0[33] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[34] = v5;
    v6 = sub_1005B981C(&qword_1019FD598);
    *v5 = v0;
    v5[1] = sub_10108C5E8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 27, 0, 0, 0xD000000000000021, 0x80000001015BF1A0, sub_101093E80, v4, v6);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10108C5E8()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10108C768;
  }

  else
  {

    v2 = sub_10108C704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10108C704()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10108C768()
{

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v3 = UUID.uuidString.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  v6 = sub_1000053B0();
  *(inited + 64) = v6;
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  swift_getErrorValue();
  v7 = Error.publicDescription.getter(*(v0 + 176), *(v0 + 184));
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = v8;
  swift_getErrorValue();
  v9 = Error.fullDescription.getter(*(v0 + 200));
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v6;
  *(inited + 112) = v9;
  *(inited + 120) = v10;
  v11 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v11, "Failed to fetch the asset row for %@ with error %{public}@ <%@>", 63, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_10108C934()
{
  v0 = type metadata accessor for CocoaError.Code();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = URL.checkResourceIsReachable()();
  if (v5)
  {
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10001F75C(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
    v6 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v7 = *(v1 + 8);
    v7(v3, v0);
    if (v6 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v8 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v7(v3, v0), (v8))
    {

      v4 = 0;
    }

    else
    {
      v4 = swift_willThrow();
    }
  }

  return v4 & 1;
}

uint64_t sub_10108CAF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v66 = a5;
  v73 = a4;
  v72 = a2;
  v76 = a6;
  v70 = type metadata accessor for UUID();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1005B981C(&qword_1019FBED8);
  v9 = *(v75 - 8);
  v10 = __chkstk_darwin(v75);
  v65 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v58 - v12;
  v13 = sub_1005B981C(&qword_101A0B040);
  v14 = __chkstk_darwin(v13 - 8);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v58 - v17;
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v21 = sub_1005B981C(&qword_101A0B048);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(a1);
  v78 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v31 = &v58 - v30;
  v77 = a1;
  v74 = a3;
  v68 = v9;
  if (a3)
  {
    v62 = v29;
    sub_10108B03C(v28, v20);
    v32 = *(v9 + 48);
    v33 = v75;
    if (v32(v20, 1, v75) == 1)
    {
      sub_10000CAAC(v20, &qword_101A0B040);
    }

    else
    {
      v59 = v32;
      v61 = *&v20[*(v33 + 48)];
      v60 = *(v21 + 48);
      v34 = *(v25 + 32);
      v34(v23, v20, v24);
      *&v23[v60] = v61;
      v35 = *&v23[*(v21 + 48)];
      v34(v31, v23, v24);
      if ((v35 & 2) != 0)
      {
        if ((v35 & 4) != 0)
        {
          v34(v76, v31, v24);
          v56 = 0;
          return (*(v25 + 56))(v76, v56, 1, v24);
        }

        (*(v25 + 8))(v31, v24);
        goto LABEL_25;
      }

      (*(v25 + 8))(v31, v24);
      v32 = v59;
    }

    sub_10108B03C(v77, v18);
    v36 = v75;
    if (v32(v18, 1, v75) != 1)
    {
      v42 = v64;
      sub_10003DFF8(v18, v64, &qword_1019FBED8);
      v43 = v42;
      v44 = v65;
      sub_10003DFF8(v43, v65, &qword_1019FBED8);
      v41 = *(v44 + *(v36 + 48));
      v40 = v78;
      (*(v25 + 32))(v78, v44, v24);
      goto LABEL_19;
    }

    sub_10000CAAC(v18, &qword_101A0B040);
    v28 = v77;
    v29 = v62;
  }

  if (v29 || (v74 & 2) == 0)
  {
    sub_1010934D4(v28, v72, v29);
    v40 = v78;
    URL.appendingPathComponent(_:)();

    LOBYTE(v41) = 0;
  }

  else
  {
    v37 = v73;
    if (v73)
    {
      v38 = v28;

      v39 = v37(v38);
      sub_1000C1014(v37);
    }

    else
    {
      v39 = sub_10108C21C();
    }

    v63 = v25;
    if (v39)
    {
      v46 = *(v39 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
      v45 = *(v39 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);

      v41 = 1;
    }

    else
    {
      v41 = 0;
      v46 = 0;
      v45 = 0;
    }

    v47 = v77;
    sub_1010934D4(v77, v46, v45);

    v48 = v78;
    URL.appendingPathComponent(_:)();

    sub_10108B1E0(v47, v48, v41);

    v25 = v63;
    v40 = v48;
  }

LABEL_19:
  LOBYTE(v78) = sub_10108C934() & 1;
  LODWORD(v78) = v78;
  if (v78)
  {
    v49 = 6;
  }

  else
  {
    v49 = 2;
  }

  v50 = v49 & 0xFFFFFFFE | v41 & 1;
  v51 = *(v79 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v51 + 16));
  v52 = v71;
  (*(v69 + 16))(v71, v77, v70);
  v53 = v75;
  v54 = *(v75 + 48);
  v55 = v67;
  (*(v25 + 16))(v67, v40, v24);
  *(v55 + v54) = v50;
  (*(v68 + 56))(v55, 0, 1, v53);
  swift_beginAccess();
  sub_100BC2038(v55, v52);
  swift_endAccess();
  os_unfair_lock_unlock(*(v51 + 16));
  if (!v78)
  {
    (*(v25 + 8))(v40, v24);
LABEL_25:
    v56 = 1;
    return (*(v25 + 56))(v76, v56, 1, v24);
  }

  (*(v25 + 32))(v76, v40, v24);
  v56 = 0;
  return (*(v25 + 56))(v76, v56, 1, v24);
}

uint64_t sub_10108D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v6 + 280) = a4;
  *(v6 + 288) = v5;
  *(v6 + 440) = a5;
  *(v6 + 264) = a2;
  *(v6 + 272) = a3;
  *(v6 + 256) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 296) = v7;
  *(v6 + 304) = *(v7 - 8);
  *(v6 + 312) = swift_task_alloc();
  v8 = sub_1005B981C(&qword_1019FBED8);
  *(v6 + 320) = v8;
  *(v6 + 328) = *(v8 - 8);
  *(v6 + 336) = swift_task_alloc();
  *(v6 + 344) = swift_task_alloc();
  sub_1005B981C(&qword_101A0B040);
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = sub_1005B981C(&qword_101A0B048);
  *(v6 + 384) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v6 + 392) = v9;
  *(v6 + 400) = *(v9 - 8);
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();

  return _swift_task_switch(sub_10108D720, 0, 0);
}

uint64_t sub_10108D720()
{
  v1 = *(v0 + 440);
  if ((v1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 368);
  v3 = *(v0 + 320);
  v4 = *(v0 + 328);
  sub_10108B03C(*(v0 + 264), v2);
  v5 = *(v4 + 48);
  if (v5(v2, 1, v3) == 1)
  {
    sub_10000CAAC(*(v0 + 368), &qword_101A0B040);
LABEL_6:
    v13 = *(v0 + 360);
    v14 = *(v0 + 320);
    sub_10108B03C(*(v0 + 264), v13);
    if (v5(v13, 1, v14) != 1)
    {
      v23 = *(v0 + 400);
      v22 = *(v0 + 408);
      v24 = *(v0 + 392);
      v26 = *(v0 + 336);
      v25 = *(v0 + 344);
      v27 = *(v0 + 320);
      sub_10003DFF8(*(v0 + 360), v25, &qword_1019FBED8);
      sub_10003DFF8(v25, v26, &qword_1019FBED8);
      LODWORD(v25) = *(v26 + *(v27 + 48));
      (*(v23 + 32))(v22, v26, v24);
      v18 = v25 & 1;
LABEL_18:
      v28 = sub_10108C934();
      v29 = *(v0 + 400);
      v44 = *(v0 + 392);
      v45 = *(v0 + 408);
      v30 = *(v0 + 352);
      v31 = *(v0 + 328);
      v43 = *(v0 + 320);
      v32 = *(v0 + 304);
      v33 = *(v0 + 312);
      v34 = *(v0 + 296);
      v35 = *(v0 + 264);
      v48 = v28 & 1;
      if (v28)
      {
        v36 = 6;
      }

      else
      {
        v36 = 2;
      }

      v37 = v36 | v18;
      v46 = *(*(v0 + 288) + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
      os_unfair_lock_lock(*(v46 + 16));
      (*(v32 + 16))(v33, v35, v34);
      v38 = *(v43 + 48);
      (*(v29 + 16))(v30, v45, v44);
      *(v30 + v38) = v37;
      (*(v31 + 56))(v30, 0, 1, v43);
      swift_beginAccess();
      sub_100BC2038(v30, v33);
      swift_endAccess();
      os_unfair_lock_unlock(*(v46 + 16));
      if (v48)
      {
        v39 = *(v0 + 400);
        v40 = *(v0 + 392);
        v41 = *(v0 + 256);
        (*(v39 + 32))(v41, *(v0 + 408), v40);
LABEL_28:
        (*(v39 + 56))(v41, 0, 1, v40);
        goto LABEL_29;
      }

      v39 = *(v0 + 400);
      v40 = *(v0 + 392);
      v41 = *(v0 + 256);
      (*(v39 + 8))(*(v0 + 408), v40);
      goto LABEL_24;
    }

    sub_10000CAAC(*(v0 + 360), &qword_101A0B040);
    v1 = *(v0 + 440);
LABEL_8:
    v15 = *(v0 + 280);
    v16 = v1 & 2;
    if (v15)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 == 0;
    }

    if (!v17)
    {
      v19 = swift_task_alloc();
      *(v0 + 424) = v19;
      *v19 = v0;
      v19[1] = sub_10108DD68;
      v20 = *(v0 + 264);

      return sub_10108C46C(v20);
    }

    sub_1010934D4(*(v0 + 264), *(v0 + 272), v15);
    URL.appendingPathComponent(_:)();

    v18 = 0;
    goto LABEL_18;
  }

  v47 = *(v0 + 416);
  v6 = *(v0 + 392);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(*(v0 + 368) + *(*(v0 + 320) + 48));
  v10 = *(v8 + 48);
  v11 = *(*(v0 + 400) + 32);
  v11(v7);
  *(v7 + v10) = v9;
  v12 = *(v7 + *(v8 + 48));
  (v11)(v47, v7, v6);
  if ((v12 & 2) == 0)
  {
    (*(*(v0 + 400) + 8))(*(v0 + 416), *(v0 + 392));
    goto LABEL_6;
  }

  v40 = *(v0 + 392);
  v39 = *(v0 + 400);
  v41 = *(v0 + 256);
  if ((v12 & 4) != 0)
  {
    (v11)(*(v0 + 256), *(v0 + 416), *(v0 + 392));
    goto LABEL_28;
  }

  (*(v39 + 8))(*(v0 + 416), v40);
LABEL_24:
  (*(v39 + 56))(v41, 1, 1, v40);
LABEL_29:

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_10108DD68(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_10108DE68, 0, 0);
}

uint64_t sub_10108DE68()
{
  v1 = v0[54];
  if (v1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension);
    v2 = *(v1 + OBJC_IVAR____TtC8Freeform19CRLAssetDatabaseRow_fileExtension + 8);

    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2 = 0;
  }

  v5 = v0[51];
  v6 = v0[33];
  sub_1010934D4(v6, v3, v2);

  URL.appendingPathComponent(_:)();

  sub_10108B1E0(v6, v5, v4);

  v7 = sub_10108C934();
  v8 = v0[50];
  v24 = v0[49];
  v25 = v0[51];
  v9 = v0[44];
  v11 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v13 = v0[39];
  v23 = v0[37];
  v14 = v0[33];
  v27 = v7 & 1;
  if (v7)
  {
    v15 = 6;
  }

  else
  {
    v15 = 2;
  }

  v16 = v15 | v4;
  v26 = *(v0[36] + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
  os_unfair_lock_lock(*(v26 + 16));
  (*(v12 + 16))(v13, v14, v23);
  v17 = *(v11 + 48);
  (*(v8 + 16))(v9, v25, v24);
  *(v9 + v17) = v16;
  (*(v10 + 56))(v9, 0, 1, v11);
  swift_beginAccess();
  sub_100BC2038(v9, v13);
  swift_endAccess();
  os_unfair_lock_unlock(*(v26 + 16));
  v18 = v0[50];
  v19 = v0[49];
  v20 = v0[32];
  if (v27)
  {
    (*(v18 + 32))(v20, v0[51], v19);
    (*(v18 + 56))(v20, 0, 1, v19);
  }

  else
  {
    (*(v18 + 8))(v0[51], v19);
    (*(v18 + 56))(v20, 1, 1, v19);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10108E2AC(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, unint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v64 = a2;
  v7 = v6;
  v54 = a6;
  v55 = a5;
  v57 = a3;
  v53 = a1;
  v9 = type metadata accessor for URL();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v52 - v13;
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = (&v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(v7 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_writeAssetFileQueue);
  *v23 = v24;
  (*(v20 + 104))(v23, enum case for DispatchPredicate.onQueue(_:), v19, v21);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v56 = a4;
    v58 = v11;
    if (qword_1019F22C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v26 = static OS_os_log.assetManagement;
  v65 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v28 = v64;
  v29 = UUID.uuidString.getter();
  v31 = v30;
  *(inited + 56) = &type metadata for String;
  v62 = sub_1000053B0();
  *(inited + 64) = v62;
  *(inited + 32) = v29;
  *(inited + 40) = v31;
  v32 = static os_log_type_t.default.getter();
  v59 = v26;
  sub_100005404(v26, &_mh_execute_header, v32, "CRLAssetFileManager _writeAssetFile() assetUUID: %@", 51, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v33 = *(v66 + 56);
  v34 = v18;
  v33(v18, 1, 1, v67);
  v35 = v63;
  sub_1010898C8();
  if (v35)
  {
    v36 = v62;
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v43 = Error.publicDescription.getter(v69, v70);
    *(v42 + 56) = &type metadata for String;
    *(v42 + 64) = v36;
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    swift_getErrorValue();
    v45 = Error.fullDescription.getter(v68);
    *(v42 + 96) = &type metadata for String;
    *(v42 + 104) = v36;
    *(v42 + 72) = v45;
    *(v42 + 80) = v46;
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v59, &_mh_execute_header, v47, "Failed to write asset file with error: %{public}@ <%@>", 54, 2, v42);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v38 = v60;
    sub_10000BE14(v34, v60, &unk_1019F33C0);
    v49 = v66;
    v48 = v67;
    if ((*(v66 + 48))(v38, 1, v67) == 1)
    {
      sub_10000CAAC(v38, &unk_1019F33C0);
    }

    else
    {
      v50 = v58;
      (*(v49 + 32))(v58, v38, v48);
      v38 = [objc_opt_self() defaultManager];
      sub_101089214();

      (*(v49 + 8))(v50, v48);
    }

    swift_willThrow();
    sub_10000CAAC(v34, &unk_1019F33C0);
  }

  else
  {
    sub_1010934D4(v28, v57, v56);
    URL.appendingPathComponent(_:)();

    v37 = sub_10108C934();
    sub_10000CAAC(v18, &unk_1019F33C0);
    if (v37)
    {
      LOBYTE(v38) = 0;
      v40 = v66;
      v39 = v67;
      v41 = v61;
    }

    else
    {
      v64 = v33;
      v40 = v66;
      v39 = v67;
      v41 = v61;
      (*(v66 + 16))(v34, v61, v67);
      v64(v34, 0, 1, v39);
      v55(v41);
      sub_10000CAAC(v34, &unk_1019F33C0);
      LOBYTE(v38) = 1;
    }

    (*(v40 + 32))(v53, v41, v39);
  }

  return v38 & 1;
}

void sub_10108EA70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, char *, uint64_t), void (*a6)(void, void, void), uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v88 = a7;
  v89 = a8;
  v86 = a5;
  v87 = a6;
  v76 = a1;
  v77 = a2;
  v12 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v12 - 8);
  v75 = v74 - v13;
  v14 = sub_1005B981C(&qword_101A295B0);
  __chkstk_darwin(v14);
  v16 = v74 - v15;
  v17 = type metadata accessor for URL();
  v83 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v82 = *(v20 - 8);
  __chkstk_darwin(v20);
  v80 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v85 = v74 - v23;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = Strong;
    v78 = v19;
    v79 = v17;
    v81 = v20;
    v25 = String._bridgeToObjectiveC()();
    v26 = [v25 pathExtension];
    v74[3] = a3;
    v27 = v26;

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v74[2] = a4;
    __chkstk_darwin(v31);
    v32 = v87;
    v74[-8] = v86;
    v74[-7] = v32;
    v74[-6] = v9;
    v74[-5] = v28;
    v34 = v88;
    v33 = v89;
    v74[-4] = v30;
    v74[-3] = v34;
    v74[-2] = v33;
    __chkstk_darwin(v35);
    v74[-2] = sub_101093DB0;
    v74[-1] = v36;
    v37 = v91;
    OS_dispatch_queue.sync<A>(execute:)();
    if (v37)
    {
    }

    else
    {
      v89 = v9;
      v61 = *(v14 + 48);
      LODWORD(v91) = v16[*(v14 + 64)];
      v62 = v82;
      v63 = v85;
      v87 = *(v82 + 32);
      v88 = v82 + 32;
      v87(v85, v16, v81);
      v64 = v83;
      v86 = *(v83 + 32);
      v74[1] = v83 + 32;
      v65 = v86(v78, &v16[v61], v79);
      __chkstk_darwin(v65);
      v74[-4] = v66;
      v74[-3] = v63;
      v74[-2] = v28;
      v74[-1] = v30;
      OS_dispatch_queue.sync<A>(execute:)();

      v91 = *(v89 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
      os_unfair_lock_lock(v91[2]);
      (*(v62 + 16))(v80, v85, v81);
      v67 = sub_1005B981C(&qword_1019FBED8);
      v68 = *(v67 + 48);
      v69 = v75;
      v71 = v78;
      v70 = v79;
      (*(v64 + 16))(v75, v78, v79);
      *(v69 + v68) = 7;
      (*(*(v67 - 8) + 56))(v69, 0, 1, v67);
      swift_beginAccess();
      sub_100BC2038(v69, v80);
      swift_endAccess();
      os_unfair_lock_unlock(v91[2]);
      v72 = v84;
      v73 = v85;
      sub_101093954(v85, v84);

      v87(v76, v73, v81);
      v86(v77, v71, v70);
    }
  }

  else
  {
    v91 = objc_opt_self();
    v38 = [(os_unfair_lock_t *)v91 _atomicIncrementAssertCount];
    v90 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v90);
    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v38;
    v47 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v47;
    v48 = sub_1005CF04C();
    *(inited + 104) = v48;
    *(inited + 72) = v39;
    *(inited + 136) = &type metadata for String;
    v49 = sub_1000053B0();
    *(inited + 112) = v42;
    *(inited + 120) = v44;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v49;
    *(inited + 152) = 373;
    v50 = v90;
    *(inited + 216) = v47;
    *(inited + 224) = v48;
    *(inited + 192) = v50;
    v51 = v39;
    v52 = v50;
    v53 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v54 = static os_log_type_t.error.getter();
    sub_100005404(v45, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v55 = swift_allocObject();
    v55[2] = 8;
    v55[3] = 0;
    v55[4] = 0;
    v55[5] = 0;
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    [(os_unfair_lock_t *)v91 handleFailureInFunction:v57 file:v58 lineNumber:373 isFatal:0 format:v59 args:v56];

    sub_1007348E0();
    swift_allocError();
    *v60 = 0xD000000000000028;
    v60[1] = 0x80000001015624C0;
    swift_willThrow();
  }
}

uint64_t sub_10108F440(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, void (*a8)(char *), uint64_t a9)
{
  v15 = a3();
  if (!v9)
  {
    v15 = sub_10108E2AC(a2, a1, a6, a7, a8, a9);
  }

  return v15 & 1;
}

uint64_t sub_10108F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v65 = a2;
  v66 = a6;
  v63 = a5;
  v64 = a4;
  v61 = a3;
  v62 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v67 = *(v14 - 8);
  v68 = v14;
  __chkstk_darwin(v14);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&unk_101A1B440);
  __chkstk_darwin(v17);
  v19 = (v60 - v18);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v60[1] = *&v8[OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_writeAssetFileQueue];
    v22 = swift_allocObject();
    v24 = v61;
    v23 = v62;
    v61 = v11;
    v25 = a8;
    v27 = v64;
    v26 = v65;
    v22[2] = v24;
    v22[3] = v27;
    v22[4] = v23;
    v22[5] = v26;
    v28 = v63;
    v22[6] = v8;
    v22[7] = v28;
    v22[8] = v66;
    v22[9] = v21;
    v22[10] = a7;
    v22[11] = v25;
    v71[4] = sub_101093C3C;
    v71[5] = v22;
    v71[0] = _NSConcreteStackBlock;
    v71[1] = *"";
    v71[2] = sub_100007638;
    v71[3] = &unk_1018AFF80;
    v29 = _Block_copy(v71);

    v30 = v8;

    v31 = v21;

    static DispatchQoS.unspecified.getter();
    v70 = _swiftEmptyArrayStorage;
    sub_10001F75C(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    v32 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v69 + 8))(v13, v32);
    v67[1](v16, v68);
  }

  else
  {
    v66 = v17;
    v67 = v19;
    v68 = a7;
    v69 = a8;
    v34 = objc_opt_self();
    v35 = [v34 _atomicIncrementAssertCount];
    v71[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v71);
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
    v45 = sub_1005CF04C();
    *(inited + 104) = v45;
    *(inited + 72) = v36;
    *(inited + 136) = &type metadata for String;
    v46 = sub_1000053B0();
    *(inited + 112) = v39;
    *(inited + 120) = v41;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v46;
    *(inited + 152) = 431;
    v47 = v71[0];
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

    [v34 handleFailureInFunction:v54 file:v55 lineNumber:431 isFatal:0 format:v56 args:v53];

    sub_1007348E0();
    v57 = swift_allocError();
    *v58 = 0xD000000000000028;
    v58[1] = 0x80000001015624C0;
    v59 = v67;
    *v67 = v57;
    swift_storeEnumTagMultiPayload();
    v68(v59);
    return sub_10000CAAC(v59, &unk_101A1B440);
  }
}

uint64_t sub_10108FC70(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(char *), void (*a7)(char *, uint64_t, uint64_t), void *a8, uint64_t a9, uint64_t a10)
{
  v61 = a8;
  v64 = a7;
  v63 = a6;
  v67 = a5;
  v68 = a4;
  v66 = a3;
  v72 = a1;
  v74 = a10;
  v73 = a9;
  v71 = sub_1005B981C(&unk_101A1B440);
  __chkstk_darwin(v71);
  v70 = &v55 - v10;
  v11 = type metadata accessor for URL();
  v65 = *(v11 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v62 = &v55 - v14;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = __chkstk_darwin(v21);
  v69 = (&v55 - v23);
  v72(v22);
  v58 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v17;
  v60 = v19;
  v72 = v18;
  v24 = v65;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v25 pathExtension];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = v62;
  v31 = sub_10108E2AC(v62, v69, v27, v29, v63, v64);
  v32 = v24;
  v64 = *(v24 + 32);
  LODWORD(v71) = v31;
  v33 = v59;
  v56 = v11;
  v64(v59, v30, v11);
  v34 = v60;
  (*(v60 + 16))(v58, v69, v72);
  v35 = v57;
  (*(v32 + 16))(v57, v33, v11);
  v36 = v34;
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v20 + *(v32 + 80) + v37) & ~*(v32 + 80);
  v39 = (v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
  v70 = v27;
  v41 = swift_allocObject();
  v63 = v29;
  v42 = v41;
  v43 = v67;
  *(v41 + 16) = v67;
  (*(v36 + 32))(v41 + v37, v58, v72);
  v44 = v42 + v38;
  v45 = v56;
  v64(v44, v35, v56);
  v46 = (v42 + v39);
  v47 = v68;
  *v46 = v66;
  v46[1] = v47;
  v48 = v61;
  *(v42 + v40) = v61;
  v49 = v42 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8);
  v50 = v74;
  *v49 = v73;
  *(v49 + 8) = v50;
  *(v49 + 16) = v71 & 1;
  v51 = v43;

  v52 = v48;

  v53 = v69;
  sub_100E2D30C(v69, v70, v63, sub_101093C74, v42);

  (*(v65 + 8))(v59, v45);
  return (*(v60 + 8))(v53, v72);
}

uint64_t sub_1010903CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void (*a9)(void *), uint64_t a10, unsigned __int8 a11)
{
  v69 = a7;
  v74 = a4;
  v73 = a10;
  v72 = a9;
  v71 = sub_1005B981C(&unk_101A1B440);
  __chkstk_darwin(v71);
  v18 = (&v60 - v17);
  v19 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v19 - 8);
  v21 = &v60 - v20;
  v22 = type metadata accessor for UUID();
  __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a5;
  if (a2)
  {
    LODWORD(v69) = a11;
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v27 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    v29 = UUID.uuidString.getter();
    v31 = v30;
    *(inited + 56) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 64) = v32;
    *(inited + 32) = v29;
    *(inited + 40) = v31;
    swift_getErrorValue();
    v33 = Error.publicDescription.getter(v76, v77);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v32;
    *(inited + 72) = v33;
    *(inited + 80) = v34;
    swift_getErrorValue();
    v35 = Error.fullDescription.getter(v75);
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v32;
    *(inited + 112) = v35;
    *(inited + 120) = v36;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v27, &_mh_execute_header, v37, "CRLAssetFileManager _saveAsset() assetUUID: %@ - saveAssetEntry FAILED %{public}@ <%@>", 86, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    if (v69)
    {
      v38 = [objc_opt_self() defaultManager];
      sub_101089214();
    }

    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
  }

  else
  {
    v68 = a8;
    v39 = a5;
    v40 = *(a3 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
    v41 = v23;
    v42 = v24;
    os_unfair_lock_lock(*(v40 + 16));
    v43 = *(v42 + 16);
    v66 = v42 + 16;
    v67 = v41;
    v65 = v43;
    v43(v26, v74, v41);
    v44 = sub_1005B981C(&qword_1019FBED8);
    v45 = *(v44 + 48);
    v46 = type metadata accessor for URL();
    v47 = *(v46 - 8);
    v63 = *(v47 + 16);
    v64 = v46;
    v62 = v47 + 16;
    v63(v21, v39);
    *&v21[v45] = 7;
    (*(*(v44 - 8) + 56))(v21, 0, 1, v44);
    swift_beginAccess();
    sub_100BC2038(v21, v26);
    swift_endAccess();
    os_unfair_lock_unlock(*(v40 + 16));
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0);
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_10146BDE0;
    *(v49 + 56) = &type metadata for String;
    v50 = sub_1000053B0();
    *(v49 + 64) = v50;
    *(v49 + 32) = a6;
    v61 = a6;
    v51 = v69;
    *(v49 + 40) = v69;

    v52 = v74;
    v53 = UUID.uuidString.getter();
    *(v49 + 96) = &type metadata for String;
    *(v49 + 104) = v50;
    *(v49 + 72) = v53;
    *(v49 + 80) = v54;
    v55 = static os_log_type_t.info.getter();
    sub_100005404(v48, &_mh_execute_header, v55, "CRLAssetFileManager _saveAsset() SUCCESS filename: %@ assetUUID: %@", 67, 2, v49);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    sub_101093954(v52, v68);
    v56 = sub_1005B981C(&qword_101A1B428);
    v57 = (v18 + *(v56 + 48));
    v58 = *(v56 + 64);
    v65(v18, v52, v67);
    *v57 = v61;
    v57[1] = v51;
    (v63)(v18 + v58, v70, v64);
    swift_storeEnumTagMultiPayload();
  }

  v72(v18);
  return sub_10000CAAC(v18, &unk_101A1B440);
}

uint64_t sub_1010909D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a2;
  v35 = a4;
  v31 = a3;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v33 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v29 - v11;
  v13 = sub_1005B981C(qword_101A295B8);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v29 - v16;
  (*(v14 + 16))(v29 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = *(v14 + 32);
  v32 = v19;
  v20(v19 + v18, v17, v13);
  v29[1] = a5;
  if (a5)
  {
    v30 = a5;
    v21 = v31;
  }

  else
  {
    v21 = v31;
    v35 = URL.lastPathComponent.getter();
    v30 = v22;
  }

  v23 = *(v8 + 16);
  v23(v12, v21, v7);
  v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v31 = swift_allocObject();
  v25 = *(v8 + 32);
  v25(v31 + v24, v12, v7);
  v26 = v33;
  v23(v33, v21, v7);
  v27 = swift_allocObject();
  v25(v27 + v24, v26, v7);

  sub_10108F508(v35, v30, sub_101093F3C, v31, sub_101093FA8, v27, sub_101093EC0, v32);
}

uint64_t sub_101090D00(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A1B428);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  v5 = sub_1005B981C(&unk_101A1B440);
  __chkstk_darwin(v5);
  v7 = (v9 - v6);
  sub_10000BE14(a1, v9 - v6, &unk_101A1B440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9[1] = *v7;
    sub_1005B981C(qword_101A295B8);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10003DFF8(v7, v4, &qword_101A1B428);
    sub_1005B981C(qword_101A295B8);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_101090E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SHA256();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v19 = *(v8 - 8);
  v20 = v8;
  __chkstk_darwin(v8);
  v22 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  sub_10001F75C(&qword_1019F4570, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_101093094(v14);
  v15 = (v5 + 8);
  if (v2)
  {
    (*v15)(v7, v4);
  }

  else
  {
    dispatch thunk of HashFunction.finalize()();
    (*v15)(v7, v4);
    type metadata accessor for UUID();
    v16 = v22;
    SHA256Digest.withUnsafeBytes<A>(_:)();
    (*(v19 + 8))(v16, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

id sub_101091170()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  URL._bridgeToObjectiveC()(v4);
  v6 = v5;
  v10 = 0;
  v7 = [v0 copyItemAtURL:v3 toURL:v5 error:&v10];

  if (v7)
  {
    return v10;
  }

  v9 = v10;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

id sub_101091278(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v5 = v4;
  v33 = a4;
  v34 = a3;
  v7 = type metadata accessor for CocoaError.Code();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (&v30 - v10);
  URL._bridgeToObjectiveC()(v10);
  v13 = v12;
  v32 = a2;
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  v35 = 0;
  v17 = [v5 moveItemAtURL:v13 toURL:v15 error:&v35];

  if (!v17)
  {
    v31 = v5;
    v19 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    static CocoaError.fileNoSuchFile.getter();
    sub_10001F75C(&unk_101A0B060, &type metadata accessor for CocoaError.Code);
    v20 = static _ErrorCodeProtocol.~= infix(_:_:)();

    v21 = *(v8 + 8);
    v21(v11, v7);
    if (v20 & 1) != 0 || (swift_errorRetain(), static CocoaError.fileReadNoSuchFile.getter(), v22 = static _ErrorCodeProtocol.~= infix(_:_:)(), , v21(v11, v7), (v22))
    {
      if (v34)
      {
LABEL_6:

        return v17;
      }
    }

    else
    {
      swift_errorRetain();
      static CocoaError.fileWriteFileExists.getter();
      v23 = static _ErrorCodeProtocol.~= infix(_:_:)();

      v21(v11, v7);
      if (v23)
      {
        if (v33)
        {
          goto LABEL_6;
        }
      }

      else
      {
        swift_errorRetain();
        static CocoaError.fileWriteUnknown.getter();
        v24 = static _ErrorCodeProtocol.~= infix(_:_:)();

        v21(v11, v7);
        if (v24)
        {
          if (v34)
          {
            URL.path.getter();
            v25 = String._bridgeToObjectiveC()();

            v26 = [v31 fileExistsAtPath:v25];

            if ((v26 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if (v33)
          {
            URL.path.getter();
            v27 = String._bridgeToObjectiveC()();

            v28 = [v31 fileExistsAtPath:v27];

            if (v28)
            {
              goto LABEL_6;
            }
          }
        }
      }
    }

    swift_willThrow();
    return v17;
  }

  v18 = v35;
  return v17;
}

void sub_101091618(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v4 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = v47;
  sub_1010898C8();
  if (!v17)
  {
    v38 = v7;
    v39 = v6;
    v40 = v9;
    v41 = 0;
    v42 = v11;
    v47 = v10;
    v18 = v46;
    UUID.uuidString.getter();
    URL.appendingPathComponent(_:)();

    sub_1010934D4(v18, v44, v45);
    URL.appendingPathComponent(_:)();

    v45 = v3;
    sub_10108B1E0(v18, v14, 1);
    if (qword_1019F22C0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.assetManagement;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v21 = UUID.uuidString.getter();
    v23 = v22;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v21;
    *(inited + 40) = v23;
    v24 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v24, "CRLAssetFileManager moveDeletedAssetFileToAssetsDirectory() assetUUID: %@", 73, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v25 = [objc_opt_self() defaultManager];
    v26 = v41;
    v27 = sub_101091278(v16, v14, 1, 1);
    if (v26)
    {
    }

    else
    {
      v28 = v27;

      if (v28)
      {
        v29 = v45;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = Strong;
          v44 = *(v29 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
          os_unfair_lock_lock(*(v44 + 16));
          (*(v43 + 16))(v40, v18, v38);
          v32 = sub_1005B981C(&qword_1019FBED8);
          v33 = *(v32 + 48);
          v34 = v39;
          (*(v42 + 16))(v39, v14, v47);
          *(v34 + v33) = 7;
          (*(*(v32 - 8) + 56))(v34, 0, 1, v32);
          swift_beginAccess();
          sub_100BC2038(v34, v40);
          swift_endAccess();
          os_unfair_lock_unlock(*(v44 + 16));
          sub_101093954(v18, v31);
        }

        else
        {
          sub_1007348E0();
          swift_allocError();
          *v35 = 0xD000000000000028;
          v35[1] = 0x80000001015624C0;
          swift_willThrow();
        }
      }
    }

    v36 = *(v42 + 8);
    v37 = v47;
    v36(v14, v47);
    v36(v16, v37);
  }
}

void sub_101091B24()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for URL();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v7 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v39 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = v32 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsQueue);
  *v14 = v15;
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      static Date.distantFuture.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      (*(v2 + 8))(v4, v1);
      return;
    }

    v37 = v0;
    v32[0] = __chkstk_darwin(Strong);
    v32[-2] = v32[0];
    v32[-1] = 0x40CC200000000000;
    sub_1005B981C(&qword_101A295A8);
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = 0;
    v20 = v44 + 56;
    v19 = *(v44 + 56);
    v43 = v44;
    v21 = 1 << *(v44 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v19;
    v24 = (v21 + 63) >> 6;
    v35 = v7 + 16;
    v36 = OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_deletedAssetsDirectoryURL;
    v33 = (v5 + 8);
    v34 = v7 + 32;
    v32[1] = (v7 + 8);
    v26 = v39;
    v25 = v40;
    if ((v22 & v19) != 0)
    {
      do
      {
        v27 = v18;
LABEL_11:
        v28 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v29 = v38;
        (*(v7 + 16))(v38, *(v43 + 48) + *(v7 + 72) * (v28 | (v27 << 6)), v25);
        (*(v7 + 32))(v26, v29, v25);
        UUID.uuidString.getter();
        v30 = v41;
        URL.appendingPathComponent(_:)();

        v31 = [objc_opt_self() defaultManager];
        sub_101089214();

        (*v33)(v30, v42);
        (*(v7 + 8))(v26, v25);
      }

      while (v23);
    }

    while (1)
    {
      v27 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        return;
      }

      v23 = *(v20 + 8 * v27);
      ++v18;
      if (v23)
      {
        v18 = v27;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_101092054()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_purgeDeletedAssetsWorkItem) = 0;

    sub_101091B24();
    if (v2 <= 14400.0)
    {
      sub_10001FA98();
    }
  }
}

uint64_t sub_1010920D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_1010920F4, 0, 0);
}

uint64_t sub_1010920F4()
{
  v1 = sub_100DCB394();
  *(v0 + 56) = v1;

  return _swift_task_switch(sub_101092160, v1, 0);
}

uint64_t sub_101092160()
{
  v1 = v0[7];
  swift_beginAccess();
  if (*(*(v1 + 272) + 16))
  {
    v2 = v0[6];

    sub_10003E994(v2);
    if (v3)
    {

      sub_100731D28(0);
    }

    else
    {
    }
  }

  sub_10072F854(v0[6]);

  v4 = v0[1];

  return v4();
}

void sub_10109223C(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  v8 = v6;
  v57 = a5;
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v62 = a1;
  v10 = sub_1005B981C(&qword_101A0B040);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1010898C8();
  if (!v7)
  {
    v53 = v14;
    v54 = v13;
    v55 = v16;
    v56 = v12;
    v17 = v57;
    v18 = v62;
    sub_1010934D4(v62, v58, v59);
    URL.appendingPathComponent(_:)();

    sub_10108B1E0(v18, a6, 1);
    v19 = [objc_opt_self() defaultManager];
    v20 = sub_101091278(v60, a6, 0, 1);

    if (v20)
    {
      v60 = *(v8 + OBJC_IVAR____TtC8Freeform19CRLAssetFileManager_lock);
      os_unfair_lock_lock(*(v60 + 16));
      v21 = v55;
      (*(v53 + 16))(v55, v18, v54);
      v22 = sub_1005B981C(&qword_1019FBED8);
      v23 = *(v22 + 48);
      v24 = type metadata accessor for URL();
      v58 = *(v24 - 8);
      v59 = a6;
      v25 = *(v58 + 16);
      v26 = v56;
      v54 = v24;
      v25(v56, a6);
      *(v26 + v23) = 7;
      (*(*(v22 - 8) + 56))(v26, 0, 1, v22);
      swift_beginAccess();
      sub_100BC2038(v26, v21);
      swift_endAccess();
      os_unfair_lock_unlock(*(v60 + 16));
      if (v17)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v28 = Strong;
          sub_101093954(v62, Strong);
        }

        else
        {
          v62 = objc_opt_self();
          v29 = [v62 _atomicIncrementAssertCount];
          v61 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v61);
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
          *(inited + 152) = 695;
          v41 = v61;
          *(inited + 216) = v38;
          *(inited + 224) = v39;
          *(inited + 192) = v41;
          v42 = v30;
          v43 = v41;
          v44 = static os_log_type_t.error.getter();
          sub_100005404(v36, &_mh_execute_header, v44, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
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
          v50 = String._bridgeToObjectiveC()();

          [v62 handleFailureInFunction:v48 file:v49 lineNumber:695 isFatal:0 format:v50 args:v47];

          sub_1007348E0();
          swift_allocError();
          *v51 = 0xD000000000000028;
          v51[1] = 0x80000001015624C0;
          swift_willThrow();
          (*(v58 + 8))(v59, v54);
        }
      }
    }
  }
}

id sub_101092994()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAssetFileManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_101092AE4()
{
  result = qword_101A29588;
  if (!qword_101A29588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A29588);
  }

  return result;
}

unint64_t sub_101092B3C()
{
  result = qword_101A29590;
  if (!qword_101A29590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A29590);
  }

  return result;
}

unint64_t sub_101092B94()
{
  result = qword_101A29598;
  if (!qword_101A29598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A29598);
  }

  return result;
}

unint64_t sub_101092BEC()
{
  result = qword_101A295A0;
  if (!qword_101A295A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A295A0);
  }

  return result;
}

uint64_t sub_101092C40(uint64_t a1, void *a2)
{
  URL.path.getter();
  v5 = String._bridgeToObjectiveC()();

  v23 = 0;
  v6 = [a2 contentsOfDirectoryAtPath:v5 error:&v23];

  v7 = v23;
  if (v6)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    __chkstk_darwin(v10);
    v22[2] = a2;
    v22[3] = a1;
    sub_1012E37B8(sub_101093EA4, v22, v8);
    if (!v2)
    {
    }
  }

  else
  {
    v11 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_getErrorValue();
  v14 = Error.publicDescription.getter(v22[10], v22[11]);
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = sub_1000053B0();
  *(inited + 64) = v17;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v18 = Error.fullDescription.getter(v22[6]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v20, "Failed to remove all assets with error %{public}@ <%@>", 54, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

id sub_101092F00(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  URL.path.getter();
  (*(v4 + 8))(v6, v3);
  v7 = String._bridgeToObjectiveC()();

  v10 = 0;
  LOBYTE(a2) = [a2 removeItemAtPath:v7 error:&v10];

  if (a2)
  {
    return v10;
  }

  v9 = v10;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_101093094(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100006370(0, &qword_101A1CCD8);
  (*(v4 + 16))(v6, a1, v3);
  v7 = sub_1010895F4(v6);
  if (!v1)
  {
    v8 = v7;
    v9 = NSFileHandle.read(upToCount:)();
    for (i = v10; ; i = v15)
    {
      if (i >> 60 == 15)
      {
LABEL_27:
        [v8 closeFile];

        return;
      }

      v16 = i >> 62;
      if ((i >> 62) > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_26;
        }

        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        v20 = __OFSUB__(v18, v19);
        v17 = v18 - v19;
        if (v20)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
        }
      }

      else if (v16)
      {
        LODWORD(v17) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_29;
        }

        v17 = v17;
      }

      else
      {
        v17 = BYTE6(i);
      }

      if (v17 < 1)
      {
LABEL_26:
        sub_100025870(v9, i);
        goto LABEL_27;
      }

      if (v16 == 2)
      {
        v12 = v1;
        v24 = *(v9 + 16);
        v23 = *(v9 + 24);
        v22 = v9;

        if (__DataStorage._bytes.getter() && __OFSUB__(v24, __DataStorage._offset.getter()))
        {
          goto LABEL_32;
        }

        if (__OFSUB__(v23, v24))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v16 != 1)
        {
          v12 = v1;
          *&v25[10] = v9;
          v26 = i;
          v27 = BYTE2(i);
          v28 = BYTE3(i);
          v29 = BYTE4(i);
          v30 = BYTE5(i);
          v13 = v9;
          type metadata accessor for SHA256();
          sub_10001F75C(&qword_1019F4570, &type metadata accessor for SHA256);
          dispatch thunk of HashFunction.update(bufferPointer:)();
          sub_100025870(v13, i);
          v14 = v13;
          goto LABEL_4;
        }

        v21 = v9;
        if (v9 >> 32 < v9)
        {
          goto LABEL_30;
        }

        v22 = v9;
        v12 = v1;

        if (__DataStorage._bytes.getter() && __OFSUB__(v21, __DataStorage._offset.getter()))
        {
          goto LABEL_33;
        }
      }

      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_10001F75C(&qword_1019F4570, &type metadata accessor for SHA256);
      dispatch thunk of HashFunction.update(bufferPointer:)();
      sub_100025870(v22, i);
      v14 = v22;
LABEL_4:
      sub_100025870(v14, i);
      v1 = v12;
      v9 = NSFileHandle.read(upToCount:)();
    }
  }
}

uint64_t sub_1010934D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = UUID.uuidString.getter();
  if (a3)
  {
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = result;
      v8 = String._bridgeToObjectiveC()();
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 stringByAppendingPathExtension:v9];

      result = v7;
      if (v10)
      {

        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }
  }

  return result;
}

uint64_t sub_1010935A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = &qword_1019F6990;
  v11 = sub_1005B981C(&qword_1019F6990);
  v46 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v45 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = v44 - v14;
  v15 = sub_1005B981C(&qword_101A21DE0);
  __chkstk_darwin(v15 - 8);
  v17 = (v44 - v16);
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v47 = a1;
  v48 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v49 = v19;
  v50 = 0;
  v51 = v22 & v20;
  v52 = a2;
  v53 = a3;

  v44[1] = a3;

  while (1)
  {
    sub_100E90C10(v17);
    v25 = sub_1005B981C(&qword_101A22780);
    if ((*(*(v25 - 8) + 48))(v17, 1, v25) == 1)
    {
      sub_100035F8C(v47, v48, v49, v50, v51);
    }

    v27 = *v17;
    v26 = v17[1];
    v28 = v10;
    sub_10003DFF8(v17 + *(v25 + 48), v54, v10);
    v29 = *a5;
    v31 = sub_10000BE7C(v27, v26);
    v32 = v29[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v29[3] >= v34)
    {
      if (a4)
      {
        v38 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_100AA4A54();
        v38 = *a5;
        if ((v35 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v23 = v45;
      v24 = *(v46 + 72) * v31;
      v10 = v28;
      sub_10000BE14(v38[7] + v24, v45, v28);
      sub_10000CAAC(v54, v28);

      sub_100803880(v23, v38[7] + v24);
      a4 = 1;
    }

    else
    {
      sub_100A8A448(v34, a4 & 1);
      v36 = sub_10000BE7C(v27, v26);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_21;
      }

      v31 = v36;
      v38 = *a5;
      if (v35)
      {
        goto LABEL_5;
      }

LABEL_14:
      v38[(v31 >> 6) + 8] |= 1 << v31;
      v39 = (v38[6] + 16 * v31);
      *v39 = v27;
      v39[1] = v26;
      v10 = v28;
      sub_10003DFF8(v54, v38[7] + *(v46 + 72) * v31, v28);
      v40 = v38[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_20;
      }

      v38[2] = v42;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_101093954(uint64_t a1, void *a2)
{
  v24 = a2;
  v23 = type metadata accessor for UUID();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  if (qword_1019F22C0 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.assetManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = UUID.uuidString.getter();
  v13 = v12;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v14, "CRLAssetFileManager _notifyAssetMaterialized() assetUUID: %@", 60, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = v23;
  (*(v3 + 16))(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v23);
  v17 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v24;
  *(v18 + 4) = v24;
  (*(v3 + 32))(&v18[v17], v5, v16);
  v20 = v19;
  sub_10064191C(0, 0, v8, &unk_1014C39B0, v18);
}

uint64_t sub_101093C74(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1010903CC(a1, a2 & 1, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v10 + 8), *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 16));
}

uint64_t sub_101093DE8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = sub_1005B981C(&qword_101A295B0);
  result = v4(a1, a1 + *(v5 + 48));
  if (!v2)
  {
    *(a1 + *(v5 + 64)) = result & 1;
  }

  return result;
}

uint64_t sub_101093EC0(uint64_t a1)
{
  sub_1005B981C(qword_101A295B8);

  return sub_101090D00(a1);
}

uint64_t sub_101094088@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 6) & 0xF | 0x50;
  v3 = *(result + 8) & 0x3F | 0x80;
  *a2 = *result;
  *(a2 + 4) = *(result + 4);
  *(a2 + 6) = v2;
  *(a2 + 7) = *(result + 7);
  *(a2 + 8) = v3;
  *(a2 + 9) = *(result + 9);
  *(a2 + 13) = *(result + 13);
  *(a2 + 15) = *(result + 15);
  return result;
}

uint64_t sub_1010940DC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_10109417C, v5, v4);
}

uint64_t sub_10109417C()
{
  v1 = *(v0 + 24);
  sub_1005B981C(&unk_101A19BD0);
  v2 = *(*(type metadata accessor for CRLBoardIdentifier(0) - 8) + 80);
  *(v0 + 128) = v2;
  v3 = (v2 + 32) & ~v2;
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  *(v4 + 16) = xmmword_10146C6B0;
  sub_1005F1308(v1, v4 + v3);
  *(v0 + 80) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 88) = v6;
  *(v0 + 96) = v5;

  return _swift_task_switch(sub_1010942B4, v6, v5);
}

uint64_t sub_1010942B4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 32) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_entityStore);
  *(v3 + 104) = v4;
  if (v4)
  {

    a1 = sub_10109433C;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10109433C()
{
  v1 = *(v0 + 72);
  v2 = (*(v0 + 128) + 32) & ~*(v0 + 128);
  *(v0 + 112) = sub_101280E6C(v1);
  *(v0 + 120) = 0;

  swift_setDeallocating();
  sub_10000BC24(v1 + v2, type metadata accessor for CRLBoardIdentifier);
  swift_deallocClassInstance();
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  return _swift_task_switch(sub_10109441C, v3, v4);
}

uint64_t sub_10109441C()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_101094480, v1, v2);
}

uint64_t sub_101094480()
{
  v1 = v0[14];
  v2 = v0[2];
  v3 = v0[3];

  *(swift_task_alloc() + 16) = v3;
  sub_1010AA7A8(sub_1006C3F78, v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_101094540()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1010945A4, v1, v2);
}

uint64_t sub_1010945A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_101094608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002D3D4;

  return sub_1010946B8(a1, v7, a3, &off_10188CE10);
}

uint64_t sub_1010946B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a1;
  v5[4] = a3;
  sub_1005B981C(&qword_1019F6268);
  v5[7] = swift_task_alloc();
  v6 = type metadata accessor for CRLBoardEntity();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  v5[11] = swift_task_alloc();
  _s5BoardVMa(0);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_10109484C, v8, v7);
}

uint64_t sub_10109484C()
{
  v1 = v0[11];
  (*(v0[5] + 24))(v0[4]);
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[11];

    sub_10000CAAC(v3, &unk_101A15B20);
LABEL_8:

    v9 = v0[1];

    return v9();
  }

  v4 = v0[11];
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_10000BC24(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_8;
  }

  sub_101094E60(v4, v0[12], _s5BoardVMa);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_101094A50;
  v6 = v0[12];
  v7 = v0[7];

  return sub_1010940DC(v7, v6);
}

uint64_t sub_101094A50()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_101094D00;
  }

  else
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_101094B74;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_101094B74()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];
    sub_10000BC24(v0[12], _s5BoardVMa);
    sub_10000CAAC(v4, &qword_1019F6268);
  }

  else
  {
    v5 = v0[12];
    v6 = v0[10];
    v7 = v0[6];
    v8 = v0[4];
    v9 = v0[5];
    sub_101094E60(v0[7], v6, type metadata accessor for CRLBoardEntity);
    v0[2] = v7;
    (*(*(v9 + 8) + 16))(v6, v8);
    sub_10000BC24(v6, type metadata accessor for CRLBoardEntity);
    sub_10000BC24(v5, _s5BoardVMa);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_101094D00()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  (*(v2 + 56))(v3, 1, 1, v1);
  v4 = v0[7];
  sub_10000BC24(v0[12], _s5BoardVMa);
  sub_10000CAAC(v4, &qword_1019F6268);

  v5 = v0[1];

  return v5();
}

uint64_t sub_101094E60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101094EF4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 312))();
  (*(a2 + 320))(a1, a2);
  (*(a2 + 328))(a1, a2);

  return AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
}

uint64_t sub_101094FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10002D4C8;

  return sub_1010946B8(a1, v7, a3, &off_1018A7C78);
}

unint64_t sub_1010950B8(uint64_t a1)
{
  result = sub_100B082B8();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_101095130()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Ref();
  v4 = *(v1 + 96);
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = *(v4 + 8);
  v18[0] = v2;
  v18[1] = v3;
  v19 = v7;
  v20 = WitnessTable;
  v21 = v6;
  v8 = type metadata accessor for CRDictionary();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  swift_getWitnessTable();
  v12 = type metadata accessor for Capsule();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v18 - v14;
  v16 = *(v1 + 120);
  swift_beginAccess();
  (*(v13 + 16))(v15, v0 + v16, v12);
  Capsule.root.getter();
  (*(v13 + 8))(v15, v12);
  CRDictionary.makeIterator()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1010953E4()
{
  type metadata accessor for Ref();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  swift_getWitnessTable();
  result = type metadata accessor for Capsule();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_10109553C()
{
  swift_beginAccess();
  swift_beginAccess();

  type metadata accessor for CRLCRDTMapBucket();
  swift_getWitnessTable();
  v0 = static Dictionary<>.== infix(_:_:)();

  return v0 & 1;
}

uint64_t sub_10109562C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = -1 << *(v3 + 32);
  v5 = ~v4;
  v6 = *(v3 + 64);
  v7 = -v4;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  *a1 = v3;
  a1[1] = v3 + 64;
  a1[2] = v5;
  a1[3] = 0;
  a1[4] = v8 & v6;
}

uint64_t sub_1010956A8@<X0>(void *a1@<X8>)
{
  sub_10109562C(a1);
}

uint64_t sub_101095748()
{
  v1 = *(*v0 + 120);
  type metadata accessor for Ref();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for CRDictionary();
  swift_getWitnessTable();
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1010958AC()
{
  sub_101095748();

  return swift_deallocClassInstance();
}

uint64_t sub_10109591C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_101095958(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1010959A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_101095A10(char *a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = type metadata accessor for Ref();
  v7 = *(v2 + 96);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  WitnessTable = swift_getWitnessTable();
  v40 = v5;
  v42 = v5;
  v43 = v6;
  v44 = v8;
  v45 = v9;
  v37 = swift_getWitnessTable();
  v38 = WitnessTable;
  v46 = WitnessTable;
  v47 = v37;
  v11 = type metadata accessor for CRDictionary();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = v34 - v14;
  swift_getWitnessTable();
  v15 = type metadata accessor for Capsule();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v34 - v20;
  v22 = *(a1 + 2);
  v39 = a2;
  if (v22 == *(a2 + 16))
  {
    v23 = *a1;
    v34[1] = v8;
    v24 = *(v23 + 120);
    swift_beginAccess();
    v34[0] = v9;
    v25 = *(v16 + 16);
    v25(v21, &a1[v24], v15);
    Capsule.root.getter();
    v26 = *(v16 + 8);
    v26(v21, v15);
    v27 = v39;
    v28 = *(*v39 + 120);
    swift_beginAccess();
    v25(v18, (v27 + v28), v15);
    v29 = v35;
    Capsule.root.getter();
    v26(v18, v15);
    v30 = v41;
    v31 = static CRDictionary.== infix(_:_:)();
    v32 = *(v36 + 8);
    v32(v29, v11);
    v32(v30, v11);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_101095D84()
{
  sub_101095130();
}

uint64_t sub_101095DD4(uint64_t a1, uint64_t a2, void (*a3)(void, _OWORD *))
{
  v3 = *(a1 + 96);
  v6[0] = *(a1 + 80);
  v6[1] = v3;
  a3(0, v6);
  v4 = j___ss30_copySequenceToContiguousArrayys0dE0Vy7ElementQzGxSTRzlF();

  return v4;
}

uint64_t sub_101095E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, _OWORD *))
{
  v6 = *(a4 + 96);
  v8[0] = *(a4 + 80);
  v8[1] = v6;
  a6(0, v8);
  return Sequence._copyContents(initializing:)();
}

uint64_t sub_101095EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, _OWORD *))
{
  v6 = *(a4 + 96);
  v8[0] = *(a4 + 80);
  v8[1] = v6;
  a6(0, v8);
  return Sequence.withContiguousStorageIfAvailable<A>(_:)();
}

uint64_t sub_101095FF8()
{
  v1 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID);
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8));

  return swift_deallocClassInstance();
}

void sub_1010960F0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRLBoardIdentifierStorage(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 sub_101096228@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions;
  v3 = *(v2 + 32);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10109624C()
{
  sub_100005070(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext);

  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData), *(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData + 8));
}

uint64_t sub_1010962B0()
{
  v1 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID);
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8));
  v3 = OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_persistenceContext;

  sub_100005070(v0 + v3);

  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData), *(v0 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_101096474()
{
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8));
}

uint64_t sub_1010964DC()
{
  v1 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID);
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData), *(v0 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData + 8));

  return v0;
}

uint64_t sub_1010965B8()
{
  sub_1010964DC();

  return swift_deallocClassInstance();
}

uint64_t sub_1010966A4()
{
  v1 = OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_itemUUID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_boardIdentifier);

  return swift_deallocClassInstance();
}

uint64_t sub_101096778()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLBoardIdentifierStorage(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_101096844()
{
  v1 = OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100086F34(v0 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier);

  return swift_deallocClassInstance();
}

uint64_t sub_101096928()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLBoardIdentifierStorage(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_101096A10()
{
  v1 = *v0;
  v12 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 95;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = v12;
  v4 = v1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier;
  v13._countAndFlagsBits = UUID.uuidString.getter();
  v13._object = v5;

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = (v4 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v8 = *v7;
  v9 = v7[1];

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  String.append(_:)(v13);

  return v3;
}

uint64_t sub_101096B30()
{
  v1 = *v0 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier;
  v8 = UUID.uuidString.getter();

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v4 = *v3;
  v5 = v3[1];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return v8;
}

CKRecordID sub_101096BDC()
{
  v1 = sub_100EFF9E4(*v0 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier);
  sub_100B51450();
  v2._countAndFlagsBits = UUID.uuidString.getter();
  return CKRecordID.init(recordName:zoneID:)(v2, v1);
}

void *sub_101096C40()
{
  v1 = type metadata accessor for CRLCommandBoardItemChangeContext(0);
  __chkstk_darwin(v1);
  v3 = &v31[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for CRLBoardItemDeltaChange(0);
  __chkstk_darwin(v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  __chkstk_darwin(v7);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10109A590(v0, v9, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v10 = type metadata accessor for CRLBoardItemPeerSyncUpdate;
    v11 = v9;
LABEL_3:
    sub_10003D81C(v11, v10);
    return 0;
  }

  sub_10109A7E4(v9, v6, type metadata accessor for CRLBoardItemDeltaChange);
  if (*&v6[*(v4 + 36) + 8] >> 60 == 15)
  {
    if (*&v6[*(v4 + 40) + 8] >> 60 == 15)
    {
      v10 = type metadata accessor for CRLBoardItemDeltaChange;
      v11 = v6;
      goto LABEL_3;
    }

    v37 = _swiftEmptySetSingleton;
  }

  else
  {
    v37 = _swiftEmptySetSingleton;
    v33 = v1;
    v34 = sub_10109A74C(&qword_101A26200, type metadata accessor for CRLCommandBoardItemChangeContext);
    v13 = sub_10002C58C(v32);
    v14 = *(sub_1005B981C(&qword_101A26208) + 48);
    v15 = type metadata accessor for UUID();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v13, v6, v15);
    *(v13 + v14) = 0;
    v17 = sub_100020E58(v32, v33);
    v18 = __chkstk_darwin(v17);
    (*(v20 + 16))(&v31[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], v18);
    sub_10109A74C(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
    AnyHashable.init<A>(_:)();
    v21 = sub_100020E58(v32, v33);
    sub_10109A590(v21, v3, type metadata accessor for CRLCommandBoardItemChangeContext);
    (*(v16 + 8))(v3, v15);
    v36 = 4;
    sub_100005070(v32);
    sub_10063FD8C(v35, v31);
    sub_100E6CD34(v32, v31);
    sub_10063FDE8(v32);
    sub_10063FDE8(v35);
    if (*&v6[*(v4 + 40) + 8] >> 60 == 15)
    {
      goto LABEL_11;
    }
  }

  v33 = v1;
  v34 = sub_10109A74C(&qword_101A26200, type metadata accessor for CRLCommandBoardItemChangeContext);
  v22 = sub_10002C58C(v32);
  v23 = *(sub_1005B981C(&qword_101A26208) + 48);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v22, v6, v24);
  *(v22 + v23) = 1;
  v26 = sub_100020E58(v32, v33);
  v27 = __chkstk_darwin(v26);
  (*(v29 + 16))(&v31[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)], v27);
  sub_10109A74C(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
  AnyHashable.init<A>(_:)();
  v30 = sub_100020E58(v32, v33);
  sub_10109A590(v30, v3, type metadata accessor for CRLCommandBoardItemChangeContext);
  (*(v25 + 8))(v3, v24);
  v36 = 4;
  sub_100005070(v32);
  sub_10063FD8C(v35, v31);
  sub_100E6CD34(v32, v31);
  sub_10063FDE8(v32);
  sub_10063FDE8(v35);
LABEL_11:
  sub_10003D81C(v6, type metadata accessor for CRLBoardItemDeltaChange);
  return v37;
}

uint64_t sub_1010972A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardItemDeltaChange(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10109A590(v2, v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v21 = type metadata accessor for UUID();
      (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
      return sub_10003D81C(v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    }

    else
    {
      sub_10003D81C(v12, type metadata accessor for CRLBoardItemPeerSyncUpdate);
      v17 = type metadata accessor for UUID();
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10109A7E4(v12, v6, type metadata accessor for CRLBoardItemDeltaChange);
      v14 = type metadata accessor for UUID();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v6, v14);
      sub_10003D81C(v6, type metadata accessor for CRLBoardItemDeltaChange);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }

    else
    {
      (*(**v12 + 264))();

      v22 = type metadata accessor for UUID();
      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }
  }

  else
  {
    v18 = sub_1005B981C(&qword_101A290D0);
    sub_10002640C(*&v12[*(v18 + 48) + 40], *&v12[*(v18 + 48) + 48]);
    sub_10109A7E4(v12, v9, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    (*(v20 + 16))(a1, v9, v19);
    sub_10003D81C(v9, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    return (*(v20 + 56))(a1, 0, 1, v19);
  }
}

void sub_1010976B8(char *a1, uint64_t a2, int a3)
{
  v5 = v4;
  v306 = a3;
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v293 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v305 = &v293 - v12;
  v317 = type metadata accessor for CRLBoardItemDeltaChange(0);
  __chkstk_darwin(v317);
  v14 = &v293 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v330 = &v293 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v314 = &v293 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v327 = &v293 - v21;
  __chkstk_darwin(v22);
  v313 = &v293 - v23;
  __chkstk_darwin(v24);
  v324 = &v293 - v25;
  __chkstk_darwin(v26);
  v304 = &v293 - v27;
  __chkstk_darwin(v28);
  v303 = &v293 - v29;
  __chkstk_darwin(v30);
  v331 = &v293 - v31;
  v32 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v335 = *(v32 - 8);
  v336 = v32;
  __chkstk_darwin(v32);
  v338 = &v293 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = *(v3 + OBJC_IVAR____TtC8Freeform30CRLCommandApplyPeerSyncUpdates_updates);
  v34 = *(v337 + 16);
  v329 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v302 = OBJC_IVAR____TtC8Freeform8CRLBoard_store;
  v316 = OBJC_IVAR____TtC8Freeform8CRLBoard_objectUUIDMap;
  LODWORD(v35) = swift_beginAccess();
  v334 = v34;
  if (!v34)
  {
    return;
  }

  v307 = v10;
  v36 = 0;
  v321 = (v18 + 32);
  v344 = (v18 + 8);
  v308 = v18 + 16;
  v315 = (v18 + 48);
  v322 = xmmword_10146C6B0;
  v318 = xmmword_10146C4D0;
  v301 = xmmword_10146BDE0;
  v323 = v14;
  v328 = v17;
  v325 = a2;
  v333 = a1;
  v309 = v18;
  v37 = v337;
  v38 = v338;
  while (v36 < *(v37 + 16))
  {
    sub_10109A590(v37 + ((*(v335 + 80) + 32) & ~*(v335 + 80)) + *(v335 + 72) * v36, v38, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    LODWORD(v35) = swift_getEnumCaseMultiPayload();
    if (v35 >= 2)
    {
      if (v35 <= 2)
      {
        v82 = a1;
        v83 = *v38;
        (*(**v38 + 264))();
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v85 = [v82 getBoardItemForUUID:isa];

        if (v85)
        {

          v86 = v344;
          goto LABEL_47;
        }

        v166 = v307;
        (*(*v83 + 272))();
        v167 = (*v315)(v166, 1, v17);
        v86 = v344;
        if (v167 == 1)
        {
          sub_1005C5FFC(v166);
LABEL_47:
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v168 = static OS_os_log.realTimeSync;
          v169 = static os_log_type_t.default.getter();
          sub_100005404(v168, &_mh_execute_header, v169, "Failed to apply createdItem from peer because it exists already, or had a nil parentUUID", 88, 2, _swiftEmptyArrayStorage);

          LODWORD(v35) = (*v86)(v324, v17);
LABEL_9:
          a1 = v333;
          goto LABEL_10;
        }

        (*v321)(v313, v166, v17);
        v39 = UUID._bridgeToObjectiveC()().super.isa;
        v40 = [v333 getContainerItemForUUID:v39];

        if (v40)
        {
          v320 = v40;
          v326 = (v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v332 = v5;
          v41 = sub_100B6D698(v83, *&v333[v302]);
          if (qword_1019F22B8 != -1)
          {
            swift_once();
          }

          v319 = static OS_os_log.boardItemLifecycle;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = v318;
          v43 = v331;
          (*((swift_isaMask & *v41) + 0x88))();
          v44 = UUID.uuidString.getter();
          v46 = v45;
          v310 = *v86;
          v310(v43, v328);
          *(inited + 56) = &type metadata for String;
          v47 = sub_1000053B0();
          *(inited + 64) = v47;
          *(inited + 32) = v44;
          v311 = v47;
          v312 = inited + 32;
          *(inited + 40) = v46;
          v48 = v41;
          v49 = [v48 description];
          v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v52 = v51;

          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v47;
          *(inited + 72) = v50;
          *(inited + 80) = v52;
          v53 = v310;
          v54 = *&v333[v329];
          v55 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          v56 = v54 + v55;
          v57 = v330;
          sub_10109A590(v56, v330, type metadata accessor for CRLBoardCRDTData);
          sub_1005B981C(&unk_1019F5250);
          v58 = v304;
          CRRegister.wrappedValue.getter();
          sub_10003D81C(v57, type metadata accessor for CRLBoardCRDTData);
          v59 = UUID.uuidString.getter();
          v61 = v60;
          v62 = v58;
          v63 = v328;
          v53(v62, v328);
          v64 = v311;
          *(inited + 136) = &type metadata for String;
          *(inited + 144) = v64;
          *(inited + 112) = v59;
          *(inited + 120) = v61;
          v65 = static os_log_type_t.default.getter();
          sub_100005404(v319, &_mh_execute_header, v65, "🛬 🟢 CRLCommandApplyPeerSyncUpdates createdItemData for item %{public}@%{public}@. Board: %{public}@", 105, 0, inited);
          v17 = v63;
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v66 = v320;
          sub_10096F7D0(v48);
          [v66 _setParentItemUUIDWithItem:v48 parent:v66];
          v67 = v48;
          sub_1010F8AD4(v67, 0, v325);

          v5 = v332;
          v53(v313, v17);
        }

        else
        {
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v194 = static OS_os_log.realTimeSync;
          v195 = static os_log_type_t.default.getter();
          sub_100005404(v194, &_mh_execute_header, v195, "Failed to apply createdItem from peer because it its parent does not exist", 74, 2, _swiftEmptyArrayStorage);

          v53 = *v86;
          v53(v313, v17);
        }

        LODWORD(v35) = v53(v324, v17);
LABEL_8:
        v14 = v323;
        goto LABEL_9;
      }

      if (v35 != 3)
      {
        goto LABEL_104;
      }

      v93 = v327;
      (*v321)(v327, v38, v17);
      v94 = UUID._bridgeToObjectiveC()().super.isa;
      v95 = [a1 getBoardItemForUUID:v94];

      if (!v95)
      {
        LODWORD(v35) = (*v344)(v93, v17);
        goto LABEL_10;
      }

      v320 = [v95 parentContainerItem];
      if (!v320)
      {
        (*v344)(v327, v17);

        goto LABEL_10;
      }

      v326 = v36;
      v332 = v5;
      if (qword_1019F22B8 != -1)
      {
        swift_once();
      }

      v312 = static OS_os_log.boardItemLifecycle;
      sub_1005B981C(&qword_1019F54E0);
      v96 = swift_initStackObject();
      *(v96 + 16) = v318;
      v97 = UUID.uuidString.getter();
      v99 = v98;
      *(v96 + 56) = &type metadata for String;
      v100 = sub_1000053B0();
      *(v96 + 64) = v100;
      *(v96 + 32) = v97;
      *(v96 + 40) = v99;
      v101 = v95;
      v102 = [v101 description];
      v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v105 = v104;
      v311 = v101;

      *(v96 + 96) = &type metadata for String;
      *(v96 + 104) = v100;
      *(v96 + 72) = v103;
      *(v96 + 80) = v105;
      v106 = *&v333[v329];
      v107 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v108 = v106 + v107;
      v109 = v330;
      sub_10109A590(v108, v330, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      v110 = v331;
      CRRegister.wrappedValue.getter();
      sub_10003D81C(v109, type metadata accessor for CRLBoardCRDTData);
      v111 = UUID.uuidString.getter();
      v113 = v112;
      v114 = v309;
      v115 = v110;
      v116 = v328;
      v319 = *(v309 + 8);
      v319(v115, v328);
      *(v96 + 136) = &type metadata for String;
      *(v96 + 144) = v100;
      *(v96 + 112) = v111;
      *(v96 + 120) = v113;
      v117 = static os_log_type_t.default.getter();
      sub_100005404(v312, &_mh_execute_header, v117, "🛬 ⭕ CRLCommandApplyPeerSyncUpdates deletedBoardItem for item %{public}@%{public}@. Board: %{public}@", 105, 0, v96);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      sub_1005B981C(&qword_101A1DBB0);
      v118 = (*(v114 + 80) + 32) & ~*(v114 + 80);
      v119 = swift_allocObject();
      v119[1] = v322;
      v120 = *(v114 + 16);
      v120(v119 + v118, v327, v116);
      v121 = v320;
      v122 = v332;
      sub_1012E0400(v320, &off_10188FE10);
      v123 = v122;
      if (v122)
      {

        swift_setDeallocating();
        v246 = v319;
        v319(v119 + v118, v116);
        swift_deallocClassInstance();
        v246(v327, v116);
        return;
      }

      v339 = _swiftEmptyArrayStorage;
      v124 = OBJC_IVAR____TtC8Freeform16CRLContainerItem_items;
      v312 = v118;
      v310 = v119;
      v125 = v119 + v118;
      v126 = v314;
      v120(v314, v125, v116);
      v127 = *&v121[v124];
      if (*(v127 + 16))
      {

        v128 = sub_10003E994(v126);
        if (v129)
        {
          v332 = 0;
          v130 = *(*(v127 + 56) + 8 * v128);
          v319(v126, v328);

          v131 = v130;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v339 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v339 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v132 = v339;
          v123 = v332;
          v133 = v325;
          v121 = v320;
LABEL_63:
          sub_100972450(v310);
          if (v123)
          {

            swift_setDeallocating();
            v247 = v328;
            swift_arrayDestroy();
            swift_deallocClassInstance();

            v319(v327, v247);

            return;
          }

          if (v132 >> 62)
          {
            v35 = _CocoaArrayWrapper.endIndex.getter();
            v174 = v35;
            v36 = v326;
            if (v35)
            {
LABEL_66:
              if (v174 < 1)
              {
                goto LABEL_103;
              }

              for (i = 0; i != v174; ++i)
              {
                if ((v132 & 0xC000000000000001) != 0)
                {
                  v176 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v176 = *(v132 + 8 * i + 32);
                }

                v177 = v176;
                sub_1012DCC7C(v176, 1, 0, v133);
              }
            }
          }

          else
          {
            v174 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v36 = v326;
            if (v174)
            {
              goto LABEL_66;
            }
          }

          v243 = v320;
          sub_1012CF6CC(v320, &off_10188FE10, 2);
          v5 = 0;

          v17 = v328;
          LODWORD(v35) = (v319)(v327, v328);
          goto LABEL_8;
        }
      }

      v319(v126, v328);
      v132 = _swiftEmptyArrayStorage;
      v133 = v325;
      goto LABEL_63;
    }

    if (v35)
    {
      sub_10109A7E4(v38, v14, type metadata accessor for CRLBoardItemDeltaChange);
      v87 = *&a1[v329];
      v88 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v89 = v87 + v88;
      v90 = v330;
      sub_10109A590(v89, v330, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      v91 = v331;
      CRRegister.wrappedValue.getter();
      sub_10003D81C(v90, type metadata accessor for CRLBoardCRDTData);
      LOBYTE(v90) = static UUID.== infix(_:_:)();
      v326 = *v344;
      v326(v91, v17);
      if (v90)
      {
        swift_unknownObjectRetain();
        v92 = a1;
        goto LABEL_38;
      }

      v134 = *&a1[v316];
      if (*(v134 + 16))
      {

        v135 = sub_10003E994(v14);
        if (v136)
        {
          v92 = *(*(v134 + 56) + 16 * v135);
          swift_unknownObjectRetain();

LABEL_38:
          type metadata accessor for CRLBoardItemBase(0);
          v137 = swift_dynamicCastClass();
          if (v137)
          {
            v138 = *((swift_isaMask & *v137) + 0x3F0);
            v320 = v137;
            if (v138())
            {
              v319 = v92;
              v332 = v5;
              if (qword_1019F22B8 != -1)
              {
                swift_once();
              }

              v312 = static OS_os_log.boardItemLifecycle;
              v300 = sub_1005B981C(&qword_1019F54E0);
              v139 = swift_allocObject();
              *(v139 + 16) = v318;
              v140 = UUID.uuidString.getter();
              v142 = v141;
              *(v139 + 56) = &type metadata for String;
              v143 = sub_1000053B0();
              *(v139 + 64) = v143;
              *(v139 + 32) = v140;
              v311 = (v139 + 32);
              *(v139 + 40) = v142;
              swift_unknownObjectRetain();
              v144 = [v320 description];
              v145 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v147 = v146;
              swift_unknownObjectRelease();

              *(v139 + 96) = &type metadata for String;
              *(v139 + 104) = v143;
              *(v139 + 72) = v145;
              *(v139 + 80) = v147;
              v148 = *&v333[v329];
              v149 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
              swift_beginAccess();
              v150 = v148 + v149;
              v151 = v330;
              sub_10109A590(v150, v330, type metadata accessor for CRLBoardCRDTData);
              v152 = v331;
              CRRegister.wrappedValue.getter();
              sub_10003D81C(v151, type metadata accessor for CRLBoardCRDTData);
              v153 = UUID.uuidString.getter();
              v155 = v154;
              v156 = v152;
              v17 = v328;
              v326(v156, v328);
              *(v139 + 136) = &type metadata for String;
              *(v139 + 144) = v143;
              v310 = v143;
              *(v139 + 112) = v153;
              *(v139 + 120) = v155;
              v157 = static os_log_type_t.default.getter();
              sub_100005404(v312, &_mh_execute_header, v157, "🛬 CRLCommandApplyPeerSyncUpdates modifiedItemDelta for item %{public}@%{public}@. Board: %{public}@", 102, 0, v139);
              swift_setDeallocating();
              v158 = sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v159 = v320;
              swift_deallocClassInstance();
              v160 = v332;
              sub_1012E0400(v159, &off_10188FE10);
              v161 = v160;
              if (v160)
              {
                swift_unknownObjectRelease();
                v245 = type metadata accessor for CRLBoardItemDeltaChange;
                v244 = v323;
                goto LABEL_97;
              }

              v299 = v158;
              v311 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v162 = *&v159[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
              v163 = v323;
              v164 = &v323[v317[9]];
              v165 = v164[1];
              if (v165 >> 60 == 15)
              {

                goto LABEL_74;
              }

              v178 = 0;
              v179 = *v164;
              v180 = *(*v162 + 576);

              sub_100024E84(v179, v165);
              v181 = v180(v179, v165);
              sub_100025870(v179, v165);
              if ((v181 & 1) == 0)
              {
                goto LABEL_84;
              }

              v161 = 0;
              v17 = v328;
LABEL_74:
              v178 = v161;
              v182 = v163 + v317[10];
              v183 = *(v182 + 8);
              if (v183 >> 60 == 15)
              {
LABEL_77:
                v187 = v163 + v317[11];
                v188 = *(v187 + 8);
                if (v188 >> 60 != 15)
                {
                  v189 = *v187;
                  v190 = *(*v162 + 608);
                  sub_100024E98(*v187, *(v187 + 8));
                  v191 = v190(v189, v188);
                  sub_100025870(v189, v188);
                  if ((v191 & 1) == 0)
                  {
                    goto LABEL_84;
                  }

                  v17 = v328;
                }

                v192 = v163 + v317[6];
                v343 = *(v192 + 32);
                v193 = *(v192 + 16);
                v342[0] = *v192;
                v342[1] = v193;
                sub_10073E870(v342, *(v163 + v317[7]));
              }

              else
              {
                v184 = *v182;
                v185 = *(*v162 + 592);
                sub_100024E98(*v182, *(v182 + 8));
                v186 = v185(v184, v183);
                sub_100025870(v184, v183);
                if (v186)
                {
                  v17 = v328;
                  goto LABEL_77;
                }

LABEL_84:

                v17 = v328;
              }

              v196 = v320;
              sub_1012CF6CC(v320, &off_10188FE10, v306);
              v5 = v178;
              v197 = *(**&v311[v196] + 272);

              v199 = v305;
              v197(v198);

              if ((*v315)(v199, 1, v17) == 1)
              {
                v14 = v323;
                sub_10003D81C(v323, type metadata accessor for CRLBoardItemDeltaChange);
                swift_unknownObjectRelease();
                LODWORD(v35) = sub_1005C5FFC(v199);
                goto LABEL_9;
              }

              v200 = v303;
              (*v321)(v303, v199, v17);
              v201 = [v196 parentContainerItem];
              a1 = v333;
              if (v201)
              {
                v202 = v201;
                v203 = v200;
                v204 = UUID._bridgeToObjectiveC()().super.isa;
                v205 = [a1 getContainerItemForUUID:v204];

                v14 = v323;
                if (v205)
                {
                  v294 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
                  v206 = (**&v202[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264);
                  v207 = v202;
                  v208 = v331;
                  v209 = (*v206)();
                  v295 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
                  v210 = v304;
                  (*(**&v205[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v209);
                  v332 = sub_10109A74C(&qword_1019F37C0, &type metadata accessor for UUID);
                  v293 = v207;
                  v211 = v207;
                  v296 = v205;
                  v297 = v211;
                  v298 = v205;
                  v212 = v328;
                  v213 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v214 = v210;
                  v215 = v326;
                  v326(v214, v212);
                  v216 = v208;
                  v217 = v212;
                  v215(v216, v212);
                  v218 = v215;
                  if (v213)
                  {
                    swift_unknownObjectRelease();
                    v219 = v297;

                    v220 = v298;
                    v215(v303, v217);
                    LODWORD(v35) = sub_10003D81C(v14, type metadata accessor for CRLBoardItemDeltaChange);
                    v17 = v217;
                  }

                  else
                  {
                    v222 = swift_initStackObject();
                    v332 = 0;
                    v223 = v222;
                    *(v222 + 16) = v301;
                    v224 = v331;
                    (*(**&v293[v294] + 264))();

                    v225 = UUID.uuidString.getter();
                    v227 = v226;
                    v228 = v218(v224, v217);
                    v229 = v310;
                    v223[7] = &type metadata for String;
                    v223[8] = v229;
                    v223[4] = v225;
                    v300 = (v223 + 4);
                    v223[5] = v227;
                    v230 = v304;
                    (*(**&v296[v295] + 264))(v228);

                    v231 = UUID.uuidString.getter();
                    v233 = v232;
                    v218(v230, v217);
                    v14 = v323;
                    v234 = v310;
                    v223[12] = &type metadata for String;
                    v223[13] = v234;
                    v223[9] = v231;
                    v223[10] = v233;
                    v235 = static os_log_type_t.default.getter();
                    sub_100005404(v312, &_mh_execute_header, v235, "CRDT parent and in-memory parent do not match. Old parent: %{public}@ New parent: %{public}@", 92, 2, v223);
                    v5 = v332;
                    swift_setDeallocating();
                    v236 = swift_arrayDestroy();
                    v237 = v320;
                    (*(**&v311[v320] + 264))(v236);
                    v238 = v297;
                    sub_10096F3C0(v224, 0);
                    v239 = v217;
                    v240 = v326;
                    v326(v224, v239);
                    v241 = v298;
                    sub_10096E1AC(v237, 0);

                    swift_unknownObjectRelease();
                    v242 = v328;
                    v240(v303, v328);
                    LODWORD(v35) = sub_10003D81C(v14, type metadata accessor for CRLBoardItemDeltaChange);
                    v17 = v242;
                  }

                  goto LABEL_9;
                }

                swift_unknownObjectRelease();

                v221 = v203;
                v17 = v328;
                v326(v221, v328);
              }

              else
              {
                swift_unknownObjectRelease();
                v326(v200, v17);
                v14 = v323;
              }
            }

            else
            {
              if (qword_1019F2288 != -1)
              {
                swift_once();
              }

              v170 = static OS_os_log.realTimeSync;
              v171 = static os_log_type_t.default.getter();
              sub_100005404(v170, &_mh_execute_header, v171, "Ignoring modifiedItem from peer because item is unsupported", 59, 2, _swiftEmptyArrayStorage);
              swift_unknownObjectRelease();
            }

LABEL_60:
            LODWORD(v35) = sub_10003D81C(v14, type metadata accessor for CRLBoardItemDeltaChange);
LABEL_10:
            v37 = v337;
            v38 = v338;
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v172 = static OS_os_log.realTimeSync;
      v173 = static os_log_type_t.default.getter();
      sub_100005404(v172, &_mh_execute_header, v173, "Failed to apply modifiedItem from peer because it doesn't exist already", 71, 2, _swiftEmptyArrayStorage);
      goto LABEL_60;
    }

    v326 = v36;
    v332 = v5;
    v68 = v38 + *(sub_1005B981C(&qword_101A290D0) + 48);
    v341 = *(v68 + 48);
    v69 = *(v68 + 16);
    v340[0] = *v68;
    v340[1] = v69;
    v340[2] = *(v68 + 32);
    if (qword_1019F22B8 != -1)
    {
      swift_once();
    }

    v70 = static OS_os_log.boardItemLifecycle;
    sub_1005B981C(&qword_1019F54E0);
    v71 = swift_allocObject();
    *(v71 + 16) = v322;
    a1 = v333;
    v72 = *&v333[v329];
    v73 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v74 = v72 + v73;
    v75 = v330;
    sub_10109A590(v74, v330, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v76 = v331;
    CRRegister.wrappedValue.getter();
    sub_10003D81C(v75, type metadata accessor for CRLBoardCRDTData);
    v77 = UUID.uuidString.getter();
    v79 = v78;
    (*v344)(v76, v17);
    *(v71 + 56) = &type metadata for String;
    *(v71 + 64) = sub_1000053B0();
    *(v71 + 32) = v77;
    *(v71 + 40) = v79;
    v80 = static os_log_type_t.default.getter();
    sub_100005404(v70, &_mh_execute_header, v80, "🛬 CRLCommandApplyPeerSyncUpdates boardDelta. Board: %{public}@", 65, 0, v71);
    swift_setDeallocating();
    sub_100005070(v71 + 32);
    swift_deallocClassInstance();
    v81 = v332;
    sub_1012E0400(a1, &off_1018A75D0);
    v5 = v81;
    if (v81)
    {
      sub_10109A794(v340);
      v244 = v338;
      v245 = type metadata accessor for CRLGloballyScopedBoardIdentifier;
LABEL_97:
      sub_10003D81C(v244, v245);
      return;
    }

    sub_1012F03C0(v340);

    sub_1012CF6CC(a1, &off_1018A75D0, 2);
    sub_10109A794(v340);
    v38 = v338;
    LODWORD(v35) = sub_10003D81C(v338, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v14 = v323;
    v17 = v328;
    v37 = v337;
    v36 = v326;
LABEL_11:
    if (++v36 == v334)
    {
      return;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  if (v35 == 4)
  {
    v248 = objc_opt_self();
    v249 = [v248 _atomicIncrementAssertCount];
    v339 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v339);
    StaticString.description.getter();
    v250 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v251 = String._bridgeToObjectiveC()();

    v252 = [v251 lastPathComponent];

    v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v255 = v254;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v256 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v257 = swift_initStackObject();
    *(v257 + 16) = xmmword_10146CA70;
    *(v257 + 56) = &type metadata for Int32;
    *(v257 + 64) = &protocol witness table for Int32;
    *(v257 + 32) = v249;
    v258 = sub_1005CF000();
    *(v257 + 96) = v258;
    v259 = sub_10109A74C(&qword_1019F52E0, sub_1005CF000);
    *(v257 + 104) = v259;
    *(v257 + 72) = v250;
    *(v257 + 136) = &type metadata for String;
    v260 = sub_1000053B0();
    *(v257 + 112) = v253;
    *(v257 + 120) = v255;
    *(v257 + 176) = &type metadata for UInt;
    *(v257 + 184) = &protocol witness table for UInt;
    *(v257 + 144) = v260;
    *(v257 + 152) = 186;
    v261 = v339;
    *(v257 + 216) = v258;
    *(v257 + 224) = v259;
    *(v257 + 192) = v261;
    v262 = v250;
    v263 = v261;
    v264 = static os_log_type_t.error.getter();
    sub_100005404(v256, &_mh_execute_header, v264, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v257);

    v265 = static os_log_type_t.error.getter();
    sub_100005404(v256, &_mh_execute_header, v265, "Unexpected boardAuxiliaryChange in CRLCommandApplyPeerChanges", 61, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected boardAuxiliaryChange in CRLCommandApplyPeerChanges");
    type metadata accessor for __VaListBuilder();
    v266 = swift_allocObject();
    v266[2] = 8;
    v266[3] = 0;
    v266[4] = 0;
    v266[5] = 0;
    v267 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v268 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v269 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v270 = String._bridgeToObjectiveC()();

    [v248 handleFailureInFunction:v268 file:v269 lineNumber:186 isFatal:1 format:v270 args:v267];
  }

  else
  {
    v271 = objc_opt_self();
    v272 = [v271 _atomicIncrementAssertCount];
    v339 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v339);
    StaticString.description.getter();
    v273 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v274 = String._bridgeToObjectiveC()();

    v275 = [v274 lastPathComponent];

    v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v278 = v277;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v279 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v280 = swift_initStackObject();
    *(v280 + 16) = xmmword_10146CA70;
    *(v280 + 56) = &type metadata for Int32;
    *(v280 + 64) = &protocol witness table for Int32;
    *(v280 + 32) = v272;
    v281 = sub_1005CF000();
    *(v280 + 96) = v281;
    v282 = sub_10109A74C(&qword_1019F52E0, sub_1005CF000);
    *(v280 + 104) = v282;
    *(v280 + 72) = v273;
    *(v280 + 136) = &type metadata for String;
    v283 = sub_1000053B0();
    *(v280 + 112) = v276;
    *(v280 + 120) = v278;
    *(v280 + 176) = &type metadata for UInt;
    *(v280 + 184) = &protocol witness table for UInt;
    *(v280 + 144) = v283;
    *(v280 + 152) = 188;
    v284 = v339;
    *(v280 + 216) = v281;
    *(v280 + 224) = v282;
    *(v280 + 192) = v284;
    v285 = v273;
    v286 = v284;
    v287 = static os_log_type_t.error.getter();
    sub_100005404(v279, &_mh_execute_header, v287, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v280);

    v288 = static os_log_type_t.error.getter();
    sub_100005404(v279, &_mh_execute_header, v288, "Unexpected boardAuxiliaryChangeLegacy in CRLCommandApplyPeerChanges", 67, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unexpected boardAuxiliaryChangeLegacy in CRLCommandApplyPeerChanges");
    type metadata accessor for __VaListBuilder();
    v289 = swift_allocObject();
    v289[2] = 8;
    v289[3] = 0;
    v289[4] = 0;
    v289[5] = 0;
    v290 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v268 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v269 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v270 = String._bridgeToObjectiveC()();

    [v271 handleFailureInFunction:v268 file:v269 lineNumber:188 isFatal:1 format:v270 args:v290];
  }

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v291, v292);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_101099DF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandApplyPeerSyncUpdates();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_101099E78()
{
  sub_10109AA54(319, &qword_101A29F00, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRLBoardItemDeltaChange(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CRLBoardItemData();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          sub_101099FA0(319, &qword_101A29F08);
          if (v4 <= 0x3F)
          {
            sub_101099FA0(319, &unk_101A29F10);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_101099FA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_10109A028()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      sub_10003FE44();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10109A0E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 56))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 48) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 48) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10109A13C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = 0;
      *(result + 48) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

Swift::Int sub_10109A1A8(uint64_t a1)
{
  __chkstk_darwin(a1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10109A590(v1, v3, type metadata accessor for CRLCommandBoardItemChangeContext);
  v4 = v3[*(sub_1005B981C(&qword_101A26208) + 48)];
  Hasher._combine(_:)(0);
  v5 = type metadata accessor for UUID();
  sub_10109A74C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v5 - 8) + 8))(v3, v5);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void sub_10109A2F8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10109A590(v1, v3, type metadata accessor for CRLCommandBoardItemChangeContext);
  v4 = v3[*(sub_1005B981C(&qword_101A26208) + 48)];
  Hasher._combine(_:)(0);
  v5 = type metadata accessor for UUID();
  sub_10109A74C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v5 - 8) + 8))(v3, v5);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_10109A440(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10109A590(v1, v3, type metadata accessor for CRLCommandBoardItemChangeContext);
  v4 = v3[*(sub_1005B981C(&qword_101A26208) + 48)];
  Hasher._combine(_:)(0);
  v5 = type metadata accessor for UUID();
  sub_10109A74C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(*(v5 - 8) + 8))(v3, v5);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10109A590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109A5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A2A0A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v8 = &v15 + *(v7 + 56) - v5;
  sub_10109A590(a1, &v15 - v5, type metadata accessor for CRLCommandBoardItemChangeContext);
  sub_10109A590(a2, v8, type metadata accessor for CRLCommandBoardItemChangeContext);
  v9 = *(sub_1005B981C(&qword_101A26208) + 48);
  v10 = v6[v9];
  v11 = v8[v9];
  LODWORD(a2) = static UUID.== infix(_:_:)();
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  v13(v6, v12);
  return a2 & ~(v10 ^ v11) & 1;
}

uint64_t sub_10109A74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10109A7E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10109A85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A26208);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10109A8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_101A26208);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_10109A95C(uint64_t a1)
{
  sub_10109AA54(319, &unk_101A2A068, &type metadata accessor for UUID);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for UUID();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_10109AA54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_10109AAC4()
{
  result = qword_101A2A090;
  if (!qword_101A2A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A090);
  }

  return result;
}

uint64_t sub_10109AB60(uint64_t a1)
{
  result = sub_10109A74C(&qword_101A26210, type metadata accessor for CRLCommandBoardItemChangeContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for CRLAssetData()
{
  result = qword_101A2A100;
  if (!qword_101A2A100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10109AC2C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100B7D7B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10109ACB8(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2A1B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_10109BFC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for UUID();
  sub_10109C2A0(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLAssetData();
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10109AED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v27 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1005B981C(&qword_101A2A1B0);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v22 - v6;
  v8 = type metadata accessor for CRLAssetData();
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_10109BFC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v8;
  v23 = v10;
  v12 = v25;
  v11 = v26;
  v32 = 0;
  sub_10109C2A0(&qword_1019F43A8, &type metadata accessor for UUID);
  v14 = v27;
  v13 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v23, v14, v4);
  v31 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = &v23[*(v22 + 20)];
  *v16 = v15;
  v16[1] = v17;
  sub_1005B981C(&unk_101A0D960);
  v30 = 2;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = *(v22 + 24);
  (*(v12 + 8))(v7, v13);
  v20 = v23;
  v19 = v24;
  *&v23[v18] = v29;
  sub_1008786E0(v20, v19);
  sub_100005070(a1);
  return sub_10072C8E4(v20);
}

uint64_t sub_10109B2A4()
{
  v0 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for UUID();
  sub_10061655C(v3, qword_101AD8F08);
  v4 = sub_1005EB3DC(v3, qword_101AD8F08);
  UUID.init(uuidString:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

Swift::Int sub_10109B404(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10109C2A0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  sub_100864DE8(v4, *(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_10109B4BC(__int128 *a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_10109C2A0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  v5 = *(v2 + *(a2 + 24));

  sub_100864DE8(a1, v5);
}

Swift::Int sub_10109B568(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10109C2A0(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  sub_100864DE8(v5, *(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t sub_10109B61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_100B3216C(v12, v13);
}

Swift::Int sub_10109B71C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C45B8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10109B7A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C45B8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10109B808()
{
  v1 = 0x656D616E656C6966;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4955557465737361;
  }
}

uint64_t sub_10109B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10109C178(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10109B8BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10109BF6C();
  v5 = sub_10109BFC4();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_10109B914(uint64_t a1)
{
  v2 = sub_10109BFC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10109B950(uint64_t a1)
{
  v2 = sub_10109BFC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10109B98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10109C2A0(&qword_101A2A1A8, type metadata accessor for CRLAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109BA10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10109C2A0(&qword_101A2A1A8, type metadata accessor for CRLAssetData);

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109BA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10109C2A0(&qword_101A2A158, type metadata accessor for CRLAssetData);
  v7 = sub_10109C2A0(&qword_101A2A140, type metadata accessor for CRLAssetData);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10109BB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10109C2A0(&qword_101A2A1A8, type metadata accessor for CRLAssetData);

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10109BCD4(uint64_t a1)
{
  v2 = sub_10109C2A0(&qword_101A2A1A0, type metadata accessor for CRLAssetData);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_10109BEBC()
{
  result = qword_101A2A160;
  if (!qword_101A2A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A160);
  }

  return result;
}

unint64_t sub_10109BF14()
{
  result = qword_101A2A168;
  if (!qword_101A2A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A168);
  }

  return result;
}

unint64_t sub_10109BF6C()
{
  result = qword_101A2A170;
  if (!qword_101A2A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A170);
  }

  return result;
}

unint64_t sub_10109BFC4()
{
  result = qword_101A2A178;
  if (!qword_101A2A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A178);
  }

  return result;
}

unint64_t sub_10109C01C()
{
  result = qword_101A2A180;
  if (!qword_101A2A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A180);
  }

  return result;
}

unint64_t sub_10109C074()
{
  result = qword_101A2A188;
  if (!qword_101A2A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A188);
  }

  return result;
}

unint64_t sub_10109C0CC()
{
  result = qword_101A2A190;
  if (!qword_101A2A190)
  {
    sub_1005C4E5C(&qword_101A2A198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A190);
  }

  return result;
}

uint64_t sub_10109C178(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955557465737361 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10109C2A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10109C2FC()
{
  result = qword_101A2A1C0;
  if (!qword_101A2A1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A1C0);
  }

  return result;
}

uint64_t sub_10109C350(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*a1)
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  return 1;
}

void sub_10109C3A0()
{
  v0 = objc_allocWithZone(CRLColor);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithHexString:v1];

  qword_101AD8F20 = v2;
}

id sub_10109C42C()
{
  result = [objc_allocWithZone(CRLColor) initWithRed:0.5 green:0.5 blue:0.5 alpha:0.5];
  qword_101AD8F28 = result;
  return result;
}

id sub_10109C4D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSPencilDecoratorStyle();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10109C544()
{
  result = qword_101A2A1F0;
  if (!qword_101A2A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A1F0);
  }

  return result;
}

void sub_10109C598(void *a1)
{
  v2 = [objc_opt_self() labelColor];
  [a1 setTextColor:v2];
}

id sub_10109C6F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLLabelView_mi();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10109C74C()
{
  type metadata accessor for CRLLabelView_mi();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [v0 traitCollection];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10109C994;
  *(v3 + 24) = v2;
  v11[4] = sub_10002AAE4;
  v11[5] = v3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_10002AAB8;
  v11[3] = &unk_1018B0650;
  v4 = _Block_copy(v11);
  v5 = v0;

  [v1 performAsCurrentTraitCollection:v4];

  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 systemFontOfSize:13.0 weight:UIFontWeightRegular];
    [v8 setFont:v9];

    v10 = String._bridgeToObjectiveC()();
    [v8 setText:v10];

    [v8 setNumberOfLines:3];

    return v8;
  }

  return result;
}

uint64_t sub_10109C99C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_10109C9BC()
{
  v1 = *(v0 + 424);
  v22 = *(v0 + 408);
  v23 = v1;
  v2 = *(v0 + 456);
  v24 = *(v0 + 440);
  v25 = v2;
  v3 = *(v0 + 360);
  v18 = *(v0 + 344);
  v19 = v3;
  v4 = *(v0 + 392);
  v20 = *(v0 + 376);
  v21 = v4;
  if (sub_10074A978(&v18) == 1)
  {
    return 0;
  }

  v26[2] = v20;
  v26[3] = v21;
  v26[4] = v22;
  v27 = v23;
  v26[0] = v18;
  v26[1] = v19;
  v6 = *(&v23 + 1);
  v7 = v24;
  v8 = *(&v24 + 2);
  v9 = v25;
  sub_100006370(0, &qword_101A00EB0);
  v16[3] = v21;
  v16[4] = v22;
  v17 = v23;
  v16[0] = v18;
  v16[1] = v19;
  v16[2] = v20;
  sub_10074A990(v26, v15);
  v10 = sub_1008B0490(v16);
  v11 = *&v6;
  v12 = *(&v6 + 1);
  if (v9)
  {
    v13 = [objc_allocWithZone(CRLCurvedShadow) initWithOffset:v10 angle:1 radius:v12 curve:v11 opacity:*&v7 color:v8 enabled:*(&v7 + 1)];
  }

  else
  {
    v13 = [objc_allocWithZone(CRLDropShadow) initWithAngle:v10 offset:1 radius:v11 opacity:v12 color:*&v7 enabled:*(&v7 + 1)];
  }

  v14 = v13;

  return v14;
}

Swift::Int sub_10109CB84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C5380[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10109CC0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C5380[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10109CC70()
{
  v1 = *v0;
  v2 = 0x7974536570616873;
  v3 = 0x65736E4974786574;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7365725074786574;
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

uint64_t sub_10109CD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010A0A00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10109CDA0(uint64_t a1)
{
  v2 = sub_10109D77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10109CDDC(uint64_t a1)
{
  v2 = sub_10109D77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10109CE1C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2A2A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_100020E58(a1, a1[3]);
  sub_10109D77C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v51, v3, 0x258uLL);
  memcpy(v48, v3, sizeof(v48));
  v47[607] = 0;
  sub_1009CCF30(v51, v47);
  sub_1010A111C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v47, v48, 0x258uLL);
  sub_1009CCEDC(v47);
  if (!v2)
  {
    v9 = *(v3 + 776);
    v49[12] = *(v3 + 792);
    v10 = *(v3 + 792);
    v49[13] = *(v3 + 808);
    v11 = *(v3 + 808);
    v49[14] = *(v3 + 824);
    v12 = *(v3 + 712);
    v49[8] = *(v3 + 728);
    v13 = *(v3 + 728);
    v49[9] = *(v3 + 744);
    v14 = *(v3 + 744);
    v49[10] = *(v3 + 760);
    v15 = *(v3 + 760);
    v49[11] = *(v3 + 776);
    v16 = *(v3 + 648);
    v49[4] = *(v3 + 664);
    v17 = *(v3 + 664);
    v49[5] = *(v3 + 680);
    v18 = *(v3 + 680);
    v49[6] = *(v3 + 696);
    v19 = *(v3 + 696);
    v49[7] = *(v3 + 712);
    v20 = *(v3 + 616);
    v49[0] = *(v3 + 600);
    v21 = *(v3 + 600);
    v49[1] = *(v3 + 616);
    v49[2] = *(v3 + 632);
    v22 = *(v3 + 632);
    v49[3] = *(v3 + 648);
    v43 = v10;
    v44 = v11;
    v45 = *(v3 + 824);
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v42 = v9;
    v35 = v17;
    v36 = v18;
    v37 = v19;
    v38 = v12;
    v31 = v21;
    v32 = v20;
    v50 = *(v3 + 840);
    v46 = *(v3 + 840);
    v33 = v22;
    v34 = v16;
    v30 = 1;
    sub_100880AD0(v49, v28);
    sub_100A1ACC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v28[13] = v44;
    v28[14] = v45;
    v28[9] = v40;
    v28[10] = v41;
    v28[11] = v42;
    v28[12] = v43;
    v28[4] = v35;
    v28[5] = v36;
    v28[6] = v37;
    v29 = v46;
    v28[7] = v38;
    v28[8] = v39;
    v28[0] = v31;
    v28[1] = v32;
    v28[2] = v33;
    v28[3] = v34;
    sub_10081852C(v28);
    LOBYTE(v26) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v26 = *(v3 + 856);
    v27 = *(v3 + 864);
    v25 = 3;
    sub_1005B981C(&qword_1019F7D38);
    sub_1010A1170(&qword_101A2A2B0);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v26 = *(v3 + 872);
    v25 = 4;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10109D26C(uint64_t a1)
{

  *(v1 + 872) = a1;
  return result;
}

uint64_t sub_10109D2B8(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10109CE18(v4) & 1;
}

void *sub_10109D310@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010A0BD8(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x370uLL);
  }

  return result;
}

uint64_t sub_10109D374(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AB78A4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109D3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AB78A4();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109D41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10007E448();
  v7 = sub_1010A11E0();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10109D48C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100AB78A4();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10109D570(uint64_t a1)
{
  v2 = sub_10109D8B4();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

unint64_t sub_10109D5C4()
{
  result = qword_101A2A228;
  if (!qword_101A2A228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A228);
  }

  return result;
}

unint64_t sub_10109D61C()
{
  result = qword_101A2A230;
  if (!qword_101A2A230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A230);
  }

  return result;
}

unint64_t sub_10109D674()
{
  result = qword_101A2A238;
  if (!qword_101A2A238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A238);
  }

  return result;
}

unint64_t sub_10109D6CC()
{
  result = qword_101A2A240;
  if (!qword_101A2A240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A240);
  }

  return result;
}

unint64_t sub_10109D724()
{
  result = qword_101A2A248;
  if (!qword_101A2A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A248);
  }

  return result;
}

unint64_t sub_10109D77C()
{
  result = qword_101A2A250;
  if (!qword_101A2A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A250);
  }

  return result;
}

unint64_t sub_10109D7D4()
{
  result = qword_101A2A258;
  if (!qword_101A2A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A258);
  }

  return result;
}

unint64_t sub_10109D82C()
{
  result = qword_101A2A260;
  if (!qword_101A2A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A260);
  }

  return result;
}

unint64_t sub_10109D8B4()
{
  result = qword_101A2A278;
  if (!qword_101A2A278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A278);
  }

  return result;
}

Swift::Int sub_10109D92C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C53A8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10109D9B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1014C53A8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10109DA18()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 1819044198;
    if (v1 != 1)
    {
      v5 = 0x776F64616873;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x656B6F727473;
    }
  }

  else
  {
    v2 = 0x6E694C7468676972;
    if (v1 != 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x656E694C7466656CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10109DAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1010A178C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10109DB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return static CodingKey<>.intCases.getter(a1, a2, v7, v8);
}

uint64_t sub_10109DBE4(uint64_t a1)
{
  v2 = sub_1010A1550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10109DC20(uint64_t a1)
{
  v2 = sub_1010A1550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10109DC60(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A2A328);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v50[-v7 - 8];
  sub_100020E58(a1, a1[3]);
  sub_1010A1550();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[11];
  v10 = v3[13];
  v113 = v3[12];
  v114 = v10;
  v11 = v3[7];
  v12 = v3[9];
  v109 = v3[8];
  v110 = v12;
  v14 = v3[9];
  v13 = v3[10];
  v15 = v13;
  v112 = v3[11];
  v111 = v13;
  v16 = v3[3];
  v17 = v3[5];
  v105 = v3[4];
  v106 = v17;
  v19 = v3[5];
  v18 = v3[6];
  v20 = v18;
  v108 = v3[7];
  v107 = v18;
  v21 = v3[1];
  v104[0] = *v3;
  v104[1] = v21;
  v22 = v3[2];
  v24 = *v3;
  v23 = v3[1];
  v25 = v22;
  v104[3] = v3[3];
  v104[2] = v22;
  v26 = v3[13];
  v86 = v113;
  v87 = v26;
  v82 = v109;
  v83 = v14;
  v84 = v15;
  v85 = v9;
  v78 = v105;
  v79 = v19;
  v80 = v20;
  v81 = v11;
  v74 = v24;
  v75 = v23;
  v115 = *(v3 + 28);
  v88 = *(v3 + 28);
  v76 = v25;
  v77 = v16;
  v119 = 0;
  sub_10000BE14(v104, v72, &unk_101A106C0);
  sub_100B93B78();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v72[12] = v86;
  v72[13] = v87;
  v73 = v88;
  v72[8] = v82;
  v72[9] = v83;
  v72[10] = v84;
  v72[11] = v85;
  v72[4] = v78;
  v72[5] = v79;
  v72[6] = v80;
  v72[7] = v81;
  v72[0] = v74;
  v72[1] = v75;
  v72[2] = v76;
  v72[3] = v77;
  sub_10000CAAC(v72, &unk_101A106C0);
  if (!v2)
  {
    v27 = *(v3 + 280);
    v28 = *(v3 + 312);
    v101 = *(v3 + 296);
    v102 = v28;
    v29 = *(v3 + 312);
    v103 = *(v3 + 328);
    v30 = *(v3 + 248);
    v100[0] = *(v3 + 232);
    v100[1] = v30;
    v31 = *(v3 + 264);
    v100[3] = *(v3 + 280);
    v100[2] = v31;
    v69 = v101;
    v70 = v29;
    v71 = *(v3 + 328);
    v32 = *(v3 + 248);
    v65 = *(v3 + 232);
    v66 = v32;
    v67 = v31;
    v68 = v27;
    v118 = 1;
    sub_10000BE14(v100, &v56, &qword_1019FFF80);
    sub_100A1D770();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v64[4] = v69;
    v64[5] = v70;
    v64[6] = v71;
    v64[0] = v65;
    v64[1] = v66;
    v64[2] = v67;
    v64[3] = v68;
    sub_10000CAAC(v64, &qword_1019FFF80);
    v33 = *(v3 + 424);
    v34 = *(v3 + 392);
    v96 = *(v3 + 408);
    v97 = v33;
    v35 = *(v3 + 424);
    v36 = *(v3 + 456);
    v98 = *(v3 + 440);
    v99 = v36;
    v37 = *(v3 + 360);
    v93[0] = *(v3 + 344);
    v93[1] = v37;
    v38 = *(v3 + 392);
    v40 = *(v3 + 344);
    v39 = *(v3 + 360);
    v94 = *(v3 + 376);
    v95 = v38;
    v60 = v96;
    v61 = v35;
    v41 = *(v3 + 456);
    v62 = v98;
    v63 = v41;
    v56 = v40;
    v57 = v39;
    v58 = v94;
    v59 = v34;
    v117 = 2;
    sub_10000BE14(v93, v55, &unk_101A09DE0);
    sub_100A721E0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v55[4] = v60;
    v55[5] = v61;
    v55[6] = v62;
    v55[7] = v63;
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    sub_10000CAAC(v55, &unk_101A09DE0);
    LOBYTE(v51) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = v3[31];
    v91[0] = v3[30];
    v91[1] = v42;
    v44 = v3[30];
    v43 = v3[31];
    v91[2] = v3[32];
    v92 = *(v3 + 66);
    v51 = v44;
    v52 = v43;
    v53 = v3[32];
    v54 = *(v3 + 66);
    v116 = 4;
    sub_10000BE14(v91, v50, &unk_101A0DA00);
    sub_1009CDD30();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100810A00(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1));
    v45 = *(v3 + 552);
    v89[0] = *(v3 + 536);
    v89[1] = v45;
    v47 = *(v3 + 536);
    v46 = *(v3 + 552);
    v89[2] = *(v3 + 568);
    v90 = *(v3 + 73);
    v51 = v47;
    v52 = v46;
    v53 = *(v3 + 568);
    v54 = *(v3 + 73);
    v116 = 5;
    sub_10000BE14(v89, v50, &unk_101A0DA00);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100810A00(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, *(&v53 + 1));
    *&v51 = *(v3 + 74);
    v50[0] = 6;
    sub_1005B981C(&unk_101A0D960);
    sub_100600F5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10109E34C(uint64_t a1)
{

  *(v1 + 592) = a1;
  return result;
}

uint64_t sub_10109E398(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_10109DC5C(v4, __dst) & 1;
}

void *sub_10109E3F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1010A19E8(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x258uLL);
  }

  return result;
}

uint64_t sub_10109E454(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D5F0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109E4A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D5F0();

  return CRExtendableValueStruct.copy(renamingReferences:)(a1, a2, v4);
}

uint64_t sub_10109E4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100B6D644();
  v7 = sub_1010A2168();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_10109E56C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100B6D5F0();

  return CRExtendableValueStruct.visitReferences(_:)(a1, a2, v4);
}

uint64_t sub_10109E650(uint64_t a1)
{
  v2 = sub_1010A1738();

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_10109E69C(__int128 *a1, __int128 *a2)
{
  v4 = a1[11];
  v5 = a1[13];
  v318 = a1[12];
  v319 = v5;
  v6 = a1[7];
  v7 = a1[9];
  v314 = a1[8];
  v315 = v7;
  v9 = a1[9];
  v8 = a1[10];
  v10 = v8;
  v317 = a1[11];
  v316 = v8;
  v11 = a1[3];
  v12 = a1[5];
  v310 = a1[4];
  v311 = v12;
  v13 = a1[5];
  v14 = a1[6];
  v15 = v14;
  v313 = a1[7];
  v312 = v14;
  v16 = a1[1];
  v309[0] = *a1;
  v309[1] = v16;
  v17 = a1[2];
  v18 = *a1;
  v19 = a1[1];
  v20 = v17;
  v309[3] = a1[3];
  v309[2] = v17;
  v21 = a2[11];
  v22 = a2[13];
  v306 = a2[12];
  v307 = v22;
  v23 = a2[7];
  v24 = a2[9];
  v302 = a2[8];
  v303 = v24;
  v26 = a2[9];
  v25 = a2[10];
  v27 = v25;
  v305 = a2[11];
  v304 = v25;
  v28 = a2[3];
  v29 = a2[5];
  v298 = a2[4];
  v299 = v29;
  v31 = a2[5];
  v30 = a2[6];
  v32 = v30;
  v301 = a2[7];
  v300 = v30;
  v33 = a2[1];
  v34 = v33;
  v297[0] = *a2;
  v297[1] = v33;
  v35 = a2[2];
  v297[3] = a2[3];
  v297[2] = v35;
  v36 = a1[11];
  v37 = a1[13];
  __src[12] = a1[12];
  __src[13] = v37;
  v38 = a1[7];
  v39 = a1[9];
  __src[8] = a1[8];
  __src[9] = v39;
  v40 = a1[10];
  __src[11] = v36;
  __src[10] = v40;
  v41 = a1[3];
  v42 = a1[5];
  __src[4] = a1[4];
  __src[5] = v42;
  v43 = a1[6];
  __src[7] = v38;
  __src[6] = v43;
  v44 = a1[1];
  __src[0] = *a1;
  __src[1] = v44;
  v45 = a1[2];
  __src[3] = v41;
  __src[2] = v45;
  v46 = a2[13];
  *(&__src[26] + 8) = v306;
  *(&__src[27] + 8) = v46;
  *(&__src[22] + 8) = v302;
  *(&__src[23] + 8) = v26;
  *(&__src[24] + 8) = v27;
  *(&__src[25] + 8) = v21;
  *(&__src[18] + 8) = v298;
  *(&__src[19] + 8) = v31;
  *(&__src[20] + 8) = v32;
  *(&__src[21] + 8) = v23;
  *(&__src[16] + 8) = v35;
  *(&__src[17] + 8) = v28;
  *(&__src[14] + 8) = v297[0];
  *(&__src[15] + 8) = v34;
  v47 = a1[13];
  v342[12] = v318;
  v342[13] = v47;
  v342[8] = v314;
  v342[9] = v9;
  v342[11] = v4;
  v342[10] = v10;
  v342[4] = v310;
  v342[5] = v13;
  v342[7] = v6;
  v342[6] = v15;
  v342[0] = v18;
  v342[1] = v19;
  v320 = *(a1 + 28);
  v308 = *(a2 + 28);
  v48 = *(a2 + 28);
  *&__src[14] = *(a1 + 28);
  *(&__src[28] + 1) = v48;
  v343 = *(a1 + 28);
  v342[3] = v11;
  v342[2] = v20;
  if (sub_1000C0FB4(v342) == 1)
  {
    v49 = a2[13];
    __dst[12] = a2[12];
    __dst[13] = v49;
    *&__dst[14] = *(a2 + 28);
    v50 = a2[9];
    __dst[8] = a2[8];
    __dst[9] = v50;
    v51 = a2[10];
    __dst[11] = a2[11];
    __dst[10] = v51;
    v52 = a2[5];
    __dst[4] = a2[4];
    __dst[5] = v52;
    v53 = a2[6];
    __dst[7] = a2[7];
    __dst[6] = v53;
    v54 = a2[1];
    __dst[0] = *a2;
    __dst[1] = v54;
    v55 = a2[2];
    __dst[3] = a2[3];
    __dst[2] = v55;
    if (sub_1000C0FB4(__dst) == 1)
    {
      v56 = a1[13];
      v339 = a1[12];
      v340 = v56;
      v341 = *(a1 + 28);
      v57 = a1[9];
      v335 = a1[8];
      v336 = v57;
      v58 = a1[10];
      v338 = a1[11];
      v337 = v58;
      v59 = a1[5];
      v331 = a1[4];
      v332 = v59;
      v60 = a1[6];
      v334 = a1[7];
      v333 = v60;
      v61 = a1[1];
      v327 = *a1;
      v328 = v61;
      v62 = a1[2];
      v330 = a1[3];
      v329 = v62;
      sub_10000BE14(v309, v325, &unk_101A106C0);
      sub_10000BE14(v297, v325, &unk_101A106C0);
      sub_10000CAAC(&v327, &unk_101A106C0);
      goto LABEL_8;
    }

LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_10000BE14(v309, &v327, &unk_101A106C0);
    sub_10000BE14(v297, &v327, &unk_101A106C0);
    v70 = &unk_1019F5EE0;
LABEL_6:
    v71 = __dst;
LABEL_18:
    sub_10000CAAC(v71, v70);
    goto LABEL_19;
  }

  v63 = a2[13];
  __dst[12] = a2[12];
  __dst[13] = v63;
  *&__dst[14] = *(a2 + 28);
  v64 = a2[9];
  __dst[8] = a2[8];
  __dst[9] = v64;
  v65 = a2[10];
  __dst[11] = a2[11];
  __dst[10] = v65;
  v66 = a2[5];
  __dst[4] = a2[4];
  __dst[5] = v66;
  v67 = a2[6];
  __dst[7] = a2[7];
  __dst[6] = v67;
  v68 = a2[1];
  __dst[0] = *a2;
  __dst[1] = v68;
  v69 = a2[2];
  __dst[3] = a2[3];
  __dst[2] = v69;
  if (sub_1000C0FB4(__dst) == 1)
  {
    goto LABEL_5;
  }

  v72 = a2[11];
  v73 = a2[13];
  v237 = a2[12];
  v238 = v73;
  v74 = a2[7];
  v75 = a2[9];
  v233 = a2[8];
  v234 = v75;
  v76 = a2[9];
  v77 = a2[11];
  v235 = a2[10];
  v236 = v77;
  v78 = a2[3];
  v79 = a2[5];
  v229 = a2[4];
  v230 = v79;
  v80 = a2[5];
  v81 = a2[7];
  v231 = a2[6];
  v232 = v81;
  v82 = a2[1];
  v225 = *a2;
  v226 = v82;
  v83 = a2[3];
  v85 = *a2;
  v84 = a2[1];
  v227 = a2[2];
  v228 = v83;
  v86 = a2[13];
  v339 = v237;
  v340 = v86;
  v335 = v233;
  v336 = v76;
  v338 = v72;
  v337 = v235;
  v331 = v229;
  v332 = v80;
  v334 = v74;
  v333 = v231;
  v327 = v85;
  v328 = v84;
  v239 = *(a2 + 28);
  v341 = *(a2 + 28);
  v330 = v78;
  v329 = v227;
  v87 = a1[13];
  v325[12] = a1[12];
  v325[13] = v87;
  v326 = *(a1 + 28);
  v88 = a1[9];
  v325[8] = a1[8];
  v325[9] = v88;
  v89 = a1[10];
  v325[11] = a1[11];
  v325[10] = v89;
  v90 = a1[5];
  v325[4] = a1[4];
  v325[5] = v90;
  v91 = a1[6];
  v325[7] = a1[7];
  v325[6] = v91;
  v92 = a1[1];
  v325[0] = *a1;
  v325[1] = v92;
  v93 = a1[2];
  v325[3] = a1[3];
  v325[2] = v93;
  sub_10000BE14(v309, v240, &unk_101A106C0);
  sub_10000BE14(v297, v240, &unk_101A106C0);
  v94 = sub_100B93EBC(v325, &v327);
  sub_10000CAAC(&v225, &unk_101A106C0);
  v95 = a1[13];
  v247 = a1[12];
  v248 = v95;
  v249 = *(a1 + 28);
  v96 = a1[9];
  v243 = a1[8];
  v244 = v96;
  v97 = a1[11];
  v245 = a1[10];
  v246 = v97;
  v98 = a1[5];
  *&v240[64] = a1[4];
  *&v240[80] = v98;
  v99 = a1[7];
  v241 = a1[6];
  v242 = v99;
  v100 = a1[1];
  *v240 = *a1;
  *&v240[16] = v100;
  v101 = a1[3];
  *&v240[32] = a1[2];
  *&v240[48] = v101;
  sub_10000CAAC(v240, &unk_101A106C0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  v102 = *(a1 + 248);
  v295[0] = *(a1 + 232);
  v295[1] = v102;
  v103 = *(a1 + 312);
  v295[4] = *(a1 + 296);
  v295[5] = v103;
  v296 = *(a1 + 328);
  v104 = *(a1 + 264);
  v295[3] = *(a1 + 280);
  v295[2] = v104;
  v105 = (a2 + 232);
  v106 = *(a2 + 232);
  v293[1] = *(a2 + 248);
  v293[0] = v106;
  v107 = *(a2 + 264);
  v108 = *(a2 + 280);
  v109 = *(a2 + 312);
  v294 = *(a2 + 328);
  v110 = *(a2 + 296);
  v293[5] = v109;
  v293[4] = v110;
  v293[2] = v107;
  v293[3] = v108;
  v111 = *&v295[0];
  v112 = BYTE8(v295[0]);
  v113 = (a1 + 241);
  v114 = v296;
  v115 = *(&v294 + 1);
  if (!v296)
  {
    if (!v294)
    {
      v139 = *(a1 + 289);
      *(&__src[2] + 9) = *(a1 + 273);
      *(&__src[3] + 9) = v139;
      *(&__src[4] + 9) = *(a1 + 305);
      v140 = *(a1 + 257);
      *(__src + 9) = *v113;
      *&__src[0] = *&v295[0];
      BYTE8(__src[0]) = BYTE8(v295[0]);
      v141 = *(a1 + 40);
      *(&__src[1] + 9) = v140;
      *(&__src[5] + 1) = v141;
      *&__src[6] = 0;
      *(&__src[6] + 1) = *(&v296 + 1);
      sub_10000BE14(v295, __dst, &qword_1019FFF80);
      sub_10000BE14(v293, __dst, &qword_1019FFF80);
      sub_10000CAAC(__src, &qword_1019FFF80);
      goto LABEL_22;
    }

LABEL_15:
    *&__src[0] = *&v295[0];
    BYTE8(__src[0]) = BYTE8(v295[0]);
    v127 = *(a1 + 289);
    *(&__src[2] + 9) = *(a1 + 273);
    *(&__src[3] + 9) = v127;
    *(&__src[4] + 9) = *(a1 + 305);
    v128 = *(a1 + 40);
    v129 = *(a1 + 257);
    *(__src + 9) = *v113;
    *(&__src[1] + 9) = v129;
    *(&__src[5] + 1) = v128;
    __src[6] = v296;
    v130 = *v105;
    __src[8] = *(a2 + 248);
    __src[7] = v130;
    v131 = *(a2 + 264);
    v132 = *(a2 + 280);
    v133 = *(a2 + 296);
    __src[12] = *(a2 + 312);
    __src[11] = v133;
    __src[10] = v132;
    __src[9] = v131;
    __src[13] = v294;
    sub_10000BE14(v295, __dst, &qword_1019FFF80);
    sub_10000BE14(v293, __dst, &qword_1019FFF80);
    v70 = &unk_1019FFF90;
LABEL_16:
    v71 = __src;
    goto LABEL_18;
  }

  if (!v294)
  {
    goto LABEL_15;
  }

  v116 = *(a2 + 248);
  __src[0] = *v105;
  __src[1] = v116;
  v117 = *(a2 + 296);
  __src[5] = *(a2 + 312);
  __src[4] = v117;
  v118 = *(a2 + 280);
  __src[2] = *(a2 + 264);
  __src[3] = v118;
  __src[6] = v294;
  *v240 = *(__src + 9);
  *&v240[16] = *(&__src[1] + 9);
  *&v240[79] = *(&__src[5] + 8);
  *&v240[48] = *(&__src[3] + 9);
  *&v240[64] = *(&__src[4] + 9);
  *&v240[32] = *(&__src[2] + 9);
  *&v225 = *&v295[0];
  BYTE8(v225) = BYTE8(v295[0]) & 1;
  *&v292[0] = *&__src[0];
  BYTE8(v292[0]) = BYTE8(__src[0]) & 1;
  sub_10000BE14(v295, __dst, &qword_1019FFF80);
  sub_10000BE14(v293, __dst, &qword_1019FFF80);
  sub_100A1B84C();
  if ((static CRExtensible.== infix(_:_:)() & 1) == 0 || (v119 = *(a1 + 264), v120 = *(a1 + 280), v321[0] = *(a1 + 248), v321[1] = v119, v121 = *(a1 + 296), v122 = *(a1 + 312), v321[2] = v120, v321[3] = v121, v321[4] = v122, v322 = v114, v323[2] = *&v240[39], v323[3] = *&v240[55], v323[4] = *&v240[71], v324 = *&v240[87], v323[0] = *&v240[7], v323[1] = *&v240[23], (sub_1008AFE44(v321, v323) & 1) == 0))
  {
    sub_10000CAAC(__src, &qword_1019FFF80);
    v134 = *(a1 + 289);
    *(&__dst[2] + 9) = *(a1 + 273);
    *(&__dst[3] + 9) = v134;
    *(&__dst[4] + 9) = *(a1 + 305);
    v135 = *(a1 + 257);
    *(__dst + 9) = *v113;
    *&__dst[0] = v111;
    BYTE8(__dst[0]) = v112;
    v136 = *(a1 + 40);
    *(&__dst[1] + 9) = v135;
    *(&__dst[5] + 1) = v136;
    __dst[6] = v114;
    v71 = __dst;
    v70 = &qword_1019FFF80;
    goto LABEL_18;
  }

  v123 = sub_100B3216C(*(&v114 + 1), v115);
  sub_10000CAAC(__src, &qword_1019FFF80);
  v124 = *(a1 + 289);
  *(&__dst[2] + 9) = *(a1 + 273);
  *(&__dst[3] + 9) = v124;
  *(&__dst[4] + 9) = *(a1 + 305);
  v125 = *(a1 + 257);
  *(__dst + 9) = *v113;
  *&__dst[0] = v111;
  BYTE8(__dst[0]) = v112;
  v126 = *(a1 + 40);
  *(&__dst[1] + 9) = v125;
  *(&__dst[5] + 1) = v126;
  __dst[6] = v114;
  sub_10000CAAC(__dst, &qword_1019FFF80);
  if ((v123 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v142 = (a1 + 344);
  v143 = *(a1 + 392);
  v144 = *(a1 + 424);
  v229 = *(a1 + 408);
  v230 = v144;
  v145 = *(a1 + 424);
  v146 = *(a1 + 456);
  v231 = *(a1 + 440);
  v232 = v146;
  v147 = *(a1 + 360);
  v225 = *(a1 + 344);
  v226 = v147;
  v148 = *(a1 + 392);
  v150 = *(a1 + 344);
  v149 = *(a1 + 360);
  v227 = *(a1 + 376);
  v228 = v148;
  v151 = (a2 + 344);
  v152 = *(a2 + 344);
  v153 = *(a2 + 360);
  v154 = *(a2 + 376);
  v292[3] = *(a2 + 392);
  v292[2] = v154;
  v155 = *(a2 + 376);
  v156 = *(a2 + 344);
  v292[1] = *(a2 + 360);
  v292[0] = v152;
  v158 = *(a2 + 424);
  v157 = *(a2 + 440);
  v159 = v157;
  v292[7] = *(a2 + 456);
  v292[6] = v157;
  v161 = *(a2 + 392);
  v160 = *(a2 + 408);
  v292[5] = *(a2 + 424);
  v292[4] = v160;
  v162 = *(a1 + 424);
  __src[4] = *(a1 + 408);
  __src[5] = v162;
  v163 = *(a1 + 456);
  __src[6] = *(a1 + 440);
  __src[7] = v163;
  v164 = *(a1 + 360);
  __src[0] = *(a1 + 344);
  __src[1] = v164;
  v165 = *(a1 + 392);
  __src[2] = *(a1 + 376);
  __src[3] = v165;
  __src[11] = v161;
  __src[10] = v155;
  __src[9] = v153;
  __src[8] = v156;
  __src[15] = *(a2 + 456);
  __src[14] = v159;
  __src[13] = v158;
  __src[12] = v160;
  v275[3] = v143;
  v275[1] = v149;
  v275[2] = v227;
  v275[0] = v150;
  v275[7] = *(a1 + 456);
  v275[6] = v231;
  v275[5] = v145;
  v275[4] = v229;
  if (sub_10074A978(v275) == 1)
  {
    v166 = *(a2 + 424);
    __dst[4] = *(a2 + 408);
    __dst[5] = v166;
    v167 = *(a2 + 456);
    __dst[6] = *(a2 + 440);
    __dst[7] = v167;
    v168 = *(a2 + 360);
    __dst[0] = *v151;
    __dst[1] = v168;
    v169 = *(a2 + 392);
    __dst[2] = *(a2 + 376);
    __dst[3] = v169;
    if (sub_10074A978(__dst) == 1)
    {
      v170 = *(a1 + 424);
      *&v240[64] = *(a1 + 408);
      *&v240[80] = v170;
      v171 = *(a1 + 456);
      v241 = *(a1 + 440);
      v242 = v171;
      v172 = *(a1 + 360);
      *v240 = *v142;
      *&v240[16] = v172;
      v173 = *(a1 + 392);
      *&v240[32] = *(a1 + 376);
      *&v240[48] = v173;
      sub_10000BE14(&v225, &v267, &unk_101A09DE0);
      sub_10000BE14(v292, &v267, &unk_101A09DE0);
      sub_10000CAAC(v240, &unk_101A09DE0);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v174 = *(a2 + 424);
  v271 = *(a2 + 408);
  v272 = v174;
  v175 = *(a2 + 456);
  v273 = *(a2 + 440);
  v274 = v175;
  v176 = *(a2 + 360);
  v267 = *v151;
  v268 = v176;
  v177 = *(a2 + 392);
  v269 = *(a2 + 376);
  v270 = v177;
  if (sub_10074A978(&v267) == 1)
  {
LABEL_26:
    __dst[12] = __src[12];
    __dst[13] = __src[13];
    __dst[14] = __src[14];
    __dst[15] = __src[15];
    __dst[8] = __src[8];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    __dst[11] = __src[11];
    __dst[4] = __src[4];
    __dst[5] = __src[5];
    __dst[6] = __src[6];
    __dst[7] = __src[7];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    sub_10000BE14(&v225, v240, &unk_101A09DE0);
    sub_10000BE14(v292, v240, &unk_101A09DE0);
    v70 = &unk_1019FDFA8;
    goto LABEL_6;
  }

  v178 = *(a2 + 424);
  v254 = *(a2 + 408);
  v255 = v178;
  v179 = *(a2 + 456);
  v256 = *(a2 + 440);
  v257 = v179;
  v180 = *(a2 + 360);
  v250 = *v151;
  v251 = v180;
  v181 = *(a2 + 392);
  v252 = *(a2 + 376);
  v253 = v181;
  __dst[3] = v181;
  __dst[2] = v252;
  __dst[1] = v180;
  __dst[0] = v250;
  __dst[7] = v179;
  __dst[6] = v256;
  __dst[5] = v178;
  __dst[4] = v254;
  v182 = *v142;
  v183 = *(a1 + 360);
  v184 = *(a1 + 392);
  *&v240[32] = *(a1 + 376);
  *&v240[48] = v184;
  *v240 = v182;
  *&v240[16] = v183;
  v185 = *(a1 + 408);
  v186 = *(a1 + 424);
  v187 = *(a1 + 456);
  v241 = *(a1 + 440);
  v242 = v187;
  *&v240[64] = v185;
  *&v240[80] = v186;
  sub_10000BE14(&v225, &v258, &unk_101A09DE0);
  sub_10000BE14(v292, &v258, &unk_101A09DE0);
  v188 = sub_100A72B90(v240, __dst);
  sub_10000CAAC(&v250, &unk_101A09DE0);
  v189 = *(a1 + 424);
  v262 = *(a1 + 408);
  v263 = v189;
  v190 = *(a1 + 456);
  v264 = *(a1 + 440);
  v265 = v190;
  v191 = *(a1 + 360);
  v258 = *v142;
  v259 = v191;
  v192 = *(a1 + 392);
  v260 = *(a1 + 376);
  v261 = v192;
  sub_10000CAAC(&v258, &unk_101A09DE0);
  if ((v188 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_28:
  if ((*(a1 + 472) ^ *(a2 + 472)))
  {
    goto LABEL_19;
  }

  v193 = a1[31];
  v288 = a1[30];
  v289 = v193;
  v290 = a1[32];
  v194 = *(a1 + 66);
  v291 = v194;
  v195 = a2[31];
  v285[0] = a2[30];
  v285[1] = v195;
  v286 = a2[32];
  v196 = *(a2 + 66);
  v287 = v196;
  v197 = *(&v290 + 1);
  v198 = v285[0];
  v199 = v195;
  v200 = v286;
  if (!*(&v290 + 1))
  {
    if (!*(&v286 + 1))
    {
      v203 = v288;
      v204 = v289;
      v205 = v290;
      sub_10000BE14(&v288, __src, &unk_101A0DA00);
      sub_10000BE14(v285, __src, &unk_101A0DA00);
      sub_100810A00(v203, *(&v203 + 1), v204, *(&v204 + 1), v205, 0);
      goto LABEL_36;
    }

LABEL_34:
    __src[0] = v288;
    __src[1] = v289;
    __src[2] = v290;
    *&__src[3] = v194;
    *(&__src[3] + 8) = v285[0];
    *(&__src[4] + 8) = v195;
    *(&__src[5] + 8) = v286;
    *(&__src[6] + 1) = v196;
    sub_10000BE14(&v288, &v267, &unk_101A0DA00);
    v201 = v285;
    v202 = &v267;
LABEL_42:
    sub_10000BE14(v201, v202, &unk_101A0DA00);
    v70 = &unk_101A27A70;
    goto LABEL_16;
  }

  if (!*(&v286 + 1))
  {
    goto LABEL_34;
  }

  v267 = v285[0];
  v268 = v195;
  v269 = v286;
  *&v270 = v196;
  v258 = v288;
  v259 = v289;
  v260 = v290;
  *&v261 = v194;
  v221 = v288;
  v223 = v289;
  v219 = v290;
  sub_10000BE14(&v288, __src, &unk_101A0DA00);
  sub_10000BE14(v285, __src, &unk_101A0DA00);
  v217 = sub_1009CE0AC(&v258, &v267);
  sub_100810A00(v198, *(&v198 + 1), v199, *(&v199 + 1), v200, *(&v200 + 1));
  sub_100810A00(v221, *(&v221 + 1), v223, *(&v223 + 1), v219, v197);
  if ((v217 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_36:
  v206 = *(a1 + 552);
  v281 = *(a1 + 536);
  v282 = v206;
  v283 = *(a1 + 568);
  v207 = *(a1 + 73);
  v284 = v207;
  v208 = *(a2 + 552);
  v278[0] = *(a2 + 536);
  v278[1] = v208;
  v279 = *(a2 + 568);
  v209 = *(a2 + 73);
  v280 = v209;
  v210 = *(&v283 + 1);
  v211 = v278[0];
  v212 = v208;
  v213 = v279;
  if (!*(&v283 + 1))
  {
    if (!*(&v279 + 1))
    {
      v214 = v281;
      v215 = v282;
      v216 = v283;
      sub_10000BE14(&v281, __src, &unk_101A0DA00);
      sub_10000BE14(v278, __src, &unk_101A0DA00);
      sub_100810A00(v214, *(&v214 + 1), v215, *(&v215 + 1), v216, 0);
LABEL_44:
      v137 = sub_100B3216C(*(a1 + 74), *(a2 + 74));
      return v137 & 1;
    }

    goto LABEL_41;
  }

  if (!*(&v279 + 1))
  {
LABEL_41:
    __src[0] = v281;
    __src[1] = v282;
    __src[2] = v283;
    *&__src[3] = v207;
    *(&__src[3] + 8) = v278[0];
    *(&__src[4] + 8) = v208;
    *(&__src[5] + 8) = v279;
    *(&__src[6] + 1) = v209;
    sub_10000BE14(&v281, &v250, &unk_101A0DA00);
    v201 = v278;
    v202 = &v250;
    goto LABEL_42;
  }

  __src[0] = v278[0];
  __src[1] = v208;
  __src[2] = v279;
  *&__src[3] = v209;
  v250 = v281;
  v251 = v282;
  v252 = v283;
  *&v253 = v207;
  v222 = v281;
  v224 = v282;
  v220 = v283;
  sub_10000BE14(&v281, v266, &unk_101A0DA00);
  sub_10000BE14(v278, v266, &unk_101A0DA00);
  v218 = sub_1009CE0AC(&v250, __src);
  sub_100810A00(v211, *(&v211 + 1), v212, *(&v212 + 1), v213, *(&v213 + 1));
  sub_100810A00(v222, *(&v222 + 1), v224, *(&v224 + 1), v220, v210);
  if (v218)
  {
    goto LABEL_44;
  }

LABEL_19:
  v137 = 0;
  return v137 & 1;
}

uint64_t sub_10109F874(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, a2, sizeof(v24));
  if (sub_10109E69C(__dst, v24) & 1) != 0 && (v23 = *(__src + 105), v4 = *(__src + 808), v22[12] = *(__src + 792), v22[13] = v4, v22[14] = *(__src + 824), v5 = *(__src + 744), v22[8] = *(__src + 728), v22[9] = v5, v6 = *(__src + 776), v22[10] = *(__src + 760), v22[11] = v6, v7 = *(__src + 680), v22[4] = *(__src + 664), v22[5] = v7, v8 = *(__src + 712), v22[6] = *(__src + 696), v22[7] = v8, v9 = *(__src + 616), v22[0] = *(__src + 600), v22[1] = v9, v10 = *(__src + 648), v22[2] = *(__src + 632), v22[3] = v10, v11 = *(a2 + 808), v20[12] = *(a2 + 792), v20[13] = v11, v20[14] = *(a2 + 824), v21 = *(a2 + 840), v12 = *(a2 + 744), v20[8] = *(a2 + 728), v20[9] = v12, v13 = *(a2 + 776), v20[10] = *(a2 + 760), v20[11] = v13, v14 = *(a2 + 680), v20[4] = *(a2 + 664), v20[5] = v14, v15 = *(a2 + 712), v20[6] = *(a2 + 696), v20[7] = v15, v16 = *(a2 + 616), v20[0] = *(a2 + 600), v20[1] = v16, v17 = *(a2 + 648), v20[2] = *(a2 + 632), v20[3] = v17, (sub_100A1AFE8(v22, v20)) && *(__src + 212) == *(a2 + 848) && (sub_100695068(), (static CRExtensible.== infix(_:_:)()))
  {
    v18 = sub_100B3216C(*(__src + 109), *(a2 + 872));
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_10109F9F8@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v88) = a2;
  v82 = type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0);
  v5 = __chkstk_darwin(v82);
  *&v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  *&v85 = &v79 - v8;
  v9 = __chkstk_darwin(v7);
  *&v87 = &v79 - v10;
  v11 = __chkstk_darwin(v9);
  v81 = &v79 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = (*((swift_isaMask & *a1) + 0x4D8))(v13);
  if (v16)
  {
    sub_100B965E4(v16, &v89);
    v116 = v101;
    v117 = v102;
    v118 = v103;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v111 = v96;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    v107 = v92;
    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v104, v17);
    *&v127[192] = v116;
    *&v127[208] = v117;
    *&v127[224] = v118;
    *&v127[128] = v112;
    *&v127[144] = v113;
    *&v127[160] = v114;
    *&v127[176] = v115;
    *&v127[64] = v108;
    *&v127[80] = v109;
    *&v127[96] = v110;
    *&v127[112] = v111;
    *v127 = v104;
    *&v127[16] = v105;
    *&v127[32] = v106;
    *&v127[48] = v107;
  }

  else
  {
    sub_1005D0BD8(v127);
  }

  v18 = **(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  v83 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  v84 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_47;
  }

  v20 = result;
  v21 = *(result + 16);

  v21(v18, v20);

  sub_1005B981C(&unk_101A10690);
  CRRegister.wrappedValue.getter();
  sub_1010A1234(v15, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  v120 = v104;
  v121 = v105;
  v125 = v109;
  v126 = v110;
  v123 = v107;
  v124 = v108;
  v122 = v106;
  v89 = v104;
  v90 = v105;
  v94 = v109;
  v95 = v110;
  v92 = v107;
  v93 = v108;
  v91 = v106;
  if (v110)
  {
    sub_100006370(0, &qword_101A00EB0);
    v141[2] = v123;
    v141[3] = v124;
    v141[4] = v125;
    v142 = v126;
    v141[0] = v121;
    v141[1] = v122;
    sub_10074A990(&v90, &v104);
    v22 = sub_1008B0490(v141);
    if (BYTE8(v89) == 1)
    {
      if (qword_1019F2268 != -1)
      {
        swift_once();
      }

      v23 = static OS_os_log.persistence;
      v24 = static os_log_type_t.info.getter();
      sub_100005404(v23, &_mh_execute_header, v24, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
    }

    v25 = [objc_allocWithZone(CRLColorFill) initWithColor:v22];

    sub_10000CAAC(&v120, &qword_1019FFF80);
    sub_101247234(v25, &v104);
    *&v127[296] = v108;
    *&v127[312] = v109;
    *&v127[328] = v110;
    *&v127[264] = v106;
    *&v127[280] = v107;
    *&v127[232] = v104;
    *&v127[248] = v105;
  }

  else
  {
    *&v127[296] = v124;
    *&v127[312] = v125;
    *&v127[328] = v126;
    *&v127[264] = v122;
    *&v127[280] = v123;
    *&v127[232] = v120;
    *&v127[248] = v121;
  }

  v26 = *((swift_isaMask & *a1) + 0x578);
  v27 = (swift_isaMask & *a1) + 1400;
  if ((v26() & 1) != 0 || (v28 = *(**(&v84->Flags + a1) + 440), v29 = , v30 = v28(v29), , !v30))
  {
    sub_1005D0C00(&v104);
  }

  else
  {
    sub_100A72CD4(v30, &v104);
    v143 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(&v104, v31);
  }

  *&v127[408] = v108;
  *&v127[424] = v109;
  *&v127[440] = v110;
  *&v127[456] = v111;
  *&v127[344] = v104;
  *&v127[360] = v105;
  *&v127[376] = v106;
  *&v127[392] = v107;
  if ((v88 & 1) == 0 || (v32 = (*((swift_isaMask & *a1) + 0x530))(v143.recordID.super.isa, v143.recordType._countAndFlagsBits, v143.recordType._object), v33 = [v32 bezierPath], v32, LOBYTE(v32) = objc_msgSend(v33, "isOpen"), v33, (v32 & 1) == 0))
  {

    v39 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    goto LABEL_22;
  }

  v34 = (*((swift_isaMask & *a1) + 0x5B8))();
  v35 = v26();
  if ((v34 & 1) == 0)
  {
    v79 = v26;
    v80 = v27;
    if (v35)
    {
      goto LABEL_27;
    }

    v45 = **(&v84->Flags + a1);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v46 = result;
      v47 = *(result + 16);

      v48 = v85;
      v47(v45, v46);

      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.getter();
      sub_1010A1234(v48, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v49 = *(&v106 + 1);
      if (*(&v106 + 1))
      {
        v51 = *(&v104 + 1);
        v50 = v104;
        v53 = *(&v105 + 1);
        v52 = v105;
        v54 = v106;
        *&v88 = v107;
        LOBYTE(v134) = v105 & 1;
        LOBYTE(v105) = v105 & 1;
        DWORD1(v105) = HIDWORD(v52);
        BYTE12(v105) &= 1u;
        sub_100006370(0, &qword_101A14D70);
        v55 = sub_1009CE208(&v104);
        sub_100810A00(v50, v51, v52, v53, v54, v49);
        sub_1009CE67C(v55, v128);
        v85 = *&v128[24];
        v87 = *&v128[8];
        v40 = *v128;
        v41 = v129;
        v42 = v130;

LABEL_28:
        if (v79())
        {

          v36 = 0;
          v37 = 0;
LABEL_44:
          v38 = 0;
          v88 = 0u;
          v39 = 1;
          v86 = 0u;
          goto LABEL_22;
        }

        *&v88 = **(&v84->Flags + a1);
        result = swift_conformsToProtocol2();
        if (!result)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v66 = result;
        v84 = *(result + 16);

        v67 = v86;
        (v84)(v88, v66);

        sub_1005B981C(&unk_101A10680);
        CRRegister.wrappedValue.getter();
        sub_1010A1234(v67, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
        v37 = v139;
        if (!v139)
        {

          v36 = 0;
          goto LABEL_44;
        }

        *&v88 = v134;
        *&v86 = v135;
        v69 = v136;
        v68 = v137;
        v83 = v140;
        v84 = v138;
        v119 = v136 & 1;
        LOBYTE(v136) = v136 & 1;
        HIDWORD(v136) = HIDWORD(v69);
        BYTE4(v137) &= 1u;
        sub_100006370(0, &qword_101A14D70);
        v70 = sub_1009CE208(&v134);
        sub_100810A00(v88, v86, v69, v68, v84, v37);
        sub_1009CE67C(v70, v131);
        v86 = *&v131[16];
        v88 = *v131;
        v36 = *&v131[32];
        v37 = v132;
        v38 = v133;

        v39 = 1;
LABEL_22:
        result = memcpy(a3, v127, 0x1D8uLL);
        *(a3 + 472) = v39;
        v43 = v86;
        *(a3 + 480) = v88;
        *(a3 + 496) = v43;
        *(a3 + 512) = v36;
        *(a3 + 520) = v37;
        *(a3 + 528) = v38;
        *(a3 + 536) = v40;
        v44 = v85;
        *(a3 + 544) = v87;
        *(a3 + 560) = v44;
        *(a3 + 576) = v41;
        *(a3 + 584) = v42;
        *(a3 + 592) = _swiftEmptyDictionarySingleton;
        return result;
      }

LABEL_27:
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v87 = 0u;
      v85 = 0u;
      goto LABEL_28;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v35 & 1) == 0)
  {
    v80 = v27;
    v56 = **(&v84->Flags + a1);
    result = swift_conformsToProtocol2();
    if (result)
    {
      v57 = result;
      v58 = *(result + 16);

      v59 = v81;
      v58(v56, v57);

      sub_1005B981C(&unk_101A10680);
      CRRegister.wrappedValue.getter();
      sub_1010A1234(v59, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
      v37 = *(&v106 + 1);
      if (*(&v106 + 1))
      {
        *&v88 = *(&v104 + 1);
        v60 = v104;
        v62 = *(&v105 + 1);
        v61 = v105;
        v79 = v26;
        v63 = v106;
        LOBYTE(v134) = v105 & 1;
        LOBYTE(v105) = v105 & 1;
        DWORD1(v105) = HIDWORD(v61);
        BYTE12(v105) &= 1u;
        sub_100006370(0, &qword_101A14D70);
        v64 = sub_1009CE208(&v104);
        v65 = v63;
        v26 = v79;
        sub_100810A00(v60, v88, v61, v62, v65, v37);
        sub_1009CE67C(v64, v128);
        v86 = *&v128[16];
        v88 = *v128;
        v36 = *&v128[32];
        v37 = v129;
        v38 = v130;
      }

      else
      {
        v36 = 0;
        v38 = 0;
        v88 = 0u;
        v86 = 0u;
      }

      goto LABEL_37;
    }

    goto LABEL_48;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v88 = 0u;
  v86 = 0u;
LABEL_37:
  if (v26())
  {

    v40 = 0;
    v41 = 0;
    v42 = 0;
    v87 = 0u;
    v39 = 1;
    v85 = 0u;
    goto LABEL_22;
  }

  v81 = v36;
  v71 = **(&v84->Flags + a1);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v72 = result;
    *&v85 = *(result + 16);

    v73 = v87;
    (v85)(v71, v72);

    sub_1005B981C(&unk_101A10680);
    CRRegister.wrappedValue.getter();
    sub_1010A1234(v73, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
    v74 = v139;
    if (v139)
    {
      v75 = v134;
      *&v87 = v135;
      v76 = v136;
      v77 = v137;
      v84 = v140;
      *&v85 = v138;
      v119 = v136 & 1;
      LOBYTE(v136) = v136 & 1;
      HIDWORD(v136) = HIDWORD(v76);
      BYTE4(v137) &= 1u;
      sub_100006370(0, &qword_101A14D70);
      v78 = sub_1009CE208(&v134);
      sub_100810A00(v75, v87, v76, v77, v85, v74);
      sub_1009CE67C(v78, v131);
      v85 = *&v131[24];
      v87 = *&v131[8];
      v40 = *v131;
      v41 = v132;
      v42 = v133;

      v39 = 1;
    }

    else
    {

      v40 = 0;
      v41 = 0;
      v42 = 0;
      v87 = 0u;
      v39 = 1;
      v85 = 0u;
    }

    v36 = v81;
    goto LABEL_22;
  }

LABEL_50:
  __break(1u);
  return result;
}