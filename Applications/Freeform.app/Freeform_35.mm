void sub_1006B42DC(uint64_t a1, uint64_t a2)
{
  sub_1005B981C(&qword_1019F8DC0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1006B4354(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a3;
  v81 = a5;
  v82 = a4;
  v84 = a1;
  v79 = type metadata accessor for URL.DirectoryHint();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1005B981C(&qword_1019F8DD8);
  __chkstk_darwin(v80);
  v78 = (&v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v68 - v13);
  v15 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  __chkstk_darwin(v24);
  v77 = &v68 - v25;
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  sub_10000BE14(v84, v17, &unk_1019F33C0);
  v84 = v19;
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000CAAC(v17, &unk_1019F33C0);
    if (v74)
    {
      v29 = v74;
    }

    else
    {
      v29 = [objc_opt_self() crl_fileReadCorruptedFileErrorWithUserInfo:0];
    }

    *v14 = v29;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v82(v14);
    return sub_10000CAAC(v14, &qword_1019F8DD8);
  }

  else
  {
    v84[4](v28, v17, v18);
    v30 = objc_opt_self();
    v31 = [v30 defaultManager];
    v32 = [v31 temporaryDirectory];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init()();
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (*(v75 + 8))(v10, v76);
    v85 = v33;
    v86 = v35;
    v36 = v83;
    v37 = *(v83 + 104);
    LODWORD(v74) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v38 = v79;
    v75 = v83 + 104;
    v71 = v37;
    v37(v7);
    v39 = sub_100017CD8();
    v40 = v77;
    v70 = v39;
    URL.appending<A>(path:directoryHint:)();
    v41 = *(v36 + 8);
    v76 = v7;
    v83 = v36 + 8;
    v69 = v41;
    v41(v7, v38);

    v42 = v84[1];
    (v42)(v23, v18);
    v43 = [v30 defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    (v42)(v23, v18);
    URL._bridgeToObjectiveC()(v47);
    v49 = v48;
    v85 = 0;
    LODWORD(v38) = [v43 copyItemAtURL:v46 toURL:v48 error:&v85];

    v50 = v85;
    if (v38)
    {
      v51 = v72;
      v84[2](v72, v28, v18);
      v52 = objc_allocWithZone(NSMutableAttributedString);
      v53 = v50;
      v54 = v73;

      v55 = sub_1006B4E94(v51, v54, 0);
      v56 = *(sub_1005B981C(&qword_1019F8DE0) + 48);
      v85 = URL.lastPathComponent.getter();
      v86 = v57;
      v73 = v18;
      v84 = v28;
      v58 = v76;
      v59 = v40;
      v60 = v79;
      v71(v76, v74, v79);
      v61 = v78;
      URL.appending<A>(path:directoryHint:)();
      v69(v58, v60);

      *(v61 + v56) = v55;
      _s18LoadedRichTextTypeOMa(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v62 = v55;
      v82(v61);

      sub_10000CAAC(v61, &qword_1019F8DD8);
      v63 = v73;
      (v42)(v59, v73);
      return (v42)(v84, v63);
    }

    else
    {
      v65 = v85;
      v66 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v67 = v78;
      *v78 = v66;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v82(v67);

      sub_10000CAAC(v67, &qword_1019F8DD8);
      (v42)(v40, v18);
      return (v42)(v28, v18);
    }
  }
}

uint64_t sub_1006B4B48(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v11 = sub_1005B981C(&qword_1019F8DD8);
  __chkstk_darwin(v11);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v22[-v15];
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v17 = a3;
    }

    else
    {
      v17 = [objc_opt_self() crl_fileReadCorruptedFileErrorWithUserInfo:0];
    }

    *v16 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a4(v16);
  }

  else
  {
    v18 = objc_allocWithZone(NSMutableAttributedString);
    sub_100024E84(a1, a2);
    sub_100024E84(a1, a2);

    v19 = sub_1006B5B80(a1, a2, a6, 0);
    sub_100025870(a1, a2);
    *v13 = v19;
    _s18LoadedRichTextTypeOMa(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    a4(v13);

    sub_100025870(a1, a2);
    v16 = v13;
  }

  return sub_10000CAAC(v16, &qword_1019F8DD8);
}

id sub_1006B4E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v8 = v7;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_1006B5FE4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = 0;
  v10 = [v4 initWithURL:v8 options:isa documentAttributes:a3 error:&v18];

  v11 = v18;
  if (v10)
  {
    v12 = type metadata accessor for URL();
    v13 = *(*(v12 - 8) + 8);
    v14 = v11;
    v13(a1, v12);
  }

  else
  {
    v15 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = type metadata accessor for URL();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  return v10;
}

uint64_t sub_1006B502C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a1;
  v33 = type metadata accessor for UTType();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  sub_1005B981C(&qword_1019F8DC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSDocumentTypeDocumentOption;
  v18 = inited + 32;
  if (a2 < 3)
  {
    v19 = inited;
    v20 = **(&off_101881040 + a2);
    type metadata accessor for DocumentType(0);
    *(v19 + 64) = v21;
    *(v19 + 40) = v20;
    v22 = NSDocumentTypeDocumentOption;
    v23 = sub_100BD5AEC(v19);
    swift_setDeallocating();
    sub_10000CAAC(v18, &qword_1019F8DD0);
    if (a2)
    {
      v24 = v33;
      if (a2 != 2)
      {
        static UTType.rtfd.getter();
        (*(v5 + 32))(v16, v13, v24);
        v27 = swift_allocObject();
        v27[2] = v30;
        v27[3] = v31;
        v27[4] = v23;

        v26 = NSItemProvider.loadFileRepresentation(for:openInPlace:completionHandler:)();
        goto LABEL_8;
      }

      static UTType.flatRTFD.getter();
    }

    else
    {
      static UTType.rtf.getter();
      v24 = v33;
    }

    (*(v5 + 32))(v10, v7, v24);
    v25 = swift_allocObject();
    v25[2] = v30;
    v25[3] = v31;
    v25[4] = v23;

    v26 = NSItemProvider.loadDataRepresentation(for:completionHandler:)();
    v16 = v10;
LABEL_8:

    (*(v5 + 8))(v16, v24);
    return v26;
  }

  v34 = a2;
  v29 = NSDocumentTypeDocumentOption;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

char *sub_1006B5364(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (**a7)(const void *, Class))
{
  v71 = a6;
  v74 = a5;
  v12 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v69 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v72 = a7;
  v73 = v19;
  *(v19 + 16) = a7;
  _Block_copy(a7);

  UTType.init(_:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019F8DB0);
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v20 = sub_100920E18(v18);
    v22 = v21;
    (*(v16 + 8))(v18, v15);
    if ((v22 & 1) == 0)
    {
      v61 = [objc_allocWithZone(CRLBoardItemProviderFactory) initWithBoardItemFactory:a2];
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      v63[2] = v62;
      v63[3] = a1;
      v65 = v73;
      v64 = v74;
      v63[4] = v20;
      v63[5] = v64;
      v63[6] = sub_1006B5F50;
      v63[7] = v65;
      v63[8] = v61;

      v66 = a1;

      v67 = v61;
      v68 = sub_1006B502C(v66, v20, sub_1006B5F58, v63);

      return v68;
    }
  }

  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v24 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 32) = a3;
  v74 = inited + 32;
  v71 = v25;
  *(inited + 64) = v25;
  *(inited + 40) = a4;
  v26 = objc_opt_self();

  v70 = v26;
  LODWORD(v26) = [v26 _atomicIncrementAssertCount];
  v75 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v75);
  StaticString.description.getter();
  v27 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 lastPathComponent];

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (qword_1019F20A0 != -1)
  {
LABEL_35:
    swift_once();
  }

  v33 = static OS_os_log.crlAssert;
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_10146CA70;
  *(v34 + 56) = &type metadata for Int32;
  *(v34 + 64) = &protocol witness table for Int32;
  *(v34 + 32) = v26;
  v35 = sub_100006370(0, &qword_1019F4D30);
  *(v34 + 96) = v35;
  v36 = sub_1005CF04C();
  *(v34 + 72) = v27;
  v37 = v71;
  *(v34 + 136) = v24;
  *(v34 + 144) = v37;
  *(v34 + 104) = v36;
  *(v34 + 112) = v30;
  *(v34 + 120) = v32;
  *(v34 + 176) = &type metadata for UInt;
  *(v34 + 184) = &protocol witness table for UInt;
  *(v34 + 152) = 32;
  v38 = v75;
  *(v34 + 216) = v35;
  *(v34 + 224) = v36;
  *(v34 + 192) = v38;
  v39 = v27;
  v40 = v38;
  v41 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v34);
  swift_setDeallocating();
  v69 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v33, &_mh_execute_header, v42, "Unsupported rich text UTType: %@", 32, 2, inited);

  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v43 = v27 + 3;
  v27[4] = 0;
  v27[5] = 0;
  v71 = inited;
  v32 = *(inited + 16);
  if (!v32)
  {
LABEL_29:
    v56 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v58 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v59 = String._bridgeToObjectiveC()();

    [v70 handleFailureInFunction:v57 file:v58 lineNumber:32 isFatal:0 format:v59 args:v56];

    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1005B981C(&qword_1019F8DC0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v72[2](v72, isa);

    return 0;
  }

  inited = 0;
  v24 = 40;
  while (1)
  {
    LODWORD(v26) = sub_100020E58((v74 + 40 * inited), *(v74 + 40 * inited + 24));
    v44 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v30 = *v43;
    v45 = *(v44 + 16);
    v46 = __OFADD__(*v43, v45);
    v47 = *v43 + v45;
    if (v46)
    {
      goto LABEL_32;
    }

    v48 = v44;
    v26 = v27[4];
    if (v26 >= v47)
    {
      goto LABEL_22;
    }

    if (v26 + 0x4000000000000000 < 0)
    {
      goto LABEL_33;
    }

    v49 = v27[5];
    if (2 * v26 > v47)
    {
      v47 = 2 * v26;
    }

    v27[4] = v47;
    if ((v47 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_34;
    }

    result = swift_slowAlloc();
    v27[5] = result;
    if (v49)
    {
      if (result != v49 || result >= &v49[8 * v30])
      {
        memmove(result, v49, 8 * v30);
      }

      LODWORD(v26) = v27;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_22:
      result = v27[5];
    }

    if (!result)
    {
      break;
    }

    v52 = *(v48 + 16);
    if (v52)
    {
      v53 = (v48 + 32);
      v54 = *v43;
      while (1)
      {
        v55 = *v53++;
        *&result[8 * v54] = v55;
        v54 = *v43 + 1;
        if (__OFADD__(*v43, 1))
        {
          break;
        }

        *v43 = v54;
        if (!--v52)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_7:

    if (++inited == v32)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

id sub_1006B5B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  type metadata accessor for DocumentReadingOptionKey(0);
  sub_1006B5FE4();
  v7 = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = 0;
  v8 = [v4 initWithData:isa options:v7 documentAttributes:a4 error:&v12];

  if (v8)
  {
    v9 = v12;
  }

  else
  {
    v10 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

void *sub_1006B5C94(uint64_t a1, uint64_t a2, char *a3)
{
  v7 = *&a3[OBJC_IVAR____TtC8Freeform19CRLBoardItemFactory_board];
  _s16ResourceImporterCMa();
  v8 = swift_allocObject();
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = v7;
  v9 = v7;
  v10 = sub_100D8B66C(a1, a2, 0);
  if (v3)
  {
  }

  v12 = v10;
  v13 = *(v10 + 16);
  type metadata accessor for CRLContentLanguageBoardItemProvider.SharedContext();
  swift_allocObject();
  v14 = sub_100D5D15C(v13);
  v15 = *(v12 + 16);
  if (v15)
  {
    v16 = _swiftEmptyArrayStorage;
    v26 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v15 > *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v17 = v12 + 32;
      do
      {
        sub_10000630C(v17, v25);
        type metadata accessor for CRLCLImport.Context();
        v18 = swift_allocObject();
        v18[4] = 0;
        v18[5] = 0;
        v18[2] = v8;
        v18[3] = v16;
        sub_10000630C(v25, v24);
        v19 = type metadata accessor for CRLContentLanguageBoardItemProvider();
        v20 = v16;
        v21 = objc_allocWithZone(v19);
        swift_unknownObjectWeakInit();
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_progress] = 0;
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItem] = 0;
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_error] = 0;
        v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_producesValidGeometry] = 1;
        sub_10000630C(v24, &v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_jsonModel]);
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_boardItemFactory] = a3;
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_importContext] = v18;
        *&v21[OBJC_IVAR____TtC8Freeform35CRLContentLanguageBoardItemProvider_sharedContext] = v14;
        v23.receiver = v21;
        v23.super_class = v19;

        v22 = a3;
        objc_msgSendSuper2(&v23, "init");
        sub_100005070(v24);
        sub_100005070(v25);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v16 = v20;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v17 += 40;
        --v15;
      }

      while (v15);

      return v26;
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1006B5F78()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1006B5FE4()
{
  result = qword_1019F3C08;
  if (!qword_1019F3C08)
  {
    type metadata accessor for DocumentReadingOptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F3C08);
  }

  return result;
}

uint64_t sub_1006B605C(uint64_t a1, uint64_t a2)
{
  v4 = _s18LoadedRichTextTypeOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006B60C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006B6128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006B6188()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_100006370(319, &qword_1019F76F0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1006B620C()
{
  sub_100006370(319, &qword_1019F76F0);
  if (v0 <= 0x3F)
  {
    sub_1006B6290();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1006B6290()
{
  if (!qword_1019F8F18)
  {
    type metadata accessor for URL();
    sub_100006370(255, &qword_1019F76F0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019F8F18);
    }
  }
}

id sub_1006B6380(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1006B6504(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v3 = v2;
  v4 = sub_1005B981C(&unk_101A2C7D0);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = &v48 - v5;
  v6 = sub_1005B981C(&unk_101A2C890);
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v53 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v53);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UUID();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  inserted = type metadata accessor for CRLCommandTableInsertRow.InsertPosition(0);
  __chkstk_darwin(inserted);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v3;
  sub_1006BD2A8(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant, v18, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v60 + 32))(v15, v18, v61);
    v33 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem);
    v51 = v3;
    v52 = v33;
    v49 = OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowIdToInsert;
    v50 = OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert;
    type metadata accessor for CRLTableItemData();
    v34 = swift_dynamicCastClassUnconditional();
    v35 = qword_101AD9268;
    swift_beginAccess();
    v36 = v54;
    (*(v54 + 16))(v8, v34 + v35, v6);
    Capsule.root.getter();
    (*(v36 + 8))(v8, v6);
    v37 = v55;
    v38 = v56;
    v39 = v57;
    (*(v56 + 16))(v55, &v10[*(v53 + 20)], v57);
    v40 = sub_1006BD3A0(v10, _s15CapsuleDatabaseVMa);
    __chkstk_darwin(v40);
    *(&v48 - 2) = v15;
    v41 = v58;
    v42 = CROrderedDictionary.index(where:)();
    v44 = v43;
    (*(v38 + 8))(v37, v39);
    v45 = v52;
    sub_1012E0400(v52, &off_10188FE10);
    if (!v41)
    {
      if (v44)
      {
        v47 = 0;
      }

      else
      {
        v47 = v42;
      }

      sub_1011E4CB8(v51 + v50, v47, v51 + v49);
      sub_1012CF6CC(v45, &off_10188FE10, 2);
      v12 = v15;
      return (*(v60 + 8))(v12, v61);
    }

    return (*(v60 + 8))(v15, v61);
  }

  if (EnumCaseMultiPayload != 1)
  {
    return sub_1011E48C8();
  }

  (*(v60 + 32))(v12, v18, v61);
  v21 = *(v3 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem);
  v22 = OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert;
  v23 = OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowIdToInsert;
  result = sub_1011DB2A8(v12);
  v52 = v23;
  if (v25)
  {
    type metadata accessor for CRLTableItemData();
    v26 = swift_dynamicCastClassUnconditional();
    v27 = qword_101AD9268;
    swift_beginAccess();
    v51 = v22;
    v28 = v54;
    (*(v54 + 16))(v8, v26 + v27, v6);
    Capsule.root.getter();
    (*(v28 + 8))(v8, v6);
    v29 = v55;
    v30 = v56;
    v31 = v57;
    (*(v56 + 16))(v55, &v10[*(v53 + 20)], v57);
    sub_1006BD3A0(v10, _s15CapsuleDatabaseVMa);
    v32 = CROrderedDictionary.count.getter();
    (*(v30 + 8))(v29, v31);
    v22 = v51;
LABEL_9:
    v46 = v58;
    sub_1012E0400(v21, &off_10188FE10);
    if (!v46)
    {
      sub_1011E4CB8(v19 + v22, v32, v19 + v52);
      sub_1012CF6CC(v21, &off_10188FE10, 2);
      return (*(v60 + 8))(v12, v61);
    }

    v15 = v12;
    return (*(v60 + 8))(v15, v61);
  }

  v32 = result + 1;
  if (!__OFADD__(result, 1))
  {
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B6C50()
{
  sub_1006BD3A0(v0 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert, _s11RowCRDTDataVMa);
  v1 = OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowIdToInsert;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1006BD3A0(v0 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
}

uint64_t sub_1006B6E8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString);

  return v1;
}

uint64_t sub_1006B6FAC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform25CRLCommandTableRemoveRows_actionString);

  return v1;
}

uint64_t sub_1006B702C(uint64_t a1, char *a2)
{
  v47 = *((swift_isaMask & *a2) + 0xC8);
  v45 = *(v47 - 8);
  __chkstk_darwin(a1);
  v46 = &v43 - v4;
  v5 = sub_1005B981C(&qword_1019FA3A0);
  __chkstk_darwin(v5 - 8);
  v43 = &v43 - v6;
  v7 = sub_1005B981C(&unk_101A2C7D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = sub_1005B981C(&qword_1019FA3A8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = &v43 - v13;
  swift_getKeyPath();
  v48 = a1;
  Capsule.Ref.subscript.getter();

  v14 = v43;
  CROrderedDictionary.subscript.getter();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v14, 1, v11) == 1)
  {
    sub_10000CAAC(v14, &qword_1019FA3A0);
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v49[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v49);
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
    v28 = sub_1005CF000();
    *(inited + 96) = v28;
    v29 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 146;
    v31 = v49[0];
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "Unable to find row when attempting to set property in command", 61, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to find row when attempting to set property in command");
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

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:146 isFatal:1 format:v40 args:v37];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v44;
    (*(v12 + 32))(v44, v14, v11);
    (*(v45 + 16))(v46, &a2[*((swift_isaMask & *a2) + 0xE0)], v47);
    v16 = Ref.subscript.modify();
    swift_setAtWritableKeyPath();
    v16(v49, 0);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

id sub_1006B77E4(uint64_t a1, uint64_t a2, float a3)
{
  v21 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a2, v7, v9);
  KeyPath = swift_getKeyPath();
  *(v3 + *((swift_isaMask & *v3) + 0xD0)) = a1;
  (v12)(v3 + *((swift_isaMask & *v3) + 0xD8), v11, v7);
  v14 = (v3 + *((swift_isaMask & *v3) + 0xE0));
  *v14 = a3;
  *(v14 + 4) = 0;
  *(v3 + *((swift_isaMask & *v3) + 0xE8)) = KeyPath;
  v15 = (v3 + *((swift_isaMask & *v3) + 0xF0));
  *v15 = 0xD000000000000018;
  v15[1] = 0x800000010155DC00;
  v16 = sub_1005B981C(&qword_101A2D850);
  v22.receiver = v3;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, "init");
  v18 = *(v8 + 8);
  v18(v21, v7);
  v18(v11, v7);
  return v17;
}

uint64_t sub_1006B7A84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(37);

  v28 = 60;
  v29 = 0xE100000000000000;
  v27[1] = ObjectType;
  swift_getMetatypeMetadata();
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8762;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_actionString));
  v8._countAndFlagsBits = 0x722065766F6D2022;
  v8._object = 0xEB0000000020776FLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x2065726F66656220;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  sub_100060460(v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_targetID, v5);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_10000CAAC(v5, &qword_1019F6990);
    v13 = 0xE700000000000000;
    v14 = 0x646E6520656874;
  }

  else
  {
    v15 = UUID.uuidString.getter();
    v13 = v16;
    (*(v12 + 8))(v5, v11);
    v14 = v15;
  }

  v17 = v13;
  String.append(_:)(*&v14);

  v18._countAndFlagsBits = 544108320;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_tableItem);
  v20 = [v19 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v28;
}

uint64_t sub_1006B7D38(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v104 = &v96 - v4;
  v5 = type metadata accessor for UUID();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  inited = &v96 - v9;
  v11 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_tableItem];
  v111 = v2;
  v15 = sub_1011DB2A8(&v2[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_sourceID]);
  if (v16)
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_10146C6B0;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(inited + 7) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 4) = v17;
    v111 = inited + 32;
    v108 = v20;
    *(inited + 8) = v20;
    *(inited + 5) = v19;
    v104 = objc_opt_self();
    LODWORD(v105) = [v104 _atomicIncrementAssertCount];
    v110 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v110);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v25 = static OS_os_log.crlAssert;
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_10146CA70;
      *(v26 + 56) = &type metadata for Int32;
      *(v26 + 64) = &protocol witness table for Int32;
      *(v26 + 32) = v105;
      v27 = sub_1005CF000();
      *(v26 + 96) = v27;
      v28 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
      *(v26 + 72) = v8;
      v29 = v108;
      *(v26 + 136) = &type metadata for String;
      *(v26 + 144) = v29;
      *(v26 + 104) = v28;
      *(v26 + 112) = v7;
      *(v26 + 120) = v24;
      *(v26 + 176) = &type metadata for UInt;
      *(v26 + 184) = &protocol witness table for UInt;
      *(v26 + 152) = 202;
      v30 = v110;
      *(v26 + 216) = v27;
      *(v26 + 224) = v28;
      *(v26 + 192) = v30;
      v31 = v8;
      v32 = v30;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
      swift_setDeallocating();
      v105 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v34, "Could not find source row %@ in table", 37, 2, inited);

      type metadata accessor for __VaListBuilder();
      v8 = swift_allocObject();
      *(v8 + 16) = 8;
      *(v8 + 24) = 0;
      v14 = (v8 + 24);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v7 = *(inited + 2);
      if (!v7)
      {
LABEL_30:
        v58 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v61 = String._bridgeToObjectiveC()();

        [v104 handleFailureInFunction:v59 file:v60 lineNumber:202 isFatal:0 format:v61 args:v58];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

      v13 = 0;
      v107 = inited;
      v108 = v7;
      while (1)
      {
        v24 = sub_100020E58(&v111[40 * v13], *&v111[40 * v13 + 24]);
        v15 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v35 = *v14;
        v36 = *(v15 + 16);
        v37 = __OFADD__(*v14, v36);
        v38 = *v14 + v36;
        if (v37)
        {
          break;
        }

        v24 = *(v8 + 32);
        if (v24 >= v38)
        {
          goto LABEL_20;
        }

        if (v24 + 0x4000000000000000 < 0)
        {
          goto LABEL_47;
        }

        v39 = *(v8 + 40);
        if (2 * v24 > v38)
        {
          v38 = 2 * v24;
        }

        *(v8 + 32) = v38;
        if ((v38 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_48;
        }

        v40 = v15;
        v41 = swift_slowAlloc();
        v42 = v41;
        *(v8 + 40) = v41;
        if (v39)
        {
          if (v41 != v39 || v41 >= &v39[8 * v35])
          {
            memmove(v41, v39, 8 * v35);
          }

          v24 = v8;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v15 = v40;
          inited = v107;
          v7 = v108;
LABEL_20:
          v42 = *(v8 + 40);
          if (!v42)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v15 = v40;
        v7 = v108;
        inited = v107;
        if (!v42)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v44 = *(v15 + 16);
        if (v44)
        {
          v45 = (v15 + 32);
          v46 = *v14;
          while (1)
          {
            v47 = *v45++;
            *&v42[8 * v46] = v47;
            v46 = *v14 + 1;
            if (__OFADD__(*v14, 1))
            {
              break;
            }

            *v14 = v46;
            if (!--v44)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v13 == v7)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_once();
    }
  }

LABEL_28:
  v102 = v15;
  v99 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v98 = type metadata accessor for CRLTableItemData();
  v48 = swift_dynamicCastClassUnconditional();
  v49 = qword_101AD9268;
  swift_beginAccess();
  (*(v8 + 16))(inited, &v49[v48], v7);
  Capsule.root.getter();
  (*(v8 + 8))(inited, v7);
  sub_1005B981C(&unk_101A2C7D0);
  v101 = CROrderedDictionary.count.getter();
  sub_1006BD3A0(v13, _s15CapsuleDatabaseVMa);
  v50 = v111;
  v51 = v104;
  sub_100060460(&v111[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_targetID], v104);
  v53 = v107;
  v52 = v108;
  v54 = (*(v107 + 6))(v51, 1, v108);
  v55 = v7;
  v100 = v14;
  if (v54 != 1)
  {
    v7 = v52;
    v63 = v53;
    v64 = v103;
    v53[4](v103, v51, v7);
    v65 = sub_1011DB2A8(v64);
    v56 = v106;
    if ((v66 & 1) == 0)
    {
      v57 = v65;
      goto LABEL_35;
    }

    v104 = v55;
    v97 = objc_opt_self();
    LODWORD(v50) = [v97 _atomicIncrementAssertCount];
    v109 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v109);
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v69;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  sub_10000CAAC(v51, &qword_1019F6990);
  v56 = v106;
  v57 = v101;
  while (1)
  {
    if (v102 == v57)
    {
      goto LABEL_39;
    }

    if (!__OFADD__(v102, 1))
    {
      break;
    }

    __break(1u);
LABEL_51:
    swift_once();
LABEL_33:
    v96 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v50;
    v71 = sub_1005CF000();
    *(v70 + 96) = v71;
    v72 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
    *(v70 + 104) = v72;
    *(v70 + 72) = v57;
    *(v70 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v70 + 112) = v7;
    *(v70 + 120) = v49;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v73;
    *(v70 + 152) = 209;
    v74 = v109;
    *(v70 + 216) = v71;
    *(v70 + 224) = v72;
    *(v70 + 192) = v74;
    v75 = v57;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    v78 = v96;
    sub_100005404(v96, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v79 = static os_log_type_t.error.getter();
    v49 = "invalid nil found when unwrapping value";
    sub_100005404(v78, &_mh_execute_header, v79, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v80 = swift_allocObject();
    v80[2] = 8;
    v80[3] = 0;
    v80[4] = 0;
    v80[5] = 0;
    v81 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    [v97 handleFailureInFunction:v82 file:v83 lineNumber:209 isFatal:0 format:v84 args:v81];

    v63 = v107;
    v7 = v108;
    v64 = v103;
    v57 = v101;
LABEL_35:
    (*(v63 + 1))(v64, v7);
    v50 = v111;
  }

  if ((v102 + 1) == v57)
  {
LABEL_39:
    if (qword_1019F21D8 != -1)
    {
      swift_once();
    }

    v85 = static OS_os_log.crlTables;
    sub_1005B981C(&qword_1019F54E0);
    v86 = swift_initStackObject();
    *(v86 + 16) = xmmword_10146C6B0;
    v87 = [v50 description];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_1000053B0();
    *(v86 + 32) = v88;
    *(v86 + 40) = v90;
    v91 = static os_log_type_t.default.getter();
    sub_100005404(v85, &_mh_execute_header, v91, "Move does nothing and was dropped %@", 36, 2, v86);
    swift_setDeallocating();
    return sub_100005070(v86 + 32);
  }

  v92 = v100;
  result = sub_1012E0400(v100, &off_10188FE10);
  if (!v56)
  {
    v93 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v93);
    *(&v96 - 2) = v102;
    *(&v96 - 1) = v57;
    __chkstk_darwin(v94);
    *(&v96 - 2) = sub_1006BD4B8;
    *(&v96 - 1) = v95;
    swift_beginAccess();

    Capsule.mutate<A>(_:)();
    swift_endAccess();

    return sub_1012CF6CC(v92, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_1006B8CFC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableRow_actionString);

  return v1;
}

uint64_t sub_1006B8D3C(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = v2;
  v56 = sub_1005B981C(&unk_101A2D830);
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v47 - v4;
  v5 = sub_1005B981C(&unk_101A2C890);
  v55 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v47 - v6;
  v54 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v54);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for UUID();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  inserted = type metadata accessor for CRLCommandTableInsertColumn.InsertPosition(0);
  __chkstk_darwin(inserted);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v3;
  sub_1006BD2A8(v3 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant, v17, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v59 + 32))(v14, v17, v60);
    v32 = *(v3 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem);
    v50 = v3;
    v51 = v32;
    v48 = OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnIdToInsert;
    v49 = OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert;
    type metadata accessor for CRLTableItemData();
    v33 = swift_dynamicCastClassUnconditional();
    v34 = qword_101AD9268;
    swift_beginAccess();
    v35 = v55;
    (*(v55 + 16))(v7, v33 + v34, v5);
    Capsule.root.getter();
    (*(v35 + 8))(v7, v5);
    v36 = v53;
    v37 = v52;
    v38 = v56;
    (*(v53 + 16))(v52, &v9[*(v54 + 24)], v56);
    v39 = sub_1006BD3A0(v9, _s15CapsuleDatabaseVMa);
    __chkstk_darwin(v39);
    *(&v47 - 2) = v14;
    v40 = v57;
    v41 = CROrderedDictionary.index(where:)();
    v43 = v42;
    v44 = v38;
    v45 = v51;
    (*(v36 + 8))(v37, v44);
    sub_1012E0400(v45, &off_10188FE10);
    if (!v40)
    {
      if (v43)
      {
        v46 = 0;
      }

      else
      {
        v46 = v41;
      }

      sub_1011E72DC(v50 + v49, v46, v50 + v48);
      sub_1012CF6CC(v45, &off_10188FE10, 2);
      v11 = v14;
      return (*(v59 + 8))(v11, v60);
    }

    return (*(v59 + 8))(v14, v60);
  }

  if (EnumCaseMultiPayload != 1)
  {
    return sub_1011E6578();
  }

  (*(v59 + 32))(v11, v17, v60);
  v20 = *(v3 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem);
  v21 = OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert;
  v22 = OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnIdToInsert;
  result = sub_1011DB340(v11);
  v53 = v22;
  if (v24)
  {
    v52 = v21;
    type metadata accessor for CRLTableItemData();
    v25 = swift_dynamicCastClassUnconditional();
    v26 = qword_101AD9268;
    swift_beginAccess();
    v27 = v55;
    (*(v55 + 16))(v7, v25 + v26, v5);
    Capsule.root.getter();
    (*(v27 + 8))(v7, v5);
    v28 = CROrderedDictionary.count.getter();
    result = sub_1006BD3A0(v9, _s15CapsuleDatabaseVMa);
    v29 = __OFSUB__(v28, 1);
    v30 = v28 - 1;
    if (!v29)
    {
      v31 = v57;
      v21 = v52;
LABEL_11:
      sub_1012E0400(v20, &off_10188FE10);
      if (!v31)
      {
        sub_1011E72DC(v18 + v21, v30, v18 + v53);
        sub_1012CF6CC(v20, &off_10188FE10, 2);
        return (*(v59 + 8))(v11, v60);
      }

      v14 = v11;
      return (*(v59 + 8))(v14, v60);
    }

    __break(1u);
  }

  else
  {
    v30 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v31 = v57;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006B9460()
{
  sub_1006BD3A0(v0 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert, _s14ColumnCRDTDataVMa);
  v1 = OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnIdToInsert;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1006BD3A0(v0 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
}

uint64_t sub_1006B967C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v8 <= 0x3F)
    {
      result = a5(319);
      if (v9 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1006B97C4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString);

  return v1;
}

uint64_t sub_1006B988C(void *a1)
{
}

uint64_t sub_1006B9920(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t sub_1006B99A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform28CRLCommandTableRemoveColumns_actionString);

  return v1;
}

uint64_t sub_1006B9A28(uint64_t a1, char *a2)
{
  v47 = *((swift_isaMask & *a2) + 0xC8);
  v45 = *(v47 - 8);
  __chkstk_darwin(a1);
  v46 = &v43 - v4;
  v5 = sub_1005B981C(&qword_1019FA398);
  __chkstk_darwin(v5 - 8);
  v43 = &v43 - v6;
  v7 = sub_1005B981C(&unk_101A2D830);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = sub_1005B981C(&qword_101A2C8B0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v44 = &v43 - v13;
  swift_getKeyPath();
  v48 = a1;
  Capsule.Ref.subscript.getter();

  v14 = v43;
  CROrderedDictionary.subscript.getter();
  (*(v8 + 8))(v10, v7);
  if ((*(v12 + 48))(v14, 1, v11) == 1)
  {
    sub_10000CAAC(v14, &qword_1019FA398);
    v18 = objc_opt_self();
    v19 = [v18 _atomicIncrementAssertCount];
    v49[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v49);
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
    v28 = sub_1005CF000();
    *(inited + 96) = v28;
    v29 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v29;
    *(inited + 72) = v20;
    *(inited + 136) = &type metadata for String;
    v30 = sub_1000053B0();
    *(inited + 112) = v23;
    *(inited + 120) = v25;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v30;
    *(inited + 152) = 299;
    v31 = v49[0];
    *(inited + 216) = v28;
    *(inited + 224) = v29;
    *(inited + 192) = v31;
    v32 = v20;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "Unable to find column when attempting to set property in command", 64, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to find column when attempting to set property in command");
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

    [v18 handleFailureInFunction:v38 file:v39 lineNumber:299 isFatal:1 format:v40 args:v37];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v41, v42);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v15 = v44;
    (*(v12 + 32))(v44, v14, v11);
    (*(v45 + 16))(v46, &a2[*((swift_isaMask & *a2) + 0xE0)], v47);
    v16 = Ref.subscript.modify();
    swift_setAtWritableKeyPath();
    v16(v49, 0);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1006BA1A8()
{
  v1 = *v0;
  v2 = swift_isaMask;

  v3 = *((swift_isaMask & *v0) + 0xD8);
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*((v2 & v1) + 0xC8) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0xE0)]);
}

uint64_t sub_1006BA320(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  v4 = *((swift_isaMask & *a1) + 0xD8);
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(&a1[v4], v5);
  (*(*(*((v3 & v2) + 0xC8) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0xE0)]);
}

id sub_1006BA49C(uint64_t a1, uint64_t a2, float a3)
{
  v21 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 16);
  v12(v11, a2, v7, v9);
  KeyPath = swift_getKeyPath();
  *(v3 + *((swift_isaMask & *v3) + 0xD0)) = a1;
  (v12)(v3 + *((swift_isaMask & *v3) + 0xD8), v11, v7);
  v14 = (v3 + *((swift_isaMask & *v3) + 0xE0));
  *v14 = a3;
  *(v14 + 4) = 0;
  *(v3 + *((swift_isaMask & *v3) + 0xE8)) = KeyPath;
  v15 = (v3 + *((swift_isaMask & *v3) + 0xF0));
  *v15 = 0xD00000000000001ALL;
  v15[1] = 0x800000010155DC20;
  v16 = sub_1005B981C(&unk_101A2C7F0);
  v22.receiver = v3;
  v22.super_class = v16;
  v17 = objc_msgSendSuper2(&v22, "init");
  v18 = *(v8 + 8);
  v18(v21, v7);
  v18(v11, v7);
  return v17;
}

uint64_t sub_1006BA6DC@<X0>(uint64_t a1@<X8>)
{
  sub_1005B981C(&unk_101A2C7E0);
  result = CRRegister.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 4) = v4;
  return result;
}

id sub_1006BA7EC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1006BA85C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v5 = v27 - v4;
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v28 = 60;
  v29 = 0xE100000000000000;
  v27[1] = ObjectType;
  swift_getMetatypeMetadata();
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 8762;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_actionString));
  v8._countAndFlagsBits = 0x632065766F6D2022;
  v8._object = 0xEE00206E6D756C6FLL;
  String.append(_:)(v8);
  v9._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x2065726F66656220;
  v10._object = 0xE800000000000000;
  String.append(_:)(v10);
  sub_100060460(v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_targetID, v5);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_10000CAAC(v5, &qword_1019F6990);
    v13 = 0xE700000000000000;
    v14 = 0x646E6520656874;
  }

  else
  {
    v15 = UUID.uuidString.getter();
    v13 = v16;
    (*(v12 + 8))(v5, v11);
    v14 = v15;
  }

  v17 = v13;
  String.append(_:)(*&v14);

  v18._countAndFlagsBits = 544108320;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_tableItem);
  v20 = [v19 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 62;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  return v28;
}

uint64_t sub_1006BAB14(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v3 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v3 - 8);
  v104 = &v96 - v4;
  v5 = type metadata accessor for UUID();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v103 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A2C890);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  inited = &v96 - v9;
  v11 = _s15CapsuleDatabaseVMa();
  __chkstk_darwin(v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_tableItem];
  v111 = v2;
  v15 = sub_1011DB340(&v2[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_sourceID]);
  if (v16)
  {
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 1) = xmmword_10146C6B0;
    v17 = UUID.uuidString.getter();
    v19 = v18;
    *(inited + 7) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 4) = v17;
    v111 = inited + 32;
    v108 = v20;
    *(inited + 8) = v20;
    *(inited + 5) = v19;
    v104 = objc_opt_self();
    LODWORD(v105) = [v104 _atomicIncrementAssertCount];
    v110 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v110);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_49;
    }

    while (1)
    {
      v25 = static OS_os_log.crlAssert;
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_10146CA70;
      *(v26 + 56) = &type metadata for Int32;
      *(v26 + 64) = &protocol witness table for Int32;
      *(v26 + 32) = v105;
      v27 = sub_1005CF000();
      *(v26 + 96) = v27;
      v28 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
      *(v26 + 72) = v8;
      v29 = v108;
      *(v26 + 136) = &type metadata for String;
      *(v26 + 144) = v29;
      *(v26 + 104) = v28;
      *(v26 + 112) = v7;
      *(v26 + 120) = v24;
      *(v26 + 176) = &type metadata for UInt;
      *(v26 + 184) = &protocol witness table for UInt;
      *(v26 + 152) = 352;
      v30 = v110;
      *(v26 + 216) = v27;
      *(v26 + 224) = v28;
      *(v26 + 192) = v30;
      v31 = v8;
      v32 = v30;
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);
      swift_setDeallocating();
      v105 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v25, &_mh_execute_header, v34, "Could not find source column %@ in table", 40, 2, inited);

      type metadata accessor for __VaListBuilder();
      v8 = swift_allocObject();
      *(v8 + 16) = 8;
      *(v8 + 24) = 0;
      v14 = (v8 + 24);
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v7 = *(inited + 2);
      if (!v7)
      {
LABEL_30:
        v58 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v61 = String._bridgeToObjectiveC()();

        [v104 handleFailureInFunction:v59 file:v60 lineNumber:352 isFatal:0 format:v61 args:v58];

        swift_setDeallocating();
        return swift_arrayDestroy();
      }

      v13 = 0;
      v107 = inited;
      v108 = v7;
      while (1)
      {
        v24 = sub_100020E58(&v111[40 * v13], *&v111[40 * v13 + 24]);
        v15 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v35 = *v14;
        v36 = *(v15 + 16);
        v37 = __OFADD__(*v14, v36);
        v38 = *v14 + v36;
        if (v37)
        {
          break;
        }

        v24 = *(v8 + 32);
        if (v24 >= v38)
        {
          goto LABEL_20;
        }

        if (v24 + 0x4000000000000000 < 0)
        {
          goto LABEL_47;
        }

        v39 = *(v8 + 40);
        if (2 * v24 > v38)
        {
          v38 = 2 * v24;
        }

        *(v8 + 32) = v38;
        if ((v38 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_48;
        }

        v40 = v15;
        v41 = swift_slowAlloc();
        v42 = v41;
        *(v8 + 40) = v41;
        if (v39)
        {
          if (v41 != v39 || v41 >= &v39[8 * v35])
          {
            memmove(v41, v39, 8 * v35);
          }

          v24 = v8;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v15 = v40;
          inited = v107;
          v7 = v108;
LABEL_20:
          v42 = *(v8 + 40);
          if (!v42)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v15 = v40;
        v7 = v108;
        inited = v107;
        if (!v42)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v44 = *(v15 + 16);
        if (v44)
        {
          v45 = (v15 + 32);
          v46 = *v14;
          while (1)
          {
            v47 = *v45++;
            *&v42[8 * v46] = v47;
            v46 = *v14 + 1;
            if (__OFADD__(*v14, 1))
            {
              break;
            }

            *v14 = v46;
            if (!--v44)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v13 == v7)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_once();
    }
  }

LABEL_28:
  v102 = v15;
  v99 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v98 = type metadata accessor for CRLTableItemData();
  v48 = swift_dynamicCastClassUnconditional();
  v49 = qword_101AD9268;
  swift_beginAccess();
  (*(v8 + 16))(inited, &v49[v48], v7);
  Capsule.root.getter();
  (*(v8 + 8))(inited, v7);
  sub_1005B981C(&unk_101A2D830);
  v101 = CROrderedDictionary.count.getter();
  sub_1006BD3A0(v13, _s15CapsuleDatabaseVMa);
  v50 = v111;
  v51 = v104;
  sub_100060460(&v111[OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_targetID], v104);
  v53 = v107;
  v52 = v108;
  v54 = (*(v107 + 6))(v51, 1, v108);
  v55 = v7;
  v100 = v14;
  if (v54 != 1)
  {
    v7 = v52;
    v63 = v53;
    v64 = v103;
    v53[4](v103, v51, v7);
    v65 = sub_1011DB340(v64);
    v56 = v106;
    if ((v66 & 1) == 0)
    {
      v57 = v65;
      goto LABEL_35;
    }

    v104 = v55;
    v97 = objc_opt_self();
    LODWORD(v50) = [v97 _atomicIncrementAssertCount];
    v109 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v109);
    StaticString.description.getter();
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v67 = String._bridgeToObjectiveC()();

    v68 = [v67 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v69;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  sub_10000CAAC(v51, &qword_1019F6990);
  v56 = v106;
  v57 = v101;
  while (1)
  {
    if (v102 == v57)
    {
      goto LABEL_39;
    }

    if (!__OFADD__(v102, 1))
    {
      break;
    }

    __break(1u);
LABEL_51:
    swift_once();
LABEL_33:
    v96 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v70 = swift_initStackObject();
    *(v70 + 16) = xmmword_10146CA70;
    *(v70 + 56) = &type metadata for Int32;
    *(v70 + 64) = &protocol witness table for Int32;
    *(v70 + 32) = v50;
    v71 = sub_1005CF000();
    *(v70 + 96) = v71;
    v72 = sub_1006BD400(&qword_1019F52E0, sub_1005CF000);
    *(v70 + 104) = v72;
    *(v70 + 72) = v57;
    *(v70 + 136) = &type metadata for String;
    v73 = sub_1000053B0();
    *(v70 + 112) = v7;
    *(v70 + 120) = v49;
    *(v70 + 176) = &type metadata for UInt;
    *(v70 + 184) = &protocol witness table for UInt;
    *(v70 + 144) = v73;
    *(v70 + 152) = 359;
    v74 = v109;
    *(v70 + 216) = v71;
    *(v70 + 224) = v72;
    *(v70 + 192) = v74;
    v75 = v57;
    v76 = v74;
    v77 = static os_log_type_t.error.getter();
    v78 = v96;
    sub_100005404(v96, &_mh_execute_header, v77, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v70);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v79 = static os_log_type_t.error.getter();
    v49 = "invalid nil found when unwrapping value";
    sub_100005404(v78, &_mh_execute_header, v79, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v80 = swift_allocObject();
    v80[2] = 8;
    v80[3] = 0;
    v80[4] = 0;
    v80[5] = 0;
    v81 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v83 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v84 = String._bridgeToObjectiveC()();

    [v97 handleFailureInFunction:v82 file:v83 lineNumber:359 isFatal:0 format:v84 args:v81];

    v63 = v107;
    v7 = v108;
    v64 = v103;
    v57 = v101;
LABEL_35:
    (*(v63 + 1))(v64, v7);
    v50 = v111;
  }

  if ((v102 + 1) == v57)
  {
LABEL_39:
    if (qword_1019F21D8 != -1)
    {
      swift_once();
    }

    v85 = static OS_os_log.crlTables;
    sub_1005B981C(&qword_1019F54E0);
    v86 = swift_initStackObject();
    *(v86 + 16) = xmmword_10146C6B0;
    v87 = [v50 description];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    *(v86 + 56) = &type metadata for String;
    *(v86 + 64) = sub_1000053B0();
    *(v86 + 32) = v88;
    *(v86 + 40) = v90;
    v91 = static os_log_type_t.default.getter();
    sub_100005404(v85, &_mh_execute_header, v91, "Move does nothing and was dropped %@", 36, 2, v86);
    swift_setDeallocating();
    return sub_100005070(v86 + 32);
  }

  v92 = v100;
  result = sub_1012E0400(v100, &off_10188FE10);
  if (!v56)
  {
    v93 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v93);
    *(&v96 - 2) = v102;
    *(&v96 - 1) = v57;
    __chkstk_darwin(v94);
    *(&v96 - 2) = sub_1006BD448;
    *(&v96 - 1) = v95;
    swift_beginAccess();

    Capsule.mutate<A>(_:)();
    swift_endAccess();

    return sub_1012CF6CC(v92, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_1006BBA1C(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4, uint64_t *a5)
{
  swift_getKeyPath();
  v8 = Capsule.Ref.subscript.modify();
  sub_1005B981C(a5);
  CROrderedDictionary.move(from:to:)(a2, a3);
  v8(&v10, 0);
}

uint64_t sub_1006BBB2C(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{

  v8 = *a3;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return sub_10000CAAC(v4 + *a4, &qword_1019F6990);
}

uint64_t sub_1006BBC10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, void *a6)
{

  v10 = *a5;
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(a1 + v10, v11);
  return sub_10000CAAC(a1 + *a6, &qword_1019F6990);
}

void sub_1006BBCE0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1006BBDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1006BBED8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8Freeform25CRLCommandReorderTableCol_actionString);

  return v1;
}

uint64_t sub_1006BBF58()
{
  v2 = *(v0 + *((swift_isaMask & *v0) + 0xD0));
  result = sub_1012E0400(v2, &off_10188FE10);
  if (!v1)
  {
    type metadata accessor for CRLTableItemData();
    v4 = swift_dynamicCastClassUnconditional();
    __chkstk_darwin(v4);
    __chkstk_darwin(v5);
    swift_beginAccess();

    sub_1005B981C(&unk_101A2C890);
    Capsule.mutate<A>(_:)();
    swift_endAccess();

    return sub_1012CF6CC(v2, &off_10188FE10, 2);
  }

  return result;
}

uint64_t sub_1006BC114(uint64_t a1, char *a2)
{
  v77 = a1;
  v3 = *a2;
  v4 = swift_isaMask;
  v60 = _s6CellIDVMa(0);
  __chkstk_darwin(v60);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *((v4 & v3) + 0xC8);
  v66 = *(v67 - 8);
  __chkstk_darwin(v6);
  v68 = &v49 - v7;
  v56 = type metadata accessor for UUID();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019FA368);
  __chkstk_darwin(v9 - 8);
  v58 = &v49 - v10;
  v51 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v51);
  v52 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s12CellCRDTDataVMa(0);
  __chkstk_darwin(v64);
  v63 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_101A2C9E0);
  __chkstk_darwin(v13 - 8);
  v61 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v49 - v16;
  v18 = sub_1005B981C(&qword_1019FA370);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = sub_1005B981C(&qword_1019FA378);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v57 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v50 = &v49 - v26;
  swift_getKeyPath();
  v27 = *((swift_isaMask & *a2) + 0xD8);
  v65 = a2;
  v28 = &a2[v27];
  Capsule.Ref.subscript.getter();

  v53 = v28;
  CRDictionary.subscript.getter();
  v29 = *(v19 + 8);
  v59 = v18;
  v29(v21, v18);
  v30 = v22;
  v69 = v23;
  if ((*(v23 + 48))(v17, 1, v22) == 1)
  {
    sub_10000CAAC(v17, &qword_101A2C9E0);
    sub_10068D144();

    v31 = v52;
    CRAttributedString.init()();
    v32 = v51;
    CRAttributedString.init(_:)();
    *(v31 + *(v32 + 24)) = _swiftEmptyDictionarySingleton;
    v33 = v64;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    sub_1005B981C(&qword_1019FFF80);
    sub_1006BD16C();
    v34 = v63;
    CRRegister.init(wrappedValue:)();
    *(v34 + *(v33 + 24)) = _swiftEmptyDictionarySingleton;
    sub_1006BD2A8(v31, v34, type metadata accessor for CRLWPStorageCRDTData);
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    sub_1005B981C(&unk_101A10690);
    CRRegister.wrappedValue.setter();
    sub_1006BD3A0(v31, type metadata accessor for CRLWPStorageCRDTData);
    sub_1005B981C(&qword_1019FA380);
    v51 = type metadata accessor for CRKeyPath();
    v35 = *(v51 - 8);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10146BDE0;
    v52 = v30;
    v37 = *(v55 + 16);
    v38 = v54;
    v39 = v53;
    v40 = v56;
    v37(v54, v53, v56);
    CRKeyPath.init(_:)();
    v37(v38, v39 + *(v60 + 20), v40);
    v30 = v52;
    CRKeyPath.init(_:)();
    *&v70 = v36;
    sub_1005B981C(&qword_1019FA388);
    sub_1006BD244();
    v41 = v58;
    CRKeyPath.init<A>(_:)();
    (*(v35 + 56))(v41, 0, 1, v51);
    sub_1006BD400(&unk_101A2CA20, _s12CellCRDTDataVMa);
    v42 = v57;
    Ref.init<A>(_:_:identity:)();
    (*(v66 + 16))(v68, &v65[*((swift_isaMask & *v65) + 0xE0)], v67);
    v43 = Ref.subscript.modify();
    swift_setAtWritableKeyPath();
    v43(&v70, 0);
    swift_getKeyPath();
    sub_1006BD2A8(v39, v62, _s6CellIDVMa);
    v44 = v69;
    v45 = v61;
    (*(v69 + 16))(v61, v42, v30);
    (*(v44 + 56))(v45, 0, 1, v30);
    v46 = Capsule.Ref.subscript.modify();
    CRDictionary.subscript.setter();
    v46(&v70, 0);
  }

  else
  {
    v42 = v50;
    (*(v69 + 32))(v50, v17, v22);
    (*(v66 + 16))(v68, &v65[*((swift_isaMask & *v65) + 0xE0)], v67);
    v47 = Ref.subscript.modify();
    swift_setAtWritableKeyPath();
    v47(&v70, 0);
  }

  return (*(v69 + 8))(v42, v30);
}

uint64_t sub_1006BCC18()
{
  v1 = *v0;
  v2 = swift_isaMask;

  sub_1006BD3A0(&v0[*((swift_isaMask & *v0) + 0xD8)], _s6CellIDVMa);
  (*(*(*((v2 & v1) + 0xC8) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0xE0)]);
}

id sub_1006BCD6C(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *((swift_isaMask & *v1) + 0xC8));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1006BCDD0(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  sub_1006BD3A0(&a1[*((swift_isaMask & *a1) + 0xD8)], _s6CellIDVMa);
  (*(*(*((v3 & v2) + 0xC8) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0xE0)]);
}

id sub_1006BD030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetTableAnchorHint();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006BD0A4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006BD16C()
{
  result = qword_101A0D9E0;
  if (!qword_101A0D9E0)
  {
    sub_1005C4E5C(&qword_1019FFF80);
    sub_1006BD1F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D9E0);
  }

  return result;
}

unint64_t sub_1006BD1F0()
{
  result = qword_101A0D4B0;
  if (!qword_101A0D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D4B0);
  }

  return result;
}

unint64_t sub_1006BD244()
{
  result = qword_1019FA390;
  if (!qword_1019FA390)
  {
    sub_1005C4E5C(&qword_1019FA388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FA390);
  }

  return result;
}

uint64_t sub_1006BD2A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006BD3A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1006BD400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006BD56C(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 24))(ObjectType, v13);
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    goto LABEL_10;
  }

  sub_1006BF2A8(v12, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1006BF408(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_10:
    v21 = 0;
    goto LABEL_14;
  }

  sub_1006BF318(v9, v6, _s5BoardVMa);
  if (static UUID.== infix(_:_:)())
  {
    v16 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
    v17 = *&v6[v16];
    v18 = *&v6[v16 + 8];
    v19 = (a2 + v16);
    if (v17 == *v19 && v18 == v19[1])
    {
      v21 = 1;
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v21 = 0;
  }

  sub_1006BF408(v6, _s5BoardVMa);
LABEL_14:
  sub_10000CAAC(v12, &unk_101A15B20);
  return v21 & 1;
}

id sub_1006BD8B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSBoardViewControllerTransitioningDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006BD8EC(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 viewControllers];
    sub_100006370(0, &qword_101A10AB0);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
LABEL_4:
        if ((v8 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v10 = *(v8 + 32);
        }

        v11 = v10;

        type metadata accessor for CRLiOSBoardViewController();
        if (swift_dynamicCastClass() && (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
        {
          v13 = v12;
          v14 = a2;
          v15 = [v13 viewControllerForColumn:2];
          if (v15)
          {
            v16 = v15;
            objc_opt_self();
            v17 = swift_dynamicCastObjCClass();
            if (v17)
            {
              v18 = [v17 topViewController];

              if (v18)
              {
                type metadata accessor for CRLiOSFolderGridViewController();
                result = swift_dynamicCastClass();
                if (result)
                {
                  return result;
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

          else
          {
          }
        }

        else
        {
        }

LABEL_21:
        v19 = v6;
        v20 = [v5 topViewController];
        if (!v20)
        {
LABEL_28:

          goto LABEL_29;
        }

        v21 = v20;
        type metadata accessor for CRLiOSBoardViewController();
        if (swift_dynamicCastClass())
        {
          objc_opt_self();
          v22 = swift_dynamicCastObjCClass();
          if (v22)
          {
            v23 = v22;
            v24 = a2;
            v25 = [v23 topViewController];

            if (!v25)
            {
LABEL_27:
              v19 = v21;
              goto LABEL_28;
            }

            result = swift_dynamicCastClass();
            v19 = v21;
            v21 = v25;
            if (result)
            {
              return result;
            }
          }
        }

        goto LABEL_27;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_21;
  }

LABEL_29:
  v26 = objc_opt_self();
  v27 = [v26 _atomicIncrementAssertCount];
  v49 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v49);
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
  *(inited + 152) = 50;
  v39 = v49;
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
  sub_100005404(v34, &_mh_execute_header, v43, "CRLiOSBoardViewControllerTransitioningDelegate could not find expected view controllers to transition between.", 110, 2, _swiftEmptyArrayStorage);

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

  [v26 handleFailureInFunction:v46 file:v47 lineNumber:50 isFatal:0 format:v48 args:v45];

  return 0;
}

id sub_1006BDF38(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v13 - 8);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  __chkstk_darwin(v19);
  v21 = &v79 - v20;
  v22 = sub_1006BD8EC(a1, a2);
  v84 = v21;
  if (!v22)
  {
    goto LABEL_11;
  }

  v24 = v22;
  v25 = v23;
  v83 = v18;
  type metadata accessor for CRLiOSFolderGridViewController();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

LABEL_10:
    v18 = v83;
    goto LABEL_11;
  }

  v27 = v26;
  v81 = v15;
  v82 = v25;
  result = [v26 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v29 = result;
  v30 = [result visibleCells];

  sub_100006370(0, &qword_1019FA3F0);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = sub_100F222E4(v31);

  if (!v32)
  {

    v15 = v81;
    goto LABEL_10;
  }

  v80 = a2;
  v33 = *(*&v82[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v34 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v35 = *&v33[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v36 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1006BF380(v35 + v36, v6, type metadata accessor for CRLBoardCRDTData);
  v37 = v33;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_1006BF408(v6, type metadata accessor for CRLBoardCRDTData);
  v38 = (*&v33[v34] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v39 = *v38;
  v40 = v38[1];

  sub_10084BD4C(v9, v39, v40, v12);

  __chkstk_darwin(v41);
  *(&v79 - 2) = v12;
  v42 = sub_1010AA8D4(sub_1006BF3E8, (&v79 - 4), v32);
  v44 = v43;

  sub_1006BF408(v12, type metadata accessor for CRLBoardIdentifier);
  if (v42)
  {
    v45 = v27[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout];
    ObjectType = swift_getObjectType();
    v47 = *&v27[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardPreviewImageCache];
    v48 = *(v44 + 96);
    v49 = v47;
    v50 = v44;
    v51 = v42;
    v52 = v49;
    v53 = v51;
    v79 = v50;
    v48(v86, ObjectType, v50);
    v54 = *v86;
    v55 = *&v86[1];
    v56 = *&v86[2];
    v57 = *&v86[3];
    if (v87)
    {
      v58 = v87;

      v59 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
      v21 = v84;
      (*(*(v59 - 8) + 56))(v84, 1, 1, v59);
    }

    else
    {
      v73 = v53;
      v74 = [v80 view];
      [v73 convertRect:v74 toView:{v54, v55, v56, v57}];
      v54 = v75;
      v55 = v76;
      v56 = v77;
      v57 = v78;

      v21 = v84;
      (*(v79 + 24))(ObjectType);

      v58 = 0;
    }

    v15 = v81;
    v18 = v83;
    goto LABEL_12;
  }

  v15 = v81;
  v18 = v83;
  v21 = v84;
LABEL_11:
  v60 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v58 = 1;
  (*(*(v60 - 8) + 56))(v21, 1, 1, v60);
  v47 = 0;
  v42 = 0;
  v45 = 2;
  v54 = 0.0;
  v55 = 0.0;
  v56 = 0.0;
  v57 = 0.0;
LABEL_12:
  sub_1006BF2A8(v21, v18);
  v61 = objc_allocWithZone(type metadata accessor for CRLiOSBoardViewControllerAnimatedTransition(0));
  sub_1006BF2A8(v18, v15);
  swift_unknownObjectWeakInit();
  v62 = OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView;
  *&v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView] = 0;
  v63 = &v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_animationGroup];
  v64 = sub_100789704(_swiftEmptyArrayStorage, 0.0);
  *v63 = v65;
  v63[1] = v64;
  v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_didCallPerformTransitionAnimation] = 0;
  v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing] = 1;
  v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isGridLayout] = (v45 == 2) | v45 & 1;
  v66 = &v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect];
  *v66 = v54;
  v66[1] = v55;
  v66[2] = v56;
  v66[3] = v57;
  *(v66 + 32) = v58;
  swift_unknownObjectWeakAssign();
  sub_1006BF2A8(v15, &v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_folderItemViewModel]);
  *&v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_boardPreviewImageCache] = v47;
  if (v58)
  {
    v67 = v47;
    v68 = 0;
  }

  else
  {
    v69 = objc_allocWithZone(type metadata accessor for EncapsulatedImageView());
    v67 = v47;
    v68 = [v69 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v70 = *&v61[v62];
  *&v61[v62] = v68;

  v61[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_usesSublayerTransform] = 0;
  v71 = type metadata accessor for CRLBoardViewControllerAnimatedTransition(0);
  v85.receiver = v61;
  v85.super_class = v71;
  v72 = objc_msgSendSuper2(&v85, "init");

  sub_10000CAAC(v15, &unk_101A15B20);
  sub_10000CAAC(v18, &unk_101A15B20);
  sub_10000CAAC(v84, &unk_101A15B20);
  return v72;
}

void sub_1006BE6F4(void *a1)
{
  v2 = type metadata accessor for UUID();
  v94 = *(v2 - 8);
  v95 = v2;
  __chkstk_darwin(v2);
  v4 = &v89[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v5 - 8);
  v96 = &v89[-v6];
  v98 = type metadata accessor for IndexPath();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v89[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v99 = &v89[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v89[-v12];
  v14 = _s5BoardVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v101 = &v89[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v17 - 8);
  v103 = &v89[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v102 = &v89[-v20];
  __chkstk_darwin(v21);
  v23 = &v89[-v22];
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = &v89[-v26];
  v28 = [a1 presentingViewController];
  if (!v28)
  {
    goto LABEL_8;
  }

  v29 = v28;
  v30 = sub_1006BD8EC(a1, v28);
  if (!v30)
  {

    goto LABEL_8;
  }

  v32 = v30;
  v91 = v4;
  v93 = v31;
  type metadata accessor for CRLiOSFolderGridViewController();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {

    goto LABEL_8;
  }

  v34 = v33;
  v92 = v29;
  v35 = v32;
  v36 = v93;
  sub_101012C40(v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v59 = v13;
    v60 = v101;
    sub_1006BF318(v59, v101, _s5BoardVMa);
    v40 = v34[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout];
    v38 = *&v34[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardPreviewImageCache];
    sub_1006BF380(v60, v27, _s5BoardVMa);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v27, 0, 1, v8);
    sub_1006BF2A8(v27, v23);
    if ((*(v9 + 48))(v23, 1, v8) == 1)
    {
      v61 = v38;
      sub_1006BF408(v60, _s5BoardVMa);

      sub_10000CAAC(v23, &unk_101A15B20);
      v39 = 0;
      v37 = 1;
      goto LABEL_9;
    }

    v90 = v40;
    v62 = v99;
    sub_1006BF318(v23, v99, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v63 = v38;
    v64 = v34;
    v65 = sub_10005AFE0();
    v66 = v91;
    sub_100F87E04(v91);
    v67 = v96;
    dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

    (*(v94 + 8))(v66, v95);
    v68 = v100;
    v69 = v98;
    if ((*(v100 + 48))(v67, 1, v98) == 1)
    {

      sub_1006BF408(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1006BF408(v101, _s5BoardVMa);
      sub_10000CAAC(v67, &unk_101A23C40);
      v39 = 0;
      v37 = 1;
      v41 = 0.0;
      v42 = 0.0;
      v43 = 0.0;
      v44 = 0.0;
      v40 = v90;
      goto LABEL_10;
    }

    (*(v68 + 32))(v97, v67, v69);
    v70 = v35;
    v71 = [v64 collectionView];
    if (v71)
    {
      v72 = v71;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v72 scrollToItemAtIndexPath:isa atScrollPosition:0 animated:0];

      v74 = [v64 collectionView];
      v75 = v92;
      if (v74)
      {
        v76 = IndexPath._bridgeToObjectiveC()().super.isa;
        v77 = [v74 cellForItemAtIndexPath:v76];

        if (v77)
        {
          ObjectType = swift_getObjectType();
          v79 = swift_conformsToProtocol2();
          if (v79)
          {
            v80 = *(v79 + 96);
            v81 = v79;
            v39 = v77;
            v80(v105, ObjectType, v81);
            v41 = *v105;
            v42 = *&v105[1];
            v43 = *&v105[2];
            v44 = *&v105[3];
            v82 = v27;
            if (v106)
            {
              v37 = v106;
            }

            else
            {
              v83 = [v75 view];
              [v39 convertRect:v83 toView:{v41, v42, v43, v44}];
              v41 = v84;
              v42 = v85;
              v43 = v86;
              v44 = v87;

              v37 = 0;
            }

            v69 = v98;
            goto LABEL_30;
          }

          v82 = v27;
        }

        else
        {
          v82 = v27;
        }

        v39 = 0;
        v37 = 1;
        v41 = 0.0;
        v42 = 0.0;
        v43 = 0.0;
        v44 = 0.0;
LABEL_30:
        v88 = v101;
        (*(v100 + 8))(v97, v69);
        sub_1006BF408(v99, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1006BF408(v88, _s5BoardVMa);
        v47 = v102;
        v46 = v103;
        v40 = v90;
        v45 = v82;
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_10000CAAC(v13, &unk_1019FA3E0);
LABEL_8:
  v37 = 1;
  (*(v9 + 56))(v27, 1, 1, v8);
  v38 = 0;
  v39 = 0;
  v40 = 2;
LABEL_9:
  v41 = 0.0;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
LABEL_10:
  v45 = v27;
  v47 = v102;
  v46 = v103;
LABEL_11:
  v103 = v45;
  sub_1006BF2A8(v45, v47);
  v48 = objc_allocWithZone(type metadata accessor for CRLiOSBoardViewControllerAnimatedTransition(0));
  sub_1006BF2A8(v47, v46);
  swift_unknownObjectWeakInit();
  v49 = OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView;
  *&v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailImageView] = 0;
  v50 = &v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_animationGroup];
  v51 = sub_100789704(_swiftEmptyArrayStorage, 0.0);
  *v50 = v52;
  v50[1] = v51;
  v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_didCallPerformTransitionAnimation] = 0;
  v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isPushing] = 0;
  v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_isGridLayout] = (v40 == 2) | v40 & 1;
  v53 = &v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_thumbnailScreenRect];
  *v53 = v41;
  v53[1] = v42;
  v53[2] = v43;
  v53[3] = v44;
  *(v53 + 32) = v37;
  swift_unknownObjectWeakAssign();
  sub_1006BF2A8(v46, &v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_folderItemViewModel]);
  *&v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_boardPreviewImageCache] = v38;
  if (v37)
  {
    v54 = v38;
    v55 = 0;
  }

  else
  {
    v56 = objc_allocWithZone(type metadata accessor for EncapsulatedImageView());
    v54 = v38;
    v55 = [v56 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v57 = *&v48[v49];
  *&v48[v49] = v55;

  v48[OBJC_IVAR____TtC8Freeform40CRLBoardViewControllerAnimatedTransition_usesSublayerTransform] = 0;
  v58 = type metadata accessor for CRLBoardViewControllerAnimatedTransition(0);
  v104.receiver = v48;
  v104.super_class = v58;
  objc_msgSendSuper2(&v104, "init");

  sub_10000CAAC(v46, &unk_101A15B20);
  sub_10000CAAC(v47, &unk_101A15B20);
  sub_10000CAAC(v103, &unk_101A15B20);
}

uint64_t sub_1006BF2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A15B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006BF318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006BF380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006BF408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for CRLBasicLayerAnimation()
{
  result = qword_1019FA450;
  if (!qword_1019FA450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006BF4DC()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1005F8CFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006BF590(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 300))
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

uint64_t sub_1006BF5D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 300) = 1;
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

    *(result + 300) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006BF678(uint64_t a1)
{
  v3 = type metadata accessor for CRLBasicLayerAnimation();
  __chkstk_darwin(v3);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(a1, &v59);
  sub_1005B981C(&qword_1019FA4B0);
  if (swift_dynamicCast())
  {
    sub_100005070(a1);
    memcpy(v60, v58, 0x12CuLL);
    return sub_1006C0EFC(v60, v1);
  }

  memset(v58, 0, 300);
  sub_10000CAAC(v58, &qword_1019FA4B8);
  v56 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v55 = a1;
  v8 = a1;
  v9 = inited;
  sub_10000630C(v8, v60);
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v16 = sub_1000053B0();
  *(v9 + 32) = v10;
  v13 = v9 + 32;
  *(v9 + 64) = v16;
  *(v9 + 40) = v12;
  sub_1006C0E98(v1, v5);
  v14 = String.init<A>(describing:)();
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v16;
  v57 = v16;
  *(v9 + 72) = v14;
  *(v9 + 80) = v15;
  v54 = objc_opt_self();
  LODWORD(v16) = [v54 _atomicIncrementAssertCount];
  v60[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, v60);
  StaticString.description.getter();
  v17 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v18 lastPathComponent];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_4:
  v23 = static OS_os_log.crlAssert;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10146CA70;
  *(v24 + 56) = &type metadata for Int32;
  *(v24 + 64) = &protocol witness table for Int32;
  *(v24 + 32) = v16;
  v25 = sub_100006370(0, &qword_1019F4D30);
  *(v24 + 96) = v25;
  v26 = sub_1005CF04C();
  *(v24 + 72) = v17;
  v27 = v57;
  *(v24 + 136) = &type metadata for String;
  *(v24 + 144) = v27;
  *(v24 + 104) = v26;
  *(v24 + 112) = v20;
  *(v24 + 120) = v22;
  *(v24 + 176) = &type metadata for UInt;
  *(v24 + 184) = &protocol witness table for UInt;
  *(v24 + 152) = 53;
  v28 = v60[0];
  *(v24 + 216) = v25;
  *(v24 + 224) = v26;
  *(v24 + 192) = v28;
  v29 = v17;
  v30 = v28;
  v31 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
  swift_setDeallocating();
  v56 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v23, &_mh_execute_header, v32, "Tried to assign an invalid CRLLayerAnimationDef %@ to basic animation %@", 72, 2, v9);

  type metadata accessor for __VaListBuilder();
  v17 = swift_allocObject();
  v17[2] = 8;
  v17[3] = 0;
  v33 = v17 + 3;
  v17[4] = 0;
  v17[5] = 0;
  v57 = v9;
  v16 = *(v9 + 16);
  if (v16)
  {
    v34 = 0;
    v9 = 40;
    while (1)
    {
      v35 = (v13 + 40 * v34);
      v20 = v35[3];
      v22 = sub_100020E58(v35, v20);
      v36 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v37 = *v33;
      v38 = *(v36 + 16);
      v39 = __OFADD__(*v33, v38);
      v40 = *v33 + v38;
      if (v39)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_4;
      }

      v22 = v17[4];
      if (v22 >= v40)
      {
        goto LABEL_21;
      }

      if (v22 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v20 = v17[5];
      if (2 * v22 > v40)
      {
        v40 = 2 * v22;
      }

      v17[4] = v40;
      if ((v40 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v41 = v13;
      v42 = v36;
      v43 = swift_slowAlloc();
      v44 = v43;
      v17[5] = v43;
      if (v20)
      {
        break;
      }

      v36 = v42;
      v13 = v41;
      v9 = 40;
      if (!v44)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v46 = *(v36 + 16);
      if (v46)
      {
        v47 = (v36 + 32);
        v48 = *v33;
        while (1)
        {
          v49 = *v47++;
          *&v44[8 * v48] = v49;
          v48 = *v33 + 1;
          if (__OFADD__(*v33, 1))
          {
            break;
          }

          *v33 = v48;
          if (!--v46)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_6:

      if (++v34 == v16)
      {
        goto LABEL_29;
      }
    }

    if (v43 != v20 || v43 >= &v20[8 * v37])
    {
      memmove(v43, v20, 8 * v37);
    }

    v22 = v17;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v36 = v42;
    v13 = v41;
    v9 = 40;
LABEL_21:
    v44 = v17[5];
    if (!v44)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v50 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v53 = String._bridgeToObjectiveC()();

  [v54 handleFailureInFunction:v51 file:v52 lineNumber:53 isFatal:0 format:v53 args:v50];

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_100005070(v55);
}

uint64_t sub_1006BFD34(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FA4C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for CRLBasicLayerAnimation();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000630C(a1, v15);
  sub_1005B981C(&qword_1019F5870);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_1006C0F34(v5, v9);
    v12 = sub_101233B40(v9, v1);
    sub_1006C0F98(v9);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_10000CAAC(v5, &qword_1019FA4C0);
    v12 = 0;
  }

  return v12 & 1;
}

id sub_1006BFEF0(uint64_t a1, double a2)
{
  v3 = v2;
  sub_10000BE14(a1, v45, &unk_101A09F80);
  sub_10000BE14(v45, &v37, &unk_101A09F80);
  v5 = v42;
  sub_10000CAAC(&v37, &unk_101A09F80);
  if (!v5)
  {
    sub_100915B84(&v37);
    sub_10000CAAC(v45, &unk_101A09F80);
    v45[2] = v39;
    v45[3] = v40;
    v45[4] = v41;
    v46 = v42;
    v45[0] = v37;
    v45[1] = v38;
  }

  sub_1005F8AB8(v2, &v37);
  v6 = sub_100B7694C();
  sub_100B76520(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() animationWithKeyPath:v7];

  sub_1005F8B14(&v37);
  sub_10000BE14(v45, &v31, &unk_101A09F80);
  if (v36)
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    sub_10000BE14(&v37, &v31, &unk_1019F4D00);
    v9 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v10 = sub_100020E58(&v31, *(&v32 + 1));
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(&v31);
    }

    else
    {
      v15 = 0;
    }

    [v8 setFromValue:v15];
    swift_unknownObjectRelease();
    sub_10000BE14(&v39, &v31, &unk_1019F4D00);
    v16 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v17 = sub_100020E58(&v31, *(&v32 + 1));
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v16);
      sub_100005070(&v31);
    }

    else
    {
      v22 = 0;
    }

    [v8 setToValue:v22];
    swift_unknownObjectRelease();
    sub_1005F8A64(&v37);
  }

  else
  {
    sub_10000CAAC(&v31, &unk_101A09F80);
  }

  v23 = *(v3 + 8) + a2;
  v24 = v8;
  [v24 setBeginTime:v23];
  [v24 setDuration:*(v3 + 16)];
  [v24 setTimingFunction:*v3];
  sub_1005F8AB8(v3, &v37);
  v25 = v43;
  if (v43)
  {
    v26 = v43;
  }

  else
  {
    v26 = [v24 fillMode];
    v25 = 0;
  }

  v27 = v25;
  sub_1005F8B14(&v37);
  [v24 setFillMode:v26];

  sub_1005F8AB8(v3, &v37);
  v28 = v44;
  if (v44 == 2)
  {
    v28 = [v24 isRemovedOnCompletion];
  }

  sub_1005F8B14(&v37);
  [v24 setRemovedOnCompletion:v28 & 1];

  sub_10000CAAC(v45, &unk_101A09F80);
  return v24;
}

uint64_t sub_1006C03F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1006C0474@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CRLBasicLayerAnimation.Def;
  a1[4] = sub_1005F907C();
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1005F8AB8(v1, v3 + 16);
}

void (*sub_1006C04D8(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[10] = v1;
  v3[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v3[4] = sub_1005F907C();
  v5 = swift_allocObject();
  *v4 = v5;
  sub_1005F8AB8(v1, v5 + 16);
  return sub_1006C0580;
}

void sub_1006C0580(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10000630C(*a1, v2 + 40);
    sub_1006BF678(v2 + 40);
    sub_100005070(v2);
  }

  else
  {
    sub_1006BF678(*a1);
  }

  free(v2);
}

Swift::Int sub_1006C065C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006C0E50(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006C06F8()
{
  type metadata accessor for UUID();
  sub_1006C0E50(&qword_1019FB870, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1006C0778()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006C0E50(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double (*sub_1006C0820(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_1006C084C;
}

double sub_1006C084C(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 8) = *a1;
  return result;
}

id sub_1006C0864(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_100B7694C();
  sub_100B76520(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() animationWithKeyPath:v7];

  sub_10000BE14(a1, &v31, &unk_101A09F80);
  if (v36)
  {
    v38[1] = v34;
    v38[2] = v35;
    v39 = v36;
    v37[0] = v31;
    v37[1] = v32;
    v38[0] = v33;
    sub_10000BE14(v37, &v31, &unk_1019F4D00);
    v9 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v10 = sub_100020E58(&v31, *(&v32 + 1));
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(&v31);
    }

    else
    {
      v15 = 0;
    }

    [v8 setFromValue:v15];
    swift_unknownObjectRelease();
    sub_10000BE14(v38, &v31, &unk_1019F4D00);
    v16 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v17 = sub_100020E58(&v31, *(&v32 + 1));
      v18 = *(v16 - 8);
      v19 = __chkstk_darwin(v17);
      v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v21, v19);
      v22 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v21, v16);
      sub_100005070(&v31);
    }

    else
    {
      v22 = 0;
    }

    [v8 setToValue:v22];
    swift_unknownObjectRelease();
    sub_1005F8A64(v37);
  }

  else
  {
    sub_10000CAAC(&v31, &unk_101A09F80);
  }

  v23 = *(v3 + 8) + a2;
  v24 = v8;
  [v24 setBeginTime:v23];
  [v24 setDuration:*(v3 + 16)];
  [v24 setTimingFunction:*v3];
  v25 = *(v3 + 288);
  if (v25)
  {
    v26 = *(v3 + 288);
  }

  else
  {
    v26 = [v24 fillMode];
    v25 = 0;
  }

  v27 = v25;
  [v24 setFillMode:v26];

  v28 = *(v3 + 298);
  if (v28 == 2)
  {
    LOBYTE(v28) = [v24 isRemovedOnCompletion];
  }

  [v24 setRemovedOnCompletion:v28 & 1];

  return v24;
}

void *sub_1006C0C98()
{
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

unint64_t sub_1006C0D34(uint64_t a1)
{
  result = sub_1006C0D5C();
  *(a1 + 40) = result;
  return result;
}

unint64_t sub_1006C0D5C()
{
  result = qword_1019FA498;
  if (!qword_1019FA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FA498);
  }

  return result;
}

uint64_t sub_1006C0DF8(uint64_t a1)
{
  result = sub_1006C0E50(&qword_1019FA4A8, type metadata accessor for CRLBasicLayerAnimation);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1006C0E50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C0E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBasicLayerAnimation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C0F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBasicLayerAnimation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C0F98(uint64_t a1)
{
  v2 = type metadata accessor for CRLBasicLayerAnimation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006C0FF4(uint64_t a1, uint64_t a2)
{
  sub_100006370(0, &qword_1019F54D0);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (sub_100B79004(a1 + 24, a2 + 24) & 1) == 0)
  {
    goto LABEL_25;
  }

  v4 = *(a2 + 288);
  if (!*(a1 + 288))
  {
    if (!v4)
    {
      goto LABEL_13;
    }

LABEL_25:
    v12 = 0;
    return v12 & 1;
  }

  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_13;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v10 = *(a1 + 296);
  v11 = *(a2 + 296);
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
    if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
    {
      return v12 & 1;
    }
  }

  v13 = *(a1 + 297);
  v14 = *(a2 + 297);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = 0;
    if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
    {
      return v12 & 1;
    }
  }

  v15 = *(a1 + 298);
  v16 = *(a2 + 298);
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      goto LABEL_25;
    }

LABEL_29:
    v12 = *(a1 + 299) ^ *(a2 + 299) ^ 1;
    return v12 & 1;
  }

  v12 = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    goto LABEL_29;
  }

  return v12 & 1;
}

uint64_t sub_1006C1280()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v20 - v7;
  v9 = [v1 url];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_100044B68(v4, v8);
  type metadata accessor for URL();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_100686028(v8);
LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  v13 = URL.scheme.getter();
  v15 = v14;
  (*(v12 + 8))(v8, v11);
  if (!v15)
  {
    goto LABEL_17;
  }

  v16 = v13 == 1886680168 && v15 == 0xE400000000000000;
  if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v13 == 0x7370747468 ? (v17 = v15 == 0xE500000000000000) : (v17 = 0), v17))
  {

    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v18 & 1;
}

id sub_1006C1558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t (*a5)(uint64_t))
{
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = (*(v9 + 16))(&v16 - v11, a1 + *a4, v8, v10);
  v14 = a5(v13);
  (*(v9 + 8))(v12, v8);

  return v14;
}

id sub_1006C1900()
{

  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t sub_1006C1AD4()
{
  v1 = 0x65746F6D6572;
  if (*(v0 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_isLocalParticipant))
  {
    v1 = 0x6C61636F6CLL;
  }

  v12 = v1;

  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);

  v3 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_displayName);
  v4 = *(v0 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_displayName + 8);

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  v7 = UUID.uuidString.getter();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return v12;
}

uint64_t sub_1006C1C14(uint64_t a1)
{
  swift_getObjectType();
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(a1, v11);
  if (!v12)
  {
    sub_10000CAAC(v11, &unk_1019F4D00);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v6 = v10;
  (*(v3 + 16))(v5, v10 + OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID, v2);
  v7 = static UUID.== infix(_:_:)();

  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

id sub_1006C1FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorPresence();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006C2108(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  LODWORD(v48) = a4;
  v9 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for PersonNameComponents();
  v45 = *(v12 - 8);
  __chkstk_darwin(v12);
  v44 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
  v15 = type metadata accessor for UUID();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 16);
  v49 = a2;
  v16(&v5[v14], a2);
  v17 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_joinTime;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(&v5[v17], a3, v18);
  v5[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_isLocalParticipant] = v48;
  v48 = a3;
  v21 = a3;
  v22 = v12;
  v20(&v5[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime], v21, v18);
  v23 = v45;
  v24 = sub_1007D7988();
  v25 = &v5[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_displayName];
  *v25 = v24;
  v25[1] = v26;
  sub_1007D6EB8(v11);
  if ((*(v23 + 48))(v11, 1, v12) == 1)
  {
    sub_10000CAAC(v11, &qword_101A0DE80);
LABEL_8:
    v36 = sub_1007D7988();
    goto LABEL_9;
  }

  v27 = v44;
  (*(v23 + 32))(v44, v11, v22);
  v28 = objc_opt_self();
  isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
  v30 = [v28 localizedStringFromPersonNameComponents:isa style:1 options:0];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  (*(v23 + 8))(v27, v22);
  v34 = v33;
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {

    goto LABEL_8;
  }

  v36 = v31;
LABEL_9:
  v37 = &v5[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_shortDisplayName];
  *v37 = v36;
  v37[1] = v34;
  v38 = *(a1 + OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_ckShareParticipant);
  sub_1009A1F98(v38);
  v40 = v39;

  *&v5[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_collaboratorColorIndex] = v40;
  v41 = type metadata accessor for CRLCollaboratorPresence();
  v50.receiver = v5;
  v50.super_class = v41;
  v42 = objc_msgSendSuper2(&v50, "init");
  (*(v19 + 8))(v48, v18);
  (*(v46 + 8))(v49, v47);
  return v42;
}

uint64_t sub_1006C24FC()
{
  v1 = type metadata accessor for CRLBoardIdentifier(0);
  v55 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v48 - v5;
  v7 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 16);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v53 = v9;
    if (qword_1019F2270 == -1)
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
  v16 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  swift_beginAccess();
  v54 = v0;
  v18 = *(v0 + 24);
  v19 = *(v18 + 16);
  v20 = _swiftEmptyArrayStorage;
  if (v19)
  {
    v49 = v16;
    v50 = inited;
    v51 = v1;
    v52 = v4;
    v59 = _swiftEmptyArrayStorage;

    sub_100034080(0, v19, 0);
    v20 = v59;
    v21 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v48[1] = v18;
    v22 = v18 + v21;
    v23 = *(v55 + 72);
    v56 = 0x800000010155E590;
    do
    {
      sub_1005F1308(v22, v6);
      v24 = &v6[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v25 = *v24;
      v26 = v24[1];
      if (*v24)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26 == 0xE000000000000000;
      }

      if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = 0xD000000000000012;
        v26 = v56;
      }

      else
      {
      }

      v57 = UUID.uuidString.getter();
      v58 = v28;
      v29._countAndFlagsBits = 15418;
      v29._object = 0xE200000000000000;
      String.append(_:)(v29);
      v30._countAndFlagsBits = v25;
      v30._object = v26;
      String.append(_:)(v30);

      v31._countAndFlagsBits = 62;
      v31._object = 0xE100000000000000;
      String.append(_:)(v31);
      v32 = v57;
      v33 = v58;
      sub_100086F34(v6);
      v59 = v20;
      v35 = v20[2];
      v34 = v20[3];
      if (v35 >= v34 >> 1)
      {
        sub_100034080((v34 > 1), v35 + 1, 1);
        v20 = v59;
      }

      v20[2] = v35 + 1;
      v36 = &v20[2 * v35];
      v36[4] = v32;
      v36[5] = v33;
      v22 += v23;
      --v19;
    }

    while (v19);

    v4 = v52;
    v1 = v51;
    inited = v50;
    v16 = v49;
  }

  *(inited + 56) = sub_1005B981C(&unk_1019F4D80);
  *(inited + 64) = sub_10001A2F8(&unk_101A10AA0, &unk_1019F4D80);
  *(inited + 32) = v20;
  v37 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard;
  v38 = v54;
  swift_beginAccess();
  v39 = v38 + v37;
  v40 = v53;
  sub_1006C35A8(v39, v53);
  if ((*(v55 + 48))(v40, 1, v1))
  {
    sub_1006C3618(v40);
    v41 = 0;
    v42 = 0;
  }

  else
  {
    sub_1005F1308(v40, v4);
    sub_1006C3618(v40);
    v41 = sub_10084B8C8();
    v42 = v43;
    sub_100086F34(v4);
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  v44 = 7104878;
  if (v42)
  {
    v44 = v41;
  }

  v45 = 0xE300000000000000;
  if (v42)
  {
    v45 = v42;
  }

  *(inited + 72) = v44;
  *(inited + 80) = v45;
  v46 = static os_log_type_t.default.getter();
  sub_100005404(v16, &_mh_execute_header, v46, "CRLSyncPriorityProvider current state: openBoards %{public}@, currentFocusedBoard %{public}@", 92, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  return swift_arrayDestroy();
}

uint64_t sub_1006C2AC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019F6EB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v2 + 16);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v17 = swift_beginAccess();
    v18 = *(v2 + 24);
    __chkstk_darwin(v17);
    *(&v22 - 2) = a1;

    v19 = sub_10097EFBC(sub_1006C3FA0, (&v22 - 4), v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      swift_beginAccess();
      sub_10106B498(v19, v9);
      sub_100086F34(v9);
      swift_endAccess();
    }

    swift_beginAccess();
    sub_1005F1308(a1, v6);
    sub_100676D28(0, 0, v6);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t sub_1006C2D64(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    __chkstk_darwin(result);
    *(&v13 - 2) = a1;
    swift_beginAccess();
    result = sub_100CCD38C(sub_1006C3F78, (&v13 - 4));
    v12 = *(*(v2 + 24) + 16);
    if (v12 >= result)
    {
      sub_10067CC0C(result, v12);
      return swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006C2F00(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1006C2F80()
{

  sub_1006C3618(v0 + OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard);

  return swift_deallocClassInstance();
}

unint64_t sub_1006C3020()
{
  result = qword_1019FA648;
  if (!qword_1019FA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FA648);
  }

  return result;
}

uint64_t sub_1006C3074@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v52 = type metadata accessor for UUID();
  v45 = *(v52 - 8);
  __chkstk_darwin(v52);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v39 - v13;
  swift_beginAccess();
  v15 = *(a1 + 24);
  v16 = *(v15 + 16);
  v17 = _swiftEmptyArrayStorage;
  v47 = v9;
  if (v16)
  {
    v40 = v8;
    v41 = v7;
    v42 = a1;
    v43 = v14;
    v44 = a2;
    v54 = _swiftEmptyArrayStorage;
    v18 = v15;

    specialized ContiguousArray.reserveCapacity(_:)();
    v19 = sub_100006370(0, &qword_1019F69D0);
    v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v39 = v18;
    v21 = v18 + v20;
    v50 = *(v9 + 72);
    v51 = v19;
    v22 = v46;
    v48 = CKCurrentUserDefaultName;
    v49 = (v45 + 16);
    v23 = (v45 + 8);
    v24 = v52;
    do
    {
      sub_1005F1308(v21, v12);
      (*v49)(v22, v12, v24);
      v30 = &v12[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v25 = *v30;
      v27 = v30[1];
      if (*v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v27 == 0xE000000000000000;
      }

      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;
      }

      else
      {
      }

      v53._countAndFlagsBits = 0x5F6472616F42;
      v53._object = 0xE600000000000000;
      v28._countAndFlagsBits = UUID.uuidString.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = v25;
      v29._object = v27;
      CKRecordZoneID.init(zoneName:ownerName:)(v53, v29);
      v24 = v52;
      (*v23)(v22, v52);
      sub_100086F34(v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v21 += v50;
      --v16;
    }

    while (v16);

    v17 = v54;
    v14 = v43;
    a2 = v44;
    v7 = v41;
    a1 = v42;
    v8 = v40;
  }

  v54 = v17;
  v32 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard;
  swift_beginAccess();
  sub_1006C35A8(a1 + v32, v7);
  if ((*(v47 + 48))(v7, 1, v8) == 1)
  {
    result = sub_1006C3618(v7);
LABEL_18:
    *a2 = v17;
    return result;
  }

  sub_1005EB270(v7, v14);
  v34 = sub_100EFF9E4(v14);
  v35 = sub_10100F438(v34, v17);
  v37 = v36;

  if (v37)
  {
    result = sub_100086F34(v14);
    goto LABEL_18;
  }

  v38 = sub_10106B378(v35);
  if (!(v54 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_10067CC38(0, 0, v38);

    result = sub_100086F34(v14);
    v17 = v54;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006C3518()
{
  sub_1005B981C(&unk_1019FA650);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

uint64_t sub_1006C35A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F52D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C3618(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F52D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006C36D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v19[0] = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v19[1] = *(v4 + 16);
  sub_1005F1308(a1, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v16 = swift_allocObject();
  sub_1005EB270(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  aBlock[4] = v19[0];
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v8, v6);
  (*(v9 + 8))(v11, v21);
}

uint64_t sub_1006C3A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v11 = sub_10084B8C8();
  v13 = v12;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v14, a3, a4, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  a5(a1);
  return sub_1006C24FC();
}

uint64_t sub_1006C3BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v9 = sub_10084B8C8();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v12, "Prioritizing sync for %{public}@ because boardWasFocused", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  sub_1005F1308(a1, v6);
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  v14 = OBJC_IVAR____TtC8Freeform23CRLSyncPriorityProvider_currentFocusedBoard;
  swift_beginAccess();
  sub_1006C3F08(v6, a2 + v14);
  swift_endAccess();
  sub_1006C2AC4(a1);
  return sub_1006C24FC();
}

uint64_t sub_1006C3DD4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_1006C3A40(v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2, a3);
}

uint64_t sub_1006C3E7C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006C3BA0(v0 + v2, v3);
}

uint64_t sub_1006C3F08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F52D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C3FC4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1005B981C(&qword_1019FA6D8);
  v2[7] = swift_task_alloc();
  v3 = sub_1005B981C(&qword_1019FA6B0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v5;
  v2[15] = v4;

  return _swift_task_switch(sub_1006C410C, v5, v4);
}

uint64_t sub_1006C410C()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_result;
  swift_beginAccess();
  sub_10000BE14(v4 + v5, v3, &qword_1019FA6D8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[6];
    sub_10000CAAC(v0[7], &qword_1019FA6D8);
    v7 = static MainActor.shared.getter();
    v0[16] = v7;
    v8 = swift_task_alloc();
    v0[17] = v8;
    *(v8 + 16) = v6;
    v9 = swift_task_alloc();
    v0[18] = v9;
    v10 = sub_1005B981C(&unk_1019F33C0);
    *v9 = v0;
    v9[1] = sub_1006C43DC;
    v11 = v0[5];

    return withCheckedContinuation<A>(isolation:function:_:)(v11, v7, &protocol witness table for MainActor, 0x52726F4674696177, 0xEF2928746C757365, sub_1006C5560, v8, v10);
  }

  else
  {
    v12 = v0[10];
    v13 = v0[11];
    v14 = v0[7];

    sub_10003DFF8(v14, v13, &qword_1019FA6B0);
    sub_10003DFF8(v13, v12, &qword_1019FA6B0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = v0[10];
    v17 = v0[5];
    if (EnumCaseMultiPayload == 1)
    {
      sub_10000CAAC(v16, &qword_1019FA6B0);
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    }

    else
    {
      sub_10003DFF8(v16, v0[5], &unk_1019F33C0);
    }

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1006C43DC()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1006C453C, v3, v2);
}

uint64_t sub_1006C453C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006C45B8(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v3 = sub_1005B981C(&qword_1019FA6D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_continuation;
  swift_beginAccess();
  sub_10000BE14(a2 + v9, v8, &qword_1019FA6D0);
  v10 = sub_1005B981C(&unk_1019FA6C0);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  sub_10000CAAC(v8, &qword_1019FA6D0);
  if (v12 == 1)
  {
    (*(v11 + 16))(v5, v40, v10);
    (*(v11 + 56))(v5, 0, 1, v10);
    swift_beginAccess();
    sub_10002C638(v5, a2 + v9, &qword_1019FA6D0);
    return swift_endAccess();
  }

  else
  {
    v14 = objc_opt_self();
    v15 = [v14 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
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
    *(inited + 152) = 20;
    v27 = v41;
    *(inited + 216) = v24;
    *(inited + 224) = v25;
    *(inited + 192) = v27;
    v28 = v16;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v31 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v31, "This method should only be called once.", 39, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "This method should only be called once.");
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

    [v14 handleFailureInFunction:v34 file:v35 lineNumber:20 isFatal:1 format:v36 args:v33];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v37, v38);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1006C4B10(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v4 - 8);
  v26 = &v26 - v5;
  v6 = sub_1005B981C(&qword_1019FA6B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v27 = &v26 - v8;
  v9 = sub_1005B981C(&qword_1019FA6D0);
  __chkstk_darwin(v9 - 8);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_1005B981C(&unk_1019FA6C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = sub_1005B981C(&qword_1019FA6D8);
  __chkstk_darwin(v18 - 8);
  v20 = &v26 - v19;
  v28 = a1;
  sub_10000BE14(a1, &v26 - v19, &qword_1019FA6B0);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_result;
  swift_beginAccess();
  sub_10002C638(v20, v2 + v21, &qword_1019FA6D8);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC8Freeform37CRLQAImportFileDocumentPickerDelegate_continuation;
  swift_beginAccess();
  sub_10000BE14(v2 + v22, v13, &qword_1019FA6D0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000CAAC(v13, &qword_1019FA6D0);
  }

  (*(v15 + 32))(v17, v13, v14);
  v24 = v27;
  sub_10000BE14(v28, v27, &qword_1019FA6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_10003DFF8(v24, v26, &unk_1019F33C0);
    CheckedContinuation.resume(returning:)();
  }

  (*(v15 + 8))(v17, v14);
  v25 = v29;
  (*(v15 + 56))(v29, 1, 1, v14);
  swift_beginAccess();
  sub_10002C638(v25, v2 + v22, &qword_1019FA6D0);
  return swift_endAccess();
}

id sub_1006C5328()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLQAImportFileDocumentPickerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLQAImportFileDocumentPickerDelegate()
{
  result = qword_1019FA698;
  if (!qword_1019FA698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C5414()
{
  sub_1006C550C(319, &qword_1019FA6A8, &qword_1019FA6B0);
  if (v0 <= 0x3F)
  {
    sub_1006C550C(319, &qword_1019FA6B8, &unk_1019FA6C0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1006C550C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_1005C4E5C(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1006C5568()
{
  v1 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for URLError();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.isFileURL.getter())
  {
    v6 = URL.lastPathComponent.getter();
    v8 = v7;
    type metadata accessor for CRLTemporaryFile();
    swift_allocObject();
    v9 = sub_1009A380C(v6, v8);
    if (!v0)
    {
      v10 = v9;
      v32 = v3;
      v11 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v12);
      v14 = v13;
      v33 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
      URL._bridgeToObjectiveC()(OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url);
      v16 = v15;
      v35 = 0;
      v17 = [v11 copyItemAtURL:v14 toURL:v15 error:&v35];
      v34 = v10;
      LODWORD(v10) = v17;

      v18 = v35;
      if (v10)
      {
        v19 = objc_allocWithZone(PDFDocument);
        v20 = v18;
        URL._bridgeToObjectiveC()(v33);
        v22 = v21;
        v23 = [v19 initWithURL:v21];

        if (v23)
        {
          sub_1005B981C(&qword_1019FA6E8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = String._bridgeToObjectiveC()();

          *(inited + 32) = v25;
          *(inited + 64) = &type metadata for Bool;
          *(inited + 40) = 1;
          sub_100BD5E14(inited);
          swift_setDeallocating();
          sub_1006C5AF4(inited + 32);
          URL._bridgeToObjectiveC()(v26);
          v28 = v27;
          type metadata accessor for PDFDocumentWriteOption(0);
          sub_1006C5B5C(&qword_1019F3D00, type metadata accessor for PDFDocumentWriteOption);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v30 = [v23 writeToURL:v28 withOptions:isa];

          if ((v30 & 1) == 0)
          {
            static URLError.Code.cannotWriteToFile.getter();
            sub_10000BCE4(_swiftEmptyArrayStorage);
            sub_1006C5B5C(&qword_1019FA6E0, &type metadata accessor for URLError);
            _BridgedStoredNSError.init(_:userInfo:)();
            URLError._nsError.getter();
            (*(v32 + 8))(v5, v2);
            swift_willThrow();
          }
        }

        else
        {
          static URLError.Code.badURL.getter();
          sub_10000BCE4(_swiftEmptyArrayStorage);
          sub_1006C5B5C(&qword_1019FA6E0, &type metadata accessor for URLError);
          _BridgedStoredNSError.init(_:userInfo:)();
          URLError._nsError.getter();
          (*(v32 + 8))(v5, v2);
          swift_willThrow();
        }
      }

      else
      {
        v31 = v35;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }
    }
  }

  else
  {
    static URLError.Code.badURL.getter();
    sub_10000BCE4(_swiftEmptyArrayStorage);
    sub_1006C5B5C(&qword_1019FA6E0, &type metadata accessor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v3 + 8))(v5, v2);
    swift_willThrow();
  }
}

uint64_t sub_1006C5AF4(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FA6F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006C5B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C5BA4(uint64_t a1, unint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 120) = 0;
  *(v2 + 128) = 0x80;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1006CCC60();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {

    sub_1006CCCB4(*(v2 + 120), *(v2 + 128));
    type metadata accessor for CRLPreviewImages.CacheEntry();
    swift_defaultActor_destroy();
    sub_10002640C(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_10002640C(a1, a2);

    v6 = *(v2 + 120);
    *(v2 + 112) = v9;
    *(v2 + 120) = v10;
    v7 = *(v2 + 128);
    *(v2 + 128) = 64;
    sub_1006CCCB4(v6, v7);
  }

  return v2;
}

uint64_t sub_1006C5CD0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = type metadata accessor for CRLPreviewImages.Item(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_1006C5DCC, v1, 0);
}

uint64_t sub_1006C5DCC()
{
  v1 = *(v0[5] + 112);
  v0[12] = v1;
  sub_1006C63A0();
  v3 = v0[7];
  v2 = v0[8];
  v4 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
  sub_1006CC38C(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v2);
  sub_100025390(v2, v3, type metadata accessor for CRLPreviewImages.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1006CC3F0(v0[7], type metadata accessor for CRLBoardIdentifier);
    v5 = v1;
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1006C6028;

    return sub_1006C6600();
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    sub_1006CC3F0(v0[7], type metadata accessor for CRLPreviewImages.Item);
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_1006CC074(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError);
    swift_allocError();
    sub_1006CC38C(v1 + v4, v11);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v9 + 8))(v8, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1006C6028(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_1006C62FC;
  }

  else
  {
    v6 = sub_1006C615C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1006C615C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v0[2] = v3;
  v0[3] = v2;
  sub_1006CE2F8();
  v4 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v6 = v0[11];
  if (v1)
  {
    v7 = v0[14];
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];

    (*(v10 + 8))(v6, v9);
  }

  else
  {
    v11 = v4;
    v12 = v5;

    Data.write(to:options:)();
    v13 = v0[14];
    v14 = v0[12];
    (*(v0[10] + 8))(v0[11], v0[9]);
    sub_10002640C(v11, v12);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1006C62FC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1006C63A0()
{
  v1 = v0;
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v9 = [v5 crl_directoryExistsAt:v7];

  if (v9)
  {
    v10 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
    sub_1006CC38C(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1006CC3F0(v4, type metadata accessor for CRLBoardIdentifier);
      sub_1006CA724();
      URL.appendingPathComponent(_:isDirectory:)();
    }

    sub_1006CC3F0(v4, type metadata accessor for CRLPreviewImages.Item);
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_1006CC074(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError);
    swift_allocError();
    sub_1006CC38C(v1 + v10, v12);
  }

  else
  {
    type metadata accessor for CRLPreviewImages.CacheError(0);
    sub_1006CC074(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError);
    swift_allocError();
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1006C6620()
{
  v34 = v0;
  v1 = *(v0 + 264);
  v2 = *(v1 + 120);
  *(v0 + 272) = v2;
  v3 = *(v1 + 128);
  *(v0 + 257) = v3;
  if (v3 >> 6)
  {
    if (v3 >> 6 != 1)
    {
      v7 = objc_opt_self();
      v8 = [v7 _atomicIncrementAssertCount];
      v33 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v33);
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
      v18 = sub_1005CF04C();
      *(inited + 104) = v18;
      *(inited + 72) = v9;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v14;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 109;
      v20 = v33;
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
      sub_100005404(v15, &_mh_execute_header, v24, "The cache entry is still in the .ready state", 44, 2, _swiftEmptyArrayStorage);

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

      [v7 handleFailureInFunction:v27 file:v28 lineNumber:109 isFatal:0 format:v29 args:v26];

      type metadata accessor for CRLPreviewImages.CacheError(0);
      sub_1006CC074(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_11;
    }

    if (v3)
    {
      swift_willThrow();
      sub_1006CE2EC(v2, 1);
LABEL_11:
      v30 = *(v0 + 8);

      return v30();
    }

    sub_1006CE2EC(v2, 0);
    v31 = *(v0 + 8);

    return v31(v2);
  }

  else
  {

    v4 = swift_task_alloc();
    *(v0 + 280) = v4;
    v5 = sub_100006370(0, &qword_1019FAC38);
    v6 = sub_1005B981C(&unk_1019F6B40);
    *v4 = v0;
    v4[1] = sub_1006C6BBC;

    return Task.result.getter(v0 + 248, v2, v5, v6, &protocol self-conformance witness table for Error);
  }
}

uint64_t sub_1006C6BBC()
{
  v1 = *(*v0 + 264);

  return _swift_task_switch(sub_1006C6CCC, v1, 0);
}

uint64_t sub_1006C6CCC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 257);
  v3 = *(v0 + 272);
  if (*(v0 + 256))
  {
    swift_willThrow();
    sub_1006CCCB4(v3, v2);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    sub_1006CCCB4(*(v0 + 272), *(v0 + 257));
    v6 = *(v0 + 8);

    return v6(v1);
  }
}

uint64_t sub_1006C6DC8()
{
  v32 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 128);
  if ((v2 >> 6))
  {
    v3 = *(v1 + 120);
    if ((v2 >> 6) != 1)
    {
      v30 = *(v1 + 120);
      v29 = objc_opt_self();
      v4 = [v29 _atomicIncrementAssertCount];
      v31 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v31);
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
      *(inited + 152) = 132;
      v16 = v31;
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
      sub_100005404(v11, &_mh_execute_header, v20, "The cache entry is still in the .ready state", 44, 2, _swiftEmptyArrayStorage);

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

      [v29 handleFailureInFunction:v23 file:v24 lineNumber:132 isFatal:0 format:v25 args:v22];

      type metadata accessor for CRLPreviewImages.CacheError(0);
      sub_1006CC074(&qword_1019FB760, type metadata accessor for CRLPreviewImages.CacheError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      v3 = v30;
      goto LABEL_9;
    }

    if (v2)
    {
LABEL_9:
      swift_willThrow();
      sub_1006CE2CC(v3, v2);
      v26 = *(v0 + 8);

      return v26();
    }

    sub_1006CE2EC(*(v1 + 120), 0);
  }

  else
  {
    v3 = (v2 >> 6);
  }

  v28 = *(v0 + 8);

  return v28(v3);
}

uint64_t sub_1006C7298()
{
  sub_1006CCCB4(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1006C72DC(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a1 <= 1)
    {
      v3 = a1 | a2;
      v4 = 0xD000000000000011;
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v3 = a1 ^ 2 | a2;
      v4 = 0xD000000000000018;
      v5 = 0xD00000000000001BLL;
      if (a1 ^ 3 | a2)
      {
        v5 = 0xD000000000000010;
      }
    }

    if (v3)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v6._countAndFlagsBits = 0x5F6D6F74737563;
    v6._object = 0xE700000000000000;
    String.append(_:)(v6);
    type metadata accessor for CGSize(0);
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }
}

void sub_1006C742C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v7 = dbl_1014743A8[a2];
  }

  else
  {
    v7 = *&a2;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  if (a4)
  {
    v8 = dbl_1014743A8[a2];
  }

  else
  {
    v8 = *&a3;
  }

  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
}

uint64_t sub_1006C74B8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v44 = a4;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  v5 = sub_1005B981C(&qword_1019FAB78);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v28 - v6;
  v7 = sub_1005B981C(&qword_1019FAB80);
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v38 = &v28 - v8;
  v9 = sub_1005B981C(&qword_1019FAB88);
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v35 = &v28 - v10;
  v11 = sub_1005B981C(&qword_1019FAB90);
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v32 = &v28 - v12;
  v13 = sub_1005B981C(&qword_1019FAB98);
  v30 = *(v13 - 8);
  v31 = v13;
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  v16 = sub_1005B981C(&qword_1019FABA0);
  v29 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  v19 = sub_1005B981C(&qword_1019FABA8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v28 - v21;
  sub_100020E58(a1, a1[3]);
  sub_1006CDF30();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v44 & 1) == 0)
  {
    LOBYTE(v46) = 5;
    sub_1006CDF84();
    v25 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v46 = v45;
    type metadata accessor for CGSize(0);
    sub_1006CC074(&qword_1019FABB0, type metadata accessor for CGSize);
    v26 = v43;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v42 + 8))(v25, v26);
    return (*(v20 + 8))(v22, v19);
  }

  if (v45 > 1)
  {
    if (v45 ^ 2 | *(&v45 + 1))
    {
      if (v45 ^ 3 | *(&v45 + 1))
      {
        LOBYTE(v46) = 4;
        sub_1006CDFD8();
        v15 = v38;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v39;
        v23 = v40;
      }

      else
      {
        LOBYTE(v46) = 3;
        sub_1006CE02C();
        v15 = v35;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v24 = v36;
        v23 = v37;
      }
    }

    else
    {
      LOBYTE(v46) = 2;
      sub_1006CE080();
      v15 = v32;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_12;
  }

  if (v45 != 0)
  {
    LOBYTE(v46) = 1;
    sub_1006CE0D4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v30;
    v23 = v31;
LABEL_12:
    (*(v24 + 8))(v15, v23);
    return (*(v20 + 8))(v22, v19);
  }

  LOBYTE(v46) = 0;
  sub_1006CE128();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v29 + 8))(v18, v16);
  return (*(v20 + 8))(v22, v19);
}

Swift::Int sub_1006C7B38(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    v6 = dbl_1014743A8[a1];
  }

  else
  {
    v6 = *&a1;
  }

  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  if (a3)
  {
    v7 = dbl_1014743A8[a1];
  }

  else
  {
    v7 = *&a2;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  return Hasher._finalize()();
}

void sub_1006C7BE4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v9 = dbl_1014743A8[a3];
  }

  else
  {
    v9 = *&a3;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  if (a5)
  {
    v10 = dbl_1014743A8[a3];
  }

  else
  {
    v10 = *&a4;
  }

  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  if (a1 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = a1;
  }

  Hasher._combine(_:)(*&v11);
}

Swift::Int sub_1006C7C8C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    v8 = dbl_1014743A8[a1];
  }

  else
  {
    v8 = *&a1;
  }

  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  if (a3)
  {
    v9 = dbl_1014743A8[a1];
  }

  else
  {
    v9 = *&a2;
  }

  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  if (a4 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a4;
  }

  Hasher._combine(_:)(*&v10);
  return Hasher._finalize()();
}

uint64_t sub_1006C7D58(uint64_t a1)
{
  v2 = sub_1006CE02C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C7D94(uint64_t a1)
{
  v2 = sub_1006CE02C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006C7DD0(uint64_t a1)
{
  v2 = sub_1006CE128();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C7E0C(uint64_t a1)
{
  v2 = sub_1006CE128();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1006C7E48()
{
  v1 = *v0;
  v2 = 0x6D6F74737563;
  if (v1 == 4)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001BLL;
  }

  v3 = 0xD000000000000011;
  v4 = 0xD000000000000018;
  if (v1 == 1)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1006C7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006CCCE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006C7F34(uint64_t a1)
{
  v2 = sub_1006CDF30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C7F70(uint64_t a1)
{
  v2 = sub_1006CDF30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006C7FAC(uint64_t a1)
{
  v2 = sub_1006CDF84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C7FE8(uint64_t a1)
{
  v2 = sub_1006CDF84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006C8024(uint64_t a1)
{
  v2 = sub_1006CE080();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C8060(uint64_t a1)
{
  v2 = sub_1006CE080();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006C809C(uint64_t a1)
{
  v2 = sub_1006CE0D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C80D8(uint64_t a1)
{
  v2 = sub_1006CE0D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006C8114(uint64_t a1)
{
  v2 = sub_1006CDFD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006C8150(uint64_t a1)
{
  v2 = sub_1006CDFD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1006C81C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    v4 = dbl_1014743A8[*&v1];
  }

  else
  {
    v4 = v1;
  }

  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  if (v3)
  {
    v2 = dbl_1014743A8[*&v1];
  }

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher._finalize()();
}

uint64_t sub_1006C8260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1006CCEDC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

Swift::Int sub_1006C82E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    v5 = dbl_1014743A8[*&v1];
  }

  else
  {
    v5 = v1;
  }

  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  if (v3)
  {
    v2 = dbl_1014743A8[*&v1];
  }

  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  Hasher._combine(_:)(*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  Hasher._combine(_:)(*&v7);
  return Hasher._finalize()();
}

uint64_t sub_1006C83D0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006CC38C(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025390(v13, v7, type metadata accessor for CRLBoardIdentifier);
      sub_1006CC074(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
    }

    else
    {
      v17 = *(sub_1005B981C(&unk_1019FB780) + 48);
      sub_100025390(v13, v7, type metadata accessor for CRLBoardIdentifier);
      (*(v2 + 32))(v4, &v13[v17], v1);
      sub_1006CC074(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      (*(v2 + 8))(v4, v1);
    }

    v15 = type metadata accessor for CRLBoardIdentifier;
    v16 = v7;
  }

  else
  {
    sub_100025390(v13, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100F8D588();
    v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v16 = v10;
  }

  return sub_1006CC3F0(v16, v15);
}

unint64_t sub_1006C875C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006CC38C(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025390(v13, v7, type metadata accessor for CRLBoardIdentifier);
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      v25 = 0xD000000000000012;
      v26 = 0x800000010155E920;
      v15._countAndFlagsBits = sub_10084B8C8();
      String.append(_:)(v15);

      v16 = v25;
    }

    else
    {
      v20 = *(sub_1005B981C(&unk_1019FB780) + 48);
      sub_100025390(v13, v7, type metadata accessor for CRLBoardIdentifier);
      (*(v2 + 32))(v4, &v13[v20], v1);
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v25 = 0xD000000000000012;
      v26 = 0x800000010155E900;
      sub_1006CC074(&qword_101A02180, &type metadata accessor for UUID);
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 0x72616F62206E6920;
      v22._object = 0xEA00000000002064;
      String.append(_:)(v22);
      v23._countAndFlagsBits = sub_10084B8C8();
      String.append(_:)(v23);

      v16 = v25;
      (*(v2 + 8))(v4, v1);
    }

    v18 = type metadata accessor for CRLBoardIdentifier;
    v19 = v7;
  }

  else
  {
    sub_100025390(v13, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v25 = 0x203A7265746C6946;
    v26 = 0xE800000000000000;
    v17._countAndFlagsBits = sub_10006A888();
    String.append(_:)(v17);

    v16 = v25;
    v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v19 = v10;
  }

  sub_1006CC3F0(v19, v18);
  return v16;
}

uint64_t sub_1006C8B58(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FAC08);
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v52 = &v45 - v3;
  v4 = type metadata accessor for UUID();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v51 = sub_1005B981C(&qword_1019FAC10);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v45 - v6;
  v59 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v59);
  v58 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v48 = &v45 - v9;
  v47 = sub_1005B981C(&qword_1019FAC18);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v11 = &v45 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&qword_1019FAC20);
  v63 = *(v18 - 8);
  v64 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  sub_100020E58(a1, a1[3]);
  sub_1006CE17C();
  v62 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1006CC38C(v60, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = v48;
      sub_100025390(v17, v48, type metadata accessor for CRLBoardIdentifier);
      LOBYTE(v65) = 1;
      sub_1006CE224();
      v23 = v49;
      v24 = v64;
      v25 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1006CC074(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
      v26 = v51;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v50 + 8))(v23, v26);
      sub_1006CC3F0(v22, type metadata accessor for CRLBoardIdentifier);
      return (*(v63 + 8))(v25, v24);
    }

    else
    {
      v31 = sub_1005B981C(&unk_1019FB780);
      v32 = *(v31 + 48);
      v33 = &v17[*(v31 + 64)];
      v34 = *v33;
      v51 = *(v33 + 1);
      v60 = v34;
      v35 = v58;
      sub_100025390(v17, v58, type metadata accessor for CRLBoardIdentifier);
      v36 = v56;
      v37 = v57;
      v38 = v53;
      (*(v56 + 32))(v53, &v17[v32], v57);
      LOBYTE(v65) = 2;
      sub_1006CE1D0();
      v39 = v52;
      v40 = v64;
      v41 = v62;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v65) = 0;
      sub_1006CC074(&qword_1019F4780, type metadata accessor for CRLBoardIdentifier);
      v42 = v55;
      v43 = v61;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v61 = v43;
      if (v43)
      {
        (*(v54 + 8))(v39, v42);
        (*(v36 + 8))(v38, v37);
        sub_1006CC3F0(v35, type metadata accessor for CRLBoardIdentifier);
        return (*(v63 + 8))(v41, v40);
      }

      else
      {
        LOBYTE(v65) = 1;
        sub_1006CC074(&qword_1019F43C0, &type metadata accessor for UUID);
        v44 = v61;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        if (v44)
        {
          (*(v54 + 8))(v39, v42);
          (*(v36 + 8))(v38, v37);
          sub_1006CC3F0(v58, type metadata accessor for CRLBoardIdentifier);
          return (*(v63 + 8))(v41, v40);
        }

        else
        {
          v66 = v51;
          v65 = v60;
          v67 = 2;
          type metadata accessor for CGRect(0);
          sub_1006CC074(&qword_1019FAC28, type metadata accessor for CGRect);
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          (*(v54 + 8))(v39, v42);
          (*(v36 + 8))(v38, v37);
          sub_1006CC3F0(v58, type metadata accessor for CRLBoardIdentifier);
          return (*(v63 + 8))(v41, v40);
        }
      }
    }
  }

  else
  {
    sub_100025390(v17, v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    LOBYTE(v65) = 0;
    sub_1006CE278();
    v28 = v64;
    v29 = v62;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_1006CC074(&qword_1019FAC30, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v30 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v46 + 8))(v11, v30);
    sub_1006CC3F0(v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return (*(v63 + 8))(v29, v28);
  }
}

uint64_t sub_1006C950C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1005B981C(&qword_1019FABB8);
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  __chkstk_darwin(v3);
  v65 = &v53 - v5;
  v6 = sub_1005B981C(&qword_1019FABC0);
  v7 = *(v6 - 8);
  v58 = v6;
  v59 = v7;
  __chkstk_darwin(v6);
  v64 = &v53 - v8;
  v9 = sub_1005B981C(&qword_1019FABC8);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  __chkstk_darwin(v9);
  v62 = &v53 - v11;
  v63 = sub_1005B981C(&qword_1019FABD0);
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v13 = &v53 - v12;
  v14 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  __chkstk_darwin(v20);
  v22 = &v53 - v21;
  __chkstk_darwin(v23);
  v25 = &v53 - v24;
  v26 = a1[3];
  v69 = a1;
  sub_100020E58(a1, v26);
  sub_1006CE17C();
  v27 = v68;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v53 = v19;
    v54 = v22;
    v29 = v62;
    v28 = v63;
    v55 = v16;
    v31 = v64;
    v30 = v65;
    v68 = v25;
    v32 = v14;
    v33 = v67;
    v34 = KeyedDecodingContainer.allKeys.getter();
    v35 = (2 * *(v34 + 16)) | 1;
    v70 = v34;
    v71 = v34 + 32;
    v72 = 0;
    v73 = v35;
    v36 = sub_10074DC2C();
    if (v36 == 3 || v72 != v73 >> 1)
    {
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      sub_1005B981C(&qword_101A0AEE0);
      *v42 = v32;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
      swift_willThrow();
      (*(v66 + 8))(v13, v28);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36)
      {
        if (v36 == 1)
        {
          v74 = 1;
          sub_1006CE224();
          v37 = v31;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for CRLBoardIdentifier(0);
          sub_1006CC074(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
          v38 = v58;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v39 = v66;
          (*(v59 + 8))(v37, v38);
          (*(v39 + 8))(v13, v28);
          swift_unknownObjectRelease();
          v48 = v53;
          swift_storeEnumTagMultiPayload();
          v49 = v48;
          v33 = v67;
          v50 = v68;
        }

        else
        {
          v74 = 2;
          sub_1006CE1D0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for CRLBoardIdentifier(0);
          v74 = 0;
          sub_1006CC074(&qword_1019F4758, type metadata accessor for CRLBoardIdentifier);
          v45 = v60;
          v46 = v30;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v64 = v13;
          v62 = sub_1005B981C(&unk_1019FB780);
          v51 = *(v62 + 12);
          type metadata accessor for UUID();
          v74 = 1;
          sub_1006CC074(&qword_1019F43A8, &type metadata accessor for UUID);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v59 = v51;
          type metadata accessor for CGRect(0);
          v74 = 2;
          sub_1006CC074(&qword_1019FABE8, type metadata accessor for CGRect);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v61 + 8))(v46, v45);
          (*(v66 + 8))(v64, v28);
          swift_unknownObjectRelease();
          v52 = v55;
          swift_storeEnumTagMultiPayload();
          v49 = v52;
          v50 = v68;
        }
      }

      else
      {
        v74 = 0;
        sub_1006CE278();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v50 = v68;
        type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
        sub_1006CC074(&qword_1019FAC00, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v43 = v56;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v57 + 8))(v29, v43);
        (*(v66 + 8))(v13, v28);
        swift_unknownObjectRelease();
        v44 = v54;
        swift_storeEnumTagMultiPayload();
        v49 = v44;
      }

      sub_100025390(v49, v50, type metadata accessor for CRLPreviewImages.Item);
      sub_100025390(v50, v33, type metadata accessor for CRLPreviewImages.Item);
    }
  }

  return sub_100005070(v69);
}

uint64_t sub_1006C9F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1006CA00C(uint64_t a1)
{
  v2 = sub_1006CE224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006CA048(uint64_t a1)
{
  v2 = sub_1006CE224();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006CA084()
{
  v1 = 0x6472616F62;
  if (*v0 != 1)
  {
    v1 = 0x656E656373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265746C6966;
  }
}

uint64_t sub_1006CA0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006CD87C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006CA0FC(uint64_t a1)
{
  v2 = sub_1006CE17C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006CA138(uint64_t a1)
{
  v2 = sub_1006CE17C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006CA174(uint64_t a1)
{
  v2 = sub_1006CE278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006CA1B0(uint64_t a1)
{
  v2 = sub_1006CE278();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006CA1EC()
{
  v1 = 0x4449656E656373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6564496472616F62;
  }
}

uint64_t sub_1006CA258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1006CD988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1006CA280(uint64_t a1)
{
  v2 = sub_1006CE1D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006CA2BC(uint64_t a1)
{
  v2 = sub_1006CE1D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1006CA328()
{
  Hasher.init(_seed:)();
  sub_1006C83D0();
  return Hasher._finalize()();
}

Swift::Int sub_1006CA36C()
{
  Hasher.init(_seed:)();
  sub_1006C83D0();
  return Hasher._finalize()();
}

BOOL sub_1006CA3AC(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(a1, v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v6 = v17;
      v7 = OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item;
      sub_1006CC38C(&v17[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item], v5);
      LOBYTE(v7) = sub_1006CC4F0(v1 + v7, v5);
      sub_1006CC3F0(v5, type metadata accessor for CRLPreviewImages.Item);
      if (v7)
      {
        v8 = &v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
        if (*(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16) == 1)
        {
          v9 = &dbl_1014743A8[*(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass)];
          v10 = *v9;
          v11 = *v8;
          if (!v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16])
          {
            goto LABEL_6;
          }
        }

        else
        {
          v9 = (v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8);
          v10 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
          v11 = *v8;
          if (!v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16])
          {
LABEL_6:
            v12 = v8[1];
            if (v10 != v11)
            {
              goto LABEL_13;
            }

LABEL_11:
            if (*v9 == v12)
            {
              v13 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
              v14 = *&v6[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale];

              return v13 == v14;
            }

            goto LABEL_13;
          }
        }

        v12 = dbl_1014743A8[*&v11];
        if (v10 == v12)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
    }
  }

  else
  {
    sub_10000CAAC(v18, &unk_1019F4D00);
  }

  return 0;
}

Swift::Int sub_1006CA630()
{
  Hasher.init()();
  sub_1006C83D0();
  sub_1006C742C(v3, *(v0 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass), *(v0 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8), *(v0 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16));
  v1 = *(v0 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  return Hasher.finalize()();
}

uint64_t sub_1006CA724()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006CC38C(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025390(v14, v8, type metadata accessor for CRLBoardIdentifier);
      v71 = UUID.uuidString.getter();
      v72 = v16;

      v17._countAndFlagsBits = 58;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);

      v18 = v71;
      v19 = v72;
      v20 = &v8[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v21 = *v20;
      v22 = v20[1];
      v71 = v18;
      v72 = v19;

      v23._countAndFlagsBits = v21;
      v23._object = v22;
      String.append(_:)(v23);

      v69 = 58;
      v70 = 0xE100000000000000;
      v67 = 35;
      v68 = 0xE100000000000000;
      sub_100017CD8();
      v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v26 = v25;
    }

    else
    {
      v30 = *(sub_1005B981C(&unk_1019FB780) + 48);
      sub_100025390(v14, v8, type metadata accessor for CRLBoardIdentifier);
      (*(v3 + 32))(v5, &v14[v30], v2);
      v71 = UUID.uuidString.getter();
      v72 = v31;

      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);

      v33 = v71;
      v34 = v72;
      v35 = &v8[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v36 = *v35;
      v37 = v35[1];
      v71 = v33;
      v72 = v34;

      v38._countAndFlagsBits = v36;
      v38._object = v37;
      String.append(_:)(v38);

      v69 = 58;
      v70 = 0xE100000000000000;
      v67 = 35;
      v68 = 0xE100000000000000;
      sub_100017CD8();
      v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v41 = v40;

      v71 = v39;
      v72 = v41;

      v42._countAndFlagsBits = 35;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);

      v44 = v71;
      v43 = v72;
      v45 = UUID.uuidString.getter();
      v47 = v46;
      v71 = v44;
      v72 = v43;

      v48._countAndFlagsBits = v45;
      v48._object = v47;
      String.append(_:)(v48);

      v24 = v71;
      v26 = v72;
      (*(v3 + 8))(v5, v2);
    }

    v28 = type metadata accessor for CRLBoardIdentifier;
    v29 = v8;
  }

  else
  {
    sub_100025390(v14, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v24 = sub_10006A888();
    v26 = v27;
    v28 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v29 = v11;
  }

  sub_1006CC3F0(v29, v28);
  v49 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
  v50 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 8);
  v51 = *(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16);
  sub_1004C3204(*(v1 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale), 0.01);
  v71 = v24;
  v72 = v26;

  v52._countAndFlagsBits = 95;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);

  v54 = v71;
  v53 = v72;
  v55 = sub_1006C72DC(v49, v50, v51);
  v57 = v56;
  v71 = v54;
  v72 = v53;

  v58._countAndFlagsBits = v55;
  v58._object = v57;
  String.append(_:)(v58);

  v59._countAndFlagsBits = 95;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);

  v61 = v71;
  v60 = v72;
  v62 = Double.description.getter();
  v64 = v63;
  v71 = v61;
  v72 = v60;

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  return v71;
}

_BYTE *sub_1006CAD64@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1006CDAB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1006CADB4(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_1019FAAF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006CDE34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  type metadata accessor for CRLPreviewImages.Item(0);
  sub_1006CC074(&qword_1019FAA30, type metadata accessor for CRLPreviewImages.Item);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass + 16);
    v13 = *(v3 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass);
    v14 = v9;
    v12 = 1;
    sub_1006CC1A0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale);
    v12 = 2;
    sub_1006CDEDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006CAFDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49656C6261646F63;
  }

  else
  {
    v3 = 0x654B70756B6F6F6CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xEC0000006567616DLL;
  }

  if (*a2)
  {
    v5 = 0x49656C6261646F63;
  }

  else
  {
    v5 = 0x654B70756B6F6F6CLL;
  }

  if (*a2)
  {
    v6 = 0xEC0000006567616DLL;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1006CB090()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CB120()
{
  String.hash(into:)();
}

Swift::Int sub_1006CB19C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006CB228@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_101874120, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1006CB288(uint64_t *a1@<X8>)
{
  v2 = 0x654B70756B6F6F6CLL;
  if (*v1)
  {
    v2 = 0x49656C6261646F63;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xEC0000006567616DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1006CB2D4()
{
  if (*v0)
  {
    return 0x49656C6261646F63;
  }

  else
  {
    return 0x654B70756B6F6F6CLL;
  }
}

uint64_t sub_1006CB31C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_101874120, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1006CB380(uint64_t a1)
{
  v2 = sub_1006CF168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006CB3BC(uint64_t a1)
{
  v2 = sub_1006CF168();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1006CB3F8(void *a1, void *a2, void *a3)
{
  v6 = sub_1005B981C(&qword_1019FADE8);
  v13 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  sub_100020E58(a1, a1[3]);
  sub_1006CF168();
  v9 = a3;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  type metadata accessor for CRLPreviewImages.LookupKey(0);
  sub_1006CC074(&qword_1019FAAD0, type metadata accessor for CRLPreviewImages.LookupKey);
  v10 = a2;
  v11 = v12[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v11)
  {

    (*(v13 + 8))(v8, v6);
  }

  else
  {
    v15 = v9;
    v14 = 1;
    sub_1006CF210();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v13 + 8))(v8, v6);
  }
}

uint64_t sub_1006CB614@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1006CEF4C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1006CB6CC()
{
  result = type metadata accessor for CRLPreviewImages.Item(319);
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

uint64_t sub_1006CB774()
{
  v0 = sub_1005B981C(&unk_1019F33C0);
  sub_10061655C(v0, qword_101AD61A8);
  v1 = sub_1005EB3DC(v0, qword_101AD61A8);
  return sub_1006CB7CC(v1);
}

uint64_t sub_1006CB7CC@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v46 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v13 = sub_100017A38();
  if (!v13)
  {
    __break(1u);
  }

  v14 = v13;
  v15 = [v12 containerURLForSecurityApplicationGroupIdentifier:v13];

  if (v15)
  {
    v45 = a1;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v46 + 32);
    v16(v10, v7, v2);
    URL.appendingPathComponent(_:isDirectory:)();
    v17 = [v11 defaultManager];
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = [v17 crl_directoryExistsAt:v19];

    if (v21)
    {
      (*(v46 + 8))(v10, v2);
LABEL_12:
      v33 = v45;
      v16(v45, v4, v2);
      return (*(v46 + 56))(v33, 0, 1, v2);
    }

    v26 = [v11 defaultManager];
    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    v50 = 0;
    v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:0 attributes:0 error:&v50];

    if (v30)
    {
      v31 = *(v46 + 8);
      v32 = v50;
      v31(v10, v2);
      goto LABEL_12;
    }

    v34 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v35 = *(v46 + 8);
    v35(v4, v2);
    v35(v10, v2);
    if (qword_1019F2138 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlBoardPreviewImageCache;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v38 = Error.publicDescription.getter(v48, v49);
    v40 = v39;
    *(inited + 56) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 64) = v41;
    *(inited + 32) = v38;
    *(inited + 40) = v40;
    swift_getErrorValue();
    v42 = Error.fullDescription.getter(v47);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v41;
    *(inited + 72) = v42;
    *(inited + 80) = v43;
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v44, "Error fetching shared preview image directory. %{public}@ <%@>", 62, 2, inited);

    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    return (*(v46 + 56))(v45, 1, 1, v2);
  }

  else
  {
    if (qword_1019F2148 != -1)
    {
      swift_once();
    }

    v22 = static OS_os_log.crlSharingExtension;
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v22, &_mh_execute_header, v23, "Unable to resolve container URL", 31, 2, _swiftEmptyArrayStorage);
    v24 = *(v46 + 56);

    return v24(a1, 1, 1, v2);
  }
}

uint64_t getEnumTagSinglePayload for CRLSerializableObjectType.RawPersistenceValues(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CRLPreviewImages.ImageSizeClass(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1006CBE00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006CBE1C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1006CBE58(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for CRLMiniFormatterStrokeDataProvider.StrokeChangingState(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1006CBE8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1006CBEE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1006CBF44(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_1006CBFC8(void *a1)
{
  a1[1] = sub_1006CC074(&qword_1019FAA28, type metadata accessor for CRLPreviewImages.Item);
  a1[2] = sub_1006CC074(&qword_1019FAA30, type metadata accessor for CRLPreviewImages.Item);
  result = sub_1006CC074(&qword_1019FAA38, type metadata accessor for CRLPreviewImages.Item);
  a1[3] = result;
  return result;
}

uint64_t sub_1006CC074(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006CC0C0()
{
  result = qword_1019FAA40;
  if (!qword_1019FAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAA40);
  }

  return result;
}

unint64_t sub_1006CC114(void *a1)
{
  a1[1] = sub_1006CC14C();
  a1[2] = sub_1006CC1A0();
  result = sub_1006CC1F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1006CC14C()
{
  result = qword_1019FB6E0;
  if (!qword_1019FB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB6E0);
  }

  return result;
}

unint64_t sub_1006CC1A0()
{
  result = qword_1019FAA48;
  if (!qword_1019FAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAA48);
  }

  return result;
}

unint64_t sub_1006CC1F4()
{
  result = qword_1019FB6F0;
  if (!qword_1019FB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB6F0);
  }

  return result;
}

unint64_t sub_1006CC24C()
{
  result = qword_1019FAA58;
  if (!qword_1019FAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAA58);
  }

  return result;
}

uint64_t sub_1006CC2E8(uint64_t a1)
{
  *(a1 + 8) = sub_1006CC074(&qword_1019FAAC8, type metadata accessor for CRLPreviewImages.LookupKey);
  result = sub_1006CC074(&qword_1019FAAD0, type metadata accessor for CRLPreviewImages.LookupKey);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1006CC38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLPreviewImages.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006CC3F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1006CC450(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    v6 = dbl_1014743A8[a1];
    v7 = v6;
    if ((a6 & 1) == 0)
    {
LABEL_3:
      v8 = *&a4;
      return v7 == *&a5 && v6 == v8;
    }
  }

  else
  {
    v6 = *&a1;
    v7 = *&a2;
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v8 = dbl_1014743A8[a4];
  *&a5 = v8;
  return v7 == *&a5 && v6 == v8;
}

BOOL sub_1006CC49C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  if (a3)
  {
    v8 = dbl_1014743A8[a1];
    v9 = v8;
    if ((a6 & 1) == 0)
    {
LABEL_3:
      v10 = *&a4;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *&a1;
    v9 = *&a2;
    if ((a6 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = dbl_1014743A8[a4];
  *&a5 = v10;
LABEL_6:
  v12 = v8 == v10;
  if (v9 != *&a5)
  {
    v12 = 0;
  }

  return a7 == a8 && v12;
}

BOOL sub_1006CC4F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v74 = *(v4 - 8);
  v75 = v4;
  v5 = __chkstk_darwin(v4);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v72 = &v70 - v7;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v70 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLPreviewImages.Item(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  __chkstk_darwin(v20);
  v24 = &v70 - v23;
  v25 = sub_1005B981C(&qword_1019F3468);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = &v70 - v27;
  v29 = &v70 + *(v26 + 56) - v27;
  sub_1006CC38C(a1, &v70 - v27);
  sub_1006CC38C(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1006CC38C(v28, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_100025390(v29, v12, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v31 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
          v32 = *&v22[v31];
          v33 = *&v22[v31 + 8];
          v34 = &v12[v31];
          if (v32 == *v34 && v33 == *(v34 + 1))
          {
            sub_1006CC3F0(v12, type metadata accessor for CRLBoardIdentifier);
            sub_1006CC3F0(v22, type metadata accessor for CRLBoardIdentifier);
LABEL_23:
            sub_1006CC3F0(v28, type metadata accessor for CRLPreviewImages.Item);
            return 1;
          }

          v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1006CC3F0(v12, type metadata accessor for CRLBoardIdentifier);
          sub_1006CC3F0(v22, type metadata accessor for CRLBoardIdentifier);
          if (v63)
          {
            goto LABEL_23;
          }

          goto LABEL_29;
        }

        sub_1006CC3F0(v12, type metadata accessor for CRLBoardIdentifier);
        v62 = v22;
LABEL_28:
        sub_1006CC3F0(v62, type metadata accessor for CRLBoardIdentifier);
LABEL_29:
        sub_1006CC3F0(v28, type metadata accessor for CRLPreviewImages.Item);
        return 0;
      }

      v35 = type metadata accessor for CRLBoardIdentifier;
      v36 = v22;
LABEL_17:
      sub_1006CC3F0(v36, v35);
      sub_10000CAAC(v28, &qword_1019F3468);
      return 0;
    }

    sub_1006CC38C(v28, v19);
    v37 = sub_1005B981C(&unk_1019FB780);
    v38 = *(v37 + 48);
    v39 = *(v37 + 64);
    v40 = *&v19[v39];
    v41 = *&v19[v39 + 8];
    v42 = *&v19[v39 + 16];
    v43 = *&v19[v39 + 24];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v74 + 8))(&v19[v38], v75);
      v35 = type metadata accessor for CRLBoardIdentifier;
      v36 = v19;
      goto LABEL_17;
    }

    v44 = *&v29[v39];
    v45 = *&v29[v39 + 8];
    v46 = *&v29[v39 + 16];
    v47 = *&v29[v39 + 24];
    v48 = v73;
    sub_100025390(v29, v73, type metadata accessor for CRLBoardIdentifier);
    v50 = v74;
    v49 = v75;
    v51 = *(v74 + 32);
    v52 = v72;
    v51(v72, &v19[v38], v75);
    v53 = &v29[v38];
    v54 = v71;
    v51(v71, v53, v49);
    if (static UUID.== infix(_:_:)())
    {
      v55 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
      v56 = *&v19[v55];
      v57 = *&v19[v55 + 8];
      v58 = (v48 + v55);
      if (v56 == *v58 && v57 == v58[1])
      {
        sub_1006CC3F0(v19, type metadata accessor for CRLBoardIdentifier);
      }

      else
      {
        v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1006CC3F0(v19, type metadata accessor for CRLBoardIdentifier);
        if ((v64 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (static UUID.== infix(_:_:)())
      {
        v76.origin.x = v40;
        v76.origin.y = v41;
        v76.size.width = v42;
        v76.size.height = v43;
        v77.origin.x = v44;
        v77.origin.y = v45;
        v77.size.width = v46;
        v77.size.height = v47;
        v65 = CGRectEqualToRect(v76, v77);
        v66 = v54;
        v59 = v65;
        v67 = *(v50 + 8);
        v67(v66, v49);
        v67(v52, v49);
        v61 = type metadata accessor for CRLBoardIdentifier;
        v60 = v48;
        goto LABEL_19;
      }
    }

    else
    {
      sub_1006CC3F0(v19, type metadata accessor for CRLBoardIdentifier);
    }

LABEL_27:
    v68 = *(v50 + 8);
    v68(v54, v49);
    v68(v52, v49);
    v62 = v48;
    goto LABEL_28;
  }

  sub_1006CC38C(v28, v24);
  if (swift_getEnumCaseMultiPayload())
  {
    v35 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v36 = v24;
    goto LABEL_17;
  }

  sub_100025390(v29, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v59 = sub_100068604(v24, v15);
  sub_1006CC3F0(v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v60 = v24;
  v61 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_19:
  sub_1006CC3F0(v60, v61);
  sub_1006CC3F0(v28, type metadata accessor for CRLPreviewImages.Item);
  return v59;
}

unint64_t sub_1006CCC60()
{
  result = qword_1019FB860;
  if (!qword_1019FB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FB860);
  }

  return result;
}

void sub_1006CCCB4(void *a1, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    sub_1006CCCD4(a1, a2 & 1);
  }

  else if (!(a2 >> 6))
  {
  }
}

void sub_1006CCCD4(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1006CCCE0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010155E860 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010155E840 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010155E820 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010155E800 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010155E7E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1006CCEDC(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FAB00);
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  __chkstk_darwin(v2);
  v52 = &v38 - v4;
  v5 = sub_1005B981C(&qword_1019FAB08);
  v6 = *(v5 - 8);
  v48 = v5;
  v49 = v6;
  __chkstk_darwin(v5);
  v55 = &v38 - v7;
  v44 = sub_1005B981C(&qword_1019FAB10);
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v54 = &v38 - v8;
  v9 = sub_1005B981C(&qword_1019FAB18);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v53 = &v38 - v10;
  v11 = sub_1005B981C(&qword_1019FAB20);
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1005B981C(&qword_1019FAB28);
  v41 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_1005B981C(&qword_1019FAB30);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - v19;
  v21 = a1[3];
  v62 = a1;
  sub_100020E58(a1, v21);
  sub_1006CDF30();
  v22 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v40 = v13;
    v24 = v53;
    v25 = v54;
    v26 = v55;
    v56 = v18;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_10074DC28();
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v32 = type metadata accessor for DecodingError();
      swift_allocError();
      v21 = v33;
      sub_1005B981C(&qword_101A0AEE0);
      *v21 = &type metadata for CRLPreviewImages.ImageSizeClass;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v32 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v32);
      swift_willThrow();
      (*(v56 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else if (v29 > 2u)
    {
      v35 = v56;
      if (v29 == 3)
      {
        LOBYTE(v57) = 3;
        sub_1006CE02C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v47 + 8))(v25, v44);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 3;
      }

      else if (v29 == 4)
      {
        LOBYTE(v57) = 4;
        sub_1006CDFD8();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v49 + 8))(v26, v48);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 4;
      }

      else
      {
        LOBYTE(v57) = 5;
        sub_1006CDF84();
        v36 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for CGSize(0);
        sub_1006CC074(&qword_1019FAB48, type metadata accessor for CGSize);
        v37 = v50;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v51 + 8))(v36, v37);
        (*(v35 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = v57;
      }
    }

    else
    {
      v30 = v56;
      if (v29)
      {
        if (v29 == 1)
        {
          LOBYTE(v57) = 1;
          sub_1006CE0D4();
          v31 = v40;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v42 + 8))(v31, v43);
          (*(v30 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v21 = 1;
        }

        else
        {
          LOBYTE(v57) = 2;
          sub_1006CE080();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v45 + 8))(v24, v46);
          (*(v30 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v21 = 2;
        }
      }

      else
      {
        LOBYTE(v57) = 0;
        sub_1006CE128();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v41 + 8))(v23, v39);
        (*(v30 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v21 = 0;
      }
    }
  }

  sub_100005070(v62);
  return v21;
}

uint64_t sub_1006CD87C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746C6966 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000)
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

uint64_t sub_1006CD988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656E656373 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010155EA10 == a2)
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

_BYTE *sub_1006CDAB0(void *a1)
{
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  __chkstk_darwin(v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v22[-v7];
  v27 = sub_1005B981C(&qword_1019FAAD8);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v22[-v9];
  sub_100020E58(a1, a1[3]);
  sub_1006CDE34();
  v26 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005070(a1);
  }

  else
  {
    v24 = a1;
    v11 = v25;
    LOBYTE(v31) = 0;
    sub_1006CC074(&qword_1019FAA28, type metadata accessor for CRLPreviewImages.Item);
    v12 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v30) = 1;
    sub_1006CC14C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = 2;
    sub_1006CDE88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v30;
    v15 = v5;
    sub_1006CC38C(v8, v5);
    v16 = v31;
    v17 = v32;
    v23 = v33;
    v18 = type metadata accessor for CRLPreviewImages.LookupKey(0);
    v19 = v11;
    v20 = objc_allocWithZone(v18);
    sub_1006CC38C(v15, &v20[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_item]);
    v21 = &v20[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_sizeClass];
    *v21 = v16;
    *(v21 + 1) = v17;
    v21[16] = v23;
    *&v20[OBJC_IVAR____TtCC8Freeform16CRLPreviewImages9LookupKey_contentsScale] = v14;
    v28.receiver = v20;
    v28.super_class = v18;
    v5 = objc_msgSendSuper2(&v28, "init");
    sub_1006CC3F0(v15, type metadata accessor for CRLPreviewImages.Item);
    sub_1006CC3F0(v8, type metadata accessor for CRLPreviewImages.Item);
    (*(v19 + 8))(v12, v27);
    sub_100005070(v24);
  }

  return v5;
}

unint64_t sub_1006CDE34()
{
  result = qword_1019FAAE0;
  if (!qword_1019FAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAAE0);
  }

  return result;
}

unint64_t sub_1006CDE88()
{
  result = qword_1019FAAE8;
  if (!qword_1019FAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAAE8);
  }

  return result;
}

unint64_t sub_1006CDEDC()
{
  result = qword_1019FAAF8;
  if (!qword_1019FAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAAF8);
  }

  return result;
}

unint64_t sub_1006CDF30()
{
  result = qword_1019FAB38;
  if (!qword_1019FAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB38);
  }

  return result;
}

unint64_t sub_1006CDF84()
{
  result = qword_1019FAB40;
  if (!qword_1019FAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB40);
  }

  return result;
}

unint64_t sub_1006CDFD8()
{
  result = qword_1019FAB50;
  if (!qword_1019FAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB50);
  }

  return result;
}

unint64_t sub_1006CE02C()
{
  result = qword_1019FAB58;
  if (!qword_1019FAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB58);
  }

  return result;
}

unint64_t sub_1006CE080()
{
  result = qword_1019FAB60;
  if (!qword_1019FAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB60);
  }

  return result;
}

unint64_t sub_1006CE0D4()
{
  result = qword_1019FAB68;
  if (!qword_1019FAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB68);
  }

  return result;
}

unint64_t sub_1006CE128()
{
  result = qword_1019FAB70;
  if (!qword_1019FAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAB70);
  }

  return result;
}

unint64_t sub_1006CE17C()
{
  result = qword_1019FABD8;
  if (!qword_1019FABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FABD8);
  }

  return result;
}

unint64_t sub_1006CE1D0()
{
  result = qword_1019FABE0;
  if (!qword_1019FABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FABE0);
  }

  return result;
}

unint64_t sub_1006CE224()
{
  result = qword_1019FABF0;
  if (!qword_1019FABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FABF0);
  }

  return result;
}

unint64_t sub_1006CE278()
{
  result = qword_1019FABF8;
  if (!qword_1019FABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FABF8);
  }

  return result;
}

id sub_1006CE2CC(id result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    return sub_1006CE2EC(result, a2 & 1);
  }

  if (!(a2 >> 6))
  {
  }

  return result;
}

id sub_1006CE2EC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

unint64_t sub_1006CE2F8()
{
  result = qword_1019FAC40;
  if (!qword_1019FAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAC40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DrawableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DrawableType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006CE54C()
{
  result = type metadata accessor for CRLPreviewImages.Item(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1006CE5B0()
{
  result = qword_1019FACF0;
  if (!qword_1019FACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FACF0);
  }

  return result;
}

unint64_t sub_1006CE608()
{
  result = qword_1019FACF8;
  if (!qword_1019FACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FACF8);
  }

  return result;
}

unint64_t sub_1006CE660()
{
  result = qword_1019FAD00;
  if (!qword_1019FAD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD00);
  }

  return result;
}

unint64_t sub_1006CE6B8()
{
  result = qword_1019FAD08;
  if (!qword_1019FAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD08);
  }

  return result;
}

unint64_t sub_1006CE710()
{
  result = qword_1019FAD10;
  if (!qword_1019FAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD10);
  }

  return result;
}

unint64_t sub_1006CE768()
{
  result = qword_1019FAD18;
  if (!qword_1019FAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD18);
  }

  return result;
}

unint64_t sub_1006CE7C0()
{
  result = qword_1019FAD20;
  if (!qword_1019FAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD20);
  }

  return result;
}

unint64_t sub_1006CE818()
{
  result = qword_1019FAD28;
  if (!qword_1019FAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD28);
  }

  return result;
}

unint64_t sub_1006CE870()
{
  result = qword_1019FAD30;
  if (!qword_1019FAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD30);
  }

  return result;
}

unint64_t sub_1006CE8C8()
{
  result = qword_1019FAD38;
  if (!qword_1019FAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD38);
  }

  return result;
}

unint64_t sub_1006CE920()
{
  result = qword_1019FAD40;
  if (!qword_1019FAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD40);
  }

  return result;
}

unint64_t sub_1006CE978()
{
  result = qword_1019FAD48;
  if (!qword_1019FAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD48);
  }

  return result;
}

unint64_t sub_1006CE9D0()
{
  result = qword_1019FAD50;
  if (!qword_1019FAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD50);
  }

  return result;
}

unint64_t sub_1006CEA28()
{
  result = qword_1019FAD58;
  if (!qword_1019FAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD58);
  }

  return result;
}

unint64_t sub_1006CEA80()
{
  result = qword_1019FAD60;
  if (!qword_1019FAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD60);
  }

  return result;
}

unint64_t sub_1006CEAD8()
{
  result = qword_1019FAD68;
  if (!qword_1019FAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD68);
  }

  return result;
}

unint64_t sub_1006CEB30()
{
  result = qword_1019FAD70;
  if (!qword_1019FAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD70);
  }

  return result;
}

unint64_t sub_1006CEB88()
{
  result = qword_1019FAD78;
  if (!qword_1019FAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD78);
  }

  return result;
}

unint64_t sub_1006CEBE0()
{
  result = qword_1019FAD80;
  if (!qword_1019FAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD80);
  }

  return result;
}

unint64_t sub_1006CEC38()
{
  result = qword_1019FAD88;
  if (!qword_1019FAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD88);
  }

  return result;
}

unint64_t sub_1006CEC90()
{
  result = qword_1019FAD90;
  if (!qword_1019FAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD90);
  }

  return result;
}

unint64_t sub_1006CECE8()
{
  result = qword_1019FAD98;
  if (!qword_1019FAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAD98);
  }

  return result;
}

unint64_t sub_1006CED40()
{
  result = qword_1019FADA0;
  if (!qword_1019FADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADA0);
  }

  return result;
}

unint64_t sub_1006CED98()
{
  result = qword_1019FADA8;
  if (!qword_1019FADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADA8);
  }

  return result;
}

unint64_t sub_1006CEDF0()
{
  result = qword_1019FADB0;
  if (!qword_1019FADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADB0);
  }

  return result;
}

unint64_t sub_1006CEE48()
{
  result = qword_1019FADB8;
  if (!qword_1019FADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADB8);
  }

  return result;
}

unint64_t sub_1006CEEA0()
{
  result = qword_1019FADC0;
  if (!qword_1019FADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADC0);
  }

  return result;
}

unint64_t sub_1006CEEF8()
{
  result = qword_1019FADC8;
  if (!qword_1019FADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADC8);
  }

  return result;
}

uint64_t sub_1006CEF4C(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FADD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1006CF168();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  type metadata accessor for CRLPreviewImages.LookupKey(0);
  HIBYTE(v8) = 0;
  sub_1006CC074(&qword_1019FAAC8, type metadata accessor for CRLPreviewImages.LookupKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  HIBYTE(v8) = 1;
  sub_1006CF1BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100005070(a1);
  return v7;
}

unint64_t sub_1006CF168()
{
  result = qword_1019FADD8;
  if (!qword_1019FADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADD8);
  }

  return result;
}

unint64_t sub_1006CF1BC()
{
  result = qword_1019FADE0;
  if (!qword_1019FADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADE0);
  }

  return result;
}

unint64_t sub_1006CF210()
{
  result = qword_1019FADF0;
  if (!qword_1019FADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADF0);
  }

  return result;
}

unint64_t sub_1006CF278()
{
  result = qword_1019FADF8;
  if (!qword_1019FADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FADF8);
  }

  return result;
}

unint64_t sub_1006CF2D0()
{
  result = qword_1019FAE00;
  if (!qword_1019FAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAE00);
  }

  return result;
}

unint64_t sub_1006CF328()
{
  result = qword_1019FAE08;
  if (!qword_1019FAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FAE08);
  }

  return result;
}

uint64_t *sub_1006CF3CC(char a1)
{
  v2 = v1;
  v37 = *v2;
  v4 = v37;
  v5 = type metadata accessor for CRLFreehandDrawingShapeCRDTData(0);
  v6 = __chkstk_darwin(v5);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - v9;
  __chkstk_darwin(v8);
  v40 = &v35 - v11;
  v12 = sub_1005B981C(&unk_101A0F400);
  v13 = __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v38 = &v35 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v35 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v35 - v22;
  __chkstk_darwin(v21);
  v25 = &v35 - v24;
  v26 = *(v4 + 736);
  swift_beginAccess();
  if (a1)
  {
    sub_1006D0AA0(v2 + v26, v23);
    sub_10001A2F8(&qword_1019F7EF0, &unk_101A0F400);
    CRType.copy(renamingReferences:)();
    sub_1006D0B78(v23);
    v27 = *(*v2 + 888);
    swift_beginAccess();
    sub_1006D0B10(v2 + v27, v10, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
    sub_1006D080C(&qword_1019FB2E0, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
    CRType.copy(renamingReferences:)();
    sub_1006D0BE0(v10);
  }

  else
  {
    sub_1006D0AA0(v2 + v26, v25);
    v28 = *(*v2 + 888);
    swift_beginAccess();
    sub_1006D0B10(v2 + v28, v40, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  }

  sub_1006D0AA0(v25, v23);
  v29 = v40;
  sub_1006D0B10(v40, v10, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  v30 = *(v2 + 5);
  v41[0] = *(v2 + 3);
  v41[1] = v30;
  v42 = *(v2 + 56);
  v36 = v2[2];
  v31 = swift_allocObject();
  sub_1006D0AA0(v23, v20);
  v32 = v39;
  sub_1006D0B10(v10, v39, type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  sub_1006D0B10(v32, v31 + *(*v31 + 888), type metadata accessor for CRLFreehandDrawingShapeCRDTData);
  v33 = v38;
  sub_1006D0AA0(v20, v38);
  *(v31 + qword_101A27318) = 0;
  sub_1006D0AA0(v33, v15);
  sub_1006D0AA0(v15, v31 + *(*v31 + 736));
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_1006D0B78(v15);
  sub_1006D0B78(v33);
  sub_1006D0BE0(v32);
  sub_1006D0B78(v20);
  sub_1006D0BE0(v10);
  sub_1006D0B78(v23);
  sub_1006D0BE0(v29);
  sub_1006D0B78(v25);
  return sub_100747AF0(v41, v36);
}

uint64_t sub_1006CF8B4()
{
  sub_1006D0B78(v0 + *(*v0 + 736));
  v1 = *(*v0 + 744);
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1006D0BE0(v0 + *(*v0 + 888));

  return swift_deallocClassInstance();
}

void sub_1006CFA0C()
{
  type metadata accessor for CRLShapeItemCRDTData(319);
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1006CFA90()
{
  qword_101AD61D8 = 97;
  unk_101AD61E0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD61E8 = result;
  return result;
}

void (*sub_1006CFB04(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_1006D0B10(v1, v4, type metadata accessor for CRLShapeItemCRDTData.ShapeStyleData);
  return sub_100691D64;
}

uint64_t sub_1006CFBAC(uint64_t a1)
{
  v2 = sub_1006D080C(&qword_1019FB2E0, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRType.context.getter(a1, v2);
}

uint64_t sub_1006CFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRStruct_1.newRefs(from:)(a1, a2, v4);
}

uint64_t sub_1006CFC94()
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRStruct_1.actionUndoingDifference(from:)();
}

uint64_t sub_1006CFD18()
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRStruct_1.apply(_:)();
}

uint64_t sub_1006CFD94()
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRStruct_1.hasDelta(from:)();
}

uint64_t sub_1006CFE10()
{
  sub_1006D080C(&qword_1019FB308, type metadata accessor for CRLFreehandDrawingShapeCRDTData);

  return CRStruct_1.delta(_:from:)();
}