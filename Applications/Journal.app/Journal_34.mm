uint64_t sub_10039BB30()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10039BB94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v46 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AE0D78);
  v10 = *(v9 - 8);
  v42 = *(v10 + 64);
  __chkstk_darwin(v9);
  v43 = &v36 - v11;
  v12 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v39 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v40 = v13;
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 32);
  v44 = a2;
  v16 = *(a2 + v15);
  v17 = *(v16 + 16);
  v18 = _swiftEmptyArrayStorage;
  v45 = a3;
  if (v17)
  {
    v36 = a1;
    v37 = v10;
    v38 = v9;
    aBlock[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v19 = objc_opt_self();
    v20 = v46 + 16;
    v46 = *(v46 + 16);
    v47 = v19;
    v21 = v16 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v22 = *(v20 + 56);
    v23 = (v20 - 8);
    do
    {
      (v46)(v8, v21, v6);
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      v27 = [v47 readingIntentWithURL:v25 options:0];

      (*v23)(v8, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += v22;
      --v17;
    }

    while (v17);
    v18 = aBlock[0];
    v10 = v37;
    v9 = v38;
    a1 = v36;
  }

  v28 = [objc_allocWithZone(NSOperationQueue) init];
  sub_1000065A8(0, &qword_100AE0D80);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30 = v41;
  sub_1003A6EF8(v44, v41, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
  v31 = v43;
  (*(v10 + 16))(v43, a1, v9);
  v32 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v33 = (v40 + *(v10 + 80) + v32) & ~*(v10 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v18;
  sub_1003A6F60(v30, v34 + v32, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
  (*(v10 + 32))(v34 + v33, v31, v9);
  aBlock[4] = sub_1003A72F4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10039D53C;
  aBlock[3] = &unk_100A69D58;
  v35 = _Block_copy(aBlock);

  [v45 coordinateAccessWithIntents:isa queue:v28 byAccessor:v35];
  _Block_release(v35);
}

uint64_t sub_10039C010(double *a1, unint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4)
{
  v169 = a4;
  v165 = a3;
  v162 = a2;
  v166 = type metadata accessor for Suggestion.LivePhoto(0);
  __chkstk_darwin(v166);
  v152 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v160 = &v141 - v7;
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v148 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v141 - v11;
  v154 = sub_1000F24EC(&unk_100AEE0A0);
  __chkstk_darwin(v154);
  v147 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v149 = &v141 - v14;
  v163 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v163);
  v157 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for UUID();
  v167 = *(v159 - 8);
  __chkstk_darwin(v159);
  v150 = (&v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v168 = &v141 - v18;
  v161 = type metadata accessor for AssetSource();
  v155 = *(v161 - 8);
  __chkstk_darwin(v161);
  v20 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  v24 = type metadata accessor for AssetType();
  v164 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v141 - v28;
  v30 = type metadata accessor for URL();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v141 - v35;
  v37 = type metadata accessor for Suggestion.Photo(0);
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  if (a1)
  {
    swift_willThrow();
    swift_errorRetain();
LABEL_3:
    v172 = a1;
    sub_1000F24EC(&qword_100AE0D78);
    return CheckedContinuation.resume(throwing:)();
  }

  v144 = &v141 - v40;
  v142 = v26;
  v143 = v20;
  v145 = v24;
  v153 = v29;
  v146 = v23;
  v156 = v39;
  v170 = v30;
  v43 = v162;
  v151 = v41;
  if (v162 >> 62)
  {
    v44 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v44 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v156;
  v46 = v153;
  v47 = v165;
  v48 = _swiftEmptyArrayStorage;
  if (v44)
  {
    v172 = _swiftEmptyArrayStorage;
    sub_10019A0A0(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
      goto LABEL_48;
    }

    v48 = v172;
    if ((v43 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v44; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v50 = [swift_unknownObjectRetain() URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease_n();

        v172 = v48;
        v52 = *(v48 + 2);
        v51 = *(v48 + 3);
        if (v52 >= v51 >> 1)
        {
          sub_10019A0A0(v51 > 1, v52 + 1, 1);
          v48 = v172;
        }

        *(v48 + 2) = v52 + 1;
        (*(v31 + 4))(v48 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 9) * v52, v36, v170);
      }
    }

    else
    {
      v53 = (v43 + 32);
      do
      {
        v54 = *v53;
        v55 = [v54 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v172 = v48;
        v57 = *(v48 + 2);
        v56 = *(v48 + 3);
        if (v57 >= v56 >> 1)
        {
          sub_10019A0A0(v56 > 1, v57 + 1, 1);
          v48 = v172;
        }

        *(v48 + 2) = v57 + 1;
        (*(v31 + 4))(v48 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 9) * v57, v33, v170);
        ++v53;
        --v44;
      }

      while (v44);
    }

    v47 = v165;
    v46 = v153;
  }

  sub_100086C04(v47, &v172);
  sub_1000F24EC(&qword_100AE0D88);
  v58 = v144;
  v59 = swift_dynamicCast();
  v60 = v168;
  v61 = v161;
  v62 = v160;
  if ((v59 & 1) == 0)
  {
    v85 = v161;
    if (!swift_dynamicCast())
    {

      sub_100170130();
      v110 = swift_allocError();
      *v111 = 0;
      a1 = v110;
      swift_willThrow();
      sub_10000BA7C(&v172);
      goto LABEL_3;
    }

    sub_1003A6F60(v62, v152, type metadata accessor for Suggestion.LivePhoto);
    v86 = v153;
    (*(v164 + 13))(v153, enum case for AssetType.livePhoto(_:), v145);
    v87 = v146;
    (*(v155 + 104))(v146, enum case for AssetSource.suggestionSheet(_:), v85);
    UUID.init()();
    v88 = objc_allocWithZone(type metadata accessor for LivePhotoAsset());
    v89 = sub_100116748(v60, v86, v87);
    if (*(v48 + 2))
    {
      v90 = v89;
      v91 = *(v31 + 2);
      v92 = v157;
      v164 = v48 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
      v165 = v91;
      (v91)(v157);
      v162 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v93 = v92;
      v86 = v90;
      UUID.init()();
      v94 = UUID.uuidString.getter();
      v96 = v95;
      v46 = *(v167 + 8);
      v167 += 8;
      (v46)(v60, v159);
      type metadata accessor for AssetAttachment(0);
      v97 = swift_allocObject();
      *(v97 + 16) = 0;
      sub_1003A6F60(v93, v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v98 = (v97 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v98 = v94;
      v98[1] = v96;
      v58 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v86 + v58) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v86 + v58) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_28:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    if (*(v48 + 2) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v99 = &v164[*(v31 + 9)];
      v100 = v157;
      v165(v157, v99, v170);

      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v101 = v168;
      UUID.init()();
      v102 = UUID.uuidString.getter();
      v104 = v103;
      (v46)(v101, v159);
      v105 = swift_allocObject();
      *(v105 + 16) = 0;
      sub_1003A6F60(v100, v105 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v106 = (v105 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v106 = v102;
      v106[1] = v104;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v86 + v58) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v86 + v58) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_30:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v107 = v166;
        v108 = v152;
        sub_1000082B4(v152 + v166[6], v148, &unk_100AD4790);
        v109 = v108 + v107[8];
        if (*(v109 + 32))
        {
        }

        else
        {
          v129 = *(v109 + 16);
          v128 = *(v109 + 24);
          v131 = *v109;
          v130 = *(v109 + 8);

          v174.origin.x = v131;
          v174.origin.y = v130;
          v174.size.width = v129;
          v174.size.height = v128;
          v132 = NSStringFromCGRect(v174);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v133 = v108 + v166[7];
        if ((*(v133 + 32) & 1) == 0)
        {
          v134 = NSStringFromCGRect(*v133);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v135 = v108 + v166[9];
        if ((*(v135 + 32) & 1) == 0)
        {
          v136 = NSStringFromCGRect(*v135);
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v108 = v152;
        }

        v137 = v147;
        PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&unk_100AEE0B0);
        v138 = swift_allocObject();
        v139 = *(*v138 + 104);
        v140 = sub_1000F24EC(&qword_100AD5B20);
        (*(*(v140 - 8) + 56))(v138 + v139, 1, 1, v140);
        *(v138 + *(*v138 + 112)) = xmmword_100941EE0;
        sub_100021CEC(v137, v138 + *(*v138 + 120), &unk_100AEE0A0);
        *(v86 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata) = v138;

        v171 = v86;
        sub_1000F24EC(&qword_100AE0D78);
        CheckedContinuation.resume(returning:)();

        v126 = type metadata accessor for Suggestion.LivePhoto;
        v127 = v108;
        goto LABEL_45;
      }
    }

    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_30;
  }

  sub_1003A6F60(v58, v151, type metadata accessor for Suggestion.Photo);
  v63 = v164;
  (*(v164 + 13))(v46, enum case for AssetType.photo(_:), v145);
  v64 = v155;
  v65 = v146;
  (*(v155 + 104))(v146, enum case for AssetSource.suggestionSheet(_:), v61);
  UUID.init()();
  v166 = objc_allocWithZone(type metadata accessor for PhotoAsset());
  *(v166 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = 0;
  v45 = v150;
  v66 = v159;
  (*(v167 + 16))(v150, v60, v159);
  v67 = *(v63 + 2);
  v68 = v142;
  v69 = v145;
  v67(v142, v46, v145);
  v70 = v143;
  (*(v64 + 16))(v143, v65, v61);
  v71 = v68;
  v72 = v167;
  v73 = v168;
  v74 = v70;
  v75 = v66;
  v166 = sub_100285908(v45, v71, v74);
  v167 = *(v72 + 8);
  (v167)(v73, v66);
  (*(v64 + 8))(v146, v61);
  (*(v164 + 1))(v153, v69);
  if (!*(v48 + 2))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v76 = v157;
  (*(v31 + 2))(v157, v48 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v170);
  v31 = v166;

  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  UUID.init()();
  v77 = UUID.uuidString.getter();
  v79 = v78;
  (v167)(v73, v75);
  type metadata accessor for AssetAttachment(0);
  v80 = swift_allocObject();
  *(v80 + 16) = 0;
  sub_1003A6F60(v76, v80 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v81 = (v80 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v81 = v77;
  v81[1] = v79;
  v82 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v45 = v156;
  if (*((*(v31 + v82) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + v82) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_49:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v83 = v151;
  sub_1000082B4(v151 + v45[5], v158, &unk_100AD4790);
  v84 = v83 + v45[7];
  if (*(v84 + 32))
  {
  }

  else
  {
    v113 = *(v84 + 16);
    v112 = *(v84 + 24);
    v115 = *v84;
    v114 = *(v84 + 8);

    v173.origin.x = v115;
    v173.origin.y = v114;
    v173.size.width = v113;
    v173.size.height = v112;
    v116 = NSStringFromCGRect(v173);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v117 = v151;
  v118 = v151 + v45[6];
  if ((*(v118 + 32) & 1) == 0)
  {
    v119 = NSStringFromCGRect(*v118);
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v117 = v151;
  }

  v120 = v117 + v156[8];
  if ((*(v120 + 32) & 1) == 0)
  {
    v121 = NSStringFromCGRect(*v120);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v122 = v149;
  PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&unk_100AEE0B0);
  v123 = swift_allocObject();
  v124 = *(*v123 + 104);
  v125 = sub_1000F24EC(&qword_100AD5B20);
  (*(*(v125 - 8) + 56))(v123 + v124, 1, 1, v125);
  *(v123 + *(*v123 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v122, v123 + *(*v123 + 120), &unk_100AEE0A0);
  *(v31 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata) = v123;

  v171 = v31;
  sub_1000F24EC(&qword_100AE0D78);
  CheckedContinuation.resume(returning:)();

  v126 = type metadata accessor for Suggestion.Photo;
  v127 = v151;
LABEL_45:
  sub_1003A3E80(v127, v126);
  return sub_10000BA7C(&v172);
}

void sub_10039D53C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10039D5A8(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v5 = type metadata accessor for JournalFeatureFlags();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = type metadata accessor for Suggestion.ItemContent(0);
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = type metadata accessor for EntryDateSource();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v3[44] = v8;
  v3[45] = *(v8 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v9 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v3[54] = v10;
  v11 = *(v10 - 8);
  v3[55] = v11;
  v3[56] = *(v11 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v12 = *(sub_1000F24EC(&unk_100AD4790) - 8);
  v3[59] = v12;
  v3[60] = *(v12 + 64);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v3[71] = v15;
  v3[70] = v13;

  return _swift_task_switch(sub_10039D9E0, v13, v15);
}

uint64_t sub_10039D9E0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 432);
  v3 = *(v0 + 440);
  v4 = **(v0 + 272);
  *(v0 + 576) = v4;
  v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId;
  swift_beginAccess();
  v146 = v5;
  sub_1000082B4(v4 + v5, v1, &qword_100AD1420);
  v6 = *(v3 + 48);
  LODWORD(v2) = v6(v1, 1, v2);
  sub_100004F84(v1, &qword_100AD1420);
  if (v2 == 1 || (v7 = *(v0 + 528), v8 = *(v0 + 352), v9 = *(v0 + 360), v10 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate, swift_beginAccess(), sub_1000082B4(v4 + v10, v7, &unk_100AD4790), v11 = *(v9 + 48), LODWORD(v8) = v11(v7, 1, v8), sub_100004F84(v7, &unk_100AD4790), v8 == 1) || (v12 = *(v0 + 520), v13 = *(v0 + 352), v14 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate, swift_beginAccess(), sub_1000082B4(v4 + v14, v12, &unk_100AD4790), LODWORD(v13) = v11(v12, 1, v13), sub_100004F84(v12, &unk_100AD4790), v13 == 1))
  {
    v15 = *(v0 + 544);
    v16 = *(v0 + 432);
    v17 = *(v0 + 272);
    v18 = v17 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v19 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v18 + v19[7], v15, &qword_100AD1420);
    v20 = v6(v15, 1, v16);
    v21 = *(v0 + 544);
    v22 = *(v0 + 464);
    v24 = *(v0 + 432);
    v23 = *(v0 + 440);
    if (v20 == 1)
    {
      (*(v23 + 16))(v22, v18 + v19[11], *(v0 + 432));
      if (v6(v21, 1, v24) != 1)
      {
        sub_100004F84(*(v0 + 544), &qword_100AD1420);
      }
    }

    else
    {
      (*(v23 + 32))(v22, *(v0 + 544), *(v0 + 432));
    }

    v25 = *(v0 + 424);
    v26 = v19[6];
    v144 = v18;
    sub_1000082B4(v18 + v26, v25, &qword_100AD3750);
    v27 = type metadata accessor for DateInterval();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v25, 1, v27) == 1)
    {
      sub_100004F84(*(v0 + 424), &qword_100AD3750);
      v30 = 1;
    }

    else
    {
      v31 = *(v0 + 424);
      DateInterval.start.getter();
      (*(v28 + 8))(v31, v27);
      v30 = 0;
    }

    v32 = *(v0 + 416);
    v33 = *(*(v0 + 360) + 56);
    v33(*(v0 + 512), v30, 1, *(v0 + 352));
    sub_1000082B4(v144 + v26, v32, &qword_100AD3750);
    if (v29(v32, 1, v27) == 1)
    {
      sub_100004F84(*(v0 + 416), &qword_100AD3750);
      v34 = 1;
    }

    else
    {
      v35 = *(v0 + 416);
      DateInterval.end.getter();
      (*(v28 + 8))(v35, v27);
      v34 = 0;
    }

    v36 = *(v0 + 536);
    v37 = *(v0 + 504);
    v38 = *(v0 + 512);
    v137 = *(v0 + 496);
    v138 = *(v0 + 488);
    v140 = *(v0 + 472);
    v141 = *(v0 + 480);
    v39 = *(v0 + 464);
    v136 = *(v0 + 456);
    v40 = *(v0 + 440);
    v139 = *(v0 + 448);
    v135 = v39;
    v41 = *(v0 + 432);
    v142 = *(v0 + 392);
    v143 = *(v0 + 384);
    v145 = *(v0 + 400);
    v33(v37, v34, 1, *(v0 + 352));
    v42 = *(v40 + 16);
    v42(v36, v39, v41);
    v43 = v41;
    v134 = v41;
    (*(v40 + 56))(v36, 0, 1, v41);
    swift_beginAccess();
    sub_100014318(v36, v4 + v146, &qword_100AD1420);
    swift_endAccess();
    v44 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleDate;
    swift_beginAccess();
    sub_100221D8C(v38, v4 + v44);
    swift_endAccess();
    v45 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleEndDate;
    swift_beginAccess();
    sub_100221D8C(v37, v4 + v45);
    swift_endAccess();
    v46 = swift_allocObject();
    swift_weakInit();
    v42(v136, v135, v43);
    sub_1000082B4(v38, v137, &unk_100AD4790);
    sub_1000082B4(v37, v138, &unk_100AD4790);
    v47 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v48 = *(v140 + 80);
    v49 = (v139 + v48 + v47) & ~v48;
    v50 = (v141 + v48 + v49) & ~v48;
    v51 = swift_allocObject();
    *(v0 + 584) = v51;
    *(v51 + 16) = v46;
    (*(v40 + 32))(v51 + v47, v136, v134);
    sub_100021CEC(v137, v51 + v49, &unk_100AD4790);
    sub_100021CEC(v138, v51 + v50, &unk_100AD4790);
    (*(v142 + 104))(v145, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v143);
    v52 = swift_task_alloc();
    *(v0 + 592) = v52;
    *v52 = v0;
    *(v52 + 8) = sub_10039E954;
    v53 = *(v0 + 400);
    v54 = sub_1003A9920;
    v55 = &type metadata for () + 8;
    v56 = v51;

    return NSManagedObjectContext.perform<A>(schedule:_:)(v52, v53, v54, v56, v55);
  }

  v57 = *(v0 + 408);
  v58 = *(v0 + 272);
  v59 = type metadata accessor for SuggestionImportSession(0);
  *(v0 + 600) = v59;
  v60 = *(v59 + 20);
  *(v0 + 632) = v60;
  v61 = v58 + v60;
  v62 = type metadata accessor for Suggestion(0);
  *(v0 + 608) = v62;
  sub_1000082B4(v61 + *(v62 + 24), v57, &qword_100AD3750);
  v63 = type metadata accessor for DateInterval();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v57, 1, v63);
  v66 = *(v0 + 408);
  if (v65 == 1)
  {
    v52 = sub_100004F84(*(v0 + 408), &qword_100AD3750);
  }

  else
  {
    v68 = *(v0 + 368);
    v67 = *(v0 + 376);
    v69 = *(v0 + 352);
    v70 = *(v0 + 360);
    v71 = *(v0 + 272);
    DateInterval.start.getter();
    (*(v64 + 8))(v66, v63);
    (*(v70 + 32))(v67, v68, v69);
    if (*(v71 + *(v59 + 24)) == 1 && (sub_10005AAB0(1) & 1) == 0 && (sub_10005AAB0(16) & 1) == 0)
    {
      (*(*(v0 + 336) + 104))(*(v0 + 344), enum case for EntryDateSource.moment(_:), *(v0 + 328));
      v99 = swift_task_alloc();
      *(v0 + 616) = v99;
      *v99 = v0;
      v99[1] = sub_10039F338;
      v100 = *(v0 + 376);
      v101 = *(v0 + 344);
      v103 = *(v0 + 256);
      v102 = *(v0 + 264);

      return sub_10078281C(v103, v102, v100, v101);
    }

    v52 = (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
  }

  v72 = *(*(v0 + 272) + *(v0 + 632));
  v73 = *(v72 + 16);
  if (v73)
  {
    v74 = 0;
    v76 = *(v0 + 304);
    v75 = *(v0 + 312);
    while (v74 < *(v72 + 16))
    {
      v77 = *(v0 + 320);
      sub_1003A6EF8(v72 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v74++, v77, type metadata accessor for Suggestion.ItemContent);
      v78 = *(v77 + *(v76 + 20));
      v79 = (v78 + 32);
      v80 = *(v78 + 16) + 1;
      while (--v80)
      {
        v81 = *v79;
        v79 += 4;
        if (v81 == &type metadata for Suggestion.Reflection)
        {
          sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
          v82 = 1;
          goto LABEL_32;
        }
      }

      v52 = sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
      if (v74 == v73)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_75;
  }

LABEL_31:
  v82 = 0;
LABEL_32:
  if (*(*(v0 + 272) + *(*(v0 + 600) + 28)) != 2)
  {
    v83 = sub_1000819F8();
    if (v83)
    {
      v84 = v83;
      v85 = [v83 string];

      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v87;

      if ((v88 & 0x2000000000000000) == 0)
      {
        v89 = v86 & 0xFFFFFFFFFFFFLL;
        goto LABEL_38;
      }
    }

    else
    {
      v88 = 0xE000000000000000;
    }

    v89 = HIBYTE(v88) & 0xF;
LABEL_38:
    if (!v89)
    {
      v90 = *(v0 + 272) + *(v0 + 632);
      v92 = *(v90 + 8);
      v91 = *(v90 + 16);
      v93 = HIBYTE(v91) & 0xF;
      if ((v91 & 0x2000000000000000) == 0)
      {
        v93 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v93)
      {
        v94 = v82;
      }

      else
      {
        v94 = 1;
      }

      if ((v94 & 1) == 0)
      {
        v96 = *(v0 + 288);
        v95 = *(v0 + 296);
        v97 = *(v0 + 280);
        (*(v96 + 104))(v95, enum case for JournalFeatureFlags.enhancedSync(_:), v97);
        v98 = JournalFeatureFlags.isEnabled.getter();
        (*(v96 + 8))(v95, v97);
        if (v98)
        {
          sub_10077F814(v92, v91);
        }

        else
        {
          v105 = objc_allocWithZone(NSAttributedString);
          v106 = String._bridgeToObjectiveC()();
          v107 = [v105 initWithString:v106];

          sub_10078009C(v107);
        }

        v108 = *(v0 + 576);
        *(v108 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
        v109 = *(v108 + 24);
        v110 = swift_allocObject();
        swift_weakInit();
        *(v0 + 96) = sub_1003A9A34;
        *(v0 + 104) = v110;
        *(v0 + 64) = _NSConcreteStackBlock;
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_100006C7C;
        *(v0 + 88) = &unk_100A6A3C0;
        v111 = _Block_copy((v0 + 64));

        [v109 performBlock:v111];
        _Block_release(v111);
      }
    }
  }

  v112 = *(*(v0 + 576) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  if (v112)
  {
    v113 = [v112 string];
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    if ((v116 & 0x2000000000000000) == 0)
    {
      if ((v114 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v116 = 0xE000000000000000;
  }

  if ((v116 & 0xF00000000000000) == 0)
  {
LABEL_58:
    v117 = *(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 36));
    if (v117)
    {
      v118 = *(v117 + 16);
      if (v118)
      {
        v52 = sub_1001C2FA4(v118);
        if ((v52 & 0x8000000000000000) != 0)
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        if (v52 >= *(v117 + 16))
        {
LABEL_77:
          __break(1u);
          return NSManagedObjectContext.perform<A>(schedule:_:)(v52, v53, v54, v56, v55);
        }

        v119 = v117 + 16 * v52;
        v120 = *(v119 + 32);
        v121 = *(v119 + 40);
        v122 = HIBYTE(v121) & 0xF;
        if ((v121 & 0x2000000000000000) == 0)
        {
          v122 = v120 & 0xFFFFFFFFFFFFLL;
        }

        if (v122)
        {
          v123 = v82;
        }

        else
        {
          v123 = 1;
        }

        if ((v123 & 1) == 0)
        {
          v124 = objc_allocWithZone(NSAttributedString);

          v125 = String._bridgeToObjectiveC()();

          v126 = [v124 initWithString:v125];

          sub_100786300(v126);
        }
      }
    }
  }

LABEL_69:
  if ((*(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 40)) & 1) == 0)
  {
    v127 = *(v0 + 576);
    *(v127 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1;
    v128 = *(v127 + 24);
    v129 = swift_allocObject();
    *(v129 + 16) = sub_1003A9A2C;
    *(v129 + 24) = v127;
    *(v0 + 48) = sub_100028EF4;
    *(v0 + 56) = v129;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A6A398;
    v130 = _Block_copy((v0 + 16));

    [v128 performBlockAndWait:v130];
    _Block_release(v130);
    LOBYTE(v128) = swift_isEscapingClosureAtFileLocation();

    if (v128)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }
  }

  v131 = swift_task_alloc();
  *(v0 + 624) = v131;
  *v131 = v0;
  v131[1] = sub_10039FB04;
  v133 = *(v0 + 256);
  v132 = *(v0 + 264);

  return (sub_10062833C)(v133, v132);
}

uint64_t sub_10039E954()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[49] + 8))(v2[50], v2[48]);

    v4 = v2[71];
    v5 = v2[70];

    return _swift_task_switch(sub_10039EAAC, v5, v4);
  }
}

unint64_t sub_10039EAAC()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);
  v4 = *(v0 + 440);
  sub_100004F84(*(v0 + 504), &unk_100AD4790);
  sub_100004F84(v1, &unk_100AD4790);
  (*(v4 + 8))(v2, v3);
  v5 = *(v0 + 408);
  v6 = *(v0 + 272);
  v7 = type metadata accessor for SuggestionImportSession(0);
  *(v0 + 600) = v7;
  v8 = *(v7 + 20);
  *(v0 + 632) = v8;
  v9 = v6 + v8;
  v10 = type metadata accessor for Suggestion(0);
  *(v0 + 608) = v10;
  sub_1000082B4(v9 + *(v10 + 24), v5, &qword_100AD3750);
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v5, 1, v11);
  v14 = *(v0 + 408);
  if (v13 == 1)
  {
    result = sub_100004F84(*(v0 + 408), &qword_100AD3750);
  }

  else
  {
    v17 = *(v0 + 368);
    v16 = *(v0 + 376);
    v18 = *(v0 + 352);
    v19 = *(v0 + 360);
    v20 = *(v0 + 272);
    DateInterval.start.getter();
    (*(v12 + 8))(v14, v11);
    (*(v19 + 32))(v16, v17, v18);
    if (*(v20 + *(v7 + 24)) == 1 && (sub_10005AAB0(1) & 1) == 0 && (sub_10005AAB0(16) & 1) == 0)
    {
      (*(*(v0 + 336) + 104))(*(v0 + 344), enum case for EntryDateSource.moment(_:), *(v0 + 328));
      v47 = swift_task_alloc();
      *(v0 + 616) = v47;
      *v47 = v0;
      v47[1] = sub_10039F338;
      v48 = *(v0 + 376);
      v49 = *(v0 + 344);
      v51 = *(v0 + 256);
      v50 = *(v0 + 264);

      return sub_10078281C(v51, v50, v48, v49);
    }

    result = (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
  }

  v21 = *(*(v0 + 272) + *(v0 + 632));
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = 0;
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    while (v23 < *(v21 + 16))
    {
      v26 = *(v0 + 320);
      sub_1003A6EF8(v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23++, v26, type metadata accessor for Suggestion.ItemContent);
      v27 = *(v26 + *(v25 + 20));
      v28 = (v27 + 32);
      v29 = *(v27 + 16) + 1;
      while (--v29)
      {
        v30 = *v28;
        v28 += 4;
        if (v30 == &type metadata for Suggestion.Reflection)
        {
          sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
          v31 = 1;
          goto LABEL_16;
        }
      }

      result = sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
      if (v23 == v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_15:
  v31 = 0;
LABEL_16:
  if (*(*(v0 + 272) + *(*(v0 + 600) + 28)) != 2)
  {
    v32 = sub_1000819F8();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 string];

      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if ((v37 & 0x2000000000000000) == 0)
      {
        if ((v35 & 0xFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_36;
        }

LABEL_23:
        v38 = *(v0 + 272) + *(v0 + 632);
        v40 = *(v38 + 8);
        v39 = *(v38 + 16);
        v41 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v41 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v41)
        {
          v42 = v31;
        }

        else
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          v44 = *(v0 + 288);
          v43 = *(v0 + 296);
          v45 = *(v0 + 280);
          (*(v44 + 104))(v43, enum case for JournalFeatureFlags.enhancedSync(_:), v45);
          v46 = JournalFeatureFlags.isEnabled.getter();
          (*(v44 + 8))(v43, v45);
          if (v46)
          {
            sub_10077F814(v40, v39);
          }

          else
          {
            v52 = objc_allocWithZone(NSAttributedString);
            v53 = String._bridgeToObjectiveC()();
            v54 = [v52 initWithString:v53];

            sub_10078009C(v54);
          }

          v55 = *(v0 + 576);
          *(v55 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v56 = *(v55 + 24);
          v57 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v57;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A6A3C0;
          v58 = _Block_copy((v0 + 64));

          [v56 performBlock:v58];
          _Block_release(v58);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    if ((v37 & 0xF00000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  v59 = *(*(v0 + 576) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  if (v59)
  {
    v60 = [v59 string];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if ((v63 & 0x2000000000000000) == 0)
    {
      if ((v61 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  if ((v63 & 0xF00000000000000) == 0)
  {
LABEL_42:
    v64 = *(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 36));
    if (v64)
    {
      v65 = *(v64 + 16);
      if (v65)
      {
        result = sub_1001C2FA4(v65);
        if ((result & 0x8000000000000000) != 0)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if (result >= *(v64 + 16))
        {
LABEL_61:
          __break(1u);
          return result;
        }

        v66 = v64 + 16 * result;
        v67 = *(v66 + 32);
        v68 = *(v66 + 40);
        v69 = HIBYTE(v68) & 0xF;
        if ((v68 & 0x2000000000000000) == 0)
        {
          v69 = v67 & 0xFFFFFFFFFFFFLL;
        }

        if (v69)
        {
          v70 = v31;
        }

        else
        {
          v70 = 1;
        }

        if ((v70 & 1) == 0)
        {
          v71 = objc_allocWithZone(NSAttributedString);

          v72 = String._bridgeToObjectiveC()();

          v73 = [v71 initWithString:v72];

          sub_100786300(v73);
        }
      }
    }
  }

LABEL_53:
  if ((*(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 40)) & 1) == 0)
  {
    v74 = *(v0 + 576);
    *(v74 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1;
    v75 = *(v74 + 24);
    v76 = swift_allocObject();
    *(v76 + 16) = sub_1003A9A2C;
    *(v76 + 24) = v74;
    *(v0 + 48) = sub_100028EF4;
    *(v0 + 56) = v76;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A6A398;
    v77 = _Block_copy((v0 + 16));

    [v75 performBlockAndWait:v77];
    _Block_release(v77);
    LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

    if (v75)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }
  }

  v78 = swift_task_alloc();
  *(v0 + 624) = v78;
  *v78 = v0;
  v78[1] = sub_10039FB04;
  v79 = *(v0 + 256);

  return sub_10062833C(v79);
}

uint64_t sub_10039F338()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v4 = *(*v0 + 328);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 568);
  v6 = *(v1 + 560);

  return _swift_task_switch(sub_10039F4BC, v6, v5);
}

unint64_t sub_10039F4BC()
{
  result = (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));
  v2 = *(*(v0 + 272) + *(v0 + 632));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    while (v4 < *(v2 + 16))
    {
      v7 = *(v0 + 320);
      sub_1003A6EF8(v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4++, v7, type metadata accessor for Suggestion.ItemContent);
      v8 = *(v7 + *(v6 + 20));
      v9 = (v8 + 32);
      v10 = *(v8 + 16) + 1;
      while (--v10)
      {
        v11 = *v9;
        v9 += 4;
        if (v11 == &type metadata for Suggestion.Reflection)
        {
          sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
          v12 = 1;
          goto LABEL_10;
        }
      }

      result = sub_1003A3E80(*(v0 + 320), type metadata accessor for Suggestion.ItemContent);
      if (v4 == v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_9:
  v12 = 0;
LABEL_10:
  if (*(*(v0 + 272) + *(*(v0 + 600) + 28)) != 2)
  {
    v13 = sub_1000819F8();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 string];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if ((v18 & 0x2000000000000000) == 0)
      {
        if ((v16 & 0xFFFFFFFFFFFFLL) != 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v19 = *(v0 + 272) + *(v0 + 632);
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        v22 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v22 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          v23 = v12;
        }

        else
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {
          v25 = *(v0 + 288);
          v24 = *(v0 + 296);
          v26 = *(v0 + 280);
          (*(v25 + 104))(v24, enum case for JournalFeatureFlags.enhancedSync(_:), v26);
          v27 = JournalFeatureFlags.isEnabled.getter();
          (*(v25 + 8))(v24, v26);
          if (v27)
          {
            sub_10077F814(v21, v20);
          }

          else
          {
            v28 = objc_allocWithZone(NSAttributedString);
            v29 = String._bridgeToObjectiveC()();
            v30 = [v28 initWithString:v29];

            sub_10078009C(v30);
          }

          v31 = *(v0 + 576);
          *(v31 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) = 1;
          v32 = *(v31 + 24);
          v33 = swift_allocObject();
          swift_weakInit();
          *(v0 + 96) = sub_1003A9A34;
          *(v0 + 104) = v33;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_100006C7C;
          *(v0 + 88) = &unk_100A6A3C0;
          v34 = _Block_copy((v0 + 64));

          [v32 performBlock:v34];
          _Block_release(v34);
        }

        goto LABEL_27;
      }
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    if ((v18 & 0xF00000000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_17;
  }

LABEL_27:
  v35 = *(*(v0 + 576) + OBJC_IVAR____TtC7Journal14EntryViewModel_prompts);
  if (v35)
  {
    v36 = [v35 string];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    if ((v39 & 0x2000000000000000) == 0)
    {
      if ((v37 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  if ((v39 & 0xF00000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  v40 = *(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 36));
  if (v40)
  {
    v41 = *(v40 + 16);
    if (v41)
    {
      result = sub_1001C2FA4(v41);
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      if (result >= *(v40 + 16))
      {
LABEL_52:
        __break(1u);
        return result;
      }

      v42 = v40 + 16 * result;
      v43 = *(v42 + 32);
      v44 = *(v42 + 40);
      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v43 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        v46 = v12;
      }

      else
      {
        v46 = 1;
      }

      if ((v46 & 1) == 0)
      {
        v47 = objc_allocWithZone(NSAttributedString);

        v48 = String._bridgeToObjectiveC()();

        v49 = [v47 initWithString:v48];

        sub_100786300(v49);
      }
    }
  }

LABEL_44:
  if ((*(*(v0 + 272) + *(v0 + 632) + *(*(v0 + 608) + 40)) & 1) == 0)
  {
    v50 = *(v0 + 576);
    *(v50 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) = 1;
    v51 = *(v50 + 24);
    v52 = swift_allocObject();
    *(v52 + 16) = sub_1003A9A2C;
    *(v52 + 24) = v50;
    *(v0 + 48) = sub_100028EF4;
    *(v0 + 56) = v52;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10001A7D4;
    *(v0 + 40) = &unk_100A6A398;
    v53 = _Block_copy((v0 + 16));

    [v51 performBlockAndWait:v53];
    _Block_release(v53);
    LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

    if (v51)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  v54 = swift_task_alloc();
  *(v0 + 624) = v54;
  *v54 = v0;
  v54[1] = sub_10039FB04;
  v56 = *(v0 + 256);
  v55 = *(v0 + 264);

  return (sub_10062833C)(v56, v55);
}

uint64_t sub_10039FB04()
{
  v1 = *v0;

  v2 = *(v1 + 568);
  v3 = *(v1 + 560);

  return _swift_task_switch(sub_10039FC24, v3, v2);
}

uint64_t sub_10039FC24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10039FD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[34] = a3;
  v4[35] = v3;
  v4[32] = a1;
  v4[33] = a2;
  v6 = type metadata accessor for Date();
  v4[36] = v6;
  v4[37] = *(v6 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[41] = v7;
  v4[42] = v9;

  return _swift_task_switch(sub_10039FE9C, v7, v9);
}

uint64_t sub_10039FE9C()
{
  v1 = v0[35];
  static Date.now.getter();
  v2 = swift_task_alloc();
  v0[43] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_10039FF88;
  v4 = v0[33];
  v5 = v0[34];

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, &type metadata for SuggestionImportSession.AssetFetchResult, &type metadata for SuggestionImportSession.AssetFetchResult, v4, v5, &unk_1009522A0, v2, &type metadata for SuggestionImportSession.AssetFetchResult);
}

uint64_t sub_10039FF88()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 328);
  v4 = *(v2 + 336);
  if (v0)
  {
    v5 = sub_1003A04E0;
  }

  else
  {
    v5 = sub_1003A009C;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_1003A009C()
{
  v1 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v1;
  *(v0 + 160) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v2;
  v3 = *(v0 + 128);
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  v5 = v3 >> 62;
  if (v3 >> 62)
  {
LABEL_40:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v3 & 0xC000000000000001;

  v8 = 0;
  while (v6 != v8)
  {
    if (v7)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v9 = *(v3 + 8 * v8 + 32);
    }

    v10 = v9;
    type metadata accessor for MultiPinMapAsset();
    v11 = swift_dynamicCastClass();

    if (v11)
    {
      v6 = v8;
      break;
    }

    v12 = __OFADD__(v8++, 1);
    if (v12)
    {
      goto LABEL_39;
    }
  }

  if (!v5)
  {
    if (v6 != *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

LABEL_22:

    v15 = 0;
    goto LABEL_23;
  }

  if (v6 == _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v7)
  {
    goto LABEL_44;
  }

  if (v6 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v3 + 32 + 8 * v6); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v8 = i;
      type metadata accessor for MultiPinMapAsset();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        goto LABEL_46;
      }

      v15 = v14;

LABEL_23:
      v16 = *(v0 + 112) != 1;
      v17 = v5 ? _CocoaArrayWrapper.endIndex.getter() : *(v4 + 16);
      v18 = v15 != 0;
      v19 = v17 - v18;
      if (__OFSUB__(v17, v18))
      {
        break;
      }

      if (!v15 || (v20 = v15, v21 = sub_100076E78(), v23 = v22, v20, (v23 & 1) != 0))
      {
        v21 = 0;
      }

      v24 = v16 + v19;
      if (__OFADD__(v16, v19))
      {
        goto LABEL_42;
      }

      v12 = __OFADD__(v24, v21);
      v25 = v24 + v21;
      if (!v12)
      {
        v48 = v25;
        v49 = v16;
        v27 = *(v0 + 312);
        v26 = *(v0 + 320);
        v29 = *(v0 + 288);
        v28 = *(v0 + 296);
        type metadata accessor for SuggestionImportSession(0);
        (*(v28 + 16))(v27, v26, v29);
        sub_1003A714C(v0 + 96, v0 + 176);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 312);
        if (v32)
        {
          v34 = *(v0 + 296);
          v35 = *(v0 + 304);
          v47 = *(v0 + 288);
          v36 = swift_slowAlloc();
          *v36 = 134219264;
          *(v36 + 4) = v48;
          *(v36 + 12) = 2048;
          *(v36 + 14) = v49;
          *(v36 + 22) = 2048;
          *(v36 + 24) = v19;
          *(v36 + 32) = 2048;
          *(v36 + 34) = v21;
          *(v36 + 42) = 2048;
          *(v36 + 44) = *(*(v0 + 136) + 16);
          sub_1003A3E50(v0 + 96);
          *(v36 + 52) = 2048;
          static Date.now.getter();
          Date.timeIntervalSince(_:)();
          v38 = v37;
          v39 = *(v34 + 8);
          v39(v35, v47);
          v39(v33, v47);
          *(v36 + 54) = v38;
          _os_log_impl(&_mh_execute_header, v30, v31, "Mapped framework asset(s) to %ld Journal asset(s) [%ld reflection, %ld asset, %ld map pin] and %ld pending photo requests, %f seconds elapsed.", v36, 0x3Eu);
        }

        else
        {
          v41 = *(v0 + 288);
          v40 = *(v0 + 296);

          sub_1003A3E50(v0 + 96);
          v39 = *(v40 + 8);
          v39(v33, v41);
        }

        v42 = *(v0 + 256);
        v39(*(v0 + 320), *(v0 + 288));
        *v42 = *(v0 + 96);
        v43 = *(v0 + 112);
        v44 = *(v0 + 128);
        v45 = *(v0 + 160);
        v42[3] = *(v0 + 144);
        v42[4] = v45;
        v42[1] = v43;
        v42[2] = v44;

        v46 = *(v0 + 8);

        v46();
        return;
      }

LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __break(1u);
LABEL_46:

  __break(1u);
}

uint64_t sub_1003A04E0()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[36];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003A0590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v8 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0D30);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v6[20] = v10;
  v6[21] = v12;

  return _swift_task_switch(sub_1003A0764, v10, v12);
}

uint64_t sub_1003A0764()
{
  static Date.now.getter();
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1003A080C;
  v2 = v0[15];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_100396C5C(v2, v6, v4, v5, v3);
}

uint64_t sub_1003A080C()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1003A092C, v3, v2);
}

uint64_t sub_1003A092C()
{
  v64 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  v10 = *(v3 + 8);
  *(v0 + 184) = v10;
  *(v0 + 192) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v1, v2);
  sub_1000082B4(v4, v5, &qword_100AE0D30);
  v11 = (*(v7 + 48))(v5, 1, v6);
  v12 = *(v0 + 112);
  if (v11 == 1)
  {
    sub_100004F84(v12, &qword_100AE0D30);
    *(v0 + 232) = *(type metadata accessor for SuggestionImportSession(0) + 32);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v13, v14, "Merge completed, %f seconds elapsed.", v15, 0xCu);
    }

    v16 = *(v0 + 40);

    v17 = *(v16 + 40);
    *(v0 + 200) = v17;
    v18 = *(v17 + 16);
    *(v0 + 208) = v18;
    if (v18)
    {
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 128);
      v22 = *(v0 + 136);
      v23 = *(v0 + 56);
      v24 = *(v0 + 40);
      static Date.now.getter();
      v10(v20, v21);
      (*(v22 + 32))(v20, v19, v21);
      v25 = swift_task_alloc();
      *(v0 + 216) = v25;
      v25[2] = v17;
      v25[3] = v23;
      v25[4] = v24;
      v26 = swift_task_alloc();
      *(v0 + 224) = v26;
      *v26 = v0;
      v26[1] = sub_1003A1054;
      v27 = *(v0 + 24);
      v28 = *(v0 + 32);
      v66 = &type metadata for () + 8;

      return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v26, &type metadata for () + 8, &type metadata for () + 8, v27, v28, &unk_100952148, v25, &type metadata for () + 8);
    }

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No photos to fetch.", v48, 2u);
    }

    v49 = *(v0 + 152);
    v51 = *(v0 + 120);
    v50 = *(v0 + 128);

    sub_100004F84(v51, &qword_100AE0D30);
    v10(v49, v50);
    v52 = 1;
  }

  else
  {
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = (v0 + 96);
    sub_1003A6F60(v12, v29, type metadata accessor for SuggestionImportSession.MergeConflict);
    type metadata accessor for SuggestionImportSession(0);
    sub_1003A6EF8(v29, v30, type metadata accessor for SuggestionImportSession.MergeConflict);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v61 = v33;
      v62 = v10;
      v35 = *(v0 + 88);
      v36 = *(v0 + 96);
      v34 = (v0 + 88);
      v37 = *(v0 + 80);
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v63 = v60;
      *v38 = 136315394;
      sub_1003A6EF8(v36, v35, type metadata accessor for SuggestionImportSession.MergeConflict);
      sub_1003A6EF8(v35, v37, type metadata accessor for SuggestionImportSession.MergeConflict);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v41 = 0xD000000000000017;
        }

        else
        {
          v41 = 0x7373417972746E65;
        }

        if (EnumCaseMultiPayload == 2)
        {
          v40 = 0x80000001008ED040;
        }

        else
        {
          v40 = 0xEF6C6C7546737465;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v41 = 0xD000000000000017;
        v40 = 0x80000001008ED000;
      }

      else
      {
        v40 = 0x80000001008ED020;
        sub_1003A3E80(*v34, type metadata accessor for SuggestionImportSession.MergeConflict);
        v41 = 0xD000000000000018;
        v34 = (v0 + 96);
        v31 = (v0 + 80);
      }

      v53 = *v31;
      v54 = *(v0 + 152);
      v58 = *(v0 + 120);
      v59 = *(v0 + 128);
      sub_1003A3E80(*v34, type metadata accessor for SuggestionImportSession.MergeConflict);
      sub_1003A3E80(v53, type metadata accessor for SuggestionImportSession.MergeConflict);
      v55 = sub_100008458(v41, v40, &v63);

      *(v38 + 4) = v55;
      *(v38 + 12) = 2048;
      *(v38 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v32, v61, "Merge encountered conflict=%s, %f seconds elapsed.", v38, 0x16u);
      sub_10000BA7C(v60);

      sub_100004F84(v58, &qword_100AE0D30);
      v62(v54, v59);
    }

    else
    {
      v42 = *(v0 + 152);
      v44 = *(v0 + 120);
      v43 = *(v0 + 128);
      v45 = *(v0 + 96);

      sub_1003A3E80(v45, type metadata accessor for SuggestionImportSession.MergeConflict);
      sub_100004F84(v44, &qword_100AE0D30);
      v10(v42, v43);
    }

    sub_1003A6F60(*(v0 + 104), *(v0 + 16), type metadata accessor for SuggestionImportSession.MergeConflict);
    v52 = 0;
  }

  (*(*(v0 + 72) + 56))(*(v0 + 16), v52, 1, *(v0 + 64));

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_1003A1054()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 160);
    v5 = *(v2 + 168);

    return _swift_task_switch(sub_1003A118C, v4, v5);
  }
}

uint64_t sub_1003A118C()
{
  v1 = v0[23];
  v2 = v0[18];
  v3 = v0[16];
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v5 = v4;
  v1(v2, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[26];
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = v8;

    *(v9 + 12) = 2048;
    *(v9 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Finished attempting to fetch %ld photo(s), total time elapsed = %f seconds.", v9, 0x16u);
  }

  else
  {
  }

  v10 = v0[23];
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];

  sub_100004F84(v13, &qword_100AE0D30);
  v10(v11, v12);
  (*(v0[9] + 56))(v0[2], 1, 1, v0[8]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A1388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a4;
  v5[38] = a5;
  v5[35] = a2;
  v5[36] = a3;
  v6 = *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) - 8);
  v5[39] = v6;
  v5[40] = *(v6 + 64);
  v5[41] = swift_task_alloc();
  v7 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v5[42] = v7;
  v5[43] = *(v7 + 64);
  v5[44] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();

  return _swift_task_switch(sub_1003A14F4, 0, 0);
}

uint64_t sub_1003A14F4()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  if (v2)
  {
    v40 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v37 = *(v3 + 72);
    v38 = ~v4;
    v39 = **(v0 + 280);
    v36 = *(v0 + 344) + v4;
    v35 = *(v0 + 320) + 7;
    v6 = type metadata accessor for TaskPriority();
    v7 = *(v6 - 8);
    v34 = *(v7 + 56);
    v33 = (v7 + 48);
    v32 = (v7 + 8);
    do
    {
      v44 = v2;
      v41 = *(v0 + 368);
      v42 = *(v0 + 360);
      v10 = *(v0 + 352);
      v11 = *(v0 + 328);
      v13 = *(v0 + 296);
      v12 = *(v0 + 304);
      v34();
      sub_1003A6EF8(v13, v10, type metadata accessor for SuggestionImportSession);
      v43 = v5;
      sub_1003A6EF8(v5, v11, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
      v14 = v6;
      v15 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v16 = (v36 + v15) & v38;
      v17 = swift_allocObject();
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      v18 = v17 + v15;
      v6 = v14;
      sub_1003A6F60(v10, v18, type metadata accessor for SuggestionImportSession);
      sub_1003A6F60(v11, v17 + v16, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
      v19 = (v17 + ((v35 + v16) & 0xFFFFFFFFFFFFFFF8));
      *v19 = *v12;
      v20 = v12[4];
      v22 = v12[1];
      v21 = v12[2];
      v19[3] = v12[3];
      v19[4] = v20;
      v19[1] = v22;
      v19[2] = v21;
      sub_1000082B4(v41, v42, &qword_100AD5170);
      v23 = (*v33)(v42, 1, v14);
      v24 = *(v0 + 360);
      v25 = *(v0 + 304);
      if (v23 == 1)
      {
        sub_1003A714C(v25, v0 + 16);
        sub_100004F84(v24, &qword_100AD5170);
      }

      else
      {
        sub_1003A714C(v25, v0 + 96);
        TaskPriority.rawValue.getter();
        (*v32)(v24, v14);
      }

      if (*(v17 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = dispatch thunk of Actor.unownedExecutor.getter();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      if (v28 | v26)
      {
        v8 = v0 + 176;
        *(v0 + 176) = 0;
        *(v0 + 184) = 0;
        *(v0 + 192) = v26;
        *(v0 + 200) = v28;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 368);
      *(v0 + 208) = 1;
      *(v0 + 216) = v8;
      *(v0 + 224) = v39;
      swift_task_create();

      sub_100004F84(v9, &qword_100AD5170);
      v5 = v43 + v37;
      v2 = v44 - 1;
    }

    while (v44 != 1);
  }

  v29 = swift_task_alloc();
  *(v0 + 376) = v29;
  v30 = sub_1000F24EC(&qword_100AE0D40);
  *v29 = v0;
  v29[1] = sub_1003A1934;

  return ThrowingTaskGroup.nextResult()(v0 + 256, v30);
}

uint64_t sub_1003A1934()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_1003A1BFC;
  }

  else
  {
    *(v2 + 392) = *(v2 + 256);
    *(v2 + 265) = *(v2 + 264);
    v3 = sub_1003A1A58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003A1A58()
{
  v1 = *(v0 + 265);
  if (v1 != 255 && (v1 & 1) != 0 && (*(v0 + 272) = *(v0 + 392), sub_1000F24EC(&qword_100AD5BC0), (swift_dynamicCast() & 1) != 0) && (v2 = *(v0 + 232), , v2 == 1))
  {
    ThrowingTaskGroup.cancelAll()();
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    v4 = sub_1000F24EC(&qword_100AE0D40);
    *v3 = v0;
    v3[1] = sub_1003A1934;

    return ThrowingTaskGroup.nextResult()(v0 + 256, v4);
  }

  else
  {

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1003A1C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1003A1C3C, 0, 0);
}

uint64_t sub_1003A1C3C()
{
  v1 = *(v0[4] + 48);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1003A1CE0;
  v3 = v0[3];

  return sub_100398EA4(0, 0, v3, v1);
}

uint64_t sub_1003A1CE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1003A1DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[19] = a6;
  v7[20] = v6;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v7[14] = a1;
  v7[21] = sub_1000F24EC(&qword_100AE0D28);
  v7[22] = swift_task_alloc();
  v9 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0D30);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v7[32] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v7[33] = v10;
  v7[34] = *(v10 - 8);
  v7[35] = swift_task_alloc();
  v7[36] = type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  v7[37] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v7[38] = v11;
  v7[39] = v13;

  return _swift_task_switch(sub_1003A2050, v11, v13);
}

uint64_t sub_1003A2050()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 264);
  v28 = *(v0 + 280);
  *v2 = 0;
  v2[1] = 0;
  v5 = v2 + v1[5];
  v6 = *(v3 + 56);
  *(v0 + 320) = v6;
  *(v0 + 328) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v5, 1, 1, v4);
  v7 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  v6(v5 + *(v7 + 20), 1, 1, v4);
  v8 = v1[6];
  *(v0 + 108) = v8;
  v9 = v2 + v8;
  v6(v2 + v8, 1, 1, v4);
  v6(&v9[*(v7 + 20)], 1, 1, v4);
  v10 = v2 + v1[7];
  v6(v10, 1, 1, v4);
  v6(&v10[*(v7 + 20)], 1, 1, v4);
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  Date.init()();
  sub_100004F84(v5, &unk_100AD4790);
  v11 = *(v3 + 32);
  *(v0 + 336) = v11;
  *(v0 + 344) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v5, v28, v4);
  v6(v5, 0, 1, v4);
  v12 = type metadata accessor for SuggestionImportSession(0);
  *(v0 + 352) = v12;
  *(v0 + 432) = *(v12 + 32);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Process attempt starting...", v15, 2u);
  }

  v16 = sub_100081D68();
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v16;
  v19 = v17;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = swift_task_alloc();
    *(v0 + 376) = v21;
    *v21 = v0;
    v21[1] = sub_1003A275C;
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);

    return sub_10039FD84(v0 + 16, v22, v23);
  }

  else
  {
LABEL_10:
    v25 = swift_task_alloc();
    *(v0 + 360) = v25;
    *v25 = v0;
    v25[1] = sub_1003A23C4;
    v27 = *(v0 + 112);
    v26 = *(v0 + 120);

    return sub_10039D5A8(v27, v26);
  }
}

uint64_t sub_1003A23C4()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *v0;

  v8 = (v2 + *v2);
  v4 = swift_task_alloc();
  v1[46] = v4;
  *v4 = v3;
  v4[1] = sub_1003A25A0;
  v5 = v1[15];
  v6 = v1[14];

  return v8(v6, v5);
}

uint64_t sub_1003A25A0()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_1003A26C0, v3, v2);
}

uint64_t sub_1003A26C0()
{
  v1 = swift_task_alloc();
  v0[47] = v1;
  *v1 = v0;
  v1[1] = sub_1003A275C;
  v2 = v0[14];
  v3 = v0[15];

  return sub_10039FD84((v0 + 2), v2, v3);
}

uint64_t sub_1003A275C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_1003A3550;
  }

  else
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_1003A2880;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1003A2880()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 256);
  v3 = *(v0 + 160);
  *(v0 + 96) = *(v0 + 72);
  *(v0 + 104) = 0;
  v4 = *(v1 + 20);
  v5 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v3 + *(v5 + 32) + v4, v2, &qword_100AD1420);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v2, 1, v6);
  v9 = *(v0 + 256);
  if (v8 == 1)
  {
    sub_100004F84(*(v0 + 256), &qword_100AD1420);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = UUID.uuidString.getter();
    v11 = v12;
    (*(v7 + 8))(v9, v6);
  }

  v13 = *(v0 + 336);
  v14 = *(v0 + 108);
  v25 = *(v0 + 320);
  v15 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = *(v0 + 192);
  v26 = *(v0 + 248);
  v27 = *(v0 + 184);
  *v15 = v10;
  v15[1] = v11;
  Date.init()();
  sub_100004F84(v15 + v14, &unk_100AD4790);
  v13(v15 + v14, v16, v17);
  v25(v15 + v14, 0, 1, v17);
  v19 = *(v18 + 56);
  *(v0 + 384) = v19;
  *(v0 + 392) = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v26, 1, 1, v27);
  *(v0 + 400) = 0;
  v20 = swift_task_alloc();
  *(v0 + 408) = v20;
  *v20 = v0;
  v20[1] = sub_1003A2AD8;
  v21 = *(v0 + 240);
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);

  return sub_1003A0590(v21, v22, v23, v0 + 16, 0);
}

uint64_t sub_1003A2AD8()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_1003A2BF8, v3, v2);
}

uint64_t sub_1003A2BF8()
{
  v1 = v0[30];
  v2 = *(v0[24] + 48);
  if (v2(v1, 1, v0[23]) == 1)
  {
    sub_100004F84(v0[31], &qword_100AE0D30);
    sub_1003A3E50((v0 + 2));
    v36 = 0;
LABEL_21:
    sub_100004F84(v1, &qword_100AE0D30);
    v34 = v0[37];
    sub_1003A3670(v34, v0 + 12, v0[20]);
    sub_1003A3E80(v34, type metadata accessor for AssetAnalytics.AssetTransferEvent);

    v35 = v0[1];

    return v35(v36);
  }

  v4 = v0[26];
  v3 = v0[27];
  sub_1003A6F60(v1, v3, type metadata accessor for SuggestionImportSession.MergeConflict);
  sub_1003A6EF8(v3, v4, type metadata accessor for SuggestionImportSession.MergeConflict);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1003A3E80(v0[26], type metadata accessor for SuggestionImportSession.MergeConflict);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Abandoning selection, entry is already completely filled with assets.", v7, 2u);
    }

    v1 = v0[31];
    v8 = v0[27];

    sub_1003A3E50((v0 + 2));
    sub_1003A3E80(v8, type metadata accessor for SuggestionImportSession.MergeConflict);
    v9 = 1;
LABEL_20:
    v36 = v9;
    goto LABEL_21;
  }

  v10 = v0[48];
  v37 = v0[31];
  v11 = v0[29];
  v12 = v0[27];
  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[21];
  sub_1003A3E80(v0[26], type metadata accessor for SuggestionImportSession.MergeConflict);
  sub_1003A6EF8(v12, v11, type metadata accessor for SuggestionImportSession.MergeConflict);
  v10(v11, 0, 1, v14);
  v16 = *(v15 + 48);
  sub_1000082B4(v11, v13, &qword_100AE0D30);
  sub_1000082B4(v37, v13 + v16, &qword_100AE0D30);
  if (v2(v13, 1, v14) == 1)
  {
    v17 = v0[23];
    sub_100004F84(v0[29], &qword_100AE0D30);
    if (v2(v13 + v16, 1, v17) == 1)
    {
      sub_100004F84(v0[22], &qword_100AE0D30);
LABEL_17:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Abandoning selection, caller failed to resolve merge conflicts.", v32, 2u);
      }

      v1 = v0[31];
      v33 = v0[27];

      sub_1003A3E50((v0 + 2));
      sub_1003A3E80(v33, type metadata accessor for SuggestionImportSession.MergeConflict);
      v9 = 2;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v18 = v0[23];
  sub_1000082B4(v0[22], v0[28], &qword_100AE0D30);
  v19 = v2(v13 + v16, 1, v18);
  v20 = v0[28];
  v21 = v0[29];
  if (v19 == 1)
  {
    sub_100004F84(v0[29], &qword_100AE0D30);
    sub_1003A3E80(v20, type metadata accessor for SuggestionImportSession.MergeConflict);
LABEL_12:
    sub_100004F84(v0[22], &qword_100AE0D28);
    goto LABEL_13;
  }

  v27 = v0[25];
  v28 = v0[22];
  sub_1003A6F60(v13 + v16, v27, type metadata accessor for SuggestionImportSession.MergeConflict);
  v29 = sub_1003A69B8(v20, v27);
  sub_1003A3E80(v27, type metadata accessor for SuggestionImportSession.MergeConflict);
  sub_100004F84(v21, &qword_100AE0D30);
  sub_1003A3E80(v20, type metadata accessor for SuggestionImportSession.MergeConflict);
  sub_100004F84(v28, &qword_100AE0D30);
  if (v29)
  {
    goto LABEL_17;
  }

LABEL_13:
  v38 = (v0[18] + *v0[18]);
  v22 = swift_task_alloc();
  v0[52] = v22;
  *v22 = v0;
  v22[1] = sub_1003A3270;
  v23 = v0[27];
  v25 = v0[14];
  v24 = v0[15];

  return v38(v25, v24, v23);
}

uint64_t sub_1003A3270(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 424) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return _swift_task_switch(sub_1003A3398, v4, v3);
}

uint64_t sub_1003A3398()
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[53];
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3 != 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Conflict resolved: %{BOOL}d", v4, 8u);
  }

  v5 = v0[53];
  v6 = v0[50];
  v7 = v0[48];
  v8 = v0[31];
  v9 = v0[27];
  v10 = v0[23];

  sub_100004F84(v8, &qword_100AE0D30);
  v11 = v6 | v5;
  sub_1003A6F60(v9, v8, type metadata accessor for SuggestionImportSession.MergeConflict);
  v7(v8, 0, 1, v10);
  v0[50] = v11;
  v12 = swift_task_alloc();
  v0[51] = v12;
  *v12 = v0;
  v12[1] = sub_1003A2AD8;
  v13 = v0[30];
  v14 = v0[14];
  v15 = v0[15];

  return sub_1003A0590(v13, v14, v15, (v0 + 2), v11);
}

uint64_t sub_1003A3550()
{
  v1 = v0[37];
  sub_1003A3670(v1, v0 + 12, v0[20]);
  sub_1003A3E80(v1, type metadata accessor for AssetAnalytics.AssetTransferEvent);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_1003A3670(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v4 = type metadata accessor for AssetAnalytics.AssetTransferEvent(0);
  v5 = v4 - 8;
  v34[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v34[1] = v6;
  v35 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v36 = v34 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  v13 = *(v5 + 32);
  v14 = type metadata accessor for AssetAnalytics.AssetTransferEvent.TimeRange(0);
  v15 = a1 + *(v14 + 20);
  sub_100004F84(v15 + v13, &unk_100AD4790);
  v16 = *(v10 + 16);
  v16(v15 + v13, v12, v9);
  v40 = v10;
  v17 = *(v10 + 56);
  v18 = v15 + v13;
  v19 = v12;
  v20 = v37;
  v17(v18, 0, 1, v9);
  v21 = *(v5 + 28);
  v22 = v20 + *(v14 + 20);
  sub_100004F84(v22 + v21, &unk_100AD4790);
  v16(v22 + v21, v19, v9);
  v17(v22 + v21, 0, 1, v9);
  if ((v38[1] & 1) == 0)
  {
    v23 = *v38;
    v24 = v36;
    sub_1003A6EF8(v20, v36, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v25 = String._bridgeToObjectiveC()();
    v26 = v35;
    sub_1003A6EF8(v24, v35, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    v27 = (*(v34[0] + 80) + 32) & ~*(v34[0] + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v23;
    *(v28 + 24) = v23;
    sub_1003A6F60(v26, v28 + v27, type metadata accessor for AssetAnalytics.AssetTransferEvent);
    aBlock[4] = sub_1003A7BBC;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004455B4;
    aBlock[3] = &unk_100A6A000;
    v29 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v29);

    sub_1003A3E80(v24, type metadata accessor for AssetAnalytics.AssetTransferEvent);
  }

  type metadata accessor for SuggestionImportSession(0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Processing complete!", v32, 2u);
  }

  return (*(v40 + 8))(v19, v9);
}

Swift::Int sub_1003A3AA8(void **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD64E8) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100205098(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003A3EE0(v6, &qword_100AD64E8, &unk_1009451B0, sub_1003A44D8, sub_1003A4034);
  *a1 = v3;
  return result;
}

Swift::Int sub_1003A3B94(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1002050AC(v2);
  }

  v3 = *(v2 + 2);
  v30[0] = (v2 + 4);
  v30[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 13;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 + 10) >= *v12)
          {
            break;
          }

          v13 = v12 - 9;
          v25 = *(v12 + 1);
          v14 = *(v12 + 3);
          v15 = *(v12 + 5);
          v16 = *(v12 + 9);
          v28 = *(v12 + 7);
          v29 = v16;
          v26 = v14;
          v27 = v15;
          v17 = *(v12 - 3);
          *(v12 + 9) = *(v12 - 1);
          v18 = *(v12 - 5);
          *(v12 + 7) = v17;
          *(v12 + 5) = v18;
          v19 = *(v12 - 9);
          *(v12 + 3) = *(v12 - 7);
          *(v12 + 1) = v19;
          *v13 = v25;
          v20 = v29;
          v21 = v26;
          v22 = v27;
          *(v13 + 3) = v28;
          *(v13 + 4) = v20;
          *(v13 + 1) = v21;
          *(v13 + 2) = v22;
          v12 -= 10;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 10;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v25 = v7 + 4;
    *(&v25 + 1) = v6;
    sub_1003A4E18(&v25, v24, v30, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1003A3D24(void **a1)
{
  v2 = *(sub_1000F24EC(&qword_100AD6600) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1002050C0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003A3EE0(v6, &qword_100AD6600, &unk_1009452D8, sub_1003A541C, sub_1003A4284);
  *a1 = v3;
  return result;
}

uint64_t sub_1003A3E80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_1003A3EE0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a5)(void, Swift::Int, uint64_t, uint64_t))
{
  v9 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v9);
  if (result < v9)
  {
    if (v9 >= -1)
    {
      v11 = result;
      v12 = v9 / 2;
      if (v9 <= 1)
      {
        v13 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000F24EC(a2);
        v13 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v13 + 2) = v12;
      }

      v14 = *(sub_1000F24EC(a2) - 8);
      v15[0] = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
      v15[1] = v12;
      a4(v15, v16, a1, v11);
      v13[2] = 0.0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v9 < 0)
  {
    goto LABEL_12;
  }

  if (v9)
  {
    return a5(0, v9, 1, a1);
  }

  return result;
}

void sub_1003A4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = sub_1000F24EC(&qword_100AD64E8);
  __chkstk_darwin(v34);
  v33 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  __chkstk_darwin(v12);
  v15 = &v25 - v14;
  v27 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v32 = v16;
    v26 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v30 = v18;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_1000082B4(v21, v15, &qword_100AD64E8);
      sub_1000082B4(v18, v11, &qword_100AD64E8);
      v22 = static Date.< infix(_:_:)();
      sub_100004F84(v11, &qword_100AD64E8);
      sub_100004F84(v15, &qword_100AD64E8);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v18 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = v33;
      sub_100021CEC(v21, v33, &qword_100AD64E8);
      swift_arrayInitWithTakeFrontToBack();
      sub_100021CEC(v23, v18, &qword_100AD64E8);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003A4284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = sub_1000F24EC(&qword_100AD6600);
  __chkstk_darwin(v36);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v26 - v10);
  __chkstk_darwin(v12);
  v15 = (&v26 - v14);
  v28 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v33 = -v17;
    v34 = v16;
    v19 = a1 - a3;
    v27 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v31 = v18;
    v32 = a3;
    v29 = v20;
    v30 = v19;
    v21 = v19;
    while (1)
    {
      sub_1000082B4(v20, v15, &qword_100AD6600);
      sub_1000082B4(v18, v11, &qword_100AD6600);
      v22 = *v15;
      v23 = *v11;
      sub_100004F84(v11, &qword_100AD6600);
      sub_100004F84(v15, &qword_100AD6600);
      if (v22 >= v23)
      {
LABEL_4:
        a3 = v32 + 1;
        v18 = v31 + v27;
        v19 = v30 - 1;
        v20 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v24 = v35;
      sub_100021CEC(v20, v35, &qword_100AD6600);
      swift_arrayInitWithTakeFrontToBack();
      sub_100021CEC(v24, v18, &qword_100AD6600);
      v18 += v33;
      v20 += v33;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003A44D8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = sub_1000F24EC(&qword_100AD64E8);
  v113 = *(v116 - 8);
  __chkstk_darwin(v116);
  v107 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v115 = &v99 - v11;
  __chkstk_darwin(v12);
  v118 = &v99 - v13;
  __chkstk_darwin(v14);
  v117 = &v99 - v15;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v93 = v4;
    }

    else
    {
LABEL_130:
      v93 = sub_100204C44(v4);
    }

    v94 = v6;
    v119 = v93;
    v4 = *(v93 + 2);
    if (v4 >= 2)
    {
      do
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *&v93[16 * v4];
        v96 = v93;
        v97 = *&v93[16 * v4 + 24];
        sub_1003A5D7C(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *&v93[16 * v4 + 16], v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
          break;
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_100204C44(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_100204BB8(v4 - 1);
        v93 = v119;
        v4 = *(v119 + 2);
        a3 = v6;
      }

      while (v4 > 1);
    }

LABEL_107:

    return;
  }

  v100 = a4;
  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v104 = a3;
  while (1)
  {
    v19 = v17;
    v108 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v102 = v6;
      v20 = v17;
      v21 = *a3;
      v22 = *(v113 + 72);
      a4 = *a3 + v22 * (v17 + 1);
      v23 = v117;
      sub_1000082B4(a4, v117, &qword_100AD64E8);
      v24 = v118;
      sub_1000082B4(v21 + v22 * v20, v118, &qword_100AD64E8);
      LODWORD(v112) = static Date.< infix(_:_:)();
      sub_100004F84(v24, &qword_100AD64E8);
      sub_100004F84(v23, &qword_100AD64E8);
      v101 = v20;
      v4 = v20 + 2;
      v114 = v22;
      v25 = v21 + v22 * (v20 + 2);
      while (v16 != v4)
      {
        v26 = v117;
        sub_1000082B4(v25, v117, &qword_100AD64E8);
        v27 = v118;
        sub_1000082B4(a4, v118, &qword_100AD64E8);
        v28 = v16;
        v29 = static Date.< infix(_:_:)() & 1;
        sub_100004F84(v27, &qword_100AD64E8);
        sub_100004F84(v26, &qword_100AD64E8);
        ++v4;
        v25 += v114;
        a4 += v114;
        v30 = (v112 & 1) == v29;
        v16 = v28;
        if (!v30)
        {
          v16 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v19 = v101;
      v6 = v102;
      if (v112)
      {
        if (v16 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v16)
        {
          v4 = v114 * (v16 - 1);
          v31 = v16 * v114;
          v32 = v16;
          v33 = v16;
          v34 = v101;
          a4 = v101 * v114;
          do
          {
            if (v34 != --v33)
            {
              v35 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_100021CEC(v35 + a4, v107, &qword_100AD64E8);
              if (a4 < v4 || v35 + a4 >= v35 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_100021CEC(v107, v35 + v4, &qword_100AD64E8);
            }

            ++v34;
            v4 -= v114;
            v31 -= v114;
            a4 += v114;
          }

          while (v34 < v33);
          v19 = v101;
          v6 = v102;
          a3 = v104;
          v16 = v32;
        }
      }
    }

    v36 = *(a3 + 8);
    if (v16 < v36)
    {
      if (__OFSUB__(v16, v19))
      {
        goto LABEL_126;
      }

      if (v16 - v19 < v100)
      {
        if (__OFADD__(v19, v100))
        {
          goto LABEL_128;
        }

        if (v19 + v100 >= v36)
        {
          v37 = *(a3 + 8);
        }

        else
        {
          v37 = v19 + v100;
        }

        if (v37 < v19)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v16 != v37)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v19)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v108;
    }

    else
    {
      v18 = sub_1003E4B80(0, *(v108 + 2) + 1, 1, v108);
    }

    v4 = *(v18 + 2);
    v38 = *(v18 + 3);
    a4 = v4 + 1;
    if (v4 >= v38 >> 1)
    {
      v18 = sub_1003E4B80((v38 > 1), v4 + 1, 1, v18);
    }

    *(v18 + 2) = a4;
    v39 = &v18[16 * v4];
    *(v39 + 4) = v19;
    *(v39 + 5) = v17;
    v40 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v41 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v42 = *(v18 + 4);
          v43 = *(v18 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_52:
          if (v45)
          {
            goto LABEL_114;
          }

          v58 = &v18[16 * a4];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_117;
          }

          v64 = &v18[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_121;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v68 = &v18[16 * a4];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_66:
        if (v63)
        {
          goto LABEL_116;
        }

        v71 = &v18[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_119;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v41 - 1;
        if (v41 - 1 >= a4)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v79 = v18;
        a4 = *&v18[16 * v4 + 32];
        v80 = *&v18[16 * v41 + 40];
        sub_1003A5D7C(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v18[16 * v41 + 32], *a3 + *(v113 + 72) * v80, v40);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v80 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v81 = v79;
        }

        else
        {
          v81 = sub_100204C44(v79);
        }

        if (v4 >= *(v81 + 2))
        {
          goto LABEL_111;
        }

        v82 = &v81[16 * v4];
        *(v82 + 4) = a4;
        *(v82 + 5) = v80;
        v119 = v81;
        v4 = &v119;
        sub_100204BB8(v41);
        v18 = v119;
        a4 = *(v119 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v18[16 * a4 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_112;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_113;
      }

      v53 = &v18[16 * a4];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_115;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_118;
      }

      if (v57 >= v49)
      {
        v75 = &v18[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_122;
        }

        if (v44 < v78)
        {
          v41 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = *(a3 + 8);
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v101 = v19;
  v102 = v6;
  v83 = *a3;
  v84 = *(v113 + 72);
  v85 = *a3 + v84 * (v16 - 1);
  v86 = -v84;
  v87 = v19 - v16;
  v105 = v84;
  v106 = v37;
  v114 = v83;
  a4 = v83 + v16 * v84;
LABEL_86:
  v111 = v85;
  v112 = v16;
  v109 = a4;
  v110 = v87;
  v88 = v85;
  while (1)
  {
    v4 = v117;
    sub_1000082B4(a4, v117, &qword_100AD64E8);
    v89 = v118;
    sub_1000082B4(v88, v118, &qword_100AD64E8);
    v90 = static Date.< infix(_:_:)();
    sub_100004F84(v89, &qword_100AD64E8);
    sub_100004F84(v4, &qword_100AD64E8);
    if ((v90 & 1) == 0)
    {
LABEL_85:
      v16 = v112 + 1;
      v17 = v106;
      v85 = v111 + v105;
      v87 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v19 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v91 = v115;
    sub_100021CEC(a4, v115, &qword_100AD64E8);
    swift_arrayInitWithTakeFrontToBack();
    sub_100021CEC(v91, v88, &qword_100AD64E8);
    v88 += v86;
    a4 += v86;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_1003A4E18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100204C44(v7);
      v7 = result;
    }

    v80 = v7 + 2;
    v81 = *(v7 + 2);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1003A6280((*a3 + 80 * *v82), (*a3 + 80 * *v84), (*a3 + 80 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 80 * v6 + 72);
      v10 = 80 * v8;
      v11 = *a3 + 80 * v8;
      v12 = *(v11 + 72);
      v13 = v8 + 2;
      v14 = (v11 + 232);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 10;
        v17 = (v9 < v12) ^ (v16 >= v15);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 80 * v6 - 80;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x50uLL);
            v21[2] = v94;
            v21[3] = v96;
            v21[4] = v98;
            *v21 = v90;
            v21[1] = v92;
          }

          ++v20;
          v18 -= 80;
          v10 += 80;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1003E4B80((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v34;
    v35 = v7 + 4;
    v36 = &v7[2 * v33 + 4];
    *v36 = v8;
    *(v36 + 1) = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 4);
          v39 = *(v7 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[2 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[2 * v37];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[2 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[2 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
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
          __break(1u);
LABEL_109:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[2 * v37 - 2];
        v76 = *v75;
        v77 = &v35[2 * v37];
        v78 = *(v77 + 1);
        sub_1003A6280((*a3 + 80 * *v75), (*a3 + 80 * *v77), (*a3 + 80 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        *(v75 + 1) = v78;
        v79 = *(v7 + 2);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove(&v35[2 * v37], v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 2) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[2 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[2 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[2 * v37];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 80 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 + 72) >= *(v27 - 8))
    {
LABEL_29:
      ++v6;
      v24 += 80;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 80);
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 32);
    *(v27 + 32) = *(v27 - 48);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 16);
    v30 = *(v27 - 64);
    *v27 = *(v27 - 80);
    *(v27 + 16) = v30;
    v28[3] = v97;
    v28[4] = v99;
    v28[1] = v93;
    v28[2] = v95;
    v27 -= 80;
    *v28 = v91;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

void sub_1003A541C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v105 = a1;
  v120 = sub_1000F24EC(&qword_100AD6600);
  v8 = *(v120 - 8);
  __chkstk_darwin(v120);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v119 = &v103 - v11;
  __chkstk_darwin(v12);
  v122 = (&v103 - v13);
  __chkstk_darwin(v14);
  v121 = (&v103 - v15);
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v19 = a3;
    v18 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v105;
    if (!*v105)
    {
      goto LABEL_139;
    }

    a3 = v18;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v98 = a3;
    }

    else
    {
LABEL_133:
      v98 = sub_100204C44(a3);
    }

    v123 = v98;
    a3 = *(v98 + 2);
    if (a3 >= 2)
    {
      v99 = v8;
      while (*v19)
      {
        v8 = *&v98[16 * a3];
        v100 = v98;
        v101 = *&v98[16 * a3 + 24];
        sub_1003A64B8(*v19 + *(v99 + 72) * v8, *v19 + *(v99 + 72) * *&v98[16 * a3 + 16], *v19 + *(v99 + 72) * v101, a4);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v101 < v8)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_100204C44(v100);
        }

        if (a3 - 2 >= *(v100 + 2))
        {
          goto LABEL_127;
        }

        v102 = &v100[16 * a3];
        *v102 = v8;
        v102[1] = v101;
        v123 = v100;
        sub_100204BB8(a3 - 1);
        v98 = v123;
        a3 = *(v123 + 2);
        if (a3 <= 1)
        {
          goto LABEL_111;
        }
      }

      goto LABEL_137;
    }

LABEL_111:

    return;
  }

  v17 = 0;
  v18 = _swiftEmptyArrayStorage;
  v19 = a3;
  v106 = a3;
  v116 = v8;
  v104 = a4;
  while (1)
  {
    v20 = v17;
    v21 = v17 + 1;
    v110 = v18;
    v107 = v20;
    if (v21 >= v16)
    {
      v16 = v21;
    }

    else
    {
      v111 = v5;
      v22 = *v19;
      v23 = *(v8 + 72);
      v24 = *v19 + v23 * v21;
      v25 = v121;
      a3 = &qword_100AD6600;
      sub_1000082B4(v24, v121, &qword_100AD6600);
      v26 = v122;
      sub_1000082B4(v22 + v23 * v20, v122, &qword_100AD6600);
      v27 = *v25;
      v114 = *v26;
      v115 = v27;
      sub_100004F84(v26, &qword_100AD6600);
      sub_100004F84(v25, &qword_100AD6600);
      v28 = v20 + 2;
      v117 = v23;
      v29 = v22 + v23 * v28;
      while (v16 != v28)
      {
        LODWORD(v118) = v115 < v114;
        v30 = v121;
        sub_1000082B4(v29, v121, &qword_100AD6600);
        v31 = v122;
        sub_1000082B4(v24, v122, &qword_100AD6600);
        a3 = v16;
        v32 = *v30;
        v33 = *v31;
        sub_100004F84(v31, &qword_100AD6600);
        sub_100004F84(v30, &qword_100AD6600);
        v34 = v32 < v33;
        v16 = a3;
        v35 = !v34;
        ++v28;
        v29 += v117;
        v24 += v117;
        if (((v118 ^ v35) & 1) == 0)
        {
          v16 = v28 - 1;
          break;
        }
      }

      v19 = v106;
      v20 = v107;
      v8 = v116;
      v5 = v111;
      a4 = v104;
      if (v115 < v114)
      {
        if (v16 < v107)
        {
          goto LABEL_130;
        }

        if (v107 < v16)
        {
          v36 = v116;
          a3 = v117 * (v16 - 1);
          v37 = v16 * v117;
          v115 = v16;
          v38 = v16;
          v39 = v107;
          v40 = v107 * v117;
          do
          {
            if (v39 != --v38)
            {
              v111 = v5;
              v41 = *v19;
              if (!*v19)
              {
                goto LABEL_136;
              }

              sub_100021CEC(v41 + v40, v109, &qword_100AD6600);
              if (v40 < a3 || v41 + v40 >= (v41 + v37))
              {
                swift_arrayInitWithTakeFrontToBack();
                v5 = v111;
              }

              else
              {
                v5 = v111;
                if (v40 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              sub_100021CEC(v109, v41 + a3, &qword_100AD6600);
              v19 = v106;
              v20 = v107;
              v36 = v116;
            }

            ++v39;
            a3 -= v117;
            v37 -= v117;
            v40 += v117;
          }

          while (v39 < v38);
          a4 = v104;
          v16 = v115;
          v8 = v36;
        }
      }
    }

    v42 = v19[1];
    if (v16 < v42)
    {
      if (__OFSUB__(v16, v20))
      {
        goto LABEL_129;
      }

      if (v16 - v20 < a4)
      {
        if (__OFADD__(v20, a4))
        {
          goto LABEL_131;
        }

        if ((v20 + a4) >= v42)
        {
          v43 = v19[1];
        }

        else
        {
          v43 = v20 + a4;
        }

        if (v43 < v20)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v16 != v43)
        {
          break;
        }
      }
    }

    v44 = v16;
    if (v16 < v20)
    {
      goto LABEL_128;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = v110;
    }

    else
    {
      v18 = sub_1003E4B80(0, *(v110 + 2) + 1, 1, v110);
    }

    a3 = *(v18 + 2);
    v45 = *(v18 + 3);
    a4 = a3 + 1;
    if (a3 >= v45 >> 1)
    {
      v18 = sub_1003E4B80((v45 > 1), a3 + 1, 1, v18);
    }

    *(v18 + 2) = a4;
    v46 = &v18[16 * a3];
    *(v46 + 4) = v20;
    *(v46 + 5) = v44;
    v47 = *v105;
    if (!*v105)
    {
      goto LABEL_138;
    }

    v112 = v44;
    if (a3)
    {
      v8 = v47;
      while (1)
      {
        v48 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v18 + 4);
          v50 = *(v18 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_117;
          }

          v65 = &v18[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_120;
          }

          v71 = &v18[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_124;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v18[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_119;
        }

        v78 = &v18[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_122;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_77:
        a3 = v48 - 1;
        if (v48 - 1 >= a4)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v19)
        {
          goto LABEL_135;
        }

        v86 = v18;
        a4 = *&v18[16 * a3 + 32];
        v87 = *&v18[16 * v48 + 40];
        sub_1003A64B8(*v19 + *(v116 + 72) * a4, *v19 + *(v116 + 72) * *&v18[16 * v48 + 32], *v19 + *(v116 + 72) * v87, v8);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v87 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100204C44(v86);
        }

        if (a3 >= *(v86 + 2))
        {
          goto LABEL_114;
        }

        v88 = &v86[16 * a3];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v123 = v86;
        a3 = &v123;
        sub_100204BB8(v48);
        v18 = v123;
        a4 = *(v123 + 2);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v18[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_115;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_116;
      }

      v60 = &v18[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_118;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_121;
      }

      if (v64 >= v56)
      {
        v82 = &v18[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v51 < v85)
        {
          v48 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v16 = v19[1];
    v17 = v112;
    a4 = v104;
    v8 = v116;
    if (v112 >= v16)
    {
      goto LABEL_99;
    }
  }

  v111 = v5;
  v112 = v43;
  v89 = *(v8 + 72);
  v90 = *v19 + v89 * (v16 - 1);
  v91 = v20;
  v92 = -v89;
  a3 = v91 - v16;
  v118 = *v19;
  v108 = v89;
  a4 = v118 + v16 * v89;
LABEL_89:
  v114 = a3;
  v115 = v16;
  v113 = a4;
  v117 = v90;
  v93 = v90;
  while (1)
  {
    v94 = v121;
    sub_1000082B4(a4, v121, &qword_100AD6600);
    v95 = v122;
    sub_1000082B4(v93, v122, &qword_100AD6600);
    v96 = *v94;
    v8 = *v95;
    sub_100004F84(v95, &qword_100AD6600);
    sub_100004F84(v94, &qword_100AD6600);
    if (v96 >= v8)
    {
LABEL_88:
      v16 = v115 + 1;
      v90 = v117 + v108;
      a3 = v114 - 1;
      v44 = v112;
      a4 = v113 + v108;
      if (v115 + 1 != v112)
      {
        goto LABEL_89;
      }

      v5 = v111;
      v19 = v106;
      v20 = v107;
      if (v112 < v107)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v8 = v119;
    sub_100021CEC(a4, v119, &qword_100AD6600);
    swift_arrayInitWithTakeFrontToBack();
    sub_100021CEC(v8, v93, &qword_100AD6600);
    v93 += v92;
    a4 += v92;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

void sub_1003A5D7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = sub_1000F24EC(&qword_100AD64E8);
  __chkstk_darwin(v42);
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_60;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_58;
          }

          v28 = a3;
          v36 = v22;
          a3 += v23;
          v29 = v24 + v23;
          v30 = v43;
          sub_1000082B4(v29, v43, &qword_100AD64E8);
          v31 = v26;
          v32 = v44;
          sub_1000082B4(v31, v44, &qword_100AD64E8);
          v33 = static Date.< infix(_:_:)();
          sub_100004F84(v32, &qword_100AD64E8);
          sub_100004F84(v30, &qword_100AD64E8);
          if (v33)
          {
            break;
          }

          v22 = v29;
          if (v28 < v24 || a3 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v26 = v41;
            a1 = v38;
          }

          else
          {
            v26 = v41;
            a1 = v38;
            if (v28 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_57;
          }
        }

        if (v28 < v40 || a3 >= v40)
        {
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (v28 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_57:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a3;
    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v12;
        v19 = v43;
        sub_1000082B4(a2, v43, &qword_100AD64E8);
        v20 = v44;
        sub_1000082B4(a4, v44, &qword_100AD64E8);
        v21 = static Date.< infix(_:_:)();
        sub_100004F84(v20, &qword_100AD64E8);
        sub_100004F84(v19, &qword_100AD64E8);
        v12 = v18;
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v18;
          a4 += v18;
        }

        a1 += v18;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v40);
    }
  }

LABEL_58:
  sub_100204CCC(&v47, &v46, &v45);
}

uint64_t sub_1003A6280(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 9) < *(v4 + 9))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 80;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 80;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 80;
    do
    {
      v15 = v5 + 80;
      if (*(v12 - 1) < *(v6 - 1))
      {
        v17 = v6 - 80;
        if (v15 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 80, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 80);
      if (v15 != v12)
      {
        memmove(v5, v12 - 80, 0x50uLL);
      }

      v5 -= 80;
      v12 -= 80;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}

void sub_1003A64B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = sub_1000F24EC(&qword_100AD6600);
  __chkstk_darwin(v42);
  v44 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v43 = (&v34 - v10);
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_58;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_59;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v27 = a4 + v16;
      v37 = a1;
      v38 = a4;
      v36 = -v12;
      do
      {
        v34 = v25;
        v28 = a2 + v26;
        v39 = a2;
        v40 = a2 + v26;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v45 = v34;
            goto LABEL_56;
          }

          v29 = a3;
          v35 = v25;
          a3 += v26;
          v30 = v27 + v26;
          v31 = v43;
          sub_1000082B4(v27 + v26, v43, &qword_100AD6600);
          v32 = v44;
          sub_1000082B4(v28, v44, &qword_100AD6600);
          v41 = *v31;
          v33 = *v32;
          sub_100004F84(v32, &qword_100AD6600);
          sub_100004F84(v31, &qword_100AD6600);
          if (v41 < v33)
          {
            break;
          }

          v25 = v27 + v26;
          if (v29 < v27 || a3 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v40;
            v26 = v36;
            a1 = v37;
          }

          else
          {
            v28 = v40;
            v26 = v36;
            a1 = v37;
            if (v29 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v30;
          a2 = v39;
          if (v30 <= v38)
          {
            goto LABEL_54;
          }
        }

        if (v29 < v39 || a3 >= v39)
        {
          a2 = v40;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v36;
          a1 = v37;
          v25 = v35;
        }

        else
        {
          a2 = v40;
          v26 = v36;
          a1 = v37;
          v25 = v35;
          if (v29 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v38);
    }

LABEL_54:
    v47 = a2;
    v45 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a3;
    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      v39 = v12;
      do
      {
        v18 = v43;
        v19 = a2;
        sub_1000082B4(a2, v43, &qword_100AD6600);
        v20 = v44;
        sub_1000082B4(a4, v44, &qword_100AD6600);
        v21 = *v18;
        v22 = *v20;
        sub_100004F84(v20, &qword_100AD6600);
        sub_100004F84(v18, &qword_100AD6600);
        if (v21 >= v22)
        {
          v23 = v39;
          v24 = a4 + v39;
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = v24;
          a4 += v23;
        }

        else
        {
          v23 = v39;
          a2 += v39;
          if (a1 < v19 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v23;
        v47 = a1;
      }

      while (a4 < v41 && a2 < v40);
    }
  }

LABEL_56:
  sub_100204CE0(&v47, &v46, &v45);
}

uint64_t sub_1003A69B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetType();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  __chkstk_darwin(v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_1000F24EC(&qword_100AE0D38);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  v17 = (&v26 + *(v16 + 56) - v14);
  sub_1003A6EF8(a1, &v26 - v14, type metadata accessor for SuggestionImportSession.MergeConflict);
  sub_1003A6EF8(a2, v17, type metadata accessor for SuggestionImportSession.MergeConflict);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1003A6EF8(v15, v9, type metadata accessor for SuggestionImportSession.MergeConflict);
      v19 = v9[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_12;
      }

      if (*v9 == *v17)
      {
        v20 = v19 == v17[1];
        sub_1003A3E80(v15, type metadata accessor for SuggestionImportSession.MergeConflict);
        return v20;
      }
    }

    else
    {
      sub_1003A6EF8(v15, v12, type metadata accessor for SuggestionImportSession.MergeConflict);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v27 + 8))(v12, v4);
LABEL_12:
        sub_100004F84(v15, &qword_100AE0D38);
        return 0;
      }

      v22 = v27;
      (*(v27 + 32))(v6, v17, v4);
      sub_10008D160(&qword_100AD5B40, &type metadata accessor for AssetType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v30 == v28 && v31 == v29)
      {
        v23 = *(v22 + 8);
        v23(v6, v4);

        v23(v12, v4);
        goto LABEL_18;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v25 = *(v22 + 8);
      v25(v6, v4);

      v25(v12, v4);
      if (v24)
      {
        goto LABEL_18;
      }
    }

    sub_1003A3E80(v15, type metadata accessor for SuggestionImportSession.MergeConflict);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_12;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_12;
  }

LABEL_18:
  sub_1003A3E80(v15, type metadata accessor for SuggestionImportSession.MergeConflict);
  return 1;
}

uint64_t sub_1003A6E14(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100032EC8;

  return sub_1003A1388(a1, a2, v6, v7, v8);
}

uint64_t sub_1003A6EF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A6F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A6FC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1003A1C18(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1003A7184(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_10039B8D4(a1, v5, v4);
}

unint64_t sub_1003A7240()
{
  result = qword_100AE0D50;
  if (!qword_100AE0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0D50);
  }

  return result;
}

uint64_t sub_1003A72F4(double *a1)
{
  v3 = *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_1000F24EC(&qword_100AE0D78) - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10039C010(a1, v7, (v1 + v4), v8);
}

uint64_t sub_1003A73D8()
{
  v2 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100032EC8;

  return sub_1003987A8(v4, v0 + v3);
}

uint64_t sub_1003A74B0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_100241DB4(a1, a2, v6);
}

void sub_1003A7574(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 != 1)
  {
    v5 = a4;

    v6 = a3;
  }
}

void sub_1003A75B8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a3 != 1)
  {
  }
}

uint64_t sub_1003A75FC(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_100032EC8;

  return sub_100398AC0(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_1003A771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100032EC8;

  return sub_100606084(a1, a2, a3, v8);
}

uint64_t sub_1003A77EC()
{
  v1 = type metadata accessor for SuggestionImportSession(0);
  v2 = *(*(v1 - 8) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v3 + *(v1 + 20);

  v5 = type metadata accessor for Suggestion(0);
  v6 = v5[6];
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  v9 = v5[7];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v13 = v5[8];
  if (!v12(v4 + v13, 1, v10))
  {
    (*(v11 + 8))(v4 + v13, v10);
  }

  (*(v11 + 8))(v4 + v5[11], v10);
  v14 = *(v1 + 32);
  v15 = type metadata accessor for Logger();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_1003A7A90()
{
  v2 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100032EC8;

  return sub_1003984AC(v0 + v3, v5, v6, v7, v8);
}

uint64_t sub_1003A7BBC()
{
  v1 = *(type metadata accessor for AssetAnalytics.AssetTransferEvent(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_100345FD0(v2, v3, v4);
}

uint64_t sub_1003A7C20(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100032EC8;

  return sub_10037E8F4(a1, a2, v6);
}

uint64_t sub_1003A7CD0(uint64_t a1)
{
  v4 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100381A14(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003A7DF0(uint64_t a1)
{
  v4 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100381FEC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003A7F10(uint64_t a1)
{
  v4 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100382AA4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003A8030()
{
  v1 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1003A8134(uint64_t a1)
{
  v4 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100383814(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1003A8254(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_100384360(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A83C0()
{
  v1 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for SuggestionImportSession(0);
  v19 = *(*(v4 - 8) + 80);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v18 = *(v6 + 8);
  v18(v0 + v2, v5);

  v21 = (v3 + v19 + 8) & ~v19;

  v20 = v4;
  v7 = v0 + v21 + *(v4 + 20);

  v8 = type metadata accessor for Suggestion(0);
  v9 = v8[6];
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v8[7];
  v13 = *(v6 + 48);
  if (!v13(v7 + v12, 1, v5))
  {
    v18(v7 + v12, v5);
  }

  v14 = v8[8];
  if (!v13(v7 + v14, 1, v5))
  {
    v18(v7 + v14, v5);
  }

  v18(v7 + v8[11], v5);
  v15 = *(v20 + 32);
  v16 = type metadata accessor for Logger();
  (*(*(v16 - 8) + 8))(v0 + v21 + v15, v16);

  return swift_deallocObject();
}

uint64_t sub_1003A86F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1003853E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A8860(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1003862EC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A89CC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1003875F0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A8B38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_100388534(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A8CA4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_100389840(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A8E10(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_10038A330(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A8F7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_10038DFBC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A90E8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_10038FD24(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A9254(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_100391C00(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1003A93C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.ItemContent(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032EC8;

  return sub_1003933C8(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

unint64_t sub_1003A952C()
{
  result = qword_100AE0DC0;
  if (!qword_100AE0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0DC0);
  }

  return result;
}

uint64_t sub_1003A9580(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003A95D4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_1003943DC(a1, a2, v7, v6);
}

uint64_t sub_1003A9688(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Suggestion.Location(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100032ECC;

  return sub_100395038(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1003A9810(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100032EC8;

  return sub_1007B2660(a1, v4);
}

void sub_1003A98C8(id a1)
{
  if (a1 != 4)
  {
    sub_10025A7E8(a1);
  }
}

void sub_1003A9920()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_1000F24EC(&unk_100AD4790) - 8);
  v5 = *(v4 + 80);
  sub_100783048(*(v0 + 16), v0 + v2, v0 + ((v3 + v5) & ~v5), v0 + ((*(v4 + 64) + v5 + ((v3 + v5) & ~v5)) & ~v5));
}

void sub_1003A9A64()
{
  type metadata accessor for VisitAssetMetadata();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      sub_1003A9C98(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003A9B68()
{
  sub_1003A9C34();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_1003A9C98(319, &unk_100AE0FD0, &type metadata accessor for URL, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1003A9C34()
{
  result = qword_100AE0FC8;
  if (!qword_100AE0FC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AE0FC8);
  }

  return result;
}

void sub_1003A9C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1003A9CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
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

__n128 sub_1003A9D20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1003A9D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003A9D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003A9DE8()
{
  type metadata accessor for AssetType();
  if (v0 <= 0x3F)
  {
    sub_1003A9E5C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003A9E5C()
{
  if (!qword_100AE1088)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AE1088);
    }
  }
}

uint64_t sub_1003A9EE4()
{
  result = type metadata accessor for EntryViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Suggestion(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003A9FB8()
{
  sub_100007628();
  result = NSString.init(stringLiteral:)();
  qword_100AE1160 = result;
  return result;
}

char *sub_1003A9FFC(void *a1)
{
  v3 = type metadata accessor for SuggestionsOverlayCoordinator.Overlay(0);
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_viewModel;
  type metadata accessor for SuggestionsOverlayCoordinator.ViewModel(0);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration;
  v7 = type metadata accessor for SuggestionsPickerConfiguration(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v5 + v6, 1, 1, v7);
  v8(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__delegate + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) = 0;
  ObservationRegistrar.init()();
  *&v1[v4] = v5;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClassUnconditional();
  *&v1[OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window] = [objc_allocWithZone(type metadata accessor for SuggestionsOverlayCoordinator.Window()) initWithWindowScene:v9];
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
  v10 = objc_msgSendSuper2(&v19, "init");
  v11 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window;
  v12 = *&v10[OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window];
  v13 = v10;
  [v12 setWindowLevel:UIWindowLevelAlert];
  v14 = *&v10[v11];
  sub_1003ABC80();
  v15 = v14;

  Bindable<A>.init(wrappedValue:)();
  v16 = objc_allocWithZone(sub_1000F24EC(&qword_100AE13F8));
  v17 = UIHostingController.init(rootView:)();
  [v15 setRootViewController:v17];

  if (qword_100ACFCD0 != -1)
  {
    swift_once();
  }

  [a1 _registerSceneComponent:v13 forKey:qword_100AE1160];

  [*&v10[v11] setAccessibilityElementsHidden:1];
  return v13;
}

id sub_1003AA690(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003AA6F4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration;
  swift_beginAccess();
  return sub_1003ABE14(v5 + v3, a1);
}

uint64_t sub_1003AA78C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration;
  swift_beginAccess();
  sub_1003ABCF8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1003AA7F8()
{
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1003AA87C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1003AA908()
{
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003AA9D0(uint64_t result)
{
  if (result)
  {
    swift_getKeyPath();
    sub_1003ABC80();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) & 1) == 0)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        type metadata accessor for CanvasViewController(0);
        sub_1003BBF1C();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1003AAB50()
{
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented);
}

uint64_t sub_1003AABC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented);
  return result;
}

uint64_t sub_1003AAC70(uint64_t result)
{
  v2 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented;
  v3 = *(v1 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented);
  if (v3 == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) = result & 1;
    if (v3)
    {
      swift_getKeyPath();
      sub_1003ABC80();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v1 + v2) & 1) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          type metadata accessor for CanvasViewController(0);
          sub_1003BBF1C();
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_1003ABC80();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003AAE9C(uint64_t result, char a2)
{
  v2 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented;
  v3 = *(result + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented);
  *(result + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) = a2;
  if (v3 == 1)
  {
    v4 = result;
    swift_getKeyPath();
    sub_1003ABC80();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v4 + v2) & 1) == 0)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        type metadata accessor for CanvasViewController(0);
        sub_1003BBF1C();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1003AB034(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for JournalingSuggestion();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for Suggestion(0);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_1003AB154, v5, v4);
}

uint64_t sub_1003AB154()
{
  v1 = v0[5];
  swift_getKeyPath();
  v0[2] = v1;
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[8];
    v4 = v0[7];
    v12 = v0[6];
    v13 = v0[9];
    v5 = v0[5];
    v11 = v0[4];
    swift_getKeyPath();
    v6 = swift_task_alloc();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v5;
    v0[3] = v5;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v4 + 16))(v3, v11, v12);
    sub_100367090(v3, v13);
    v7 = swift_task_alloc();
    v0[14] = v7;
    *v7 = v0;
    v7[1] = sub_1003AB374;
    v8 = v0[9];

    return sub_1003BBC1C(v8);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1003AB374()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_1003ABD88(v2);
  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_1003AB4B8, v4, v3);
}

uint64_t sub_1003AB4B8()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AB534()
{
  sub_1003ABE84(v0 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration);
  sub_100038534(v0 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__delegate);
  v1 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1003AB618()
{
  sub_1003ABFB0(319, &unk_100AE1280, type metadata accessor for SuggestionsPickerConfiguration, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003AB734@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_1000F24EC(&qword_100AE13F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for JournalConfiguration();
  v15 = *(v4 - 8);
  v16 = v4;
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE1400);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - v9;
  v14 = static Color.clear.getter();
  v19 = v14;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v8 + 8))(v10, v7);
  Bindable.wrappedValue.getter();
  v11 = v18;
  swift_getKeyPath();
  v18 = v11;
  sub_1003ABC80();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration;
  swift_beginAccess();
  sub_1003ABE14(v11 + v12, v3);

  sub_1003719E0(v3);
  Bindable.wrappedValue.getter();
  View.journalingSuggestionsPicker(isPresented:journalConfig:onCompletion:)();

  (*(v15 + 8))(v6, v16);
}

uint64_t sub_1003ABA38(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1001F0D04;

  return sub_1003AB034(a1);
}

id sub_1003ABAF8()
{
  v1 = *(v0 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_viewModel);
  swift_getKeyPath();
  sub_1003ABC80();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  if (*(v1 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) = 0;
  }

  return [*(v0 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window) setAccessibilityElementsHidden:1];
}

unint64_t sub_1003ABC80()
{
  result = qword_100AE13E0;
  if (!qword_100AE13E0)
  {
    type metadata accessor for SuggestionsOverlayCoordinator.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE13E0);
  }

  return result;
}

uint64_t sub_1003ABCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE13F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ABD88(uint64_t a1)
{
  v2 = type metadata accessor for Suggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003ABE14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE13F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ABE84(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE13F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1003ABF14()
{
  sub_1003ABFB0(319, &unk_100AE1470, type metadata accessor for SuggestionsOverlayCoordinator.ViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003ABFB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1003AC030(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_1003ABA38(a1);
}

char *sub_1003AC0F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal24CanvasInputAccessoryView_toolbar;
  *&v4[v9] = [objc_allocWithZone(UIToolbar) init];
  v29.receiver = v4;
  v29.super_class = type metadata accessor for CanvasInputAccessoryView();
  v10 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = OBJC_IVAR____TtC7Journal24CanvasInputAccessoryView_toolbar;
  [*&v10[OBJC_IVAR____TtC7Journal24CanvasInputAccessoryView_toolbar] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v10 addSubview:*&v10[v11]];
  sub_1000F24EC(&unk_100AD4780);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100941830;
  v13 = [*&v10[v11] topAnchor];
  v14 = [v10 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [*&v10[v11] leadingAnchor];
  v17 = [v10 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [*&v10[v11] bottomAnchor];
  v20 = [v10 bottomAnchor];
  if (_UISolariumEnabled())
  {
    v21 = -8.0;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = objc_opt_self();
  v23 = [v19 constraintEqualToAnchor:v20 constant:v21];

  *(v12 + 48) = v23;
  v24 = [*&v10[v11] trailingAnchor];
  v25 = [v10 trailingAnchor];

  v26 = [v24 constraintEqualToAnchor:v25];
  *(v12 + 56) = v26;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v22 activateConstraints:isa];

  return v10;
}

id sub_1003AC484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasInputAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003AC4EC(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AE14D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v70 - v4;
  v6 = type metadata accessor for DynamicTypeSize();
  v7 = *(v6 - 1);
  __chkstk_darwin(v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AE14E0);
  __chkstk_darwin(v10 - 8);
  v86 = &v70 - v11;
  v88 = type metadata accessor for LayoutDirection();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = type metadata accessor for Font.TextStyle();
  v81 = *(KeyPath - 8);
  __chkstk_darwin(KeyPath);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for JournalMembershipBadge();
  __chkstk_darwin(v79);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1000F24EC(&qword_100AE14E8);
  __chkstk_darwin(v83);
  v85 = &v70 - v17;
  v84 = sub_1000F24EC(&qword_100AE14F0);
  __chkstk_darwin(v84);
  v91 = &v70 - v18;
  v89 = sub_1000F24EC(&qword_100AE14F8);
  __chkstk_darwin(v89);
  v92 = &v70 - v19;
  v90 = sub_1000F24EC(&qword_100AE1500);
  v20 = __chkstk_darwin(v90);
  v93 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = &v70 - v22;
  v97 = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1003ADD80;
  *(v23 + 24) = &v96;
  v102 = sub_1000240E0;
  v103 = v23;
  aBlock = _NSConcreteStackBlock;
  v99 = 1107296256;
  v100 = sub_1003ADD88;
  v101 = &unk_100A6A548;
  v24 = _Block_copy(&aBlock);
  v25 = objc_opt_self();

  v26 = [v25 traitCollectionWithTraits:v24];
  _Block_release(v24);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v74 = v13;
    v75 = v5;
    v76 = v9;
    v77 = v7;
    v78 = v6;
    v5 = *(v1 + 8);
    v23 = *(v1 + 16);
    v9 = *(v1 + 24);
    isEscapingClosureAtFileLocation = *(v1 + 32);
    LOBYTE(v7) = *(v1 + 40);
    aBlock = *v1;
    v6 = aBlock;
    v99 = v5;
    v100 = v23;
    v101 = v9;
    v102 = isEscapingClosureAtFileLocation;
    LOBYTE(v103) = v7;
    v104 = v26;

    v95 = v26;
    v73 = v6;

    v26 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    if (qword_100ACFCD8 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v28 = qword_100AE14D0;
  v29 = [qword_100AE14D0 objectForKey:v26];
  if (v29)
  {
    v30 = v29;

    swift_unknownObjectRelease();
  }

  else
  {
    v71 = v28;
    v72 = v26;
    *v16 = v6;
    *(v16 + 1) = v5;
    *(v16 + 2) = v23;
    *(v16 + 3) = v9;
    *(v16 + 4) = isEscapingClosureAtFileLocation;
    v16[40] = v7;
    aBlock = 0x4030000000000000;
    v31 = enum case for Font.TextStyle.footnote(_:);
    v81 = *(v81 + 104);
    v32 = v80;
    v33 = KeyPath;
    (v81)(v80, enum case for Font.TextStyle.footnote(_:), KeyPath);
    sub_10009BA68();
    v34 = v73;

    ScaledMetric.init(wrappedValue:relativeTo:)();
    aBlock = 0x4038000000000000;
    v35 = v81;
    (v81)(v32, v31, v33);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    aBlock = 0x4040000000000000;
    v35(v32, v31, v33);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    KeyPath = swift_getKeyPath();
    [v95 layoutDirection];
    v36 = v86;
    LayoutDirection.init(_:)();
    v37 = v87;
    v38 = *(v87 + 48);
    v39 = v88;
    if (v38(v36, 1, v88) == 1)
    {
      v40 = v74;
      (*(v37 + 104))(v74, enum case for LayoutDirection.leftToRight(_:), v39);
      v41 = v38(v36, 1, v39) == 1;
      v42 = v39;
      v43 = v78;
      v44 = v36;
      v45 = v77;
      v46 = v75;
      v47 = v91;
      if (!v41)
      {
        sub_100004F84(v44, &qword_100AE14E0);
      }
    }

    else
    {
      v40 = v74;
      (*(v37 + 32))(v74, v36, v39);
      v42 = v39;
      v43 = v78;
      v45 = v77;
      v46 = v75;
      v47 = v91;
    }

    v48 = v85;
    v49 = &v85[*(v83 + 36)];
    v50 = sub_1000F24EC(&qword_100AE1570);
    (*(v37 + 32))(v49 + *(v50 + 28), v40, v42);
    *v49 = KeyPath;
    sub_1003ADEB8(v16, v48);
    v51 = swift_getKeyPath();
    v52 = v95;
    [v95 displayScale];
    v54 = v53;
    sub_100021CEC(v48, v47, &qword_100AE14E8);
    v55 = (v47 + *(v84 + 36));
    *v55 = v51;
    v55[1] = v54;
    v56 = swift_getKeyPath();
    v57 = [v52 preferredContentSizeCategory];
    DynamicTypeSize.init(_:)();
    v58 = *(v45 + 48);
    if (v58(v46, 1, v43) == 1)
    {
      v59 = v76;
      (*(v45 + 104))(v76, enum case for DynamicTypeSize.large(_:), v43);
      v60 = v58(v46, 1, v43);
      v61 = v71;
      if (v60 != 1)
      {
        sub_100004F84(v46, &qword_100AE14D8);
      }
    }

    else
    {
      v59 = v76;
      (*(v45 + 32))(v76, v46, v43);
      v61 = v71;
    }

    v62 = v92;
    v63 = &v92[*(v89 + 36)];
    v64 = sub_1000F24EC(&qword_100AE1578);
    (*(v45 + 32))(v63 + *(v64 + 28), v59, v43);
    *v63 = v56;
    sub_100021CEC(v47, v62, &qword_100AE14F0);
    v65 = swift_getKeyPath();
    v66 = v95;
    [v95 legibilityWeight];
    v67 = v94;
    v68 = &v94[*(v90 + 36)];
    sub_1000F24EC(&qword_100AE1580);
    LegibilityWeight.init(_:)();
    *v68 = v65;
    sub_100021CEC(v62, v67, &qword_100AE14F8);
    sub_1000082B4(v67, v93, &qword_100AE1500);
    sub_1000F24EC(&qword_100AE1588);
    swift_allocObject();
    ImageRenderer.init(content:)();
    [v66 displayScale];
    ImageRenderer.scale.setter();
    v30 = ImageRenderer.uiImage.getter();
    if (v30)
    {
      [v61 setObject:v30 forKey:v72];

      swift_unknownObjectRelease();
      sub_100004F84(v67, &qword_100AE1500);
    }

    else
    {
      sub_100004F84(v67, &qword_100AE1500);

      swift_unknownObjectRelease();
    }
  }

  return v30;
}

uint64_t type metadata accessor for JournalMembershipBadge()
{
  result = qword_100AE15F8;
  if (!qword_100AE15F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003AD1A0(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v24) = a2;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableColor();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD68C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  JournalMO.color.getter();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_100004F84(v15, &unk_100AD68C0);
    v16 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_100004F84(v15, &unk_100AD68C0);
    v16 = sub_10007C744();
    (*(v10 + 8))(v12, v9);
  }

  v17 = JournalMO.symbolName.getter();
  v19 = v18;
  v20 = JournalMO.emoji.getter();
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  *(a3 + 40) = v24;
  type metadata accessor for JournalMembershipBadge();
  v25 = 0x4030000000000000;
  v22 = enum case for Font.TextStyle.footnote(_:);
  v24 = a1;
  v23 = *(v6 + 104);
  v23(v8, enum case for Font.TextStyle.footnote(_:), v5);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v25 = 0x4038000000000000;
  v23(v8, v22, v5);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v25 = 0x4040000000000000;
  v23(v8, v22, v5);
  ScaledMetric.init(wrappedValue:relativeTo:)();
}

__n128 sub_1003AD4EC@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (!*v2)
  {
    sub_1000065A8(0, &qword_100AD4C70);
    if (qword_100AD0BE0 != -1)
    {
      swift_once();
    }

    v9 = sub_10000617C(v4, qword_100B312B0);
    (*(v5 + 16))(v7, v9, v4);
    UIColor.init(resource:)();
    v8 = 0;
  }

  v10 = v8;
  v11 = Color.init(uiColor:)();
  v12 = static Alignment.center.getter();
  v14 = v13;
  type metadata accessor for JournalMembershipBadge();
  sub_1000F24EC(&qword_100AD7DC8);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = static Alignment.center.getter();
  v17 = v16;
  sub_1003AD74C(v2, v22);
  v18 = v23;
  result = v22[0];
  v20 = v22[1];
  *a1 = v11;
  *(a1 + 8) = 3;
  *(a1 + 16) = 256;
  *(a1 + 24) = 256;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  v21 = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v21;
  *(a1 + 80) = v26;
  *(a1 + 96) = result;
  *(a1 + 112) = v20;
  *(a1 + 128) = v18;
  *(a1 + 136) = v15;
  *(a1 + 144) = v17;
  return result;
}

double sub_1003AD74C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = *(a1 + 32);
  if (v11)
  {
    *&v42 = *(a1 + 24);
    *(&v42 + 1) = v11;
    sub_1000777B4();

    v12 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    type metadata accessor for JournalMembershipBadge();
    sub_1000F24EC(&qword_100AD7DC8);
    ScaledMetric.wrappedValue.getter();
    v17 = type metadata accessor for Font.Design();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    static Font.system(size:weight:design:)();
    sub_100004F84(v10, &qword_100AE1670);
    v18 = Text.font(_:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_1000594D0(v12, v14, v16 & 1);

    v37 = v18;
    v38 = v20;
    v39 = v22 & 1;
    v40 = v24;
    v41 = 0;
  }

  else
  {

    v25 = Image.init(_internalSystemName:)();
    type metadata accessor for JournalMembershipBadge();
    sub_1000F24EC(&qword_100AD7DC8);
    ScaledMetric.wrappedValue.getter();
    v26 = type metadata accessor for Font.Design();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    v27 = static Font.system(size:weight:design:)();
    sub_100004F84(v10, &qword_100AE1670);
    KeyPath = swift_getKeyPath();
    v29 = *a1;
    if (!*a1)
    {
      sub_1000065A8(0, &qword_100AD4C70);
      if (qword_100AD0BE0 != -1)
      {
        swift_once();
      }

      v30 = sub_10000617C(v4, qword_100B312B0);
      (*(v5 + 16))(v7, v30, v4);
      UIColor.init(resource:)();
      v29 = 0;
    }

    v31 = v29;
    v32 = Color.init(uiColor:)();
    v37 = v25;
    v38 = KeyPath;
    v39 = v27;
    v40 = v32;
    v41 = 1;
  }

  sub_1000F24EC(&qword_100AE1678);
  sub_1003AE598();
  _ConditionalContent<>.init(storage:)();
  result = *&v42;
  v34 = v43;
  v35 = v44;
  *a2 = v42;
  *(a2 + 16) = v34;
  *(a2 + 32) = v35;
  return result;
}

id sub_1003ADCAC(void *a1, id a2)
{
  [a1 setLayoutDirection:{objc_msgSend(a2, "layoutDirection")}];
  [a2 displayScale];
  [a1 setDisplayScale:?];
  v4 = [a2 preferredContentSizeCategory];
  [a1 setPreferredContentSizeCategory:v4];

  v5 = [a2 legibilityWeight];

  return [a1 setLegibilityWeight:v5];
}

uint64_t sub_1003ADD88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1003ADDDC(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AE1590);
  __chkstk_darwin(v2 - 8);
  sub_1000082B4(a1, &v5 - v3, &unk_100AE1590);
  return EnvironmentValues.legibilityWeight.setter();
}

id sub_1003ADE84()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_100AE14D0 = result;
  return result;
}

uint64_t sub_1003ADEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalMembershipBadge();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_1003ADF1C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1003ADF38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003ADF80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1003AE004()
{
  sub_1003AE0B8();
  if (v0 <= 0x3F)
  {
    sub_10034652C();
    if (v1 <= 0x3F)
    {
      sub_1001E6300();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003AE0B8()
{
  if (!qword_100AE1608)
  {
    sub_1000065A8(255, &qword_100AD4C70);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE1608);
    }
  }
}

unint64_t sub_1003AE134()
{
  result = qword_100AE1658;
  if (!qword_100AE1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1658);
  }

  return result;
}

uint64_t sub_1003AE1A4()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();

    if (*(v1 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v1 + 32))
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_8;
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v1 + 32))
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_8:
  Hasher._combine(_:)(*(v1 + 40));
  return NSObject.hash(into:)();
}

Swift::Int sub_1003AE2A0()
{
  Hasher.init(_seed:)();
  sub_1003AE1A4();
  return Hasher._finalize()();
}

Swift::Int sub_1003AE340()
{
  Hasher.init(_seed:)();
  sub_1003AE1A4();
  return Hasher._finalize()();
}

uint64_t sub_1003AE398(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1003AE44C(v5, v7) & 1;
}

unint64_t sub_1003AE3F8()
{
  result = qword_100AE1660;
  if (!qword_100AE1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1660);
  }

  return result;
}

uint64_t sub_1003AE44C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD4C70);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12 || (*(a1 + 24) != *(a2 + 24) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (*(a1 + 40) == *(a2 + 40))
  {
    sub_1000065A8(0, &unk_100AD43A0);
    return static NSObject.== infix(_:_:)() & 1;
  }

  return 0;
}

unint64_t sub_1003AE598()
{
  result = qword_100AE1680;
  if (!qword_100AE1680)
  {
    sub_1000F2A18(&qword_100AE1678);
    sub_1002E1F9C();
    sub_10000B58C(&qword_100ADD970, &unk_100AE16B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1680);
  }

  return result;
}

unint64_t sub_1003AE650()
{
  result = qword_100AE16C0;
  if (!qword_100AE16C0)
  {
    sub_1000F2A18(&qword_100AE16C8);
    sub_1003AE708();
    sub_10000B58C(&qword_100AE16F0, &qword_100AE16F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE16C0);
  }

  return result;
}

unint64_t sub_1003AE708()
{
  result = qword_100AE16D0;
  if (!qword_100AE16D0)
  {
    sub_1000F2A18(&qword_100AE16D8);
    sub_10000B58C(&qword_100AE16E0, &qword_100AE16E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE16D0);
  }

  return result;
}

uint64_t sub_1003AE7C0()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE1700);
  sub_10000617C(v0, qword_100AE1700);
  return Logger.init(subsystem:category:)();
}

void sub_1003AE85C(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 >= a1)
  {
    v13 = 1.0 / a2 * a1;
    v21.origin.x = a3;
    v21.origin.y = a4;
    v21.size.width = a5;
    v21.size.height = a6;
    v14 = CGRectGetMidY(v21) + v13 * -0.5;
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    if (v14 >= 1.0 - v13)
    {
      MinY = 1.0 - v13;
    }

    else
    {
      MinY = v14;
    }

    v22.origin.x = a3;
    v22.origin.y = a4;
    v22.size.width = a5;
    v22.size.height = a6;
    if (CGRectGetMinY(v22) < MinY)
    {
      v23.origin.x = a3;
      v23.origin.y = a4;
      v23.size.width = a5;
      v23.size.height = a6;
      MinY = CGRectGetMinY(v23);
    }

    v24.origin.x = a3;
    v24.origin.y = a4;
    v24.size.width = a5;
    v24.size.height = a6;
    if (v13 + MinY < CGRectGetMaxY(v24))
    {
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetMaxY(v25);
    }
  }

  else
  {
    v10 = a2 / a1;
    v16.origin.x = a3;
    v16.origin.y = a4;
    v16.size.width = a5;
    v16.size.height = a6;
    v11 = CGRectGetMidX(v16) + v10 * -0.5;
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    if (v11 >= 1.0 - v10)
    {
      MinX = 1.0 - v10;
    }

    else
    {
      MinX = v11;
    }

    v17.origin.x = a3;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    if (CGRectGetMinX(v17) < MinX)
    {
      v18.origin.x = a3;
      v18.origin.y = a4;
      v18.size.width = a5;
      v18.size.height = a6;
      MinX = CGRectGetMinX(v18);
    }

    v19.origin.x = a3;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    if (v10 + MinX < CGRectGetMaxX(v19))
    {
      v20.origin.x = a3;
      v20.origin.y = a4;
      v20.size.width = a5;
      v20.size.height = a6;
      CGRectGetMaxX(v20);
    }
  }
}

id sub_1003AEA40(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_playButtonMargin] = 0x4018000000000000;
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_labelMarginSmall] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_labelMarginLarge] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_betweenLabelsMargin] = 0x4010000000000000;
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_fullScreenAssetMargin] = 0x4034000000000000;
  v9 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton;
  type metadata accessor for PlaybackButton();
  *&v4[v9] = sub_100083FB0(1);
  v10 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel;
  *&v4[v12] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator] = 0;
  v13 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
  type metadata accessor for ImageBlurView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC7Journal18MediaAssetGridView_previousSizeType] = 8;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for MediaAssetGridView();
  v14 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1003AEEA0();

  return v14;
}

id sub_1003AEC04(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_playButtonMargin] = 0x4018000000000000;
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_labelMarginSmall] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_labelMarginLarge] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_betweenLabelsMargin] = 0x4010000000000000;
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_fullScreenAssetMargin] = 0x4034000000000000;
  v3 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton;
  type metadata accessor for PlaybackButton();
  *&v1[v3] = sub_100083FB0(1);
  v4 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator] = 0;
  v7 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
  type metadata accessor for ImageBlurView();
  *&v1[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_previousSizeType] = 8;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for MediaAssetGridView();
  v8 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_1003AEEA0();
  }

  return v9;
}

_BYTE *sub_1003AEDB4(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v6 = [objc_allocWithZone(v2) init];
  sub_10032ED40(a1);
  sub_1003AF784();
  *&v6[OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8] = &off_100A6A690;
  swift_unknownObjectWeakAssign();
  if (v5 == 8)
  {
    v7 = 6;
  }

  else
  {
    v7 = a2;
  }

  v8 = v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v6[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = v7;
  v9 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v6[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] == 1 && (sub_10003C2FC(v7, v8) & 1) != 0)
  {
  }

  else
  {
    sub_1003B0D74();

    v6[v9] = 1;
    a1 = v6;
  }

  return v6;
}

uint64_t sub_1003AEEA0()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v42 = &v41 - v3;
  v44 = type metadata accessor for MusicAuthorization.Status();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v46 = &v41 - v7;
  v8 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
  [v0 insertSubview:*&v0[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView] atIndex:{0, v6}];
  v9 = *&v0[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
  v10 = sub_100047788(UIFontTextStyleFootnote, &off_100A58DA0, 0);
  swift_arrayDestroy();
  [v9 setFont:v10];

  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  [v9 setTextColor:v12];

  [v9 setPreferredVibrancy:1];
  [v9 setNumberOfLines:3];
  [v9 setAdjustsFontForContentSizeCategory:1];
  [v9 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v13 = [*(*&v1[v8] + OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView) contentView];
  [v13 addSubview:v9];

  v14 = *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
  v15 = sub_100047788(UIFontTextStyleFootnote, &off_100A58DF0, 0);
  sub_100047D60(&unk_100A58E10);
  [v14 setFont:v15];

  v16 = [v11 secondaryLabelColor];
  [v14 setTextColor:v16];

  [v14 setPreferredVibrancy:1];
  [v14 setNumberOfLines:4];
  [v14 setAdjustsFontForContentSizeCategory:1];
  v43 = UIContentSizeCategoryAccessibilityLarge;
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v17 = [*(*&v1[v8] + OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView) contentView];
  [v17 addSubview:v14];

  v18 = *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel];
  if (qword_100AD03E8 != -1)
  {
    swift_once();
  }

  [v18 setFont:qword_100B303E0];
  v19 = [v11 tertiaryLabelColor];
  [v18 setTextColor:v19];

  [v18 setPreferredVibrancy:1];
  [v18 setAdjustsFontSizeToFitWidth:1];
  [v18 setMinimumScaleFactor:0.5];
  [v18 setNumberOfLines:1];
  [v18 setAdjustsFontForContentSizeCategory:1];
  [v18 setMaximumContentSizeCategory:v43];
  v20 = [*(*&v1[v8] + OBJC_IVAR____TtC7Journal13ImageBlurView_artBlurView) contentView];
  [v20 addSubview:v18];

  v21 = *&v1[OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton];
  if (qword_100AD0880 != -1)
  {
    swift_once();
  }

  v22 = String._bridgeToObjectiveC()();
  [v21 setAccessibilityLabel:v22];

  [v21 addTarget:v1 action:"playAction:" forControlEvents:64];
  [v21 setUserInteractionEnabled:1];
  [v21 setDeliversTouchesForGesturesToSuperview:0];
  [v1 addSubview:v21];
  v23 = *&v1[OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView];
  type metadata accessor for UILayoutPriority(0);
  LODWORD(v48) = 1144750080;
  v52 = 1065353216;
  sub_1003B4A14(&qword_100AF3610, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  LODWORD(v24) = v50;
  [v23 setContentCompressionResistancePriority:1 forAxis:v24];
  LODWORD(v25) = 1144750080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v25];
  LODWORD(v26) = 1144750080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v26];
  LODWORD(v27) = 1144750080;
  [v18 setContentCompressionResistancePriority:1 forAxis:v27];
  v28 = v46;
  static MusicAuthorization.currentStatus.getter();
  v29 = v47;
  v30 = v44;
  v31 = v45;
  (*(v47 + 104))(v45, enum case for MusicAuthorization.Status.authorized(_:), v44);
  sub_1003B4A14(&qword_100AE1858, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v50 == v48 && v51 == v49)
  {
    v32 = *(v29 + 8);
    v32(v31, v30);
    v32(v28, v30);
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = *(v29 + 8);
    v34(v31, v30);
    v34(v28, v30);

    if ((v33 & 1) == 0)
    {
      return result;
    }
  }

  v36 = type metadata accessor for TaskPriority();
  v37 = v42;
  (*(*(v36 - 8) + 56))(v42, 1, 1, v36);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v39 = static MainActor.shared.getter();
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v38;

  sub_1003E9628(0, 0, v37, &unk_100952E10, v40);
}

uint64_t sub_1003AF738(void *a1)
{
  sub_10032ED40(a1);
  sub_1003AF784();
  *(v1 + OBJC_IVAR____TtC7Journal14MediaAssetView_delegate + 8) = &off_100A6A690;

  return swift_unknownObjectWeakAssign();
}

void sub_1003AF784()
{
  v1 = type metadata accessor for BookAssetMetadata();
  v148 = *(v1 - 8);
  v149 = v1;
  __chkstk_darwin(v1);
  v146 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD4318);
  v4 = __chkstk_darwin(v3 - 8);
  v147 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v143 - v6;
  v8 = type metadata accessor for PodcastAssetMetadata();
  v152 = *(v8 - 1);
  v153 = v8;
  __chkstk_darwin(v8);
  v150 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD2A70);
  v11 = __chkstk_darwin(v10 - 8);
  v151 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v143 - v13;
  v15 = type metadata accessor for MediaViewType();
  v158 = *(v15 - 8);
  v159 = v15;
  __chkstk_darwin(v15);
  v157 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AE1848);
  __chkstk_darwin(v17);
  v19 = &v143 - v18;
  v20 = sub_1000F24EC(&qword_100ADF198);
  v21 = __chkstk_darwin(v20 - 8);
  v154 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v143 - v24;
  __chkstk_darwin(v23);
  v27 = &v143 - v26;
  v28 = type metadata accessor for MusicAssetMetadata();
  v155 = *(v28 - 8);
  v156 = v28;
  __chkstk_darwin(v28);
  v30 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000F24EC(&qword_100AD6F70);
  v32 = __chkstk_darwin(v31 - 8);
  v33 = __chkstk_darwin(v32);
  v34 = __chkstk_darwin(v33);
  v36 = &v143 - v35;
  __chkstk_darwin(v34);
  v40 = &v143 - v39;
  v160 = v0;
  v41 = *&v0[OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset];
  if (v41)
  {
    v144 = v38;
    v145 = v37;
    type metadata accessor for MusicAsset();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v153 = v41;
      v150 = *&v160[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
      v151 = OBJC_IVAR____TtC7Journal10MusicAsset_metadata;
      v152 = v42;
      v43 = *(v42 + OBJC_IVAR____TtC7Journal10MusicAsset_metadata);
      if (v43)
      {
        v44 = v153;

        sub_10025BEA0(v40);

        v46 = v155;
        v45 = v156;
        v47 = (*(v155 + 48))(v40, 1, v156);
        v48 = v154;
        if (v47)
        {
          sub_100004F84(v40, &qword_100AD6F70);
          v43 = 0;
          v49 = v30;
          goto LABEL_28;
        }

        (*(v46 + 16))(v30, v40, v45);
        sub_100004F84(v40, &qword_100AD6F70);
        MusicAssetMetadata.artistName.getter();
        v62 = v61;
        v63 = v46;
        v49 = v30;
        (*(v63 + 8))(v30, v45);
        if (v62)
        {
          v43 = String._bridgeToObjectiveC()();
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v60 = v153;
        v49 = v30;
      }

      v48 = v154;
LABEL_28:
      [v150 setText:v43];

      v150 = *&v160[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
      v81 = v158;
      if (*(v152 + v151))
      {

        sub_10025BEA0(v36);

        v83 = v155;
        v82 = v156;
        if (!(*(v155 + 48))(v36, 1, v156))
        {
          (*(v83 + 16))(v49, v36, v82);
          sub_100004F84(v36, &qword_100AD6F70);
          MusicAssetMetadata.mediaType.getter();
          v48 = v154;
          (*(v83 + 8))(v49, v82);
          v84 = v159;
LABEL_33:
          (*(v81 + 104))(v25, enum case for MediaViewType.songAlbum(_:), v84);
          (*(v81 + 56))(v25, 0, 1, v84);
          v85 = *(v17 + 48);
          sub_1003B49A4(v27, v19);
          sub_1003B49A4(v25, &v19[v85]);
          v86 = *(v81 + 48);
          if (v86(v19, 1, v84) == 1)
          {
            sub_100004F84(v25, &qword_100ADF198);
            sub_100004F84(v27, &qword_100ADF198);
            if (v86(&v19[v85], 1, v84) == 1)
            {
              sub_100004F84(v19, &qword_100ADF198);
              v53 = v160;
LABEL_43:
              if (!*(v152 + v151))
              {
                goto LABEL_46;
              }

              v88 = v144;
              sub_10025BEA0(v144);

              v90 = v155;
              v89 = v156;
              if ((*(v155 + 48))(v88, 1, v156))
              {
                goto LABEL_45;
              }

              (*(v90 + 16))(v49, v88, v89);
              sub_100004F84(v88, &qword_100AD6F70);
              MusicAssetMetadata.albumName.getter();
              goto LABEL_66;
            }
          }

          else
          {
            v154 = v49;
            sub_1003B49A4(v19, v48);
            v87 = v48;
            if (v86(&v19[v85], 1, v84) != 1)
            {
              v92 = v157;
              (*(v81 + 32))(v157, &v19[v85], v84);
              sub_1003B4A14(&qword_100AE1850, &type metadata accessor for MediaViewType);
              v93 = v81;
              v94 = v84;
              v95 = dispatch thunk of static Equatable.== infix(_:_:)();
              v96 = *(v93 + 8);
              v96(v92, v94);
              sub_100004F84(v25, &qword_100ADF198);
              sub_100004F84(v27, &qword_100ADF198);
              v96(v87, v94);
              sub_100004F84(v19, &qword_100ADF198);
              v53 = v160;
              v49 = v154;
              if (v95)
              {
                goto LABEL_43;
              }

LABEL_39:
              if (!*(v152 + v151))
              {
                goto LABEL_46;
              }

              v88 = v145;
              sub_10025BEA0(v145);

              v90 = v155;
              v89 = v156;
              if ((*(v155 + 48))(v88, 1, v156))
              {
LABEL_45:
                sub_100004F84(v88, &qword_100AD6F70);
                goto LABEL_46;
              }

              (*(v90 + 16))(v49, v88, v89);
              sub_100004F84(v88, &qword_100AD6F70);
              MusicAssetMetadata.song.getter();
LABEL_66:
              v133 = v91;
              (*(v90 + 8))(v49, v89);
              if (v133)
              {
                v97 = String._bridgeToObjectiveC()();

                goto LABEL_47;
              }

LABEL_46:
              v97 = 0;
LABEL_47:
              [v150 setText:v97];

              v98 = [objc_allocWithZone(type metadata accessor for MediaIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
              v99 = qword_100AD0AD0;
              v100 = *&v98[OBJC_IVAR____TtC7Journal18MediaIndicatorView_mediaImageView];
              if (v99 != -1)
              {
                swift_once();
              }

              v101 = qword_100AF1E68;
              v102 = String._bridgeToObjectiveC()();
              v103 = [objc_opt_self() _systemImageNamed:v102 withConfiguration:v101];

              [v100 setImage:v103];
LABEL_55:
              v112 = *&v53[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator];
              *&v53[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator] = v98;
LABEL_56:

              goto LABEL_57;
            }

            sub_100004F84(v25, &qword_100ADF198);
            sub_100004F84(v27, &qword_100ADF198);
            (*(v81 + 8))(v48, v84);
            v49 = v154;
          }

          sub_100004F84(v19, &qword_100AE1848);
          v53 = v160;
          goto LABEL_39;
        }

        sub_100004F84(v36, &qword_100AD6F70);
      }

      v84 = v159;
      (*(v81 + 56))(v27, 1, 1, v159);
      goto LABEL_33;
    }

    type metadata accessor for PodcastAsset();
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v51 = v50;
      v52 = v41;
      v53 = v160;
      v54 = *&v160[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
      v55 = OBJC_IVAR____TtC7Journal12PodcastAsset_metadata;
      v56 = *(v50 + OBJC_IVAR____TtC7Journal12PodcastAsset_metadata);
      if (v56)
      {
        v57 = v52;

        sub_10025C244(v14);

        v59 = v152;
        v58 = v153;
        if ((*(v152 + 48))(v14, 1, v153))
        {
          sub_100004F84(v14, &qword_100AD2A70);
LABEL_10:
          v56 = 0;
          goto LABEL_22;
        }

        v75 = v150;
        (*(v59 + 16))(v150, v14, v58);
        sub_100004F84(v14, &qword_100AD2A70);
        PodcastAssetMetadata.author.getter();
        v77 = v76;
        (*(v59 + 8))(v75, v58);
        if (!v77)
        {
          goto LABEL_10;
        }

        v56 = String._bridgeToObjectiveC()();
      }

      else
      {
        v74 = v52;
        v59 = v152;
        v58 = v153;
      }

LABEL_22:
      [v54 setText:v56];

      v78 = *&v53[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
      v79 = *(v51 + v55);
      if (v79)
      {

        v80 = v151;
        sub_10025C244(v151);

        if ((*(v59 + 48))(v80, 1, v58))
        {
          sub_100004F84(v80, &qword_100AD2A70);
        }

        else
        {
          v104 = v150;
          (*(v59 + 16))(v150, v80, v58);
          sub_100004F84(v80, &qword_100AD2A70);
          PodcastAssetMetadata.title.getter();
          v106 = v105;
          (*(v59 + 8))(v104, v58);
          if (v106)
          {
            v79 = String._bridgeToObjectiveC()();

            goto LABEL_52;
          }
        }

        v79 = 0;
      }

LABEL_52:
      [v78 setText:v79];

      v98 = [objc_allocWithZone(type metadata accessor for MediaIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v107 = qword_100AD0AD0;
      v108 = *&v98[OBJC_IVAR____TtC7Journal18MediaIndicatorView_mediaImageView];
      if (v107 != -1)
      {
        swift_once();
      }

      v109 = qword_100AF1E68;
      v110 = String._bridgeToObjectiveC()();
      v111 = [objc_opt_self() _systemImageNamed:v110 withConfiguration:v109];

      [v108 setImage:v111];
      goto LABEL_55;
    }

    type metadata accessor for BookAsset();
    v64 = swift_dynamicCastClass();
    if (!v64)
    {
      goto LABEL_57;
    }

    v65 = v64;
    v66 = v41;
    v67 = v160;
    v68 = *&v160[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
    v69 = OBJC_IVAR____TtC7Journal9BookAsset_metadata;
    if (*(v64 + OBJC_IVAR____TtC7Journal9BookAsset_metadata))
    {
      v70 = v41;

      sub_10025C5E8(v7);

      v72 = v148;
      v71 = v149;
      if ((*(v148 + 48))(v7, 1, v149))
      {
        sub_100004F84(v7, &qword_100AD4318);
LABEL_18:
        v73 = 0;
        goto LABEL_71;
      }

      v135 = v146;
      (*(v72 + 16))(v146, v7, v71);
      sub_100004F84(v7, &qword_100AD4318);
      BookAssetMetadata.author.getter();
      v137 = v136;
      (*(v72 + 8))(v135, v71);
      if (!v137)
      {
        goto LABEL_18;
      }

      v73 = String._bridgeToObjectiveC()();
    }

    else
    {
      v134 = v41;
      v73 = 0;
      v72 = v148;
      v71 = v149;
    }

LABEL_71:
    [v68 setText:v73];

    v138 = *&v67[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
    v112 = *(v65 + v69);
    if (v112)
    {

      v139 = v147;
      sub_10025C5E8(v147);

      if ((*(v72 + 48))(v139, 1, v71))
      {
        sub_100004F84(v139, &qword_100AD4318);
      }

      else
      {
        v140 = v146;
        (*(v72 + 16))(v146, v139, v71);
        sub_100004F84(v139, &qword_100AD4318);
        BookAssetMetadata.title.getter();
        v142 = v141;
        (*(v72 + 8))(v140, v71);
        if (v142)
        {
          v112 = String._bridgeToObjectiveC()();

          goto LABEL_77;
        }
      }

      v112 = 0;
    }

LABEL_77:
    [v138 setText:v112];

    goto LABEL_56;
  }

LABEL_57:
  v113 = v160;
  v114 = *&v160[OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel];
  v115 = OBJC_IVAR____TtC7Journal14MediaAssetView_mediaType;
  swift_beginAccess();
  v117 = v157;
  v116 = v158;
  v118 = v159;
  (*(v158 + 16))(v157, &v113[v115], v159);
  sub_10054D5EC();
  (*(v116 + 8))(v117, v118);
  v119 = String._bridgeToObjectiveC()();

  [v114 setText:v119];

  v120 = *&v113[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator];
  if (v120)
  {
    v121 = v120;
    [v113 addSubview:v121];
    [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
    v122 = [v121 widthAnchor];
    v123 = [v122 constraintEqualToConstant:16.0];

    [v123 setActive:1];
    [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
    v124 = [v121 heightAnchor];
    v125 = [v121 widthAnchor];
    v126 = [v124 constraintEqualToAnchor:v125 multiplier:1.0];

    [v126 setActive:1];
    v127 = [v121 superview];
    if (v127)
    {
      v128 = v127;
      [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
      v129 = [v121 leadingAnchor];
      v130 = [v128 leadingAnchor];
      v131 = [v129 constraintEqualToAnchor:v130];

      [v131 setConstant:6.0];
      [v131 setActive:1];
    }

    v132 = 1;

    if (v113[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] <= 6u)
    {
      v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    [v121 setHidden:v132 & 1];
  }
}

void sub_1003B0D74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v3 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_previousSizeType;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_previousSizeType);
  if (v4 == 8 || (sub_10003C2FC(*(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType), v4) & 1) == 0)
  {
    v5 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton);
    sub_1000746FC();
    v6 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel);
    sub_1000746FC();
    v7 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel);
    sub_1000746FC();
    v8 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel);
    sub_1000746FC();
    v9 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
    v10 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView);
    sub_1000746FC();

    sub_1000746FC();
    [v5 setHidden:0];
    [v6 setHidden:0];
    [v7 setHidden:0];
    [v8 setHidden:0];
    [*(v1 + v9) setHidden:0];
    v11 = *(v1 + v2);
    if (v11 > 3)
    {
      if (*(v1 + v2) > 5u)
      {
        if (v11 == 6)
        {
          [v5 setHidden:1];
          [v6 setHidden:1];
          [v7 setHidden:1];
          [v8 setHidden:1];
          [*(v1 + v9) setHidden:1];
          sub_100013178(0.0);
        }

        else
        {
          sub_1003B2988();
        }
      }

      else if (v11 == 4)
      {
        sub_1003B0F80();
      }
    }

    else if (*(v1 + v2) > 1u)
    {
      if (v11 != 2)
      {
        sub_1003B1994();
      }
    }

    else if (*(v1 + v2))
    {
      sub_1003B1C38();
    }

    *(v1 + v3) = *(v1 + v2);
  }
}

void sub_1003B0F80()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel) setHidden:1];
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
  v3 = [v2 superview];
  v4 = &selRef_setSuggestedName_;
  v5 = &selRef_setSuggestedName_;
  if (v3)
  {
    v6 = v3;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v2 leadingAnchor];
    v8 = [v6 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:0.0];
    [v9 setActive:1];

    v5 = &selRef_setSuggestedName_;
  }

  v10 = [v2 superview];
  if (v10)
  {
    v11 = v10;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v2 topAnchor];
    v13 = [v11 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:0.0];
    [v14 setActive:1];

    v5 = &selRef_setSuggestedName_;
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v2 heightAnchor];
  v16 = [v2 widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 multiplier:1.0];

  [v17 setActive:1];
  v18 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
  v19 = *(v1 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView);
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [v19 trailingAnchor];
    v23 = [v21 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    [v24 setConstant:0.0];
    if (v24)
    {
      [v24 setActive:1];
    }

    v4 = &selRef_setSuggestedName_;
    v5 = &selRef_setSuggestedName_;
  }

  else
  {
    v24 = 0;
    v21 = v19;
  }

  v25 = *(v1 + v18);
  v26 = [v25 superview];
  if (v26)
  {
    v27 = v26;
    v28 = v1;
    [v25 v4[278]];
    v29 = [v25 topAnchor];
    v30 = [v27 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    [v31 setConstant:0.0];
    v32 = &selRef_setSuggestedName_;
    if (v31)
    {
      [v31 setActive:1];
    }

    v5 = &selRef_setSuggestedName_;

    v4 = &selRef_setSuggestedName_;
  }

  else
  {
    v28 = v1;
    v32 = &selRef_setSuggestedName_;
    v31 = 0;
    v27 = v25;
  }

  v33 = *(v28 + v18);
  v34 = sub_100028DA0(0, 1, 0.0);

  v35 = *(v28 + v18);
  [v35 v4[278]];
  v36 = [v35 v5[232]];
  v37 = [v2 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  [v38 setConstant:0.0];
  [v38 v32[263]];

  v39 = *(v28 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel);
  v40 = *(v28 + v18);
  [v39 v4[278]];
  v41 = [v39 trailingAnchor];
  v42 = [v40 trailingAnchor];
  v43 = v5;
  v44 = [v41 constraintEqualToAnchor:v42];

  [v44 setConstant:-8.0];
  [v44 v32[263]];

  v45 = *(v28 + v18);
  [v39 v4[278]];
  v46 = [v39 bottomAnchor];
  v47 = [v45 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-8.0];

  [v48 setActive:1];
  v49 = *(v28 + v18);
  [v39 v4[278]];
  v50 = [v39 v43[232]];
  v51 = [v49 v43[232]];
  v52 = [v50 constraintEqualToAnchor:v51];

  [v52 setConstant:8.0];
  [v52 setActive:1];

  v53 = *(v28 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel);
  v54 = *(v28 + v18);
  [v53 v4[278]];
  v55 = [v53 trailingAnchor];
  v56 = [v54 trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  [v57 setConstant:-8.0];
  [v57 setActive:1];

  v58 = *(v28 + v18);
  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = [v53 v43[232]];
  v60 = [v58 v43[232]];
  v61 = [v59 constraintEqualToAnchor:v60];

  [v61 setConstant:8.0];
  [v61 setActive:1];

  [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
  v62 = [v53 bottomAnchor];
  v63 = [v39 topAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  [v64 setConstant:0.0];
  [v64 setActive:1];

  v65 = [v53 superview];
  if (v65)
  {
    v69 = v65;
    [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = [v53 topAnchor];
    v67 = [v69 topAnchor];
    v68 = [v66 constraintGreaterThanOrEqualToAnchor:v67];

    [v68 setConstant:8.0];
    [v68 setActive:1];
  }
}

uint64_t sub_1003B1994()
{
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel) setHidden:1];
  [*(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton);
  v2 = [v1 superview];
  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  if (v2)
  {
    v4 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v1 topAnchor];
    v6 = [v4 topAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];

    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
    [v7 setConstant:6.0];
    [v7 setActive:1];
  }

  v8 = [v1 superview];
  if (v8)
  {
    v9 = v8;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v1 leadingAnchor];
    v11 = [v9 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    [v12 p:6.0 ivar:?lyt[472]];
    [v12 setActive:1];
  }

  v13 = 1;
  if (*(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset))
  {
    type metadata accessor for MusicAsset();
    if (swift_dynamicCastClass())
    {
      v13 = 0;
    }
  }

  [v1 setHidden:v13];
  sub_100013178(0.0);
}

void sub_1003B1C38()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
  v2 = [v1 superview];
  if (v2)
  {
    v3 = v2;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v1 leadingAnchor];
    v5 = [v3 leadingAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];

    [v6 setConstant:0.0];
    [v6 setActive:1];
  }

  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:0.0];
    [v11 setActive:1];
  }

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 heightAnchor];
  v13 = [v1 widthAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 multiplier:1.0];

  [v14 setActive:1];
  v86 = OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView;
  v15 = *&v87[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView];
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v15 trailingAnchor];
    v19 = [v17 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:0.0];
    if (v20)
    {
      [v20 setActive:1];
    }
  }

  else
  {
    v20 = 0;
    v17 = v15;
  }

  v21 = *&v87[v86];
  v22 = [v21 superview];
  if (v22)
  {
    v23 = v22;
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v21 topAnchor];
    v25 = [v23 topAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    [v26 setConstant:0.0];
    if (v26)
    {
      [v26 setActive:1];
    }

    v27 = &selRef_setSuggestedName_;
  }

  else
  {
    v26 = 0;
    v23 = v21;
    v27 = &selRef_setSuggestedName_;
  }

  v28 = *&v87[v86];
  v29 = sub_100028DA0(0, 1, 0.0);

  v30 = *&v87[v86];
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [v30 v27[232]];
  v32 = [v1 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  [v33 setConstant:0.0];
  [v33 setActive:1];

  v34 = *&v87[OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton];
  v35 = [v34 superview];
  if (v35)
  {
    v36 = v35;
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [v34 topAnchor];
    v38 = [v36 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    [v39 setConstant:6.0];
    [v39 setActive:1];
  }

  v40 = [v34 leadingAnchor];
  v41 = [v1 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:6.0];

  v43 = 1;
  [v42 setActive:1];

  if (*&v87[OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset])
  {
    type metadata accessor for MusicAsset();
    v43 = swift_dynamicCastClass() == 0;
  }

  [v34 setHidden:v43];
  v44 = *&v87[OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel];
  v45 = *&v87[v86];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v46 = [v44 bottomAnchor];
  v47 = [v45 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:-12.0];

  [v48 setActive:1];
  v49 = *&v87[v86];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = [v44 leadingAnchor];
  v51 = [v49 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  [v52 setConstant:12.0];
  [v52 setActive:1];

  v53 = *&v87[v86];
  v85 = v44;
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  v54 = [v44 trailingAnchor];
  v55 = [v53 trailingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  [v56 setConstant:-12.0];
  [v56 setActive:1];

  v57 = *&v87[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
  v58 = *&v87[v86];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = [v57 leadingAnchor];
  v60 = [v58 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  [v61 setConstant:12.0];
  [v61 setActive:1];

  v62 = *&v87[v86];
  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v63 = [v57 trailingAnchor];
  v64 = [v62 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  [v65 setConstant:-12.0];
  [v65 setActive:1];

  [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
  v66 = [v57 bottomAnchor];
  v67 = [v85 topAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  [v68 setConstant:-4.0];
  [v68 setActive:1];

  v69 = *&v87[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
  v70 = *&v87[v86];
  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  v71 = [v69 leadingAnchor];
  v72 = [v70 leadingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  [v73 setConstant:12.0];
  [v73 setActive:1];

  v74 = *&v87[v86];
  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = [v69 trailingAnchor];
  v76 = [v74 trailingAnchor];
  v77 = [v75 constraintEqualToAnchor:v76];

  [v77 setConstant:-12.0];
  [v77 setActive:1];

  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  v78 = [v69 bottomAnchor];
  v79 = [v57 topAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  [v80 setConstant:0.0];
  [v80 setActive:1];

  v81 = [v69 superview];
  if (v81)
  {
    v88 = v81;
    [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v82 = [v69 topAnchor];
    v83 = [v88 topAnchor];
    v84 = [v82 constraintGreaterThanOrEqualToAnchor:v83];

    [v84 setConstant:12.0];
    [v84 setActive:1];
  }
}

void sub_1003B2988()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView];
  v2 = [v1 layer];
  [v2 setCornerRadius:12.0];

  [v1 setClipsToBounds:1];
  v73 = v0;
  v3 = *&v0[OBJC_IVAR____TtC7Journal18MediaAssetGridView_mediaIndicator];
  if (v3)
  {
    [v3 setHidden:1];
  }

  v4 = [v1 superview];
  if (v4)
  {
    v5 = v4;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v1 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:20.0];
    [v8 setActive:1];
  }

  v9 = [v1 superview];
  if (v9)
  {
    v10 = v9;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v1 topAnchor];
    v12 = [v10 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:20.0];
    [v13 setActive:1];
  }

  v14 = [v1 superview];
  if (v14)
  {
    v15 = v14;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v1 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:-20.0];
    [v18 setActive:1];
  }

  v19 = *&v73[OBJC_IVAR____TtC7Journal18MediaAssetGridView_titleLabel];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v1 bottomAnchor];
  v21 = [v19 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  [v22 setConstant:-15.0];
  [v22 setActive:1];
  LODWORD(v23) = 1132068864;
  [v22 setPriority:v23];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = [v1 heightAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 multiplier:1.0];

  [v26 setActive:1];
  v27 = *&v73[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView];
  sub_100013178(0.0);

  v28 = *&v73[OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [v28 topAnchor];
  v30 = [v1 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  [v31 setConstant:12.0];
  [v31 setActive:1];

  v32 = [v28 superview];
  if (v32)
  {
    v33 = v32;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v28 trailingAnchor];
    v35 = [v33 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    [v36 setConstant:-20.0];
    [v36 setActive:1];
  }

  if (*&v73[OBJC_IVAR____TtC7Journal14MediaAssetView_mediaAsset])
  {
    type metadata accessor for MusicAsset();
    v37 = swift_dynamicCastClass() == 0;
  }

  else
  {
    v37 = 1;
  }

  [v28 setHidden:v37];
  v38 = [v19 superview];
  if (v38)
  {
    v39 = v38;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    v40 = [v19 leadingAnchor];
    v41 = [v39 leadingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];

    [v42 setConstant:20.0];
    [v42 setActive:1];
  }

  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v43 = [v19 trailingAnchor];
  v44 = [v28 trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  [v45 setConstant:-20.0];
  [v45 setActive:1];

  v46 = *&v73[OBJC_IVAR____TtC7Journal18MediaAssetGridView_artistLabel];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v47 = [v19 bottomAnchor];
  v48 = [v46 topAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  [v49 setConstant:-4.0];
  [v49 setActive:1];

  v50 = [v46 superview];
  if (v50)
  {
    v51 = v50;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = [v46 leadingAnchor];
    v53 = [v51 leadingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    [v54 setConstant:20.0];
    [v54 setActive:1];
  }

  v55 = [v46 superview];
  if (v55)
  {
    v56 = v55;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v57 = [v46 trailingAnchor];
    v58 = [v56 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    [v59 setConstant:-20.0];
    [v59 setActive:1];
  }

  v60 = *&v73[OBJC_IVAR____TtC7Journal18MediaAssetGridView_categoryLabel];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v61 = [v46 bottomAnchor];
  v62 = [v60 topAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  [v63 setConstant:-4.0];
  [v63 setActive:1];

  v64 = [v60 superview];
  if (v64)
  {
    v65 = v64;
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = [v60 leadingAnchor];
    v67 = [v65 leadingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    [v68 setConstant:20.0];
    [v68 setActive:1];
  }

  v69 = [v60 superview];
  if (v69)
  {
    v74 = v69;
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [v60 trailingAnchor];
    v71 = [v74 trailingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    [v72 setConstant:-20.0];
    [v72 setActive:1];
  }
}

uint64_t sub_1003B3514()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14MediaAssetView_assetImageView);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView);
  [v1 image];
  swift_getKeyPath();
  swift_getKeyPath();
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_1003B35B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[3] = swift_task_alloc();
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1003B3688, v6, v5);
}

uint64_t sub_1003B3688()
{
  v1 = *(v0 + 40);

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003B3748;

  return (sub_10051D0E8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1003B3748(char a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1003B3894, v4, v3);
}

uint64_t sub_1003B3894()
{
  if (*(v0 + 80))
  {
    if (*(v0 + 80) == 1)
    {
      v1 = *(v0 + 40);

      v2 = swift_task_alloc();
      *(v0 + 72) = v2;
      *v2 = v0;
      v2[1] = sub_1003B3A90;

      return (sub_1006A41FC)(v1, &protocol witness table for MainActor);
    }
  }

  else
  {
    v4 = *(v0 + 24);

    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;

    sub_1003E9628(0, 0, v4, &unk_100952E30, v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003B3A90(char a1)
{
  v2 = *v1;
  *(*v1 + 81) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1003B3BDC, v4, v3);
}

uint64_t sub_1003B3BDC()
{
  v1 = *(v0 + 81);

  if (v1 == 1)
  {
    v2 = sub_100511674();
  }

  else
  {
    v2 = sub_100511A04();
  }

  v3 = v2;
  v4 = UIView.viewControllerForPresenting.getter();
  if (v4)
  {
    v5 = v4;
    [v4 presentViewController:v3 animated:1 completion:0];

    v3 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003B3DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_1000F24EC(&qword_100AD5170);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1003B3E98, v6, v5);
}

uint64_t sub_1003B3E98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1003B3F90;

    return sub_100331B54();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003B3F90(char a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_1003B40B8, v4, v3);
}

uint64_t sub_1003B40B8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 88);
  if (v1 == 1)
  {
    v3 = *(v0 + 48);
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_1003E9BBC(0, 0, v3, &unk_100952E38, v7);
  }

  else
  {
    sub_10033243C();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1003B4230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1003B42C8, v6, v5);
}

uint64_t sub_1003B42C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR____TtC7Journal18MediaAssetGridView_playbackButton);
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1003B43C8;

    return sub_100331B54();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}