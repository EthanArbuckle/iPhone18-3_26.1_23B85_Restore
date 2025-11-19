id sub_1002BDD58(uint64_t a1, uint64_t a2, int a3)
{
  v34 = a3;
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v6 = v33 - v5;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v8 = v33 - v7;
  sub_100168088(&unk_100578C10);
  __chkstk_darwin();
  v10 = v33 - v9;
  sub_100168088(&qword_10057CF40);
  __chkstk_darwin();
  v12 = v33 - v11;
  v13 = type metadata accessor for FlowDestination();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v35 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of LegacyLockup.clickAction.getter();
  if (!v37)
  {
    sub_100009104(aBlock, &qword_100578C20);
    goto LABEL_8;
  }

  v33[2] = v3;
  sub_100168088(&unk_10057BB70);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_9;
  }

  dispatch thunk of FlowAction.destination.getter();

  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    (*(v14 + 32))(v35, v12, v13);
    type metadata accessor for CarPlayPageLoadCoordinator();
    BaseObjectGraph.inject<A>(_:)();
    v33[1] = aBlock[0];
    LegacyLockup.titleAccessibilityLabel.getter();
    v17 = v16;
    v33[0] = a1;
    sub_1002BE498();
    v19 = v18;
    if (v17)
    {
      v20 = String._bridgeToObjectiveC()();

      if (v19)
      {
LABEL_6:
        v21 = String._bridgeToObjectiveC()();

LABEL_13:
        v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v20 detailText:v21 image:0 accessoryImage:0 accessoryType:0];

        LegacyLockup.artwork.getter();
        CarPlayPageLoadCoordinator.loadImage(for:into:)(v10, v22);
        sub_100009104(v10, &unk_100578C10);
        v24 = sub_100168088(&unk_100575B10);
        v25 = *(v24 + 48);
        v26 = &v6[*(v24 + 64)];
        v27 = v35;
        FlowDestination.pageDestinationURL.getter();
        *&v6[v25] = FlowDestination.pageDestinationPage.getter();
        *v26 = LegacyLockup.adamId.getter();
        v26[8] = 0;
        v28 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
        swift_storeEnumTagMultiPayload();
        v29 = *(*(v28 - 8) + 56);
        v29(v6, 0, 1, v28);
        v29(v8, 1, 1, v28);
        v30 = type metadata accessor for CarPlayTemplateInfo(0);
        v31 = *(v30 + 20);
        sub_1001FBB44(v6, v8);
        v8[v31] = v34;
        (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
        sub_1001D2AD4(v8);
        v38 = sub_1002BE690;
        v39 = v33[0];
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100372F30;
        v37 = &unk_1004EA500;
        v32 = _Block_copy(aBlock);

        [v22 setHandler:v32];
        _Block_release(v32);

        (*(v14 + 8))(v27, v13);
        return v22;
      }
    }

    else
    {
      v20 = 0;
      if (v18)
      {
        goto LABEL_6;
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

LABEL_9:
  sub_100009104(v12, &qword_10057CF40);
  return 0;
}

uint64_t sub_1002BE344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_100409EB0, v12);
}

uint64_t sub_1002BE498()
{
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v0 = LegacyLockup.genreNames.getter();
  if (!v0)
  {
    goto LABEL_10;
  }

  if (!v0[2])
  {
    goto LABEL_9;
  }

  v2 = v0[4];
  v1 = v0[5];

  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
LABEL_9:

LABEL_10:
    v4 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  v4 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v17 = v4;
    v18 = *(v4 + 2);
    v19 = sub_100243134((v6 > 1), v5 + 1, 1, v17);
    v5 = v18;
    v4 = v19;
  }

  *(v4 + 2) = v7;
  v8 = &v4[16 * v5];
  *(v8 + 4) = v2;
  *(v8 + 5) = v1;
LABEL_11:
  if (LegacyLockup.isExplicit.getter())
  {
    v9 = ExplicitContentPresenter.symbol.getter();
    v11 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100243134(0, *(v4 + 2) + 1, 1, v4);
    }

    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_100243134((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v9;
    *(v14 + 5) = v11;
  }

  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0);
  sub_1001A4604();
  v15 = BidirectionalCollection<>.joined(separator:)();

  return v15;
}

uint64_t sub_1002BE698(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002BE76C()
{
  v1 = OBJC_IVAR____TtC8Podcasts22PreferencesWindowState__toolbarItemType;
  v2 = sub_100168088(&qword_10057CAD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PreferencesWindowState()
{
  result = qword_10057C9F8;
  if (!qword_10057C9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BE868()
{
  sub_1002BE8F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002BE8F8()
{
  if (!qword_10057CA08)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10057CA08);
    }
  }
}

unint64_t sub_1002BE95C()
{
  result = qword_10057CAB8;
  if (!qword_10057CAB8)
  {
    sub_100168310(&qword_10057CAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057CAB8);
  }

  return result;
}

uint64_t sub_1002BE9C0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PreferencesWindowState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002BEA00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B63616279616C70;
  if (v2 != 1)
  {
    v3 = 0x6465636E61766461;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C6172656E6567;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x6B63616279616C70;
  if (*a2 != 1)
  {
    v6 = 0x6465636E61766461;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6C6172656E6567;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1002BEB04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002BEBA8()
{
  String.hash(into:)();
}

Swift::Int sub_1002BEC38()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002BECD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002BEDDC(*a1);
  *a2 = result;
  return result;
}

void sub_1002BED08(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6B63616279616C70;
  if (v2 != 1)
  {
    v4 = 0x6465636E61766461;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6C6172656E6567;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1002BED7C()
{
  result = qword_10057CAC8;
  if (!qword_10057CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057CAC8);
  }

  return result;
}

unint64_t sub_1002BEDDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF0D0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002BEE28()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MoveOperationError(0);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002C0300(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = 0xD000000000000012;
      sub_1002C0364(v8);
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v17 = 0xD000000000000013;
      v18 = 0x800000010046D860;
      swift_getErrorValue();
      v13._countAndFlagsBits = Error.localizedDescription.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 46;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      return v17;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);

    v17 = 0xD00000000000002ALL;
    v18 = 0x800000010046D8A0;
    v11._countAndFlagsBits = URL.path.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v10 = v17;
    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

void sub_1002BF0A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source;
  v3 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination;
  v4 = type metadata accessor for URL();
  sub_1002C01FC(&qword_10057CB68, &type metadata accessor for URL);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v5 = *(v0 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v5)
    {
LABEL_5:
      sub_10003172C();
      return;
    }

    v103 = sub_100168088(&qword_100578BE0);
    v101 = 0;
    v102 = 0;

    v5(&v101);
    v6 = v5;
LABEL_4:
    sub_100037470(v6);
    sub_100004590(&v101);
    goto LABEL_5;
  }

  v100 = 0;
  if (!URL.isPackagedMedia()())
  {
    v22 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 fileExistsAtPath:v23 isDirectory:&v100];

    if (!v24 || (v100 & 1) != 0)
    {
      static os_log_type_t.error.getter();
      sub_100168088(&unk_100574670);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100400790;
      v26 = URL.path.getter();
      v28 = v27;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_100022C18();
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      os_log(_:dso:log:_:_:)();

      type metadata accessor for MoveOperationError(0);
      sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError);
      v29 = swift_allocError();
      (*(*(v4 - 8) + 16))(v30, v1 + v2, v4);
      swift_storeEnumTagMultiPayload();
      v31 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
      if (!v31)
      {
LABEL_27:
        v70 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
        v71 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
        swift_errorRetain();
        [v71 lock];
        *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v29;
        swift_errorRetain();

        [*(v1 + v70) unlock];

        sub_10003172C();
        goto LABEL_33;
      }

LABEL_26:
      v103 = sub_100168088(&qword_100578BE0);
      v101 = v29;
      v102 = 1;
      sub_100013CB4(v31);
      swift_errorRetain();
      v31(&v101);
      sub_100037470(v31);
      sub_100004590(&v101);
      goto LABEL_27;
    }
  }

  v7 = objc_opt_self();
  v8 = [v7 defaultManager];
  URL.path.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 fileExistsAtPath:v9];

  v99 = v2;
  v97 = v7;
  v98 = v3;
  if (v10)
  {
    static os_log_type_t.error.getter();
    sub_100168088(&unk_100574670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100400790;
    v12 = URL.path.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    v15 = sub_100022C18();
    *(v11 + 64) = v15;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:_:_:)();

    static os_log_type_t.default.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100400790;
    v17 = URL.path.getter();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v15;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    os_log(_:dso:log:_:_:)();

    v19 = [v7 defaultManager];
    URL.path.getter();
    v20 = String._bridgeToObjectiveC()();

    v101 = 0;
    LODWORD(v14) = [v19 removeItemAtPath:v20 error:&v101];

    if (v14)
    {
      v21 = v101;
    }

    else
    {
      v32 = v101;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static os_log_type_t.error.getter();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100400790;
      v34 = URL.path.getter();
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = v15;
      *(v33 + 32) = v34;
      *(v33 + 40) = v35;
      os_log(_:dso:log:_:_:)();
    }

    v2 = v99;
  }

  v36 = static os_log_type_t.default.getter();
  v37 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v38 = 136315394;
    v39 = URL.description.getter();
    v41 = sub_1000153E0(v39, v40, &v101);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = URL.description.getter();
    v44 = sub_1000153E0(v42, v43, &v101);

    *(v38 + 14) = v44;
    v2 = v99;
    _os_log_impl(&_mh_execute_header, v37, v36, "Copy file from %s to destination %s.", v38, 0x16u);
    swift_arrayDestroy();
  }

  v45 = sub_100173980();
  if (v46)
  {
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v101 = v65;
      *v64 = 136446210;
      v66 = URL.description.getter();
      v68 = sub_1000153E0(v66, v67, &v101);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v37, v63, "Failed to copy file to destination %{public}s", v64, 0xCu);
      sub_100004590(v65);
    }

    type metadata accessor for MoveOperationError(0);
    sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError);
    v29 = swift_allocError();
    (*(*(v4 - 8) + 16))(v69, v1 + v2, v4);
    swift_storeEnumTagMultiPayload();
    v31 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v81 = v45;
  static os_log_type_t.default.getter();
  sub_100168088(&unk_100574670);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_100400790;
  *(v82 + 56) = &type metadata for UInt64;
  *(v82 + 64) = &protocol witness table for UInt64;
  *(v82 + 32) = v81;
  os_log(_:dso:log:_:_:)();

  v83 = [v97 defaultManager];
  URL._bridgeToObjectiveC()(v84);
  v86 = v85;
  URL._bridgeToObjectiveC()(v98);
  v88 = v87;
  v101 = 0;
  v89 = [v83 moveItemAtURL:v86 toURL:v87 error:&v101];

  v90 = v101;
  if (v89)
  {
    v91 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
    if (!v91)
    {
      v95 = v101;
      goto LABEL_5;
    }

    v103 = sub_100168088(&qword_100578BE0);
    v101 = 0;
    v102 = 0;
    v92 = v90;
    sub_100013CB4(v91);
    v91(&v101);
    v6 = v91;
    goto LABEL_4;
  }

  v93 = v101;
  v94 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v96 = v94;
  swift_getErrorValue();
  v47 = Error.localizedDescription.getter();
  v49 = v48;
  static os_log_type_t.error.getter();
  sub_100168088(&unk_100574670);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1004007E0;
  v51 = URL.path.getter();
  v53 = v52;
  *(v50 + 56) = &type metadata for String;
  v54 = sub_100022C18();
  *(v50 + 64) = v54;
  *(v50 + 32) = v51;
  *(v50 + 40) = v53;
  v55 = URL.path.getter();
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v54;
  *(v50 + 72) = v55;
  *(v50 + 80) = v56;
  *(v50 + 136) = &type metadata for String;
  *(v50 + 144) = v54;
  *(v50 + 112) = v47;
  *(v50 + 120) = v49;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100400790;
  v58 = URL.description.getter();
  *(v57 + 56) = &type metadata for String;
  *(v57 + 64) = v54;
  *(v57 + 32) = v58;
  *(v57 + 40) = v59;
  os_log(_:dso:log:_:_:)();

  v60 = [v97 defaultManager];
  URL.path.getter();
  v61 = String._bridgeToObjectiveC()();

  v101 = 0;
  LODWORD(v57) = [v60 removeItemAtPath:v61 error:&v101];

  if (v57)
  {
    v62 = v101;
  }

  else
  {
    v72 = v101;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_100400790;
    v74 = URL.path.getter();
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = v54;
    *(v73 + 32) = v74;
    *(v73 + 40) = v75;
    os_log(_:dso:log:_:_:)();
  }

  type metadata accessor for MoveOperationError(0);
  sub_1002C01FC(&qword_10057CB70, type metadata accessor for MoveOperationError);
  v76 = swift_allocError();
  *v77 = v96;
  swift_storeEnumTagMultiPayload();
  v78 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_resultHandler);
  if (v78)
  {
    v103 = sub_100168088(&qword_100578BE0);
    v101 = v76;
    v102 = 1;
    swift_errorRetain();
    sub_100013CB4(v78);
    swift_errorRetain();
    v78(&v101);
    sub_100037470(v78);
    sub_100004590(&v101);
  }

  else
  {
    swift_errorRetain();
  }

  v79 = OBJC_IVAR____TtC8Podcasts13BaseOperation_lock;
  v80 = *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation_lock);
  swift_errorRetain();
  [v80 lock];
  *(v1 + OBJC_IVAR____TtC8Podcasts13BaseOperation__error) = v76;
  swift_errorRetain();

  [*(v1 + v79) unlock];

  sub_10003172C();

LABEL_33:
}

void sub_1002BFF64()
{
  sub_10003163C(*(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input), *(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input + 8));
  v1 = OBJC_IVAR____TtC8Podcasts17MoveFileOperation_destination;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_source, v2);
  v4 = *(v0 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_log);
}

uint64_t sub_1002C0110()
{
  result = type metadata accessor for URL();
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

uint64_t sub_1002C01BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input;
  v3 = *(v1 + OBJC_IVAR____TtC8Podcasts17MoveFileOperation_input);
  *a1 = v3;
  v4 = *(v2 + 8);
  *(a1 + 8) = v4;
  return sub_1000314A0(v3, v4);
}

uint64_t sub_1002C01FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002C0244()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = sub_10001206C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002C0300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveOperationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002C0364(uint64_t a1)
{
  v2 = type metadata accessor for MoveOperationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002C0400()
{
  v1 = *((swift_isaMask & *v0) + 0x180);
  v2 = type metadata accessor for OperationResult();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
}

uint64_t sub_1002C04F8()
{
  v1 = v0;
  v2 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InteractionContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v10 = *(v0 + 64);
  if (v10)
  {

    dispatch thunk of ContextActionsConfiguration.context.getter();

    InteractionContext.page.getter();
    (*(v6 + 8))(v8, v5);
    LOBYTE(v10) = InteractionContext.Page.isShowPage.getter();
    result = sub_1002AF030(v4, &type metadata accessor for InteractionContext.Page);
  }

  *(v1 + 72) = v10 & 1;
  return result;
}

uint64_t sub_1002C0674()
{
  v1 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 72) == 1 && (v4 = *(v0 + 56)) != 0)
  {
    v5 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v4 + v5, v3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = type metadata accessor for PodcastContextActionDataType;
    }

    else
    {
      type metadata accessor for PodcastContextActionDataType.Kind(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v8 = objc_opt_self();
        v9 = String._bridgeToObjectiveC()();

        v10 = [v8 predicateForAllEpisodesOnPodcastUuid:v9];

        sub_1000044A0((v0 + 16), *(v0 + 40));
        v7 = dispatch thunk of LibraryActionControllerProtocol.hasEpisodesThatAre(visuallyPlayed:baseEpisodesPredicate:)();

        return v7 & 1;
      }

      v6 = type metadata accessor for PodcastContextActionDataType.Kind;
    }

    sub_1002AF030(v3, v6);
    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1002C0828()
{
  v1 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-v2];
  v4 = type metadata accessor for PresentationSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + 72) == 1)
  {
    v11 = *(v0 + 56);
    if (v11)
    {
      v12 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
      swift_beginAccess();
      sub_1001A1560(v11 + v12, v10);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = type metadata accessor for PodcastContextActionDataType;
      }

      else
      {
        type metadata accessor for PodcastContextActionDataType.Kind(0);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          swift_beginAccess();
          if (*(v0 + 64))
          {
            v14 = v0;

            dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

            if ((*(v5 + 48))(v3, 1, v4) != 1)
            {
              (*(v5 + 32))(v7, v3, v4);
              v15 = objc_opt_self();
              v16 = String._bridgeToObjectiveC()();

              v17 = [v15 predicateForAllEpisodesOnPodcastUuid:v16];

              sub_1000044A0((v14 + 16), *(v14 + 40));
              dispatch thunk of LibraryActionControllerProtocol.handleMarkingEpisodesAsUnplayed(source:baseEpisodesPredicate:)();

              (*(v5 + 8))(v7, v4);
              return;
            }
          }

          else
          {

            (*(v5 + 56))(v3, 1, 1, v4);
          }

          sub_100009104(v3, &unk_10057BB90);
          return;
        }

        v13 = type metadata accessor for PodcastContextActionDataType.Kind;
      }

      sub_1002AF030(v10, v13);
    }
  }
}

uint64_t sub_1002C0B88()
{
  sub_100004590(v0 + 16);

  v1 = OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarkAllAsUnplayedContextAction()
{
  result = qword_10057CD08;
  if (!qword_10057CD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C0CC0()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002C0DCC()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_1002C0DFC()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_1002C0E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts30MarkAllAsUnplayedContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002C0EC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1002C0F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1002C0F80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1002C0FE4(uint64_t a1)
{
  result = sub_1002C106C(&unk_1005822A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C1028(uint64_t a1)
{
  result = sub_1002C106C(&qword_10057CE30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C106C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarkAllAsUnplayedContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RunOnceAsyncMigrationStep.migrationKey.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))();

  return StaticString.description.getter();
}

uint64_t RunOnceMigrationStep.requiresMigration.getter(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  (*(a2 + 16))(a1, a2);
  v5 = String._bridgeToObjectiveC()();

  LODWORD(a2) = [v4 BOOLForKey:v5];

  return a2 ^ 1;
}

void sub_1002C11BC()
{
  v10 = StaticString.description.getter();
  v11 = v0;

  v1._countAndFlagsBits = 0x726F7272652ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 privateQueueContext];

  v14 = sub_100184D14;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_10000F038;
  v13 = &unk_1004EA7D0;
  v4 = _Block_copy(&v10);
  [v3 performBlockAndWaitWithSave:v4];
  _Block_release(v4);

  v5 = objc_opt_self();
  v6 = [v5 standardUserDefaults];
  StaticString.description.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:1 forKey:v7];

  v8 = [v5 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();

  [v8 removeObjectForKey:v9];
}

void sub_1002C13C8(uint64_t a1, uint64_t a2, __int16 a3, void (*a4)(uint64_t), uint64_t a5)
{
  v37 = a5;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = StaticString.description.getter();
  v39[1] = v11;

  v12._countAndFlagsBits = 0x726F7272652ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  a4(v13);
  if (v5)
  {
    v35 = v9;
    v36 = v8;
    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    [v15 setBool:0 forKey:v16];

    v17 = [v14 standardUserDefaults];
    v39[0] = v5;
    swift_errorRetain();
    sub_100168088(&qword_100575C50);
    String.init<A>(describing:)();
    v18 = String._bridgeToObjectiveC()();

    v19 = String._bridgeToObjectiveC()();

    [v17 setObject:v18 forKey:v19];

    if ((a3 & 0x100) != 0)
    {
      v25 = v38;
      static Logger.database.getter();
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v39[0] = swift_slowAlloc();
        *v28 = 136315394;
        v29 = _typeName(_:qualified:)();
        v31 = sub_1000153E0(v29, v30, v39);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        v39[3] = v5;
        swift_errorRetain();
        v32 = String.init<A>(describing:)();
        v34 = sub_1000153E0(v32, v33, v39);

        *(v28 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed migration step silently: %s: %s.", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v35 + 8))(v25, v36);
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    [v21 setBool:1 forKey:v22];

    v23 = [v20 standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();

    [v23 removeObjectForKey:v24];
  }
}

void sub_1002C1840()
{
  v12 = StaticString.description.getter();
  v13 = v0;

  v1._countAndFlagsBits = 0x726F7272652ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 privateQueueContext];

  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v16 = sub_1002C22AC;
  v17 = v4;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10000F038;
  v15 = &unk_1004EA7A8;
  v5 = _Block_copy(&v12);
  v6 = v3;

  [v6 performBlockAndWaitWithSave:v5];
  _Block_release(v5);

  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  StaticString.description.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setBool:1 forKey:v9];

  v10 = [v7 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();

  [v10 removeObjectForKey:v11];
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RunOnceMigrationStep.performMigration()()
{
  v3 = v1;
  v4 = v0;
  v48 = *(v0 - 8);
  __chkstk_darwin();
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 16);
  v53 = v10(v4, v3, v8);
  v54 = v11;

  v12._countAndFlagsBits = 0x726F7272652ELL;
  v12._object = 0xE600000000000000;
  String.append(_:)(v12);

  v50 = v53;
  v51 = v54;
  v13 = *(v3 + 32);
  v14 = v52;
  v52 = v4;
  v13(v4, v3);
  if (v14)
  {
    v45 = v7;
    v46 = v6;
    v15 = objc_opt_self();
    v16 = [v15 standardUserDefaults];
    v17 = v52;
    (v10)(v52, v3);
    v18 = String._bridgeToObjectiveC()();

    [v16 setBool:0 forKey:v18];

    v19 = [v15 standardUserDefaults];
    v53 = v14;
    swift_errorRetain();
    v20 = sub_100168088(&qword_100575C50);
    String.init<A>(describing:)();
    v21 = String._bridgeToObjectiveC()();

    v22 = String._bridgeToObjectiveC()();

    [v19 setObject:v21 forKey:v22];

    if ((*(v3 + 24))(v17, v3))
    {
      v23 = v49;
      static Logger.database.getter();
      v25 = v47;
      v24 = v48;
      (*(v48 + 16))(v47, v2, v52);
      swift_errorRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v20;
        v29 = v28;
        v51 = swift_slowAlloc();
        v53 = v51;
        *v29 = 136315394;
        v30 = v52;
        swift_getDynamicType();
        v31 = _typeName(_:qualified:)();
        v32 = v25;
        v33 = v31;
        v35 = v34;
        (*(v24 + 8))(v32, v30);
        v36 = sub_1000153E0(v33, v35, &v53);

        *(v29 + 4) = v36;
        *(v29 + 12) = 2080;
        v55 = v14;
        swift_errorRetain();
        v37 = String.init<A>(describing:)();
        v39 = sub_1000153E0(v37, v38, &v53);

        *(v29 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v26, v27, "Failed migration step silently: %s: %s.", v29, 0x16u);
        swift_arrayDestroy();

        (*(v45 + 8))(v23, v46);
      }

      else
      {

        (*(v45 + 8))(v23, v46);
        (*(v24 + 8))(v25, v52);
      }
    }

    else
    {
      swift_willThrow();
    }
  }

  else
  {
    v40 = objc_opt_self();
    v41 = [v40 standardUserDefaults];
    (v10)(v52, v3);
    v42 = String._bridgeToObjectiveC()();

    [v41 setBool:1 forKey:v42];

    v43 = [v40 standardUserDefaults];
    v44 = String._bridgeToObjectiveC()();

    [v43 removeObjectForKey:v44];
  }
}

id RunOnceAsyncMigrationStep.userDefaults.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

void sub_1002C20C0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (*(v4 + 17))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  sub_1002C13C8(*v4, *(v4 + 8), v5 | *(v4 + 16), a3, a4);
}

uint64_t sub_1002C2190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void, void))
{
  if (*(v3 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return a3(*v3, *(v3 + 8), v4 | *(v3 + 16));
}

uint64_t sub_1002C21CC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1002C2204(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1000153E0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **sub_1002C2260(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1002C2270(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1002C22B8(void *a1)
{
  v2 = v1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(MTPropertyChangeQueryObserver);
  v5 = a1;
  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 initWithEntityName:v6 predicate:v5];

  if (v7)
  {
    *(v2 + 16) = v7;
    sub_100168088(&qword_100574690);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004007E0;
    *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 40) = v9;
    *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 56) = v10;
    *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v8 + 72) = v11;
    aBlock[6] = v8;

    sub_1001C3B80(v12);
    v13 = *(v2 + 16);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v13 setPropertyKeys:isa];

    [*(v2 + 16) startObserving];
    v15 = [*(v2 + 16) uuids];
    if (v15)
    {
      v16 = v15;

      v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = *(v17 + 16);

      *(v2 + 24) = v18;
      v19 = *(v2 + 16);
      v20 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002C2958;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D3764;
      aBlock[3] = &unk_1004EA8E8;
      v21 = _Block_copy(aBlock);
      v22 = v19;

      v23 = [v22 addResultsChangedHandler:v21];

      _Block_release(v21);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1002C2588(unint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      if (a1 >> 62)
      {
        v5 = result;
        v6 = _CocoaArrayWrapper.endIndex.getter();
        if (v6 < 0)
        {
          __break(1u);
        }

        a1 = v6;
        result = v5;
      }

      else
      {
        a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    if (a1 == *(result + 24))
    {
    }

    *(result + 24) = a1;
    v3 = result;
    swift_beginAccess();
    v4 = *(v3 + 32);
    if (!v4)
    {
    }

    else
    {

      v4(a1);

      return sub_1000112B4(v4);
    }
  }

  return result;
}

uint64_t (*sub_1002C26A0())()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1002ABF4C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_1002C273C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1002ABF48;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *v2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  return sub_1000112B4(v8);
}

void (*sub_1002C27D4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  if (v6)
  {
    v7 = *(v5 + 40);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = sub_1002ABF40;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  return sub_1002C28A0;
}

void sub_1002C28A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1002ABF38;
    }

    else
    {
      v4 = sub_1002ABF48;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = v2[5];
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  swift_endAccess();

  free(v2);
}

unint64_t sub_1002C2960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C29B4(a1, WitnessTable);
}

unint64_t sub_1002C29B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (*(a2 + 16))(a1, a2, v10) & 1;
  result = sub_1002C445C(v13, a1, a2);
  if (result)
  {
    sub_10002BD04();
    v15 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    aBlock[4] = sub_1002C4D20;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EA9B0;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100182E30();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_1002C2C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C2CBC(a1, WitnessTable);
}

uint64_t sub_1002C2CBC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreviewingPresentationHint();
  v51 = *(v5 - 8);
  __chkstk_darwin();
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeOffer();
  v52 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v50 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin();
  v15 = (v42 - v14);
  v16 = *(a2 + 8);
  result = (*(v16 + 16))(a1, v16, v13);
  if (result)
  {
    v18 = result;
    v49 = a1;
    v19 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001EAFE4(v18 + v19, v15);
    v48 = v11;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v16;
      v44 = v18;
      v45 = v7;
      v46 = v5;
      v20 = *v15;
      v53 = _swiftEmptyArrayStorage;
      v21 = *(v20 + 16);
      v47 = v2;
      if (v21)
      {
        v22 = v52 + 16;
        v52 = *(v52 + 16);
        v23 = *(v22 + 64);
        v42[1] = v20;
        v24 = v20 + ((v23 + 32) & ~v23);
        v25 = *(v22 + 56);
        v26 = (v22 - 8);
        v27 = _swiftEmptyArrayStorage;
        (v52)(v10, v24, v8);
        while (1)
        {
          v28 = sub_100294534();
          (*v26)(v10, v8);
          if (v28)
          {
            v29 = v28;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v27 = v53;
          }

          v24 += v25;
          if (!--v21)
          {
            break;
          }

          (v52)(v10, v24, v8);
        }
      }

      else
      {

        v27 = _swiftEmptyArrayStorage;
      }

      v31 = v50;
      v30 = v51;
      *v50 = v27;
      swift_storeEnumTagMultiPayload();
      v32 = *(v30 + 16);
      v34 = v44;
      v33 = v45;
      v35 = v46;
      v32(v45, v44 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint, v46);
      v36 = *(v34 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron);
      type metadata accessor for EpisodeContextActionData(0);
      v37 = swift_allocObject();
      v38 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_mangedContextProvider;
      *(v37 + v38) = [objc_opt_self() sharedInstance];
      sub_1001EAFE4(v31, v37 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type);
      v32((v37 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_presentationHint), v33, v35);
      *(v37 + OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_hasHeaderChevron) = v36;
      sub_100399908();
      (*(v30 + 8))(v33, v35);
      sub_1001EDA30(v31);
      v39 = v43;
      v40 = *(v43 + 24);

      v40(v41, v49, v39);
    }

    else
    {

      return sub_1001EDA30(v15);
    }
  }

  return result;
}

BOOL sub_1002C3150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C31A4(a1, WitnessTable);
}

BOOL sub_1002C31A4(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 24))(a1, a2);
  dispatch thunk of PlaybackController.queueController.getter();

  v5 = dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter();

  if ((v4 & 1) == 0)
  {
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_3:
  v6 = *(sub_1002C3574(a1, a2) + 2);

  if (v6)
  {
    return 1;
  }

  v7 = sub_1002C39D0(a1, a2);
  v8 = v7 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v8 > 0)
  {
    return 1;
  }

  v10 = sub_1002C3C74(a1, a2);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v11 > 0;
}

BOOL sub_1002C3310(uint64_t a1, uint64_t a2)
{
  if (((*(a2 + 16))() & 1) == 0)
  {
    (*(a2 + 24))(a1, a2);
    dispatch thunk of PlaybackController.queueController.getter();

    v4 = dispatch thunk of PlaybackController.QueueController.hasHardQueue.getter();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(sub_1002C3574(a1, a2) + 2);

  if (v5)
  {
    return 1;
  }

  v6 = sub_1002C39D0(a1, a2);
  v7 = v6 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v7 > 0)
  {
    return 1;
  }

  v9 = sub_1002C3C74(a1, a2);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v10 > 0;
}

unint64_t sub_1002C3478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C29B4(a1, WitnessTable);
}

uint64_t sub_1002C34CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C2CBC(a1, WitnessTable);
}

BOOL sub_1002C3520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C31A4(a1, WitnessTable);
}

char *sub_1002C3574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v4);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  v11 = __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = (*(*(a2 + 8) + 16))(a1, v11);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v16 = v14;
  swift_beginAccess();
  sub_1001EAFE4(v16 + v15, v9);

  sub_1002288DC(v9, v13);
  sub_1001EAFE4(v13, v6);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1001EDA30(v13);
    sub_1001EDA30(v6);
    return _swiftEmptyArrayStorage;
  }

  v37 = v13;
  v18 = *v6;

  v19 = *(v18 + 16);
  v36[1] = v18;
  if (v19)
  {
    v20 = objc_opt_self();
    v21 = 0;
    v39 = v42;
    v40 = v20;
    v38 = _swiftEmptyArrayStorage;
    v22 = (v18 + 40);
    while (1)
    {
      v23 = *(v22 - 1);
      v24 = *v22;

      v25 = [v40 sharedInstance];
      v26 = [v25 mainOrPrivateContext];

      v45 = 1;
      v44 = 1;
      v43 = 0;
      v27 = swift_allocObject();
      v27[2] = v26;
      v27[3] = v23;
      v27[4] = v24;
      v27[5] = &v45;
      v27[6] = &v44;
      v27[7] = &v43;

      v28 = v26;
      sub_1000112B4(v21);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1002C4D10;
      *(v29 + 24) = v27;
      v42[2] = sub_10002D7F0;
      v42[3] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v42[0] = sub_10002D904;
      v42[1] = &unk_1004EA960;
      v30 = _Block_copy(aBlock);

      [v28 performBlockAndWait:v30];
      _Block_release(v30);
      LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

      if (v30)
      {
        break;
      }

      if ((v45 & 1) != 0 || v44 == 1 || (v43 & 1) == 0)
      {
      }

      else
      {
        v31 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100243134(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v38 = v31;
        if (v33 >= v32 >> 1)
        {
          v38 = sub_100243134((v32 > 1), v33 + 1, 1, v38);
        }

        v34 = v38;
        *(v38 + 2) = v33 + 1;
        v35 = &v34[16 * v33];
        *(v35 + 4) = v23;
        *(v35 + 5) = v24;
      }

      v22 += 2;
      v21 = sub_1002C4D10;
      if (!--v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = 0;
    v38 = _swiftEmptyArrayStorage;
LABEL_19:

    sub_1001EDA30(v37);
    sub_1000112B4(v21);
    return v38;
  }

  return result;
}

uint64_t sub_1002C39D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v4);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = _swiftEmptyArrayStorage;
  v26 = _swiftEmptyArrayStorage;
  v15 = (*(*(a2 + 8) + 16))(a1, v11);
  if (!v15)
  {
    return v14;
  }

  v16 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v17 = v15;
  swift_beginAccess();
  sub_1001EAFE4(v17 + v16, v9);

  sub_1002288DC(v9, v13);
  sub_1001EAFE4(v13, v6);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1001EDA30(v13);
    v13 = v6;
LABEL_21:
    sub_1001EDA30(v13);
    return v14;
  }

  v18 = *v6;
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_20:

    goto LABEL_21;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_5:
  result = type metadata accessor for RestrictionsController();
  if (v19 >= 1)
  {
    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v18 + 8 * i + 32);
      }

      v23 = v22;
      if ((static RestrictionsController.isExplicitContentAllowed.getter() & 1) != 0 || ([v23 isExplicit] & 1) == 0) && (objc_msgSend(v23, "isEntitled"))
      {
        v24 = v23;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v14 = v26;
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void *sub_1002C3C74(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = *(*(a2 + 8) + 16);
  v50 = a1;
  v51 = v2;
  v13 = v12(a1, v9);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = v13;
  v49 = a2;
  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v14 + v15, v11);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1001EDA30(v11);
    sub_1001EAFE4(v14 + v15, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v48 = v14;
    if (EnumCaseMultiPayload == 3)
    {
      v17 = *v7;
      v53 = _swiftEmptyArrayStorage;
      v18 = v49;
      if (v17 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v20 = 0;
        v18 = v17 & 0xC000000000000001;
        while (1)
        {
          if (v18)
          {
            v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v21 = *(v17 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          v24 = MPCPlayerResponseItem.podcastEpisode.getter();
          if (v24)
          {
            v25 = v24;
            if (([v24 isExplicitEpisode] & 1) == 0)
            {

LABEL_18:
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              goto LABEL_8;
            }

            type metadata accessor for RestrictionsController();
            v26 = static RestrictionsController.isExplicitContentAllowed.getter();

            if (v26)
            {
              goto LABEL_18;
            }
          }

LABEL_8:
          ++v20;
          if (v23 == i)
          {
            v27 = v53;
            v18 = v49;
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_28:
    }

    else
    {
      sub_1001EDA30(v7);
      v27 = _swiftEmptyArrayStorage;
      v18 = v49;
    }

    v28 = v50;
    if (((*(v18 + 16))(v50, v18) & 1) == 0)
    {
      v53 = _swiftEmptyArrayStorage;
      if (v27 >> 62)
      {
        goto LABEL_65;
      }

      v41 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = v50;
      if (v41)
      {
        goto LABEL_50;
      }

LABEL_66:

      return v53;
    }

    (*(v18 + 24))(v28, v18);
    v18 = dispatch thunk of PlaybackController.queueController.getter();

    ItemContent = dispatch thunk of PlaybackController.QueueController.hardQueueFirstItemContentID.getter();
    v31 = v30;

    if (v31)
    {
      v53 = _swiftEmptyArrayStorage;
      if (v27 >> 62)
      {
        v32 = _CocoaArrayWrapper.endIndex.getter();
        if (v32)
        {
LABEL_33:
          v33 = 0;
          v50 = v27 & 0xFFFFFFFFFFFFFF8;
          v51 = v27 & 0xC000000000000001;
          while (1)
          {
            if (v51)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v33 >= *(v50 + 16))
              {
                goto LABEL_64;
              }

              v34 = *(v27 + 8 * v33 + 32);
            }

            v35 = v34;
            v36 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            v18 = [v34 contentItemIdentifier];
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            if (v37 == ItemContent && v31 == v39)
            {
            }

            else
            {
              v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v18)
              {
              }

              else
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                v18 = v53[2];
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
              }
            }

            ++v33;
            if (v36 == v32)
            {
              goto LABEL_68;
            }
          }

          while (1)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            v41 = _CocoaArrayWrapper.endIndex.getter();
            v42 = v50;
            if (!v41)
            {
              goto LABEL_66;
            }

LABEL_50:
            v43 = 0;
            while (1)
            {
              if ((v27 & 0xC000000000000001) != 0)
              {
                v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v43 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_62;
                }

                v44 = *(v27 + 8 * v43 + 32);
              }

              v45 = v44;
              v46 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              v52 = v44;
              if (sub_1002C42FC(&v52, v51, v42, v18))
              {
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v18 = v49;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                v42 = v50;
              }

              else
              {
              }

              ++v43;
              if (v46 == v41)
              {
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_62:
            __break(1u);
          }
        }
      }

      else
      {
        v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          goto LABEL_33;
        }
      }

LABEL_68:

      return v53;
    }
  }

  else
  {

    sub_1001EDA30(v11);
    return _swiftEmptyArrayStorage;
  }

  return v27;
}

void sub_1002C4228(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, _BYTE *a5, unsigned __int8 *a6)
{
  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 episodeForUuid:v10];

  if (v11)
  {
    type metadata accessor for RestrictionsController();
    if (static RestrictionsController.isExplicitContentAllowed.getter())
    {
      v12 = 0;
    }

    else
    {
      v12 = [v11 isExplicit];
    }

    *a4 = v12;
    *a5 = [v11 isExternalType];
    v13 = [v11 isEntitled];

    *a6 = v13;
  }
}

BOOL sub_1002C42FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for QueueModelSection();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 24))(a3, a4, v8);
  dispatch thunk of PlaybackController.queueController.getter();

  (*(v7 + 104))(v10, enum case for QueueModelSection.hardQueue(_:), v6);
  v11 = dispatch thunk of PlaybackController.QueueController.queueSectionContainsItem(queueSection:item:)();

  (*(v7 + 8))(v10, v6);
  return (v11 & 1) == 0;
}

unint64_t sub_1002C445C(int a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v6 = type metadata accessor for PlaybackController.QueueCommand.Location();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v66 - v10;
  __chkstk_darwin();
  v13 = &v66 - v12;
  type metadata accessor for EpisodeContextActionDataType(0);
  v14 = __chkstk_darwin();
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v3;
  v73 = a3;
  v17 = *(*(a3 + 8) + 16);
  v71 = a2;
  result = v17(a2, v14);
  if (!result)
  {
    return result;
  }

  v19 = result;
  v20 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1001EAFE4(v19 + v20, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1001EDA30(v16);
    result = sub_1002C3C74(v71, v73);
    v74 = result;
    v66 = v9;
    if (result >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v40 = result;
    }

    else
    {
      v40 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = *(v73 + 24);
    v68 = v7;
    v69 = v6;
    v67 = v19;
    if (v40)
    {
      if (v40 < 1)
      {
        __break(1u);
        return result;
      }

      v42 = 0;
      v28 = v74;
      v43 = v74 & 0xC000000000000001;
      do
      {
        if (v43)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v44 = *(v28 + 8 * v42 + 32);
        }

        v45 = v44;
        ++v42;
        v41(v71, v73);
        dispatch thunk of PlaybackController.queueController.getter();

        v46 = [v45 contentItemIdentifier];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of PlaybackController.QueueController.removeItemFromQueue(identifier:)();

        v28 = v74;
      }

      while (v40 != v42);
    }

    else
    {
      v28 = v74;
      v43 = v74 & 0xC000000000000001;
    }

    v41(v71, v73);
    v73 = dispatch thunk of PlaybackController.queueController.getter();

    if (!v40)
    {
      goto LABEL_55;
    }

    v11 = 0;
    v50 = v28 & 0xFFFFFFFFFFFFFF8;
    v51 = _swiftEmptyArrayStorage;
    while (1)
    {
      v52 = v11;
      while (1)
      {
        if (v43)
        {
          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v52 >= *(v50 + 16))
          {
            goto LABEL_63;
          }

          v53 = *(v28 + 8 * v52 + 32);
        }

        v54 = v53;
        v11 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v55 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v55)
        {
          break;
        }

LABEL_41:
        ++v52;
        if (v11 == v40)
        {
          goto LABEL_55;
        }
      }

      v56 = v55;
      v57 = MPModelObject.adamID.getter();
      v6 = v58;

      v28 = v74;
      if (v6)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1002433B0(0, *(v51 + 2) + 1, 1, v51);
      }

      v61 = *(v51 + 2);
      v60 = *(v51 + 3);
      if (v61 >= v60 >> 1)
      {
        v51 = sub_1002433B0((v60 > 1), v61 + 1, 1, v51);
      }

      *(v51 + 2) = v61 + 1;
      *&v51[8 * v61 + 32] = v57;
      if (v11 == v40)
      {
LABEL_55:

        v63 = v68;
        v62 = v69;
        v64 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
        if ((v70 & 1) == 0)
        {
          v64 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
        }

        v65 = v66;
        (*(v68 + 104))(v66, *v64, v69);
        dispatch thunk of PlaybackController.QueueController.addToQueue(adamIds:location:)();

        (*(v63 + 8))(v65, v62);
        return 0;
      }
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v67 = v19;
    v68 = v7;
    v69 = v6;
    sub_1001EDA30(v16);
    v25 = v73;
    v26 = v71;
    (*(v73 + 24))(v71, v73);
    v66 = dispatch thunk of PlaybackController.queueController.getter();

    v27 = sub_1002C39D0(v26, v25);
    v28 = v27;
    v6 = v27 & 0xFFFFFFFFFFFFFF8;
    if (v27 >> 62)
    {
LABEL_64:
      v29 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = 0;
    v74 = _swiftEmptyArrayStorage;
    while (v29 != v30)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v30 >= *(v6 + 16))
        {
          goto LABEL_61;
        }

        v31 = *(v28 + 8 * v30 + 32);
      }

      v32 = v31;
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v34 = IMPlayerItem.adamID.getter();
      v36 = v35;

      ++v30;
      if ((v36 & 1) == 0)
      {
        v37 = v74;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1002433B0(0, *(v37 + 2) + 1, 1, v37);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = sub_1002433B0((v38 > 1), v39 + 1, 1, v37);
        }

        *(v37 + 2) = v39 + 1;
        v74 = v37;
        *&v37[8 * v39 + 32] = v34;
        v30 = v33;
      }
    }

    v48 = v68;
    v47 = v69;
    v49 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if ((v70 & 1) == 0)
    {
      v49 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v68 + 104))(v11, *v49, v69);
    dispatch thunk of PlaybackController.QueueController.addToQueue(adamIds:location:)();

    (*(v48 + 8))(v11, v47);
    return 1;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {

      sub_1001EDA30(v16);
      return 0;
    }

    sub_1001EDA30(v16);
    v22 = v73;
    v23 = v71;
    (*(v73 + 24))(v71, v73);
    dispatch thunk of PlaybackController.queueController.getter();

    sub_1002C3574(v23, v22);
    v24 = &enum case for PlaybackController.QueueCommand.Location.queueHead(_:);
    if ((v70 & 1) == 0)
    {
      v24 = &enum case for PlaybackController.QueueCommand.Location.queueTail(_:);
    }

    (*(v7 + 104))(v13, *v24, v6);
    dispatch thunk of PlaybackController.QueueController.addToQueue(uuids:location:)();

    (*(v7 + 8))(v13, v6);
    return 1;
  }
}

void sub_1002C4C1C(char a1)
{
  type metadata accessor for HUDViewController.HUDType();
  v4 = __chkstk_darwin();
  v5 = &enum case for HUDViewController.HUDType.playNext(_:);
  if ((a1 & 1) == 0)
  {
    v5 = &enum case for HUDViewController.HUDType.addToQueue(_:);
  }

  (*(v3 + 104))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *v5, v4);
  v6 = objc_allocWithZone(type metadata accessor for HUDViewController());
  v7 = HUDViewController.init(type:)();
  dispatch thunk of HUDViewController.present()();
}

id sub_1002C4D28(uint64_t a1, uint64_t a2, int a3)
{
  v44 = a1;
  v43 = a3;
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v4 = v42 - v3;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v6 = v42 - v5;
  sub_100168088(&qword_10057CF40);
  __chkstk_darwin();
  v8 = v42 - v7;
  v9 = type metadata accessor for FlowDestination();
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin();
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100578C10);
  __chkstk_darwin();
  v13 = v42 - v12;
  v14 = type metadata accessor for ArtworkModel();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Showcase.showArtwork.getter();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100009104(v13, &unk_100578C10);
    return 0;
  }

  sub_1001FBAE0(v13, v17);
  Showcase.clickAction.getter();
  if (!v48)
  {
    sub_1001A0664(v17);
    sub_100009104(aBlock, &qword_100578C20);
    return 0;
  }

  sub_100168088(&unk_10057BB70);
  type metadata accessor for FlowAction();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1001A0664(v17);
    return 0;
  }

  v18 = v51;

  v19 = Action.title.getter();
  v21 = v20;

  if (!v21)
  {
    sub_1001A0664(v17);

    return 0;
  }

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
    sub_1001A0664(v17);

    return 0;
  }

  dispatch thunk of FlowAction.destination.getter();
  v42[1] = v18;
  v24 = v45;
  v23 = v46;
  if ((*(v45 + 48))(v8, 1, v46) == 1)
  {
    sub_1001A0664(v17);

    sub_100009104(v8, &qword_10057CF40);
    return 0;
  }

  (*(v24 + 32))(v11, v8, v23);
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v26 = aBlock[0];
  sub_1002C5564();
  v28 = v27;
  v29 = String._bridgeToObjectiveC()();

  if (v28)
  {
    v30 = String._bridgeToObjectiveC()();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithText:v29 detailText:v30 image:0 accessoryImage:0 accessoryType:0];

  CarPlayPageLoadCoordinator.loadImage(for:into:)(v17, v31);
  v32 = sub_100168088(&unk_100575B10);
  v33 = *(v32 + 48);
  v34 = *(v32 + 64);
  v42[0] = v26;
  v35 = &v4[v34];
  FlowDestination.pageDestinationURL.getter();
  *&v4[v33] = FlowDestination.pageDestinationPage.getter();
  *v35 = Showcase.showAdamId.getter();
  v35[8] = v36 & 1;
  v37 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v38(v4, 0, 1, v37);
  v38(v6, 1, 1, v37);
  v39 = type metadata accessor for CarPlayTemplateInfo(0);
  v40 = *(v39 + 20);
  sub_1001FBB44(v4, v6);
  v6[v40] = v43;
  (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  sub_1001D2AD4(v6);
  v49 = sub_1002C58C0;
  v50 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100372F30;
  v48 = &unk_1004EA9D8;
  v41 = _Block_copy(aBlock);

  [v31 setHandler:v41];
  _Block_release(v41);

  (*(v45 + 8))(v11, v46);
  sub_1001A0664(v17);
  return v31;
}

uint64_t sub_1002C5410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_10040A450, v12);
}

uint64_t sub_1002C5564()
{
  v0 = type metadata accessor for HeaderModel.MetadataComponent();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ExplicitContentPresenter();
  BaseObjectGraph.inject<A>(_:)();
  v28 = v35;
  v4 = Showcase.showMetadata.getter();
  v5 = *(v4 + 16);
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v8 = (*(v6 + 64) + 32) & ~*(v6 + 64);
    v26 = v4;
    v9 = v4 + v8;
    v33 = *(v6 + 56);
    v34 = v7;
    v10 = (v6 + 72);
    v32 = enum case for HeaderModel.MetadataComponent.category(_:);
    v30 = enum case for HeaderModel.MetadataComponent.explicit(_:);
    v27 = (v6 - 8);
    v29 = (v6 + 80);
    v11 = _swiftEmptyArrayStorage;
    v31 = v6;
    v7(v3, v4 + v8, v0);
    while (1)
    {
      v13 = (*v10)(v3, v0);
      if (v13 == v32)
      {
        (*v29)(v3, v0);
        v14 = *v3;
        v15 = v3[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100243134(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_100243134((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v14;
        *(v12 + 5) = v15;
      }

      else if (v13 == v30)
      {
        v18 = ExplicitContentPresenter.symbol.getter();
        v20 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100243134(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_100243134((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        v23 = &v11[16 * v22];
        *(v23 + 4) = v18;
        *(v23 + 5) = v20;
      }

      else
      {
        (*v27)(v3, v0);
      }

      v9 += v33;
      if (!--v5)
      {
        break;
      }

      v34(v3, v9, v0);
    }
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  v35 = v11;
  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0);
  sub_1001A4604();
  v24 = BidirectionalCollection<>.joined(separator:)();

  return v24;
}

uint64_t sub_1002C58C8(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_1001FB128(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002C599C()
{
  sub_100168088(&unk_10057A0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007A0;
  *(inited + 32) = static AdamID.parse(_:)();
  *(inited + 40) = static AdamID.parse(_:)();
  *(inited + 48) = static AdamID.parse(_:)();
  *(inited + 56) = static AdamID.parse(_:)();
  *(inited + 64) = static AdamID.parse(_:)();
  v1 = sub_10016B7DC(inited);
  result = swift_setDeallocating();
  qword_10057CF48 = v1;
  return result;
}

uint64_t sub_1002C5B24()
{
  v1 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || (v15[0] = v2, type metadata accessor for ContextActionsConfiguration(), , sub_100168088(&qword_10057D070), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_100009104(&v12, &qword_10057D068);
  }

  if (!*(&v13 + 1))
  {
    return sub_100009104(&v12, &qword_10057D068);
  }

  v3 = v0;
  sub_1000109E4(&v12, v15);
  v4 = v16;
  sub_1000044A0(v15, v16);
  v5 = sub_1001ED800(v4);
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    sub_100004428(v15, &v12);
    type metadata accessor for ChannelContextActionConfiguration(0);
    if (swift_dynamicCast())
    {

      v8 = 1;
    }

    else
    {
      v8 = 5;
    }

    *(v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestContentKind) = v8;
    v10 = v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID;
    *v10 = v7;
    *(v10 + 8) = 0;
    InterestStateController.stateMachine(for:)();
    v11 = InterestStateMachine.currentState.getter();

    *(v3 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestState) = v11;
  }

  return sub_100004590(v15);
}

uint64_t sub_1002C5CCC()
{
  if (*(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID + 8))
  {
    goto LABEL_20;
  }

  if (*(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestState) == 4)
  {
    goto LABEL_20;
  }

  v1 = *(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID);
  v2 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  if (*(v0 + v2))
  {
    type metadata accessor for PodcastContextActionConfiguration(0);
    if (swift_dynamicCastClass())
    {
      goto LABEL_20;
    }
  }

  v3 = ContentKind.rawValue.getter();
  v5 = v4;
  if (v3 == ContentKind.rawValue.getter() && v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    goto LABEL_17;
  }

  v9 = ContentKind.rawValue.getter();
  v11 = v10;
  if (v9 == ContentKind.rawValue.getter() && v11 == v12)
  {
LABEL_16:

LABEL_17:
    if (qword_100572808 != -1)
    {
      swift_once();
    }

    if (!sub_1002D4890(v1, qword_10057CF48))
    {
      goto LABEL_22;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    goto LABEL_17;
  }

LABEL_22:
  v17 = InterestState.rawValue.getter();
  v19 = v18;
  v15 = 1;
  if (v17 != InterestState.rawValue.getter() || v19 != v20)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      v15 = 1;
      return v15 & 1;
    }

    v22 = InterestState.rawValue.getter();
    v24 = v23;
    if (v22 == InterestState.rawValue.getter() && v24 == v25)
    {
      v15 = 1;
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return v15 & 1;
}

uint64_t sub_1002C5F58()
{
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v3 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetricsFieldInclusionRequest();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v35 = type metadata accessor for MetricsData();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v13 - 8);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for FavoriteInterestAction();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  result = swift_beginAccess();
  if (*(v0 + v18))
  {
    if ((*(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID + 8) & 1) == 0)
    {
      v32 = *(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_adamID);
      v20 = v32;
      v33 = *(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_interestContentKind);
      sub_100168088(&unk_10057DC50);
      v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100400790;
      *&v40 = v20;
      sub_1000366D8();

      v27[3] = BinaryInteger.description.getter();
      v28 = v6;
      v21 = static MetricsTargetType.button.getter();
      v29 = v3;
      v27[2] = v21;
      v27[1] = static MetricsActionType.favorite.getter();
      v27[4] = v15;
      static MetricsActionContext.contextual.getter();
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      static MetricsDataConfiguration.default.getter();
      static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();
      v46 = v40;
      sub_100009104(&v46, &unk_100574650);
      v45 = v41;
      sub_100009104(&v45, &unk_100573A90);
      v44 = v42;
      sub_100009104(&v44, &unk_100574660);
      sub_100037470(v43);

      sub_100009104(v9, &qword_100574040);
      v23 = v28;
      static MetricsFieldInclusionRequest.impressionsSnapshot.getter();
      MetricsData.removingIncludedField(_:)();
      (*(v37 + 8))(v23, v38);
      (*(v10 + 8))(v12, v35);
      ScalarDictionary.init()();
      ActionMetrics.init(data:custom:)();
      FavoriteInterestAction.init(adamID:interestContentKind:actionMetrics:)();
      v24 = v34;
      v39[3] = v34;
      v39[4] = sub_1002C6AF0(&qword_10057D060, &type metadata accessor for FavoriteInterestAction);
      v25 = sub_10000E680(v39);
      v26 = v36;
      (*(v36 + 16))(v25, v17, v24);
      ContextActionsConfiguration.perform(_:)();

      (*(v26 + 8))(v17, v24);
      return sub_100004590(v39);
    }
  }

  return result;
}

uint64_t sub_1002C6584()
{

  v1 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_contextActionType, &qword_100575870);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FavoriteContextAction()
{
  result = qword_10057CF90;
  if (!qword_10057CF90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C66CC()
{
  type metadata accessor for MetricsLabel();
  if (v0 <= 0x3F)
  {
    sub_1001C25E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002C67E4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE800000000000000;
  v5._countAndFlagsBits = 0x657469726F766146;
  v1._object = 0x8000000100468360;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1002C6890@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1002C6924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1002C5B24();
}

uint64_t sub_1002C69D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Podcasts21FavoriteContextAction_configuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1002C6A98(uint64_t a1)
{
  result = sub_1002C6AF0(&unk_1005822D0, type metadata accessor for FavoriteContextAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002C6AF0(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1002C6B44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C6C08()
{
  String.hash(into:)();
}

Swift::Int sub_1002C6CB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002C6D78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002CA468(*a1);
  *a2 = result;
  return result;
}

void sub_1002C6DA8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6465776F6C6C6F66;
  v4 = 0x80000001004643E0;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x65726F7473;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x7972617262696CLL;
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

uint64_t sub_1002C6E28(uint64_t a1)
{
  v2 = sub_1002CA1F4();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

void sub_1002C6E64(uint64_t a1, Swift::UInt a2, unsigned __int8 a3)
{
  v3 = a2;
  if (a3 <= 1u)
  {
    v4 = a3 != 0;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v4 = 2;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v4 = 3;
LABEL_8:
    Hasher._combine(_:)(v4);
    goto LABEL_9;
  }

  v3 = a2 + 4;
LABEL_9:
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002C6ED8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002C6E64(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002C6F34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  sub_1002C6E64(v4, v1, v2);
  return Hasher._finalize()();
}

uint64_t sub_1002C6F98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "implicitlyFollowed";
  }

  else
  {
    v4 = "hasLibraryEpisodes";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "hasLibraryEpisodes";
  }

  else
  {
    v6 = "implicitlyFollowed";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002C7040()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C70BC()
{
  String.hash(into:)();
}

Swift::Int sub_1002C7124()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1002C71A8(unint64_t *a1@<X8>)
{
  v2 = "hasLibraryEpisodes";
  v3 = 0xD000000000000011;
  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = "implicitlyFollowed";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1002C71E4(uint64_t a1)
{
  v2 = sub_1002CA248();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

uint64_t sub_1002C7220(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = "noLibraryEpisodes";
  }

  else
  {
    v4 = "hasPlayedEpisodes";
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = "hasPlayedEpisodes";
  }

  else
  {
    v6 = "noLibraryEpisodes";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002C72C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C7344()
{
  String.hash(into:)();
}

Swift::Int sub_1002C73AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002C7430@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1002C748C(unint64_t *a1@<X8>)
{
  v2 = "hasPlayedEpisodes";
  v3 = 0xD000000000000010;
  if (!*v1)
  {
    v3 = 0xD000000000000011;
    v2 = "noLibraryEpisodes";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1002C74C8(uint64_t a1)
{
  v2 = sub_1002CA29C();

  return EnumStringConvertible<>.description.getter(a1, v2);
}

uint64_t sub_1002C7504(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0x697469736E617254;
  if (a3)
  {
    v4 = 0x3A6E6F28706F6F6CLL;
  }

  v16 = v4;
  v5 = 0xE100000000000000;
  sub_1001F8788();
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 46;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  if (a2)
  {

    v8 = Array.description.getter();
    v10 = v9;

    v11._countAndFlagsBits = v8;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 41;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = 0x746365666665202CLL;
    v5 = 0xEB00000000203A73;
  }

  else
  {
    v13 = 41;
  }

  v14 = v5;
  String.append(_:)(*&v13);

  return v16;
}

uint64_t sub_1002C7674()
{
  sub_100004590(v0 + 16);

  sub_100004590(v0 + 64);
  sub_100004590(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1002C76C4(void *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = v4;
  v79 = a3;
  v9 = type metadata accessor for Logger();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin();
  v78 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v74 - v11;
  sub_100168088(&unk_100575CE0);
  __chkstk_darwin();
  v14 = &v74 - v13;
  v15 = type metadata accessor for PodcastStateModel();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  PodcastStateModel.init(podcast:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100009104(v14, &unk_100575CE0);
    goto LABEL_6;
  }

  (*(v16 + 32))(v18, v14, v15);
  v20 = [v19 managedObjectContext];
  if (v20)
  {
    v21 = v20;
    v76 = v15;
    v22 = *(v5 + 40);
    v23 = *(v5 + 48);
    sub_1000044A0((v5 + 16), v22);
    v24 = *(v23 + 8);
    v77 = v18;
    v25 = v24(v18, v21, a2, v79, a4, v22, v23);
    v56 = v55;
    sub_1002C97F0(v19, v25);
    if (v56)
    {
      v57 = *(v56 + 16);
      v58 = v77;
      if (v57)
      {
        v75 = v21;
        swift_beginAccess();
        v59 = (v56 + 40);
        while (1)
        {
          v61 = *(v59 - 1);
          if (*v59)
          {
            if (*v59 == 1)
            {
              v60 = *(v5 + 56);
              SyncKeysRepository.markBookmarksSyncDirty(_:for:)();
            }

            else
            {
              if (v61 > 1)
              {
                if (v61 == 2)
                {
                  v64 = *(v5 + 128);
                  v65 = *(v5 + 136);
                  sub_1000044A0((v5 + 104), v64);
                  (*(v65 + 8))(v19, v64, v65);
                }

                else if (v61 == 3)
                {
                  v62 = *(v5 + 128);
                  v63 = *(v5 + 136);
                  sub_1000044A0((v5 + 104), v62);
                  (*(v63 + 16))(v19, 1, v62, v63);
                }

                else
                {
                  [v19 setIsTransitioningFromImplicit:1];
                }

                goto LABEL_23;
              }

              if (v61)
              {
                v66 = *(v5 + 88);
                v67 = *(v5 + 96);
                sub_1000044A0((v5 + 64), v66);
                v81 = &v74;
                v68 = *(v66 - 8);
                v69 = __chkstk_darwin();
                v71 = &v74 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v68 + 16))(v71, v69);
                (*(v67 + 8))(v66, v67);
                (*(v68 + 8))(v71, v66);
                v58 = v77;
                PassthroughSubject.send(_:)();

                goto LABEL_23;
              }

              v60 = *(v5 + 56);
              SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
            }
          }

          else
          {
            v60 = *(v5 + 56);
            SyncKeysRepository.markSubscriptionSyncDirty(_:for:)();
          }

LABEL_23:
          v59 += 16;
          if (!--v57)
          {

            goto LABEL_39;
          }
        }
      }

LABEL_39:
      v72 = *(v16 + 8);
      v73 = v58;
    }

    else
    {

      v72 = *(v16 + 8);
      v73 = v77;
    }

    return v72(v73, v76);
  }

  (*(v16 + 8))(v18, v15);
LABEL_6:
  static Logger.podcastsStatesCoordination.getter();
  v26 = v19;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v29 = 136381699;
    v30 = [v26 title];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0x6C746974206F6E3CLL;
      v34 = 0xEA00000000003E65;
    }

    v36 = 0x3E7974706D653CLL;
    v37 = sub_1000153E0(v32, v34, v82);

    *(v29 + 4) = v37;
    *(v29 + 12) = 2080;
    v38 = [v26 uuid];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v36 = 0x3E7974706D653CLL;
    }

    else
    {
      v42 = 0xE700000000000000;
      v40 = 0x3E7974706D653CLL;
    }

    v43 = sub_1000153E0(v40, v42, v82);

    *(v29 + 14) = v43;
    *(v29 + 22) = 2080;
    v82[4] = [v26 managedObjectContext];
    sub_100168088(&qword_1005737C8);
    v44 = String.init<A>(describing:)();
    v46 = sub_1000153E0(v44, v45, v82);

    *(v29 + 24) = v46;
    *(v29 + 32) = 2049;
    v47 = [v26 storeCollectionId];

    *(v29 + 34) = v47;
    *(v29 + 42) = 2081;
    v48 = [v26 feedURL];
    if (v48)
    {
      v49 = v48;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;
    }

    else
    {
      v51 = 0xE700000000000000;
    }

    v53 = v80;
    v52 = v81;
    v54 = sub_1000153E0(v36, v51, v82);

    *(v29 + 44) = v54;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to create PodcastStateModel from Podcast, or Podcast without a valid managedObjectContext. Podcast: %{private}s, uuid: %s, MOC: %s, adamID: %{private}lld, feedURL: %{private}s.", v29, 0x34u);
    swift_arrayDestroy();

    return (*(v53 + 8))(v12, v52);
  }

  else
  {

    return (*(v80 + 8))(v12, v81);
  }
}

void sub_1002C82C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, NSObject *a6)
{
  v112 = a6;
  LODWORD(v111) = a5;
  v110 = a4;
  v8 = type metadata accessor for PodcastStateModel();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v108 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = __chkstk_darwin(v12);
  v115 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v114 = &v100 - v16;
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v106 = &v100 - v19;
  v20 = __chkstk_darwin(v18);
  v105 = &v100 - v21;
  v22 = __chkstk_darwin(v20);
  v104 = &v100 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v100 - v25;
  __chkstk_darwin(v24);
  v113 = &v100 - v27;
  v28 = type metadata accessor for Logger();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v109 = &v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v107 = &v100 - v32;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v103 = v9;
  v101 = v29;
  v37 = PodcastStateModel.id.getter();
  v102 = v28;
  if (v36)
  {
    v38 = v35;
    if (v36 == 1)
    {
      v39 = String._bridgeToObjectiveC()();
      sub_1001F876C(v37, v38, 1u);
      v40 = [a3 podcastForUuid:v39];
    }

    else
    {
      v39 = String._bridgeToObjectiveC()();
      sub_1001F876C(v37, v38, 2u);
      v40 = [a3 podcastForFeedUrl:v39];
    }

    v41 = v40;

    if (v41)
    {
      goto LABEL_11;
    }

LABEL_6:
    v115 = v34;
    v42 = v107;
    static Logger.podcastsStatesCoordination.getter();
    v43 = v103;
    v44 = *(v103 + 16);
    v44(v113, a2, v8);
    v44(v26, a2, v8);
    v114 = v26;
    v45 = v104;
    v44(v104, a2, v8);
    v46 = v105;
    v44(v105, a2, v8);
    v47 = v106;
    v44(v106, a2, v8);
    v48 = a3;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v112 = v49;
      v51 = v114;
      v52 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v116[0] = v110;
      *v52 = 136316419;
      v53 = [v48 name];
      LODWORD(v111) = v50;
      if (v53)
      {
        v54 = v53;
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;
      }

      else
      {
        v57 = 0xE500000000000000;
        v55 = 0x3E6C696E3CLL;
      }

      v80 = v104;
      v81 = v113;
      v82 = sub_1000153E0(v55, v57, v116);

      *(v52 + 4) = v82;
      *(v52 + 12) = 2081;
      v83 = PodcastStateModel.id.getter();
      v85 = v84;
      v87 = v86;
      v88 = PodcastIdentifier.description.getter();
      v90 = v89;
      sub_1001F876C(v83, v85, v87);
      v91 = *(v103 + 8);
      v91(v81, v8);
      v92 = sub_1000153E0(v88, v90, v116);

      *(v52 + 14) = v92;
      *(v52 + 22) = 2080;
      v93 = PodcastStateModel.uuid.getter();
      v95 = v94;
      v91(v51, v8);
      v96 = sub_1000153E0(v93, v95, v116);

      *(v52 + 24) = v96;
      *(v52 + 32) = 1024;
      LODWORD(v96) = PodcastStateModel.isHidden.getter() & 1;
      v91(v80, v8);
      *(v52 + 34) = v96;
      *(v52 + 38) = 1024;
      v97 = v105;
      LODWORD(v96) = PodcastStateModel.isFollowed.getter() & 1;
      v91(v97, v8);
      *(v52 + 40) = v96;
      *(v52 + 44) = 1024;
      v98 = v106;
      LODWORD(v96) = PodcastStateModel.isImplicitlyFollowed.getter() & 1;
      v91(v98, v8);
      *(v52 + 46) = v96;
      v99 = v112;
      _os_log_impl(&_mh_execute_header, v112, v111, "Unable to find corresponding MTPodcast in context %s for PodcastStateModel with ID: %{private}s, uuid: %s, isHidden: %{BOOL}d, isFollowed: %{BOOL}d, isImplicitlyFollowed: %{BOOL}d.", v52, 0x32u);
      swift_arrayDestroy();

      (*(v101 + 8))(v107, v102);
    }

    else
    {
      v79 = *(v43 + 8);
      v79(v47, v8);
      v79(v46, v8);
      v79(v45, v8);

      v79(v114, v8);
      v79(v113, v8);
      (*(v101 + 8))(v42, v102);
    }

    return;
  }

  v41 = [a3 podcastForStoreId:v37];
  if (!v41)
  {
    goto LABEL_6;
  }

LABEL_11:
  v113 = v41;
  v58 = *(v34 + 5);
  v59 = *(v34 + 6);
  sub_1000044A0(v34 + 2, v58);
  v60 = (*(v59 + 8))(a2, a3, v110, v111, v112, v58, v59);
  v112 = 0;
  v62 = v61;
  v63 = v113;
  sub_1002C97F0(v113, v60);
  if (v62)
  {
    v64 = *(v62 + 16);
    if (v64)
    {
      swift_beginAccess();
      for (i = (v62 + 40); ; i += 16)
      {
        v67 = *(i - 1);
        if (*i)
        {
          if (*i != 1)
          {
            if (v67 <= 1)
            {
              if (v67)
              {
                v73 = *(v34 + 11);
                v74 = *(v34 + 12);
                v75 = sub_1000044A0(v34 + 8, v73);
                v76 = *(v73 - 8);
                __chkstk_darwin(v75);
                v78 = &v100 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v76 + 16))(v78);
                (*(v74 + 8))(v73, v74);
                (*(v76 + 8))(v78, v73);
                PassthroughSubject.send(_:)();
              }

              else
              {
                v70 = *(v34 + 7);
                SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
              }
            }

            else if (v67 == 2)
            {
              v71 = *(v34 + 16);
              v72 = *(v34 + 17);
              sub_1000044A0(v34 + 13, v71);
              (*(v72 + 8))(v113, v71, v72);
            }

            else if (v67 == 3)
            {
              v68 = *(v34 + 16);
              v69 = *(v34 + 17);
              sub_1000044A0(v34 + 13, v68);
              (*(v69 + 16))(v113, 1, v68, v69);
            }

            else
            {
              [v113 setIsTransitioningFromImplicit:1];
            }

            goto LABEL_16;
          }

          v66 = *(v34 + 7);
          SyncKeysRepository.markBookmarksSyncDirty(_:for:)();
        }

        else
        {
          v66 = *(v34 + 7);
          SyncKeysRepository.markSubscriptionSyncDirty(_:for:)();
        }

LABEL_16:
        if (!--v64)
        {

          return;
        }
      }
    }
  }
}

uint64_t sub_1002C90F8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v41 = a4;
  v7 = type metadata accessor for Logger();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin();
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v36 - v10;
  __chkstk_darwin();
  v36[4] = v36 - v12;
  sub_100168088(&unk_100575CE0);
  __chkstk_darwin();
  v14 = v36 - v13;
  v15 = type metadata accessor for PodcastStateModel();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v36[3] = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = v36 - v18;
  __chkstk_darwin();
  v21 = v36 - v20;
  v37 = a2;
  v38 = a3;
  v22 = String._bridgeToObjectiveC()();
  v23 = [a1 podcastForUuid:v22];

  if (v23)
  {
    v24 = v23;
    PodcastStateModel.init(podcast:)();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_100009104(v14, &unk_100575CE0);
      static Logger.podcastsStatesCoordination.getter();
      v25 = static os_log_type_t.error.getter();
      v26 = Logger.logObject.getter();
      if (os_log_type_enabled(v26, v25))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_1000153E0(v37, v38, &v42);
        _os_log_impl(&_mh_execute_header, v26, v25, "Failed to create PodcastStateModel from show %s for current podcast state lookup.", v27, 0xCu);
        sub_100004590(v28);
      }

      else
      {
      }

      result = (*(v39 + 8))(v11, v40);
      v34 = 4;
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      (*(v16 + 16))(v19, v21, v15);
      v34 = PodcastStateModel.sanitizedState()();

      v35 = *(v16 + 8);
      v35(v19, v15);
      result = (v35)(v21, v15);
    }
  }

  else
  {
    static Logger.podcastsStatesCoordination.getter();
    v29 = static os_log_type_t.error.getter();
    v30 = Logger.logObject.getter();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1000153E0(v37, v38, &v42);
      _os_log_impl(&_mh_execute_header, v30, v29, "Failed to locate show %s for current podcast state lookup.", v31, 0xCu);
      sub_100004590(v32);
    }

    result = (*(v39 + 8))(v9, v40);
    v34 = 3;
  }

  *v41 = v34;
  return result;
}

id sub_1002C97F0(void *a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      [a1 setSubscribed:0];
      [a1 setIsImplicitlyFollowed:0];
      v5 = v2[16];
      v6 = v2[17];
      sub_1000044A0(v2 + 13, v5);
      return (*(v6 + 24))(a1, v5, v6);
    }

    [a1 setSubscribed:0];
    [a1 setIsImplicitlyFollowed:1];
  }

  else
  {
    [a1 setSubscribed:a2 == 0];
    [a1 setIsImplicitlyFollowed:0];
  }

  return [a1 setHidden:0];
}

void sub_1002C98FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(a2 + 8 * i + 32);
      }

      v6 = v5;
      sub_1002C76C4(v5, 4, 4u, 3);
    }
  }
}

uint64_t sub_1002C99B4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0x776F6C6C6F666E75;
    }

    else
    {
      v3 = 0x28776F6C6C6F66;
    }

    v11 = v3;
    v4 = MTSubscriptionSyncType.description.getter();
    goto LABEL_16;
  }

  if (a2 == 2)
  {
    v2 = 0x6B72616D6B6F6F62;
    goto LABEL_8;
  }

  if (a2 == 3)
  {
    v2 = 0x616D6B6F6F626E75;
LABEL_8:
    v11 = v2;
    v4 = MTBookmarksSyncType.description.getter();
LABEL_16:
    String.append(_:)(*&v4);

    v9._countAndFlagsBits = 41;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return v11;
  }

  if (a1 > 4)
  {
    if (a1 > 6)
    {
      v6 = 0xD000000000000015;
      v7 = 0xD000000000000017;
      if (a1 == 8)
      {
        v7 = 0xD000000000000029;
      }

      v8 = a1 == 7;
      goto LABEL_21;
    }

    if (a1 == 5)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (a1 > 1)
    {
      v6 = 0xD000000000000016;
      v7 = 0xD000000000000010;
      if (a1 != 3)
      {
        v7 = 0xD000000000000014;
      }

      v8 = a1 == 2;
LABEL_21:
      if (v8)
      {
        return v6;
      }

      else
      {
        return v7;
      }
    }

    if (a1)
    {
      return 0x6F4465766F6D6572;
    }

    else
    {
      return 0x64616F6C6E776F64;
    }
  }
}

unint64_t sub_1002C9C04(uint64_t a1, char a2)
{
  if (!a2)
  {
    _StringGuts.grow(_:)(21);

    v9[0] = 0xD000000000000012;
    v9[1] = 0x800000010046DC60;
    v2 = MTSubscriptionSyncType.description.getter();
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    _StringGuts.grow(_:)(17);

    strcpy(v9, "syncBookmarks(");
    HIBYTE(v9[1]) = -18;
    v2 = MTBookmarksSyncType.description.getter();
LABEL_5:
    String.append(_:)(*&v2);

    v4._countAndFlagsBits = 41;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    return v9[0];
  }

  v6 = 0x6546657461647075;
  v7 = 0xD000000000000016;
  if (a1 != 3)
  {
    v7 = 0xD00000000000001FLL;
  }

  if (a1 != 2)
  {
    v6 = v7;
  }

  v8 = 0xD000000000000019;
  if (!a1)
  {
    v8 = 0xD000000000000014;
  }

  if (a1 <= 1)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for PodcastsStateTransitions.Event(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.Event(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsStateTransitions.Event(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002C9E74(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1002C9E8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.Effect(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PodcastsStateTransitions.Effect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002C9F40(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1002C9F58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1002C9F84()
{
  result = qword_10057D130;
  if (!qword_10057D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D130);
  }

  return result;
}

unint64_t sub_1002C9FE0()
{
  result = qword_10057D138;
  if (!qword_10057D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D138);
  }

  return result;
}

unint64_t sub_1002CA038()
{
  result = qword_10057D140;
  if (!qword_10057D140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D140);
  }

  return result;
}

unint64_t sub_1002CA094()
{
  result = qword_10057D148;
  if (!qword_10057D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D148);
  }

  return result;
}

unint64_t sub_1002CA0EC()
{
  result = qword_10057D150;
  if (!qword_10057D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D150);
  }

  return result;
}

unint64_t sub_1002CA148()
{
  result = qword_10057D158;
  if (!qword_10057D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D158);
  }

  return result;
}

unint64_t sub_1002CA1A0()
{
  result = qword_10057D160;
  if (!qword_10057D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D160);
  }

  return result;
}

unint64_t sub_1002CA1F4()
{
  result = qword_10057D168;
  if (!qword_10057D168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D168);
  }

  return result;
}

unint64_t sub_1002CA248()
{
  result = qword_10057D170;
  if (!qword_10057D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D170);
  }

  return result;
}

unint64_t sub_1002CA29C()
{
  result = qword_10057D178;
  if (!qword_10057D178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D178);
  }

  return result;
}

uint64_t sub_1002CA2F0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (a2 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    return a1 == a3;
  }

  if (a2 != 3)
  {
    if (a1 > 4)
    {
      if (a1 <= 6)
      {
        if (a1 == 5)
        {
          if (a4 != 4 || a3 != 5)
          {
            return 0;
          }
        }

        else if (a4 != 4 || a3 != 6)
        {
          return 0;
        }
      }

      else if (a1 == 7)
      {
        if (a4 != 4 || a3 != 7)
        {
          return 0;
        }
      }

      else if (a1 == 8)
      {
        if (a4 != 4 || a3 != 8)
        {
          return 0;
        }
      }

      else if (a4 != 4 || a3 != 9)
      {
        return 0;
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 != 4 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 4 || a3)
      {
        return 0;
      }
    }

    else if (a1 == 2)
    {
      if (a4 != 4 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a1 == 3)
    {
      if (a4 != 4 || a3 != 3)
      {
        return 0;
      }
    }

    else if (a4 != 4 || a3 != 4)
    {
      return 0;
    }

    return 1;
  }

  if (a4 == 3)
  {
    return a1 == a3;
  }

  return 0;
}

unint64_t sub_1002CA468(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004DF160, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for PodcastsStateTransitions.EpisodesState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for PodcastsStateTransitions.EpisodesState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_1002CA624(uint64_t a1, uint64_t a2, int a3)
{
  sub_1001AA70C();
  result = sub_1002BBF0C(a1, a2, a3);
  if (result)
  {
    v7 = result;
    v8 = sub_1002CA7A8();
    if (v9)
    {
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        sub_100168088(&unk_100574680);
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1004007B0;
        *(v11 + 32) = v7;
        v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v13 = v7;
        sub_100168088(&unk_100574A00);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v15 = String._bridgeToObjectiveC()();

        v16 = [v12 initWithItems:isa header:v15 headerSubtitle:0 headerImage:0 headerButton:0 sectionIndexTitle:0];

        return v16;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1002CA7A8()
{
  v0 = sub_100168088(&qword_100578FE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for EpisodePlayState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CA950(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1002CAB7C(v2);
    return 0;
  }

  else
  {
    sub_100239BE4(v2, v6);
    type metadata accessor for SmartPlayButtonController();
    BaseObjectGraph.inject<A>(_:)();
    dispatch thunk of SmartPlayButtonController.apply(model:)();
    v8 = dispatch thunk of SmartPlayButtonController.buttonTitle(for:)();

    sub_10021F0A0(v6);
    return v8;
  }
}

uint64_t sub_1002CA950@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EpisodeOffer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_10057A4A0);
  BaseObjectGraph.inject<A>(_:)();
  if (!ShowHeader.episodeToPlay.getter())
  {
    if (ShowHeader.primaryButtonAction.getter())
    {
      type metadata accessor for PlayAction();
      if (swift_dynamicCastClass())
      {
        PlayAction.episodeOffer.getter();
        EpisodeOffer.contentId.getter();
        (*(v3 + 8))(v5, v2);
        dispatch thunk of EpisodeStateController.stateMachine(for:)();
        dispatch thunk of EpisodeStateMachine.currentState.getter();

        goto LABEL_3;
      }
    }

    v6 = 1;
    goto LABEL_10;
  }

  Episode.uuid.getter();
  dispatch thunk of EpisodeStateController.stateMachine(for:)();

  dispatch thunk of EpisodeStateMachine.currentState.getter();

LABEL_3:

  v6 = 0;
LABEL_10:
  v7 = type metadata accessor for EpisodePlayState();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_1002CAB7C(uint64_t a1)
{
  v2 = sub_100168088(&qword_100578FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002CABF4()
{

  sub_10023A524(v0 + 48);

  return swift_deallocClassInstance();
}

id sub_1002CAC68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = OBJC_IVAR___MTSwiftEpisodeListManifest_settings;
    v8 = type metadata accessor for EpisodeListSettings();
    v9 = *(v8 - 8);
    (*(v9 + 16))(v4 + v7, a3, v8);
    v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTEpisodeEntityName];
    v11 = v4;
    v12 = EpisodeListSettings.playPredicate.getter();
    [v10 setPredicate:v12];

    EpisodeListSettings.sort.getter();
    EpisodeSortType.playDescriptors.getter();
    sub_100029528();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setSortDescriptors:isa];

    v14 = String._bridgeToObjectiveC()();

    v18.receiver = v11;
    v18.super_class = type metadata accessor for EpisodeListManifest();
    v15 = objc_msgSendSuper2(&v18, "initWithInitialEpisodeUuid:fetchRequest:", v14, v10);

    (*(v9 + 8))(a3, v8);
  }

  else
  {
    v16 = type metadata accessor for EpisodeListSettings();
    (*(*(v16 - 8) + 8))(a3, v16);

    type metadata accessor for EpisodeListManifest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v15;
}

id sub_1002CAF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EpisodeListManifest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1002CAFF4()
{
  v1 = v0;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for EpisodeListSettings();
  sub_1002CBB9C(&qword_10057D2F0);
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  v24.receiver = v0;
  v24.super_class = type metadata accessor for EpisodeListManifest();
  v5 = objc_msgSendSuper2(&v24, "activity");
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v9 = String._bridgeToObjectiveC()();
    [v7 setValue:isa forKey:v9];
  }

  v10 = [v1 explicitSortOrder];
  if (v10)
  {

    swift_allocObject();
    JSONEncoder.init()();
    v11 = [v1 explicitSortOrder];
    if (v11)
    {
      v12 = v11;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = 0;
    }

    v23 = v13;
    sub_100168088(&qword_100582CD0);
    sub_1002CBBE0();
    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    if (v6)
    {
      v19 = v6;
      v20 = Data._bridgeToObjectiveC()().super.isa;
      v21 = String._bridgeToObjectiveC()();
      [v19 setValue:v20 forKey:{v21, v23}];
      sub_1001F6D74(v2, v4);
      sub_1001F6D74(v16, v18);

      return v6;
    }

    sub_1001F6D74(v2, v4);
    v14 = v16;
    v15 = v18;
  }

  else
  {
    v14 = v2;
    v15 = v4;
  }

  sub_1001F6D74(v14, v15);
  return v6;
}

uint64_t sub_1002CB2F0(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *))
{
  sub_100168088(&unk_100573A80);
  __chkstk_darwin();
  v9 = &v41 - v8;
  v10 = type metadata accessor for EpisodeListSettings();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = &v41 - v15;
  if (a2)
  {

    v17 = [a3 userInfo];
    if (v17)
    {
      v44 = a1;
      v45 = v11;
      v46 = a4;
      v18 = v17;
      v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = 0xD00000000000001ELL;
      v48 = 0x800000010046DD50;
      AnyHashable.init<A>(_:)();
      if (*(v19 + 16) && (v20 = sub_100202028(&v49), (v21 & 1) != 0))
      {
        sub_10001B944(*(v19 + 56) + 32 * v20, &v51);
        sub_10016BE9C(&v49);

        if (*(&v52 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {

            return (v46)(0, v24);
          }

          v22 = v50;
          v43 = v49;
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_1002CBB9C(&qword_10057D2E8);
          v42 = v22;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();

          v25 = v45;
          (*(v45 + 56))(v9, 0, 1, v10);
          (*(v25 + 32))(v16, v9, v10);
          (*(v25 + 16))(v13, v16, v10);
          v26 = objc_allocWithZone(type metadata accessor for EpisodeListManifest());
          v27 = sub_1002CAC68(v44, a2, v13);
          v28 = [a3 userInfo];
          if (v28)
          {
            v29 = v28;
            v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            v47 = 0xD000000000000014;
            v48 = 0x800000010046DD70;
            AnyHashable.init<A>(_:)();
            v31 = v42;
            v32 = v43;
            if (*(v30 + 16) && (v33 = sub_100202028(&v49), (v34 & 1) != 0))
            {
              sub_10001B944(*(v30 + 56) + 32 * v33, &v51);
              sub_10016BE9C(&v49);

              if (*(&v52 + 1))
              {
                if (swift_dynamicCast())
                {
                  v36 = v49;
                  v35 = v50;
                  swift_allocObject();
                  JSONDecoder.init()();
                  sub_100168088(&qword_10057C9C0);
                  sub_1001F93CC(&qword_100576B38);
                  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

                  if (!v27)
                  {
                    sub_1001F6D74(v36, v35);

                    v37 = 0;
                    v31 = v42;
                    goto LABEL_27;
                  }

                  v39 = v27;
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v39 setExplicitSortOrder:isa];
                  sub_1001F6D74(v36, v35);

                  v31 = v42;
                  goto LABEL_25;
                }

LABEL_24:
                if (!v27)
                {
                  v37 = 0;
                  goto LABEL_27;
                }

LABEL_25:
                v37 = v27;
LABEL_27:
                v38 = v27;
                v46(v37);
                sub_1001F6D74(v32, v31);

                return (*(v45 + 8))(v16, v10);
              }
            }

            else
            {

              sub_10016BE9C(&v49);
              v51 = 0u;
              v52 = 0u;
            }
          }

          else
          {
            v51 = 0u;
            v52 = 0u;
            v31 = v42;
            v32 = v43;
          }

          sub_100009104(&v51, &unk_1005783D0);
          goto LABEL_24;
        }
      }

      else
      {

        sub_10016BE9C(&v49);
        v51 = 0u;
        v52 = 0u;
      }

      a4 = v46;
    }

    else
    {

      v51 = 0u;
      v52 = 0u;
    }

    sub_100009104(&v51, &unk_1005783D0);
  }

  return (a4)(0, v14);
}

uint64_t sub_1002CB9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);
}

uint64_t sub_1002CBB9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EpisodeListSettings();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002CBBE0()
{
  result = qword_10057D2F8;
  if (!qword_10057D2F8)
  {
    sub_100168310(&qword_100582CD0);
    sub_1001F93CC(&qword_100576B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D2F8);
  }

  return result;
}

uint64_t sub_1002CBC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v6 = sub_100168088(&qword_100578E88);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for URLComponents();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  if (!a1)
  {
    goto LABEL_24;
  }

  type metadata accessor for ChannelContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    sub_1002CC154(a2, a3);
LABEL_4:
  }

  type metadata accessor for EpisodeContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    v20 = sub_1002CDDE8();

    if (v20)
    {
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v13 + 48))(v11, 1, v12) != 1)
      {
        (*(v13 + 32))(v18, v11, v12);

        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        return (*(v13 + 8))(v18, v12);
      }

      v21 = v11;
LABEL_11:
      sub_100009104(v21, &qword_100578E88);
      v22 = type metadata accessor for URL();
      return (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
    }

LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for PodcastContextActionConfiguration(0);
  if (swift_dynamicCastClass())
  {

    sub_1002CC71C(a2, a3);
    goto LABEL_4;
  }

  type metadata accessor for NowPlayingContextActionConfiguration();
  if (swift_dynamicCastClass())
  {

    sub_1002CD39C(a2, a3);
    goto LABEL_4;
  }

  type metadata accessor for TranscriptSelectionContextActionConfiguration(0);
  v23 = swift_dynamicCastClass();
  if (v23 && *(v23 + qword_1005766C8))
  {

    if (sub_1002CDDE8())
    {
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      if ((*(v13 + 48))(v8, 1, v12) != 1)
      {
        (*(v13 + 32))(v15, v8, v12);

        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        return (*(v13 + 8))(v15, v12);
      }

      v21 = v8;
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_24:
  v24 = type metadata accessor for URL();
  v25 = *(*(v24 - 8) + 56);

  return v25(a3, 1, 1, v24);
}

uint64_t sub_1002CC154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v41 = a2;
  v3 = sub_100168088(&qword_100578E88);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v40 = type metadata accessor for URLComponents();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for URLQueryItem();
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v36 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + qword_1005932C8 + 16);
  v10 = *(v2 + qword_1005932C8 + 24);
  v42 = *(v2 + qword_1005932C8 + 8);
  sub_1000366D8();

  v11 = BinaryInteger.description.getter();
  v13 = v12;
  sub_100168088(&qword_100578E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100401B10;
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  *(inited + 112) = 0;
  *(inited + 120) = 0;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = 0;
  *(inited + 152) = 0;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  *(inited + 176) = v9;
  *(inited + 184) = v10;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 200) = 0xE900000000000064;
  *(inited + 208) = v11;
  *(inited + 216) = v13;
  v15 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98);
  swift_arrayDestroy();
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 64);
  v19 = (v16 + 63) >> 6;
  v34 = v7;

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      v25 = (*(v15 + 56) + 16 * v24);
      if (v25[1])
      {
        break;
      }

      if (!v18)
      {
        goto LABEL_6;
      }
    }

    v33[1] = *v25;
    v33[0] = *(*(v15 + 48) + 16 * v24);

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_100243BD4(0, v22[2] + 1, 1, v22);
    }

    v28 = v22[2];
    v27 = v22[3];
    if (v28 >= v27 >> 1)
    {
      v22 = sub_100243BD4(v27 > 1, v28 + 1, 1, v22);
    }

    v22[2] = v28 + 1;
    result = (*(v34 + 32))(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v36, v35);
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      return result;
    }

    if (v26 >= v19)
    {
      break;
    }

    v18 = *(v15 + 64 + 8 * v26);
    ++v21;
    if (v18)
    {
      v21 = v26;
      goto LABEL_4;
    }
  }

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v29 = v39;
  v30 = v40;
  if ((*(v39 + 48))(v5, 1, v40) == 1)
  {

    sub_100009104(v5, &qword_100578E88);
    v31 = type metadata accessor for URL();
    return (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  }

  else
  {
    v32 = v37;
    (*(v29 + 32))(v37, v5, v30);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    return (*(v29 + 8))(v32, v30);
  }
}

uint64_t sub_1002CC71C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v109 = a2;
  v3 = sub_100168088(&qword_100578E88);
  __chkstk_darwin(v3 - 8);
  v104 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v98 - v6;
  v7 = type metadata accessor for URLComponents();
  v106 = *(v7 - 8);
  v107 = v7;
  __chkstk_darwin(v7);
  v102 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v101 = &v98 - v10;
  v99 = type metadata accessor for URLQueryItem();
  v108 = *(v99 - 8);
  __chkstk_darwin(v99);
  v100 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v98 = &v98 - v13;
  v14 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  v20 = type metadata accessor for ShowOffer();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = qword_100576738;
  v25 = *(v2 + qword_100576738);
  v26 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
  swift_beginAccess();
  sub_1002CF334(v25 + v26, v19, type metadata accessor for PodcastContextActionDataType);
  type metadata accessor for PodcastContextActionDataType.Kind(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v27 = ShowOffer.title.getter();
    v29 = v28;
    v30 = ShowOffer.adamId.getter();
    (*(v21 + 8))(v23, v20);
    v111 = v30;
    sub_1000366D8();
    v31 = BinaryInteger.description.getter();
    v33 = v32;
    sub_100168088(&qword_100578E90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100401B10;
    *(inited + 32) = 0x4E65646F73697065;
    *(inited + 40) = 0xEB00000000656D61;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0x4965646F73697065;
    *(inited + 72) = 0xE900000000000064;
    *(inited + 80) = 0;
    *(inited + 88) = 0;
    *(inited + 96) = 0x4E74736163646F70;
    *(inited + 104) = 0xEB00000000656D61;
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 128) = 0x4974736163646F70;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = v31;
    *(inited + 152) = v33;
    *(inited + 160) = 0x4E6C656E6E616863;
    *(inited + 168) = 0xEB00000000656D61;
    *(inited + 176) = 0;
    *(inited + 184) = 0;
    *(inited + 192) = 0x496C656E6E616863;
    *(inited + 208) = 0;
    *(inited + 216) = 0;
    *(inited + 200) = 0xE900000000000064;
    v35 = sub_10016A870(inited);
    swift_setDeallocating();
    sub_100168088(&qword_100578E98);
    swift_arrayDestroy();
    v36 = 1 << *(v35 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(v35 + 64);
    v39 = (v36 + 63) >> 6;
    v40 = (v108 + 32);

    v42 = 0;
    v43 = _swiftEmptyArrayStorage;
    if (!v38)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      while (1)
      {
        v44 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v45 = v44 | (v42 << 6);
        v46 = (*(v35 + 56) + 16 * v45);
        if (v46[1])
        {
          break;
        }

        if (!v38)
        {
          goto LABEL_7;
        }
      }

      v101 = *v46;
      v98 = *(*(v35 + 48) + 16 * v45);

      URLQueryItem.init(name:value:)();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_100243BD4(0, v43[2] + 1, 1, v43);
      }

      v50 = v43[2];
      v49 = v43[3];
      v51 = v108;
      if (v50 >= v49 >> 1)
      {
        v43 = sub_100243BD4(v49 > 1, v50 + 1, 1, v43);
      }

      v43[2] = v50 + 1;
      v52 = v43 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v50;
      v40 = v103;
      result = (*(v51 + 32))(v52, v100, v99);
    }

    while (v38);
    while (1)
    {
LABEL_7:
      v47 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v47 >= v39)
      {
        break;
      }

      v38 = *(v35 + 64 + 8 * v47);
      ++v42;
      if (v38)
      {
        v42 = v47;
        goto LABEL_5;
      }
    }

    v61 = v104;
    URLComponents.init(url:resolvingAgainstBaseURL:)();
    v63 = v106;
    v62 = v107;
    if ((*(v106 + 48))(v61, 1, v107) == 1)
    {

      goto LABEL_48;
    }

    v64 = v102;
    (*(v63 + 32))(v102, v61, v62);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    return (*(v63 + 8))(v64, v62);
  }

  else
  {
    sub_1002CF40C(v19, type metadata accessor for PodcastContextActionDataType.Kind);
    v53 = *(v2 + v24);
    v54 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1002CF334(v53 + v54, v16, type metadata accessor for PodcastContextActionDataType);
    v55 = sub_100215D14();
    sub_1002CF40C(v16, type metadata accessor for PodcastContextActionDataType);
    if (v55)
    {
      v56 = [v55 title];
      if (v56)
      {
        v57 = v56;
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      [v55 storeCollectionId];
      v110 = AdamID.init(rawValue:)();
      sub_1000366D8();
      v102 = BinaryInteger.description.getter();
      v104 = v65;
      v66 = [v55 channel];
      if (v66 && (v67 = v66, v68 = [v66 name], v67, v68))
      {
        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      v72 = [v55 channel];
      if (v72)
      {
        v73 = v72;
        [v72 storeId];

        v110 = AdamID.init(rawValue:)();
        v74 = BinaryInteger.description.getter();
        v76 = v75;
      }

      else
      {
        v74 = 0;
        v76 = 0;
      }

      sub_100168088(&qword_100578E90);
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_100401B10;
      *(v77 + 32) = 0x4E65646F73697065;
      *(v77 + 40) = 0xEB00000000656D61;
      *(v77 + 48) = 0;
      *(v77 + 56) = 0;
      *(v77 + 64) = 0x4965646F73697065;
      *(v77 + 72) = 0xE900000000000064;
      *(v77 + 80) = 0;
      *(v77 + 88) = 0;
      *(v77 + 96) = 0x4E74736163646F70;
      *(v77 + 104) = 0xEB00000000656D61;
      *(v77 + 112) = v58;
      *(v77 + 120) = v60;
      *(v77 + 128) = 0x4974736163646F70;
      v78 = v102;
      *(v77 + 136) = 0xE900000000000064;
      *(v77 + 144) = v78;
      *(v77 + 152) = v104;
      *(v77 + 160) = 0x4E6C656E6E616863;
      *(v77 + 168) = 0xEB00000000656D61;
      *(v77 + 176) = v69;
      *(v77 + 184) = v71;
      *(v77 + 192) = 0x496C656E6E616863;
      *(v77 + 200) = 0xE900000000000064;
      *(v77 + 208) = v74;
      *(v77 + 216) = v76;
      v79 = sub_10016A870(v77);
      swift_setDeallocating();
      sub_100168088(&qword_100578E98);
      swift_arrayDestroy();
      v80 = 1 << *(v79 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v79 + 64);
      v83 = (v80 + 63) >> 6;
      v84 = (v108 + 32);

      v85 = 0;
      v86 = _swiftEmptyArrayStorage;
      if (!v82)
      {
        goto LABEL_36;
      }

      do
      {
LABEL_34:
        while (1)
        {
          v87 = __clz(__rbit64(v82));
          v82 &= v82 - 1;
          v88 = v87 | (v85 << 6);
          v89 = (*(v79 + 56) + 16 * v88);
          if (v89[1])
          {
            break;
          }

          if (!v82)
          {
            goto LABEL_36;
          }
        }

        v104 = v84;
        v102 = *v89;
        v100 = *(*(v79 + 48) + 16 * v88);

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100243BD4(0, v86[2] + 1, 1, v86);
        }

        v92 = v86[2];
        v91 = v86[3];
        if (v92 >= v91 >> 1)
        {
          v86 = sub_100243BD4(v91 > 1, v92 + 1, 1, v86);
        }

        v86[2] = v92 + 1;
        v93 = v86 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v92;
        v84 = v104;
        result = (*(v108 + 32))(v93, v98, v99);
      }

      while (v82);
      while (1)
      {
LABEL_36:
        v90 = v85 + 1;
        if (__OFADD__(v85, 1))
        {
LABEL_52:
          __break(1u);
          return result;
        }

        if (v90 >= v83)
        {
          break;
        }

        v82 = *(v79 + 64 + 8 * v90);
        ++v85;
        if (v82)
        {
          v85 = v90;
          goto LABEL_34;
        }
      }

      v61 = v103;
      URLComponents.init(url:resolvingAgainstBaseURL:)();
      v95 = v106;
      v94 = v107;
      if ((*(v106 + 48))(v61, 1, v107) != 1)
      {
        v97 = v101;
        (*(v95 + 32))(v101, v61, v94);
        URLComponents.queryItems.setter();
        URLComponents.url.getter();

        return (*(v95 + 8))(v97, v94);
      }

LABEL_48:
      sub_100009104(v61, &qword_100578E88);
    }

    v96 = type metadata accessor for URL();
    return (*(*(v96 - 8) + 56))(v109, 1, 1, v96);
  }
}

uint64_t sub_1002CD39C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = sub_100168088(&qword_100578E88);
  __chkstk_darwin(v4 - 8);
  v6 = v58 - v5;
  v7 = type metadata accessor for URLComponents();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for URLQueryItem();
  v70 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = v58 - v13;
  v14 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v15 = [v14 author];

  v68 = v7;
  v67 = v6;
  v66 = v8;
  v65 = a1;
  v62 = v10;
  if (v15 && (v16 = [v15 name], v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  type metadata accessor for NowPlayingTranscriptSelectionContextActionConfiguration();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
  }

  v21 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v22 = [v21 title];

  if (v22)
  {
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = dispatch thunk of NowPlayingContextActionConfiguration.modelObject.getter();
  v27 = [v26 podcast];

  if (v27 && (v28 = MPModelObject.adamID.getter(), v30 = v29, v27, (v30 & 1) == 0))
  {
    v71 = v28;
    sub_1000366D8();
    v31 = BinaryInteger.description.getter();
    v32 = v33;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v69 = a2;
  if (v20)
  {

    started = NowPlayingTranscriptSelectionContextActionConfiguration.referenceStartTime.getter();
    v64 = v35;

    v36 = *&started;
  }

  else
  {
    v64 = 1;
    v36 = 0.0;
  }

  sub_100168088(&qword_100578E90);
  inited = swift_initStackObject();
  *(inited + 32) = 0x4E65646F73697065;
  *(inited + 16) = xmmword_100401B10;
  *(inited + 40) = 0xEB00000000656D61;
  *(inited + 48) = v23;
  *(inited + 56) = v25;
  *(inited + 64) = 0x4965646F73697065;
  *(inited + 72) = 0xE900000000000064;
  *(inited + 80) = 0;
  *(inited + 88) = 0;
  *(inited + 96) = 0x4E74736163646F70;
  *(inited + 104) = 0xEB00000000656D61;
  *(inited + 112) = v17;
  *(inited + 120) = v19;
  *(inited + 128) = 0x4974736163646F70;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = v31;
  v38 = 0xE900000000000064;
  *(inited + 152) = v32;
  *(inited + 160) = 0x4E6C656E6E616863;
  *(inited + 168) = 0xEB00000000656D61;
  *(inited + 176) = 0;
  *(inited + 184) = 0;
  *(inited + 192) = 0x496C656E6E616863;
  *(inited + 208) = 0;
  *(inited + 216) = 0;
  *(inited + 200) = 0xE900000000000064;
  v39 = sub_10016A870(inited);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98);
  swift_arrayDestroy();
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v39 + 64);
  v43 = (v40 + 63) >> 6;
  v44 = v70 + 32;

  v45 = 0;
  v46 = _swiftEmptyArrayStorage;
  if (!v42)
  {
    goto LABEL_22;
  }

  do
  {
LABEL_20:
    while (1)
    {
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v48 = (*(v39 + 56) + 16 * (v47 | (v45 << 6)));
      if (v48[1])
      {
        break;
      }

      if (!v42)
      {
        goto LABEL_22;
      }
    }

    v59 = v44;
    v58[1] = *v48;

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_100243BD4(0, v46[2] + 1, 1, v46);
    }

    v51 = v46[2];
    v50 = v46[3];
    v44 = v59;
    if (v51 >= v50 >> 1)
    {
      v46 = sub_100243BD4(v50 > 1, v51 + 1, 1, v46);
    }

    v46[2] = v51 + 1;
    (*(v70 + 32))(v46 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v51, v60, v63);
    v38 = 0xE900000000000064;
  }

  while (v42);
  while (1)
  {
LABEL_22:
    v49 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_42:
      v46 = sub_100243BD4(0, v46[2] + 1, 1, v46);
      goto LABEL_35;
    }

    if (v49 >= v43)
    {
      break;
    }

    v42 = *(v39 + 64 + 8 * v49);
    ++v45;
    if (v42)
    {
      v45 = v49;
      goto LABEL_20;
    }
  }

  if (v64 & 1 | (v36 == 0.0))
  {
    v38 = v69;
    v42 = v68;
    v44 = v67;
    v39 = v66;
    goto LABEL_38;
  }

  Double.description.getter();
  v43 = v61;
  URLQueryItem.init(name:value:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v69;
  v42 = v68;
  v44 = v67;
  v39 = v66;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_42;
  }

LABEL_35:
  v54 = v46[2];
  v53 = v46[3];
  if (v54 >= v53 >> 1)
  {
    v46 = sub_100243BD4(v53 > 1, v54 + 1, 1, v46);
  }

  v46[2] = v54 + 1;
  (*(v70 + 32))(v46 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v54, v43, v63);
LABEL_38:
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v39 + 48))(v44, 1, v42) == 1)
  {

    sub_100009104(v44, &qword_100578E88);
    v55 = type metadata accessor for URL();
    return (*(*(v55 - 8) + 56))(v38, 1, 1, v55);
  }

  else
  {
    v57 = v62;
    (*(v39 + 32))(v62, v44, v42);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();

    return (*(v39 + 8))(v57, v42);
  }
}

uint64_t sub_1002CDC38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002CBC88(a2, a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100009104(v8, &qword_100574040);
    return a3(a1);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    a3(v12);
    return (*(v10 + 8))(v12, v9);
  }
}

size_t sub_1002CDDE8()
{
  v114 = type metadata accessor for URLQueryItem();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v106[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v113 = &v106[-v3];
  __chkstk_darwin(v4);
  v111 = &v106[-v5];
  v6 = type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin(v6);
  v115 = &v106[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for EpisodeOffer();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v106[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v106[-v12];
  v14 = type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin(v14);
  v16 = &v106[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v106[-v18];
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v20 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  swift_beginAccess();
  sub_1002CF334(v0 + v20, v19, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v0 = *v19;
      if (!(*v19 >> 62))
      {
        if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

LABEL_16:
        if ((v0 & 0xC000000000000001) != 0)
        {
LABEL_70:
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_73;
          }

          v30 = *(v0 + 32);
        }

        v31 = v30;

        v32 = sub_100009F1C(0, &qword_10057A130);
        sub_100009104(&v123, &unk_10057D300);
        *&v123 = v31;
        *(&v124 + 1) = v32;
        v125 = &off_1004EAEF0;
        goto LABEL_43;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v22 = *v19;
        if (*v19 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_6;
          }
        }

        else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v22 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
            v24 = v23;

            v25 = MPCPlayerResponseItem.podcastEpisode.getter();

            if (v25)
            {
              v26 = sub_100009F1C(0, &qword_10057A058);
              sub_100009104(&v123, &unk_10057D300);
              *&v123 = v25;
              *(&v124 + 1) = v26;
              v125 = &off_1004EAF30;
            }

            goto LABEL_43;
          }

          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v23 = *(v22 + 32);
            goto LABEL_9;
          }

LABEL_73:
          __break(1u);
LABEL_74:
          v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
          goto LABEL_66;
        }

LABEL_42:

        goto LABEL_43;
      }

      v33 = v115;
      sub_100200004(v19, v115);
      v34 = (v33 + *(v6 + 24));
      v36 = *v34;
      v35 = v34[1];
      *&v120 = *v33;
      sub_1000366D8();

      v37 = BinaryInteger.description.getter();
      v39 = v38;
      sub_100168088(&qword_100578E90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100401B10;
      *(inited + 32) = 0x4E65646F73697065;
      *(inited + 40) = 0xEB00000000656D61;
      *(inited + 48) = v36;
      *(inited + 56) = v35;
      *(inited + 64) = 0x4965646F73697065;
      *(inited + 72) = 0xE900000000000064;
      *(inited + 80) = v37;
      *(inited + 88) = v39;
      *(inited + 96) = 0x4E74736163646F70;
      *(inited + 104) = 0xEB00000000656D61;
      *(inited + 112) = 0;
      *(inited + 120) = 0;
      *(inited + 128) = 0x4974736163646F70;
      *(inited + 136) = 0xE900000000000064;
      *(inited + 144) = 0;
      *(inited + 152) = 0;
      *(inited + 160) = 0x4E6C656E6E616863;
      *(inited + 168) = 0xEB00000000656D61;
      *(inited + 176) = 0;
      *(inited + 184) = 0;
      *(inited + 192) = 0x496C656E6E616863;
      *(inited + 208) = 0;
      *(inited + 216) = 0;
      *(inited + 200) = 0xE900000000000064;
      v10 = sub_10016A870(inited);
      swift_setDeallocating();
      sub_100168088(&qword_100578E98);
      swift_arrayDestroy();
      v41 = 1 << v10[32];
      v42 = -1;
      if (v41 < 64)
      {
        v42 = ~(-1 << v41);
      }

      v43 = v42 & *(v10 + 8);
      v44 = (v41 + 63) >> 6;
      *&v45 = v117 + 32;

      v46 = 0;
      v0 = _swiftEmptyArrayStorage;
      if (!v43)
      {
        goto LABEL_25;
      }

      do
      {
LABEL_23:
        while (1)
        {
          v47 = __clz(__rbit64(v43));
          v43 &= v43 - 1;
          v48 = *(v10 + 7) + 16 * (v47 | (v46 << 6));
          if (*(v48 + 8))
          {
            break;
          }

          if (!v43)
          {
            goto LABEL_25;
          }
        }

        v116 = v45;
        v113 = *v48;

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
        }

        v51 = *(v0 + 16);
        v50 = *(v0 + 24);
        if (v51 >= v50 >> 1)
        {
          v0 = sub_100243BD4(v50 > 1, v51 + 1, 1, v0);
        }

        *(v0 + 16) = v51 + 1;
        v52 = v0 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v51;
        v45 = v116;
        (*(v117 + 32))(v52, v111, v114);
      }

      while (v43);
LABEL_25:
      while (1)
      {
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          break;
        }

        if (v49 >= v44)
        {

          sub_1002CF40C(v115, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100009104(&v123, &unk_10057D300);
          return v0;
        }

        v43 = *&v10[8 * v49 + 64];
        ++v46;
        if (v43)
        {
          v46 = v49;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  v27 = v116;
  if (EnumCaseMultiPayload)
  {
    if (*(*v19 + 16))
    {
      (*(*&v116 + 16))(v10, *v19 + ((*(*&v116 + 80) + 32) & ~*(*&v116 + 80)), v8);

      v53 = *(*&v27 + 32);
      v53(v13, v10, v8);
      *(&v121 + 1) = v8;
      v122 = &off_1004EAEB0;
      v54 = sub_10000E680(&v120);
      v53(v54, v13, v8);
      sub_100009104(&v123, &unk_10057D300);
      v123 = v120;
      v124 = v121;
      v125 = v122;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  sub_1002CF40C(v19, type metadata accessor for EpisodeContextActionDataType);
  sub_1002CF334(v0 + v20, v16, type metadata accessor for EpisodeContextActionDataType);
  v28 = sub_100398A94();
  sub_1002CF40C(v16, type metadata accessor for EpisodeContextActionDataType);
  if (v28)
  {
    v29 = sub_100009F1C(0, &qword_100573660);
    sub_100009104(&v123, &unk_10057D300);
    *&v123 = v28;
    *(&v124 + 1) = v29;
    v125 = &off_1004EAE70;
  }

LABEL_43:
  sub_1002CF39C(&v123, &v118);
  if (!v119)
  {
    sub_100009104(&v123, &unk_10057D300);
    sub_100009104(&v118, &unk_10057D300);
    return 0;
  }

  sub_1000109E4(&v118, &v120);
  v55 = *(&v121 + 1);
  v56 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v115 = (v56[1])(v55, v56);
  v116 = v57;
  v58 = *(&v121 + 1);
  v59 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v110 = (v59[2])(v58, v59);
  v111 = v60;
  v61 = *(&v121 + 1);
  v62 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v108 = (v62[3])(v61, v62);
  v109 = v63;
  v64 = *(&v121 + 1);
  v65 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v66 = (v65[4])(v64, v65);
  v68 = v67;
  v69 = *(&v121 + 1);
  v70 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v71 = (v70[5])(v69, v70);
  v73 = v72;
  v74 = *(&v121 + 1);
  v75 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v76 = (v75[6])(v74, v75);
  v78 = v77;
  v79 = *(&v121 + 1);
  v80 = v122;
  sub_1000044A0(&v120, *(&v121 + 1));
  v81 = COERCE_DOUBLE((v80[7])(v79, v80));
  v107 = v82;
  sub_100168088(&qword_100578E90);
  v83 = swift_initStackObject();
  *(v83 + 32) = 0x4E65646F73697065;
  *(v83 + 16) = xmmword_100401B10;
  v84 = v115;
  v85 = v116;
  *(v83 + 40) = 0xEB00000000656D61;
  *(v83 + 48) = v84;
  *(v83 + 56) = v85;
  *(v83 + 64) = 0x4965646F73697065;
  v86 = v110;
  v87 = v111;
  *(v83 + 72) = 0xE900000000000064;
  *(v83 + 80) = v86;
  *(v83 + 88) = v87;
  *(v83 + 96) = 0x4E74736163646F70;
  v88 = v108;
  v89 = v109;
  *(v83 + 104) = 0xEB00000000656D61;
  *(v83 + 112) = v88;
  *(v83 + 120) = v89;
  *(v83 + 128) = 0x4974736163646F70;
  *(v83 + 136) = 0xE900000000000064;
  *(v83 + 144) = v66;
  *(v83 + 152) = v68;
  *(v83 + 160) = 0x4E6C656E6E616863;
  *(v83 + 168) = 0xEB00000000656D61;
  *(v83 + 176) = v71;
  *(v83 + 184) = v73;
  *(v83 + 192) = 0x496C656E6E616863;
  *(v83 + 200) = 0xE900000000000064;
  *(v83 + 208) = v76;
  *(v83 + 216) = v78;
  v90 = sub_10016A870(v83);
  swift_setDeallocating();
  sub_100168088(&qword_100578E98);
  swift_arrayDestroy();
  v91 = 1 << *(v90 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & *(v90 + 64);
  v94 = (v91 + 63) >> 6;
  v95 = (v117 + 32);

  v96 = 0;
  v0 = _swiftEmptyArrayStorage;
  if (!v93)
  {
    goto LABEL_49;
  }

  do
  {
LABEL_47:
    while (1)
    {
      v97 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v98 = *(v90 + 56) + 16 * (v97 | (v96 << 6));
      if (*(v98 + 8))
      {
        break;
      }

      if (!v93)
      {
        goto LABEL_49;
      }
    }

    v115 = v95;
    v116 = v81;
    v111 = *v98;

    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_100243BD4(0, *(v0 + 16) + 1, 1, v0);
    }

    v101 = *(v0 + 16);
    v100 = *(v0 + 24);
    v81 = v116;
    if (v101 >= v100 >> 1)
    {
      v0 = sub_100243BD4(v100 > 1, v101 + 1, 1, v0);
    }

    *(v0 + 16) = v101 + 1;
    v102 = v0 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v101;
    v95 = v115;
    (*(v117 + 32))(v102, v113, v114);
  }

  while (v93);
  while (1)
  {
LABEL_49:
    v99 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      __break(1u);
      goto LABEL_70;
    }

    if (v99 >= v94)
    {
      break;
    }

    v93 = *(v90 + 64 + 8 * v99);
    ++v96;
    if (v93)
    {
      v96 = v99;
      goto LABEL_47;
    }
  }

  if ((v107 & 1) != 0 || v81 == 0.0)
  {
    sub_100009104(&v123, &unk_10057D300);
    goto LABEL_62;
  }

  Double.description.getter();
  v10 = v112;
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_74;
  }

LABEL_66:
  v105 = *(v0 + 16);
  v104 = *(v0 + 24);
  if (v105 >= v104 >> 1)
  {
    v0 = sub_100243BD4(v104 > 1, v105 + 1, 1, v0);
  }

  sub_100009104(&v123, &unk_10057D300);
  *(v0 + 16) = v105 + 1;
  (*(v117 + 32))(v0 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v105, v10, v114);
LABEL_62:
  sub_100004590(&v120);
  return v0;
}

id sub_1002CEC8C()
{
  result = [v0 podcast];
  if (result)
  {
    v2 = result;
    v3 = [result channel];

    if (v3)
    {
      [v3 storeId];

      AdamID.init(rawValue:)();
      sub_1000366D8();
      return BinaryInteger.description.getter();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1002CED58()
{
  result = [*v0 podcast];
  if (result)
  {
    v2 = result;
    [result storeCollectionId];

    AdamID.init(rawValue:)();
    sub_1000366D8();
    return BinaryInteger.description.getter();
  }

  return result;
}

uint64_t sub_1002CEE58()
{
  EpisodeOffer.contentId.getter();
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CEE9C()
{
  v0 = type metadata accessor for ShowOffer();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  v4 = ShowOffer.title.getter();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1002CEF7C()
{
  v0 = type metadata accessor for ShowOffer();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  v4 = ShowOffer.adamId.getter();
  (*(v1 + 8))(v3, v0);
  v6[1] = v4;
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CF0CC()
{
  [*v0 channelStoreId];
  AdamID.init(rawValue:)();
  sub_1000366D8();
  return BinaryInteger.description.getter();
}

uint64_t sub_1002CF150()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1002CF1B8()
{
  MPModelObject.adamID.getter();
  if (v0)
  {
    return 0;
  }

  sub_1000366D8();
  return BinaryInteger.description.getter();
}

id sub_1002CF224(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  result = [*v4 *a3];
  if (result)
  {
    v7 = result;
    v8 = [result *a4];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1002CF2AC()
{
  result = [*v0 podcast];
  if (result)
  {
    v2 = result;
    MPModelObject.adamID.getter();
    v4 = v3;

    if (v4)
    {
      return 0;
    }

    else
    {
      sub_1000366D8();
      return BinaryInteger.description.getter();
    }
  }

  return result;
}

uint64_t sub_1002CF334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002CF39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&unk_10057D300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002CF40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002CF488(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1001FE728();
    swift_errorRetain();
    static OS_os_log.classKit.getter();
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = a2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v19 = a1;
      v20 = v13;
      *v12 = 136315138;
      swift_errorRetain();
      sub_100168088(&qword_100575C50);
      v14 = String.init<A>(describing:)();
      v16 = sub_1000153E0(v14, v15, &v20);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, v18, v12, 0xCu);
      sub_100004590(v13);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

id UIAppSettingsBridge.open(destination:)(char a1, id a2)
{
  if (a1)
  {
    return [a2 openGlobalSettings];
  }

  else
  {
    return _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0();
  }
}

id sub_1002CF6B0(char a1)
{
  if (a1)
  {
    return [*v1 openGlobalSettings];
  }

  else
  {
    return _sSo13UIApplicationC8PodcastsE18openGlobalSettings19deepLinkDestinationy0B2UI0de4DeepG5StateC0H0O_tF_0();
  }
}

void sub_1002CF6D8()
{
  v1 = *v0;
  PerformanceTestCase.name.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 finishedTest:v2];
}

void sub_1002CF744()
{
  v1 = *v0;
  PerformanceTestCase.name.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = String._bridgeToObjectiveC()();
  [v1 failedTest:v2 withFailure:v3];
}

void sub_1002CF7E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v48 = *(v7 - 8);
  __chkstk_darwin();
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin();
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for DispatchTime();
  v43 = *(v51 - 8);
  __chkstk_darwin();
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v38 - v12;
  sub_100168088(&unk_10057D370);
  __chkstk_darwin();
  v14 = &v38 - v13;
  v15 = type metadata accessor for PerformanceTestCase();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v52 = &v38 - v19;
  if (!a3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v42 = v18;
  if (!a4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  PerformanceTestCase.init(name:options:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100009104(v14, &unk_10057D370);
    return;
  }

  v40 = v7;
  v39 = *(v16 + 32);
  v39(v52, v14, v15);
  if (!a1)
  {
    goto LABEL_11;
  }

  v20 = objc_opt_self();
  v41 = a1;
  v21 = [v20 standardUserDefaults];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 stringForKey:v22];

  if (v23)
  {

    sub_10002BD04();
    v24 = v49;
    v38 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v43 = *(v43 + 8);
    (v43)(v11, v51);
    v25 = v42;
    (*(v16 + 16))(v42, v52, v15);
    v26 = (*(v16 + 80) + 24) & ~*(v16 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    v39(v27 + v26, v25, v15);
    v28 = v41;
    *(v27 + ((v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v41;
    aBlock[4] = sub_1002D0220;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004EAFC0;
    v29 = _Block_copy(aBlock);
    v42 = v28;
    v30 = v24;

    v31 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D293C();
    sub_100168088(&unk_100575CD0);
    sub_100182E30();
    v32 = v46;
    v33 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v50;
    v35 = v38;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v29);

    (*(v48 + 8))(v32, v33);
    (*(v45 + 8))(v31, v47);
    (v43)(v34, v51);
    (*(v16 + 8))(v52, v15);
  }

  else
  {
    v36 = v52;
    v37 = v41;
    sub_1002CFF34(v52, v41, v49);

    (*(v16 + 8))(v36, v15);
  }
}

uint64_t sub_1002CFF34(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100168088(&qword_10057D398);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v23[3] = &type metadata for UIAppPerformanceTestRunner;
  v23[4] = sub_1002D02B0();
  v23[0] = a2;
  v7 = OBJC_IVAR____TtC8Podcasts11AppDelegate_pptViewHierarchyProxy;
  swift_beginAccess();
  sub_100010430(a3 + v7, v6, &qword_10057D398);
  v8 = type metadata accessor for PPTViewControllerProxy();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = a2;
    PPTViewControllerProxy.prepareForTesting(testCase:)();
    (*(v9 + 8))(v6, v8);
    sub_100010430(v22, &v17, &qword_10057D3A8);
    if (v18)
    {
      sub_1000109E4(&v17, &v19);
      sub_1000044A0(&v19, v21);
      dispatch thunk of PerformanceTestable.perform(testCase:runner:)();
      sub_100009104(v22, &qword_10057D3A8);
      sub_100004590(&v19);
    }

    else
    {
      sub_100009104(&v17, &qword_10057D3A8);
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      sub_100010430(v22, &v19, &qword_10057D3A8);
      sub_100168088(&qword_10057D3A8);
      v19 = String.init<A>(describing:)();
      v20 = v12;
      v13._object = 0x800000010046DE00;
      v13._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v13);
      PerformanceTestCase.name.getter();
      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();

      [v11 failedTest:v14 withFailure:v15];

      sub_100009104(v22, &qword_10057D3A8);
    }

    return sub_100004590(v23);
  }

  return result;
}

uint64_t sub_1002D0220()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002CFF34(v0 + v2, v4, v3);
}

unint64_t sub_1002D02B0()
{
  result = qword_10057D3A0;
  if (!qword_10057D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D3A0);
  }

  return result;
}

uint64_t sub_1002D0314()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v4 = *(v11 - 8);
  __chkstk_darwin(v11);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v7 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1002D0C48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB060;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = &_swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);
  (*(v12 + 8))(v3, v1);
  (*(v4 + 8))(v6, v11);
}

uint64_t sub_1002D05E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC8Podcasts9Debouncer_worker);

    if (v1)
    {
      dispatch thunk of DispatchWorkItem.cancel()();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002D0698();
  }

  return result;
}

uint64_t sub_1002D0698()
{
  v1 = type metadata accessor for DispatchTime();
  v15 = *(v1 - 8);
  v16 = v1;
  v2 = __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v7);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1002D0C40;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB038;
  v14 = _Block_copy(aBlock);
  v17 = &_swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);

  sub_100168088(&unk_100575CD0);
  sub_100015E58(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v9 = DispatchWorkItem.init(flags:block:)();

  *(v0 + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = v9;

  static DispatchTime.now()();
  + infix(_:_:)();
  v10 = *(v15 + 8);
  v11 = v4;
  v12 = v16;
  v10(v11, v16);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v10)(v6, v12);
}

uint64_t sub_1002D09AC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC8Podcasts9Debouncer_action);

    v2(v3);
  }

  return result;
}

uint64_t sub_1002D0A6C()
{
  v1 = OBJC_IVAR____TtC8Podcasts9Debouncer_delay;
  v2 = type metadata accessor for DispatchTimeInterval();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Debouncer()
{
  result = qword_10057D3E8;
  if (!qword_10057D3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D0B88()
{
  result = type metadata accessor for DispatchTimeInterval();
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

uint64_t sub_1002D0C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v18 - 8);
  __chkstk_darwin(v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  v17 = sub_10002BD04();
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000E4F4(&qword_1005743B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100168088(&unk_1005729E0);
  sub_100015E58(&qword_1005743C0, &unk_1005729E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *(v3 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v3 + OBJC_IVAR____TtC8Podcasts9Debouncer_worker) = 0;
  v10 = (v3 + OBJC_IVAR____TtC8Podcasts9Debouncer_action);
  v11 = v20;
  *v10 = v19;
  v10[1] = v11;
  v12 = OBJC_IVAR____TtC8Podcasts9Debouncer_delay;
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  v15 = v21;
  (*(v14 + 16))(v4 + v12, v21, v13);

  sub_1002D0698();
  (*(v14 + 8))(v15, v13);
  return v4;
}

uint64_t AppDownloadedEffectApplicator.init(library:podcastsStateCoordinator:)(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 privateQueueContext];

  return a1;
}

uint64_t AppDownloadedEffectApplicator.apply(effect:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v7 = type metadata accessor for DownloadEnvironment();
  v26 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DownloadedAssetEffect();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin();
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v14);
  (*(v8 + 16))(v10, v28, v7);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = (v13 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  v19 = v29;
  v20 = v30;
  *(v18 + 3) = v29;
  *(v18 + 4) = v20;
  (*(v12 + 32))(&v18[v16], v15, v11);
  (*(v8 + 32))(&v18[v17], v10, v26);
  sub_100168088(&qword_10057D4B0);
  swift_allocObject();
  v21 = v27;
  v22 = v19;
  v23 = v20;
  v31 = Future.init(_:)();
  sub_1002D13E0();
  v24 = Publisher.eraseToAnyPublisher()();

  return v24;
}

uint64_t sub_1002D1268(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v19[0] = a1;
  sub_100168088(&qword_10057D4C0);
  __chkstk_darwin();
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v19 - v14;
  __chkstk_darwin();
  v17 = v19 - v16;
  sub_1002D1444(a6, a7, a3, a4, a5, v13);
  swift_storeEnumTagMultiPayload();
  sub_1002D223C(v13, v15);
  sub_1002D223C(v15, v17);
  (v19[0])(v17);
  return sub_1002D22AC(v17);
}

unint64_t sub_1002D13E0()
{
  result = qword_10057D4B8;
  if (!qword_10057D4B8)
  {
    sub_100168310(&qword_10057D4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D4B8);
  }

  return result;
}

uint64_t sub_1002D1444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v80 = a5;
  v81 = a4;
  v85 = a3;
  v79[1] = a2;
  v86 = a6;
  v7 = type metadata accessor for URL();
  v83 = *(v7 - 8);
  v84 = v7;
  __chkstk_darwin();
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v82 = v79 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v88 = v11;
  v89 = v12;
  __chkstk_darwin();
  v14 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79[0] = v79 - v15;
  __chkstk_darwin();
  v17 = v79 - v16;
  __chkstk_darwin();
  v19 = v79 - v18;
  v20 = *(type metadata accessor for DownloadedAssetEffect() - 8);
  __chkstk_darwin();
  v22 = v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v79 - v23;
  v25 = __chkstk_darwin();
  v27 = (v79 - v26);
  v28 = *(v20 + 16);
  v90 = a1;
  v91 = v28;
  v29 = a1;
  v31 = v30;
  v92[7] = v20 + 16;
  (v28)(v79 - v26, v29, v30, v25);
  v32 = (*(v20 + 88))(v27, v31);
  if (v32 == enum case for DownloadedAssetEffect.removeDownload(_:))
  {
    (*(v20 + 96))(v27, v31);
    v34 = *v27;
    v33 = v27[1];
    static Logger.database.getter();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v92[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1000153E0(v34, v33, v92);
      _os_log_impl(&_mh_execute_header, v35, v36, "Removing download for episode %s", v37, 0xCu);
      sub_100004590(v38);
    }

    (*(v89 + 8))(v17, v88);
    v39 = v91;
    sub_100168088(&qword_100574690);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100400790;
    *(inited + 32) = v34;
    v41 = inited + 32;
    *(inited + 40) = v33;
    sub_10016B918(inited);
    swift_setDeallocating();
    sub_1002D23B8(v41);
    isa = Set._bridgeToObjectiveC()().super.isa;

    [v85 removeDownloadAssetsForEpisodeUuids:isa];

    return v39(v86, v90, v31);
  }

  if (v32 == enum case for DownloadedAssetEffect.download(_:))
  {
    (*(v20 + 96))(v27, v31);
    v45 = *v27;
    v44 = v27[1];
    static Logger.database.getter();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v92[0] = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1000153E0(v45, v44, v92);
      _os_log_impl(&_mh_execute_header, v46, v47, "Downloading episode %s", v48, 0xCu);
      sub_100004590(v49);
    }

    (*(v89 + 8))(v19, v88);
    PodcastsStateCoordinator.downloadEpisode(withUUID:isFromSaving:from:in:)(v45, v44, 0, 3, v80);

    v50 = v91;
    return v50(v86, v90, v31);
  }

  if (v32 == enum case for DownloadedAssetEffect.delete(_:))
  {
    (*(v20 + 96))(v27, v31);
    v51 = v82;
    v52 = v83;
    v53 = v84;
    (*(v83 + 32))(v82, v27, v84);
    v54 = v79[0];
    static Logger.database.getter();
    (*(v52 + 16))(v9, v51, v53);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v92[0] = v58;
      *v57 = 136315138;
      v59 = URL.path.getter();
      v60 = v52;
      v61 = v31;
      v63 = v62;
      v85 = *(v60 + 8);
      (v85)(v9, v84);
      v64 = sub_1000153E0(v59, v63, v92);
      v31 = v61;

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Removing asset at path: %s", v57, 0xCu);
      sub_100004590(v58);
      v53 = v84;
    }

    else
    {

      v85 = *(v52 + 8);
      (v85)(v9, v53);
    }

    (*(v89 + 8))(v54, v88);
    v75 = v87;
    DownloadEnvironment.fileStorage.getter();
    sub_1000044A0(v92, v92[3]);
    v76 = v82;
    dispatch thunk of FileManaging.removeItem(at:)();
    v50 = v91;
    if (v75)
    {
      (v85)(v76, v53);
      return sub_100004590(v92);
    }

    (v85)(v76, v53);
    sub_100004590(v92);
    return v50(v86, v90, v31);
  }

  static Logger.database.getter();
  v65 = v91;
  v91(v24, v90, v31);
  v87 = v14;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v85 = v68;
    v86 = swift_slowAlloc();
    v92[0] = v86;
    *v68 = 136315138;
    v65(v22, v24, v31);
    v84 = String.init<A>(describing:)();
    v70 = v69;
    v71 = *(v20 + 8);
    v71(v24, v31);
    v72 = v71;
    v73 = sub_1000153E0(v84, v70, v92);

    v74 = v85;
    *(v85 + 4) = v73;
    _os_log_impl(&_mh_execute_header, v66, v67, "An uncovered recovery case for download state was encountered: %s", v74, 0xCu);
    sub_100004590(v86);
  }

  else
  {

    v77 = *(v20 + 8);
    v77(v24, v31);
    v72 = v77;
  }

  (*(v89 + 8))(v87, v88);
  type metadata accessor for ApplicationDownloadEffectApplicatorError();
  sub_1002D2360();
  swift_allocError();
  v91(v78, v90, v31);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v72(v27, v31);
}

uint64_t sub_1002D1EB0(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v25 = a1;
  v28 = type metadata accessor for DownloadEnvironment();
  v3 = *(v28 - 8);
  v26 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v5;
  v6 = type metadata accessor for DownloadedAssetEffect();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin();
  v10 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 8);
  v13 = *(v2 + 16);
  v23 = *v2;
  v11 = v23;
  v24 = v13;
  (*(v7 + 16))(v10, v25, v6, v9);
  (*(v3 + 16))(v5, v27, v28);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v8 + *(v3 + 80) + v14) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v11;
  *(v16 + 3) = v12;
  *(v16 + 4) = v13;
  (*(v7 + 32))(&v16[v14], v10, v6);
  (*(v3 + 32))(&v16[v15], v22, v28);
  sub_100168088(&qword_10057D4B0);
  swift_allocObject();
  v17 = v23;
  v18 = v12;
  v19 = v24;
  v29 = Future.init(_:)();
  sub_1002D13E0();
  v20 = Publisher.eraseToAnyPublisher()();

  return v20;
}

uint64_t sub_1002D2150(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DownloadedAssetEffect() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DownloadEnvironment() - 8);
  v9 = v2[2];
  v10 = v2[3];
  v11 = v2[4];
  v12 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1002D1268(a1, a2, v9, v10, v11, v2 + v6, v12);
}

uint64_t sub_1002D223C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_10057D4C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002D22AC(uint64_t a1)
{
  v2 = sub_100168088(&qword_10057D4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ApplicationDownloadEffectApplicatorError()
{
  result = qword_10057D540;
  if (!qword_10057D540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002D2360()
{
  result = qword_10057D4C8;
  if (!qword_10057D4C8)
  {
    type metadata accessor for ApplicationDownloadEffectApplicatorError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D4C8);
  }

  return result;
}

void sub_1002D240C()
{
  type metadata accessor for DownloadedAssetEffect();
  if (v0 <= 0x3F)
  {
    sub_1002D2480();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1002D2480()
{
  if (!qword_10057D550)
  {
    type metadata accessor for URL();
    sub_100168310(&qword_100575C50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10057D550);
    }
  }
}

void *sub_1002D2500(void *a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v81 = a4;
  v85 = a3;
  v84 = a2;
  v86 = a1;
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v83 = &v80[-v6];
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v82 = &v80[-v7];
  sub_100168088(&unk_100578C10);
  __chkstk_darwin();
  v9 = &v80[-v8];
  v96 = type metadata accessor for ArtworkModel();
  v98 = *(v96 - 8);
  __chkstk_darwin();
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v94 = &v80[-v12];
  v100 = _s16ShowImageRowItemVMa();
  v103 = *(v100 - 8);
  __chkstk_darwin();
  v14 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v93 = &v80[-v15];
  __chkstk_darwin();
  v92 = &v80[-v16];
  __chkstk_darwin();
  v18 = &v80[-v17];
  if (a5 >> 62)
  {
    goto LABEL_25;
  }

  v19 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v11; v19; i = v11)
  {
    v11 = v19;
    v20 = 0;
    v101 = a5 & 0xFFFFFFFFFFFFFF8;
    v102 = a5 & 0xC000000000000001;
    v95 = (v98 + 48);
    v99 = _swiftEmptyArrayStorage;
    v91 = a5;
    v90 = v9;
    v89 = v14;
    v88 = v18;
    v87 = v19;
    while (v102)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v21 = (v20 + 1);
      if (__OFADD__(v20, 1))
      {
        goto LABEL_23;
      }

LABEL_10:
      v22 = LegacyLockup.title.getter();
      if (v23)
      {
        v24 = v22;
        v25 = v23;
        v26 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v26 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          LegacyLockup.artwork.getter();
          if ((*v95)(v9, 1, v96) == 1)
          {

            sub_100009104(v9, &unk_100578C10);
          }

          else
          {
            v27 = v94;
            sub_1002D3154(v9, v94, &type metadata accessor for ArtworkModel);
            v28 = v93;
            *v93 = v24;
            v28[1] = v25;
            v29 = v100;
            v30 = v28 + *(v100 + 20);
            v31 = LibraryShowLockup.uuid.getter();
            v33 = v32;

            *v30 = v31;
            *(v30 + 1) = v33;
            v30[16] = 0;
            type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
            swift_storeEnumTagMultiPayload();
            v34 = v27;
            v18 = v88;
            sub_1002D3154(v34, v28 + *(v29 + 24), &type metadata accessor for ArtworkModel);
            v35 = v92;
            sub_1002D3154(v28, v92, _s16ShowImageRowItemVMa);
            sub_1002D3154(v35, v18, _s16ShowImageRowItemVMa);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_100243DF8(0, v99[2] + 1, 1, v99);
            }

            v37 = v99[2];
            v36 = v99[3];
            a5 = v91;
            v9 = v90;
            v14 = v89;
            if (v37 >= v36 >> 1)
            {
              v99 = sub_100243DF8(v36 > 1, v37 + 1, 1, v99);
            }

            v38 = v99;
            v99[2] = v37 + 1;
            sub_1002D3154(v18, v38 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v37, _s16ShowImageRowItemVMa);
            v11 = v87;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      ++v20;
      if (v21 == v11)
      {
        goto LABEL_27;
      }
    }

    if (v20 >= *(v101 + 16))
    {
      goto LABEL_24;
    }

    v21 = (v20 + 1);
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  v99 = _swiftEmptyArrayStorage;
LABEL_27:

  v39 = sub_10023E364(CPMaximumNumberOfGridImages, v99);
  v43 = v42 >> 1;
  if (v41 == v42 >> 1)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v45 = v40;
  v46 = v41;
  v94 = v42;
  v96 = v39;
  type metadata accessor for CarPlayPageLoadCoordinator();
  BaseObjectGraph.inject<A>(_:)();
  v95 = aBlock;
  v101 = String._bridgeToObjectiveC()();

  sub_100009F1C(0, &qword_100578C08);
  result = Array._bridgeToObjectiveC()().super.isa;
  v47 = v43 - v46;
  if (__OFSUB__(v43, v46))
  {
    goto LABEL_55;
  }

  v99 = result;
  v102 = v46;
  v93 = (v47 & ~(v47 >> 63));
  if (v47)
  {
    aBlock = _swiftEmptyArrayStorage;
    result = sub_1001A7364(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v92 = (v43 - v46);
    v48 = aBlock;
    if (v46 <= v43)
    {
      v49 = v43;
    }

    else
    {
      v49 = v46;
    }

    while (v49 != v46)
    {
      sub_1002D3AE0(v45 + *(v103 + 72) * v46, v14, _s16ShowImageRowItemVMa);
      v51 = *v14;
      v50 = v14[1];

      result = sub_1002D3B48(v14, _s16ShowImageRowItemVMa);
      aBlock = v48;
      v53 = v48[2];
      v52 = v48[3];
      if (v53 >= v52 >> 1)
      {
        result = sub_1001A7364((v52 > 1), v53 + 1, 1);
        v48 = aBlock;
      }

      v48[2] = (v53 + 1);
      v54 = &v48[2 * v53];
      v54[4] = v51;
      v54[5] = v50;
      if (v43 == ++v46)
      {
        v46 = v102;
        v47 = v92;
        goto LABEL_40;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

LABEL_40:
  v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Array._bridgeToObjectiveC()().super.isa;

  v57 = v101;
  v58 = v99;
  v59 = [v55 initWithText:v101 images:v99 imageTitles:isa];

  if (v47)
  {
    aBlock = _swiftEmptyArrayStorage;
    v60 = v59;
    result = sub_1001A7650(0, v93, 0);
    if (v47 < 0)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v101 = v59;
    v61 = aBlock;
    if (v46 <= v43)
    {
      v62 = v43;
    }

    else
    {
      v62 = v46;
    }

    v63 = v46;
    while (v62 != v63)
    {
      sub_1002D3AE0(v45 + *(v103 + 72) * v63, v14, _s16ShowImageRowItemVMa);
      v64 = i;
      sub_1002D3AE0(v14 + *(v100 + 24), i, &type metadata accessor for ArtworkModel);
      sub_1002D3B48(v14, _s16ShowImageRowItemVMa);
      aBlock = v61;
      v66 = v61[2];
      v65 = v61[3];
      if (v66 >= v65 >> 1)
      {
        sub_1001A7650(v65 > 1, v66 + 1, 1);
        v61 = aBlock;
      }

      v61[2] = (v66 + 1);
      result = sub_1002D3154(v64, v61 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v66, &type metadata accessor for ArtworkModel);
      if (v43 == ++v63)
      {
        v67 = v101;
        goto LABEL_52;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v68 = v59;
  v67 = v59;
  v61 = _swiftEmptyArrayStorage;
LABEL_52:
  CarPlayPageLoadCoordinator.loadImages(for:into:)(v61, v67);

  v69 = v83;
  *v83 = v81;
  v70 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
  swift_storeEnumTagMultiPayload();
  v71 = *(*(v70 - 8) + 56);
  v71(v69, 0, 1, v70);
  v72 = v82;
  v71(v82, 1, 1, v70);
  v73 = type metadata accessor for CarPlayTemplateInfo(0);
  v74 = *(v73 + 20);
  sub_1001FBB44(v69, v72);
  *(v72 + v74) = 0;
  (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
  sub_1001D2AD4(v72);
  v75 = v86;
  v108 = sub_1002D39D4;
  v109 = v86;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_100372F30;
  v107 = &unk_1004EB160;
  v76 = _Block_copy(&aBlock);

  [v67 setHandler:v76];
  _Block_release(v76);
  v77 = swift_allocObject();
  v77[2] = v96;
  v77[3] = v45;
  v78 = v94;
  v77[4] = v102;
  v77[5] = v78;
  v77[6] = v75;
  v108 = sub_1002D39DC;
  v109 = v77;
  aBlock = _NSConcreteStackBlock;
  v105 = 1107296256;
  v106 = sub_1002B1CD0;
  v107 = &unk_1004EB1B0;
  v79 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v67 setListImageRowHandler:v79];
  _Block_release(v79);

  swift_unknownObjectRelease();

  return v67;
}

uint64_t _s16ShowImageRowItemVMa()
{
  result = qword_10057D5D8;
  if (!qword_10057D5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002D3154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D31BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v9 = &v14 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  type metadata accessor for MainActor();

  swift_unknownObjectRetain();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = a4;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  sub_10023EE80(0, 0, v9, &unk_10040AE10, v12);
}

void sub_1002D3310(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v50 = a6;
  v55 = a3;
  v56 = a4;
  v12 = type metadata accessor for Logger();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin();
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578010);
  __chkstk_darwin();
  v54 = &v49 - v15;
  v16 = type metadata accessor for CarPlayTemplateInfo(0);
  v53 = *(v16 - 8);
  __chkstk_darwin();
  v49 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&unk_100575AE0);
  __chkstk_darwin();
  v19 = &v49 - v18;
  sub_100168088(&unk_100578410);
  __chkstk_darwin();
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v49 - v22;
  v24 = _s16ShowImageRowItemVMa();
  __chkstk_darwin();
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a8 >> 1) < a7)
  {
    __break(1u);
  }

  else if (a2 < a7 || (a8 >> 1) <= a2)
  {
    sub_100009F1C(0, &qword_1005748A0);
    static OS_os_log.carPlay.getter();
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Attempted to select list image row item with invalid index!", v47, 2u);
    }

    v48 = (*(v51 + 8))(v14, v52);
    v55(v48);
  }

  else
  {
    v52 = a9;
    sub_1002D3AE0(v50 + *(v25 + 72) * a2, &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), _s16ShowImageRowItemVMa);
    v28 = objc_allocWithZone(CPListImageRowItem);
    v29 = String._bridgeToObjectiveC()();
    sub_100009F1C(0, &qword_100578C08);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v31 = [v28 initWithText:v29 images:isa];

    sub_1002D3AE0(&v27[*(v24 + 20)], v19, type metadata accessor for CarPlayTemplateInfo.TemplateType);
    v32 = type metadata accessor for CarPlayTemplateInfo.TemplateType(0);
    v33 = *(*(v32 - 8) + 56);
    v33(v19, 0, 1, v32);
    v33(v23, 1, 1, v32);
    v34 = *(v16 + 20);
    sub_1001FBB44(v19, v23);
    v23[v34] = 0;
    v35 = v53;
    (*(v53 + 56))(v23, 0, 1, v16);
    sub_1001D2D08(v23, v21);
    v36 = (*(v35 + 48))(v21, 1, v16);
    v37 = 0;
    if (v36 != 1)
    {
      sub_1002D3AE0(v21, v49, type metadata accessor for CarPlayTemplateInfo);
      v37 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      sub_1002D3B48(v21, type metadata accessor for CarPlayTemplateInfo);
    }

    [v31 setUserInfo:v37];
    swift_unknownObjectRelease();
    sub_100009104(v23, &unk_100578410);
    v38 = v54;
    static TaskPriority.userInitiated.getter();
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    type metadata accessor for MainActor();
    v40 = v52;

    v41 = v31;
    v42 = v56;

    v43 = static MainActor.shared.getter();
    v44 = swift_allocObject();
    v44[2] = v43;
    v44[3] = &protocol witness table for MainActor;
    v44[4] = v40;
    v44[5] = v41;
    v44[6] = v55;
    v44[7] = v42;
    sub_10023EE80(0, 0, v38, &unk_10040ADF8, v44);

    sub_1002D3B48(v27, _s16ShowImageRowItemVMa);
  }
}

uint64_t sub_1002D3A0C(uint64_t a1)
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
  v10[1] = sub_10001C51C;

  return sub_10022CDC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002D3AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002D3B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002D3BA8(uint64_t a1)
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
  v10[1] = sub_10021A620;

  return sub_10022C4CC(a1, v4, v5, v6, v7, v9, v8);
}

void sub_1002D3CA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100009F1C(0, &qword_100579A38);
    sub_1002D44E4();
    Set.Iterator.init(_cocoa:)();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100009F1C(0, &qword_100579A38), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_1000319D8();
      return;
    }

LABEL_16:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_1002D3F10()
{
  v1 = [v0 connectedScenes];
  sub_100009F1C(0, &qword_100579A38);
  sub_1002D44E4();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) == 0)
  {
    v18 = *(v2 + 32);
    v44 = ((1 << v18) + 63) >> 6;
    if ((v18 & 0x3Fu) <= 0xD)
    {
      goto LABEL_22;
    }

    goto LABEL_64;
  }

  v4 = &_swiftEmptySetSingleton;
  v47 = &_swiftEmptySetSingleton;
  v2 = __CocoaSet.makeIterator()();
  for (i = __CocoaSet.Iterator.next()(); i; i = __CocoaSet.Iterator.next()())
  {
    v45 = i;
    swift_dynamicCast();
    v6 = v46;
    if ([v46 activationState])
    {
    }

    else
    {
      v7 = v4[2];
      if (v4[3] <= v7)
      {
        sub_10038F1F4(v7 + 1);
      }

      v4 = v47;
      v8 = NSObject._rawHashValue(seed:)(v47[5]);
      v9 = (v47 + 7);
      v10 = -1 << *(v47 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      if (((-1 << v11) & ~v47[(v11 >> 6) + 7]) != 0)
      {
        v13 = __clz(__rbit64((-1 << v11) & ~v47[(v11 >> 6) + 7])) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v14 = 0;
        v15 = (63 - v10) >> 6;
        do
        {
          if (++v12 == v15 && (v14 & 1) != 0)
          {
            __break(1u);
            goto LABEL_54;
          }

          v16 = v12 == v15;
          if (v12 == v15)
          {
            v12 = 0;
          }

          v14 |= v16;
          v17 = *&v9[8 * v12];
        }

        while (v17 == -1);
        v13 = __clz(__rbit64(~v17)) + (v12 << 6);
      }

      *&v9[(v13 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v13;
      *(v4[6] + 8 * v13) = v6;
      ++v4[2];
    }
  }

LABEL_37:
  sub_1002D3CA4(v4);
  v2 = v32;

  if (v2 >> 62)
  {
    while (1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_61;
      }

LABEL_39:
      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v33 = *(v2 + 32);
LABEL_42:
        v34 = v33;

        v35 = [v34 windows];

        sub_100009F1C(0, &unk_10057D620);
        v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v2 >> 62)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
          if (!v36)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v36)
          {
            goto LABEL_61;
          }
        }

        v37 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v38 = *(v2 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_55;
          }

          if ([v38 isKeyWindow])
          {

            return v39;
          }

          ++v37;
          if (v40 == v36)
          {
            goto LABEL_61;
          }
        }
      }

      __break(1u);
LABEL_64:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v42 = swift_slowAlloc();
        v4 = sub_1002D46B8(v42, v44, v2, sub_1002D44A8);

        goto LABEL_37;
      }

LABEL_22:
      v43[1] = v43;
      __chkstk_darwin(v3);
      v20 = v43 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v20, v19);
      v21 = 0;
      v22 = 0;
      v23 = 1 << *(v2 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v2 + 56);
      v26 = (v23 + 63) >> 6;
      while (v25)
      {
        v27 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
LABEL_32:
        v30 = v27 | (v22 << 6);
        if (![*(*(v2 + 48) + 8 * v30) activationState])
        {
          *&v20[(v30 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v30;
          if (__OFADD__(v21++, 1))
          {
            __break(1u);
LABEL_36:
            v4 = sub_10037000C(v20, v44, v21, v2);
            goto LABEL_37;
          }
        }
      }

      v28 = v22;
      while (1)
      {
        v22 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v22 >= v26)
        {
          goto LABEL_36;
        }

        v29 = *(v2 + 56 + 8 * v22);
        ++v28;
        if (v29)
        {
          v27 = __clz(__rbit64(v29));
          v25 = (v29 - 1) & v29;
          goto LABEL_32;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
    }

    v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_42;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_61:

  return 0;
}

unint64_t sub_1002D44E4()
{
  result = qword_100579A40;
  if (!qword_100579A40)
  {
    sub_100009F1C(255, &qword_100579A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100579A40);
  }

  return result;
}

void sub_1002D454C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_10037000C(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1002D46B8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1002D454C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t *FeedManager.shared.unsafeMutableAddressor()
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  return &static FeedManager.shared;
}

uint64_t sub_1002D4798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1002D4890(Swift::UInt64 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1002D495C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (Hasher.init(_seed:)(), EpisodeStateIdentifier.hash(into:)(), v5 = Hasher._finalize()(), v6 = -1 << *(a4 + 32), v7 = v5 & ~v6, ((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(a4 + 48) + 24 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      sub_1001C1A3C(*v9, v11, v12);
      v13 = static EpisodeStateIdentifier.== infix(_:_:)();
      sub_1001C1A4C(v10, v11, v12);
      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

BOOL sub_1002D4A94(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id static FeedManager.shared.getter()
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  v1 = static FeedManager.shared;

  return v1;
}

uint64_t sub_1002D4B98(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin();
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR___MTFeedManager_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1002D6F9C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004EB638;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_10000E53C(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags);
  sub_100168088(&unk_100575CD0);
  sub_100009FAC(&qword_10057D390, &unk_100575CD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1002D4E7C(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v5 = a1 + OBJC_IVAR___MTFeedManager__system;
  v6 = *(a1 + OBJC_IVAR___MTFeedManager__system);
  if (v6)
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();

    a2(v6, v8, v7);

    return sub_10003F6FC(v6);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = OBJC_IVAR___MTFeedManager__pendingBlocks;
    swift_beginAccess();
    v13 = *(a1 + v12);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + v12) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_100243E20(0, v13[2] + 1, 1, v13);
      *(a1 + v12) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_100243E20((v15 > 1), v16 + 1, 1, v13);
    }

    v13[2] = v16 + 1;
    v17 = &v13[2 * v16];
    v17[4] = sub_1002D6FA8;
    v17[5] = v11;
    *(a1 + v12) = v13;
    return swift_endAccess();
  }
}

uint64_t FeedManager.isUpdatingPublisher.getter()
{
  v0 = sub_100168088(&qword_10057D630);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v6 = static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_10057D640);
  sub_100168088(&unk_1005783E0);
  sub_100009FAC(&unk_10057D650, &unk_10057D640);
  sub_100009FAC(&qword_10057DE80, &unk_1005783E0);
  Publisher<>.flatMap<A>(maxPublishers:_:)();
  sub_100009FAC(&qword_10057D660, &qword_10057D630);
  v4 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v3, v0);
  return v4;
}

void sub_1002D5204(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR___MTFeedManager__wasUpdating;
    if ((v1 & 1) == 0 && *(Strong + OBJC_IVAR___MTFeedManager__wasUpdating) == 1)
    {
      sub_1002D5284();
      v4 = OBJC_IVAR___MTFeedManager__wasUpdating;
    }

    v3[v4] = v1;
  }
}

void sub_1002D5284()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F1C(0, &qword_1005729D0);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = [objc_opt_self() defaultCenter];
    [v7 postNotificationName:@"MTFeedUpdateDidEndUpdatingAllFeeds" object:v1];

    sub_100009F1C(0, &qword_100573AC0);
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 importContext];

    static MTPodcast.recalculateAvailabilityDates(in:completion:)();
    sub_100009F1C(0, &qword_100573E00);
    v10 = [swift_getObjCClassFromMetadata() sharedInstance];
    v11 = String._bridgeToObjectiveC()();
    [v10 processNotificationsWithReason:v11];
  }

  else
  {
    __break(1u);
  }
}