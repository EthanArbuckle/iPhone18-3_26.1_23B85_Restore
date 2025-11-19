void sub_10093A758(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, void *a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = a1;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = a2;
  *(v17 + 72) = a8;
  *(v17 + 80) = a9;
  v25[4] = sub_100967C80;
  v25[5] = v17;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = *"";
  v25[2] = sub_100007638;
  v25[3] = &unk_10188E750;
  v18 = _Block_copy(v25);
  v19 = a1;
  v20 = a7;
  v21 = a9;
  v22 = a3;

  v23 = v18;
  if (+[NSThread isMainThread])
  {
    v23[2](v23);
  }

  else
  {
    v24 = &_dispatch_main_q;
    dispatch_async(&_dispatch_main_q, v23);
  }

  _Block_release(v23);
}

void sub_10093A8C8(uint64_t a1, char *a2, uint64_t a3, char *a4, char a5, char *a6, int a7, uint64_t a8)
{
  v77 = a8;
  v78 = a7;
  v80 = a6;
  v13 = sub_1005B981C(&unk_1019FFD10);
  v76 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v73 - v14;
  v16 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  if (!*(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1008346E4(a2, a3);
  if (!a4)
  {
    return;
  }

  v22 = a4;
  if (a5)
  {
    v23 = *&a4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (!v23)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v24 = *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v74 = *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v75 = v24;
    v25 = *(v79 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
    (*(*v23 + 896))();
    sub_1005E0A78(&v18[*(v16 + 20)], v21);
    v26 = a4;
    v73 = v25;
    sub_1009625A4(v18, type metadata accessor for CRLWPShapeItemCRDTData);
    v27 = v76;
    (*(v76 + 16))(v15, v21, v13);
    sub_1009625A4(v21, type metadata accessor for CRLWPStorageCRDTData);
    v28 = CRAttributedString.attributedString.getter();
    (*(v27 + 8))(v15, v13);
    v29 = [v28 string];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = type metadata accessor for CRLWPPasteTextCommand();
    v34 = objc_allocWithZone(v33);
    v35 = &v34[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString];
    v36 = [objc_opt_self() mainBundle];
    v37 = v22;
    v38 = String._bridgeToObjectiveC()();
    v39 = String._bridgeToObjectiveC()();
    v40 = [v36 localizedStringForKey:v38 value:v39 table:0];

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    *v35 = v41;
    v35[1] = v43;
    v44 = v74;
    *&v34[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem] = v73;
    v45 = &v34[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData];
    v46 = v75;
    *v45 = v44;
    *(v45 + 1) = v46;
    *(v45 + 2) = v30;
    *(v45 + 3) = v32;
    v45[32] = 0;
    v34[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste] = v78 & 1;
    v81 = v34;
    v47 = &v81;
  }

  else
  {
    v48 = *(v79 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
    v49 = *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v76 = *&v80[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v33 = type metadata accessor for CRLWPPasteTextCommand();
    v50 = objc_allocWithZone(v33);
    v51 = &v50[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString];
    v52 = objc_opt_self();
    v53 = a4;
    v54 = v48;
    v55 = [v52 mainBundle];
    v56 = String._bridgeToObjectiveC()();
    v57 = String._bridgeToObjectiveC()();
    v58 = [v55 localizedStringForKey:v56 value:v57 table:0];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    *v51 = v59;
    v51[1] = v61;
    v37 = a4;
    *&v50[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem] = v54;
    v62 = &v50[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData];
    *v62 = v76;
    *(v62 + 1) = v49;
    *(v62 + 2) = a4;
    *(v62 + 3) = 0;
    v62[32] = 2;
    v50[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste] = v78 & 1;
    v82.receiver = v50;
    v47 = &v82;
  }

  v47->super_class = v33;
  v63 = [(objc_super *)v47 init];
  v64 = v80;
  v65 = [v80 start];
  v66 = *&v65[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v66 != NSNotFound.getter())
  {
    v67 = *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v69 = *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v68 = v69 - v67;
    if (!__OFSUB__(v69, v67))
    {
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_15;
  }

  v67 = 0x7FFFFFFFFFFFFFFFLL;
  v68 = 0;
LABEL_10:
  v70 = sub_10093B968(v67, v68, v77);
  if (v70)
  {
    v71 = v70;
    v72 = v70;
    sub_100888700(v63, 0, v71, 4, 0);

    v37 = v72;
  }
}

void sub_10093AF14(void *a1, char a2, char a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if (a1)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a3 & 1;
    *(v14 + 24) = a1;
    *(v14 + 32) = a4;
    *(v14 + 40) = a5;
    *(v14 + 48) = a2 & 1;
    *(v14 + 56) = a6;
    *(v14 + 64) = a7;
    v22[4] = sub_100967CBC;
    v22[5] = v14;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = *"";
    v22[2] = sub_100007638;
    v22[3] = &unk_10188E7A0;
    v15 = _Block_copy(v22);
    v16 = a1;
    v17 = a4;
    v18 = a5;
    v19 = a7;

    v20 = v15;
    if (+[NSThread isMainThread])
    {
      v20[2](v20);
    }

    else
    {
      v21 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v20);
    }

    _Block_release(v20);
  }
}

void sub_10093B084(char a1, id a2, uint64_t a3, char *a4, char a5, uint64_t a6)
{
  if (a1)
  {
    v9 = [a2 string];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v11;
    v53 = v10;

    v12 = *(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
    v13 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v49 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v14 = type metadata accessor for CRLWPPasteTextCommand();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString];
    v17 = objc_opt_self();
    v18 = v12;
    v19 = [v17 mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *v16 = v23;
    v16[1] = v25;
    *&v15[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem] = v18;
    v26 = &v15[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData];
    *v26 = v49;
    *(v26 + 1) = v13;
    *(v26 + 2) = v53;
    *(v26 + 3) = v51;
    v26[32] = 0;
    v15[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste] = a5 & 1;
    v57.receiver = v15;
    v57.super_class = v14;
    v27 = objc_msgSendSuper2(&v57, "init", v49);
  }

  else
  {
    v52 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v54 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v50 = *(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
    [a2 mutableCopy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100006370(0, &unk_101A09740);
    swift_dynamicCast();
    v28 = v59;
    v29 = type metadata accessor for CRLWPPasteTextCommand();
    v30 = objc_allocWithZone(v29);
    v31 = &v30[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString];
    v32 = [objc_opt_self() mainBundle];
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();
    v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    *v31 = v36;
    v31[1] = v38;
    *&v30[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem] = v50;
    v39 = &v30[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData];
    *v39 = v54;
    *(v39 + 1) = v52;
    *(v39 + 2) = v28;
    *(v39 + 3) = 0;
    v39[32] = 1;
    v30[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste] = a5 & 1;
    v58.receiver = v30;
    v58.super_class = v29;
    v27 = objc_msgSendSuper2(&v58, "init", v50);
  }

  v40 = v27;
  v41 = [a4 start];
  v42 = *&v41[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v42 == NSNotFound.getter())
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
    v44 = 0;
  }

  else
  {
    v43 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v45 = *&a4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v44 = v45 - v43;
    if (__OFSUB__(v45, v43))
    {
      __break(1u);
      return;
    }
  }

  v46 = sub_10093B968(v43, v44, a6);
  if (v46)
  {
    v47 = v46;
    v48 = v46;
    sub_100888700(v40, 0, v47, 4, 0);
  }
}

void sub_10093B4B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_10093B52C(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if (a2)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a4;
    *(v14 + 24) = a5;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 48) = a3 & 1;
    *(v14 + 56) = a6;
    *(v14 + 64) = a7;
    v21[4] = sub_100967CD4;
    v21[5] = v14;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = *"";
    v21[2] = sub_100007638;
    v21[3] = &unk_10188E7F0;
    v15 = _Block_copy(v21);

    v16 = a4;
    v17 = a5;
    v18 = a7;

    v19 = v15;
    if (+[NSThread isMainThread])
    {
      v19[2](v19);
    }

    else
    {
      v20 = &_dispatch_main_q;
      dispatch_async(&_dispatch_main_q, v19);
    }

    _Block_release(v19);
  }
}

void sub_10093B68C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  v8 = &a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v32 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v33 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v9 = type metadata accessor for CRLWPPasteTextCommand();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_actionString];
  v12 = objc_opt_self();
  v13 = v7;

  v14 = [v12 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *v11 = v18;
  v11[1] = v20;
  *&v10[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_shapeItem] = v13;
  v21 = &v10[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_pasteData];
  *v21 = v33;
  *(v21 + 1) = v32;
  *(v21 + 2) = a3;
  *(v21 + 3) = a4;
  v21[32] = 0;
  v10[OBJC_IVAR____TtC8Freeform21CRLWPPasteTextCommand_isSmartPaste] = a5;
  v37.receiver = v10;
  v37.super_class = v9;
  v22 = objc_msgSendSuper2(&v37, "init");
  v23 = [a2 start];
  v24 = *&v23[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v24 == NSNotFound.getter())
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v26 = 0;
  }

  else
  {
    v25 = *v8;
    v27 = v8[1];
    v26 = v27 - *v8;
    if (__OFSUB__(v27, *v8))
    {
      __break(1u);
      return;
    }
  }

  v28 = sub_10093B968(v25, v26, a6);
  if (v28)
  {
    v29 = v28;
    v30 = v28;
    sub_100888700(v22, 0, v29, 4, 0);
  }
}

uint64_t sub_10093B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4(v5, v7, a3);
}

id sub_10093B968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v8 = Strong;
  result = [Strong selectionModelTranslator];
  if (!result)
  {

LABEL_8:
    v15 = objc_opt_self();
    v16 = [v15 _atomicIncrementAssertCount];
    v68[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v68);
    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v25 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v26;
    *(inited + 72) = v17;
    *(inited + 136) = &type metadata for String;
    v27 = sub_1000053B0();
    *(inited + 112) = v20;
    *(inited + 120) = v22;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v27;
    *(inited + 152) = 730;
    v28 = v68[0];
    *(inited + 216) = v25;
    *(inited + 224) = v26;
    *(inited + 192) = v28;
    v29 = v17;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "Selection model translator is nil", 33, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v15 handleFailureInFunction:v35 file:v36 lineNumber:730 isFatal:0 format:v37 args:v34];

    return 0;
  }

  v10 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v11 = *(*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v67 = result;
  v12 = [result selectionPathForRange:a1 onStorage:a2 headCursorAffinity:v11 tailCursorAffinity:{1, 2}];
  if (!v12)
  {
LABEL_17:
    v66 = objc_opt_self();
    v44 = [v66 _atomicIncrementAssertCount];
    v68[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v68);
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    v47 = [v46 lastPathComponent];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v51 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_10146CA70;
    *(v52 + 56) = &type metadata for Int32;
    *(v52 + 64) = &protocol witness table for Int32;
    *(v52 + 32) = v44;
    v53 = sub_100006370(0, &qword_1019F4D30);
    *(v52 + 96) = v53;
    v54 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v52 + 104) = v54;
    *(v52 + 72) = v45;
    *(v52 + 136) = &type metadata for String;
    v55 = sub_1000053B0();
    *(v52 + 112) = v48;
    *(v52 + 120) = v50;
    *(v52 + 176) = &type metadata for UInt;
    *(v52 + 184) = &protocol witness table for UInt;
    *(v52 + 144) = v55;
    *(v52 + 152) = 736;
    v56 = v68[0];
    *(v52 + 216) = v53;
    *(v52 + 224) = v54;
    *(v52 + 192) = v56;
    v57 = v45;
    v58 = v56;
    v59 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v52);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v51, &_mh_execute_header, v60, "Couldn't create seletion behavior for paste command", 51, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v61 = swift_allocObject();
    v61[2] = 8;
    v61[3] = 0;
    v61[4] = 0;
    v61[5] = 0;
    v62 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v63 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v65 = String._bridgeToObjectiveC()();

    [v66 handleFailureInFunction:v63 file:v64 lineNumber:736 isFatal:0 format:v65 args:v62];

    return 0;
  }

  v13 = v12;
  if (a3 == 2)
  {
    v14 = v12;
LABEL_15:
    v41 = objc_allocWithZone(CRLCommandSelectionBehavior);
    v42 = v14;
    v43 = [v41 initWithCommitSelectionPath:v42 forwardSelectionPath:v13 reverseSelectionPath:v13 usePersistableCommitSelectionPath:1];

    return v43;
  }

  result = [v8 selectionModelTranslator];
  if (!result)
  {
LABEL_16:

    goto LABEL_17;
  }

  v38 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_22;
  }

  v39 = *(*(v3 + v10) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v39)
  {
    v40 = result;
    v14 = [result selectionPathForRange:v38 onStorage:0 headCursorAffinity:v39 tailCursorAffinity:{2, 2}];

    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_10093C23C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id, void, uint64_t, uint64_t))
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
    memset(v12, 0, sizeof(v12));
    v7 = a1;
  }

  v8 = [objc_opt_self() generalPasteboard];
  a4(v8, 0, v9, v10);

  return sub_10000CAAC(v12, &unk_1019F4D00);
}

void sub_10093C2F4(uint64_t a1, char a2)
{
  v5 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v68 - v9);
  v11 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v68 - v12;
  v14 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v14 - 8);
  v16 = &v68 - v15;
  sub_100960E34();
  if (v17)
  {
    v18 = [v17 selectedTextRange];
    if (v18)
    {
      v73 = v13;
      v74 = v18;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v20 = Strong;
        v21 = [Strong commandController];

        v72 = v21;
        if (v21)
        {
          sub_100939810(a1, a2 & 1);
          v22 = [*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
          v23 = objc_allocWithZone(CRLCommandSelectionBehavior);
          v71 = v22;
          v70 = [v23 initWithCommitSelectionPath:v22 forwardSelectionPath:v22 reverseSelectionPath:v22 usePersistableCommitSelectionPath:1];
          v24 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
          v25 = *&v74[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v68 = *&v74[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v69 = v25;
          v26 = sub_1005B981C(&qword_101A0D850);
          (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
          v27 = sub_1005B981C(&qword_101A06188);
          v28 = v73;
          (*(*(v27 - 8) + 56))(v73, 1, 1, v27);
          v29 = type metadata accessor for CRLWPTextString();
          v30 = objc_allocWithZone(v29);
          v31 = &v30[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
          *v31 = xmmword_101488C60;
          v31[16] = 0;
          v76.receiver = v30;
          v76.super_class = v29;
          v32 = v24;
          v33 = objc_msgSendSuper2(&v76, "init");
          v34 = type metadata accessor for CRLWPReplaceTextCommand(0);
          v35 = objc_allocWithZone(v34);
          v36 = v68;
          *v10 = v69;
          v10[1] = v36;
          v10[2] = v33;
          sub_10000BE14(v16, v10 + *(v5 + 64), &unk_101A0DAB0);
          sub_10000BE14(v28, v10 + *(v5 + 80), &unk_101A096B0);
          v37 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
          v38 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
          (*(*(v38 - 8) + 56))(&v35[v37], 1, 1, v38);
          v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
          v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
          *&v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v32;
          sub_10000BE14(v10, v7, &unk_101A0DAA0);
          v39 = *(v7 + 2);
          v40 = *(v5 + 64);
          v41 = *(v5 + 80);
          v42 = &v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
          *v42 = *v7;
          *(v42 + 2) = v39;
          sub_10003DFF8(&v7[v40], &v42[*(v5 + 64)], &unk_101A0DAB0);
          sub_10003DFF8(&v7[v41], &v42[*(v5 + 80)], &unk_101A096B0);
          v75.receiver = v35;
          v75.super_class = v34;
          v43 = objc_msgSendSuper2(&v75, "init");
          sub_10000CAAC(v10, &unk_101A0DAA0);
          sub_10000CAAC(v28, &unk_101A096B0);
          sub_10000CAAC(v16, &unk_101A0DAB0);
          v44 = v70;
          v45 = v70;
          v46 = v44;
          v47 = v72;
          sub_100888700(v43, 0, v46, 4, 0);

          v48 = v45;
          goto LABEL_10;
        }
      }
    }
  }

  v74 = objc_opt_self();
  v49 = [v74 _atomicIncrementAssertCount];
  v77 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v77);
  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  v52 = [v51 lastPathComponent];

  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v56 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v49;
  v58 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v58;
  v59 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v59;
  *(inited + 72) = v50;
  *(inited + 136) = &type metadata for String;
  v60 = sub_1000053B0();
  *(inited + 112) = v53;
  *(inited + 120) = v55;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v60;
  *(inited + 152) = 751;
  v61 = v77;
  *(inited + 216) = v58;
  *(inited + 224) = v59;
  *(inited + 192) = v61;
  v62 = v50;
  v63 = v61;
  v64 = static os_log_type_t.error.getter();
  sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v65 = static os_log_type_t.error.getter();
  sub_100005404(v56, &_mh_execute_header, v65, "No text selection range to cut().", 33, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v66 = swift_allocObject();
  v66[2] = 8;
  v66[3] = 0;
  v66[4] = 0;
  v66[5] = 0;
  v67 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v43 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v74 handleFailureInFunction:v43 file:v45 lineNumber:751 isFatal:0 format:v48 args:v67];

LABEL_10:
}

uint64_t sub_10093CC50(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019FFD10);
  v58 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v54 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A09738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101488C70;
  *(inited + 32) = "deleteBackward:";
  *(inited + 40) = "replace:with:";
  *(inited + 48) = "keyInputReceiver";
  *(inited + 56) = "textInputReceiver";
  *(inited + 64) = "moveRightAndModifySelection:";
  *(inited + 72) = "moveLeftAndModifySelection:";
  *(inited + 80) = "deleteToBeginningOfLine:";
  *(inited + 88) = "complete:";
  *(inited + 96) = "capitalizeWord:";
  *(inited + 104) = "uppercaseWord:";
  *(inited + 112) = "lowercaseWord:";
  *(inited + 120) = "moveToBeginningOfDocument:";
  *(inited + 128) = "moveToBeginningOfDocumentAndModifySelection:";
  *(inited + 136) = "moveToEndOfDocument:";
  *(inited + 144) = "moveToEndOfDocumentAndModifySelection:";
  *(inited + 152) = "moveToBeginningOfParagraph:";
  *(inited + 160) = "moveToEndOfParagraph:";
  *(inited + 168) = "moveToBeginningOfParagraphAndModifySelection:";
  *(inited + 176) = "moveToEndOfParagraphAndModifySelection:";
  *(inited + 184) = "moveParagraphForward:";
  *(inited + 192) = "moveParagraphBackward:";
  *(inited + 200) = "moveParagraphForwardAndModifySelection:";
  *(inited + 208) = "moveParagraphBackwardAndModifySelection:";
  *(inited + 216) = "moveWordForward:";
  *(inited + 224) = "moveWordBackward:";
  *(inited + 232) = "moveWordForwardAndModifySelection:";
  *(inited + 240) = "moveWordBackwardAndModifySelection:";
  *(inited + 248) = "moveWordLeft:";
  *(inited + 256) = "moveWordRight:";
  *(inited + 264) = "moveWordLeftAndModifySelection:";
  *(inited + 272) = "moveWordRightAndModifySelection:";
  *(inited + 280) = "moveToBeginningOfLine:";
  *(inited + 288) = "moveToEndOfLine:";
  *(inited + 296) = "moveToBeginningOfLineAndModifySelection:";
  *(inited + 304) = "moveToEndOfLineAndModifySelection:";
  *(inited + 312) = "moveToLeftEndOfLine:";
  *(inited + 320) = "moveToLeftEndOfLineAndModifySelection:";
  *(inited + 328) = "moveToRightEndOfLine:";
  *(inited + 336) = "moveToRightEndOfLineAndModifySelection:";
  *(inited + 344) = "selectLine:";
  *(inited + 352) = "selectWord:";
  *(inited + 360) = "selectParagraph:";
  *(inited + 368) = "setMark:";
  *(inited + 376) = "selectToMark:";
  *(inited + 384) = "deleteToMark:";
  *(inited + 392) = "swapWithMark:";
  v61 = inited;
  sub_1009636AC();
  sub_10079B68C(v12);
  v13 = *(v61 + 16);
  v14 = 32;
  while (v13)
  {
    v14 += 8;
    --v13;
    if (static Selector.== infix(_:_:)())
    {

      return 1;
    }
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    return -1;
  }

  v16 = static Selector.== infix(_:_:)();
  v17 = v59;
  if (v16)
  {
    v18 = [*&v59[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v59];
    if (v18)
    {
      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        v21 = [v20 isInsertionPoint];

        if (v21)
        {
          v22 = -1;
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_57;
      }
    }
  }

  if (static Selector.== infix(_:_:)())
  {
    v23 = [*&v17[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v17];
    if (v23)
    {
      v24 = v23;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = [objc_opt_self() generalPasteboard];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v27 = Strong;
          v57 = v24;
          v28 = [Strong canvasEditor];

          if (v28)
          {
            v29 = [v28 pasteboardController];
            v56 = v29;
            swift_unknownObjectRelease();
            v30 = [v29 ingestibleItemSourceForPasteboard:v25];
            memset(v60, 0, 32);
            v31 = sub_100962DFC(v30);

            swift_unknownObjectRelease();
            sub_10000CAAC(v60, &unk_1019F4D00);
            if (v31)
            {
              v22 = 1;
            }

            else
            {
              v22 = -1;
            }
          }

          else
          {

            v22 = -1;
          }

          v24 = v57;
          goto LABEL_55;
        }

        goto LABEL_51;
      }
    }
  }

  if (static Selector.== infix(_:_:)())
  {
    v32 = [*&v17[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v17];
    if (v32)
    {
      v24 = v32;
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = *(*(*&v17[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState);
        v35 = v34[2];
        if (!v35 || ((v56 = v34, v57 = v33, , v36 = v35, (v37 = [v36 currentUserParticipant]) == 0) ? (v39 = objc_msgSend(v36, "publicPermission")) : (v38 = v37, v55 = objc_msgSend(v37, "permission"), v38, v39 = v55), v36, , v33 = v57, v39 != 2))
        {
          if ([v33 isInsertionPoint])
          {
            v22 = -1;
          }

          else
          {
            v22 = 1;
          }

          goto LABEL_55;
        }

LABEL_51:
        v22 = -1;
LABEL_55:

LABEL_56:
        v17 = v59;
        goto LABEL_57;
      }
    }
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v40 = 0;
LABEL_34:
    sub_100945450(v40);
    goto LABEL_35;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    sub_100945450(1);
    if (v42)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    goto LABEL_56;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    v40 = -1;
    goto LABEL_34;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_100960E34();
    if (v49)
    {
      v50 = [v49 selectedTextRange];
      v22 = -1;
      if (v50)
      {
        v51 = v50;
        LODWORD(v57) = [v50 isEmpty];

        if ((v57 & 1) == 0)
        {
          v22 = 1;
        }
      }
    }

    else
    {
      v22 = -1;
    }
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      sub_100940B64();
LABEL_35:
      if (v41)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }

      goto LABEL_57;
    }

    if (static Selector.== infix(_:_:)())
    {
      sub_100935E08();
      if (v52 < 1)
      {
        v22 = -1;
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
        {
          v17 = v59;
          v22 = sub_10093D77C();
          goto LABEL_57;
        }

        if (static Selector.== infix(_:_:)())
        {
          if ([objc_opt_self() isAvailable])
          {
            v22 = 1;
          }

          else
          {
            v22 = -1;
          }
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_56;
      }

      sub_100935E08();
      if (v53 < 10)
      {
        v22 = 1;
      }

      else
      {
        v22 = -1;
      }
    }
  }

LABEL_57:
  result = static Selector.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    result = static Selector.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      if (v22 != 1)
      {
        return -1;
      }

LABEL_64:
      if ([v17 respondsToSelector:a1])
      {
        return 1;
      }

      return -1;
    }
  }

  v43 = *(*&v17[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v43)
  {
    v44 = *&v43[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v44)
    {
      (*(*v44 + 896))();
      sub_1005E0A78(&v7[*(v5 + 20)], v10);
      v45 = v43;
      sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      v46 = v58;
      (*(v58 + 16))(v4, v10, v2);
      sub_1009625A4(v10, type metadata accessor for CRLWPStorageCRDTData);
      v47 = CRAttributedString.attributedString.getter();
      (*(v46 + 8))(v4, v2);
      v48 = [v47 length];

      if (v48 < 1)
      {
        return -1;
      }

      goto LABEL_64;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10093D77C()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v3 = [v2 currentUserParticipant];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 permission];
  }

  else
  {
    v5 = [v2 publicPermission];
  }

  if (v5 != 2)
  {
LABEL_14:
    v6 = [*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v0];
    if (v6)
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 isRange];

        if (v9)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return -1;
}

uint64_t sub_10093D8B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  a5(a4);

  return sub_10000CAAC(v11, &unk_1019F4D00);
}

void sub_10093D94C(Swift::Int a1)
{
  v2 = v1;
  sub_100960E34();
  if (!v4)
  {
    return;
  }

  v5 = [v4 selectedTextRange];
  if (!v5)
  {
    return;
  }

  v19 = v5;
  if (![v5 isEmpty])
  {
    v18 = v19;
    goto LABEL_9;
  }

  v6 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v7 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v19 start];
  v10 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v11 = [v8 paragraphIndexAtCharIndex:v10];
  v12 = *(*(v2 + v6) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v13 = [v12 textRangeForParagraphAtIndex:v11];
  v15 = v14;
  v16 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v17 = sub_10078CDF0(v13, v15);

  v18 = v17;
LABEL_9:
  v20 = v18;
  sub_100945BA8(a1, v18);
}

uint64_t sub_10093DBE0(uint64_t result, SEL *a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v5 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
      sub_10000BE14(result, v15, &unk_1019F4D00);
      v6 = v16;
      if (v16)
      {
        v7 = sub_100020E58(v15, v16);
        v8 = *(v6 - 8);
        v9 = __chkstk_darwin(v7);
        v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v8 + 16))(v11, v9);
        v12 = v5;
        v13 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v8 + 8))(v11, v6);
        sub_100005070(v15);
      }

      else
      {
        v14 = v5;
        v13 = 0;
      }

      [v5 *a2];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10093DDE0(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  sub_100960E34();
  if (v6)
  {
    v7 = [v6 selectedTextRange];
    if (v7)
    {
      v8 = v7;
      v9 = [v19 selectionModelTranslator];
      if (a2)
      {
        if (v9)
        {
          if (*(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
          {
            v10 = &selRef_visualSelectionPathForTextRange_onStorage_;
            goto LABEL_11;
          }

          __break(1u);
          goto LABEL_21;
        }
      }

      else if (v9)
      {
        if (*(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
        {
          v10 = &selRef_selectionPathForTextRange_onStorage_;
LABEL_11:
          v11 = v9;
          v12 = [v9 *v10];

          if (v12)
          {
            v13 = [v19 editorController];
            if (v13)
            {
              v14 = v13;
              v15 = swift_allocObject();
              v15[2] = v19;
              v15[3] = v12;
              v15[4] = a1;
              aBlock[4] = sub_100967C60;
              aBlock[5] = v15;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = *"";
              aBlock[2] = sub_100007638;
              aBlock[3] = &unk_10188E610;
              v16 = _Block_copy(aBlock);
              v17 = v19;
              v18 = v12;

              [v14 performBlockAfterSettingSelection:v16];

              _Block_release(v16);
              return;
            }

            goto LABEL_16;
          }

          goto LABEL_15;
        }

LABEL_21:
        __break(1u);
        return;
      }

LABEL_15:
    }
  }

LABEL_16:
}

void sub_10093E028(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 editorController];
  [v5 setSelectionPath:a2 withFlags:a3];
}

id sub_10093E094(uint64_t a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong hitRep:{a2, a3}];
    if (v9)
    {
      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (!v11)
      {
      }
    }

    else
    {
      v11 = 0;
    }

    v13 = [v8 layerHost];
    if (v13)
    {
      v14 = v13;
      if ([v13 respondsToSelector:"asiOSCVC"])
      {
        v15 = [v14 asiOSCVC];
        swift_unknownObjectRelease();
        if (v11)
        {

LABEL_14:
          if ([v11 canEditWithEditor:v3])
          {
            v16 = v3;
            [v11 convertNaturalPointFromUnscaledCanvas:{a2, a3}];
            v18 = v17;
            v20 = v19;
            v21 = v8;
            v22 = sub_101066960(0);
            v24 = v23;

            if (v22)
            {

              sub_100967C20(v22, v24);
              v12 = 0;
            }

            else
            {
              v12 = [v11 cursorForPoint:a1 withCursorPlatformObject:{v18, v20}];
            }

            v8 = *(v16 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastCursor);
            *(v16 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastCursor) = v12;
LABEL_24:
            v26 = v12;
            goto LABEL_25;
          }

          v12 = 0;
LABEL_25:

          return v12;
        }

        v25 = [v15 currentlyTrackingIndirectPointerTouch];

        if (v25)
        {
          v12 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastCursor);
          if (!v12)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v11)
        {
          goto LABEL_14;
        }
      }
    }

    else if (v11)
    {
      goto LABEL_14;
    }

    v12 = 0;
    goto LABEL_25;
  }

  return 0;
}

void sub_10093E3B8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong textInputResponder];

    v51 = v2;
    if (v2)
    {
      sub_1005B981C(&qword_101A09728);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146D2A0;
      *(inited + 32) = 0xD000000000000014;
      *(inited + 40) = 0x800000010157BCE0;
      v4 = objc_opt_self();
      v5 = [v4 mainBundle];
      v6 = String._bridgeToObjectiveC()();
      v7 = String._bridgeToObjectiveC()();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      *(inited + 48) = v9;
      *(inited + 56) = v11;
      *(inited + 64) = 2036427888;
      *(inited + 72) = 0xE400000000000000;
      *(inited + 80) = 0xD00000000000001CLL;
      *(inited + 88) = 0x800000010157BD00;
      v12 = [v4 mainBundle];
      v13 = String._bridgeToObjectiveC()();
      v14 = String._bridgeToObjectiveC()();
      v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      *(inited + 96) = v16;
      *(inited + 104) = v18;
      *(inited + 112) = 0x6573756170;
      *(inited + 120) = 0xE500000000000000;
      *(inited + 128) = 0xD00000000000001CLL;
      *(inited + 136) = 0x800000010157BD20;
      v19 = [v4 mainBundle];
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      *(inited + 144) = v23;
      *(inited + 152) = v25;
      *(inited + 160) = 2036427888;
      *(inited + 168) = 0xE400000000000000;
      *(inited + 176) = 0xD00000000000001CLL;
      *(inited + 184) = 0x800000010157BD40;
      v26 = [v4 mainBundle];
      v27 = String._bridgeToObjectiveC()();
      v28 = String._bridgeToObjectiveC()();
      v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(inited + 192) = v30;
      *(inited + 200) = v32;
      *(inited + 208) = 2036427888;
      *(inited + 216) = 0xE400000000000000;
      v33 = sub_100BD73E8(inited);
      swift_setDeallocating();
      sub_1005B981C(&qword_101A09730);
      swift_arrayDestroy();
      v34 = 1 << *(v33 + 32);
      v35 = -1;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      v36 = v35 & *(v33 + 64);
      v37 = (v34 + 63) >> 6;

      v38 = 0;
      while (v36)
      {
LABEL_12:
        v40 = __clz(__rbit64(v36));
        v36 &= v36 - 1;
        v41 = (*(v33 + 48) + ((v38 << 10) | (16 * v40)));
        v42 = *v41;
        v43 = v41[1];

        v44 = String._bridgeToObjectiveC()();
        v45 = NSSelectorFromString(v44);

        if ([v51 respondsToSelector:v45] && (objc_msgSend(v51, "canPerformAction:withSender:", v45, 0) & 1) != 0 && *(v33 + 16))
        {
          sub_10000BE7C(v42, v43);
          v47 = v46;

          if (v47)
          {
            sub_100006370(0, &unk_1019FF3D0);

            v48 = String._bridgeToObjectiveC()();

            v49 = [objc_opt_self() systemImageNamed:v48];

            v50 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v39 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v39 >= v37)
        {

          return;
        }

        v36 = *(v33 + 64 + 8 * v39);
        ++v38;
        if (v36)
        {
          v38 = v39;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_10093EA0C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
LABEL_33:
      __break(1u);
      return;
    }

    v4 = Strong;
    v5 = [Strong repsForInfo:?];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptySetSingleton;
  }

  v7 = sub_100BC17E0(v6);

  if (v7)
  {
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 spellChecker];
      v11 = [v10 rangeOfMisspelledWordAtCharIndex:a1];
      v13 = v12;

      if (v11 != 0x7FFFFFFFFFFFFFFFLL || v13 != 0)
      {
LABEL_11:
        v15 = [v9 spellChecker];
        v16 = [v15 suggestionsForRange:{v11, v13}];

        if (v16)
        {
          v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v18 = *(v17 + 16);
          if (!v18)
          {
LABEL_26:

            return;
          }

          v19 = 0;
          v20 = v17 + 40;
          while (v19 < *(v17 + 16))
          {
            if (v19 != 5)
            {
              sub_100006370(0, &unk_1019FF3D0);
              swift_bridgeObjectRetain_n();
              v21 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              ++v19;
              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v20 += 16;
              if (v18 != v19)
              {
                continue;
              }
            }

            goto LABEL_26;
          }

          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_100960E34();
      if (v22)
      {
        v23 = [v22 selectedTextRange];
        if (v23)
        {
          v24 = v23;
          if (([v23 isEmpty] & 1) == 0)
          {
            v25 = [v24 start];
            v26 = *&v25[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

            if (v26 == NSNotFound.getter())
            {
            }

            else
            {
              v11 = *&v24[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
              v27 = *&v24[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

              v28 = __OFSUB__(v27, v11);
              v13 = v27 - v11;
              if (v28)
              {
                __break(1u);
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }
            }

            goto LABEL_11;
          }
        }
      }
    }

LABEL_24:
  }
}

void sub_10093EE84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textInputResponder];

    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v5)
        {
          [v5 selectionWillChange:v3];
        }

        v3[v4] = 0;
      }
    }
  }

  sub_100960E34();
  if (v6)
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v6;
    swift_unknownObjectRetain();
    v9 = v7;
    v10 = sub_100D7320C(v9);

    [v8 setSelectedTextRange:v10];
    swift_unknownObjectRelease();
  }

  sub_10093DDE0(16, 1);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v16 = [v11 textInputResponder];

    v13 = v16;
    if (v16)
    {
      if (*&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v14 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v15 = *&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v15)
        {
          [v15 selectionDidChange:v16];
          v13 = v16;
        }

        v13[v14] = 0;
      }
    }
  }
}

void sub_10093F128()
{
  sub_100960E34();
  if (v0)
  {
    v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(v0 caretAffinity:{"selectedRange"), 0}];
    sub_1009457D8(v1);
    v3 = v2;

    sub_10093D94C(v3 == 0);
  }
}

void sub_10093F1D4(uint64_t a1)
{
  sub_100960E34();
  if (v3)
  {
    v4 = [v3 selectedTextRange];
    if (v4)
    {
      v5 = v4;
      sub_10000BE14(a1, &v17, &unk_1019F4D00);
      if (*(&v18 + 1))
      {
        sub_100006370(0, &unk_1019FF3D0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          return;
        }

        v6 = v15[0];
        if ([v15[0] propertyList])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          *v15 = 0u;
          v16 = 0u;
        }

        v17 = *v15;
        v18 = v16;
        if (*(&v16 + 1))
        {
          if (swift_dynamicCast())
          {
            v7 = v14;
            v8 = type metadata accessor for CRLWPTextString();
            v9 = objc_allocWithZone(v8);
            v10 = &v9[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
            *v10 = v13;
            *(v10 + 1) = v7;
            v10[16] = 0;
            v12.receiver = v9;
            v12.super_class = v8;
            v11 = objc_msgSendSuper2(&v12, "init");
            [v1 replace:v5 with:v11];
          }

          else
          {
          }

          return;
        }
      }

      sub_10000CAAC(&v17, &unk_1019F4D00);
    }
  }
}

uint64_t sub_10093F3B8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
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
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

void sub_10093F4E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v5 - 8);
  v7 = &v73 - v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v79 = Strong;
  v9 = [Strong layerHost];
  if (!v9 || (v78 = [v9 canvasView], swift_unknownObjectRelease(), !v78))
  {
    v14 = v79;
LABEL_31:

    return;
  }

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    if (!*(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      __break(1u);
      goto LABEL_42;
    }

    v11 = v10;
    v12 = [v10 repsForInfo:?];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = _swiftEmptySetSingleton;
  }

  v77 = sub_100BC17E0(v13);

  if (!v77)
  {

    v14 = v78;
    goto LABEL_31;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass() || (v15 = [v79 layerHost]) == 0)
  {

    goto LABEL_28;
  }

  v16 = v15;
  if ([v15 respondsToSelector:"asiOSCVC"])
  {
    v17 = [v16 asiOSCVC];
    swift_unknownObjectRelease();
    v18 = [*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v2];
    if (v18)
    {
      v76 = v18;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (!v19)
      {

        v14 = v76;
        goto LABEL_31;
      }

      v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
      if (*(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
      {
        v21 = v19;
        v22 = [v79 layoutForInfo:?];
        if (v22)
        {
          v75 = v22;
          type metadata accessor for CRLWPLayout();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = v23;
            v74 = v2;
            v25 = [v21 superRange];
            v27 = v26;
            v28 = type metadata accessor for CRLTextRange();
            v29 = objc_allocWithZone(v28);
            v30 = sub_10078CDF0(v25, v27);
            if (qword_1019F1570 != -1)
            {
              v72 = v30;
              swift_once();
              v30 = v72;
            }

            v82[3] = v28;
            v82[0] = v30;
            v31 = v30;
            sub_1007A16F8(*&v24, v31, v81);
            sub_100005070(v82);
            v32 = v81[0];
            v33 = v81[1];
            v34 = v81[2];
            v35 = v81[3];

            [v24 rectInRoot:{v32, v33, v34, v35}];
            [v79 convertUnscaledToBoundsRect:?];
            v37 = v36;
            v39 = v38;
            v41 = v40;
            v43 = v42;
            [v79 visibleBoundsRect];
            v86.origin.x = v44;
            v86.origin.y = v45;
            v86.size.width = v46;
            v86.size.height = v47;
            v84.origin.x = v37;
            v84.origin.y = v39;
            v84.size.width = v41;
            v84.size.height = v43;
            v85 = CGRectIntersection(v84, v86);
            v48 = v74;
            v49 = *(*&v74[v20] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
            if (v49)
            {
              x = v85.origin.x;
              y = v85.origin.y;
              width = v85.size.width;
              height = v85.size.height;
              v54 = [v49 substringWithRange:{a1, a2}];
              v55 = type metadata accessor for ReferenceLibraryViewControllerWithDismiss();
              v56 = objc_allocWithZone(v55);
              v57 = v79;
              *&v56[OBJC_IVAR____TtC8Freeform41ReferenceLibraryViewControllerWithDismiss_interactiveCanvasController] = v79;
              v80.receiver = v56;
              v80.super_class = v55;
              v58 = v57;
              v59 = objc_msgSendSuper2(&v80, "initWithTerm:", v54);

              [v59 setModalPresentationStyle:7];
              v60 = [v59 popoverPresentationController];
              if (v60)
              {
                v61 = v60;
                [v60 setDelegate:v48];
              }

              v62 = [v59 popoverPresentationController];
              if (v62)
              {
                v63 = v62;
                [v62 setSourceView:v78];
              }

              v64 = [v59 popoverPresentationController];
              [v64 setSourceRect:{x, y, width, height}];

              v65 = type metadata accessor for TaskPriority();
              (*(*(v65 - 8) + 56))(v7, 1, 1, v65);
              type metadata accessor for MainActor();
              v66 = v48;
              v67 = v17;
              v68 = v59;
              v69 = static MainActor.shared.getter();
              v70 = swift_allocObject();
              v70[2] = v69;
              v70[3] = &protocol witness table for MainActor;
              v70[4] = v66;
              v70[5] = v67;
              v70[6] = v68;
              sub_10064191C(0, 0, v7, &unk_1014891A8, v70);

              return;
            }

LABEL_43:
            __break(1u);
            return;
          }

          v14 = v75;
          goto LABEL_31;
        }

        v71 = v76;
        goto LABEL_29;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_28:
    v71 = v78;
LABEL_29:

    v14 = v77;
    goto LABEL_31;
  }

  swift_unknownObjectRelease();
}

void sub_10093FCF4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v71 - v3;
  sub_100960E34();
  if (!v5)
  {
    return;
  }

  v6 = [v5 selectedRange];
  v8 = v7;
  if (![objc_opt_self() isAvailable])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v75 = Strong;
  v10 = [Strong layerHost];
  if (!v10)
  {
    v22 = v75;

    return;
  }

  v11 = v10;
  if (([v10 respondsToSelector:"asiOSCVC"] & 1) == 0)
  {

    swift_unknownObjectRelease();
    return;
  }

  v12 = [v11 asiOSCVC];
  swift_unknownObjectRelease();
  v13 = [objc_allocWithZone(LTUITranslationViewController) init];
  v14 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v15 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v15)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v16 = v13;
  v17 = v15[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties];
  v18 = v15;
  if ((v17 & 1) == 0)
  {
    sub_100A2A960();
  }

  v19 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];

  v20 = [v19 attributedSubstringFromRange:{v6, v8}];
  [v16 setText:v20];
  if ([v75 documentIsSharedReadOnly])
  {
    v21 = 0;
  }

  else
  {
    v23 = *&v1[v14];
    v24 = *(**&v23[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 368);
    v25 = v23;

    LOBYTE(v24) = v24(v26);

    v21 = v24 ^ 1;
  }

  [v16 setIsSourceEditable:v21 & 1];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = sub_100967B00;
  v82 = v27;
  *&aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v78 = *"";
  *&v79 = COERCE_DOUBLE(sub_100967EA4);
  v80 = COERCE_DOUBLE(&unk_10188E570);
  v28 = _Block_copy(&aBlock);

  [v16 setReplacementHandler:v28];
  _Block_release(v28);
  v29 = [*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:v1];
  if (!v29)
  {

LABEL_32:
    return;
  }

  v30 = v29;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {

    return;
  }

  if (!*(*&v1[v14] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    goto LABEL_40;
  }

  v32 = v31;
  v33 = [v75 layoutForInfo:?];
  if (v33)
  {
    v34 = v33;
    type metadata accessor for CRLWPLayout();
    *&v35 = COERCE_DOUBLE(swift_dynamicCastClass());
    if (*&v35 == 0.0)
    {

      return;
    }

    v74 = *&v35;
    v36 = [v12 canvasView];
    if (v36)
    {
      v72 = v36;
      v73 = v12;
      v37 = [v32 superRange];
      v39 = v38;
      v40 = type metadata accessor for CRLTextRange();
      v41 = objc_allocWithZone(v40);
      v42 = sub_10078CDF0(v37, v39);
      if (qword_1019F1570 != -1)
      {
        v70 = v42;
        swift_once();
        v42 = v70;
      }

      v76[3] = v40;
      v76[0] = v42;
      v43 = v42;
      v44 = v74;
      sub_1007A16F8(v74, v43, &aBlock);
      sub_100005070(v76);
      v45 = *&aBlock;
      v46 = v78;
      v47 = *&v79;
      v48 = v80;

      [*&v44 convertNaturalRectToUnscaledCanvas:{v45, v46, v47, v48}];
      [v75 convertUnscaledToBoundsRect:?];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      [v16 setModalPresentationStyle:7];
      v57 = [v16 popoverPresentationController];
      if (v57)
      {
        v58 = v57;
        [v57 setDelegate:v1];
      }

      v59 = [v16 popoverPresentationController];
      v60 = v73;
      v61 = v72;
      if (v59)
      {
        v62 = v59;
        [v59 setSourceView:v72];
      }

      v63 = [v16 popoverPresentationController];
      [v63 setSourceRect:{v50, v52, v54, v56}];

      v64 = type metadata accessor for TaskPriority();
      (*(*(v64 - 8) + 56))(v4, 1, 1, v64);
      type metadata accessor for MainActor();
      v65 = v1;
      v66 = v60;
      v67 = v16;
      v68 = static MainActor.shared.getter();
      v69 = swift_allocObject();
      v69[2] = v68;
      v69[3] = &protocol witness table for MainActor;
      v69[4] = v65;
      v69[5] = v66;
      v69[6] = v67;
      sub_10064191C(0, 0, v4, &unk_1014891A0, v69);

      goto LABEL_32;
    }
  }

  else
  {
  }
}

void sub_10094048C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100960E34();
    if (v4)
    {
      v5 = [v4 selectedRange];
      v7 = v6;
      v8 = objc_allocWithZone(type metadata accessor for CRLTextRange());
      v9 = sub_10078CDF0(v5, v7);
      v10 = [a1 string];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = type metadata accessor for CRLWPTextString();
      v15 = objc_allocWithZone(v14);
      v16 = &v15[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v16 = v11;
      *(v16 + 1) = v13;
      v16[16] = 0;
      v18.receiver = v15;
      v18.super_class = v14;
      v17 = objc_msgSendSuper2(&v18, "init");
      [v3 replace:v9 with:v17];

      v3 = v17;
    }
  }
}

void sub_1009405DC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = [Strong canvasEditor];

  if (!v3)
  {
    return;
  }

  v18 = [v3 pasteboardController];
  swift_unknownObjectRelease();
  sub_100960E34();
  if (v4)
  {
    v5 = [v4 selectedTextRange];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 start];
      v8 = *&v7[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v8 == NSNotFound.getter())
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
        v10 = 0;
      }

      else
      {
        v9 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v11 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v12 = __OFSUB__(v11, v9);
        v10 = (v11 - v9);
        if (v12)
        {
          __break(1u);
          goto LABEL_15;
        }
      }

      v13 = [objc_opt_self() stylePasteboard];
      v14 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v14)
      {
        v15 = v13;
        v16 = objc_allocWithZone(type metadata accessor for CRLWPStorage());
        v17 = sub_100A2D1A0(v14, v9, v10);
        sub_1009607FC(v17, v15, v18);

        goto LABEL_11;
      }

LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:
}

void sub_1009407C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  v2 = [Strong canvasEditor];
  if (!v2)
  {
    goto LABEL_17;
  }

  v27 = [v2 pasteboardController];
  swift_unknownObjectRelease();
  v3 = [v28 commandController];
  if (v3)
  {
    v4 = v3;
    sub_100960E34();
    if (v5)
    {
      v6 = [v5 selectedTextRange];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 start];
        v9 = *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        if (v9 == NSNotFound.getter())
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
          v11 = 0;
        }

        else
        {
          v10 = *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v13 = *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

          v14 = __OFSUB__(v13, v10);
          v11 = v13 - v10;
          if (v14)
          {
            __break(1u);
            return;
          }
        }

        v15 = [objc_opt_self() stylePasteboard];
        v16 = [v27 commandsToPasteTextStyleTo:*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) in:v10 from:{v11, v15}];
        type metadata accessor for CRLCommand();
        v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v17 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter() >= 1)
          {
            goto LABEL_13;
          }
        }

        else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
LABEL_13:
          sub_10088E3FC(0);
          v18 = [objc_opt_self() mainBundle];
          v19 = String._bridgeToObjectiveC()();
          v20 = String._bridgeToObjectiveC()();
          v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          sub_10088DE20(v22, v24);
          v25 = [objc_allocWithZone(type metadata accessor for CRLCommandGroup()) init];
          v26 = OBJC_IVAR____TtC8Freeform15CRLCommandGroup_commands;
          swift_beginAccess();
          *(v25 + v26) = v17;

          sub_100888700(v25, 0, 0, 4, 0);

          sub_10088E600(0);
          return;
        }

LABEL_17:
        v12 = v28;
        goto LABEL_18;
      }
    }
  }

  v12 = v27;
LABEL_18:
}

void sub_100940B64()
{
  sub_100960E34();
  if (v1)
  {
    v2 = [v1 selectedTextRange];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isEmpty];

      if ((v4 & 1) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v6 = Strong;
          v7 = [Strong canvasEditor];

          if (v7)
          {
            v8 = [v7 pasteboardController];
            swift_unknownObjectRelease();
            sub_1005B981C(&qword_101A2C800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146C6B0;
            v10 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
            v11 = *(v10 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
            if (v11)
            {
              v12 = inited;
              v16 = *(v10 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
              type metadata accessor for CRLWPStorage();
              sub_1009624F8(&unk_101A09710, type metadata accessor for CRLWPStorage);
              v13 = v11;
              AnyHashable.init<A>(_:)();
              sub_1005C0360(v12);
              swift_setDeallocating();
              sub_100064234(v12 + 32);
              isa = Set._bridgeToObjectiveC()().super.isa;

              v15 = [objc_opt_self() stylePasteboard];
              [v8 containsStylesRelevantTo:isa on:v15];
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
}

uint64_t sub_100940D78(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  v13 = 0;
  v14 = 0;
  v5 = *(v4 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v5)
  {
LABEL_23:
    __break(1u);
  }

  result = [v5 hyperlinkFieldAtCharIndex:a1 effectiveRange:&v13];
  if (result)
  {

    if (v13 == a1 && v14 == a2)
    {
      return 1;
    }

    result = 0;
    if (!a2 && v14 >= 2)
    {
      v8 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
      }

      else
      {
        v9 = v13 + v14;
        if (!__OFADD__(v13, v14))
        {
          v10 = __OFSUB__(v9, 1);
          v11 = v9 - 1;
          if (!v10)
          {
            if (v11 >= v8)
            {
              return v8 <= a1 && v11 >= a1;
            }

            goto LABEL_22;
          }

LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  return result;
}

void sub_100940E8C(char *a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v14 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v38 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v15 = *&v14[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v39 = a1;
  v16 = &a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v17 = *&a1[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  (*(*v15 + 896))(v11);
  sub_1005E0A78(&v9[*(v7 + 20)], v13);
  v18 = v14;
  sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v4 + 16))(v6, v13, v3);
  sub_1009625A4(v13, type metadata accessor for CRLWPStorageCRDTData);
  v19 = CRAttributedString.attributedString.getter();
  (*(v4 + 8))(v6, v3);
  v20 = [v19 length];

  if (v20 >= v17 && (*v16 & 0x8000000000000000) == 0)
  {
    if ([v40 hasText])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        v23 = [Strong commandController];

        if (v23)
        {
          v24 = swift_unknownObjectWeakLoadStrong();
          if (!v24 || (v25 = v24, v26 = [v24 selectionModelTranslator], v25, !v26))
          {
            v26 = v23;
LABEL_18:

            return;
          }

          v27 = [v39 start];
          v28 = *&v27[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

          if (v28 == NSNotFound.getter())
          {
            v29 = 0x7FFFFFFFFFFFFFFFLL;
            v30 = 0;
            goto LABEL_14;
          }

          v29 = *v16;
          v31 = v16[1];
          v30 = v31 - *v16;
          if (!__OFSUB__(v31, *v16))
          {
LABEL_14:
            if (*(*&v40[v38] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
            {
              v32 = [v26 selectionPathForRange:v29 onStorage:v30];
              if (v32)
              {
                v33 = v32;
                v34 = [objc_allocWithZone(CRLWPReplaceTextCommandSelectionBehavior) initWithCommitSelectionPath:v33 forwardSelectionPath:v33 reverseSelectionPath:v33 usePersistableCommitSelectionPath:1];
                v35 = sub_100935A00(*v16, v16[1]);
                v36 = v34;
                sub_100888700(v35, 0, v34, 4, 0);
              }

              goto LABEL_18;
            }

LABEL_23:
            __break(1u);
            return;
          }

          __break(1u);
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t sub_1009412D4(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    v3 = result;
    v4 = v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties];
    v5 = v2;
    if ((v4 & 1) == 0)
    {
      sub_100A2A960();
    }

    v6 = *&v5[OBJC_IVAR____TtC8Freeform12CRLWPStorage__listRuns];

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
LABEL_6:
      v9 = *(v6 + 32 + 48 * v8++ + 40);
      v10 = *(v9 + 16);
      v11 = 32;
      do
      {
        if (!v10)
        {
          if (v8 != v7)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }

        v12 = *(v9 + v11);
        v11 += 8;
        --v10;
      }

      while (v12 != v3);

      v13 = *(v9 + 16);
      if (!v13)
      {
        goto LABEL_16;
      }

      v14 = 0;
      while (*(v9 + 8 * v14 + 32) != v3)
      {
        if (v13 == ++v14)
        {
          goto LABEL_16;
        }
      }

      v15 = v14;

      return v15;
    }

    else
    {
LABEL_16:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100941494()
{
  sub_100960E34();
  if (!v1 || (v2 = [v1 selectedTextRange]) == 0)
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v37 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v37);
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
    v25 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v25;
    *(inited + 72) = v16;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v19;
    *(inited + 120) = v21;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 1747;
    v27 = v37;
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
    sub_100005404(v22, &_mh_execute_header, v31, "Failed to delete text. No selection.", 36, 2, _swiftEmptyArrayStorage);

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
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    [v14 handleFailureInFunction:v34 file:v4 lineNumber:1747 isFatal:0 format:v35 args:v33];

    goto LABEL_12;
  }

  v3 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (![v4 isEmpty])
    {
      v13 = v4;
      goto LABEL_11;
    }

    v6 = *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v7 = [v5 nextCharacterIndex:v6];
    if (v7 >= v6)
    {
      v8 = v7;
      v9 = type metadata accessor for CRLTextRange();
      v10 = objc_allocWithZone(v9);
      v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
      *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
      *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
      v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      *v12 = v6;
      *(v12 + 1) = v8;
      *&v10[v11] = 0;
      v36.receiver = v10;
      v36.super_class = v9;
      v13 = objc_msgSendSuper2(&v36, "init");
LABEL_11:
      v35 = v13;

      sub_100940E8C(v35);
LABEL_12:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1009419E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v30 = a5;
  v31 = a4;
  v32 = a2;
  v7 = sub_1005B981C(&unk_1019FFD10);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v5;
  v18 = *(*(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v19)
  {
    (*(*v19 + 896))(v15);
    sub_1005E0A78(&v13[*(v11 + 20)], v17);
    v20 = v18;
    sub_1009625A4(v13, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v8 + 16))(v10, v17, v7);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v21 = CRAttributedString.count.getter();
    (*(v8 + 8))(v10, v7);
    if (v21 >= (a1 & ~(a1 >> 63)))
    {
      v22 = a1 & ~(a1 >> 63);
    }

    else
    {
      v22 = v21;
    }

    v23 = v32 & ~(v32 >> 63);
    if (v23 < v22)
    {
      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v25 = v31(KeyPath);
      v27 = v26;

      if ((v27 & 1) == 0)
      {
LABEL_10:
        v28 = swift_getKeyPath();
        v30(v28);

        return;
      }

      if (*(v25 + 16))
      {
        sub_1000C1080(v25, 1);
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

void sub_100941D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, BOOL, uint64_t, uint64_t))
{
  v33 = a6;
  v34 = a4;
  v31 = a5;
  v35 = a2;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v6;
  v19 = *(*(v6 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v20)
  {
    (*(*v20 + 896))(v16);
    sub_1005E0A78(&v14[*(v12 + 20)], v18);
    v21 = v19;
    sub_1009625A4(v14, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v9 + 16))(v11, v18, v8);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v22 = CRAttributedString.count.getter();
    (*(v9 + 8))(v11, v8);
    if (v22 >= (a1 & ~(a1 >> 63)))
    {
      v23 = a1 & ~(a1 >> 63);
    }

    else
    {
      v23 = v22;
    }

    v24 = v35;
    if ((v24 & ~(v24 >> 63)) < v23)
    {
      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      swift_getKeyPath();
      v26 = v34();
      v28 = v27;

      if ((v28 & 1) == 0)
      {
LABEL_10:
        v33(KeyPath, v26 == 0, a1, v24);

        return;
      }

      if (*(v26 + 16))
      {
        v29 = *(v26 + 32);
        v31(v26, 1);
        v26 = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1009420F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100960E34();
  if (v7)
  {
    v8 = [v7 selectedTextRange];
    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v10 = *&v8[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      a4(v9, v10);
    }
  }

  return sub_100005070(&v12);
}

void sub_1009421A4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  v16 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = *&v16[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v17)
  {
    (*(*v17 + 896))(v13);
    sub_1005E0A78(&v11[*(v9 + 20)], v15);
    v18 = v16;
    sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v6 + 16))(v8, v15, v5);
    sub_1009625A4(v15, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.count.getter();
    (*(v6 + 8))(v8, v5);
    if (v19 >= (a1 & ~(a1 >> 63)))
    {
      v20 = (a1 & ~(a1 >> 63));
    }

    else
    {
      v20 = v19;
    }

    v21 = a2 & ~(a2 >> 63);
    if (v21 < v20)
    {
      __break(1u);
    }

    else
    {
      if (v19 >= v21)
      {
        v22 = a2 & ~(a2 >> 63);
      }

      else
      {
        v22 = v19;
      }

      KeyPath = swift_getKeyPath();
      v24 = sub_10095CB84(KeyPath, v18, v20, v22);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        v27 = *&v24;
        goto LABEL_14;
      }

      if (*(v24 + 16))
      {
        v27 = *(v24 + 32);
        sub_1000C1080(v24, 1);
LABEL_14:
        v28 = swift_getKeyPath();
        sub_1012E4DFC(v28, a1, a2, v27 + 1.0);

        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_1009424C0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  v16 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = *&v16[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v17)
  {
    (*(*v17 + 896))(v13);
    sub_1005E0A78(&v11[*(v9 + 20)], v15);
    v18 = v16;
    sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v6 + 16))(v8, v15, v5);
    sub_1009625A4(v15, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.count.getter();
    (*(v6 + 8))(v8, v5);
    if (v19 >= (a1 & ~(a1 >> 63)))
    {
      v20 = (a1 & ~(a1 >> 63));
    }

    else
    {
      v20 = v19;
    }

    v21 = a2 & ~(a2 >> 63);
    if (v21 < v20)
    {
      __break(1u);
    }

    else
    {
      if (v19 >= v21)
      {
        v22 = a2 & ~(a2 >> 63);
      }

      else
      {
        v22 = v19;
      }

      KeyPath = swift_getKeyPath();
      v24 = sub_10095CB84(KeyPath, v18, v20, v22);
      v26 = v25;

      if ((v26 & 1) == 0)
      {
        v27 = *&v24;
        goto LABEL_14;
      }

      if (*(v24 + 16))
      {
        v27 = *(v24 + 32);
        sub_1000C1080(v24, 1);
LABEL_14:
        v28 = swift_getKeyPath();
        sub_1012E4DFC(v28, a1, a2, v27 + -1.0);

        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
}

void sub_10094283C(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v76 = Strong;
  sub_100960E34();
  if (!v9 || (v10 = [v9 selectedTextRange]) == 0)
  {
    v47 = v76;
LABEL_24:

    return;
  }

  v75 = v10;
  v11 = [v76 commandController];
  if (!v11)
  {

    v47 = v75;
    goto LABEL_24;
  }

  v74 = v11;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape, v14 = v12, v73 = [v12 layoutForInfo:*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape)], v14, !v73))
  {

    v47 = v74;
    goto LABEL_24;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    v47 = v73;
    goto LABEL_24;
  }

  v72 = v15;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16 || (v17 = v16, v18 = [v16 layoutForInfo:*(v2 + v13)], v17, !v18))
  {
    v18 = v76;
    v48 = v73;
LABEL_30:

    return;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    v48 = v74;
    v74 = v75;
    v75 = v76;
    goto LABEL_30;
  }

  v20 = [v19 layoutInfoGeometry];

  [v20 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v71 = v77;
  sub_10088E3FC(0);
  KeyPath = swift_getKeyPath();
  sub_100946008(KeyPath);
  v23 = v22;
  v25 = v24;

  if (v25 == 2)
  {
    v26 = 2;
  }

  else
  {
    v26 = v23;
  }

  v27 = swift_getKeyPath();
  sub_100946E00(v27, a1);

  v28 = *(*(v2 + v13) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v28)
  {
    v29 = *&v28[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
    v30 = v28;
    v70 = v26;
    if (v29)
    {
      sub_100A28D8C();
      v32 = v31;

      v30 = v32;
    }

    v33 = [v75 start];
    v34 = *&v33[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v35 = sub_1006188CC(v34);
    v37 = v36;

    if ((v37 & 1) != 0 || v35)
    {
      goto LABEL_39;
    }

    v38 = *(v2 + v13);
    v68 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v39 = *(**&v38[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
    v69 = v38;

    v41 = v39(v40);

    v42 = [v41 widthValid];

    if (v42)
    {
      v43 = *(**&v38[v68] + 296);

      v45 = v43(v44);

      v46 = [v45 heightValid];

      if (v46)
      {
LABEL_39:
        sub_10088E600(0);

        return;
      }
    }

    else
    {
    }

    v49 = *(v2 + v13);
    v50 = *(**&v49[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
    v51 = v49;

    v53 = v50(v52);

    v54 = [v53 widthValid];

    if ((v54 & 1) == 0)
    {
      v55 = *(v2 + v13);
      v56 = *(**&v55[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
      v57 = v55;

      v59 = v56(v58);

      v60 = [v59 heightValid];

      if ((v60 & 1) == 0)
      {
        sub_10098FB84(v70, a1);
        v61 = v71;
        [v71 setPosition:?];
        v62 = *(v2 + v13);
        v63 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
        (*(**&v62[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
        v64 = v62;
        v65 = v61;
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v5 + 8))(v7, v4);
        v67 = [v63 initWithId:isa geometry:v65];

        sub_100888700(v67, 0, 0, 4, 0);
      }
    }

    goto LABEL_39;
  }

  __break(1u);
}

void sub_100943000(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v76 = Strong;
  sub_100960E34();
  if (!v9 || (v10 = [v9 selectedTextRange]) == 0)
  {
    v57 = v76;
LABEL_22:

    return;
  }

  v75 = v10;
  v11 = [v76 commandController];
  if (!v11)
  {

    v57 = v75;
    goto LABEL_22;
  }

  v74 = v11;
  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape, v14 = v12, v73 = [v12 layoutForInfo:*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape)], v14, !v73))
  {

    v57 = v74;
    goto LABEL_22;
  }

  v72 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    v57 = v73;
    goto LABEL_22;
  }

  v71 = v15;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16 || (v17 = v16, v18 = [v16 layoutForInfo:*(v2 + v72)], v17, !v18))
  {
    v18 = v76;
    v58 = v73;
LABEL_28:

    return;
  }

  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {

    v58 = v74;
    v74 = v75;
    v75 = v76;
    goto LABEL_28;
  }

  v20 = [v19 layoutInfoGeometry];

  [v20 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100006370(0, &unk_101A0B030);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v69 = v78;
  sub_10088E3FC(0);
  v21 = *(v2 + v72);
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();
  v22 = v21;

  v66 = sub_100693C3C();

  v23 = *(v2 + v72);
  KeyPath = swift_getKeyPath();
  v24 = sub_1005B981C(&unk_101A09590);
  v25 = objc_allocWithZone(v24);
  v26 = &v25[*((swift_isaMask & *v25) + 0xF0)];
  *v26 = 0;
  *(v26 + 1) = 0xE000000000000000;
  (*(**(v23 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
  (*(v5 + 32))(&v25[*((swift_isaMask & *v25) + 0xD8)], v7, v4);
  *&v25[*((swift_isaMask & *v25) + 0xE0)] = a1;
  *&v25[*((swift_isaMask & *v25) + 0xE8)] = KeyPath;
  v77.receiver = v25;
  v77.super_class = v24;
  KeyPath = objc_msgSendSuper2(&v77, "init");
  v27 = [objc_opt_self() mainBundle];
  v67 = v27;
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v68 = String._bridgeToObjectiveC()();
  v30 = [v27 localizedStringForKey:v28 value:v29 table:v68];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = (KeyPath + *((swift_isaMask & *KeyPath) + 0xF0));
  *v34 = v31;
  v34[1] = v33;

  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 commandController];

    if (v37)
    {
      sub_100888700(KeyPath, 0, 0, 4, 0);
    }
  }

  v38 = v72;
  v39 = *(*(v2 + v72) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v39)
  {
    v40 = v39;
    v41 = [v75 start];
    v42 = *&v41[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v43 = sub_1006188CC(v42);
    v45 = v44;

    if ((v45 & 1) != 0 || v43)
    {
      goto LABEL_35;
    }

    v46 = *(v2 + v38);
    v47 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v48 = *(**&v46[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 296);
    v68 = v46;

    v50 = v48(v49);

    v51 = [v50 widthValid];

    if (v51)
    {
      v52 = *(**&v46[v47] + 296);

      v54 = v52(v53);

      v55 = [v54 heightValid];

      v56 = v72;
      if (v55)
      {
        goto LABEL_35;
      }
    }

    else
    {

      v56 = v72;
    }

    sub_10098FD44(v66, a1);
    v59 = v69;
    [v69 setPosition:?];
    v60 = *(v2 + v56);
    v61 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry());
    (*(**&v60[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))();
    v62 = v60;
    v63 = v59;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v65 = [v61 initWithId:isa geometry:v63];

    sub_100888700(v65, 0, 0, 4, 0);
LABEL_35:
    sub_10088E600(0);

    return;
  }

  __break(1u);
}

void *sub_100943964()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu);
  Strong = v2;
  if (v2 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = objc_allocWithZone(type metadata accessor for CRLWPEditMenuController());
      Strong = sub_10127F6FC(Strong);
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = Strong;
    v6 = Strong;
    sub_1000505D0(v5);
  }

  sub_1000505E0(v2);
  return Strong;
}

void sub_100943A08()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v30 - v16;
  v18 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v18)
  {
    if (!*(v18 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v34 = v6;
      v19 = v14;
      v35 = [*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
      v36 = [objc_opt_self() sharedKeyboardMonitor];
      if ([v36 keyboardIsAnimating])
      {
        sub_100006370(0, &qword_1019F2D90);
        v33 = v2;
        v30 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        [v36 keyboardAnimationDuration];
        + infix(_:_:)();
        v20 = *(v10 + 8);
        v31 = v19;
        v32 = v20;
        v20(v12, v19);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = swift_allocObject();
        v23 = v35;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        aBlock[4] = sub_100967AA4;
        aBlock[5] = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        aBlock[2] = sub_100007638;
        aBlock[3] = &unk_10188E520;
        v24 = _Block_copy(aBlock);

        v35 = v23;
        static DispatchQoS.unspecified.getter();
        v37 = _swiftEmptyArrayStorage;
        sub_1009624F8(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400);
        sub_10000D494();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v25 = v30;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v24);

        (*(v33 + 8))(v4, v1);
        (*(v34 + 8))(v8, v5);
        v32(v17, v31);
      }

      else
      {
        v26 = v35;
        v27 = sub_100943964();
        if (v27)
        {
          v28 = v27;
          sub_10127F7CC(v26);
        }

        v29 = v36;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100943EF8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100943964();

    if (v5)
    {
      sub_10127F7CC(a2);
    }
  }
}

void sub_100943FB8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong editorController];

    if (v2)
    {
      v3 = [v2 selectionPath];

      if (v3)
      {
        v4 = sub_100943964();
        if (v4)
        {
          v5 = v4;
          sub_10127FA2C(v3);
        }
      }
    }
  }
}

void sub_10094421C(NSUInteger a1, NSUInteger length)
{
  v3 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v4 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v2;
  v8 = *&v4[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
  v9 = v4;
  if (v8)
  {
    sub_100A28D8C();
    v11 = v10;

    v9 = v11;
  }

  v12 = [v9 findRangeOfWordBackwardFromCharIndex:a1 expandingRangeToEndOfWord:1];
  v14 = v13;

  v15 = v12 == 0x7FFFFFFFFFFFFFFFLL && v14 == 0;
  location = a1;
  v17 = length;
  if (!v15)
  {
    v28.location = a1;
    v28.length = length;
    v30.location = v12;
    v30.length = v14;
    v18 = NSUnionRange(v28, v30);
    location = v18.location;
    length = v18.length;
  }

  v19 = *(*(v5 + v3) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
  v21 = v19;
  if (v20)
  {
    sub_100A28D8C();
    v23 = v22;

    v21 = v23;
  }

  if (__OFADD__(a1, v17))
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v24 = [v21 wordAtCharIndex:a1 + v17 includePreviousWord:0];
  v26 = v25;

  if (v24 != 0x7FFFFFFFFFFFFFFFLL || v26 != 0)
  {
    v29.location = location;
    v29.length = length;
    v31.location = v24;
    v31.length = v26;
    NSUnionRange(v29, v31);
  }
}

id sub_1009443C8(unint64_t a1, uint64_t a2)
{
  v78 = a2;
  v4 = type metadata accessor for UUID();
  v83 = *(v4 - 8);
  __chkstk_darwin(v4);
  v80 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v79 = &v68 - v7;
  __chkstk_darwin(v8);
  v77 = &v68 - v9;
  __chkstk_darwin(v10);
  v82 = &v68 - v11;
  v12 = sub_1005B981C(&unk_1019FFD10);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - v14;
  v16 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(CRLWPMutableRangeArray) init];
  v76 = result;
  v81 = v2;
  v23 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v23)
  {
    __break(1u);
    goto LABEL_37;
  }

  v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v24)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  (*(*v24 + 896))();
  sub_1005E0A78(&v18[*(v16 + 20)], v21);
  v25 = v23;
  sub_1009625A4(v18, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v13 + 16))(v15, v21, v12);
  sub_1009625A4(v21, type metadata accessor for CRLWPStorageCRDTData);
  v26 = CRAttributedString.attributedString.getter();
  (*(v13 + 8))(v15, v12);
  v27 = [v26 length];

  v28 = v81;
  if (v27 < 1)
  {
    return v76;
  }

  sub_100960E34();
  if (!v29)
  {
    return v76;
  }

  v30 = [v29 selectedRange];
  if (qword_1019F2BA0 != -1)
  {
LABEL_35:
    v66 = v30;
    v67 = v31;
    swift_once();
    v31 = v67;
    v30 = v66;
  }

  sub_10094421C(v30, v31);
  v69 = v32;
  v68 = v33;
  v85 = _swiftEmptySetSingleton;
  v34 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_autocorrectionKeys;
  swift_beginAccess();
  v72 = v34;
  v35 = *(v28 + v34);
  v36 = v35 + 56;
  v37 = 1 << *(v35 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v35 + 56);
  v40 = (v37 + 63) >> 6;
  v84 = v83 + 16;
  v74 = v83 + 32;
  v75 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationAndAutocorrectionCoordinator;
  v71 = a1;
  v70 = v78 + a1;
  v73 = (v83 + 8);
  v78 = v35;

  a1 = 0;
  v41 = v77;
  while (v39)
  {
LABEL_17:
    v46 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v48 = v82;
    v47 = v83;
    v49 = *(v83 + 16);
    v49(v82, *(v78 + 48) + *(v83 + 72) * (v46 | (a1 << 6)), v4);
    (*(v47 + 32))(v41, v48, v4);
    v50 = *(v28 + v75);
    swift_beginAccess();
    v51 = *(v50 + 24);
    if (*(v51 + 16))
    {

      v52 = sub_10003E994(v41);
      if ((v53 & 1) == 0)
      {

        goto LABEL_10;
      }

      v54 = *(*(v51 + 56) + 48 * v52);

      v55 = v54;

      sub_100006370(0, &qword_1019FFDF0);
      v56 = [v55 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
      if (!v56)
      {

        goto LABEL_31;
      }

      v57 = v56;
      objc_opt_self();
      v58 = swift_dynamicCastObjCClass();
      if (!v58)
      {

LABEL_31:
        v28 = v81;
LABEL_10:
        v41 = v77;
        goto LABEL_11;
      }

      v59 = v55;
      v60 = [v58 range];
      v62 = v60 >= v71 && v70 >= v60 + v61;
      if (v62 && (v63 = v60, v64 = v61, v86.location = v69, v86.length = v68, v87.location = v63, v87.length = v64, NSIntersectionRange(v86, v87).length))
      {
        [v76 addRange:{v63, v64}];

        v41 = v77;
        v30 = (*v73)(v77, v4);
        v28 = v81;
      }

      else
      {
        v41 = v77;
        (*v73)(v77, v4);

        v28 = v81;
      }
    }

    else
    {
LABEL_11:
      v42 = v80;
      v49(v80, v41, v4);
      v43 = v79;
      sub_100E6AF38(v79, v42);
      v44 = *v73;
      (*v73)(v43, v4);
      v30 = v44(v41, v4);
    }
  }

  while (1)
  {
    v45 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v45 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v45);
    ++a1;
    if (v39)
    {
      a1 = v45;
      goto LABEL_17;
    }
  }

  v65 = v85;
  swift_beginAccess();
  sub_1012D4DC4(v65);
  swift_endAccess();

  return v76;
}

void sub_100944C00()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100960E34();
  if (v5)
  {
    v6 = [v5 selectedTextRange];
    if (v6)
    {
      v7 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v8 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = [Strong commandController];

        if (v11)
        {
          (*(**(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 264))();
          v12 = type metadata accessor for CRLWPRemoveHyperlinkCommand();
          v13 = objc_allocWithZone(v12);
          (*(v2 + 16))(&v13[OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_boardItemID], v4, v1);
          v14 = &v13[OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_range];
          *v14 = v7;
          *(v14 + 1) = v8;
          v16.receiver = v13;
          v16.super_class = v12;
          v15 = objc_msgSendSuper2(&v16, "init");
          (*(v2 + 8))(v4, v1);
          sub_100888700(v15, 0, 0, 4, 0);
        }
      }
    }
  }
}

void sub_100944F04()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  if (!*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    __break(1u);
    goto LABEL_25;
  }

  v2 = [Strong repsForInfo:?];
  sub_100006370(0, &qword_1019FB7A0);
  sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
LABEL_5:
      sub_1009451BC(v3);

      return;
    }
  }

  else if (*(v3 + 16) >= 1)
  {
    goto LABEL_5;
  }

  if (!*(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
LABEL_25:
    __break(1u);
    return;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    v7 = _swiftEmptySetSingleton;
    goto LABEL_21;
  }

  for (i = v4; ; i = v8)
  {
    v6 = [Strong repsForInfo:i];
    v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_20;
    }

LABEL_17:
    v8 = [i parentInfo];
    swift_unknownObjectRelease_n();
    if (!v8)
    {
      goto LABEL_21;
    }

    swift_unknownObjectRetain();
  }

  if (*(v7 + 16) < 1)
  {
    goto LABEL_17;
  }

LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  sub_1009451BC(v7);

  swift_unknownObjectRelease();
}

void sub_1009451C8(uint64_t a1, SEL *a2)
{
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    Set.Iterator.init(_cocoa:)();
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    v7 = v27;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_23;
    }

    sub_100006370(0, &qword_1019FB7A0);
    swift_dynamicCast();
    v17 = v22;
    v15 = v6;
    v16 = v7;
    if (!v22)
    {
      goto LABEL_23;
    }

LABEL_19:
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (v18)
    {
      v19 = v18;
      if ([v18 respondsToSelector:*a2])
      {
        v20 = *(*(v21 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (!v20)
        {
          __break(1u);
LABEL_23:
          sub_100035F90();
          return;
        }

        v12 = v20;
        [v19 *a2];
      }
    }

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (v7)
  {
LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_23;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_100945450(uint64_t a1)
{
  sub_100960E34();
  if (v2)
  {
    v3 = [v2 selectedTextRange];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 start];
      sub_1009457D8(v5);
      v7 = v6;

      if (v7 == -1 && a1 != -1)
      {
        sub_100963750();
      }
    }
  }
}

void sub_100945528()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  (*(*v13 + 896))(v9);
  sub_1005E0A78(&v7[*(v5 + 20)], v11);
  v14 = v12;
  sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v2 + 16))(v4, v11, v1);
  sub_1009625A4(v11, type metadata accessor for CRLWPStorageCRDTData);
  v15 = CRAttributedString.count.getter();
  (*(v2 + 8))(v4, v1);
  KeyPath = swift_getKeyPath();
  v17 = sub_100955B74(KeyPath, v14, (v15 & (v15 >> 63)), v15 & (v15 >> 63));
  v19 = v18;

  if ((v19 & 1) == 0)
  {
    return;
  }

  if (!*(v17 + 16))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1000C1080(v17, 1);
}

void sub_1009457D8(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-v5];
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController] selectionForEditor:{v1, v11}];
  if (v14)
  {
    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v27 = [v16 isInsertionPoint];
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v17 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = *&v17[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v18)
  {
    v19 = *(v28 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
    (*(*v18 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v13);
    v20 = v17;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v13, v3);
    sub_1009625A4(v13, type metadata accessor for CRLWPStorageCRDTData);
    v21 = CRAttributedString.count.getter();
    (*(v4 + 8))(v6, v3);
    if (v21 >= (v19 & ~(v19 >> 63)))
    {
      v21 = (v19 & ~(v19 >> 63));
    }

    KeyPath = swift_getKeyPath();
    v23 = sub_100955B74(KeyPath, v20, v21, v21);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (*(v23 + 16))
    {
      sub_1000C1080(v23, 1);
LABEL_14:
      [v2 hasText];
      return;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void sub_100945BA8(Swift::Int a1, char *a2)
{
  v3 = v2;
  if ([a2 isEmpty])
  {
    v6 = v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_baseWritingDirectionForInsertion;
    *v6 = a1;
    *(v6 + 8) = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v8 = Strong;
    v9 = [Strong commandController];

    if (!v9)
    {
      return;
    }

    sub_10088E3FC(0);
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_10088DE20(v14, v16);
    KeyPath = swift_getKeyPath();
    sub_100946008(KeyPath);
    v19 = v18;
    LODWORD(v12) = v20;

    if (v12 != 2 && v19 != 2)
    {
      if (a1 == 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = 4 * (a1 != 0);
      }

      v22 = swift_getKeyPath();
      sub_100946E00(v22, v21);
    }

    v23 = swift_getKeyPath();
    v24 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v25 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v26 = [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
    v27 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v26 forwardSelectionPath:v26 reverseSelectionPath:v26];
    v28 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

    v29 = sub_1012EE3BC(v28, v24, v25, v23, a1);

    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 commandController];

      if (v32)
      {
        v33 = v27;
        sub_100888700(v29, 0, v27, 4, 0);
      }
    }

    sub_1012E7FD0(v23);

    sub_10088E600(0);
  }

  sub_100960E34();
  if (v34)
  {
    type metadata accessor for CRLWPTextSelectionManager();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
      if (v36)
      {
        if (!*(v36 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView))
        {
          v37 = *((swift_isaMask & *v36) + 0x178);
          v39 = v36;
          v37();
          (*((swift_isaMask & *v39) + 0x180))();
          v38 = *(v39 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc);
          [v38 addDecorator:v39];
        }
      }
    }
  }
}

void sub_100946008(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10094ABE4();
  if (!v13)
  {
    v17 = objc_opt_self();
    LODWORD(v16) = [v17 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v32;

    if (qword_1019F20A0 == -1)
    {
LABEL_15:
      v33 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v16;
      v35 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v35;
      v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v36;
      *(inited + 72) = v21;
      *(inited + 136) = &type metadata for String;
      v37 = sub_1000053B0();
      *(inited + 112) = v19;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v37;
      *(inited + 152) = 2991;
      v38 = v51;
      *(inited + 216) = v35;
      *(inited + 224) = v36;
      *(inited + 192) = v38;
      v39 = v21;
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
      v47 = String._bridgeToObjectiveC()();

      [v17 handleFailureInFunction:v45 file:v46 lineNumber:2991 isFatal:0 format:v47 args:v44];

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_15;
  }

  v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = a1;
  v15 = *&v14[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v15)
  {
    v16 = v13;
    v17 = *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v50 = *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v15 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v12);
    v18 = v14;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v12, v3);
    sub_1009625A4(v12, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.count.getter();
    v20 = (*(v4 + 8))(v6, v3);
    if (v19 >= (v17 & ~(v17 >> 63)))
    {
      v21 = (v17 & ~(v17 >> 63));
    }

    else
    {
      v21 = v19;
    }

    v22 = v50 & ~(v50 >> 63);
    if (v22 >= v21)
    {
      if (v19 >= v22)
      {
        v23 = v50 & ~(v50 >> 63);
      }

      else
      {
        v23 = v19;
      }

      __chkstk_darwin(v20);
      *(&v48 - 4) = &type metadata for CRLWPParagraphAlignmentAttribute;
      v24 = sub_1006ACAD4();
      v25 = v49;
      *(&v48 - 3) = v24;
      *(&v48 - 2) = v25;
      KeyPath = swift_getKeyPath();

      v27 = sub_1009569D8(KeyPath, v18, v21, v23);
      v29 = v28;

      if ((v29 & 1) == 0 || *(v27 + 16))
      {

        sub_1000C1080(v27, v29 & 1);
        return;
      }

      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

void sub_100946704(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10094ABE4();
  if (!v13)
  {
    v17 = objc_opt_self();
    LODWORD(v16) = [v17 _atomicIncrementAssertCount];
    v51 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v51);
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v32;

    if (qword_1019F20A0 == -1)
    {
LABEL_15:
      v33 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v16;
      v35 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v35;
      v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v36;
      *(inited + 72) = v21;
      *(inited + 136) = &type metadata for String;
      v37 = sub_1000053B0();
      *(inited + 112) = v19;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v37;
      *(inited + 152) = 2991;
      v38 = v51;
      *(inited + 216) = v35;
      *(inited + 224) = v36;
      *(inited + 192) = v38;
      v39 = v21;
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
      v47 = String._bridgeToObjectiveC()();

      [v17 handleFailureInFunction:v45 file:v46 lineNumber:2991 isFatal:0 format:v47 args:v44];

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_15;
  }

  v14 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v49 = a1;
  v15 = *&v14[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v15)
  {
    v16 = v13;
    v17 = *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v50 = *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v15 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v12);
    v18 = v14;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v12, v3);
    sub_1009625A4(v12, type metadata accessor for CRLWPStorageCRDTData);
    v19 = CRAttributedString.count.getter();
    v20 = (*(v4 + 8))(v6, v3);
    if (v19 >= (v17 & ~(v17 >> 63)))
    {
      v21 = (v17 & ~(v17 >> 63));
    }

    else
    {
      v21 = v19;
    }

    v22 = v50 & ~(v50 >> 63);
    if (v22 >= v21)
    {
      if (v19 >= v22)
      {
        v23 = (v50 & ~(v50 >> 63));
      }

      else
      {
        v23 = v19;
      }

      __chkstk_darwin(v20);
      *(&v48 - 4) = &type metadata for CRLWPListStyleTypeAttribute;
      v24 = sub_100962180();
      v25 = v49;
      *(&v48 - 3) = v24;
      *(&v48 - 2) = v25;
      KeyPath = swift_getKeyPath();

      v27 = sub_100954FAC(KeyPath, v18, v21, v23);
      v29 = v28;

      if ((v29 & 1) == 0 || *(v27 + 16))
      {

        sub_1000C1080(v27, v29 & 1);
        return;
      }

      __break(1u);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
}

void sub_100946E00(uint64_t a1, Swift::Int a2)
{
  v3 = v2;
  v6 = sub_10094ABE4();
  if (v6)
  {
    v7 = v6;
    v8 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v9 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v10 = [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
    v11 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v10 forwardSelectionPath:v10 reverseSelectionPath:v10];
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

    v40 = sub_1012EDB4C(v12, v8, v9, a1, a2);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong commandController];

      if (v15)
      {
        v16 = v11;
        sub_100888700(v40, 0, v11, 4, 0);
      }
    }

    sub_1012E7FA8(a1);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 3011;
    v30 = v41;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
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

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:3011 isFatal:0 format:v39 args:v36];
  }
}

void sub_100947328(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = sub_10094ABE4();
  if (v6)
  {
    v7 = v6;
    v8 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v9 = *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v10 = [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionPath];
    v11 = [objc_allocWithZone(CRLCommandSelectionBehavior) initWithCommitSelectionPath:v10 forwardSelectionPath:v10 reverseSelectionPath:v10];
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);

    v40 = sub_1012EDD60(v12, v8, v9, a1, a2);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong commandController];

      if (v15)
      {
        v16 = v11;
        sub_100888700(v40, 0, v11, 4, 0);
      }
    }

    sub_1012E7FBC(a1);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 3011;
    v30 = v41;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
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

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:3011 isFatal:0 format:v39 args:v36];
  }
}

void sub_100947A80()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_collabIsSuspendedByThisEditor;
  if (*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_collabIsSuspendedByThisEditor))
  {
    v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask;
    if (*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask))
    {

      Task.cancel()();

      *(v0 + v2) = 0;
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong editingCoordinator];

      if (v5)
      {
        if (!*&v5[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
        {
          __break(1u);
          return;
        }

        sub_100833EBC(0x6964452074786554, 0xEC000000676E6974);
      }
    }

    *(v0 + v1) = 1;
  }
}

uint64_t sub_100947BA0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask;
  if (!*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask])
  {
    goto LABEL_7;
  }

  isCancelled = swift_task_isCancelled();

  if (isCancelled)
  {
    if (!*&v0[v5])
    {
LABEL_7:
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v0;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v10;
      *&v1[v5] = sub_10064191C(0, 0, v4, &unk_101489180, v12);
    }

    Task.cancel()();
  }

  if (!*&v0[v5])
  {
    goto LABEL_7;
  }

  v7 = swift_task_isCancelled();

  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100947D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100947DF8, v6, v5);
}

void sub_100947DF8()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask;
  if (*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_resumeCollaborationTask))
  {

    isCancelled = swift_task_isCancelled();

    if ((isCancelled & 1) == 0)
    {
      v4 = *(v0 + 16);
      v5 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_collabIsSuspendedByThisEditor;
      if (*(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_collabIsSuspendedByThisEditor) == 1)
      {
        if (*(v1 + v2))
        {

          v6 = swift_task_isCancelled();

          if ((v6 & 1) == 0)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v8 = Strong;
              v9 = [Strong editingCoordinator];

              if (v9)
              {
                if (!*&v9[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator])
                {
                  __break(1u);
                  return;
                }

                sub_1008346E4(0x6964452074786554, 0xEC000000676E6974);
              }
            }

            *(v4 + v5) = 0;
          }
        }
      }

      *(v1 + v2) = 0;
    }
  }

  v10 = *(v0 + 8);

  v10();
}

void sub_100947F58()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    return;
  }

  v3 = [objc_opt_self() activeKeyboard];
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  [v3 acceptAutocorrection];

  v5 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v5)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if (*(v5 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {

    sub_100947A80();
  }

  else
  {

    sub_100947BA0();
  }
}

void sub_1009480A8()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v2 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    v3 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
    if (v3)
    {
      v4 = [v3 string];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      sub_100947F58();
      sub_1009481E4();
      v8 = type metadata accessor for CRLWPTextString();
      v9 = objc_allocWithZone(v8);
      v10 = &v9[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v10 = v5;
      *(v10 + 1) = v7;
      v10[16] = 0;
      v13.receiver = v9;
      v13.super_class = v8;
      v11 = objc_msgSendSuper2(&v13, "init");
      [v0 insertWithText:v11];

      v12 = *(*&v0[v1] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v12)
      {
        if (*(v12 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
        {
          sub_100947A80();
        }

        else
        {
          sub_100947BA0();
        }

        return;
      }

LABEL_10:
      __break(1u);
    }
  }
}

void sub_1009481E4()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange) = 0;

  v4 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v4)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
  *(v4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText) = 0;

  v6 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v6)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  *(v6 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange) = 0;

  v8 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v8)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS);
  *(v8 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v11 = Strong;
    v12 = [Strong layoutForInfo:?];

    if (v12)
    {
      type metadata accessor for CRLWPLayout();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        if ([v13 parentAutosizes])
        {
          [v14 invalidateSize];
        }

        *(v14 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
        [v14 invalidate];
        [v14 setNeedsDisplay];
      }
    }
  }

  v15 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v15)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v15 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {

    sub_100947A80();
  }

  else
  {

    sub_100947BA0();
  }
}

void sub_100948424()
{
  v2 = [objc_opt_self() activeKeyboard];
  [v2 removeAutocorrectPrompt];
  sub_1009481E4();
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100948514()
{
  *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textInputResponder];

    if (v3)
    {
      v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v5)
      {
        [v5 textWillChange:v3];
      }

      v3[v4] = 0;
    }
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (!*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 repsForInfo:?];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = _swiftEmptySetSingleton;
  }

  sub_1009451B0(v9);

  sub_100947BA0();
  v10 = swift_unknownObjectWeakLoadStrong();
  [v10 stopWritingTools];
}

void sub_10094871C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong textInputResponder];

    if (v4)
    {
      v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v4[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v6 = *&v4[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v6)
      {
        [v6 textDidChange:v4];
      }

      v4[v5] = 0;
    }
  }

  v7 = sub_100943964();
  if (v7)
  {
    v8 = v7;
    sub_10127F918();
  }

  v9 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v10 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v10)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (*(v10 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    v11 = [objc_opt_self() activeKeyboard];
    [v11 removeAutocorrectPrompt];
    sub_1009481E4();
    v12 = *(*(v1 + v9) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v12)
    {
      if (*(v12 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        sub_100947A80();
      }

      else
      {
        sub_100947BA0();
      }

      goto LABEL_15;
    }

LABEL_29:
    __break(1u);
    return;
  }

LABEL_15:
  sub_100960E34();
  if (v13)
  {
    v14 = [v13 selectionViewController];
    if (v14)
    {
      v15 = v14;
      v16 = [*(v14 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc) removeDecorator:v14];
      (*((swift_isaMask & *v15) + 0x188))(v16);
      sub_100912664();
    }
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = [v17 layerHost];

    if (v19)
    {
      if ([v19 respondsToSelector:"asiOSCVC"])
      {
        v20 = [v19 asiOSCVC];
        swift_unknownObjectRelease();
        [v20 updateToolbarButtons];
        v21 = objc_opt_self();
        v22 = [v21 defaultCenter];
        v23 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator);
        v24 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager;
        [v22 removeObserver:v1 name:NSUndoManagerWillUndoChangeNotification object:*(v23 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager)];

        v25 = [v21 defaultCenter];
        [v25 removeObserver:v1 name:NSUndoManagerDidUndoChangeNotification object:*(v23 + v24)];
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_100948AF4()
{
  v1 = v0;
  sub_100960E34();
  if (v2)
  {
    v3 = [v2 selectionViewController];
    if (v3)
    {
      v4 = v3;
      if (!*(v3 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView))
      {
        v5 = (*((swift_isaMask & *v3) + 0x178))();
        (*((swift_isaMask & *v4) + 0x180))(v5);
        v6 = *(v4 + OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc);
        [v6 addDecorator:v4];
      }
    }
  }

  sub_100944F04();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (!*(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      __break(1u);
      return;
    }

    v8 = Strong;
    v9 = [Strong repForInfo:?];

    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();

      if (v10)
      {
        if (([v1 hasText] & 1) == 0)
        {
          sub_100945528();
          v12 = v11;
          v13 = sub_100963750();
          if (v12 != v13)
          {
            v14 = &v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_baseWritingDirectionForInsertion];
            *v14 = v13;
            v14[8] = 0;
          }
        }
      }
    }
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 layerHost];

    if (v17)
    {
      if ([v17 respondsToSelector:"asiOSCVC"])
      {
        v18 = [v17 asiOSCVC];
        swift_unknownObjectRelease();
        [v18 updateToolbarButtons];
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  v21 = *&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator];
  v22 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager;
  [v20 addObserver:v1 selector:"willUndo" name:NSUndoManagerWillUndoChangeNotification object:*(v21 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_undoManager)];

  v23 = [v19 defaultCenter];
  [v23 addObserver:v1 selector:"didUndo" name:NSUndoManagerDidUndoChangeNotification object:*(v21 + v22)];
}

void *sub_10094946C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return _swiftEmptySetSingleton;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    v2 = result;
    v3 = [result repsForInfo:?];
    sub_100006370(0, &qword_1019FB7A0);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100949A1C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (!*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result repsForInfo:?];
  sub_100006370(0, &qword_1019FB7A0);
  sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() < 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v28 = objc_opt_self();
    v5 = [v28 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
    *(inited + 72) = v27;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v26;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 2849;
    v15 = v29;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v27;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Should only ever be at most one editing text rep.", 49, 2, _swiftEmptyArrayStorage);

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

    [v28 handleFailureInFunction:v22 file:v23 lineNumber:2849 isFatal:0 format:v24 args:v21];

    goto LABEL_10;
  }

  if (*(v4 + 16) >= 2)
  {
    goto LABEL_7;
  }

LABEL_10:
  v25 = sub_100BC17E0(v4);

  if (v25)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

double sub_100949F2C(double a1, double a2)
{
  v5 = sub_100949A1C();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = (v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds);
    if (CGRectIsNull(*v8))
    {
    }

    else
    {
      [v7 convertNaturalPointFromUnscaledCanvas:{a1, a2}];
      [v7 convertNaturalPointToUnscaledCanvas:{sub_1001203B8(v9, v10, v8->origin.x, v8->origin.y, v8->size.width, v8->size.height)}];
      v6 = v11;
    }
  }

  return v6;
}

double sub_10094A034(void *a1)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v15[3] = sub_100006370(0, &qword_1019FFDF0);
  v15[0] = a1;
  v2 = a1;
  v3 = sub_100949A1C();
  if (v3)
  {
    v4 = v3;
    [v3 rectForSelection:v2 includeRuby:0 includePaginatedAttachments:0];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v13 = sub_100120414(v6, v8, v10, v12);
  }

  else
  {
    v13 = 0.0;
  }

  sub_100005070(v15);
  return v13;
}

uint64_t type metadata accessor for CRLWPEditor()
{
  result = qword_101A094C8;
  if (!qword_101A094C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10094A4A4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_10094A648(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() activeKeyboard];
  if (result)
  {
    v5 = result;
    [result acceptAutocorrection];

    v6 = *(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
    sub_10000BE14(a2, v16, &unk_1019F4D00);
    v7 = v17;
    if (v17)
    {
      v8 = sub_100020E58(v16, v17);
      v9 = *(v7 - 8);
      v10 = __chkstk_darwin(v8);
      v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v9 + 16))(v12, v10);
      v13 = v6;
      v14 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v9 + 8))(v12, v7);
      sub_100005070(v16);
    }

    else
    {
      v15 = v6;
      v14 = 0;
    }

    [v6 moveRight:v14];

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10094A8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v9 = 0u;
    v10 = 0u;
    v7 = a1;
  }

  if (qword_1019F1E60 != -1)
  {
    swift_once();
  }

  [a1 arrowKeyReceivedInDirection:a4 withModifierKeys:{qword_101AD77E0, v9, v10}];

  return sub_10000CAAC(&v9, &unk_1019F4D00);
}

uint64_t sub_10094A990(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
  sub_10000BE14(a1, v15, &unk_1019F4D00);
  v5 = v16;
  if (v16)
  {
    v6 = sub_100020E58(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 *a2];

  return swift_unknownObjectRelease();
}

uint64_t sub_10094AB10(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
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
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  sub_10094A990(v9, a4);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

char *sub_10094ABE4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_10;
  }

  if (*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
  {
    v2 = result;
    v3 = [result layoutForInfo:?];

    if (v3)
    {
      type metadata accessor for CRLWPLayout();
      v4 = swift_dynamicCastClass();

      if (v4)
      {
        sub_100960E34();
        if (!v5 || (v6 = [v5 selectedTextRange]) == 0)
        {
          v7 = objc_opt_self();
          v8 = [v7 _atomicIncrementAssertCount];
          v40 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v40);
          StaticString.description.getter();
          v9 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v10 = String._bridgeToObjectiveC()();

          v11 = [v10 lastPathComponent];

          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v15 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v8;
          v17 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v17;
          v18 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v18;
          *(inited + 72) = v9;
          *(inited + 136) = &type metadata for String;
          v19 = sub_1000053B0();
          *(inited + 112) = v12;
          *(inited + 120) = v14;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v19;
          *(inited + 152) = 2969;
          v20 = v40;
          *(inited + 216) = v17;
          *(inited + 224) = v18;
          *(inited + 192) = v20;
          v21 = v9;
          v22 = v20;
          v23 = static os_log_type_t.error.getter();
          sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v24 = static os_log_type_t.error.getter();
          sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v25 = swift_allocObject();
          v25[2] = 8;
          v25[3] = 0;
          v25[4] = 0;
          v25[5] = 0;
          v26 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v27 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v28 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v29 = String._bridgeToObjectiveC()();

          [v7 handleFailureInFunction:v27 file:v28 lineNumber:2969 isFatal:0 format:v29 args:v26];

          return 0;
        }

        return v6;
      }
    }

LABEL_10:
    v30 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
    NSNotFound.getter();
    v31 = *&v30[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    v32 = OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity;
    v33 = *&v30[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v34 = type metadata accessor for CRLTextRange();
    v35 = objc_allocWithZone(v34);
    v36 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v35[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v35[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v37 = &v35[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v37 = v31;
    *(v37 + 1) = v31;
    *&v35[v36] = v33;
    v41.receiver = v35;
    v41.super_class = v34;
    v38 = objc_msgSendSuper2(&v41, "init");
    v39 = *&v30[v32];
    v6 = v38;

    *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v39;
    return v6;
  }

  __break(1u);
  return result;
}

void sub_10094B110(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10094ABE4();
  if (!v13)
  {
    v21 = objc_opt_self();
    LODWORD(v14) = [v21 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    v37 = [v36 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v38;

    if (qword_1019F20A0 == -1)
    {
LABEL_19:
      v39 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v41 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v41;
      v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v42;
      *(inited + 72) = v27;
      *(inited + 136) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 112) = v23;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v43;
      *(inited + 152) = 2978;
      v44 = v57;
      *(inited + 216) = v41;
      *(inited + 224) = v42;
      *(inited + 192) = v44;
      v45 = v27;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v48, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v49 = swift_allocObject();
      v49[2] = 8;
      v49[3] = 0;
      v49[4] = 0;
      v49[5] = 0;
      v50 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      [v21 handleFailureInFunction:v51 file:v52 lineNumber:2978 isFatal:0 format:v53 args:v50];

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_19;
  }

  v14 = v13;
  v56 = v4;
  v55 = a1;
  if ([v13 isEmpty])
  {
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v15)
    {
      v16 = v15;
      sub_100961050();
      v18 = v17;

      if (v18)
      {

        return;
      }
    }
  }

  v19 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v20)
  {
    v22 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v21 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v20 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v12);
    v23 = v19;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v24 = v56;
    (*(v56 + 16))(v6, v12, v3);
    sub_1009625A4(v12, type metadata accessor for CRLWPStorageCRDTData);
    v25 = CRAttributedString.count.getter();
    v26 = (*(v24 + 8))(v6, v3);
    if (v25 >= (v22 & ~(v22 >> 63)))
    {
      v27 = (v22 & ~(v22 >> 63));
    }

    else
    {
      v27 = v25;
    }

    v28 = v21 & ~(v21 >> 63);
    if (v28 >= v27)
    {
      if (v25 >= v28)
      {
        v29 = (v21 & ~(v21 >> 63));
      }

      else
      {
        v29 = v25;
      }

      __chkstk_darwin(v26);
      *(&v54 - 4) = &type metadata for CRLWPFontNameAttribute;
      v30 = sub_100962324();
      v31 = v55;
      *(&v54 - 3) = v30;
      *(&v54 - 2) = v31;
      KeyPath = swift_getKeyPath();

      v33 = sub_10095DAD4(KeyPath, v23, v27, v29);
      v35 = v34;

      if ((v35 & 1) == 0)
      {

        goto LABEL_21;
      }

      if (*(v33 + 16))
      {

LABEL_21:
        sub_100962378();
        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

void sub_10094B888(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10094ABE4();
  if (!v14)
  {
    v25 = objc_opt_self();
    LODWORD(v15) = [v25 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58);
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v39;

    if (qword_1019F20A0 == -1)
    {
LABEL_19:
      v40 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v15;
      v42 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v42;
      v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v43;
      *(inited + 72) = v28;
      *(inited + 136) = &type metadata for String;
      v44 = sub_1000053B0();
      *(inited + 112) = v23;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v44;
      *(inited + 152) = 2978;
      v45 = v58;
      *(inited + 216) = v42;
      *(inited + 224) = v43;
      *(inited + 192) = v45;
      v46 = v28;
      v47 = v45;
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v50 = swift_allocObject();
      v50[2] = 8;
      v50[3] = 0;
      v50[4] = 0;
      v50[5] = 0;
      v51 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      [v25 handleFailureInFunction:v52 file:v53 lineNumber:2978 isFatal:0 format:v54 args:v51];

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 isEmpty];
  v57 = a1;
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v17)
    {
      v18 = v17;
      v19 = sub_100961174();

      if ((v19 & 0x100000000) == 0)
      {

        return;
      }
    }
  }

  v20 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = *&v20[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v21)
  {
    v22 = *&v15[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v56 = *&v15[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v21 + 896))();
    sub_1005E0A78(&v10[*(v8 + 20)], v13);
    v23 = v20;
    sub_1009625A4(v10, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v5 + 16))(v7, v13, v4);
    sub_1009625A4(v13, type metadata accessor for CRLWPStorageCRDTData);
    v24 = CRAttributedString.count.getter();
    v26 = *(v5 + 8);
    v25 = (v5 + 8);
    v27 = v26(v7, v4);
    if (v24 >= (v22 & ~(v22 >> 63)))
    {
      v28 = (v22 & ~(v22 >> 63));
    }

    else
    {
      v28 = v24;
    }

    v29 = v56 & ~(v56 >> 63);
    if (v29 >= v28)
    {
      if (v24 >= v29)
      {
        v30 = v56 & ~(v56 >> 63);
      }

      else
      {
        v30 = v24;
      }

      __chkstk_darwin(v27);
      *(&v55 - 4) = &type metadata for CRLWPFontSizeAttribute;
      v31 = sub_10082465C();
      v32 = v57;
      *(&v55 - 3) = v31;
      *(&v55 - 2) = v32;
      KeyPath = swift_getKeyPath();

      v34 = sub_10095CB84(KeyPath, v23, v28, v30);
      v36 = v35;

      if ((v36 & 1) == 0 || *(v34 + 16))
      {

        sub_1000C1080(v34, v36 & 1);
        return;
      }

      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

void sub_10094C06C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, char *, void *, void *))
{
  v62 = a5;
  v60 = a4;
  v59 = a3;
  v7 = v5;
  v61 = a1;
  v8 = sub_1005B981C(&unk_1019FFD10);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v12);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10094ABE4();
  if (!v18)
  {
    v31 = objc_opt_self();
    v28 = [v31 _atomicIncrementAssertCount];
    v63 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v63);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    v41 = [v40 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v42;

    if (qword_1019F20A0 == -1)
    {
LABEL_17:
      v43 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v28;
      v45 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v45;
      v46 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v46;
      *(inited + 72) = v27;
      *(inited + 136) = &type metadata for String;
      v47 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v11;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v47;
      *(inited + 152) = 2978;
      v48 = v63;
      *(inited + 216) = v45;
      *(inited + 224) = v46;
      *(inited + 192) = v48;
      v49 = v27;
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

      [v31 handleFailureInFunction:v55 file:v56 lineNumber:2978 isFatal:0 format:v57 args:v54];

      return;
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  v19 = v18;
  if ([v18 isEmpty])
  {
    v20 = *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v20)
    {
      v21 = v20;
      LODWORD(v58) = a2();
      v22 = v58;

      if (v22 != 2)
      {

        return;
      }
    }
  }

  v23 = *(*(v7 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v24)
  {
    v25 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v58 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v24 + 896))();
    sub_1005E0A78(&v14[*(v12 + 20)], v17);
    v26 = v23;
    sub_1009625A4(v14, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v9 + 16))(v11, v17, v8);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v27 = CRAttributedString.count.getter();
    v29 = *(v9 + 8);
    v28 = v9 + 8;
    v30 = v29(v11, v8);
    if (v27 >= (v25 & ~(v25 >> 63)))
    {
      v31 = (v25 & ~(v25 >> 63));
    }

    else
    {
      v31 = v27;
    }

    v32 = v58 & ~(v58 >> 63);
    if (v32 >= v31)
    {
      if (v27 >= v32)
      {
        v27 = (v58 & ~(v58 >> 63));
      }

      v33 = __chkstk_darwin(v30);
      *(&v58 - 4) = v59;
      v34 = v60(v33);
      v35 = v61;
      *(&v58 - 3) = v34;
      *(&v58 - 2) = v35;
      KeyPath = swift_getKeyPath();

      v37 = v62(KeyPath, v26, v31, v27);
      v39 = v38;

      if ((v39 & 1) == 0 || *(v37 + 16))
      {

        sub_1000C1080(v37, v39 & 1);
        return;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_24:
  __break(1u);
}

void sub_10094C804(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019FFD10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v55 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10094ABE4();
  if (!v14)
  {
    v24 = objc_opt_self();
    LODWORD(v15) = [v24 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    v38 = [v37 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v39;

    if (qword_1019F20A0 == -1)
    {
LABEL_21:
      v40 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v15;
      v42 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v42;
      v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v43;
      *(inited + 72) = v27;
      *(inited + 136) = &type metadata for String;
      v44 = sub_1000053B0();
      *(inited + 112) = v22;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v44;
      *(inited + 152) = 2978;
      v45 = v58;
      *(inited + 216) = v42;
      *(inited + 224) = v43;
      *(inited + 192) = v45;
      v46 = v27;
      v47 = v45;
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v49 = static os_log_type_t.error.getter();
      sub_100005404(v40, &_mh_execute_header, v49, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v50 = swift_allocObject();
      v50[2] = 8;
      v50[3] = 0;
      v50[4] = 0;
      v50[5] = 0;
      v51 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v52 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v53 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v54 = String._bridgeToObjectiveC()();

      [v24 handleFailureInFunction:v52 file:v53 lineNumber:2978 isFatal:0 format:v54 args:v51];

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_21;
  }

  v15 = v14;
  v57 = a1;
  if ([v14 isEmpty])
  {
    v16 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v16)
    {
      v17 = v16;
      v18 = sub_100961638();

      if (v18)
      {

        return;
      }
    }
  }

  v19 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v20)
  {
    v21 = *&v15[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v56 = *&v15[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v20 + 896))();
    sub_1005E0A78(&v10[*(v8 + 20)], v13);
    v22 = v19;
    sub_1009625A4(v10, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v5 + 16))(v7, v13, v4);
    sub_1009625A4(v13, type metadata accessor for CRLWPStorageCRDTData);
    v23 = CRAttributedString.count.getter();
    v25 = *(v5 + 8);
    v24 = (v5 + 8);
    v26 = v25(v7, v4);
    if (v23 >= (v21 & ~(v21 >> 63)))
    {
      v27 = (v21 & ~(v21 >> 63));
    }

    else
    {
      v27 = v23;
    }

    v28 = v56 & ~(v56 >> 63);
    if (v28 >= v27)
    {
      if (v23 >= v28)
      {
        v29 = v56 & ~(v56 >> 63);
      }

      else
      {
        v29 = v23;
      }

      __chkstk_darwin(v26);
      *(&v55 - 4) = &type metadata for CRLWPCharacterFillAttribute;
      v30 = sub_10082489C();
      v31 = v57;
      *(&v55 - 3) = v30;
      *(&v55 - 2) = v31;
      KeyPath = swift_getKeyPath();

      v33 = sub_100957838(KeyPath, v22, v27, v29);
      v35 = v34;

      if ((v35 & 1) == 0)
      {

        v33;
        goto LABEL_23;
      }

      if ((v33 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_19;
      }

      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v33 + 32);
LABEL_19:

LABEL_23:
        sub_1000C10AC(v33, v35 & 1);
        return;
      }

      __break(1u);
      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_29:
  __break(1u);
}

void sub_10094CF78(void *a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10094ABE4();
  if (!v13)
  {
    v54 = objc_opt_self();
    LODWORD(v14) = [v54 _atomicIncrementAssertCount];
    v57 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v57);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v22;

    if (qword_1019F20A0 == -1)
    {
LABEL_7:
      v23 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v25 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v25;
      v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v26;
      *(inited + 72) = v18;
      *(inited + 136) = &type metadata for String;
      v27 = sub_1000053B0();
      *(inited + 112) = v21;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v27;
      *(inited + 152) = 2978;
      v28 = v57;
      *(inited + 216) = v25;
      *(inited + 224) = v26;
      *(inited + 192) = v28;
      v29 = v18;
      v30 = v28;
      v31 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v33 = swift_allocObject();
      v33[2] = 8;
      v33[3] = 0;
      v33[4] = 0;
      v33[5] = 0;
      v34 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v37 = String._bridgeToObjectiveC()();

      [v54 handleFailureInFunction:v35 file:v36 lineNumber:2978 isFatal:0 format:v37 args:v34];

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_7;
  }

  v14 = v13;
  v54 = a1;
  if ([v13 isEmpty])
  {
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v15)
    {
      v16 = v15[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline + 8];
      v55 = *&v15[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_underline];
      v56 = v16;
      v53 = v15;
      sub_1005B981C(&unk_101A09620);
      type metadata accessor for CRLWPUnderline(0);
      v17 = swift_dynamicCast();
      if (v17)
      {
        v58 = v17 ^ 1;

        return;
      }

      v57 = 0;
      v58 = v17 ^ 1;
    }
  }

  v38 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v38)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v39 = *&v38[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v39)
  {
    v40 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v52 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v53 = v40;
    (*(*v39 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v12);
    v21 = v38;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v4 + 16))(v6, v12, v3);
    sub_1009625A4(v12, type metadata accessor for CRLWPStorageCRDTData);
    v41 = CRAttributedString.count.getter();
    v42 = (*(v4 + 8))(v6, v3);
    if (v41 >= (v52 & ~(v52 >> 63)))
    {
      v18 = (v52 & ~(v52 >> 63));
    }

    else
    {
      v18 = v41;
    }

    v43 = v53 & ~(v53 >> 63);
    if (v43 >= v18)
    {
      if (v41 >= v43)
      {
        v44 = v53 & ~(v53 >> 63);
      }

      else
      {
        v44 = v41;
      }

      __chkstk_darwin(v42);
      *(&v51 - 4) = &type metadata for CRLWPUnderlineAttribute;
      v45 = sub_100824704();
      v46 = v54;
      *(&v51 - 3) = v45;
      *(&v51 - 2) = v46;
      KeyPath = swift_getKeyPath();

      v48 = sub_100959D4C(KeyPath, v21, v18, v44);
      v50 = v49;

      if ((v50 & 1) == 0 || *(v48 + 16))
      {

        sub_1000C1080(v48, v50 & 1);
        return;
      }

      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
}

void sub_10094D720(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FFD10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v53 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10094ABE4();
  if (!v13)
  {
    v56 = objc_opt_self();
    LODWORD(v14) = [v56 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v59);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v23;

    if (qword_1019F20A0 == -1)
    {
LABEL_8:
      v24 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v26 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v26;
      v27 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v27;
      *(inited + 72) = v19;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v22;
      *(inited + 120) = v12;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 2978;
      v29 = v59;
      *(inited + 216) = v26;
      *(inited + 224) = v27;
      *(inited + 192) = v29;
      v30 = v19;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

      [v56 handleFailureInFunction:v36 file:v37 lineNumber:2978 isFatal:0 format:v38 args:v35];

      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_8;
  }

  v14 = v13;
  v56 = v4;
  if ([v13 isEmpty])
  {
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
    if (v15)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v16 = v15[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough + 8];
        v57 = *&v15[OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_strikethrough];
        v58 = v16;
        v17 = v15;
        v55 = sub_1005B981C(&unk_101A09600);
        type metadata accessor for CRLWPStrikethru(0);
        v18 = swift_dynamicCast();
        if (v18)
        {
          v60 = v18 ^ 1;

          return;
        }

        v59 = 0;
        v60 = v18 ^ 1;
      }
    }
  }

  v39 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v39)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v54 = a1;
  v40 = *&v39[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v40)
  {
    v41 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v55 = *&v14[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    (*(*v40 + 896))();
    sub_1005E0A78(&v9[*(v7 + 20)], v12);
    v22 = v39;
    sub_1009625A4(v9, type metadata accessor for CRLWPShapeItemCRDTData);
    v42 = v56;
    (*(v56 + 2))(v6, v12, v3);
    sub_1009625A4(v12, type metadata accessor for CRLWPStorageCRDTData);
    v43 = CRAttributedString.count.getter();
    v44 = v42[1](v6, v3);
    if (v43 >= (v41 & ~(v41 >> 63)))
    {
      v19 = (v41 & ~(v41 >> 63));
    }

    else
    {
      v19 = v43;
    }

    v45 = v55 & ~(v55 >> 63);
    if (v45 >= v19)
    {
      if (v43 >= v45)
      {
        v46 = v55 & ~(v55 >> 63);
      }

      else
      {
        v46 = v43;
      }

      __chkstk_darwin(v44);
      *(&v53 - 4) = &type metadata for CRLWPStrikethroughAttribute;
      v47 = sub_10096227C();
      v48 = v54;
      *(&v53 - 3) = v47;
      *(&v53 - 2) = v48;
      KeyPath = swift_getKeyPath();

      v50 = sub_100958DDC(KeyPath, v22, v19, v46);
      v52 = v51;

      if ((v52 & 1) == 0 || *(v50 + 16))
      {

        sub_1000C1080(v50, v52 & 1);
        return;
      }

      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_10094DF08()
{
  KeyPath = swift_getKeyPath();
  sub_10094B888(KeyPath);
  v2 = v1;

  return v2 & 0xFFFFFFFFFFLL;
}

id sub_10094DF48()
{
  KeyPath = swift_getKeyPath();
  sub_10094B110(KeyPath);
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = swift_getKeyPath();
  sub_10094B888(v3);
  v5 = v4;

  if ((v5 & 0xFF00000000) == 0x200000000)
  {

    return 0;
  }

  v7 = *&v5;

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() fontWithDesiredPostScriptName:v8 atSize:v7];

  return v9;
}

void sub_10094E060(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v15 = [Strong commandController];

    if (v15)
    {
      sub_10088E3FC(0);
      [a1 size];
      v5 = v4;
      if (v5 < 999.0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 999.0;
      }

      KeyPath = swift_getKeyPath();
      v8 = [a1 desiredPostScriptName];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      sub_1012E6498(KeyPath, v9, v11);

      v12 = swift_getKeyPath();
      sub_1012E6090(v12, v6);

      v13 = swift_getKeyPath();
      sub_1012E5768(v13, [a1 bold]);

      v14 = swift_getKeyPath();
      sub_1012E57A4(v14, [a1 italic]);

      sub_10088E600(0);
    }
  }
}

uint64_t sub_10094E23C()
{
  KeyPath = swift_getKeyPath();
  sub_10094C06C(KeyPath, sub_10096148C, &type metadata for CRLWPFontBoldAttribute, sub_1008244A8, sub_10095BC20);
  v2 = v1;

  return v2;
}

uint64_t sub_10094E2C0()
{
  KeyPath = swift_getKeyPath();
  sub_10094C06C(KeyPath, sub_100961280, &type metadata for CRLWPFontItalicAttribute, sub_1008245B4, sub_10095ACBC);
  v2 = v1;

  return v2;
}

uint64_t sub_10094E384(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  v3 = a2();
  v5 = v4;
  v6 = v4;

  if (v6 == 2)
  {
    return 2;
  }

  else
  {
    return (v3 != 0) | ((v5 & 1) << 8);
  }
}

uint64_t sub_10094E408(uint64_t a1, uint64_t (*a2)(void))
{
  swift_getKeyPath();
  v3 = a2();

  return v3;
}

uint64_t sub_10094E458()
{
  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v2 = v1;

  return v2;
}

uint64_t sub_10094E498@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();

  v2 = sub_100693C3C();

  *a1 = v2;
  return result;
}

uint64_t sub_10094E53C(float a1)
{
  KeyPath = swift_getKeyPath();
  sub_1012E6090(KeyPath, a1);
}

uint64_t sub_10094E5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  a5(KeyPath, a1);
}

uint64_t sub_10094E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();
  v7 = v6;
  v8 = v6;

  if (v8 == 2)
  {
    return 2;
  }

  else
  {
    return (v5 != 0) | ((v7 & 1) << 8);
  }
}

uint64_t sub_10094E718(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  KeyPath = swift_getKeyPath();
  a5(KeyPath, a1 & 1);
}

uint64_t sub_10094E790(void *a1)
{
  KeyPath = swift_getKeyPath();
  sub_1012E689C(KeyPath, a1);
}

uint64_t sub_10094E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_getKeyPath();
  v5 = a4();

  return v5;
}

uint64_t sub_10094E85C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  type metadata accessor for CRLWPShapeItemData(0);
  swift_dynamicCastClassUnconditional();
  v2 = v1;

  v3 = sub_100693C3C();

  return v3;
}

uint64_t sub_10094E8F0(unsigned __int8 a1)
{
  KeyPath = swift_getKeyPath();
  sub_100947328(KeyPath, a1);
}

void sub_10094E97C()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_1005E0A78(&v7[*(v5 + 20)], v11);
      v14 = v12;
      sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_1009625A4(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      [v15 length];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10094ECE4(uint64_t a1)
{
  sub_100064288(a1, v69);
  if (swift_dynamicCast())
  {
    v3 = v68;
    v4 = type metadata accessor for CRLWPTextString();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
    *v6 = v67;
    *(v6 + 1) = v3;
    v6[16] = 0;
    v65.receiver = v5;
    v65.super_class = v4;
    v7 = objc_msgSendSuper2(&v65, "init");
    [v1 insertWithText:v7];

    return;
  }

  sub_100064288(a1, v69);
  sub_100006370(0, &qword_1019F76F0);
  if (swift_dynamicCast())
  {
    v8 = v67;
    v9 = type metadata accessor for CRLWPTextString();
    v10 = objc_allocWithZone(v9);
    v11 = &v10[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
    *v11 = v67;
    *(v11 + 1) = 0;
    v11[16] = 1;
    v66.receiver = v10;
    v66.super_class = v9;
    v12 = v8;
    v13 = objc_msgSendSuper2(&v66, "init");
    [v1 insertWithText:v13];

    return;
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  v16 = swift_allocObject();
  v16[2] = sub_100967998;
  v16[3] = v15;
  v69[0] = sub_1009679BC;
  v69[1] = v16;
  v17 = v1;
  sub_1005B981C(&qword_101A096F8);
  v18 = String.init<A>(describing:)();
  v20 = v19;
  *(inited + 56) = &type metadata for String;
  v21 = sub_1000053B0();
  *(inited + 32) = v18;
  v22 = inited + 32;
  v63 = v21;
  *(inited + 64) = v21;
  *(inited + 40) = v20;
  v62 = objc_opt_self();
  LODWORD(v23) = [v62 _atomicIncrementAssertCount];
  v69[0] = [objc_allocWithZone(NSString) init];
  v64 = inited;
  sub_100604538(inited, v69);
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  v26 = [v25 lastPathComponent];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_36;
  }

LABEL_6:
  v30 = static OS_os_log.crlAssert;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_10146CA70;
  *(v31 + 56) = &type metadata for Int32;
  *(v31 + 64) = &protocol witness table for Int32;
  *(v31 + 32) = v23;
  v32 = sub_100006370(0, &qword_1019F4D30);
  *(v31 + 96) = v32;
  v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v31 + 72) = v24;
  *(v31 + 136) = &type metadata for String;
  *(v31 + 144) = v63;
  *(v31 + 104) = v33;
  *(v31 + 112) = v27;
  *(v31 + 120) = v29;
  *(v31 + 176) = &type metadata for UInt;
  *(v31 + 184) = &protocol witness table for UInt;
  *(v31 + 152) = 3355;
  v34 = v69[0];
  *(v31 + 216) = v32;
  *(v31 + 224) = v33;
  *(v31 + 192) = v34;
  v35 = v24;
  v36 = v34;
  v37 = static os_log_type_t.error.getter();
  sub_100005404(v30, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v31);
  swift_setDeallocating();
  v63 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v38 = static os_log_type_t.error.getter();
  v39 = v64;
  sub_100005404(v30, &_mh_execute_header, v38, "Failed to insert text. Unexpected type received. %@", 51, 2, v64);

  type metadata accessor for __VaListBuilder();
  v40 = swift_allocObject();
  v40[2] = 8;
  v40[3] = 0;
  v24 = v40 + 3;
  v40[4] = 0;
  v40[5] = 0;
  v23 = *(v64 + 16);
  if (v23)
  {
    v41 = 0;
    while (1)
    {
      v42 = (v22 + 40 * v41);
      v27 = v42[4];
      v29 = sub_100020E58(v42, v42[3]);
      v43 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v44 = *v24;
      v45 = *(v43 + 16);
      v46 = __OFADD__(*v24, v45);
      v47 = *v24 + v45;
      if (v46)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        swift_once();
        goto LABEL_6;
      }

      v29 = v40[4];
      if (v29 >= v47)
      {
        goto LABEL_23;
      }

      if (v29 + 0x4000000000000000 < 0)
      {
        goto LABEL_34;
      }

      v27 = v40[5];
      if (2 * v29 > v47)
      {
        v47 = 2 * v29;
      }

      v40[4] = v47;
      if ((v47 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_35;
      }

      v48 = v22;
      v49 = v39;
      v50 = v43;
      v51 = swift_slowAlloc();
      v52 = v51;
      v40[5] = v51;
      if (v27)
      {
        break;
      }

      v43 = v50;
      v39 = v49;
      v22 = v48;
      if (!v52)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_24:
      v54 = *(v43 + 16);
      if (v54)
      {
        v55 = (v43 + 32);
        v56 = *v24;
        while (1)
        {
          v57 = *v55++;
          *&v52[8 * v56] = v57;
          v56 = *v24 + 1;
          if (__OFADD__(*v24, 1))
          {
            break;
          }

          *v24 = v56;
          if (!--v54)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

LABEL_8:

      if (++v41 == v23)
      {
        goto LABEL_31;
      }
    }

    if (v51 != v27 || v51 >= &v27[8 * v44])
    {
      memmove(v51, v27, 8 * v44);
    }

    v29 = v40;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v43 = v50;
    v39 = v49;
    v22 = v48;
LABEL_23:
    v52 = v40[5];
    if (!v52)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_31:
  v58 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v59 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v60 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v61 = String._bridgeToObjectiveC()();

  [v62 handleFailureInFunction:v59 file:v60 lineNumber:3355 isFatal:0 format:v61 args:v58];

  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_10094F498(char *a1, uint64_t a2)
{
  sub_100960E34();
  if (v4)
  {
    v5 = v4;
    v6 = [swift_unknownObjectRetain() selectedTextRange];
    if (v6)
    {
      v7 = *(*&a1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v7)
      {
        v8 = v6;
        if (!*(v7 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
        {
LABEL_7:
          v11 = sub_100943964();
          if (v11)
          {
            v12 = v11;
            sub_10127F918();
          }

          [a1 replace:v8 with:a2];

          swift_unknownObjectRelease();
          return;
        }

        v9 = [v5 selectedTextRangeWithoutMarkedText];
        if (v9)
        {
          v10 = v9;

          v8 = v10;
          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
  }

  v13 = objc_opt_self();
  v14 = [v13 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36);
  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

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
  *(inited + 32) = v14;
  v23 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v23;
  v24 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v25;
  *(inited + 152) = 3363;
  v26 = v36;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  *(inited + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v30, "Failed to insert text. Preconditions unmet.", 43, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  [v13 handleFailureInFunction:v33 file:v34 lineNumber:3363 isFatal:0 format:v35 args:v32];
}

void sub_10094F9F8()
{
  sub_100960E34();
  if (v1 && (v2 = [v1 selectedTextRange]) != 0)
  {
    v3 = v2;
    v27 = v0;
    sub_1009666F8(v27, v3, v27);
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
    *(inited + 152) = 3424;
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
    sub_100005404(v12, &_mh_execute_header, v21, "Failed to delete text. No selection.", 36, 2, _swiftEmptyArrayStorage);

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

    [v4 handleFailureInFunction:v24 file:v25 lineNumber:3424 isFatal:0 format:v26 args:v23];
  }
}

uint64_t sub_10094FE78(void *a1)
{
  [a1 action];
  if (static Selector.== infix(_:_:)())
  {
    KeyPath = swift_getKeyPath();
    v3 = &type metadata for CRLWPFontBoldAttribute;
    v4 = sub_10096148C;
    v5 = sub_1008244A8;
    v6 = sub_10095BC20;
LABEL_5:
    sub_10094C06C(KeyPath, v4, v3, v5, v6);
    v8 = v7;

    if (v8 == 2)
    {
      return result;
    }

    if ((v8 & 0x100) != 0)
    {
      v10 = 2;
    }

    else
    {
      v10 = v8 & 1;
    }

    goto LABEL_10;
  }

  if (static Selector.== infix(_:_:)())
  {
    KeyPath = swift_getKeyPath();
    v3 = &type metadata for CRLWPFontItalicAttribute;
    v4 = sub_100961280;
    v5 = sub_1008245B4;
    v6 = sub_10095ACBC;
    goto LABEL_5;
  }

  if (static Selector.== infix(_:_:)())
  {
    v11 = swift_getKeyPath();
    sub_10094CF78(v11);
LABEL_17:
    v15 = v12;
    v16 = v13;
    v17 = v13;

    if (v17 == 2)
    {
      return result;
    }

    if (v16)
    {
      v10 = 2;
    }

    else
    {
      v10 = v15 != 0;
    }

    goto LABEL_10;
  }

  if (static Selector.== infix(_:_:)())
  {
    v14 = swift_getKeyPath();
    sub_10094D720(v14);
    goto LABEL_17;
  }

  if (static Selector.== infix(_:_:)())
  {
    v18 = swift_getKeyPath();
    sub_100946008(v18);
    v20 = v19;
    v22 = v21;
    v23 = v21;

    if (v23 == 2)
    {
      return result;
    }

    v24 = v20 == 1;
  }

  else if (static Selector.== infix(_:_:)())
  {
    v25 = swift_getKeyPath();
    sub_100946008(v25);
    v27 = v26;
    v22 = v28;
    v29 = v28;

    if (v29 == 2)
    {
      return result;
    }

    v24 = v27 == 0;
  }

  else if (static Selector.== infix(_:_:)())
  {
    v30 = swift_getKeyPath();
    sub_100946008(v30);
    v32 = v31;
    v22 = v33;
    v34 = v33;

    if (v34 == 2)
    {
      return result;
    }

    v24 = v32 == 2;
  }

  else
  {
    result = static Selector.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      return result;
    }

    v35 = swift_getKeyPath();
    sub_100946008(v35);
    v37 = v36;
    v22 = v38;
    v39 = v38;

    if (v39 == 2)
    {
      return result;
    }

    v24 = v37 == 3;
  }

  v40 = v24;
  v10 = v40 & ~v22;
LABEL_10:

  return [a1 setState:v10];
}

uint64_t sub_10095020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1009677CC();
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      sub_10000630C(v12, &v16);
      sub_100020E58(&v16, v17);
      swift_getDynamicType();
      v13 = (*(v18 + 8))();
      v14 = v13(v4, a1, a2, a3);

      if (v14)
      {

        return sub_100050F74(&v16, a4);
      }

      ++v11;
      result = sub_100005070(&v16);
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_100950348(void *a1, _BYTE *a2)
{
  v3 = v2;
  v6 = [a1 start];
  v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v7 != NSNotFound.getter())
  {
    v20 = a1;
    goto LABEL_13;
  }

  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v9 = *(*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v9)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (*(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    sub_1009481E4();
  }

  sub_100960E34();
  if (v10)
  {
    v11 = [v10 selectedTextRange];
    if (v11)
    {

      sub_100960E34();
      if (v12)
      {
        v13 = [v12 selectedTextRange];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 start];
          v16 = *&v15[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

          v17 = NSNotFound.getter();
          if (v16 != v17)
          {
            sub_100960E34();
            if (!v29)
            {
LABEL_28:
              __break(1u);
              return;
            }

            v20 = [v29 selectedTextRange];
            if (v20)
            {
              goto LABEL_13;
            }

            __break(1u);
            goto LABEL_26;
          }
        }
      }
    }
  }

  v18 = *(*(v3 + v8) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19 = v18;
  v20 = sub_100D7320C(v19);

LABEL_13:
  v21 = *&a2[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  v22 = *&a2[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
  if (a2[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16])
  {
    v23 = [v21 string];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_1007EF850(v21, v22, 1);
    v21 = v24;
    v22 = v26;
  }

  else
  {
  }

  sub_10095020C(v21, v22, v20, &v30);

  if (v31)
  {
    sub_100050F74(&v30, v32);
    v27 = v33;
    v28 = v34;
    sub_100020E58(v32, v33);
    if ((*(v28 + 16))(v3, v20, v27, v28))
    {

      sub_100005070(v32);
      return;
    }

    sub_100005070(v32);
  }

  else
  {
    sub_10000CAAC(&v30, &qword_101A096E0);
  }

  sub_100935920(v20, a2, 1);
}

void sub_100950684(uint64_t a1, char *a2, char *a3, int a4)
{
  v112 = a4;
  v7 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v101 - v11;
  v13 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v13 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v101 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong selectionModelTranslator];

    if (v21)
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      if (v22)
      {
        v23 = v22;
        v24 = [v22 commandController];

        if (v24)
        {
          v107 = v9;
          v110 = v21;
          v111 = v12;
          v109 = a2;
          v106 = &a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v25 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v105 = a3;
          v26 = *&a3[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
          v27 = *&a3[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8];
          v28 = a3[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16];
          v108 = v24;
          if (v28)
          {
            v29 = [v26 string];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v30 = String.count.getter();
          }

          else
          {

            v30 = String.UTF16View.count.getter();
          }

          sub_1007EF850(v26, v27, v28);
          v54 = v25 + v30;
          if (__OFADD__(v25, v30))
          {
            __break(1u);
          }

          else if (v54 >= v25)
          {
            v55 = sub_1005B981C(&qword_101A0D850);
            v56 = *(*(v55 - 8) + 56);
            v56(v18, 1, 1, v55);
            v57 = sub_1005B981C(&qword_101A06188);
            v103 = *(v57 - 8);
            v58 = *(v103 + 56);
            v104 = v57;
            v102 = v58;
            (v58)(v111, 1, 1);
            if (!__OFSUB__(v54, v25))
            {
              if (v30 >= 1)
              {
                v59 = *(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
                if (v59)
                {
                  v60 = v59;
                  sub_100D65B10(v15);

                  v61 = 0;
                }

                else
                {
                  v61 = 1;
                }

                sub_10000CAAC(v18, &unk_101A0DAB0);
                v56(v15, v61, 1, v55);
                sub_10003DFF8(v15, v18, &unk_101A0DAB0);
                v62 = a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_baseWritingDirectionForInsertion;
                if ((*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_baseWritingDirectionForInsertion + 8) & 1) == 0)
                {
                  v63 = *v62;
                  v64 = v107;
                  *v107 = _swiftEmptySetSingleton;
                  v65 = v104;
                  sub_10068D144();
                  CRAttributedString.Attributes.init()();
                  v102(v64, 0, 1, v65);
                  v66 = v111;
                  sub_10002C638(v64, v111, &unk_101A096B0);
                  if (!(*(v103 + 48))(v66, 1, v65))
                  {
                    KeyPath = swift_getKeyPath();
                    sub_100E6DE34(&v113, 0xD000000000000014, 0x800000010157BA40);

                    __chkstk_darwin(v68);
                    *(&v101 - 4) = &type metadata for CRLWPParagraphScope;
                    *(&v101 - 3) = &type metadata for CRLWPWritingDirectionAttribute;
                    *(&v101 - 2) = sub_100962450();
                    *(&v101 - 1) = KeyPath;
                    swift_getKeyPath();
                    v113 = v63;
                    v114 = 0;
                    sub_1005B981C(qword_101A0CF60);
                    sub_1009624A4();
                    CRAttributedString.Attributes.subscript.setter();
                  }

                  v69 = swift_getKeyPath();
                  sub_1012E7FD0(v69);

                  *v62 = 0;
                  *(v62 + 8) = 1;
                }
              }

              if (v112)
              {
                v70 = [v109 start];
                v71 = *&v70[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

                v72 = NSNotFound.getter();
                v73 = v111;
                if (v71 == v72)
                {
                  goto LABEL_30;
                }

                v74 = *v106;
                v75 = v106[1];
                v76 = v75 - *v106;
                if (!__OFSUB__(v75, *v106))
                {
                  goto LABEL_31;
                }

                __break(1u);
              }

              sub_100960E34();
              v73 = v111;
              if (v77)
              {
                v74 = [v77 selectedRange];
                v76 = v78;
LABEL_31:
                v79 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
                v80 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
                if (!v80)
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
                  return;
                }

                v81 = v110;
                v82 = [v110 selectionPathForRange:v74 onStorage:v76 headCursorAffinity:v80 tailCursorAffinity:{2, 2}];
                if (!v82)
                {
                  sub_10000CAAC(v18, &unk_101A0DAB0);

LABEL_41:
                  sub_10000CAAC(v73, &unk_101A096B0);
                  return;
                }

                v83 = v82;
                v84 = [v109 start];
                v85 = *&v84[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

                if (v85 == NSNotFound.getter())
                {
                  v86 = 0x7FFFFFFFFFFFFFFFLL;
                  v87 = 0;
                  goto LABEL_37;
                }

                v86 = *v106;
                v88 = v106[1];
                v87 = v88 - *v106;
                if (!__OFSUB__(v88, *v106))
                {
LABEL_37:
                  v89 = *(*(a1 + v79) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
                  if (v89)
                  {
                    v90 = v110;
                    v91 = [v110 selectionPathForRange:v86 onStorage:v87 headCursorAffinity:v89 tailCursorAffinity:{1, 2}];
                    if (v91)
                    {
                      v92 = v91;
                      v93 = [objc_allocWithZone(CRLWPReplaceTextCommandSelectionBehavior) initWithCommitSelectionPath:v83 forwardSelectionPath:v92 reverseSelectionPath:v92 usePersistableCommitSelectionPath:1];
                      v94 = v73;
                      v95 = v73;
                      v96 = v107;
                      sub_10000BE14(v94, v107, &unk_101A096B0);
                      v97 = sub_1009512C8(v109, v105, v18, v96);
                      v98 = v96;
                      v73 = v95;
                      sub_10000CAAC(v98, &unk_101A096B0);
                      v99 = v93;
                      v100 = v108;
                      sub_100888700(v97, 0, v93, 4, 0);

                      sub_10000CAAC(v18, &unk_101A0DAB0);
                    }

                    else
                    {
                      sub_10000CAAC(v18, &unk_101A0DAB0);
                    }

                    goto LABEL_41;
                  }

                  goto LABEL_47;
                }

LABEL_45:
                __break(1u);
                goto LABEL_46;
              }

LABEL_30:
              v74 = 0x7FFFFFFFFFFFFFFFLL;
              v76 = 0;
              goto LABEL_31;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          __break(1u);
          goto LABEL_44;
        }
      }
    }
  }

  v31 = objc_opt_self();
  v32 = [v31 _atomicIncrementAssertCount];
  v113 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v113);
  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  v35 = [v34 lastPathComponent];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v39 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v32;
  v41 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v41;
  v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v42;
  *(inited + 72) = v33;
  *(inited + 136) = &type metadata for String;
  v43 = sub_1000053B0();
  *(inited + 112) = v36;
  *(inited + 120) = v38;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v43;
  *(inited + 152) = 3540;
  v44 = v113;
  *(inited + 216) = v41;
  *(inited + 224) = v42;
  *(inited + 192) = v44;
  v45 = v33;
  v46 = v44;
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v48 = static os_log_type_t.error.getter();
  sub_100005404(v39, &_mh_execute_header, v48, "Failed to insert text. Preconditions unmet.", 43, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v49 = swift_allocObject();
  v49[2] = 8;
  v49[3] = 0;
  v49[4] = 0;
  v49[5] = 0;
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  [v31 handleFailureInFunction:v51 file:v52 lineNumber:3540 isFatal:0 format:v53 args:v50];
}

id sub_1009512C8(uint64_t a1, char *a2, uint64_t a3, objc_class *a4)
{
  v65 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v65);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v59 - v11);
  v13 = sub_1005B981C(&unk_101A096B0);
  __chkstk_darwin(v13 - 8);
  v64 = &v59 - v14;
  v15 = sub_1005B981C(&unk_101A0DAB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v59 - v16;
  v18 = &a2[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  if (a2[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16] == 1)
  {
    v60 = v4;
    v61 = a1;
    v62 = a3;
    v63 = a4;
    v19 = *v18;
    v20 = *(v18 + 1);
    v21 = *v18;
    v22 = [v21 string];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v26 && (v27 = [v21 attributesAtIndex:0 effectiveRange:0], type metadata accessor for Key(0), sub_1009624F8(&qword_1019F34A0, type metadata accessor for Key), v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v27, v29 = *(v28 + 16), , !v29))
    {
      v49 = v20;
      a1 = v61;
      if (qword_1019F20D0 != -1)
      {
        swift_once();
      }

      v50 = static OS_os_log.crlTextInput;
      v51 = static os_log_type_t.debug.getter();
      sub_100005404(v50, &_mh_execute_header, v51, "Replacing an attributed string without any attributes", 53, 2, _swiftEmptyArrayStorage);
      v52 = [v21 string];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v56 = type metadata accessor for CRLWPTextString();
      v57 = objc_allocWithZone(v56);
      v58 = &v57[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v58 = v53;
      *(v58 + 1) = v55;
      v58[16] = 0;
      v67.receiver = v57;
      v67.super_class = v56;
      v30 = objc_msgSendSuper2(&v67, "init");
      sub_1007EF850(v19, v49, 1);
      a3 = v62;
      a4 = v63;
      v4 = v60;
    }

    else
    {
      sub_1007EF850(v19, v20, 1);
      v30 = a2;
      a3 = v62;
      a4 = v63;
      v4 = v60;
      a1 = v61;
    }
  }

  else
  {
    v30 = a2;
  }

  v62 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  v31 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v32 = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
  v33 = v17;
  sub_10000BE14(a3, v17, &unk_101A0DAB0);
  v34 = v64;
  sub_10000BE14(a4, v64, &unk_101A096B0);
  v63 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v35 = objc_allocWithZone(v63);
  *v12 = v31;
  v12[1] = v32;
  v12[2] = v30;
  v36 = v12;
  v37 = v65;
  sub_10000BE14(v33, v36 + *(v65 + 64), &unk_101A0DAB0);
  sub_10000BE14(v34, v36 + *(v37 + 80), &unk_101A096B0);
  v38 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v39 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v39 - 8) + 56))(&v35[v38], 1, 1, v39);
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  v40 = v62;
  *&v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v62;
  v41 = v66;
  sub_10000BE14(v36, v66, &unk_101A0DAA0);
  v42 = *(v41 + 16);
  v43 = *(v37 + 64);
  v44 = *(v37 + 80);
  v45 = &v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v45 = *v41;
  *(v45 + 2) = v42;
  sub_10003DFF8(v41 + v43, &v45[*(v37 + 64)], &unk_101A0DAB0);
  sub_10003DFF8(v41 + v44, &v45[*(v37 + 80)], &unk_101A096B0);
  v68.receiver = v35;
  v68.super_class = v63;
  v46 = v40;
  v47 = objc_msgSendSuper2(&v68, "init");
  sub_10000CAAC(v36, &unk_101A0DAA0);
  sub_10000CAAC(v34, &unk_101A096B0);
  sub_10000CAAC(v33, &unk_101A0DAB0);
  return v47;
}

uint64_t sub_10095190C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100960E34();
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v8 = a1;
    sub_100960E34();
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v9 = [v7 selectedTextRange];
  if (v9)
  {
    v10 = *&v9[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v11 = *&v9[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

    a4(v10, v11);
  }

LABEL_7:

  return sub_10000CAAC(&v13, &unk_1019F4D00);
}

void sub_100951AE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
    if (!v4)
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = 0;
      goto LABEL_7;
    }

    v5 = v4;
    v6 = [v5 start];
    v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    if (v7 == NSNotFound.getter())
    {
      v8 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = 0;

LABEL_7:
      *a2 = v8;
      a2[1] = v9;
      return;
    }

    v8 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v10 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

    v11 = __OFSUB__(v10, v8);
    v9 = v10 - v8;
    if (!v11)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_100951BD0()
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v2 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  *(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange) = 0;

  v4 = *(*(v0 + v1) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (*(v4 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {

    sub_100947A80();
  }

  else
  {

    sub_100947BA0();
  }
}

void sub_100951D78(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 start];
      v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v7 == NSNotFound.getter())
      {

        v4 = 0;
      }
    }

    *a2 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100951E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&unk_1019F4D00);
  v8 = swift_allocObject();
  sub_10000BE14(a1, v8 + 16, &unk_1019F4D00);
  type metadata accessor for _NSRange(0);
  sub_100951F3C(a1, v3, a2, a3);
  return swift_arrayDestroy();
}

void sub_100951F3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_10000BE14(a1, v33, &unk_1019F4D00);
  if (v34)
  {
    sub_100006370(0, &qword_1019F76F0);
    if (swift_dynamicCast())
    {

      sub_10000BE14(a1, v33, &unk_1019F4D00);
      if (v34)
      {
        if (swift_dynamicCast())
        {
          v8 = v32;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        sub_10000CAAC(v33, &unk_1019F4D00);
        v8 = 0;
      }

      [a2 setAttributedMarkedText:v8 selectedRange:{a3, a4}];
      goto LABEL_20;
    }
  }

  else
  {
    sub_10000CAAC(v33, &unk_1019F4D00);
  }

  sub_10000BE14(a1, v33, &unk_1019F4D00);
  sub_1005B981C(&unk_1019F4D00);
  sub_1005B981C(&unk_1019F6C70);
  if (swift_dynamicCast())
  {

    sub_10000BE14(a1, v33, &unk_1019F4D00);
    if (v34)
    {
      if (swift_dynamicCast())
      {
        v8 = String._bridgeToObjectiveC()();

LABEL_17:
        [a2 setMarkedText:v8 selectedRange:{a3, a4}];
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000CAAC(v33, &unk_1019F4D00);
    }

    v8 = 0;
    goto LABEL_17;
  }

  v31 = objc_opt_self();
  v9 = [v31 _atomicIncrementAssertCount];
  v33[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v33);
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
  v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v19;
  *(inited + 72) = v10;
  *(inited + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 112) = v13;
  *(inited + 120) = v15;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v20;
  *(inited + 152) = 3668;
  v21 = v33[0];
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
  sub_100005404(v16, &_mh_execute_header, v25, "Unknown marked text type.", 25, 2, _swiftEmptyArrayStorage);

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
  v8 = String._bridgeToObjectiveC()();

  [v31 handleFailureInFunction:v28 file:v29 lineNumber:3668 isFatal:0 format:v8 args:v27];

LABEL_20:
  v30 = *(*&a2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v30)
  {
    if (*(v30 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10095260C(int a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = objc_allocWithZone(NSAttributedString);
    v9 = String._bridgeToObjectiveC()();
    v11 = [v8 initWithString:v9];

    [a3 setAttributedMarkedText:v11 selectedRange:{a4, a5}];
    v10 = *(*&a3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v10)
    {
      if (*(v10 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        sub_100947A80();
      }

      else
      {
        sub_100947BA0();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    [a3 unmarkText];
  }
}

void sub_100952848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  v48 = a1;
  sub_100960E34();
  if (v8)
  {
    v9 = [swift_unknownObjectRetain() selectedTextRangeWithoutMarkedText];
    if (!v9)
    {
LABEL_40:

      swift_unknownObjectRelease();
      return;
    }

    v10 = v9;
    if (![v48 length] && !a3 && !a4)
    {
      sub_1009481E4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (!*(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = Strong;
        v13 = [Strong layoutForInfo:?];

        if (v13)
        {
          type metadata accessor for CRLWPLayout();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = v14;
            if ([v14 parentAutosizes])
            {
              [v15 invalidateSize];
            }

            *(v15 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
            [v15 invalidate];
            [v15 setNeedsDisplay];
          }
        }
      }

      v16 = *(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v16)
      {
        if (*(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
        {
          sub_100947A80();
        }

        else
        {
          sub_100947BA0();
        }

        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v18 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v19 = *(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v19)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v20 = v10;
    v47 = *(v19 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
    if (v47)
    {
      v20 = v47;
    }

    v21 = [v20 start];
    v46 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v45 = [v48 length];
    v22 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v22)
    {
      goto LABEL_50;
    }

    v23 = type metadata accessor for CRLTextRange();
    v24 = objc_allocWithZone(v23);
    v25 = v22;
    v26 = sub_10078CDF0(a3, a4);
    v27 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS];
    *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = v26;

    v28 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v28)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v29 = *(v28 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
    *(v28 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange) = v10;
    v30 = v10;

    v31 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v31)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v32 = *(v31 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
    *(v31 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText) = a1;
    v33 = v48;

    v34 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v34)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v35 = objc_allocWithZone(v23);
    v36 = v34;
    v37 = sub_10078CDF0(v46, v45);
    v38 = *&v36[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
    *&v36[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = v37;

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      if (!*(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
      {
LABEL_56:
        __break(1u);
        return;
      }

      v40 = v39;
      v41 = [v39 layoutForInfo:?];

      if (v41)
      {
        type metadata accessor for CRLWPLayout();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v43 = v42;
          if ([v42 parentAutosizes])
          {
            [v43 invalidateSize];
          }

          *(v43 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
          [v43 invalidate];
          [v43 setNeedsDisplay];
        }
      }
    }

    v44 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v44)
    {
      goto LABEL_54;
    }

    if (*(v44 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }

    swift_unknownObjectRelease();
    v17 = v47;
  }

  else
  {
    v17 = v48;
  }
}