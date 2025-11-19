void sub_100A59198(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v105 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v93 - v5;
  v103 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v103);
  v102 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 interactiveCanvasController];
  v11 = [v10 commandController];

  if (!v11)
  {
    v69 = objc_opt_self();
    v70 = [v69 _atomicIncrementAssertCount];
    v115 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v115);
    StaticString.description.getter();
    v71 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    v73 = [v72 lastPathComponent];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v77 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v70;
    v79 = sub_1005CF000();
    *(inited + 96) = v79;
    v80 = sub_1005CF04C();
    *(inited + 104) = v80;
    *(inited + 72) = v71;
    *(inited + 136) = &type metadata for String;
    v81 = sub_1000053B0();
    *(inited + 112) = v74;
    *(inited + 120) = v76;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v81;
    *(inited + 152) = 260;
    v82 = v115;
    *(inited + 216) = v79;
    *(inited + 224) = v80;
    *(inited + 192) = v82;
    v83 = v71;
    v84 = v82;
    v85 = static os_log_type_t.error.getter();
    sub_100005404(v77, &_mh_execute_header, v85, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v86 = static os_log_type_t.error.getter();
    sub_100005404(v77, &_mh_execute_header, v86, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v87 = swift_allocObject();
    v87[2] = 8;
    v87[3] = 0;
    v87[4] = 0;
    v87[5] = 0;
    v88 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v89 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v91 = String._bridgeToObjectiveC()();

    [v69 handleFailureInFunction:v89 file:v90 lineNumber:260 isFatal:0 format:v91 args:v88];

    v92 = v91;
    goto LABEL_40;
  }

  sub_10088E3FC(0);
  v12 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v94 = v11;
  if (v13 >> 62)
  {
LABEL_38:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_39:

    v92 = v94;
    sub_10088E600(0);
LABEL_40:

    return;
  }

LABEL_4:
  v15 = 0;
  v110 = v13 & 0xFFFFFFFFFFFFFF8;
  v111 = v13 & 0xC000000000000001;
  v96 = v3 & 1;
  v99 = (v4 + 8);
  v100 = (v4 + 16);
  v98 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v95 = xmmword_10146CA70;
  v97 = xmmword_10146C6B0;
  v108 = v14;
  v109 = v13;
  while (1)
  {
    if (v111)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v110 + 16))
      {
        goto LABEL_36;
      }

      v20 = *(v13 + 8 * v15 + 32);
    }

    v13 = v20;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    KeyPath = swift_getKeyPath();
    v21 = sub_10094ABE4();
    v113 = v15 + 1;
    if (!v21)
    {
      v106 = v15;
      v112 = objc_opt_self();
      v49 = [v112 _atomicIncrementAssertCount];
      v115 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v115);
      StaticString.description.getter();
      v107 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v56 = swift_initStackObject();
      *(v56 + 16) = v95;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v49;
      v57 = sub_1005CF000();
      *(v56 + 96) = v57;
      v58 = sub_1005CF04C();
      *(v56 + 104) = v58;
      v59 = v107;
      *(v56 + 72) = v107;
      *(v56 + 136) = &type metadata for String;
      v60 = sub_1000053B0();
      *(v56 + 112) = v52;
      *(v56 + 120) = v54;
      *(v56 + 176) = &type metadata for UInt;
      *(v56 + 144) = v60;
      *(v56 + 152) = 3002;
      v61 = v115;
      *(v56 + 216) = v57;
      *(v56 + 224) = v58;
      *(v56 + 184) = &protocol witness table for UInt;
      *(v56 + 192) = v61;
      v62 = v59;
      v63 = v61;
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v56);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v65 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v66 = swift_allocObject();
      v66[2] = 8;
      v66[3] = 0;
      v66[4] = 0;
      v66[5] = 0;
      v67 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v68 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v19.super.isa = String._bridgeToObjectiveC()();

      [v112 handleFailureInFunction:v68 file:v16 lineNumber:3002 isFatal:0 format:v19.super.isa args:v67];

      v13 = v68;
      v15 = v106;
      goto LABEL_8;
    }

    v22 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v23 = *(*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v23)
    {
      break;
    }

    v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
      goto LABEL_42;
    }

    v112 = v21;
    v25 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v26 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v27 = v102;
    (*(*v24 + 896))();
    v28 = v101;
    sub_1005E0A78(v27 + *(v103 + 20), v101);
    v3 = v23;
    sub_1005E0ADC(v27, type metadata accessor for CRLWPShapeItemCRDTData);
    v29 = v104;
    v30 = v105;
    (*v100)(v104, v28, v105);
    sub_1005E0ADC(v28, type metadata accessor for CRLWPStorageCRDTData);
    v31 = CRAttributedString.attributedString.getter();
    (*v99)(v29, v30);
    v4 = [v31 length];

    if (v4 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v26, v25))
    {
      goto LABEL_37;
    }

    if (v26 == v25)
    {
      v32 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v33 = *(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
      if (v33 || (v34 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v35 = *(v13 + v32), *(v13 + v32) = v34, v35, (v33 = *(v13 + v32)) != 0))
      {
        v36 = v33 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        *v36 = v96;
        *(v36 + 8) = 0;
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v37 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v38 = swift_initStackObject();
      *(v38 + 16) = v97;
      v115 = 0xD000000000000021;
      v116 = v98;
      AnyHashable.init<A>(_:)();
      *(v38 + 96) = sub_1005B981C(&qword_101A0D8C8);
      *(v38 + 72) = KeyPath;

      sub_100078EA4(v38);
      swift_setDeallocating();
      sub_10000CAAC(v38 + 32, &unk_1019FB8B0);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v37 object:v13 userInfo:v19.super.isa];
    }

    else
    {
LABEL_25:
      v39 = [*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
      v107 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v39 forwardSelectionPath:v39 reverseSelectionPath:v39];
      v40 = *(v13 + v22);
      v41 = KeyPath;

      v42 = v40;
      v43 = sub_1012ED6BC(v42, v25, v26, v41, v96);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v45 = Strong;
        v46 = [Strong commandController];

        if (v46)
        {
          v47 = v107;
          v48 = v107;
          sub_100888700(v43, 0, v47, 4, 0);
        }
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v17 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v18 = swift_initStackObject();
      *(v18 + 16) = v97;
      v115 = 0xD000000000000021;
      v116 = v98;
      AnyHashable.init<A>(_:)();
      *(v18 + 96) = sub_1005B981C(&qword_101A0D8C8);
      *(v18 + 72) = KeyPath;

      sub_100078EA4(v18);
      swift_setDeallocating();
      sub_10000CAAC(v18 + 32, &unk_1019FB8B0);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v17 object:v13 userInfo:v19.super.isa];

      v13 = v43;
    }

LABEL_8:

    ++v15;
    v13 = v109;
    v3 = "setAttributeValue(_:value:)";
    v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v113 == v108)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100A5A110(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v108 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v108 - 8);
  __chkstk_darwin(v108);
  v107 = &v96 - v5;
  v106 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v106);
  v105 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v104 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 interactiveCanvasController];
  v11 = [v10 commandController];

  if (!v11)
  {
    v72 = objc_opt_self();
    v73 = [v72 _atomicIncrementAssertCount];
    v118 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v118);
    StaticString.description.getter();
    v74 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v75 = String._bridgeToObjectiveC()();

    v76 = [v75 lastPathComponent];

    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v80 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v73;
    v82 = sub_1005CF000();
    *(inited + 96) = v82;
    v83 = sub_1005CF04C();
    *(inited + 104) = v83;
    *(inited + 72) = v74;
    *(inited + 136) = &type metadata for String;
    v84 = sub_1000053B0();
    *(inited + 112) = v77;
    *(inited + 120) = v79;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v84;
    *(inited + 152) = 260;
    v85 = v118;
    *(inited + 216) = v82;
    *(inited + 224) = v83;
    *(inited + 192) = v85;
    v86 = v74;
    v87 = v85;
    v88 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v88, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v89 = static os_log_type_t.error.getter();
    sub_100005404(v80, &_mh_execute_header, v89, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v90 = swift_allocObject();
    v90[2] = 8;
    v90[3] = 0;
    v90[4] = 0;
    v90[5] = 0;
    v91 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v94 = String._bridgeToObjectiveC()();

    [v72 handleFailureInFunction:v92 file:v93 lineNumber:260 isFatal:0 format:v94 args:v91];

    v95 = v94;
    goto LABEL_44;
  }

  sub_10088E3FC(0);
  v12 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v97 = v11;
  if (v13 >> 62)
  {
LABEL_42:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_43:

    v95 = v97;
    sub_10088E600(0);
LABEL_44:

    return;
  }

LABEL_4:
  v15 = 0;
  v113 = v13 & 0xFFFFFFFFFFFFFF8;
  v114 = v13 & 0xC000000000000001;
  v99 = v3 & 1;
  v102 = (v4 + 8);
  v103 = (v4 + 16);
  v101 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
  v98 = xmmword_10146CA70;
  v100 = xmmword_10146C6B0;
  v111 = v14;
  v112 = v13;
  while (1)
  {
    if (v114)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *(v113 + 16))
      {
        goto LABEL_40;
      }

      v20 = *(v13 + 8 * v15 + 32);
    }

    v13 = v20;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    KeyPath = swift_getKeyPath();
    v21 = sub_10094ABE4();
    v116 = v15 + 1;
    if (!v21)
    {
      v109 = v15;
      v115 = objc_opt_self();
      v52 = [v115 _atomicIncrementAssertCount];
      v118 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v118);
      StaticString.description.getter();
      v110 = String._bridgeToObjectiveC()();

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
      *(v59 + 16) = v98;
      *(v59 + 56) = &type metadata for Int32;
      *(v59 + 64) = &protocol witness table for Int32;
      *(v59 + 32) = v52;
      v60 = sub_1005CF000();
      *(v59 + 96) = v60;
      v61 = sub_1005CF04C();
      *(v59 + 104) = v61;
      v62 = v110;
      *(v59 + 72) = v110;
      *(v59 + 136) = &type metadata for String;
      v63 = sub_1000053B0();
      *(v59 + 112) = v55;
      *(v59 + 120) = v57;
      *(v59 + 176) = &type metadata for UInt;
      *(v59 + 144) = v63;
      *(v59 + 152) = 3002;
      v64 = v118;
      *(v59 + 216) = v60;
      *(v59 + 224) = v61;
      *(v59 + 184) = &protocol witness table for UInt;
      *(v59 + 192) = v64;
      v65 = v62;
      v66 = v64;
      v67 = static os_log_type_t.error.getter();
      sub_100005404(v58, &_mh_execute_header, v67, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v59);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v68 = static os_log_type_t.error.getter();
      sub_100005404(v58, &_mh_execute_header, v68, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v69 = swift_allocObject();
      v69[2] = 8;
      v69[3] = 0;
      v69[4] = 0;
      v69[5] = 0;
      v70 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v71 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v19.super.isa = String._bridgeToObjectiveC()();

      [v115 handleFailureInFunction:v71 file:v16 lineNumber:3002 isFatal:0 format:v19.super.isa args:v70];

      v13 = v71;
      v15 = v109;
      goto LABEL_8;
    }

    v22 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v23 = *(*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v23)
    {
      break;
    }

    v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v24)
    {
      goto LABEL_46;
    }

    v115 = v21;
    v25 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v26 = *&v21[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v27 = v105;
    (*(*v24 + 896))();
    v28 = v104;
    sub_1005E0A78(v27 + *(v106 + 20), v104);
    v3 = v23;
    sub_1005E0ADC(v27, type metadata accessor for CRLWPShapeItemCRDTData);
    v29 = v107;
    v30 = v108;
    (*v103)(v107, v28, v108);
    sub_1005E0ADC(v28, type metadata accessor for CRLWPStorageCRDTData);
    v31 = CRAttributedString.attributedString.getter();
    (*v102)(v29, v30);
    v4 = [v31 length];

    if (v4 < 1)
    {
      goto LABEL_29;
    }

    if (__OFSUB__(v26, v25))
    {
      goto LABEL_41;
    }

    if (v26 == v25)
    {
      v32 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v33 = *(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
      if (v33 || (v34 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v35 = *(v13 + v32), *(v13 + v32) = v34, v35, (v33 = *(v13 + v32)) != 0))
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v37 = v99;
        if (v36)
        {
          v37 = 0;
        }

        v38 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline;
        if ((v36 & 1) == 0)
        {
          v38 = &OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough;
        }

        v39 = v33 + *v38;
        *v39 = v37;
        *(v39 + 8) = v36 & 1;
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v40 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v41 = swift_initStackObject();
      *(v41 + 16) = v100;
      v118 = 0xD000000000000021;
      v119 = v101;
      AnyHashable.init<A>(_:)();
      *(v41 + 96) = sub_1005B981C(&qword_101A0D8D0);
      *(v41 + 72) = KeyPath;

      sub_100078EA4(v41);
      swift_setDeallocating();
      sub_10000CAAC(v41 + 32, &unk_1019FB8B0);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v40 object:v13 userInfo:v19.super.isa];
    }

    else
    {
LABEL_29:
      v42 = [*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
      v110 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v42 forwardSelectionPath:v42 reverseSelectionPath:v42];
      v43 = *(v13 + v22);
      v44 = KeyPath;

      v45 = v43;
      v46 = sub_1012ED8D0(v45, v25, v26, v44, v99);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v48 = Strong;
        v49 = [Strong commandController];

        if (v49)
        {
          v50 = v110;
          v51 = v110;
          sub_100888700(v46, 0, v50, 4, 0);
        }
      }

      v16 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v17 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v18 = swift_initStackObject();
      *(v18 + 16) = v100;
      v118 = 0xD000000000000021;
      v119 = v101;
      AnyHashable.init<A>(_:)();
      *(v18 + 96) = sub_1005B981C(&qword_101A0D8D0);
      *(v18 + 72) = KeyPath;

      sub_100078EA4(v18);
      swift_setDeallocating();
      sub_10000CAAC(v18 + 32, &unk_1019FB8B0);
      v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 postNotificationName:v17 object:v13 userInfo:v19.super.isa];

      v13 = v46;
    }

LABEL_8:

    ++v15;
    v13 = v112;
    v3 = "setAttributeValue(_:value:)";
    v4 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift";
    if (v116 == v111)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_100A5B0DC@<X0>(_WORD *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v4 = v3;

  *a1 = v4;
  return result;
}

void sub_100A5B12C(char a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  v90 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v90);
  v89 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v88 = (&v82 - v7);
  v8 = [v1 interactiveCanvasController];
  v9 = [v8 commandController];

  if (v9)
  {
    sub_10088E3FC(0);
    v10 = [v2 wpEditors];
    type metadata accessor for CRLWPEditor();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = v11;
    v83 = v9;
    if (v11 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v12 = v81)
    {
      v14 = 0;
      v93 = v12 & 0xFFFFFFFFFFFFFF8;
      v94 = v12 & 0xC000000000000001;
      v86 = 0x8000000101562810;
      v87 = v3;
      v84 = xmmword_10146CA70;
      v85 = xmmword_10146C6B0;
      v91 = i;
      v92 = v12;
      while (1)
      {
        if (v94)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v93 + 16))
          {
            goto LABEL_25;
          }

          v12 = *(v12 + 8 * v14 + 32);
        }

        v3 = v12;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v104 = v14 + 1;
        KeyPath = swift_getKeyPath();
        v20 = sub_10094ABE4();
        v102 = KeyPath;
        v103 = v3;
        if (v20)
        {
          v100 = v14;
          v99 = v20;
          v21 = *&v20[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v96 = *&v20[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v97 = v21;
          v22 = [*&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
          v23 = objc_allocWithZone(CRLCommandSelectionBehavior);
          v98 = v22;
          v101 = [v23 initWithCommitSelectionPath:v22 forwardSelectionPath:v22 reverseSelectionPath:v22];
          v24 = *&v3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape];
          v25 = v88;
          *v88 = _swiftEmptySetSingleton;
          sub_10068D144();
          v95 = v24;
          v26 = CRAttributedString.Attributes.init()();
          __chkstk_darwin(v26);
          *(&v82 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v82 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
          v27 = sub_100962180();
          *(&v82 - 2) = v27;
          *(&v82 - 1) = KeyPath;
          v28 = swift_getKeyPath();

          sub_100E6DE34(&v105, 0x6C7974537473696CLL, 0xE900000000000065);

          __chkstk_darwin(v29);
          *(&v82 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v82 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
          *(&v82 - 2) = v27;
          *(&v82 - 1) = v28;
          swift_getKeyPath();
          v105 = v87;
          LOBYTE(v106) = 0;
          sub_1005B981C(qword_101A0CF60);
          sub_1009621D4();
          CRAttributedString.Attributes.subscript.setter();
          v30 = v89;
          sub_10000BE14(v25, v89, &qword_101A06188);
          v31 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
          v32 = v95;
          v33 = sub_100961C20(v95, v97, v96, v30);

          v3 = v103;
          sub_10000CAAC(v25, &qword_101A06188);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            v36 = [Strong commandController];

            if (v36)
            {
              v37 = v101;
              v38 = v101;
              sub_100888700(v33, 0, v37, 4, 0);
            }
          }

          v15 = [objc_opt_self() defaultCenter];
          v14 = v100;
          if (qword_1019F2368 != -1)
          {
            swift_once();
          }

          v16 = qword_101AD80C8;
          sub_1005B981C(&qword_1019FB8A0);
          inited = swift_initStackObject();
          *(inited + 16) = v85;
          v105 = 0xD000000000000021;
          v106 = v86;
          AnyHashable.init<A>(_:)();
          *(inited + 96) = sub_1005B981C(&qword_101A0D890);
          *(inited + 72) = v102;

          sub_100078EA4(inited);
          swift_setDeallocating();
          sub_10000CAAC(inited + 32, &unk_1019FB8B0);
          v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v15 postNotificationName:v16 object:v3 userInfo:v18.super.isa];
        }

        else
        {
          v101 = objc_opt_self();
          v39 = [v101 _atomicIncrementAssertCount];
          v105 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v105);
          StaticString.description.getter();
          v40 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v41 = String._bridgeToObjectiveC()();

          v42 = [v41 lastPathComponent];

          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v46 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          v47 = swift_initStackObject();
          *(v47 + 16) = v84;
          *(v47 + 56) = &type metadata for Int32;
          *(v47 + 64) = &protocol witness table for Int32;
          *(v47 + 32) = v39;
          v48 = sub_1005CF000();
          *(v47 + 96) = v48;
          v49 = sub_1005CF04C();
          *(v47 + 104) = v49;
          *(v47 + 72) = v40;
          *(v47 + 136) = &type metadata for String;
          v50 = sub_1000053B0();
          *(v47 + 112) = v43;
          *(v47 + 120) = v45;
          *(v47 + 176) = &type metadata for UInt;
          *(v47 + 144) = v50;
          *(v47 + 152) = 3011;
          v51 = v105;
          *(v47 + 216) = v48;
          *(v47 + 224) = v49;
          *(v47 + 184) = &protocol witness table for UInt;
          *(v47 + 192) = v51;
          v3 = v40;
          v52 = v51;
          v53 = static os_log_type_t.error.getter();
          sub_100005404(v46, &_mh_execute_header, v53, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v54 = static os_log_type_t.error.getter();
          sub_100005404(v46, &_mh_execute_header, v54, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v55 = swift_allocObject();
          v55[2] = 8;
          v55[3] = 0;
          v55[4] = 0;
          v55[5] = 0;
          v56 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v33 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v15 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          LOBYTE(v3) = v57;
          v18.super.isa = String._bridgeToObjectiveC()();

          [v101 handleFailureInFunction:v33 file:v15 lineNumber:3011 isFatal:0 format:v18.super.isa args:v56];
        }

        ++v14;
        v12 = v92;
        if (v104 == v91)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v81 = v12;
      i = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_27:

    v80 = v83;
    sub_10088E600(0);
  }

  else
  {
    v58 = objc_opt_self();
    v59 = [v58 _atomicIncrementAssertCount];
    v105 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v105);
    StaticString.description.getter();
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v61 = String._bridgeToObjectiveC()();

    v62 = [v61 lastPathComponent];

    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_10146CA70;
    *(v67 + 56) = &type metadata for Int32;
    *(v67 + 64) = &protocol witness table for Int32;
    *(v67 + 32) = v59;
    v68 = sub_1005CF000();
    *(v67 + 96) = v68;
    v69 = sub_1005CF04C();
    *(v67 + 104) = v69;
    *(v67 + 72) = v60;
    *(v67 + 136) = &type metadata for String;
    v70 = sub_1000053B0();
    *(v67 + 112) = v63;
    *(v67 + 120) = v65;
    *(v67 + 176) = &type metadata for UInt;
    *(v67 + 184) = &protocol witness table for UInt;
    *(v67 + 144) = v70;
    *(v67 + 152) = 260;
    v71 = v105;
    *(v67 + 216) = v68;
    *(v67 + 224) = v69;
    *(v67 + 192) = v71;
    v72 = v60;
    v73 = v71;
    v74 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v74, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v67);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v75 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v75, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v76 = swift_allocObject();
    v76[2] = 8;
    v76[3] = 0;
    v76[4] = 0;
    v76[5] = 0;
    v77 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v79 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v80 = String._bridgeToObjectiveC()();

    [v58 handleFailureInFunction:v78 file:v79 lineNumber:260 isFatal:0 format:v80 args:v77];
  }
}

uint64_t sub_100A5BE90@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_10094C804(KeyPath);
  v4 = v3;
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  return result;
}

void sub_100A5BEE8(void *a1)
{
  v2 = v1;
  v106 = a1;
  v111 = sub_1005B981C(&unk_1019FFD10);
  v3 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v99 - v4;
  v109 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v109);
  v108 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v107 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v1 interactiveCanvasController];
  v10 = [v9 commandController];

  if (!v10)
  {
    v75 = objc_opt_self();
    v76 = [v75 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v123);
    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    v79 = [v78 lastPathComponent];

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v83 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v76;
    v85 = sub_1005CF000();
    *(inited + 96) = v85;
    v86 = sub_1005CF04C();
    *(inited + 104) = v86;
    *(inited + 72) = v77;
    *(inited + 136) = &type metadata for String;
    v87 = sub_1000053B0();
    *(inited + 112) = v80;
    *(inited + 120) = v82;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v87;
    *(inited + 152) = 260;
    v88 = v123;
    *(inited + 216) = v85;
    *(inited + 224) = v86;
    *(inited + 192) = v88;
    v89 = v77;
    v90 = v88;
    v91 = static os_log_type_t.error.getter();
    sub_100005404(v83, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v92 = static os_log_type_t.error.getter();
    sub_100005404(v83, &_mh_execute_header, v92, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v93 = swift_allocObject();
    v93[2] = 8;
    v93[3] = 0;
    v93[4] = 0;
    v93[5] = 0;
    v94 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v96 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v97 = String._bridgeToObjectiveC()();

    [v75 handleFailureInFunction:v95 file:v96 lineNumber:260 isFatal:0 format:v97 args:v94];

    v98 = v97;
    goto LABEL_40;
  }

  sub_10088E3FC(0);
  v11 = [v2 wpEditors];
  type metadata accessor for CRLWPEditor();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v100 = v10;
  if (v12 >> 62)
  {
LABEL_38:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_39;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_39:

    v98 = v100;
    sub_10088E600(0);
LABEL_40:

    return;
  }

LABEL_4:
  v14 = 0;
  v117 = v12 & 0xFFFFFFFFFFFFFF8;
  v118 = v12 & 0xC000000000000001;
  v104 = (v3 + 8);
  v105 = (v3 + 16);
  v103 = 0x8000000101562810;
  v3 = "setAttributeValue(_:value:)";
  v101 = xmmword_10146CA70;
  v102 = xmmword_10146C6B0;
  v115 = v13;
  v116 = v12;
  while (1)
  {
    if (v118)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v117 + 16))
      {
        goto LABEL_36;
      }

      v21 = *(v12 + 8 * v14 + 32);
    }

    v22 = v21;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    KeyPath = swift_getKeyPath();
    v23 = sub_10094ABE4();
    v120 = v14 + 1;
    v122 = v22;
    if (!v23)
    {
      v119 = objc_opt_self();
      LODWORD(v114) = [v119 _atomicIncrementAssertCount];
      v123 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v123);
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      v59 = [v58 lastPathComponent];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v63 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v64 = swift_initStackObject();
      *(v64 + 16) = v101;
      *(v64 + 56) = &type metadata for Int32;
      *(v64 + 64) = &protocol witness table for Int32;
      *(v64 + 32) = v114;
      v65 = sub_1005CF000();
      *(v64 + 96) = v65;
      v66 = sub_1005CF04C();
      *(v64 + 104) = v66;
      *(v64 + 72) = v57;
      *(v64 + 136) = &type metadata for String;
      v67 = sub_1000053B0();
      *(v64 + 112) = v60;
      *(v64 + 120) = v62;
      *(v64 + 176) = &type metadata for UInt;
      *(v64 + 144) = v67;
      *(v64 + 152) = 3002;
      v68 = v123;
      *(v64 + 216) = v65;
      *(v64 + 224) = v66;
      *(v64 + 184) = &protocol witness table for UInt;
      *(v64 + 192) = v68;
      v69 = v57;
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
      v20 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v18.super.isa = String._bridgeToObjectiveC()();

      [v119 handleFailureInFunction:v20 file:v15 lineNumber:3002 isFatal:0 format:v18.super.isa args:v74];

      v12 = v116;
      goto LABEL_8;
    }

    v24 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v25 = *(*&v22[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v25)
    {
      break;
    }

    v26 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v26)
    {
      goto LABEL_42;
    }

    v119 = v23;
    v12 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v27 = *&v23[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v28 = v108;
    (*(*v26 + 896))();
    v29 = v107;
    sub_1005E0A78(v28 + *(v109 + 20), v107);
    v30 = v25;
    sub_1005E0ADC(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v31 = v110;
    v32 = v111;
    (*v105)(v110, v29, v111);
    sub_1005E0ADC(v29, type metadata accessor for CRLWPStorageCRDTData);
    v33 = CRAttributedString.attributedString.getter();
    (*v104)(v31, v32);
    v34 = [v33 length];

    if (v34 < 1)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v27, v12))
    {
      goto LABEL_37;
    }

    if (v27 == v12)
    {
      v35 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle;
      v36 = v122;
      v37 = *&v122[OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle];
      if (v37 || (v38 = [objc_allocWithZone(type metadata accessor for CRLWPCharacterStyle()) init], v39 = *&v36[v35], *&v36[v35] = v38, v39, (v37 = *&v36[v35]) != 0))
      {
        v40 = v37;

        v41 = v106;
        v42 = v106;
        sub_1012E7B64(v41);
      }

      v15 = [objc_opt_self() defaultCenter];
      v12 = v116;
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v43 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v44 = swift_initStackObject();
      *(v44 + 16) = v102;
      v123 = 0xD000000000000021;
      v124 = v103;
      AnyHashable.init<A>(_:)();
      *(v44 + 96) = sub_1005B981C(&qword_101A0D8F8);
      *(v44 + 72) = KeyPath;

      sub_100078EA4(v44);
      swift_setDeallocating();
      sub_10000CAAC(v44 + 32, &unk_1019FB8B0);
      v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v20 = v122;
      [v15 postNotificationName:v43 object:v122 userInfo:v18.super.isa];
    }

    else
    {
LABEL_25:
      v114 = v14;
      v45 = v122;
      v46 = [*&v122[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionPath];
      v47 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v46 forwardSelectionPath:v46 reverseSelectionPath:v46];
      v48 = *&v45[v24];
      v49 = KeyPath;

      v50 = v106;
      v51 = v48;
      v52 = sub_1012EE5D0(v51, v12, v27, v49, v50);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        v55 = [Strong commandController];

        if (v55)
        {
          v56 = v47;
          sub_100888700(v52, 0, v47, 4, 0);
        }
      }

      v112 = v52;
      v113 = v47;
      v15 = [objc_opt_self() defaultCenter];
      if (qword_1019F2368 != -1)
      {
        swift_once();
      }

      v16 = qword_101AD80C8;
      sub_1005B981C(&qword_1019FB8A0);
      v17 = swift_initStackObject();
      *(v17 + 16) = v102;
      v123 = 0xD000000000000021;
      v124 = v103;
      AnyHashable.init<A>(_:)();
      *(v17 + 96) = sub_1005B981C(&qword_101A0D8F8);
      *(v17 + 72) = KeyPath;

      sub_100078EA4(v17);
      swift_setDeallocating();
      sub_10000CAAC(v17 + 32, &unk_1019FB8B0);
      v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v19 = v122;
      [v15 postNotificationName:v16 object:v122 userInfo:v18.super.isa];

      v20 = v112;
      v12 = v116;
      v14 = v114;
    }

LABEL_8:

    ++v14;
    v3 = "setAttributeValue(_:value:)";
    if (v120 == v115)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_100A5CE9C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  v6 = [v2 interactiveCanvasController];
  v37 = [v6 commandController];

  if (v37)
  {
    sub_10088E3FC(0);
    v7 = [v4 wpEditors];
    type metadata accessor for CRLWPEditor();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        a2(a1);

        ++v10;
        if (v13 == i)
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

    sub_10088E600(0);
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38);
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
    v24 = sub_1005CF000();
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
    *(inited + 152) = 260;
    v27 = v38;
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
    sub_100005404(v22, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:260 isFatal:0 format:v36 args:v33];
  }
}

uint64_t sub_100A5D390()
{
  swift_getKeyPath();
  sub_1012E8400();
  v1 = v0;

  return v1 & 0xFFFFFFFFFFLL;
}

uint64_t sub_100A5D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();

  return v5;
}

uint64_t sub_100A5D660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();

  return v5;
}

void *sub_100A5D724(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v26 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v26 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_1007245FC(v23, v24, v25, a1);
    type metadata accessor for CRLGroupItem();
    swift_dynamicCastClassUnconditional();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_1005B981C(&unk_1019FCB90);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000341AC(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1000341AC(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_1000341AC(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

id sub_100A5DBCC(uint64_t a1)
{
  sub_100601584(a1, v17);
  if (!v18)
  {
    sub_1005E09AC(v17);
    return 0;
  }

  v3 = type metadata accessor for CRLGroupSelection();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v16;
  if (v16[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer] != v1[OBJC_IVAR____TtC8Freeform17CRLGroupSelection_hasSelectedItemsInNonGroupContainer])
  {

    return 0;
  }

  sub_100601584(a1, v17);
  v6 = v18;
  if (v18)
  {
    v7 = sub_100020E58(v17, v18);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100005070(v17);
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v1;
  v15.super_class = v3;
  v13 = objc_msgSendSuper2(&v15, "isEqual:", v12);
  swift_unknownObjectRelease();

  return v13;
}

uint64_t sub_100A5DFC0()
{
  sub_1005CF000();
  v1 = NSString.init(stringLiteral:)();
  sub_1005B981C(&qword_1019F54E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146C4D0;
  *(v2 + 56) = type metadata accessor for CRLGroupSelection();
  *(v2 + 64) = sub_100A5E238(&qword_101A0E4C8, v3, type metadata accessor for CRLGroupSelection);
  *(v2 + 32) = v0;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform21CRLBoardItemSelection_boardItems];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = v0;

    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(v4 + 16);
    v7 = v0;
  }

  *(v2 + 96) = &type metadata for Int;
  *(v2 + 104) = &protocol witness table for Int;
  *(v2 + 72) = v6;
  type metadata accessor for CRLBoardItem(0);
  sub_100A5E238(&qword_1019FCB80, 255, type metadata accessor for CRLBoardItem);

  v8 = Set.description.getter();
  v10 = v9;

  *(v2 + 136) = &type metadata for String;
  *(v2 + 144) = sub_1000053B0();
  *(v2 + 112) = v8;
  *(v2 + 120) = v10;
  v11 = NSString.init(format:_:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

id sub_100A5E1E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLGroupSelection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100A5E238(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_100A5E320()
{
  [v0 currentPosition];
  v2 = v1;
  v4 = v3;
  sub_100A5E47C();
  v7 = sub_100120090(v2, v4, v5, v6);
  v8 = [objc_allocWithZone(CRLBezierPath) init];
  [v0 currentPosition];
  [v8 moveToPoint:?];
  sub_100A5E47C();
  v10 = v9;
  v12 = v11;
  [v0 currentPosition];
  v15 = sub_10011F31C(v13, v14, v10);
  v17 = sub_10011F2FC(v15, v16);
  v19 = sub_10011F340(v17, v18, v7 + 30.0);
  [v8 lineToPoint:{sub_10011F334(v10, v12, v19)}];
  sub_100A5E47C();
  v21 = v20;
  v23 = v22;
  [v0 currentPosition];
  v26 = sub_10011F31C(v24, v25, v21);
  v28 = sub_10011F2FC(v26, v27);
  v30 = sub_10011F340(v28, v29, v7 + 60.0);
  [v8 lineToPoint:{sub_10011F334(v21, v23, v30)}];
  return v8;
}

void sub_100A5E47C()
{
  v1 = [v0 rep];
  v2 = [v1 layout];

  v3 = [v2 pureGeometryInRoot];
  if (v3)
  {
    [v3 center];

    v4 = [v0 rep];
    v5 = [v4 layout];

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      if ([v6 maskEditMode] == 3)
      {
        v8 = [v7 imageGeometryInRoot];
        [v8 center];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100A5E5CC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  v30.receiver = v0;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "beginMovingKnob");
  v15 = [v0 knob];
  type metadata accessor for CRLConnectionLineKnob();
  v16 = swift_dynamicCastClass();
  if (v16 && *(v16 + OBJC_IVAR____TtC8Freeform21CRLConnectionLineKnob_knobState) == 2)
  {
    sub_100D6BD8C(3, 1);
  }

  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v17 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
  *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;

  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = [objc_opt_self() isVoiceOverOrSwitchControlEnabled] ^ 1;
  sub_100006370(0, &qword_1019F2D90);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v8 + 8);
  v24(v10, v7);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  aBlock[4] = sub_100A6833C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101892D48;
  v20 = _Block_copy(aBlock);
  v21 = v0;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_100A68208(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10000D494();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v3, v1);
  (*(v25 + 8))(v6, v26);
  v24(v13, v7);
}

uint64_t sub_100A5EA38(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = a1;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_10064191C(0, 0, v4, &unk_1014911C8, v8);
}

uint64_t sub_100A5EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v6;
  v4[14] = v5;

  return _swift_task_switch(sub_100A5EBFC, v6, v5);
}

uint64_t sub_100A5EBFC()
{
  if (*(*(v0 + 80) + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview) == 1)
  {
    swift_unknownObjectWeakInit();

    return _swift_task_switch(sub_100A5ECB4, 0, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_100A5ECB4()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100A5ED40, v2, v1);
}

uint64_t sub_100A5ED40()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_100A61504();

    sub_10000CAAC(v0 + 16, &unk_1019F4D00);
  }

  swift_unknownObjectWeakDestroy();
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return _swift_task_switch(sub_100A5EDFC, v3, v4);
}

uint64_t sub_100A5EDFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100A5EEA4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v68 - v7;

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  v72 = xmmword_101465920;
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v11 = v10;
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = sub_10121307C(v11);

  v13 = sub_100E93C20(v12);

  v14 = sub_100BC17C8(v13);

  if (!v14)
  {
    return 0;
  }

  v69 = v8;
  v70 = v4;
  v15 = [v1 rep];
  v16 = [v15 getConnectionLineLayoutToCopyStyleForNewConnectionLine];

  sub_100A62B68(v16);
  v17 = &v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v17 = v18;
  v17[8] = 0;
  sub_100A6664C();
  v20 = v19;
  v22 = v21;
  sub_100A5E47C();
  v25 = sub_100120090(v20, v22, v23, v24);
  v26 = v25 + v25 + 150.0;
  if (!v17[8])
  {
    v26 = *v17;
  }

  v27 = v26 - v25;
  sub_100A5E47C();
  v29 = v28;
  v31 = v30;
  sub_100A6664C();
  v34 = sub_10011F31C(v32, v33, v29);
  v36 = sub_10011F2FC(v34, v35);
  v38 = sub_10011F340(v36, v37, v27);
  v39 = sub_10011F334(v29, v31, v38);
  v41 = v40;
  sub_100A6664C();
  v44 = sub_10011FA08(v42, v43, v39);
  v46 = v45;
  v47 = [objc_allocWithZone(CRLBezierPath) init];
  sub_100A6664C();
  [v47 moveToPoint:?];
  [v47 lineToPoint:{v44, v46}];
  [v47 lineToPoint:{v39, v41}];
  v48 = sub_100A5F5E4(v47, v16);

  if (!v48)
  {
    v59 = 0;
LABEL_19:

    return v59;
  }

  v49 = *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
  *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = v48;
  v71 = v48;

  v50 = swift_initStackObject();
  *(v50 + 16) = v72;
  *(v50 + 32) = [v1 rep];
  sub_1005BFCB4(v50);
  v52 = v51;
  swift_setDeallocating();
  swift_arrayDestroy();
  v53 = sub_10121307C(v52);

  v54 = sub_100E93C20(v53);

  v55 = sub_100BC17C8(v54);

  if (!v55)
  {
    goto LABEL_15;
  }

  v56 = [v1 icc];
  v57 = [v56 editingCoordinator];

  if (!v57 || (v58 = *&v57[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory], v57, v59 = sub_10110D5CC(v55), v58, !v59))
  {

LABEL_15:
    v61 = v71;

    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v66 = static OS_os_log.crlError;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v66, &_mh_execute_header, v67, "Fail to create duplicated board items when long pressing the connector knob", 75, 2, _swiftEmptyArrayStorage);
    v59 = 0;
    goto LABEL_18;
  }

  v60 = v71;

  (*((swift_isaMask & *v59) + 0x210))();
  sub_100A60DF4(v59);

  v61 = v14;
  result = sub_1011255D0(v61);
  if ((result & 1) == 0)
  {
LABEL_11:

    v14 = v59;
    sub_100AEE290(v59);
LABEL_18:

    v14 = v16;
    v16 = v61;
    goto LABEL_19;
  }

  if (**&v60[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A0C0B8)
  {
    v63 = v69;
    (*((swift_isaMask & *v61) + 0x88))();
    v64 = type metadata accessor for UUID();
    (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
    swift_beginAccess();
    sub_10000BE14(v63, v70, &qword_1019F6990);
    type metadata accessor for CRLConnectionLineCRDTData(0);
    v65 = v61;

    sub_1005B981C(&qword_101A06128);
    CRRegister.wrappedValue.setter();
    sub_10000CAAC(v63, &qword_1019F6990);
    swift_endAccess();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_100A5F5E4(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_101A0B1C0);
  __chkstk_darwin(v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v36 - v17;
  if (a2)
  {
    v19 = [a2 connectionType];
    v20 = 18;
    if (v19 != 2)
    {
      v20 = 19;
    }

    if (v19 == 1)
    {
      v20 = 2;
    }
  }

  else
  {
    v20 = 19;
  }

  v40 = v20;
  result = [objc_allocWithZone(CRLConnectionLinePathSource) initWithBezierPath:a1];
  if (result)
  {
    v22 = result;
    v39 = a2;
    v23 = [v2 icc];
    v24 = [v23 editingCoordinator];

    if (v24)
    {
      v38 = *&v24[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      (*(v6 + 56))(v18, 1, 1, v5);
      sub_1006950BC(v41);
      v43[12] = v41[12];
      v43[13] = v41[13];
      v43[14] = v41[14];
      v44 = v42;
      v43[8] = v41[8];
      v43[9] = v41[9];
      v43[10] = v41[10];
      v43[11] = v41[11];
      v43[4] = v41[4];
      v43[5] = v41[5];
      v43[6] = v41[6];
      v43[7] = v41[7];
      v43[0] = v41[0];
      v43[1] = v41[1];
      v43[2] = v41[2];
      v43[3] = v41[3];
      v25 = sub_100818518(v40);
      v37 = v22;
      if (v25)
      {
        v26 = 0;
        v27 = v39;
      }

      else
      {
        sub_10000BE14(v18, v14, &qword_1019FC880);
        v28 = *(v6 + 48);
        if (v28(v14, 1, v5) == 1)
        {
          AttributedString.init(stringLiteral:)();
          v29 = v28(v14, 1, v5);
          v27 = v39;
          if (v29 != 1)
          {
            sub_10000CAAC(v14, &qword_1019FC880);
          }
        }

        else
        {
          (*(v6 + 32))(v8, v14, v5);
          v27 = v39;
        }

        sub_100006370(0, &qword_1019F76F0);
        v26 = NSAttributedString.init(_:)();
      }

      v30 = type metadata accessor for CRLWPStorageCRDTData(0);
      (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
      v31 = v38;
      v32 = sub_1011133FC(v40, 0, v22, 1, 0, 0, 1, 0, 0, 0, 1, 2, 2, 1, 1, 1, 1, v26, v11, v43, 0, 0, 0, 0, 1u);
      v33 = v37;

      sub_10000CAAC(v11, &unk_101A0B1C0);
      sub_10000CAAC(v18, &qword_1019FC880);
      type metadata accessor for CRLConnectionLineItem();
      v34 = swift_dynamicCastClass();
      if (v34)
      {
        v35 = v34;
        sub_100AEFA30(v27);

        return v35;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100A5FAF0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v2 - 8);
  v4 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v109 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v0 icc];
  v14 = [v13 board];

  if (!v14)
  {
    return 0;
  }

  v119 = v7;
  v120 = v9;
  v15 = [v1 icc];
  v16 = [v15 editingCoordinator];

  if (!v16)
  {

    return 0;
  }

  v17 = *&v16[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  v18 = sub_100A5EEA4();
  if (!v18)
  {

    return 0;
  }

  v112 = v4;
  v117 = v19;
  v118 = v17;
  v115 = v14;
  v116 = v18;

  v114 = sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v22 = v21;
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = sub_10121307C(v22);
  v113 = 0;

  v24 = sub_100E93C20(v23);

  v25 = sub_100BC17C8(v24);

  if (!v25)
  {

    return v25;
  }

  v26 = [v1 icc];
  v27 = [v26 editingCoordinator];

  if (!v27)
  {

    v97 = v115;
    goto LABEL_41;
  }

  v28 = *&v27[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

  v29 = sub_10110D5CC(v25);
  if (!v29)
  {

    return 0;
  }

  v30 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{1.0, 1.0}];
  v31 = type metadata accessor for CRLGroupItem();
  v32 = *&v118[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  v33 = *(v32 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  (*(**(*(v32 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  v34 = objc_allocWithZone(v31);
  v35 = v33;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v25 = [v34 initWithStore:v35 parentContainerUUID:isa geometry:v30];

  v37 = v120;
  v120[1](v12, v8);
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_10146E8A0;
  *(v38 + 32) = v29;
  v39 = v116;
  v40 = v117;
  *(v38 + 40) = v116;
  *(v38 + 48) = v40;
  v111 = v29;
  v110 = v39;
  v114 = v40;
  v41 = v113;
  sub_10097A374(v38);
  if (!v41)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    v103 = v111;
    result = sub_1011255D0(v103);
    if (result)
    {
      if (**&v114[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] != &off_101A0C0B8)
      {
        __break(1u);
        return result;
      }

      v104 = v119;
      (*((swift_isaMask & *v103) + 0x88))();
      (v37[7])(v104, 0, 1, v8);
      swift_beginAccess();
      sub_10000BE14(v104, v112, &qword_1019F6990);
      type metadata accessor for CRLConnectionLineCRDTData(0);
      v120 = v103;

      sub_1005B981C(&qword_101A06128);
      CRRegister.wrappedValue.setter();
      sub_10000CAAC(v104, &qword_1019F6990);
      swift_endAccess();
    }

    v105 = swift_allocObject();
    v106 = v114;
    *(v105 + 16) = v114;
    *(v105 + 24) = v1;
    v107 = v106;
    v108 = v1;
    sub_1009B27C4(sub_100A68250, v105);

    return v25;
  }

  v113 = v41;
  swift_setDeallocating();
  swift_arrayDestroy();
  v119 = sub_1005B981C(&qword_1019F54E0);
  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_10146D2A0;
  v43 = v111;
  v44 = [v43 description];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  v112 = v43;

  *(v42 + 56) = &type metadata for String;
  v48 = sub_1000053B0();
  *(v42 + 32) = v45;
  v120 = (v42 + 32);
  *(v42 + 64) = v48;
  *(v42 + 40) = v47;
  v49 = v110;
  v50 = [v49 description];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  v111 = v49;

  *(v42 + 96) = &type metadata for String;
  *(v42 + 104) = v48;
  *(v42 + 72) = v51;
  *(v42 + 80) = v53;
  v54 = v114;
  v55 = [v54 description];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;
  v114 = v54;

  *(v42 + 136) = &type metadata for String;
  *(v42 + 144) = v48;
  *(v42 + 112) = v56;
  *(v42 + 120) = v58;
  v63 = v25;
  v59 = [v63 description];
  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  v110 = v63;

  *(v42 + 176) = &type metadata for String;
  *(v42 + 184) = v48;
  v116 = v48;
  *(v42 + 152) = v60;
  *(v42 + 160) = v62;
  v109 = objc_opt_self();
  LODWORD(v63) = [v109 _atomicIncrementAssertCount];
  v121 = [objc_allocWithZone(NSString) init];
  sub_100604538(v42, &v121);
  StaticString.description.getter();
  v117 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v64 = String._bridgeToObjectiveC()();

  v65 = [v64 lastPathComponent];

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_52;
  }

LABEL_9:
  v69 = static OS_os_log.crlAssert;
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_10146CA70;
  *(v70 + 56) = &type metadata for Int32;
  *(v70 + 64) = &protocol witness table for Int32;
  *(v70 + 32) = v63;
  v71 = sub_100006370(0, &qword_1019F4D30);
  *(v70 + 96) = v71;
  v72 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  v73 = v117;
  *(v70 + 72) = v117;
  v74 = v116;
  *(v70 + 136) = &type metadata for String;
  *(v70 + 144) = v74;
  *(v70 + 104) = v72;
  *(v70 + 112) = v66;
  *(v70 + 120) = v68;
  *(v70 + 176) = &type metadata for UInt;
  *(v70 + 184) = &protocol witness table for UInt;
  *(v70 + 152) = 221;
  v75 = v121;
  *(v70 + 216) = v71;
  *(v70 + 224) = v72;
  *(v70 + 192) = v75;
  v76 = v73;
  v77 = v75;
  v78 = static os_log_type_t.error.getter();
  sub_100005404(v69, &_mh_execute_header, v78, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
  swift_setDeallocating();
  v117 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v79 = static os_log_type_t.error.getter();
  sub_100005404(v69, &_mh_execute_header, v79, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2, v42);

  type metadata accessor for __VaListBuilder();
  v80 = swift_allocObject();
  v80[2] = 8;
  v80[3] = 0;
  v66 = v80 + 3;
  v80[4] = 0;
  v80[5] = 0;
  v119 = v42;
  v81 = *(v42 + 16);
  if (v81)
  {
    v82 = 0;
    v68 = 40;
    while (1)
    {
      v83 = &v120[5 * v82];
      v63 = *(v83 + 3);
      sub_100020E58(v83, v63);
      v84 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v85 = *v66;
      v86 = *(v84 + 16);
      v87 = __OFADD__(*v66, v86);
      v88 = *v66 + v86;
      if (v87)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_9;
      }

      v89 = v80[4];
      if (v89 >= v88)
      {
        goto LABEL_26;
      }

      if (v89 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v63 = v80[5];
      if (2 * v89 > v88)
      {
        v88 = 2 * v89;
      }

      v80[4] = v88;
      if ((v88 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v42 = v84;
      v90 = swift_slowAlloc();
      v91 = v90;
      v80[5] = v90;
      if (v63)
      {
        break;
      }

      v84 = v42;
      if (!v91)
      {
LABEL_33:
        __break(1u);
        return 0;
      }

LABEL_27:
      v93 = *(v84 + 16);
      if (v93)
      {
        v94 = (v84 + 32);
        v95 = *v66;
        while (1)
        {
          v96 = *v94++;
          *&v91[8 * v95] = v96;
          v95 = *v66 + 1;
          if (__OFADD__(*v66, 1))
          {
            break;
          }

          *v66 = v95;
          if (!--v93)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_11:

      if (++v82 == v81)
      {
        goto LABEL_40;
      }
    }

    if (v90 != v63 || v90 >= &v63[8 * v85])
    {
      memmove(v90, v63, 8 * v85);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v84 = v42;
LABEL_26:
    v91 = v80[5];
    if (!v91)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

LABEL_40:
  v98 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v99 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v101 = String._bridgeToObjectiveC()();

  [v109 handleFailureInFunction:v99 file:v100 lineNumber:221 isFatal:0 format:v101 args:v98];

  swift_setDeallocating();
  swift_arrayDestroy();

  v97 = v118;
LABEL_41:

  return 0;
}

void sub_100A608CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v6 = **(a2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (swift_conformsToProtocol2())
    {
      v7 = v6[105];

      v6 = v7(v8);

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        [v9 copy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A10770);
        swift_dynamicCast();
        a = v40.a;
        v11 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [*&v40.a setHeadMagnet:v11];

        sub_1005B981C(&unk_1019F4D60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_101465920;
        *(inited + 32) = [a3 rep];
        sub_1005BFCB4(inited);
        v14 = v13;
        swift_setDeallocating();
        swift_arrayDestroy();
        v15 = sub_10121307C(v14);

        v16 = sub_100E93C20(v15);

        v17 = sub_100BC17C8(v16);

        if (v17)
        {
          v18 = [a3 icc];
          v19 = [v18 layoutForInfo:v17];

          if (v19)
          {
            v20 = [a3 knob];
            v21 = [v20 tag];

            if ((v21 - 2) >= 7)
            {
              v22 = 1;
            }

            else
            {
              v22 = qword_1014911D8[(v21 - 2)];
            }

            sub_100A67E3C(v22, v19);
            if ((v24 & 1) == 0)
            {
              v22 = 1;
            }

            [v19 getCardinalPositionFromType:v22];
            v26 = v25;
            v28 = v27;
            [v19 pureTransformInRoot];
            CGAffineTransformInvert(&v40, &v41);
            v41 = v40;
            v42.x = v26;
            v42.y = v28;
            v29 = CGPointApplyAffineTransform(v42, &v41);
            v30 = [v19 pureGeometry];
            if (!v30)
            {
              goto LABEL_24;
            }

            v31 = v30;
            [v30 size];

            v32 = sub_10011ECB4();
            v35 = sub_100121720(v29.x, v29.y, v32, v33, v34);
            v23 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v22 normalizedPosition:{v35, v36}];
            [*&a setTailMagnet:v23];

            goto LABEL_15;
          }
        }

        v23 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
        [*&a setTailMagnet:v23];
LABEL_15:

        v37 = *&a;
        if ((sub_1011255D0(v37) & 1) == 0)
        {

          goto LABEL_19;
        }

        v38 = **(a2 + v5);
        if (swift_conformsToProtocol2())
        {
          v39 = *(v38 + 848);

          v39(v37);

LABEL_19:

          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_100A60DF4(uint64_t a1)
{
  v2 = v1;

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v2 rep];
  sub_1005BFCB4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_10121307C(v6);

  v8 = sub_100E93C20(v7);

  v9 = sub_100BC17C8(v8);

  if (!v9)
  {
    return;
  }

  v10 = [v2 icc];
  v11 = [v10 layoutForInfo:v9];

  if (!v11)
  {

    return;
  }

  type metadata accessor for CRLWPShapeItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v15 = *(**(v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
    v16 = v9;

    v18 = v15(v17);

    v19 = [v18 widthValid];

    if (!v19 || (v20 = *(**(v13 + v14) + 296), v21 = , v22 = v20(v21), , v23 = [v22 heightValid], v22, (v23 & 1) == 0))
    {
      v30 = [v11 pureGeometryInRoot];
      if (v30)
      {
        v31 = v30;
        v32 = objc_allocWithZone(CRLCanvasInfoGeometry);
        v26 = v31;
        v33 = [v32 initWithLayoutGeometry:v26];
        [v33 mutableCopy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A0B030);
        swift_dynamicCast();
        v28 = v71;
        v29 = &selRef_canCreateItemsOfClass_;
        v34 = [v28 center];
        v36 = v35;
        v38 = v37;
        v39 = (*((swift_isaMask & *v16) + 0xE0))(v34);
        [v28 setWidthValid:{objc_msgSend(v39, "widthValid")}];
        [v28 setHeightValid:{objc_msgSend(v39, "heightValid")}];
        [v39 size];
        [v28 setSize:?];
        [v28 setCenter:{v36, v38}];

        goto LABEL_12;
      }

LABEL_22:
      __break(1u);
      return;
    }
  }

  v24 = [v11 pureGeometryInRoot];
  if (!v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = *((swift_isaMask & *v9) + 0xE0);
  v26 = v24;
  v27 = v25();
  [v27 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  swift_dynamicCast();
  v28 = v71;
  v29 = &selRef_canCreateItemsOfClass_;
LABEL_12:
  [v26 v29[218]];
  v41 = v40;
  v43 = v42;

  v44 = [v2 rep];
  v45 = [v44 layout];

  objc_opt_self();
  v46 = swift_dynamicCastObjCClass();
  if (v46)
  {
    v47 = v46;
    v48 = v70;
    if ([v46 maskEditMode] == 3)
    {
      v49 = [v47 imageGeometryInRoot];
      [v49 center];
      v41 = v50;
      v43 = v51;
    }
  }

  else
  {
    v48 = v70;
  }

  sub_100A6664C();
  v54 = sub_100120090(v52, v53, v41, v43);
  v55 = v54 + v54 + 150.0;
  if (v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters + 8])
  {
    v56 = v55;
  }

  else
  {
    v56 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  }

  sub_100A6664C();
  v59 = sub_10011F31C(v57, v58, v41);
  v61 = sub_10011F2FC(v59, v60);
  v63 = sub_10011F340(v61, v62, v56);
  v64 = sub_10011F334(v41, v43, v63);
  v66 = sub_10011F31C(v64, v65, v41);
  v68 = v67;
  [v28 center];
  [v28 setCenter:{sub_10011F334(v66, v68, v69)}];
  [v28 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_1019F5730);
  swift_dynamicCast();
  (*((swift_isaMask & *v48) + 0xE8))();
}

void sub_100A61504()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100A5FAF0();
  if (v6)
  {
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v204 = v5;
    v205 = v3;
    v206 = v2;
    v211 = v6;
    v13 = [v0 icc];
    v14 = [v13 freehandDrawingToolkit];

    [v14 endDrawingModeIfNeeded];
    v15 = [v1 icc];
    v209 = sub_1005B981C(&unk_1019F4D60);
    v16 = swift_allocObject();
    v208 = xmmword_101465920;
    *(v16 + 16) = xmmword_101465920;
    *(v16 + 32) = v211;
    v203 = type metadata accessor for CRLBoardItem(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setTemporaryAdditionalBoardItemsToDisplay:isa];

    v18 = [v1 icc];
    [v18 layoutIfNeededIncludingLayerTreeIfYouKnowWhatYouAreDoing];

    v19 = [v1 icc];
    v210 = [v19 layoutForInfo:v12];

    if (v210)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = v20;
        [v20 setTemporaryConnectedFromInfo:v10];
        [v21 setTemporaryConnectedToInfo:v11];
        v202 = v21;
        [v21 setClipHead:1];
        v22 = **(v12 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
        v200 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
        v201 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        if (swift_conformsToProtocol2())
        {
          v207 = v10;
          v23 = v22[105];

          v22 = v23(v24);

          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            [v25 copy];

            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100006370(0, &unk_101A10770);
            swift_dynamicCast();
            a = v212.a;
            v27 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
            [*&a setHeadMagnet:v27];

            inited = swift_initStackObject();
            *(inited + 16) = v208;
            *(inited + 32) = [v1 rep];
            sub_1005BFCB4(inited);
            v30 = v29;
            swift_setDeallocating();
            swift_arrayDestroy();
            v31 = sub_10121307C(v30);

            v32 = sub_100E93C20(v31);

            v33 = sub_100BC17C8(v32);

            if (v33)
            {
              v34 = [v1 icc];
              v35 = [v34 layoutForInfo:v33];

              if (v35)
              {
                v36 = [v1 knob];
                v37 = [v36 tag];

                if ((v37 - 2) >= 7)
                {
                  v38 = 1;
                }

                else
                {
                  v38 = qword_1014911D8[(v37 - 2)];
                }

                sub_100A67E3C(v38, v35);
                if (v41)
                {
                  v42 = v38;
                }

                else
                {
                  v42 = 1;
                }

                [v35 getCardinalPositionFromType:v42];
                v44 = v43;
                v46 = v45;
                [v35 pureTransformInRoot];
                CGAffineTransformInvert(&v212, v213);
                v213[0] = v212;
                v215.x = v44;
                v215.y = v46;
                v47 = CGPointApplyAffineTransform(v215, v213);
                v48 = [v35 pureGeometry];
                if (!v48)
                {
                  goto LABEL_94;
                }

                v49 = v48;
                [v48 size];

                v50 = sub_10011ECB4();
                v53 = sub_100121720(v47.x, v47.y, v50, v51, v52);
                v40 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v42 normalizedPosition:{v53, v54}];
                [*&a setTailMagnet:v40];

                goto LABEL_23;
              }
            }

            v40 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
            [*&a setTailMagnet:v40];
LABEL_23:

            v55 = v12;
            v56 = *&a;
            if ((sub_1011255D0(v56) & 1) == 0)
            {

              goto LABEL_27;
            }

            v57 = **&v201[v12];
            if (swift_conformsToProtocol2())
            {
              v58 = *(v57 + 848);

              v58(v56);

LABEL_27:

              type metadata accessor for CRLWPShapeItem();
              v59 = v207;
              v60 = swift_dynamicCastClass();
              if (!v60)
              {
LABEL_53:
                sub_100A64E50(v11, 0);
                type metadata accessor for CRLInsertionAnimationHelper();
                v111 = [v1 icc];
                v112 = v207;
                sub_100983FAC(v211, v207, v11, v202, v111);

                *(v1 + OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview) = 1;
                return;
              }

              v199 = 0;
              v200 = v56;
              v61 = v11;
              v201 = v55;
              v62 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v63 = *(**(v60 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
              v64 = v60;
              v65 = v59;

              v67 = v63(v66);

              v68 = [v67 widthValid];

              if (v68)
              {
                v69 = *(**&v64[v62] + 296);

                v71 = v69(v70);

                v72 = [v71 heightValid];

                if (v72)
                {
                  v56 = v200;
                  v55 = v201;
                  v11 = v61;
LABEL_52:

                  goto LABEL_53;
                }
              }

              v197 = v64;
              v11 = v61;
              v73 = swift_dynamicCastClass();
              if (!v73)
              {
                v56 = v200;
                v55 = v201;
                goto LABEL_52;
              }

              v74 = v73;
              v198 = v65;
              v75 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
              v76 = *(**(v73 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
              v77 = v11;

              v79 = v76(v78);

              v80 = [v79 widthValid];

              if (v80)
              {
                v81 = *(**&v75[v74] + 296);

                v83 = v81(v82);

                v84 = [v83 heightValid];

                if (v84)
                {
                  v85 = v77;
LABEL_41:
                  v56 = v200;
                  v89 = v198;
LABEL_51:

                  v65 = v85;
                  v55 = v201;
                  goto LABEL_52;
                }
              }

              v196 = v75;
              v86 = v74;
              v87 = v77;
              v88 = [v1 icc];
              v89 = [v88 board];

              if (!v89)
              {
                v85 = v77;
                goto LABEL_41;
              }

              v90 = [v1 icc];
              v91 = [v90 editingCoordinator];

              if (!v91)
              {
                v85 = v77;
                v56 = v200;
                v96 = v198;
LABEL_50:

                goto LABEL_51;
              }

              v92 = *&v91[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

              v85 = v87;
              sub_100A63174(v197, v86);
              if (v95)
              {
                v96 = v92;
LABEL_48:
                v110 = v85;
                v77 = v85;
LABEL_49:

                v89 = v110;
                v56 = v200;
                goto LABEL_50;
              }

              v97 = v93;
              v98 = v94;
              v195 = v85;
              v99 = sub_100A639FC(v86);
              if (!v99)
              {
                v96 = v92;
                v85 = v195;
                goto LABEL_48;
              }

              v194 = v92;
              v100 = v99;
              [v99 setCenter:{v97, v98}];
              v101 = v100;
              v102 = sub_1011255D4(v101);
              v192 = v89;
              v193 = v86;
              if (v102)
              {
                v103 = v86;
                v104 = v196;
                v105 = *(**&v196[v103] + 296);

                v107 = v105(v106);

                sub_100006370(0, &unk_1019F5730);
                v108 = static NSObject.== infix(_:_:)();

                if (v108)
                {

                  v109 = v193;
                }

                else
                {
                  v109 = v193;
                  v113 = *(**&v104[v193] + 304);

                  v113(v101);
                }
              }

              else
              {

                v109 = v86;
              }

              v196 = v101;
              v114 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithSize:{1.0, 1.0}];
              v115 = type metadata accessor for CRLGroupItem();
              v116 = *&v194[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
              v117 = *(v116 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
              v118 = v204;
              (*(**(*(v116 + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
              v119 = objc_allocWithZone(v115);
              v120 = v117;
              v121 = UUID._bridgeToObjectiveC()().super.isa;
              v122 = [v119 initWithStore:v120 parentContainerUUID:v121 geometry:v114];

              (*(v205 + 8))(v118, v206);
              v123 = swift_initStackObject();
              *(v123 + 16) = xmmword_10146E8A0;
              v124 = v198;
              *(v123 + 32) = v198;
              v125 = v201;
              *(v123 + 40) = v109;
              *(v123 + 48) = v125;
              v206 = v125;
              v126 = v124;
              v127 = v122;
              v128 = v199;
              sub_10097A374(v123);
              if (!v128)
              {
                v198 = v126;

                swift_setDeallocating();
                swift_arrayDestroy();
                v189 = [v1 icc];
                v190 = swift_allocObject();
                *(v190 + 16) = v208;
                *(v190 + 32) = v127;
                v211 = v127;
                v191 = Array._bridgeToObjectiveC()().super.isa;

                [v189 setTemporaryAdditionalBoardItemsToDisplay:v191];

                v85 = [v1 icc];
                [v85 layoutIfNeededIncludingLayerTreeIfYouKnowWhatYouAreDoing];
                v89 = v195;
                v77 = v196;
                v96 = v192;
                v110 = v194;
                goto LABEL_49;
              }

              v205 = v128;

              v129 = v195;
              swift_setDeallocating();
              swift_arrayDestroy();
              v209 = sub_1005B981C(&qword_1019F54E0);
              v130 = swift_initStackObject();
              *(v130 + 16) = xmmword_10146D2A0;
              v131 = v126;
              v132 = [v197 description];
              v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v135 = v134;
              v204 = v131;

              *(v130 + 56) = &type metadata for String;
              v136 = sub_1000053B0();
              *(v130 + 32) = v133;
              v211 = (v130 + 32);
              *(v130 + 64) = v136;
              *(v130 + 40) = v135;
              v137 = v129;
              v138 = [v193 description];
              v139 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v141 = v140;
              v203 = v137;

              *(v130 + 96) = &type metadata for String;
              *(v130 + 104) = v136;
              *(v130 + 72) = v139;
              *(v130 + 80) = v141;
              v142 = v206;
              v143 = [v142 description];
              v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v146 = v145;
              v206 = v142;

              *(v130 + 136) = &type metadata for String;
              *(v130 + 144) = v136;
              *(v130 + 112) = v144;
              *(v130 + 120) = v146;
              v147 = v127;
              v148 = v130;
              v149 = [v147 description];
              v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v152 = v151;
              v202 = v147;

              *(v130 + 176) = &type metadata for String;
              *(v130 + 184) = v136;
              *&v208 = v136;
              *(v130 + 152) = v150;
              *(v130 + 160) = v152;
              v201 = objc_opt_self();
              LODWORD(v152) = [v201 _atomicIncrementAssertCount];
              *&v213[0].a = [objc_allocWithZone(NSString) init];
              sub_100604538(v130, v213);
              StaticString.description.getter();
              v207 = String._bridgeToObjectiveC()();

              StaticString.description.getter();
              v153 = String._bridgeToObjectiveC()();

              v154 = [v153 lastPathComponent];

              v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v157 = v156;

              if (qword_1019F20A0 != -1)
              {
                goto LABEL_90;
              }

LABEL_59:
              v158 = static OS_os_log.crlAssert;
              v159 = swift_initStackObject();
              *(v159 + 16) = xmmword_10146CA70;
              *(v159 + 56) = &type metadata for Int32;
              *(v159 + 64) = &protocol witness table for Int32;
              *(v159 + 32) = v152;
              v160 = sub_100006370(0, &qword_1019F4D30);
              *(v159 + 96) = v160;
              v161 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
              v162 = v207;
              *(v159 + 72) = v207;
              v163 = v208;
              *(v159 + 136) = &type metadata for String;
              *(v159 + 144) = v163;
              *(v159 + 104) = v161;
              *(v159 + 112) = v155;
              *(v159 + 120) = v157;
              *(v159 + 176) = &type metadata for UInt;
              *(v159 + 184) = &protocol witness table for UInt;
              *(v159 + 152) = 367;
              v164 = v213[0].a;
              *(v159 + 216) = v160;
              *(v159 + 224) = v161;
              *(v159 + 192) = v164;
              v165 = v162;
              v166 = *&v164;
              v167 = static os_log_type_t.error.getter();
              sub_100005404(v158, &_mh_execute_header, v167, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v159);
              swift_setDeallocating();
              *&v208 = sub_1005B981C(&unk_1019F5670);
              swift_arrayDestroy();
              v168 = static os_log_type_t.error.getter();
              sub_100005404(v158, &_mh_execute_header, v168, "Unable to add duplicate items (%@ + %@) and connection line item %@ to group item %@", 84, 2, v148);

              type metadata accessor for __VaListBuilder();
              v169 = swift_allocObject();
              v169[2] = 8;
              v169[3] = 0;
              v155 = v169 + 3;
              v169[4] = 0;
              v169[5] = 0;
              v209 = v148;
              v152 = *(v148 + 16);
              if (!v152)
              {
LABEL_84:
                v185 = __VaListBuilder.va_list()();
                StaticString.description.getter();
                v186 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v187 = String._bridgeToObjectiveC()();

                StaticString.description.getter();
                v188 = String._bridgeToObjectiveC()();

                [v201 handleFailureInFunction:v186 file:v187 lineNumber:367 isFatal:0 format:v188 args:v185];

                swift_setDeallocating();
                swift_arrayDestroy();

                return;
              }

              v170 = 0;
              v148 = 40;
              while (1)
              {
                sub_100020E58(v211 + 5 * v170, *(v211 + 5 * v170 + 3));
                v171 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v157 = *v155;
                v172 = *(v171 + 16);
                v173 = __OFADD__(*v155, v172);
                v174 = *v155 + v172;
                if (v173)
                {
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
LABEL_89:
                  __break(1u);
LABEL_90:
                  swift_once();
                  goto LABEL_59;
                }

                v175 = v169[4];
                if (v175 >= v174)
                {
                  goto LABEL_76;
                }

                if (v175 + 0x4000000000000000 < 0)
                {
                  goto LABEL_88;
                }

                v176 = v169[5];
                if (2 * v175 > v174)
                {
                  v174 = 2 * v175;
                }

                v169[4] = v174;
                if ((v174 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_89;
                }

                v177 = v171;
                v178 = swift_slowAlloc();
                v179 = v178;
                v169[5] = v178;
                if (v176)
                {
                  break;
                }

                v171 = v177;
                if (!v179)
                {
LABEL_83:
                  __break(1u);
                  goto LABEL_84;
                }

LABEL_77:
                v181 = *(v171 + 16);
                if (v181)
                {
                  v182 = (v171 + 32);
                  v183 = *v155;
                  while (1)
                  {
                    v184 = *v182++;
                    *&v179[8 * v183] = v184;
                    v183 = *v155 + 1;
                    if (__OFADD__(*v155, 1))
                    {
                      break;
                    }

                    *v155 = v183;
                    if (!--v181)
                    {
                      goto LABEL_61;
                    }
                  }

                  __break(1u);
                  goto LABEL_87;
                }

LABEL_61:

                if (++v170 == v152)
                {
                  goto LABEL_84;
                }
              }

              if (v178 != v176 || v178 >= &v176[8 * v157])
              {
                memmove(v178, v176, 8 * v157);
              }

              __VaListBuilder.deallocStorage(wordCount:storage:)();
              v171 = v177;
LABEL_76:
              v179 = v169[5];
              if (!v179)
              {
                goto LABEL_83;
              }

              goto LABEL_77;
            }

            goto LABEL_93;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        return;
      }

      v39 = v210;
    }

    else
    {

      v39 = v211;
    }
  }
}

void sub_100A62B68(void *a1)
{
  sub_100A6664C();
  v4 = v3;
  v6 = v5;
  sub_100A5E47C();
  v9 = sub_100120090(v4, v6, v7, v8);
  v10 = [v1 rep];
  v11 = [v10 layout];

  v12 = [v11 stroke];
  if (v12)
  {
    [v12 width];
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v17 = v16;
  swift_setDeallocating();
  swift_arrayDestroy();
  v18 = sub_10121307C(v17);

  v19 = sub_100E93C20(v18);

  v20 = sub_100BC17C8(v19);

  if (v20)
  {
    type metadata accessor for CRLGroupItem();
    if (swift_dynamicCastClass())
    {
      type metadata accessor for CRLFreehandDrawingItem();
      if (!swift_dynamicCastClass())
      {
        v37 = [v1 rep];
        [v37 boundsForStandardKnobs];
        v39 = v38;
        v41 = v40;
        v43 = v42;
        v45 = v44;

        v77.origin.x = v39;
        v77.origin.y = v41;
        v77.size.width = v43;
        v77.size.height = v45;
        CGRectGetWidth(v77);
        v46 = [v1 rep];
        [v46 boundsForStandardKnobs];
        v48 = v47;
        v50 = v49;
        v52 = v51;
        v54 = v53;

        v78.origin.x = v48;
        v78.origin.y = v50;
        v78.size.width = v52;
        v78.size.height = v54;
        CGRectGetHeight(v78);

        return;
      }
    }
  }

  if (a1)
  {
    v21 = a1;
    v22 = [v1 icc];
    v23 = [v22 repForLayout:v21];

    if (v23)
    {
      v24 = [v21 connectedFrom];
      if (v24)
      {
        v25 = v24;
        v26 = [v21 connectedTo];
        if (v26)
        {
          v27 = v26;
          [v21 distanceBetweenConnectionPoints];
          v29 = v28;
          objc_opt_self();
          v30 = swift_dynamicCastObjCClass();
          if (!v30)
          {
            goto LABEL_41;
          }

          v31 = v30;
          v32 = [v30 path];
          if (v32)
          {
            v33 = v32;
            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            if (v34 && (v35 = [v34 path]) != 0)
            {
              v36 = v35;
              if (([v33 isRectangular] & 1) != 0 || objc_msgSend(v33, "isCircular"))
              {
                if ([v36 isRectangular])
                {

LABEL_40:
                  v66 = v21;
                  [v66 headPoint];
                  [v23 convertNaturalPointToUnscaledCanvas:?];
                  v68 = v67;
                  v70 = v69;
                  [v66 tailPoint];
                  v72 = v71;
                  v74 = v73;

                  [v23 convertNaturalPointToUnscaledCanvas:{v72, v74}];
                  v29 = v14 + v9 + v9 + sub_100120090(v68, v70, v75, v76);
                  goto LABEL_41;
                }

                v64 = [v36 isCircular];

                if (v64)
                {
                  goto LABEL_40;
                }

                goto LABEL_28;
              }
            }

            else
            {
              v36 = v33;
            }
          }

LABEL_28:
          v55 = [v31 pathSource];
          if (v55)
          {
            v56 = v55;
            objc_opt_self();
            v57 = swift_dynamicCastObjCClass();
            if (v57 && (v58 = v57, objc_opt_self(), (v59 = swift_dynamicCastObjCClass()) != 0) && (v60 = [v59 pathSource]) != 0)
            {
              v61 = v60;
              objc_opt_self();
              v62 = swift_dynamicCastObjCClass();
              if (v62 && (v63 = v62, ![v58 type]))
              {
                v65 = [v63 type];

                if (!v65)
                {
                  goto LABEL_40;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

LABEL_41:

          sub_1007C87EC(v29, v9 + v9 + v14);
          return;
        }

        v21 = v23;
      }

      else
      {
        v25 = v23;
      }

      v21 = v25;
    }
  }
}

void sub_100A63174(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for CRLWPShapeItem();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v9 = *(**(v6 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v11 = v9(v10);

    v12 = [v11 widthValid];

    if (!v12 || (v13 = *(**(v7 + v8) + 296), v14 = , v15 = v13(v14), , v16 = [v15 heightValid], v15, (v16 & 1) == 0))
    {
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v19 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v20 = *(**(v17 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

        v22 = v20(v21);

        v23 = [v22 widthValid];

        if (!v23 || (v24 = *(**(v18 + v19) + 296), v25 = , v26 = v24(v25), , v27 = [v26 heightValid], v26, (v27 & 1) == 0))
        {
          v28 = [v3 icc];
          v29 = [v28 layoutForInfo:a1];

          if (v29)
          {
            v30 = [v3 icc];
            v31 = [v30 layoutForInfo:a2];

            if (v31)
            {
              v32 = [v29 pureGeometryInRoot];
              if (!v32)
              {
                __break(1u);
LABEL_24:
                __break(1u);
                return;
              }

              v33 = v32;
              [v32 center];
              v35 = v34;
              v37 = v36;

              sub_100A6664C();
              v40 = sub_100120090(v35, v37, v38, v39);
              v41 = [v3 knob];
              v42 = [v41 tag];

              v43 = 0.0;
              if (v42 > 5)
              {
                if (v42 != 8)
                {
                  if (v42 != 6)
                  {
                    goto LABEL_21;
                  }

LABEL_18:
                  [v31 boundsForStandardKnobs];
                  Width = CGRectGetWidth(v55);
LABEL_20:
                  v43 = Width * 0.5;
                  goto LABEL_21;
                }
              }

              else if (v42 != 2)
              {
                if (v42 != 4)
                {
LABEL_21:
                  if ((v3[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters + 8] & 1) == 0)
                  {
                    v45 = v43 + *&v3[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters] - v40;
                    sub_100A6664C();
                    v48 = sub_10011F31C(v46, v47, v35);
                    v50 = sub_10011F2FC(v48, v49);
                    v52 = sub_10011F340(v50, v51, v45);
                    v53 = sub_10011F334(v35, v37, v52);
                    sub_100A63588(a1, a2, v53, v54);

                    return;
                  }

                  goto LABEL_24;
                }

                goto LABEL_18;
              }

              [v31 boundsForStandardKnobs];
              Width = CGRectGetHeight(v56);
              goto LABEL_20;
            }
          }
        }
      }
    }
  }
}

void sub_100A63588(void *a1, void *a2, double a3, double a4)
{
  type metadata accessor for CRLWPShapeItem();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    v12 = [v4 icc];
    v13 = [v12 layoutForInfo:v10];

    if (!v13)
    {
LABEL_10:

      return;
    }

    v14 = swift_dynamicCastClass();
    if (!v14)
    {

      return;
    }

    v15 = v14;
    v16 = a2;
    v17 = [v4 icc];
    v18 = [v17 layoutForInfo:v16];

    if (!v18)
    {

      return;
    }

    v19 = *(v15 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v19)
    {

      return;
    }

    v20 = v19;
    v21 = [v20 paragraphStyleAtCharIndex:0 effectiveRange:0];
    if (!v21)
    {

      return;
    }

    v22 = *&v21[OBJC_IVAR____TtC8Freeform19CRLWPParagraphStyle_alignment];

    v23 = [v13 pureGeometryInRoot];
    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = v23;
    [v23 center];
    v26 = v25;

    v27 = v4;
    sub_100A6664C();
    v30 = sub_10011F31C(v28, v29, v26);
    v32 = sub_10011F2FC(v30, v31);
    v34 = v33;
    v35 = *(**(v15 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
    v36 = v16;

    v38 = v35(v37);

    v39 = [v38 widthValid];

    if (v39)
    {
LABEL_9:

      goto LABEL_10;
    }

    [v18 boundsForStandardKnobs];
    Width = CGRectGetWidth(v59);
    if (v22 != 3)
    {
      if (v22 == 1)
      {
        v43 = [v27 knob];
        v44 = [v43 tag];

        if (v44 > 5)
        {
          if (v44 != 8)
          {
            if (v44 != 6)
            {
              return;
            }

            goto LABEL_31;
          }

          v55 = v32;
          v56 = v34;
          v57 = 0;
        }

        else
        {
          if (v44 != 2)
          {
            if (v44 != 4)
            {
              return;
            }

            goto LABEL_28;
          }

          v55 = v32;
          v56 = v34;
          v57 = 1;
        }

        v49 = sub_10012104C(v57, v55, v56);
        v48 = Width * 0.5;
        goto LABEL_39;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    v41 = [v27 knob];
    v42 = [v41 tag];

    if (v42 <= 5)
    {
      if (v42 != 2)
      {
        if (v42 != 4)
        {
          return;
        }

LABEL_31:
        v48 = Width * 0.5;
        v49 = v32;
        v50 = v34;
LABEL_39:
        v58 = sub_10011F340(v49, v50, v48);
        sub_10011F334(a3, a4, v58);
        return;
      }

      v51 = v32;
      v52 = v34;
      v53 = 1;
      goto LABEL_34;
    }

    if (v42 == 8)
    {
      v51 = v32;
      v52 = v34;
      v53 = 0;
LABEL_34:
      v46 = sub_10012104C(v53, v51, v52);
      v45 = Width * 0.5;
      goto LABEL_35;
    }

    if (v42 != 6)
    {
      return;
    }

LABEL_28:
    v45 = Width * 0.5;
    v46 = v32;
    v47 = v34;
LABEL_35:
    v54 = sub_10011F340(v46, v47, v45);
    sub_10011F31C(a3, a4, v54);
  }
}

char *sub_100A639FC(void *a1)
{
  v2 = v1;
  type metadata accessor for CRLWPShapeItem();
  result = swift_dynamicCastClass();
  if (result)
  {
    v5 = result;
    v6 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v7 = *(**&result[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);

    v9 = v7(v8);

    v10 = [v9 widthValid];

    if (!v10 || (v11 = *(**&v5[v6] + 296), v12 = , v13 = v11(v12), , v14 = [v13 heightValid], v13, (v14 & 1) == 0))
    {
      v15 = [v2 icc];
      v16 = [v15 layoutForInfo:a1];

      if (v16)
      {
        result = [v16 pureGeometryInRoot];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v17 = result;
        v18 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:result];

        [v18 mutableCopy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A0B030);
        if (swift_dynamicCast())
        {
          v19 = (*((swift_isaMask & *a1) + 0xE0))();
          [v20 setWidthValid:{objc_msgSend(v19, "widthValid")}];
          [v20 setHeightValid:{objc_msgSend(v19, "heightValid")}];
          [v19 size];
          [v20 setSize:?];

          return v20;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_100A63CD0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v143 = *(v2 - 8);
  *&v3 = __chkstk_darwin(v2).n128_u64[0];
  v5 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &selRef_geometryWithMask;
  v7 = [v0 icc];
  v8 = [v7 freehandDrawingToolkit];

  [v8 endDrawingModeIfNeeded];
  v9 = [v1 rep];
  v145 = [v9 getConnectionLineLayoutToCopyStyleForNewConnectionLine];

  v10 = sub_100A5E320();
  v11 = sub_100A5F5E4(v10, v145);

  if (v11)
  {
    v12 = objc_opt_self();
    [v1 currentPosition];
    v14 = v13;
    v16 = v15;
    v17 = NSNotFound.getter();
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_63;
    }

    v139 = v2;
    v18 = [v12 dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:v17 targetZOrder:{v14, v16}];

    v141 = sub_1005B981C(&unk_1019F4D60);
    inited = swift_initStackObject();
    v140 = xmmword_101465920;
    *(inited + 16) = xmmword_101465920;
    *(inited + 32) = [v1 rep];
    sub_1005BFCB4(inited);
    v21 = v20;
    swift_setDeallocating();
    swift_arrayDestroy();
    v22 = sub_10121307C(v21);

    v23 = sub_100E93C20(v22);

    v24 = sub_100BC17C8(v23);

    v144 = v24;
    if (!v24)
    {

      return;
    }

    v25 = [v1 icc];
    v26 = [v25 canvasEditor];

    v142 = v18;
    if (v26)
    {
      v27 = [v1 icc];
      v28 = [v27 editorController];

      if (v28)
      {
        v29 = [v28 selectionPath];
        v138 = v5;
        v30 = v29;
        v31 = [v26 canvasEditorHelper];
        v32 = swift_initStackObject();
        *(v32 + 16) = v140;
        *(v32 + 32) = v11;
        v33 = v11;
        sub_1005BC5DC(v32);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for CRLBoardItem(0);
        sub_100A68208(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        isa = Set._bridgeToObjectiveC()().super.isa;

        v35 = [v31 selectionPathForInsertingBoardItems:isa byReplacingInfosInSelectionPath:v30 preservingMultipleContainers:0];

        v18 = v142;
        v36 = [v26 selectionPathWithInfo:0];
        v37 = [objc_allocWithZone(CRLCanvasCommandSelectionBehavior) initWithForwardSelectionPath:v35 reverseSelectionPath:v36 selectionFlags:0 commitSelectionFlags:0 forwardSelectionFlags:70 reverseSelectionFlags:0];
        swift_unknownObjectRelease();

        v5 = v138;
        v6 = &selRef_geometryWithMask;

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v37 = 0;
LABEL_13:
    v39 = [v1 v6[501]];
    v40 = [v39 commandController];

    if (v40)
    {
      v41 = v37;
      sub_10088E3FC(v37);
    }

    v138 = v37;
    v42 = [v1 v6[501]];
    v43 = [v42 commandController];

    if (v43)
    {
      v44 = [objc_opt_self() mainBundle];
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v44 localizedStringForKey:v45 value:v46 table:v47];

      v6 = &selRef_geometryWithMask;
      v18 = v142;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      sub_10088DE20(v49, v51);
    }

    v52 = [v1 v6[501]];
    v53 = [v52 commandController];

    if (v53)
    {
      sub_10088F490();
    }

    v54 = [v1 v6[501]];
    v55 = [v54 canvasEditor];

    if (v55)
    {
      v56 = swift_allocObject();
      *(v56 + 16) = v140;
      *(v56 + 32) = v11;
      type metadata accessor for CRLBoardItem(0);
      v57 = v11;
      v58 = Array._bridgeToObjectiveC()().super.isa;

      [v55 insertBoardItems:v58 withInsertionContext:v18 postProcessBlock:0];

      swift_unknownObjectRelease();
    }

    v59 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v10 = **&v11[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
    if (swift_conformsToProtocol2())
    {
      v60 = v10[105];
      v61 = v11;

      v10 = v60(v62);

      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        [v63 copy];

        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100006370(0, &unk_101A10770);
        swift_dynamicCast();
        a = v146.a;
        v65 = [v1 icc];
        v66 = [v65 layoutForInfo:v144];

        v141 = v61;
        v137 = v1;
        if (!v66)
        {
          v70 = v5;
          v71 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
          [*&a setTailMagnet:v71];
          goto LABEL_32;
        }

        v67 = [v1 knob];
        v68 = [v67 tag];

        if ((v68 - 2) > 6)
        {
          v69 = 1;
        }

        else
        {
          v69 = qword_1014911D8[(v68 - 2)];
        }

        v70 = v5;
        sub_100A67E3C(v69, v66);
        if ((v72 & 1) == 0)
        {
          v69 = 1;
        }

        [v66 getCardinalPositionFromType:v69];
        v74 = v73;
        v76 = v75;
        [v66 pureTransformInRoot];
        CGAffineTransformInvert(&v146, &v147);
        v147 = v146;
        v149.x = v74;
        v149.y = v76;
        v77 = CGPointApplyAffineTransform(v149, &v147);
        v78 = [v66 pureGeometry];
        if (v78)
        {
          v79 = v78;
          [v78 size];

          v80 = sub_10011ECB4();
          v83 = sub_100121720(v77.x, v77.y, v80, v81, v82);
          v71 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v69 normalizedPosition:{v83, v84}];
          [*&a setTailMagnet:v71];

LABEL_32:
          v85 = objc_allocWithZone(type metadata accessor for CRLCommandSetConnectionLineConnection());
          v86 = **&v11[v59];
          v87 = v70;
          (*(v86 + 264))();
          v88 = *&a;
          v89 = v144;
          v90 = UUID._bridgeToObjectiveC()().super.isa;
          v91 = *(v143 + 8);
          v92 = v70;
          v93 = v139;
          v94 = v91(v92, v139);
          (*((swift_isaMask & *v89) + 0x88))(v94);
          v95 = UUID._bridgeToObjectiveC()().super.isa;
          v96 = v87;
          v97 = v88;
          v91(v96, v93);
          v98 = [v85 initWithConnectionLineID:v90 connectedItemID:v95 chirality:0 pathSource:v88];

          v99 = v141;
          v100 = v137;
          v101 = [v137 icc];
          v102 = [v101 commandController];

          if (v102)
          {
            sub_100888700(v98, 0, 0, 4, 0);
          }

          v103 = [v100 icc];
          [v103 layoutIfNeeded];

          if (v145)
          {
            v104 = [v100 icc];
            v105 = [v104 repForInfo:v99];

            if (v105)
            {
              v106 = [v105 layout];

              if (v106)
              {
                objc_opt_self();
                v107 = swift_dynamicCastObjCClass();
                if (v107)
                {
                  v108 = [v107 commandForSettingConnectionType:{objc_msgSend(v145, "connectionType")}];
                  if (v108)
                  {
                    v109 = v108;
                    v144 = v98;
                    v110 = [v100 icc];
                    v111 = [v110 commandController];

                    if (v111)
                    {
                      sub_100888700(v109, 0, 0, 4, 0);
                    }

                    v112 = [v100 icc];
                    [v112 layoutIfNeeded];

                    v106 = v112;
                    v98 = v144;
                  }
                }
              }
            }
          }

          v113 = [v100 icc];
          v114 = [v113 repForInfo:v99];

          if (v114)
          {
            v115 = [v100 icc];
            v116 = [v115 canvasEditor];

            v117 = v142;
            if (v116)
            {
              v144 = v98;
              v118 = [v116 canvasEditorHelper];
              swift_unknownObjectRelease();
              v119 = [v118 selectionPathWithInfo:{objc_msgSend(v114, "info")}];

              swift_unknownObjectRelease();
              if (v119)
              {
                v120 = [v100 icc];
                v121 = [v120 editorController];

                [v121 setSelectionPath:v119];
                v122 = [v114 knobForTag:11];
                if (v122)
                {
                  v123 = v122;
                  v124 = [objc_allocWithZone(CRLConnectionLineKnobTracker) initWithRep:v114 knob:v122];
                  v125 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
                  v126 = *&v100[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
                  *&v100[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = v124;
                  v127 = v124;

                  v128 = *&v100[v125];
                  if (v128)
                  {
                    v129 = [v128 snapEnabled];
                  }

                  else
                  {
                    v129 = v100[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled];
                  }

                  [v127 setSnapEnabled:v129];

                  v130 = *&v100[v125];
                  if (v130)
                  {
                    v131 = v130;
                    [v131 setDidDrag:1];
                  }

                  v117 = v142;
                }

                v132 = [v114 layout];
                [v132 beginDynamicOperationWithRealTimeCommands:0];

                v133 = *&v100[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
                v134 = v138;
                if (v133)
                {
                  v135 = v133;
                  [v135 beginMovingKnob];
                }

                else
                {
                }

                return;
              }
            }

            else
            {
            }
          }

          else
          {
          }

          return;
        }

LABEL_65:
        __break(1u);
        return;
      }

LABEL_64:

      __break(1u);
      goto LABEL_65;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v38 = v145;
}

void sub_100A64E50(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLConnectionLineCRDTData(0);
  __chkstk_darwin(v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  type metadata accessor for CRLGroupItem();
  if (swift_dynamicCastClass())
  {
    v15 = a1;
    v16 = sub_1005F36D4();
    v17 = v16;
    if (v16 >> 62)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
      if (v18)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
LABEL_4:
        if (v18 >= 1)
        {
          v42 = v15;
          v19 = 0;
          do
          {
            if ((v17 & 0xC000000000000001) != 0)
            {
              v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v21 = *(v17 + 8 * v19 + 32);
            }

            v22 = v21;
            v23 = [v21 containingGroup];
            if (v23)
            {
              v24 = v23;
              v25 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
              v20 = *&v23[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
              if (!v20)
              {
                sub_10096C7D4();
                v20 = *&v24[v25];
              }

              if (!v20)
              {
                v20 = _swiftEmptyArrayStorage;
              }
            }

            else
            {
              v20 = 0;
            }

            ++v19;
            sub_100A64E50(v22, v20);
          }

          while (v18 != v19);

          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_36;
      }
    }

LABEL_32:

    return;
  }

  type metadata accessor for CRLConnectionLineItem();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v41 = a1;
  v28 = [v3 icc];
  v42 = [v28 layoutForInfo:v27];

  if (v42)
  {
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (v29 && a2)
    {
      v40 = v29;
      v30 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v31 = *(v27 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v31 == &off_101A0C0B8)
      {
        v32 = qword_101A0C430;
        swift_beginAccess();
        sub_10098E880(v31 + v32, v8);
        sub_1005B981C(&qword_101A06128);
        CRRegister.wrappedValue.getter();
        sub_100A6818C(v8);
        v33 = *(v27 + v30);
        if (*v33 == &off_101A0C0B8)
        {
          swift_beginAccess();
          sub_10098E880(v33 + v32, v8);
          CRRegister.wrappedValue.getter();
          v34 = sub_100A6818C(v8);
          __chkstk_darwin(v34);
          *(&v40 - 2) = v14;
          v35 = sub_101107CA8(sub_100A683FC, (&v40 - 4), a2);
          v36 = v40;
          [v40 setTemporaryConnectedFromInfo:v35];

          __chkstk_darwin(v37);
          *(&v40 - 2) = v11;
          v38 = sub_101107CA8(sub_100A681E8, (&v40 - 4), a2);
          [v36 setTemporaryConnectedToInfo:v38];

          sub_10000CAAC(v11, &qword_1019F6990);
          sub_10000CAAC(v14, &qword_1019F6990);
          return;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v39 = v42;
  }

  else
  {
    v39 = v41;
  }
}

uint64_t sub_100A653BC(void **a1, uint64_t a2)
{
  v24 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_101A0AFE0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  (*((swift_isaMask & **a1) + 0x88))(v14);
  (*(v4 + 56))(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_10000BE14(v16, v9, &qword_1019F6990);
  sub_10000BE14(v24, &v9[v17], &qword_1019F6990);
  v18 = *(v4 + 48);
  if (v18(v9, 1, v3) != 1)
  {
    sub_10000BE14(v9, v12, &qword_1019F6990);
    if (v18(&v9[v17], 1, v3) != 1)
    {
      v20 = v23;
      (*(v4 + 32))(v23, &v9[v17], v3);
      sub_100A68208(&qword_1019F37C0, &type metadata accessor for UUID);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v4 + 8);
      v21(v20, v3);
      sub_10000CAAC(v16, &qword_1019F6990);
      v21(v12, v3);
      sub_10000CAAC(v9, &qword_1019F6990);
      return v19 & 1;
    }

    sub_10000CAAC(v16, &qword_1019F6990);
    (*(v4 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_10000CAAC(v16, &qword_1019F6990);
  if (v18(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_10000CAAC(v9, &unk_101A0AFE0);
    v19 = 0;
    return v19 & 1;
  }

  sub_10000CAAC(v9, &qword_1019F6990);
  v19 = 1;
  return v19 & 1;
}

void sub_100A657D8()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for DispatchQoS();
  v5 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DispatchTimeInterval();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for DispatchTime();
  v91 = *(v94 - 8);
  __chkstk_darwin(v94);
  v87 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v93 = &v80 - v12;
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  v13 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine;
  if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] == 1)
  {
    v14 = v7;
    v15 = v5;
    v16 = v4;
    v17 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
    v18 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
    if (v18)
    {
      v86 = v2;
      v85 = v1;
      v19 = [v18 rep];
      v20 = [v19 layout];

      if (v20 && ((objc_opt_self(), v21 = swift_dynamicCastObjCClass(), LODWORD(v95) = v21 != 0, !v21) || (v22 = [v21 connectedTo], v20, (v20 = v22) != 0)))
      {
      }

      else
      {
        LODWORD(v95) = 0;
      }

      v23 = *&v0[v17];
      v1 = v85;
      if (v23)
      {
        [v23 endMovingKnob];
      }

      v2 = v86;
    }

    else
    {
      LODWORD(v95) = 0;
    }

    v4 = v16;
    v5 = v15;
    v7 = v14;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v24 = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  v98.receiver = v0;
  v98.super_class = v24;
  objc_msgSendSuper2(&v98, "endMovingKnob");
  if (v0[v13] != 1)
  {
    goto LABEL_40;
  }

  v25 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker;
  v26 = *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
  if (v26)
  {
    v27 = [v26 rep];
    v86 = v2;
    v28 = v27;
    v29 = [v27 layout];

    if (v29)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (!v30)
      {

        return;
      }

      v85 = v1;
      [v30 endDynamicOperation];
      v31 = [v0 icc];
      v32 = [v31 commandController];

      if (v32)
      {
        sub_10088E600(0);
      }

      if ((v95 & 1) == 0)
      {
        v33 = [v0 icc];
        v34 = [v33 editorController];

        if (v34)
        {
          if (sub_100006370(0, &qword_101A1CE20))
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          }

          else
          {
            ObjCClassFromMetadata = 0;
          }

          v36 = [v34 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

          objc_opt_self();
          v37 = swift_dynamicCastObjCClass();
          if (!v37)
          {

            swift_unknownObjectRelease();
LABEL_40:
            if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] == 1)
            {
              sub_100A66804();
            }

            return;
          }

          v38 = v37;
          v39 = *&v0[v25];
          if (v39)
          {
            v95 = v38;
            v40 = [v39 rep];
            v41 = [v40 layout];

            if (v41)
            {
              objc_opt_self();
              v42 = swift_dynamicCastObjCClass();
              if (v42)
              {
                v83 = v36;
                v84 = v29;
                v43 = v42;
                [v42 unclippedHeadPoint];
                v45 = v44;
                v47 = v46;
                v48 = [v43 pureGeometryInRoot];
                if (!v48)
                {
                  __break(1u);
                  return;
                }

                v49 = v48;
                [v48 transform];
                v82 = *&aBlock.a;
                v81 = *&aBlock.c;
                v80 = *&aBlock.tx;

                *&aBlock.a = v82;
                *&aBlock.c = v81;
                *&aBlock.tx = v80;
                v99.x = v45;
                v99.y = v47;
                v50 = CGPointApplyAffineTransform(v99, &aBlock);

                v51 = [v0 icc];
                [v51 visibleBoundsRectUsingSizeOfEnclosingScrollView];
                v53 = v52;
                v55 = v54;

                if (v53 * 0.5 <= 200.0)
                {
                  v56 = v53 * 0.5;
                }

                else
                {
                  v56 = 200.0;
                }

                if (v55 * 0.5 <= 200.0)
                {
                  v57 = v55 * 0.5;
                }

                else
                {
                  v57 = 200.0;
                }

                v58 = [v0 icc];
                [v58 viewScale];
                v60 = v59;

                v61 = sub_10011F340(v56, v57, 1.0 / v60);
                v63 = sub_1001206EC(0.0, 0.0, v61, v62, v50.x, v50.y, 0.0, 0.0);
                v65 = v64;
                v67 = v66;
                v69 = v68;
                v70 = [v0 icc];
                [v70 scrollRectToVisible:0 scrollOptions:{v63, v65, v67, v69}];

                sub_100006370(0, &qword_1019F2D90);
                *&v82 = v0;
                v71 = static OS_dispatch_queue.main.getter();
                v72 = v87;
                static DispatchTime.now()();
                v73 = v88;
                *v88 = 50;
                v74 = v89;
                v75 = v90;
                (*(v89 + 104))(v73, enum case for DispatchTimeInterval.milliseconds(_:), v90);
                + infix(_:_:)();
                (*(v74 + 8))(v73, v75);
                v91 = *(v91 + 8);
                (v91)(v72, v94);
                v76 = swift_allocObject();
                *(v76 + 16) = v50;
                *(v76 + 32) = v95;
                *&aBlock.tx = sub_100A68330;
                *&aBlock.ty = v76;
                *&aBlock.a = _NSConcreteStackBlock;
                aBlock.b = *"";
                *&aBlock.c = sub_100007638;
                *&aBlock.d = &unk_101892CF8;
                v77 = _Block_copy(&aBlock);
                swift_unknownObjectRetain();
                static DispatchQoS.unspecified.getter();
                v96 = _swiftEmptyArrayStorage;
                sub_100A68208(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
                sub_1005B981C(&unk_1019FF400);
                sub_10000D494();
                v78 = v85;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v79 = v93;
                OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                v0 = v82;
                _Block_release(v77);
                swift_unknownObjectRelease();

                (*(v86 + 8))(v4, v78);
                (*(v5 + 8))(v7, v92);
                (v91)(v79, v94);
              }

              else
              {
                swift_unknownObjectRelease();
              }

              goto LABEL_40;
            }
          }

          swift_unknownObjectRelease();
        }
      }

      goto LABEL_40;
    }
  }
}

void sub_100A6620C(void *a1, double a2, double a3)
{
  v4 = sub_100D4216C(a1, a1, a2, a3);
  if (!v4)
  {
    return;
  }

  v11 = v4;
  v5 = [a1 interactiveCanvasController];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v5 layerHost];
  if (!v7)
  {

LABEL_8:
    v9 = v11;
    goto LABEL_9;
  }

  v8 = v7;
  if ([v7 respondsToSelector:"shapeLibraryPopoverController"])
  {
    v10 = [v8 shapeLibraryPopoverController];
    swift_unknownObjectRelease();
    sub_100C00CF8(v11);

    v9 = v10;
LABEL_9:

    return;
  }

  swift_unknownObjectRelease();
}

id sub_100A66384(double a1, double a2)
{
  v5 = [v2 rep];
  v6 = [v2 knob];
  [v6 position];
  v8 = v7;
  v10 = v9;

  [v5 convertNaturalPointToUnscaledCanvas:{v8, v10}];
  v12 = v11;
  v14 = v13;

  if (sub_10011F068(v12, v14, a1, a2) > 100.0)
  {
    v15 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine;
    if ((v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] & 1) == 0)
    {
      v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
      v16 = [v2 icc];
      type metadata accessor for CRLBoardItem(0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v16 setTemporaryAdditionalBoardItemsToDisplay:isa];

      v18 = OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine;
      v19 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
      if (v19)
      {
        v20 = v19;
        v21 = [v2 icc];
        v22 = [v21 layoutForInfo:v20];

        if (v22)
        {
          objc_opt_self();
          v23 = swift_dynamicCastObjCClass();
          if (v23)
          {
            v24 = v23;
            [v23 setTemporaryConnectedToInfo:0];
            [v24 setTemporaryConnectedFromInfo:0];
          }
        }

        else
        {
          v22 = v20;
        }
      }

      v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
      v25 = *&v2[v18];
      *&v2[v18] = 0;

      sub_100A63CD0();
      v2[v15] = 1;
    }

    v26 = *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker];
    if (v26)
    {
      [v26 moveKnobToCanvasPosition:{a1, a2}];
    }
  }

  v28.receiver = v2;
  v28.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v28, "moveKnobToCanvasPosition:", a1, a2);
}

void sub_100A6664C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  if (v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate + 16])
  {
    v3 = [v0 rep];
    v4 = [v1 knob];
    [v4 position];
    v6 = v5;
    v8 = v7;

    [v3 convertNaturalPointToUnscaledCanvas:{v6, v8}];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v10 = *v2;
    v12 = v2[1];
  }

  v13 = [v1 knob];
  type metadata accessor for CRLConnectionLineKnob();
  if (swift_dynamicCastClass())
  {
    v14 = sub_100D6C66C();
    v15 = [v1 icc];
    v16 = [v15 canvas];

    [v16 viewScale];
    v18 = v17;

    v19 = v14 / v18;
    sub_100A5E47C();
    v21 = v20;

    v22 = sub_10011F31C(v10, v12, v21);
    v24 = sub_10011F2FC(v22, v23);
    v26 = sub_10011F340(v24, v25, v19);
    sub_10011F31C(v10, v12, v26);
  }

  else
  {
  }
}

void sub_100A66804()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 icc];
  v8 = [v7 temporaryAdditionalBoardItemsToDisplay];

  if (v8)
  {

    v9 = [v1 icc];
    type metadata accessor for CRLBoardItem(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 setTemporaryAdditionalBoardItemsToDisplay:isa];
  }

  v11 = [v1 icc];
  v12 = [v11 canvasEditor];

  if (!v12)
  {
    goto LABEL_55;
  }

  v159 = sub_100A5EEA4();
  if (!v159)
  {
    swift_unknownObjectRelease();
LABEL_55:
    v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
    v149 = *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;

    return;
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v16 = **&v13[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData];
  if (!swift_conformsToProtocol2())
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v161 = &protocol descriptor for CRLAbstractShapeItemDataProtocol;
  v152 = v6;
  v153 = v3;
  v17 = v16[105];

  v16 = v17(v18);

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
LABEL_58:

    __break(1u);
    goto LABEL_59;
  }

  [v19 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A10770);
  swift_dynamicCast();
  a = v163.a;
  v21 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
  [*&a setHeadMagnet:v21];

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  v162 = xmmword_101465920;
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v1 rep];
  sub_1005BFCB4(inited);
  v24 = v23;
  swift_setDeallocating();
  swift_arrayDestroy();
  v25 = sub_10121307C(v24);

  v26 = sub_100E93C20(v25);

  v27 = sub_100BC17C8(v26);

  v151 = v2;
  v155 = 0;
  if (!v27)
  {
    goto LABEL_13;
  }

  v28 = v15;
  v29 = [v1 icc];
  v30 = [v29 layoutForInfo:v27];

  if (!v30)
  {

    v15 = v28;
LABEL_13:
    v34 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:1 normalizedPosition:{0.5, 0.5}];
    [*&a setTailMagnet:v34];
    goto LABEL_20;
  }

  v31 = [v1 knob];
  v32 = [v31 tag];

  if ((v32 - 2) >= 7)
  {
    v33 = 1;
  }

  else
  {
    v33 = qword_1014911D8[(v32 - 2)];
  }

  sub_100A67E3C(v33, v30);
  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 1;
  }

  [v30 getCardinalPositionFromType:v36];
  v38 = v37;
  v40 = v39;
  [v30 pureTransformInRoot];
  CGAffineTransformInvert(&v163, &aBlock);
  aBlock = v163;
  v165.x = v38;
  v165.y = v40;
  v41 = CGPointApplyAffineTransform(v165, &aBlock);
  v42 = [v30 pureGeometry];
  if (!v42)
  {
    goto LABEL_60;
  }

  v43 = v42;
  [v42 size];

  v44 = sub_10011ECB4();
  v47 = sub_100121720(v41.x, v41.y, v44, v45, v46);
  v34 = [objc_allocWithZone(CRLConnectionLineMagnet) initWithType:v36 normalizedPosition:{v47, v48}];
  [*&a setTailMagnet:v34];

  v15 = v28;
LABEL_20:

  v49 = v14;
  v50 = *&a;
  v51 = sub_1011255D0(v50);
  v154 = v50;
  if ((v51 & 1) == 0)
  {

    goto LABEL_24;
  }

  v52 = **&v14[v15];
  if (swift_conformsToProtocol2())
  {
    v53 = *(v52 + 848);

    v53(v50);

LABEL_24:
    v54 = &selRef_geometryWithMask;

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10146CE00;
    v56 = v159;
    *(v55 + 32) = v159;
    *(v55 + 40) = v49;
    v57 = *((swift_isaMask & *v56) + 0xE0);
    v157 = v49;
    v16 = v56;
    v58 = v57();
    [v58 center];
    v60 = v59;
    v62 = v61;

    v63 = objc_opt_self();
    v64 = NSNotFound.getter();
    if ((v64 & 0x8000000000000000) == 0)
    {
      v161 = [v63 dragInsertionContextWithPreferredCenter:1 required:0 fromDragToInsertController:0 insertFloating:v64 targetZOrder:{v60, v62}];
      v65 = swift_initStackObject();
      *(v65 + 16) = v162;
      *(v65 + 32) = v16;
      v156 = v16;
      sub_1005BC5DC(v65);
      swift_setDeallocating();
      swift_arrayDestroy();
      v66 = objc_allocWithZone(CRLCanvasCommandSelectionBehavior);
      type metadata accessor for CRLBoardItem(0);
      sub_100A68208(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
      swift_unknownObjectRetain();
      v67 = Set._bridgeToObjectiveC()().super.isa;

      v68 = [v66 initWithCanvasEditor:v12 type:0 constructedInfos:v67];
      v69 = v12;
      v70 = v68;
      v160 = v69;
      swift_unknownObjectRelease();

      v71 = [v1 icc];
      v72 = [v71 editingCoordinator];

      if (v72)
      {
        v73 = *&v72[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        v74 = v70;
        sub_10088E3FC(v70);
      }

      v158 = v70;
      v75 = [v1 icc];
      v76 = [v75 editingCoordinator];

      if (v76)
      {
        v77 = *&v76[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        sub_10088F490();
      }

      v78 = Array._bridgeToObjectiveC()().super.isa;

      [v160 insertBoardItems:v78 withInsertionContext:v161 postProcessBlock:0];

      v79 = swift_initStackObject();
      *(v79 + 16) = v162;
      *(v79 + 32) = [v1 rep];
      sub_1005BFCB4(v79);
      v81 = v80;
      swift_setDeallocating();
      swift_arrayDestroy();
      v82 = sub_10121307C(v81);

      v83 = sub_100E93C20(v82);

      v84 = sub_100BC17C8(v83);

      v85 = v157;
      if (!v84)
      {
        goto LABEL_48;
      }

      type metadata accessor for CRLWPShapeItem();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = v86;
        v88 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
        v89 = *(**(v86 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

        v91 = v89(v90);

        v92 = [v91 widthValid];

        if (!v92 || (v93 = *(**&v87[v88] + 296), v94 = , v95 = v93(v94), , v96 = [v95 heightValid], v95, (v96 & 1) == 0))
        {
          v97 = v156;
          v98 = swift_dynamicCastClass();
          if (v98)
          {
            v99 = v98;
            v100 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
            v101 = *(**(v98 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
            v102 = v97;

            v104 = v101(v103);

            v105 = [v104 widthValid];

            if (v105 && (v106 = *(**&v99[v100] + 296), v107 = , v108 = v106(v107), , v109 = [v108 heightValid], v108, (v109 & 1) != 0))
            {
              v110 = v84;
              v54 = &selRef_geometryWithMask;
            }

            else
            {
              v54 = &selRef_geometryWithMask;
              v111 = [v1 icc];
              [v111 layoutIfNeeded];

              sub_100A63174(v87, v99);
              if ((v114 & 1) != 0 || (v115 = v112, v116 = v113, (v117 = sub_100A639FC(v102)) == 0))
              {
                v110 = v84;
                v85 = v157;
                goto LABEL_46;
              }

              v118 = v116;
              v119 = v117;
              [v117 setCenter:{v115, v118}];
              v120 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
              v121 = v152;
              (*((swift_isaMask & *v102) + 0x88))();
              v122 = v102;
              v102 = v119;
              v123 = UUID._bridgeToObjectiveC()().super.isa;
              (*(v153 + 8))(v121, v151);
              v110 = [v120 initWithId:v123 geometry:v102];

              v124 = [v1 icc];
              v125 = [v124 editingCoordinator];

              if (v125)
              {
                v126 = *&v125[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

                sub_100888700(v110, 0, 0, 4, 0);
              }
            }

            v85 = v157;
LABEL_46:

            goto LABEL_47;
          }
        }

        v102 = v84;
        v85 = v157;
      }

      else
      {
        v102 = v84;
      }

LABEL_47:

LABEL_48:
      v127 = [v1 v54[501]];
      v128 = [v127 editingCoordinator];

      v129 = v154;
      v130 = v158;
      if (v128)
      {
        v131 = *&v128[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_commandController];

        v132 = v130;
        sub_10088E600(v130);
      }

      v133 = [v1 v54[501]];
      [v133 layoutIfNeeded];

      v134 = [v1 v54[501]];
      v135 = [v134 layoutForInfo:v85];

      if (v135)
      {
        objc_opt_self();
        v136 = swift_dynamicCastObjCClass();
        if (v136)
        {
          v137 = v136;
          v138 = type metadata accessor for CRLInsertionAnimationHelper();
          v139 = [v1 v54[501]];
          v140 = [v139 canvas];
          v141 = swift_allocObject();
          v141[2] = v137;
          v141[3] = v139;
          v142 = v156;
          v141[4] = v156;
          v141[5] = v138;
          *&aBlock.tx = sub_10098C77C;
          *&aBlock.ty = v141;
          *&aBlock.a = _NSConcreteStackBlock;
          aBlock.b = *"";
          *&aBlock.c = sub_100007638;
          *&aBlock.d = &unk_101892C80;
          v143 = _Block_copy(&aBlock);
          v144 = v142;
          v145 = v129;
          v146 = v144;
          v147 = v135;
          v148 = v139;

          [v140 afterLayoutIncludingLayers:1 performBlock:v143];
          _Block_release(v143);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }

      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void sub_100A679E8(double a1, double a2)
{
  v3 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v3 = a1;
  v3[1] = a2;
  *(v3 + 16) = 0;
  sub_100A66804();

  sub_1005B981C(&unk_1019F4D60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  *(inited + 32) = [v2 rep];
  sub_1005BFCB4(inited);
  v6 = v5;
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = sub_10121307C(v6);

  v8 = sub_100E93C20(v7);

  v9 = sub_100BC17C8(v8);

  if (v9)
  {
    v10 = [v2 icc];
    v11 = [v10 repForInfo:v9];

    if (v11)
    {
      type metadata accessor for CRLWPStickyNoteRep();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        [v12 becameSelected];
      }
    }

    else
    {
      v11 = v9;
    }
  }

  *v3 = 0.0;
  v3[1] = 0.0;
  *(v3 + 16) = 1;
}

id sub_100A67CBC()
{
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
  v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;
  v1 = &v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_increasedStepWhenInsertConnectionLine] = 0x403E000000000000;
  v2 = &v0[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_100A67D98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100A67E3C(id a1, id a2)
{
  v2 = [a2 connectedLayouts];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  sub_100006370(0, &qword_101A06118);
  sub_10000FDE0(&qword_101A06120, &qword_101A06118);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v31;
    v5 = v32;
    v6 = v33;
    v7 = v34;
    v8 = v35;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
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

    v8 = v11 & *(v4 + 56);
  }

  v12 = 0;
  v13 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v18 = v30, v16 = v7, v17 = v8, !v30))
    {
LABEL_29:
      sub_100035F90();
      return;
    }

LABEL_21:
    if (v12 || (v19 = [v18 connectedTo]) != 0 && (v20 = v19, sub_100006370(0, &qword_101A287B0), v21 = a2, v22 = static NSObject.== infix(_:_:)(), v21, v20, (v22 & 1) != 0) && objc_msgSend(v18, "headMagnetType") == a1)
    {

      v12 = 1;
    }

    else
    {
      v23 = [v18 connectedFrom];
      if (v23 && (v24 = v23, sub_100006370(0, &qword_101A287B0), v25 = a2, v26 = static NSObject.== infix(_:_:)(), v25, v24, (v26 & 1) != 0))
      {
        v27 = [v18 tailMagnetType];

        v12 = v27 == a1;
      }

      else
      {

        v12 = 0;
      }
    }

    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_17:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_29;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100A6818C(uint64_t a1)
{
  v2 = type metadata accessor for CRLConnectionLineCRDTData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100A68208(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100A68258(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker__snapEnabled] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_connectionLineKnobTracker] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_didAddLine] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_isShowingDuplicateItemPreview] = 0;
  v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_shouldShowDuplicateItemPreview] = 0;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_duplicatedConnectionLine] = 0;
  v5 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_referenceDistanceBetweenSourceAndDuplicatedItemCenters];
  *v5 = 0;
  v5[8] = 1;
  *&v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_increasedStepWhenInsertConnectionLine] = 0x403E000000000000;
  v6 = &v2[OBJC_IVAR____TtC8Freeform33CRLShapeConnectionLineKnobTracker_crlaxCurrentPositionOfKnobInsertingDuplicate];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLShapeConnectionLineKnobTracker();
  return objc_msgSendSuper2(&v8, "initWithRep:knob:", a1, a2);
}

uint64_t sub_100A68344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100A5EB60(a1, v4, v5, v6);
}

__n128 sub_100A68424@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 32);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

uint64_t sub_100A68440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v152 = a3;
  v5 = sub_1005B981C(&qword_1019F33E0);
  v6 = __chkstk_darwin(v5 - 8);
  v134 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v141 = &v123 - v8;
  v9 = type metadata accessor for UUID();
  v145 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v133 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v123 - v12;
  v140 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v14 = __chkstk_darwin(v140);
  v132 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v131 = &v123 - v17;
  v18 = __chkstk_darwin(v16);
  v138 = &v123 - v19;
  __chkstk_darwin(v18);
  v137 = &v123 - v20;
  v139 = type metadata accessor for CRLFolderIdentifier(0);
  v144 = *(v139 - 8);
  v21 = __chkstk_darwin(v139);
  v130 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v136 = &v123 - v24;
  v25 = __chkstk_darwin(v23);
  v135 = &v123 - v26;
  __chkstk_darwin(v25);
  v147 = &v123 - v27;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for CRLFolderDatabaseRow();
  v151 = *(v32 - 8);
  __chkstk_darwin(v32);
  v129 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(*(a1 + 16) + 32);
  *v31 = v34;
  v35 = *(v29 + 104);
  v150 = enum case for DispatchPredicate.onQueue(_:);
  v149 = v35;
  v35(v31);
  v36 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  v148 = *(v29 + 8);
  result = v148(v31, v28);
  if ((v34 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v38 = sub_10002C280(a2, a1);
  if (!v38)
  {

    v43 = 1;
    v44 = v152;
    return (*(v151 + 56))(v44, v43, 1, v32);
  }

  v128 = v9;
  v142 = a2;
  v143 = a1;
  v146 = v32;
  v40 = sub_100024DD4(v38, v39);
  v42 = v41;
  sub_100024E98(v40, v41);
  sub_100024EEC(v13, v40, v42);
  v46 = v45;
  v48 = v47;
  v125 = 0;
  v127 = v40;
  v126 = v42;
  sub_10002640C(v40, v42);
  v49 = v145 + 32;
  v50 = v138;
  v124 = *(v145 + 32);
  v124(v138, v13, v128);
  v51 = (v50 + *(v140 + 20));
  *v51 = v46;
  v51[1] = v48;
  v52 = v137;
  sub_10000C208(v50, v137, type metadata accessor for CRLFolderIdentifierStorage);
  v53 = v52;
  v54 = v136;
  sub_10000C208(v53, v136, type metadata accessor for CRLFolderIdentifierStorage);
  v55 = v54;
  v56 = v135;
  sub_10000C208(v55, v135, type metadata accessor for CRLFolderIdentifier);
  result = sub_10000C208(v56, v147, type metadata accessor for CRLFolderIdentifier);
  v57 = v142 + 1;
  if (__OFADD__(v142, 1))
  {
    goto LABEL_43;
  }

  v58 = v143;
  v59 = *(*(v143 + 16) + 32);
  *v31 = v59;
  v149(v31, v150, v28);
  v60 = v59;
  LOBYTE(v59) = _dispatchPreconditionTest(_:)();
  result = v148(v31, v28);
  if ((v59 & 1) == 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v61 = sub_10002C280(v57, v58);
  v44 = v152;
  v32 = v146;
  if (!v61)
  {
    sub_10002640C(v127, v126);

LABEL_26:
    sub_100A698C0(v147, type metadata accessor for CRLFolderIdentifier);
    v43 = 1;
    return (*(v151 + 56))(v44, v43, 1, v32);
  }

  v145 = v49;
  v63 = v152;
  result = sub_100024DD4(v61, v62);
  v137 = result;
  v138 = v64;
  v65 = v142 + 2;
  if (__OFADD__(v142, 2))
  {
    goto LABEL_45;
  }

  v66 = *(*(v58 + 16) + 32);
  *v31 = v66;
  v149(v31, v150, v28);
  v67 = v66;
  LOBYTE(v66) = _dispatchPreconditionTest(_:)();
  result = v148(v31, v28);
  if ((v66 & 1) == 0)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v68 = sub_10002C280(v65, v58);
  if (v68)
  {
    v135 = sub_100024DD4(v68, v69);
    v136 = v70;
  }

  else
  {
    v135 = 0;
    v136 = 0xF000000000000000;
  }

  v71 = *(v144 + 56);
  v144 += 56;
  result = v71(v141, 1, 1, v139);
  v72 = v142 + 3;
  if (__OFADD__(v142, 3))
  {
    goto LABEL_47;
  }

  v73 = *(*(v58 + 16) + 32);
  *v31 = v73;
  v149(v31, v150, v28);
  v74 = v73;
  LOBYTE(v73) = _dispatchPreconditionTest(_:)();
  result = v148(v31, v28);
  if ((v73 & 1) == 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v75 = sub_10002C280(v72, v58);
  v77 = v58;
  v44 = v63;
  v78 = v127;
  v79 = v141;
  if (v75)
  {
    v80 = sub_100024DD4(v75, v76);
    v82 = v81;
    v83 = v133;
    v84 = v125;
    sub_100024EEC(v133, v80, v81);
    if (v84)
    {

      sub_10002640C(v80, v82);
      sub_10000CAAC(v79, &qword_1019F33E0);
      v87 = 1;
      v88 = v134;
    }

    else
    {
      v89 = v85;
      v90 = v86;
      sub_10000CAAC(v79, &qword_1019F33E0);
      sub_10002640C(v80, v82);
      v91 = v132;
      v124(v132, v83, v128);
      v92 = &v91[*(v140 + 20)];
      *v92 = v89;
      *(v92 + 1) = v90;
      v93 = v91;
      v94 = v131;
      sub_10000C208(v93, v131, type metadata accessor for CRLFolderIdentifierStorage);
      v95 = v94;
      v96 = v130;
      sub_10000C208(v95, v130, type metadata accessor for CRLFolderIdentifierStorage);
      v88 = v134;
      sub_10000C208(v96, v134, type metadata accessor for CRLFolderIdentifier);
      v87 = 0;
    }

    v71(v88, v87, 1, v139);
    sub_1006A3C78(v88, v79);
    v44 = v152;
    v77 = v143;
  }

  v97 = v142;
  result = v142 + 4;
  if (__OFADD__(v142, 4))
  {
    goto LABEL_49;
  }

  v98 = sub_100028894(result, v77);
  v32 = v146;
  if (v99)
  {
LABEL_25:
    sub_100025870(v135, v136);
    sub_10002640C(v137, v138);

    sub_10002640C(v78, v126);
    sub_10000CAAC(v79, &qword_1019F33E0);
    goto LABEL_26;
  }

  v100 = v98;
  result = v97 + 6;
  if (__OFADD__(v97, 6))
  {
    goto LABEL_50;
  }

  v101 = sub_100028894(result, v77);
  if (v102)
  {
    goto LABEL_25;
  }

  v103 = v101;
  v104 = sub_100028894(v97 + 5, v77);
  if (v105)
  {
    sub_100025870(v135, v136);
    sub_10002640C(v137, v138);

    sub_10002640C(v78, v126);
    sub_10000CAAC(v79, &qword_1019F33E0);
    sub_100A698C0(v147, type metadata accessor for CRLFolderIdentifier);
    v43 = 1;
    v32 = v146;
    return (*(v151 + 56))(v44, v43, 1, v32);
  }

  v106 = v104;
  result = v97 + 7;
  if (__OFADD__(v97, 7))
  {
    goto LABEL_51;
  }

  v108 = sub_10089C2BC(result, v77);
  result = v97 + 8;
  if (!__OFADD__(v97, 8))
  {
    if (v107)
    {
      v109 = v107;
    }

    else
    {
      v109 = 0xE000000000000000;
    }

    if (v107)
    {
      v110 = v108;
    }

    else
    {
      v110 = 0;
    }

    v111 = COERCE_DOUBLE(sub_100083E9C(result, v77));
    v113 = v112;
    sub_10002640C(v78, v126);

    if (v113)
    {
      v114 = 0.0;
    }

    else
    {
      v114 = v111;
    }

    v115 = v129;
    sub_10000C208(v147, v129, type metadata accessor for CRLFolderIdentifier);
    v116 = v146;
    v117 = (v115 + v146[5]);
    v118 = v138;
    *v117 = v137;
    v117[1] = v118;
    v119 = (v115 + v116[6]);
    v120 = v136;
    *v119 = v135;
    v119[1] = v120;
    sub_1006A3C78(v79, v115 + v116[7]);
    v121 = v115 + v116[8];
    *v121 = v100;
    *(v121 + 8) = v103;
    v32 = v116;
    *(v121 + 16) = v106;
    *(v121 + 24) = 0;
    *(v121 + 32) = 1;
    v122 = (v115 + v116[9]);
    *v122 = v110;
    v122[1] = v109;
    *(v115 + v116[10]) = v114;
    v44 = v152;
    sub_10000C208(v115, v152, type metadata accessor for CRLFolderDatabaseRow);
    v43 = 0;
    return (*(v151 + 56))(v44, v43, 1, v32);
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for CRLFolderDatabaseRow()
{
  result = qword_101A0E5A0;
  if (!qword_101A0E5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100A69064@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CRLFolderCRDTData();
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLFolder();
  v30 = a1 + v10[7];
  sub_100A69920(v30, v9, type metadata accessor for CRLFolderCRDTData);
  if (qword_1019F1520 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRCodableVersion();
  sub_1005EB3DC(v11, qword_101AD6348);
  sub_100A69868();
  v12 = CRDT.serializedData(_:version:)();
  if (v3)
  {

    sub_100A698C0(v9, type metadata accessor for CRLFolderCRDTData);
    return sub_100A698C0(a1, type metadata accessor for CRLFolder);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    v29 = a2;
    sub_100A698C0(v9, type metadata accessor for CRLFolderCRDTData);
    sub_100A69920(a1, a3, type metadata accessor for CRLFolderIdentifier);
    v17 = type metadata accessor for CRLFolderDatabaseRow();
    v18 = (a3 + v17[5]);
    *v18 = v15;
    v18[1] = v16;
    if (*(a1 + v10[6]))
    {
      v19 = sub_100EEA848();
    }

    else
    {
      v19 = 0;
      v20 = 0xF000000000000000;
    }

    v21 = (a3 + v17[6]);
    *v21 = v19;
    v21[1] = v20;
    sub_10069646C(a1 + v10[5], a3 + v17[7]);
    v22 = a1 + v10[8];
    v23 = *(v22 + 32);
    v24 = a3 + v17[8];
    v25 = *(v22 + 16);
    *v24 = *v22;
    *(v24 + 16) = v25;
    *(v24 + 32) = v23;
    sub_1005B981C(&qword_101A1A020);
    CRRegister.wrappedValue.getter();
    v26 = v32;
    v27 = (a3 + v17[9]);
    *v27 = v31;
    v27[1] = v26;
    sub_1005B981C(&qword_1019F4858);
    CRMaxRegister.wrappedValue.getter();

    v28 = v31;
    result = sub_100A698C0(a1, type metadata accessor for CRLFolder);
    *(a3 + v17[10]) = v28;
  }

  return result;
}

BOOL sub_100A69330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v47[-v9];
  v11 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v11);
  v13 = &v47[-v12];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for CRLFolderDatabaseRow();
  if ((sub_1009F9488(*(a1 + *(v20 + 20)), *(a1 + *(v20 + 20) + 8), *(a2 + *(v20 + 20)), *(a2 + *(v20 + 20) + 8)) & 1) == 0)
  {
    return 0;
  }

  v49 = v14;
  v51 = v5;
  v52 = v20;
  v21 = *(v20 + 24);
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *v24;
  v26 = v24[1];
  if (v23 >> 60 == 15)
  {
    if (v26 >> 60 == 15)
    {
      v50 = v22;
      sub_100024E84(v22, v23);
      sub_100024E84(v25, v26);
      sub_100025870(v50, v23);
      goto LABEL_14;
    }

LABEL_12:
    v27 = v22;
    sub_100024E84(v22, v23);
    sub_100024E84(v25, v26);
    sub_100025870(v27, v23);
    sub_100025870(v25, v26);
    return 0;
  }

  if (v26 >> 60 == 15)
  {
    goto LABEL_12;
  }

  v50 = v22;
  sub_100024E84(v22, v23);
  sub_100024E84(v25, v26);
  v48 = sub_1009F9488(v50, v23, v25, v26);
  sub_100025870(v25, v26);
  sub_100025870(v50, v23);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v28 = v52;
  v29 = v52[7];
  v30 = *(v11 + 48);
  sub_10069646C(a1 + v29, v13);
  sub_10069646C(a2 + v29, &v13[v30]);
  v31 = *(v51 + 48);
  if (v31(v13, 1, v4) == 1)
  {
    if (v31(&v13[v30], 1, v4) == 1)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  sub_10069646C(v13, v10);
  if (v31(&v13[v30], 1, v4) == 1)
  {
    sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
LABEL_19:
    v32 = &qword_1019F33E8;
LABEL_32:
    sub_10000CAAC(v13, v32);
    return 0;
  }

  sub_10000C208(&v13[v30], v7, type metadata accessor for CRLFolderIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v33 = *(v49 + 20), v34 = *&v10[v33], v35 = *&v10[v33 + 8], v36 = &v7[v33], v34 != *v36) || v35 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_100A698C0(v7, type metadata accessor for CRLFolderIdentifier);
    sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
    v32 = &qword_1019F33E0;
    goto LABEL_32;
  }

  sub_100A698C0(v7, type metadata accessor for CRLFolderIdentifier);
  sub_100A698C0(v10, type metadata accessor for CRLFolderIdentifier);
LABEL_25:
  sub_10000CAAC(v13, &qword_1019F33E0);
  result = 0;
  v38 = v28[8];
  v39 = a1 + v38;
  v40 = *(a1 + v38);
  v41 = a2 + v38;
  if (v40 == *v41 && *(v39 + 8) == *(v41 + 8) && *(v39 + 16) == *(v41 + 16))
  {
    if (*(v39 + 32))
    {
      if (*(v41 + 32))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (*(v39 + 24) == *(v41 + 24))
      {
        v42 = *(v41 + 32);
      }

      else
      {
        v42 = 1;
      }

      if ((v42 & 1) == 0)
      {
LABEL_39:
        v43 = v28[9];
        v44 = *(a1 + v43);
        v45 = *(a1 + v43 + 8);
        v46 = (a2 + v43);
        if (v44 == *v46 && v45 == v46[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return *(a1 + v28[10]) == *(a2 + v28[10]);
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100A69868()
{
  result = qword_1019F4968;
  if (!qword_1019F4968)
  {
    type metadata accessor for CRLFolderCRDTData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F4968);
  }

  return result;
}

uint64_t sub_100A698C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100A69920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100A699B0()
{
  type metadata accessor for CRLFolderIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_10003FE44();
    if (v1 <= 0x3F)
    {
      sub_100039B50();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

Class sub_100A69B94(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t *a5)
{
  v7 = a1;

  a4(v8);

  sub_1005B981C(a5);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

uint64_t sub_100A69C34(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_100601584(a1, v28);
  if (!v29)
  {
    sub_1005E09AC(v28);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v25 = 0;
    return v25 & 1;
  }

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables);
  v5 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_declaredVariables];

  v6 = sub_100BC5BA8(v4, v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions;
  v8 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions);
  if (!(v8 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v9 = v8;
LABEL_6:
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_7;
  }

  sub_1005B981C(&unk_1019F6E80);
  v9 = _bridgeCocoaArray<A>(_:)();

  if (!(v9 >> 62))
  {
    goto LABEL_6;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

  v11 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions;
  v12 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_expressions];
  if (!(v12 >> 62))
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();

    v13 = v12;
LABEL_9:
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

  sub_1005B981C(&unk_1019F6E80);
  v13 = _bridgeCocoaArray<A>(_:)();

  if (!(v13 >> 62))
  {
    goto LABEL_9;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_10:

  if (v10 != v14)
  {
    goto LABEL_24;
  }

  v15 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults;
  v16 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults);
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults;
  v19 = *&v27[OBJC_IVAR____TtC8Freeform28CRLCalculateDocumentProvider_evaluationResults];
  if (!(v19 >> 62))
  {
    if (v17 == *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v17 != _CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_24;
  }

LABEL_15:
  v20 = *(v2 + v7);
  v21 = *&v27[v11];

  v22 = sub_1006749B8(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_24;
  }

  v23 = *(v2 + v15);
  v24 = *&v27[v18];

  v25 = sub_1006749D0(v23, v24);

  return v25 & 1;
}

BOOL sub_100A6A110(uint64_t a1)
{
  swift_getObjectType();
  sub_100601584(a1, v8);
  if (v9)
  {
    if (swift_dynamicCast())
    {
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expression) == *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expression] && *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expression + 8) == *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expression + 8];
      if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v4 = *(v1 + OBJC_IVAR____TtC8Freeform14MathExpression_expressionType);
        v5 = *&v7[OBJC_IVAR____TtC8Freeform14MathExpression_expressionType];

        return v4 == v5;
      }
    }
  }

  else
  {
    sub_1005E09AC(v8);
  }

  return 0;
}

uint64_t sub_100A6A300(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = (a1 + *a4);
  *v7 = v6;
  v7[1] = v8;
}

void *sub_100A6A3C0()
{
  v1 = type metadata accessor for PKDrawing();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(PKStrokeProvider);
  isa = PKDrawing._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v9 = [v7 initWithDrawing:isa];

  if (v9)
  {
    v10 = [v9 orderedStrokes];
    sub_1005B981C(&unk_101A0E7D0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = v10;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_100A6A554(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for PKDrawing();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(a1, v55);
  if (!v56)
  {
    sub_1005E09AC(v55);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v8 = v54;
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string) == *&v54[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string] && *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string + 8) == *&v54[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_string + 8];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_1006364DC();
  v10 = *&v8[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier];
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_strokeGroupIdentifier);
  v12 = v10;
  v13 = static NSObject.== infix(_:_:)();

  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

  v53 = OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing;
  v14 = *(v2 + OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing);
  v15 = &selRef_initWithId_maskInfo_;
  if (v14)
  {
    v16 = v14;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = objc_allocWithZone(PKStrokeProvider);
    isa = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v19 = [v17 initWithDrawing:isa];

    if (v19)
    {
      v20 = [v19 orderedStrokes];
      sub_1005B981C(&unk_101A0E7D0);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = v20;
      v15 = &selRef_initWithId_maskInfo_;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v22 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

  v23 = OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing;
  v24 = *&v8[OBJC_IVAR____TtC8Freeform30MathExpressionEvaluationResult_drawing];
  if (v24)
  {
    v52 = v22;
    v25 = v24;
    static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = objc_allocWithZone(PKStrokeProvider);
    v27 = PKDrawing._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v28 = [v26 v15[58]];

    if (v28)
    {
      v29 = [v28 orderedStrokes];
      sub_1005B981C(&unk_101A0E7D0);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v29;
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v22 = v52;
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v31 = v30 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v22 != v31)
  {
LABEL_30:

    return 0;
  }

  v32 = *(v2 + v53);
  if (!v32)
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v41 = *&v8[v23];
    if (v41)
    {
      goto LABEL_29;
    }

LABEL_33:
    v43 = CGRectNull.origin.x;
    v45 = CGRectNull.origin.y;
    v47 = CGRectNull.size.width;
    v49 = CGRectNull.size.height;
    goto LABEL_34;
  }

  [v32 bounds];
  x = v33;
  y = v35;
  width = v37;
  height = v39;
  v41 = *&v8[v23];
  if (!v41)
  {
    goto LABEL_33;
  }

LABEL_29:
  [v41 bounds];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
LABEL_34:

  return sub_10011EE4C(x, y, width, height, v43, v45, v47, v49);
}

uint64_t sub_100A6A9FC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_1005E09AC(v10);
  return v8 & 1;
}

void sub_100A6AC3C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v4 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder);
    Set.Iterator.init(_cocoa:)();
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
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

    v8 = v11 & *(v4 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  while (v4 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for CRLiOSMiniFormatterBuilder(), swift_dynamicCast(), (v13 = v18) == 0))
    {
LABEL_18:
      sub_100035F90();
      return;
    }

LABEL_9:
    v14 = (*((swift_isaMask & *v13) + 0x1A0))(a1, a2);

    if (v14)
    {
      goto LABEL_18;
    }
  }

  v15 = v7;
  v16 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v16 - 1) & v16;
    v13 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  while (1)
  {
    v7 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_18;
    }

    v16 = *(v5 + 8 * v7);
    ++v15;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100A6AE9C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_builders);
  if ((v5 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CRLiOSMiniFormatterBuilder();
    sub_100A71534(&qword_101A0E898, type metadata accessor for CRLiOSMiniFormatterBuilder);
    Set.Iterator.init(_cocoa:)();
    v5 = v50;
    v6 = v51;
    v7 = v52;
    v8 = v53;
    v9 = v54;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v8 = 0;
  }

  v13 = (v7 + 64) >> 6;
  v43 = v6;
  while (1)
  {
    if (v5 < 0)
    {
      v18 = __CocoaSet.Iterator.next()();
      if (!v18 || (v45 = v18, type metadata accessor for CRLiOSMiniFormatterBuilder(), swift_dynamicCast(), v17 = v46, v16 = v9, !v46))
      {
LABEL_44:
        sub_100035F90();
        return;
      }

      goto LABEL_18;
    }

    v14 = v8;
    v15 = v9;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v16 = (v15 - 1) & v15;
    v17 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v17)
    {
      goto LABEL_44;
    }

LABEL_18:
    sub_100064288(a2, &v46);
    type metadata accessor for CRLBoardItem(0);
    if (swift_dynamicCast())
    {
      v44 = v16;
      v19 = *(*&v17[OBJC_IVAR____TtC8Freeform26CRLiOSMiniFormatterBuilder_boardItemDataProvider] + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
      if (sub_100006370(0, &qword_101A0E8B0))
      {
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      }

      else
      {
        ObjCClassFromMetadata = 0;
      }

      v21 = [v19 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 boardItems];
        swift_unknownObjectRelease();
        sub_100A71534(&qword_1019FCB80, type metadata accessor for CRLBoardItem);
        v24 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = v45;
          v26 = __CocoaSet.contains(_:)();

          if (v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*(v24 + 16))
          {
            v41 = a1;
            v42 = a2;
            v35 = NSObject._rawHashValue(seed:)(*(v24 + 40));
            v36 = -1 << *(v24 + 32);
            v37 = v35 & ~v36;
            if (((*(v24 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
LABEL_38:

              v9 = v44;
              a2 = v42;
              a1 = v41;
              goto LABEL_42;
            }

            v38 = ~v36;
            while (1)
            {
              v39 = *(*(v24 + 48) + 8 * v37);
              v40 = static NSObject.== infix(_:_:)();

              if (v40)
              {
                break;
              }

              v37 = (v37 + 1) & v38;
              if (((*(v24 + 56 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
              {
                goto LABEL_38;
              }
            }

            a2 = v42;
            a1 = v41;
LABEL_25:
            v27 = *(a1 + OBJC_IVAR____TtC8Freeform15CRLChangeRecord_details);
            v28 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
            v29 = v27;
            swift_beginAccess();
            v30 = *&v27[v28];
            if (*(v30 + 16) && (v31 = sub_1007CF108(7), (v32 & 1) != 0) || (v46 = 0, v47 = 0, v48 = 0, v49 = 1, sub_10077D6BC(&v46), v30 = *&v27[v28], *(v30 + 16)) && (v31 = sub_1007CF108(6), (v33 & 1) != 0) || (v46 = 0, v47 = 0, v48 = 0, v49 = 1, sub_10077D6BC(&v46), v30 = *&v27[v28], *(v30 + 16)) && (v31 = sub_1007CF108(55), (v34 & 1) != 0))
            {
              sub_100601584(*(v30 + 56) + 32 * v31, &v46);

              sub_100035F90();

              sub_10077D6BC(&v46);
              return;
            }

            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = 1;
            sub_10077D6BC(&v46);

            goto LABEL_41;
          }
        }

LABEL_41:
        v9 = v44;
LABEL_42:
        v6 = v43;
      }

      else
      {

        swift_unknownObjectRelease();
        v9 = v44;
      }
    }

    else
    {

      v9 = v16;
    }
  }

  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_44;
    }

    v15 = *(v6 + 8 * v8);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_100A6B468()
{
  v0 = _UISolariumEnabled();
  v1 = objc_opt_self();
  v2 = &selRef_clearColor;
  if (!v0)
  {
    v2 = &selRef_systemBackgroundColor;
  }

  result = [v1 *v2];
  qword_101AD70F8 = result;
  return result;
}

uint64_t sub_100A6B4C8()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for _Glass();
  sub_10061655C(v1, qword_101AD7100);
  sub_1005EB3DC(v1, qword_101AD7100);
  static _Glass._GlassVariant.regular.getter();
  return _Glass.init(_:smoothness:)();
}

uint64_t sub_100A6B578()
{
  result = _UISolariumEnabled();
  v1 = 4;
  if (result)
  {
    v1 = 5;
  }

  qword_101AD7118 = v1;
  return result;
}

void sub_100A6B770()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView];
  if (qword_1019F1B58 != -1)
  {
    swift_once();
  }

  [v2 setBackgroundColor:qword_101AD70F8];
  v3 = [v2 layer];
  [v3 setCornerRadius:22.0];

  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  if (_UISolariumEnabled())
  {
    if (qword_1019F1B60 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for _Glass();
    v6 = sub_1005EB3DC(v5, qword_101AD7100);
    v43[3] = v5;
    v43[4] = &protocol witness table for _Glass;
    v7 = sub_10002C58C(v43);
    (*(*(v5 - 8) + 16))(v7, v6, v5);
    UIView._background.setter();
  }

  else
  {
    v8 = [v2 layer];
    [v8 crl_applyDefaultCanvasOverlayUIShadowSettings];
  }

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAccessibilityElementsHidden:1];
  v10 = [v1 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 addSubview:v2];

  [v2 addSubview:v9];
  sub_1005B981C(&unk_1019F4D60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10146E8A0;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v13;
  v15 = [v13 topAnchor];

  v16 = [v2 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v12 + 32) = v17;
  v18 = [v9 heightAnchor];
  v19 = [v18 constraintEqualToConstant:44.0];

  *(v12 + 40) = v19;
  v20 = [v1 view];
  if (v20)
  {
    v21 = v20;
    v42 = objc_opt_self();
    v22 = [v21 leftAnchor];

    v23 = [v2 leftAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v12 + 48) = v24;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:isa];

    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_10146E8B0;
    v27 = [v2 topAnchor];
    v28 = [v9 topAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];

    *(v26 + 32) = v29;
    v30 = [v2 bottomAnchor];
    v31 = [v9 bottomAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v33 = [v2 leadingAnchor];
    v34 = [v9 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:-*&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_leadingMargin]];

    *(v26 + 48) = v35;
    v36 = [v2 trailingAnchor];
    v37 = [v9 trailingAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:6.0];

    *(v26 + 56) = v38;
    v39 = Array._bridgeToObjectiveC()().super.isa;

    [v42 activateConstraints:v39];

    sub_100A6C00C();
    sub_1005B981C(&unk_101A150B0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C4D0;
    *(v40 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v40 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v40 + 48) = type metadata accessor for UITraitVerticalSizeClass();
    *(v40 + 56) = &protocol witness table for UITraitVerticalSizeClass;
    *(v40 + 64) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v40 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    [v9 setShowsLargeContentViewer:1];
    v41 = [objc_allocWithZone(UILargeContentViewerInteraction) initWithDelegate:v1];
    [v9 addInteraction:v41];

    return;
  }

LABEL_14:
  __break(1u);
}

void sub_100A6C00C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {

LABEL_4:
    v4 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper] = 0;

    v5 = [v1 view];
    if (v5)
    {
      v6 = v5;
      v7 = type metadata accessor for CRLMiniFormatterDynamicOperationViewHelper();
      v8 = objc_allocWithZone(v7);
      swift_unknownObjectWeakInit();
      v9 = &v8[OBJC_IVAR____TtC8Freeform42CRLMiniFormatterDynamicOperationViewHelper_delegate];
      *&v8[OBJC_IVAR____TtC8Freeform42CRLMiniFormatterDynamicOperationViewHelper_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      *(v9 + 1) = &off_101892DD8;
      swift_unknownObjectWeakAssign();
      v23.receiver = v8;
      v23.super_class = v7;
      v10 = objc_msgSendSuper2(&v23, "init");

      v11 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
      *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper] = v10;
LABEL_11:

      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v3 = [v2 crl_isCompactWidth];

  if (v3)
  {
    goto LABEL_4;
  }

  v12 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
  *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper] = 0;

  sub_100020E58(&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate], *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24]);
  v13 = sub_100721FB0();
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    if (v13)
    {
      v16 = 49.0;
    }

    else
    {
      v16 = 16.0;
    }

    v17 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps];
    v18 = type metadata accessor for CRLRepTrackingMiniFormatterViewHelper();
    v19 = objc_allocWithZone(v18);
    v20 = &v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_delegate];
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper____lazy_storage___miniFormatterPositionHelper] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsHiddenDueToCanvasDecorator] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingOut] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewIsFadingIn] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isScrollingBoard] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_viewShouldReappear] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_isSuppressingReshowMiniFormatter] = 0;
    v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_dynamicOperationSuppressesMiniFormatter] = 0;
    swift_unknownObjectWeakAssign();
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps] = v17;
    *&v19[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_distanceToView] = v16;
    *(v20 + 1) = &off_101892DF8;
    swift_unknownObjectWeakAssign();
    v24.receiver = v19;
    v24.super_class = v18;

    v21 = objc_msgSendSuper2(&v24, "init");

    v22 = *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
    *&v1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper] = v21;
    v11 = v21;

    sub_10091C3B4();
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
}

void sub_100A6C338()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  objc_msgSendSuper2(&v11, "viewWillLayoutSubviews");
  if ((v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] & 1) == 0 && (v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] & 1) == 0)
  {
    v1 = [v0 view];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 view];
      if (v3)
      {
        v4 = v3;
        [v3 frame];
        v6 = v5;
        v8 = v7;

        [*&v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
        [v2 setFrame:{v6, v8, v9, v10}];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100A6C490(void *a1, SEL *a2, char a3)
{
  v5 = v3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v176 = *(v9 - 1);
  v177 = v9;
  __chkstk_darwin(v9);
  v11 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v174 = *(v12 - 8);
  v175 = v12;
  __chkstk_darwin(v12);
  v14 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for DispatchTime();
  v173 = *(v178 - 1);
  __chkstk_darwin(v178);
  v16 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v168 - v19;
  v21 = [a1 view];
  v22 = [v5 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_101;
  }

  v23 = v22;
  v24 = [v22 superview];

  v179 = v21;
  if (v24)
  {
    if (v21)
    {
      sub_100006370(0, &qword_1019F6D00);
      v25 = v21;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        goto LABEL_81;
      }
    }

    else
    {
    }
  }

  else if (!v21)
  {
LABEL_81:
    v152 = [v5 traitCollection];
    if ([objc_opt_self() crl_phoneUI])
    {

      v153 = v179;
    }

    else
    {
      v154 = [v152 crl_isCompactWidth];

      v153 = v179;
      if ((v154 & 1) == 0)
      {
        v162 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
        if (!v162)
        {
LABEL_94:

          return;
        }

        v163 = *&v162[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps];

        v159 = v162;
        v164 = sub_100BC17E0(v163);

        v161 = [v164 interactiveCanvasController];

        if (!v161)
        {
LABEL_93:

          v153 = v159;
          goto LABEL_94;
        }

        [v161 addDecorator:v159];
LABEL_91:

        goto LABEL_93;
      }
    }

    v155 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
    if (!v155)
    {
      goto LABEL_94;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_94;
    }

    v157 = v153;
    v158 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps);
    v159 = v155;
    v160 = sub_100BC17E0(v158);
    v161 = [v160 interactiveCanvasController];
    swift_unknownObjectRelease();

    if (!v161)
    {
      v153 = v157;
      goto LABEL_93;
    }

    [v161 addDecorator:v159];
    v153 = v157;
    goto LABEL_91;
  }

  v27 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay;
  v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] = 1;
  v28 = &selRef_tailLineEndAngle;
  v29 = [v5 view];
  [v29 removeFromSuperview];

  if (v179)
  {
    v30 = v179;
    v31 = [v5 view];
    if (v31)
    {
      v32 = v31;
      [v30 addSubview:v31];

      v28 = &selRef_tailLineEndAngle;
      goto LABEL_12;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_12:
  if ((a2 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v34 = [v5 traitCollection];
    if ([objc_opt_self() crl_phoneUI])
    {
    }

    else
    {
      v40 = [v34 crl_isCompactWidth];

      if (!v40)
      {
        v49 = [v5 view];
        if (v49)
        {
          v50 = v49;
          v51 = [v5 view];
          if (v51)
          {
            v52 = v51;
            [v51 frame];
            v54 = v53;
            v56 = v55;

            [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
            [v50 setFrame:{v54, v56, v57, v58}];

            sub_100A6FED4();
            v169 = objc_opt_self();
            [v169 begin];
            v178 = "rSelectionPathChange(from:to:)";
            v59 = String._bridgeToObjectiveC()();
            a2 = &selRef_allowResizeDelegate;
            v177 = objc_opt_self();
            v60 = [v177 animationWithKeyPath:v59];

            [v60 setMass:1.0];
            [v60 setStiffness:500.0];
            [v60 setDamping:33.0];
            [v60 setInitialVelocity:0.0];
            v61 = v60;
            [v61 settlingDuration];
            [v61 setDuration:?];

            v20 = v61;
            isa = Double._bridgeToObjectiveC()().super.super.isa;
            [v20 setFromValue:isa];

            v63 = Double._bridgeToObjectiveC()().super.super.isa;
            [v20 setToValue:v63];

            v64 = [v5 view];
            if (v64)
            {
              v65 = v64;
              v66 = [v64 layer];

              v67 = String._bridgeToObjectiveC()();
              [v66 addAnimation:v20 forKey:v67];

              v68 = String._bridgeToObjectiveC()();
              v69 = [objc_opt_self() animationWithKeyPath:v68];

              v70 = objc_allocWithZone(CAMediaTimingFunction);
              v28 = v69;
              LODWORD(v71) = 1045220557;
              LODWORD(v72) = 0.25;
              LODWORD(v73) = 1.0;
              v74 = [v70 initWithControlPoints:v71 :0.0 :v72 :v73];
              [(SEL *)v28 setTimingFunction:v74];

              [(SEL *)v28 setDuration:0.08];
              v75 = Int._bridgeToObjectiveC()().super.super.isa;
              [(SEL *)v28 setFromValue:v75];

              v76 = Double._bridgeToObjectiveC()().super.super.isa;
              [(SEL *)v28 setToValue:v76];

              v77 = [v5 view];
              if (v77)
              {
                v78 = v77;
                v79 = [v77 layer];

                v80 = String._bridgeToObjectiveC()();
                [v79 addAnimation:v28 forKey:v80];

                v81 = [v5 view];
                if (v81)
                {
                  v82 = v81;
                  v83 = [v81 layer];

                  [v83 convertTime:0 fromLayer:CACurrentMediaTime()];
                  v4 = v84;

                  v36 = *&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay];
                  v27 = &selRef_allowResizeDelegate;
                  v85 = [v36 arrangedSubviews];
                  sub_100006370(0, &qword_1019F6D00);
                  v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  if (v86 >> 62)
                  {
                    goto LABEL_97;
                  }

                  v37 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  goto LABEL_41;
                }

                goto LABEL_108;
              }

LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_104:
        __break(1u);
        goto LABEL_105;
      }
    }

    v41 = [v5 view];
    if (v41)
    {
      v42 = v41;
      [v41 setHidden:1];

      sub_100006370(0, &qword_1019F2D90);
      v43 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v173 = v173[1];
      (v173)(v16, v178);
      v44 = swift_allocObject();
      *(v44 + 16) = v5;
      *&aBlock.tx = sub_100A7152C;
      *&aBlock.ty = v44;
      *&aBlock.a = _NSConcreteStackBlock;
      aBlock.b = *"";
      v45 = &unk_101893118;
LABEL_33:
      *&aBlock.c = sub_100007638;
      *&aBlock.d = v45;
      v46 = _Block_copy(&aBlock);
      v47 = v5;

      static DispatchQoS.unspecified.getter();
      *&aBlock.a = _swiftEmptyArrayStorage;
      sub_100A71534(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v48 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v46);

      (*(v176 + 8))(v11, v48);
      (*(v174 + 8))(v14, v175);
      (v173)(v20, v178);
      goto LABEL_81;
    }

    goto LABEL_102;
  }

  if (!UIAccessibilityIsReduceMotionEnabled() || !UIAccessibilityPrefersCrossFadeTransitions())
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {
      v35 = [v5 traitCollection];
      if ([objc_opt_self() crl_phoneUI])
      {
      }

      else
      {
        v101 = [v35 crl_isCompactWidth];

        if (!v101)
        {
          v113 = [v5 view];
          if (!v113)
          {
LABEL_111:
            __break(1u);
            goto LABEL_112;
          }

          v114 = v113;
          v115 = [v5 view];
          if (!v115)
          {
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          v116 = v115;
          [v115 frame];
          v118 = v117;
          v120 = v119;

          [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
          [v114 setFrame:{v118, v120, v121, v122}];

          sub_100A6FED4();
          goto LABEL_68;
        }
      }

      sub_100006370(0, &qword_1019F2D90);
      v102 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v173 = v173[1];
      (v173)(v16, v178);
      v103 = swift_allocObject();
      *(v103 + 16) = v5;
      *&aBlock.tx = sub_100A7157C;
      *&aBlock.ty = v103;
      *&aBlock.a = _NSConcreteStackBlock;
      aBlock.b = *"";
      *&aBlock.c = sub_100007638;
      *&aBlock.d = &unk_101893168;
      v104 = _Block_copy(&aBlock);
      v105 = v5;

      static DispatchQoS.unspecified.getter();
      *&aBlock.a = _swiftEmptyArrayStorage;
      sub_100A71534(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400);
      sub_10000D494();
      v106 = v177;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v104);

      (*(v176 + 8))(v11, v106);
      (*(v174 + 8))(v14, v175);
      (v173)(v20, v178);
      v28 = &selRef_tailLineEndAngle;
LABEL_68:
      v123 = [v5 v28[510]];
      if (v123)
      {
        v124 = v123;
        [v123 setHidden:0];

        goto LABEL_81;
      }

      goto LABEL_103;
    }

LABEL_23:
    *(v27 + v5) = 0;
    if ((a3 & 1) == 0)
    {
      goto LABEL_81;
    }

    v36 = [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v37 >> 62)
    {
      goto LABEL_77;
    }

    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      while ((v37 & 0xC000000000000001) == 0)
      {
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v38 = *(v37 + 32);
LABEL_29:
          v39 = v38;
          goto LABEL_79;
        }

        __break(1u);
LABEL_97:
        v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_41:
        v168 = v20;

        v36 = [v36 v27[151]];
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v87 >> 62)
        {
          v27 = _CocoaArrayWrapper.endIndex.getter();
          if (!v27)
          {
LABEL_99:

            v165 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *&aBlock.tx = sub_100A71524;
            *&aBlock.ty = v165;
            *&aBlock.a = _NSConcreteStackBlock;
            aBlock.b = *"";
            *&aBlock.c = sub_100007638;
            *&aBlock.d = &unk_1018930C8;
            v166 = _Block_copy(&aBlock);

            v167 = v169;
            [v169 setCompletionBlock:v166];
            _Block_release(v166);
            [v167 commit];

            goto LABEL_81;
          }
        }

        else
        {
          v27 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v27)
          {
            goto LABEL_99;
          }
        }

        v20 = 0;
        v176 = v87 & 0xC000000000000001;
        v174 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_numberOfButtons;
        v175 = v87 & 0xFFFFFFFFFFFFFF8;
        v173 = kCAFillModeForwards;
        v170 = (v37 - 1);
        v88 = __OFSUB__(v37, 1);
        v171 = v88;
        v4 = v4 + 0.05;
        v172 = "transform.scale.xy";
        while (1)
        {
          if (v176)
          {
            v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *(v175 + 16))
            {
              goto LABEL_75;
            }

            v95 = *(v87 + 8 * v20 + 32);
          }

          v37 = v95;
          v96 = (v20 + 1);
          if (__OFADD__(v20, 1))
          {
            break;
          }

          [v95 transform];
          CGAffineTransformScale(&v180, &aBlock, 0.75, 0.75);
          aBlock = v180;
          [v37 setTransform:&aBlock];
          v97 = String._bridgeToObjectiveC()();
          v98 = [v177 a2[79]];

          [v98 setMass:1.0];
          [v98 setStiffness:500.0];
          [v98 setDamping:33.0];
          [v98 setInitialVelocity:0.0];
          v99 = v98;
          [v99 settlingDuration];
          [v99 setDuration:?];
          v36 = v99;
          v100 = Double._bridgeToObjectiveC()().super.super.isa;
          [v36 setFromValue:v100];

          a2 = Double._bridgeToObjectiveC()().super.super.isa;
          [v36 setToValue:a2];

          [v36 setRemovedOnCompletion:0];
          [v36 setFillMode:v173];
          if (*&v5[v174] >= 3)
          {
            if (!v20)
            {
              goto LABEL_47;
            }

            if (v171)
            {
              goto LABEL_76;
            }

            if (v170 == v20)
            {
LABEL_47:
              [v36 setBeginTime:v4];
            }
          }

          v89 = [v37 layer];
          v90 = v5;
          v91 = v87;
          v92 = v27;
          v93 = v28;
          v94 = String._bridgeToObjectiveC()();
          [v89 addAnimation:v36 forKey:v94];

          v28 = v93;
          v27 = v92;
          v87 = v91;
          v5 = v90;
          ++v20;
          a2 = &selRef_allowResizeDelegate;
          if (v96 == v27)
          {
            goto LABEL_99;
          }
        }

        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_78;
        }
      }

      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_29;
    }

LABEL_78:
    v39 = 0;
LABEL_79:
    v151 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v151, v39);
LABEL_80:

    goto LABEL_81;
  }

  v33 = [v5 traitCollection];
  if ([objc_opt_self() crl_phoneUI])
  {

    goto LABEL_62;
  }

  v107 = [v33 crl_isCompactWidth];

  if (v107)
  {
LABEL_62:
    v108 = [v5 view];
    if (v108)
    {
      v109 = v108;
      [v108 setHidden:0];

      v110 = [v5 view];
      if (v110)
      {
        v111 = v110;
        [v110 setAlpha:0.0];

        sub_100006370(0, &qword_1019F2D90);
        v43 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        + infix(_:_:)();
        v173 = v173[1];
        (v173)(v16, v178);
        v112 = swift_allocObject();
        *(v112 + 16) = v5;
        *&aBlock.tx = sub_100A7158C;
        *&aBlock.ty = v112;
        *&aBlock.a = _NSConcreteStackBlock;
        aBlock.b = *"";
        v45 = &unk_1018931E0;
        goto LABEL_33;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v125 = [v5 view];
  if (!v125)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v126 = v125;
  v127 = [v5 view];
  if (!v127)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v128 = v127;
  [v127 frame];
  v130 = v129;
  v132 = v131;

  [*&v5[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v126 setFrame:{v130, v132, v133, v134}];

  sub_100A6FED4();
  v135 = objc_opt_self();
  [v135 begin];
  v136 = String._bridgeToObjectiveC()();
  v137 = [objc_opt_self() animationWithKeyPath:v136];

  v138 = objc_allocWithZone(CAMediaTimingFunction);
  v39 = v137;
  LODWORD(v139) = 1045220557;
  LODWORD(v140) = 0.25;
  LODWORD(v141) = 1.0;
  v142 = [v138 initWithControlPoints:v139 :0.0 :v140 :v141];
  [v39 setTimingFunction:v142];

  [v39 setDuration:0.8];
  v143 = Int._bridgeToObjectiveC()().super.super.isa;
  [v39 setFromValue:v143];

  v144 = Double._bridgeToObjectiveC()().super.super.isa;
  [v39 setToValue:v144];

  v145 = [v5 view];
  if (v145)
  {
    v146 = v145;
    v147 = [v145 layer];

    v148 = String._bridgeToObjectiveC()();
    [v147 addAnimation:v39 forKey:v148];

    v149 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *&aBlock.tx = sub_100A71584;
    *&aBlock.ty = v149;
    *&aBlock.a = _NSConcreteStackBlock;
    aBlock.b = *"";
    *&aBlock.c = sub_100007638;
    *&aBlock.d = &unk_101893190;
    v150 = _Block_copy(&aBlock);

    [v135 setCompletionBlock:v150];
    _Block_release(v150);
    [v135 commit];
    goto LABEL_80;
  }

LABEL_115:
  __break(1u);
}

void sub_100A6DDEC(char *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [a1 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;

  [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  [v3 setFrame:{v7, v9, v10, v11}];

  sub_100A6FED4();
  v12 = [a1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [a1 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  [v22 setFrame:{v15, v17 + 100.0, v19, v21}];

  v24 = [a1 view];
  if (v24)
  {
    v25 = v24;
    [v24 setHidden:0];

    v26 = swift_allocObject();
    *(v26 + 16) = a1;
    *(v26 + 24) = v15;
    *(v26 + 32) = v17;
    *(v26 + 40) = v19;
    *(v26 + 48) = v21;
    v27 = objc_allocWithZone(UIViewPropertyAnimator);
    v38 = sub_100A715B0;
    v39 = v26;
    v34 = _NSConcreteStackBlock;
    v35 = *"";
    v36 = sub_100007638;
    v37 = &unk_1018932D0;
    v28 = _Block_copy(&v34);
    v29 = a1;

    v30 = [v27 initWithDuration:v28 dampingRatio:0.35 animations:0.6];
    _Block_release(v28);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v38 = sub_100A7168C;
    v39 = v31;
    v34 = _NSConcreteStackBlock;
    v35 = *"";
    v36 = sub_100FB5BB8;
    v37 = &unk_101893320;
    v32 = _Block_copy(&v34);
    v33 = v29;

    [v30 addCompletion:v32];
    _Block_release(v32);
    [v30 startAnimation];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100A6E11C(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setFrame:{a2, a3, a4, a5}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A6E1A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay;
  v3 = [*(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_10:
  v7 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v7, v6);

  v8 = [*&v1[v2] arrangedSubviews];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = 0;
    v16 = *&CGAffineTransformIdentity.c;
    v17 = *&CGAffineTransformIdentity.a;
    v15 = *&CGAffineTransformIdentity.tx;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v18[0] = v17;
      v18[1] = v16;
      v18[2] = v15;
      [v12 setTransform:v18];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
}

void sub_100A6E3EC(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;

      [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v3 setFrame:{v7, v9, v10, v11}];

      sub_100A6FED4();
      v12 = swift_allocObject();
      *(v12 + 16) = a1;
      v13 = objc_allocWithZone(UIViewPropertyAnimator);
      v24 = sub_100A71670;
      v25 = v12;
      v20 = _NSConcreteStackBlock;
      v21 = *"";
      v22 = sub_100007638;
      v23 = &unk_101893230;
      v14 = _Block_copy(&v20);
      v15 = a1;

      v16 = [v13 initWithDuration:v14 dampingRatio:0.85 animations:0.6];
      _Block_release(v14);
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      v24 = sub_100A71594;
      v25 = v17;
      v20 = _NSConcreteStackBlock;
      v21 = *"";
      v22 = sub_100FB5BB8;
      v23 = &unk_101893280;
      v18 = _Block_copy(&v20);
      v19 = v15;

      [v16 addCompletion:v18];
      _Block_release(v18);
      [v16 startAnimation];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100A6E658(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay) = 0;
  v2 = [*(a2 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_8:
    argument = 0;
    goto LABEL_9;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  argument = v4;
LABEL_9:
  v5 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v5, argument);
}

void sub_100A6E770()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay) arrangedSubviews];
    sub_100006370(0, &qword_1019F6D00);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v4 = *(v3 + 32);
      }

      v5 = v4;
      goto LABEL_10;
    }

    v5 = 0;
LABEL_10:
    v6 = UIAccessibilityLayoutChangedNotification;

    UIAccessibilityPostNotification(v6, v5);
  }
}

void sub_100A6E8A0(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;

      [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_contentView] systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
      [v3 setFrame:{v7, v9, v10, v11}];

      sub_100A6FED4();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100A6E974(char a1, char a2)
{
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_59;
  }

  v6 = v5;
  v7 = [v5 isUserInteractionEnabled];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled:0];

  v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] = 1;
  v10 = [v2 traitCollection];
  v11 = objc_opt_self();
  v12 = &selRef_concreteClass;
  if ([v11 crl_phoneUI])
  {
  }

  else
  {
    v13 = [v10 crl_isCompactWidth];

    if ((v13 & 1) == 0)
    {
      v20 = *&v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
      if (!v20)
      {
        goto LABEL_16;
      }

      v21 = *&v20[OBJC_IVAR____TtC8Freeform37CRLRepTrackingMiniFormatterViewHelper_reps];

      v17 = v20;
      v22 = sub_100BC17E0(v21);

      v19 = [v22 interactiveCanvasController];

      if (!v19)
      {
        goto LABEL_15;
      }

      [v19 removeDecorator:v17];
      goto LABEL_13;
    }
  }

  v14 = *&v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_fixedPositionDynamicOperationViewHelper];
  if (v14)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_reps);
      v17 = v14;
      v18 = sub_100BC17E0(v16);
      v19 = [v18 interactiveCanvasController];
      swift_unknownObjectRelease();

      if (!v19)
      {
        v12 = &selRef_concreteClass;
        goto LABEL_15;
      }

      [v19 removeDecorator:v17];
      v12 = &selRef_concreteClass;
LABEL_13:

LABEL_15:
    }
  }

LABEL_16:
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  v24 = a2 & 1;
  *(v23 + 24) = v24;
  *(v23 + 25) = v7;
  v25 = v2;
  if ((a1 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v30 = [v25 view];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 layer];

      [v32 removeAllAnimations];
      v33 = [v25 traitCollection];
      if ([v11 v12[431]])
      {
      }

      else
      {
        v34 = [v33 crl_isCompactWidth];

        if (!v34)
        {
          v43 = objc_opt_self();
          [v43 begin];
          v129 = sub_100A714D4;
          v130 = v23;
          aBlock = _NSConcreteStackBlock;
          v126 = *"";
          v127 = sub_100007638;
          v128 = &unk_101892EC0;
          v44 = _Block_copy(&aBlock);

          v124 = v43;
          [v43 setCompletionBlock:v44];
          _Block_release(v44);
          v45 = String._bridgeToObjectiveC()();
          v46 = objc_opt_self();
          v47 = [v46 animationWithKeyPath:v45];

          v48 = objc_allocWithZone(CAMediaTimingFunction);
          v49 = v47;
          LODWORD(v50) = 1045220557;
          LODWORD(v51) = 0.25;
          LODWORD(v52) = 1.0;
          v53 = [v48 initWithControlPoints:v50 :0.0 :v51 :v52];
          [v49 setTimingFunction:v53];

          [v49 setDuration:0.15];
          isa = Double._bridgeToObjectiveC()().super.super.isa;
          [v49 setFromValue:isa];

          v55 = Double._bridgeToObjectiveC()().super.super.isa;
          [v49 setToValue:v55];

          v56 = [v25 view];
          if (v56)
          {
            v57 = v56;
            v58 = v25;
            v59 = [v56 layer];

            v60 = String._bridgeToObjectiveC()();
            v61 = v49;
            [v59 addAnimation:v49 forKey:v60];

            v62 = String._bridgeToObjectiveC()();
            v63 = [v46 animationWithKeyPath:v62];

            v64 = objc_allocWithZone(CAMediaTimingFunction);
            v65 = v63;
            LODWORD(v66) = 1045220557;
            LODWORD(v67) = 0.25;
            LODWORD(v68) = 1.0;
            v69 = [v64 initWithControlPoints:v66 :0.0 :v67 :v68];
            [v65 setTimingFunction:v69];

            [v65 setDuration:0.15];
            v70 = [v58 view];
            if (v70)
            {
              v71 = v70;
              [v70 alpha];

              v72 = CGFloat._bridgeToObjectiveC()().super.super.isa;
              [v65 setFromValue:v72];

              v73 = Double._bridgeToObjectiveC()().super.super.isa;
              [v65 setToValue:v73];

              [v65 setFillMode:kCAFillModeForwards];
              [v65 setRemovedOnCompletion:0];

              v74 = [v58 view];
              if (v74)
              {
                v75 = v74;
                v76 = [v74 layer];

                v77 = String._bridgeToObjectiveC()();
                [v76 addAnimation:v65 forKey:v77];

                v78 = [*&v58[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] arrangedSubviews];
                sub_100006370(0, &qword_1019F6D00);
                v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v80 = v61;
                if (v79 >> 62)
                {
                  goto LABEL_55;
                }

                for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
                {
                  v82 = 0;
                  while (1)
                  {
                    if ((v79 & 0xC000000000000001) != 0)
                    {
                      v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v82 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_54;
                      }

                      v83 = *(v79 + 8 * v82 + 32);
                    }

                    v84 = v83;
                    v80 = (v82 + 1);
                    if (__OFADD__(v82, 1))
                    {
                      break;
                    }

                    aBlock = v83;
                    sub_100A6FBD8(&aBlock);

                    ++v82;
                    v85 = v80 == i;
                    v80 = v61;
                    if (v85)
                    {
                      goto LABEL_56;
                    }
                  }

                  __break(1u);
LABEL_54:
                  __break(1u);
LABEL_55:
                  ;
                }

LABEL_56:

                v122 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v129 = sub_100A714E4;
                v130 = v122;
                aBlock = _NSConcreteStackBlock;
                v126 = *"";
                v127 = sub_100007638;
                v128 = &unk_101892F10;
                v123 = _Block_copy(&aBlock);

                [v124 setCompletionBlock:v123];
                _Block_release(v123);
                [v124 commit];

                goto LABEL_57;
              }

LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      v35 = objc_opt_self();
      v36 = UINavigationControllerHideShowBarDuration;
      v37 = swift_allocObject();
      *(v37 + 16) = v25;
      v129 = sub_100A71500;
      v130 = v37;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101892F60;
      v38 = _Block_copy(&aBlock);
      v39 = v25;

      v40 = swift_allocObject();
      *(v40 + 16) = sub_100A714D4;
      *(v40 + 24) = v23;
      v129 = sub_10002AAEC;
      v130 = v40;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v41 = &unk_101892FB0;
LABEL_31:
      v127 = sub_1005CC4AC;
      v128 = v41;
      v42 = _Block_copy(&aBlock);

      [v35 animateWithDuration:v38 animations:v42 completion:v36];

      _Block_release(v42);
      _Block_release(v38);
      return;
    }

    goto LABEL_60;
  }

  if (UIAccessibilityIsReduceMotionEnabled() && UIAccessibilityPrefersCrossFadeTransitions())
  {
    v26 = [v25 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 layer];

      [v28 removeAllAnimations];
      v29 = [v25 traitCollection];
      if ([v11 v12[431]])
      {

        goto LABEL_47;
      }

      v86 = [v29 crl_isCompactWidth];

      if (v86)
      {
LABEL_47:
        v87 = [v25 view];
        if (v87)
        {
          v88 = v87;
          [v87 frame];
          v90 = v89;
          v92 = v91;
          v94 = v93;
          v96 = v95;

          v97 = [v25 view];
          if (v97)
          {
            v98 = v97;
            [v97 setFrame:{v90, v92 + 100.0, v94, v96}];

            v35 = objc_opt_self();
            v36 = UINavigationControllerHideShowBarDuration;
            v99 = swift_allocObject();
            *(v99 + 16) = v25;
            v129 = sub_100A71508;
            v130 = v99;
            aBlock = _NSConcreteStackBlock;
            v126 = *"";
            v127 = sub_100007638;
            v128 = &unk_101893050;
            v38 = _Block_copy(&aBlock);
            v100 = v25;

            v101 = swift_allocObject();
            *(v101 + 16) = sub_100A714D4;
            *(v101 + 24) = v23;
            v129 = sub_100A71688;
            v130 = v101;
            aBlock = _NSConcreteStackBlock;
            v126 = *"";
            v41 = &unk_1018930A0;
            goto LABEL_31;
          }

          goto LABEL_66;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v102 = objc_opt_self();
      [v102 begin];
      v129 = sub_100A714D4;
      v130 = v23;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101892FD8;
      v103 = _Block_copy(&aBlock);

      [v102 setCompletionBlock:v103];
      _Block_release(v103);
      v104 = String._bridgeToObjectiveC()();
      v105 = [objc_opt_self() animationWithKeyPath:v104];

      v106 = objc_allocWithZone(CAMediaTimingFunction);
      v107 = v105;
      LODWORD(v108) = 1045220557;
      LODWORD(v109) = 0.25;
      LODWORD(v110) = 1.0;
      v111 = [v106 initWithControlPoints:v108 :0.0 :v109 :v110];
      [v107 setTimingFunction:v111];

      [v107 setDuration:0.8];
      v112 = [v25 view];
      if (!v112)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v113 = v112;
      [v112 alpha];

      v114 = CGFloat._bridgeToObjectiveC()().super.super.isa;
      [v107 setFromValue:v114];

      v115 = Double._bridgeToObjectiveC()().super.super.isa;
      [v107 setToValue:v115];

      [v107 setFillMode:kCAFillModeForwards];
      [v107 setRemovedOnCompletion:0];

      v116 = [v25 view];
      if (!v116)
      {
LABEL_68:
        __break(1u);
        return;
      }

      v117 = v116;
      v118 = [v116 layer];

      v119 = String._bridgeToObjectiveC()();
      [v118 addAnimation:v107 forKey:v119];

      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v129 = sub_100A71640;
      v130 = v120;
      aBlock = _NSConcreteStackBlock;
      v126 = *"";
      v127 = sub_100007638;
      v128 = &unk_101893000;
      v121 = _Block_copy(&aBlock);

      [v102 setCompletionBlock:v121];
      _Block_release(v121);
      [v102 commit];

LABEL_57:

      return;
    }

    goto LABEL_61;
  }

LABEL_23:
  sub_100A6F9F8(v25, v24, v7);
}

void sub_100A6F9F8(char *a1, char a2, char a3)
{
  [*&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay] removeFromSuperview];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 removeFromSuperview];

  [a1 removeFromParentViewController];
  a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] = 0;
  if (a2)
  {
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *&a1[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep]);
  }

  v8 = [a1 view];
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  [v8 setUserInteractionEnabled:a3 & 1];
}

void sub_100A6FB00(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [a1 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setFrame:{v5, v7 + 100.0, v9, v11}];
}

void sub_100A6FBD8(void **a1)
{
  v1 = *a1;
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  v4 = objc_allocWithZone(CAMediaTimingFunction);
  v5 = v3;
  LODWORD(v6) = 1045220557;
  LODWORD(v7) = 0.25;
  LODWORD(v8) = 1.0;
  v9 = [v4 initWithControlPoints:v6 :0.0 :v7 :v8];
  [v5 setTimingFunction:v9];

  [v5 setDuration:0.15];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setFromValue:isa];

  v11 = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:v11];

  v12 = [v1 layer];
  v13 = String._bridgeToObjectiveC()();
  [v12 addAnimation:v5 forKey:v13];
}

void sub_100A6FD84(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha:1.0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100A6FDE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep));
  }
}

void sub_100A6FED4()
{
  v1 = [v0 parentViewController];
  if (!v1)
  {
    return;
  }

  v60 = v1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        [v14 safeAreaInsets];
        v16 = v15;

        v17 = 20.0;
        if (v16 > 20.0)
        {
          v17 = v16;
        }
      }

      else
      {
        v17 = 20.0;
      }

      v18 = [v0 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 window];

        if (v20)
        {
          [v20 safeAreaInsets];
          v22 = v21;

          if (v22 > 20.0)
          {
            v23 = v22;
          }

          else
          {
            v23 = 20.0;
          }
        }

        else
        {
          v23 = 20.0;
        }

        v24 = [v0 traitCollection];
        v25 = objc_opt_self();
        if ([v25 crl_phoneUI])
        {
        }

        else
        {
          v26 = [v24 crl_isCompactWidth];

          if (!v26)
          {
            goto LABEL_23;
          }
        }

        if ([v25 crl_phoneUI] && objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape"))
        {
          v27 = [v0 view];
          if (v27)
          {
            v28 = v27;
            [v27 frame];
            v30 = v29;
            v32 = v31;

            v62.origin.x = v5;
            v62.origin.y = v7;
            v62.size.width = v9;
            v62.size.height = v11;
            Height = CGRectGetHeight(v62);
            v63.size.height = v11;
            v34 = Height;
            v63.origin.x = v5;
            v63.origin.y = v7;
            v63.size.width = v9;
            Width = CGRectGetWidth(v63);
            v36 = [v0 view];
            if (v36)
            {
              v37 = v36;
              [v36 setFrame:{Width - v30 - v23, v34 - v32 - v17 + -16.0, v30, v32}];
              goto LABEL_35;
            }

LABEL_47:
            __break(1u);
            return;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_23:
        v38 = [v0 traitCollection];
        if ([v25 crl_phoneUI])
        {
        }

        else
        {
          v39 = [v38 crl_isCompactWidth];

          if (!v39)
          {
LABEL_28:
            v40 = *&v0[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_repTrackingViewHelper];
            if (!v40)
            {
LABEL_36:

              goto LABEL_37;
            }

            v37 = v40;
            sub_10091C3B4();
LABEL_35:

            goto LABEL_36;
          }
        }

        if ([v25 crl_phoneUI] && (objc_msgSend(objc_opt_self(), "crl_deviceIsLandscape") & 1) != 0)
        {
          goto LABEL_28;
        }

        v41 = v11;
        v42 = [v0 view];
        if (v42)
        {
          v43 = v42;
          [v42 frame];
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v64.origin.x = v5;
          v64.origin.y = v7;
          v64.size.width = v9;
          v64.size.height = v41;
          v50 = CGRectGetHeight(v64);
          v51 = [v0 view];
          if (v51)
          {
            v52 = v51;
            [v51 setFrame:{v45, v50 - v49 - v17, v47, v49}];

            v53 = [v0 view];
            if (v53)
            {
              v37 = v53;
              [v3 center];
              v55 = v54;
              v56 = [v0 view];
              if (v56)
              {
                v57 = v56;
                [v56 center];
                v59 = v58;

                [v37 setCenter:{v55, v59}];
                goto LABEL_35;
              }

              goto LABEL_45;
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

LABEL_42:
        __break(1u);
        goto LABEL_43;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_37:
}