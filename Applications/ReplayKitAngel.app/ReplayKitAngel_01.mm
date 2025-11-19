id sub_100026A74()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  __chkstk_darwin(v7);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000301D0();
  (*(v12 + 16))(v15, v16, v11);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v72 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v71 = v6;
    v22 = v2;
    v23 = v1;
    v24 = v21;
    aBlock[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004D480, aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "%s", v20, 0xCu);
    sub_1000114A8(v24);
    v1 = v23;
    v2 = v22;
    v6 = v71;

    v3 = v72;
  }

  (*(v12 + 8))(v15, v11);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  aBlock[4] = sub_10002B270;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005DEE0;
  v27 = _Block_copy(aBlock);
  v28 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002A9B8(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (v3[1])(v6, v2);
  (*(v73 + 8))(v10, v74);
  v29 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v29 notificationOccurred:0];

  v30 = (*((swift_isaMask & *v28) + 0x3A0))();
  v31 = sub_1000368C4();
  [v30 setConstant:*v31];

  v32 = objc_opt_self();
  v33 = *((swift_isaMask & *v28) + 0x3D0);
  v73 = (swift_isaMask & *v28) + 976;
  v74 = v33;
  v33();
  v71 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v72 = v32;
  [v32 deactivateConstraints:isa];

  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100047E30;
  result = [v28 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v37 = result;
  v38 = [result widthAnchor];

  v39 = *((swift_isaMask & *v28) + 0x3B8);
  v40 = v39();
  v41 = [v40 widthAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v35 + 32) = v42;
  result = [v28 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  v44 = [result heightAnchor];

  v45 = [v44 constraintEqualToConstant:*v31];
  *(v35 + 40) = v45;
  v46 = v39();
  v47 = [v46 heightAnchor];

  v48 = [v47 constraintEqualToConstant:*v31];
  *(v35 + 48) = v48;
  v49 = v39();
  v50 = [v49 widthAnchor];

  v51 = [v50 constraintEqualToConstant:*sub_1000366B0()];
  *(v35 + 56) = v51;
  v52 = (*((swift_isaMask & *v28) + 0x3D8))(v35);
  v70 = v28;
  v53 = v74(v52);
  v54 = v53;
  if (v53 >> 62)
  {
    goto LABEL_17;
  }

  v55 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &selRef_setElementNeedsUpdate; v55; i = &selRef_setElementNeedsUpdate)
  {
    v57 = 0;
    while (1)
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v57 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v58 = *(v54 + 8 * v57 + 32);
      }

      v60 = v58;
      v61 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      LODWORD(v59) = 1144750080;
      [v58 setPriority:v59];

      ++v57;
      i = &selRef_setElementNeedsUpdate;
      if (v61 == v55)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v55 = _CocoaArrayWrapper.endIndex.getter();
  }

LABEL_18:

  v63 = v70;
  v74(v62);
  v64 = Array._bridgeToObjectiveC()().super.isa;

  [v72 activateConstraints:v64];

  v65 = *((swift_isaMask & *v63) + 0x340);
  v66 = v65();
  [v66 setHidden:0];

  v67 = v65();
  [v67 setEnabled:1];

  result = [v63 i[228]];
  if (result)
  {
    v68 = result;
    [result layoutIfNeeded];

    [objc_msgSend(v63 "systemApertureElementContext")];
    return swift_unknownObjectRelease();
  }

LABEL_22:
  __break(1u);
  return result;
}

id sub_10002746C()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v66 - v4;
  v6 = type metadata accessor for URL();
  v73 = *(v6 - 8);
  v7 = *(v73 + 64);
  __chkstk_darwin(v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v66 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - v20;
  v22 = (*((swift_isaMask & *v0) + 0x298))(v19);
  if (v22)
  {
    v71 = v18;
    v72 = v22;
    v69 = v9;
    v23 = sub_1000301D0();
    v24 = v11[2];
    v67 = v23;
    v66 = v24;
    (v24)(v21);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v10;
    v70 = v6;
    v68 = v11;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v74);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s", v29, 0xCu);
      sub_1000114A8(v30);
      v6 = v70;
      v31 = v73;

      v32 = v11[1];
      v33 = v28;
      v34 = v32(v21, v28);
    }

    else
    {

      v32 = v11[1];
      v33 = v28;
      v34 = v32(v21, v28);
      v31 = v73;
    }

    (*((swift_isaMask & *v1) + 0x358))(v34);
    v41 = (*(v31 + 48))(v5, 1, v6);
    v42 = v71;
    if (v41 == 1)
    {
      sub_100011940(v5, &qword_100068DF0, qword_100047E90);
      v66(v42, v67, v33);
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v74[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v74);
        _os_log_impl(&_mh_execute_header, v43, v44, "%s photos URL is nil", v45, 0xCu);
        sub_1000114A8(v46);
      }

      return v32(v42, v33);
    }

    else
    {
      v47 = v31;
      v48 = v69;
      (*(v31 + 32))(v69, v5, v6);
      v49 = sub_1000377A0();
      v50 = *v49;
      v51 = *(v49 + 1);

      v52 = String._bridgeToObjectiveC()();

      v53 = v72;
      [v72 setState:v52];

      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v55 = result;
        URL._bridgeToObjectiveC()(v54);
        v57 = v56;
        sub_10000B62C(&qword_100069130, &qword_100048508);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100047E80;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v59;
        *(inited + 72) = &type metadata for Bool;
        *(inited + 48) = 1;
        *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 88) = v60;
        *(inited + 120) = &type metadata for Bool;
        *(inited + 96) = 1;
        sub_10002AC84(inited);
        swift_setDeallocating();
        sub_10000B62C(&qword_100069138, &qword_100048510);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v55 openSensitiveURL:v57 withOptions:isa];

        v62 = *sub_10002B924();
        v63 = *((swift_isaMask & *v1) + 0x238);
        v64 = v62;
        v65 = v63();
        (*((swift_isaMask & *v64) + 0xF8))(v65);

        return (*(v47 + 8))(v48, v70);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v35 = sub_1000301D0();
    (v11[2])(v15, v35, v10);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D460, v74);
      _os_log_impl(&_mh_execute_header, v36, v37, "%s error loading views", v38, 0xCu);
      sub_1000114A8(v39);
    }

    return (v11[1])(v15, v10);
  }

  return result;
}

uint64_t sub_100027D3C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v75 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v73 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v73 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v73 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v73 - v17;
  v19 = (*((swift_isaMask & *v0) + 0x370))(v16);
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v74 = v15;
    v23 = sub_1000301D0();
    v24 = v3[2];
    v76 = v23;
    v77 = v24;
    v78 = (v3 + 2);
    (v24)(v18);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v73 = v1;
      aBlock[0] = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_100010E34(v21, v22, aBlock);
      _os_log_impl(&_mh_execute_header, v25, v26, "%s start identifier=%s", v27, 0x16u);
      swift_arrayDestroy();

      v29 = v18;
      v30 = v3[1];
      v31 = v2;
      v1 = v73;
    }

    else
    {

      v29 = v18;
      v30 = v3[1];
      v31 = v2;
    }

    v30(v29, v2);
    v38 = objc_opt_self();
    sub_10000B62C(&qword_100068EA8, &qword_100047EA8);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100047E60;
    *(v39 + 32) = v21;
    *(v39 + 40) = v22;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v41 = [v38 fetchAssetsWithLocalIdentifiers:isa options:0];

    v42 = [v41 firstObject];
    if (v42)
    {
      v43 = [objc_opt_self() sharedPhotoLibrary];
      v44 = swift_allocObject();
      v44[2] = v42;
      aBlock[4] = sub_10002ABB0;
      aBlock[5] = v44;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000F174;
      aBlock[3] = &unk_10005DE90;
      v45 = _Block_copy(aBlock);
      v73 = v42;

      aBlock[0] = 0;
      v46 = [v43 performChangesAndWait:v45 error:aBlock];
      _Block_release(v45);

      if (v46)
      {
        v47 = aBlock[0];
        v48 = v31;
      }

      else
      {
        v53 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v54 = v75;
        v48 = v31;
        v77(v75, v76, v31);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          aBlock[0] = v58;
          *v57 = 136315138;
          *(v57 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
          _os_log_impl(&_mh_execute_header, v55, v56, "%s asset deletion failed", v57, 0xCu);
          sub_1000114A8(v58);
          v48 = v31;
        }

        v30(v54, v48);
      }

      v59 = v74;
      v77(v74, v76, v48);
      v60 = v1;
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v78 = v30;
        v64 = v48;
        v65 = v63;
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        aBlock[0] = v67;
        *v65 = 136315394;
        *(v65 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
        *(v65 + 12) = 2112;
        *(v65 + 14) = v60;
        *v66 = v1;
        v68 = v60;
        _os_log_impl(&_mh_execute_header, v61, v62, "%s self=%@ done", v65, 0x16u);
        sub_100011940(v66, &qword_1000697C0, qword_100047CD0);

        sub_1000114A8(v67);

        v78(v59, v64);
      }

      else
      {

        v30(v59, v48);
      }

      v69 = sub_10002B924();
      v70 = *((swift_isaMask & *v60) + 0x238);
      v71 = *v69;
      v72 = v70();
      (*((swift_isaMask & *v71) + 0xF8))(v72);
    }

    else
    {
      v77(v12, v76, v31);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        aBlock[0] = v52;
        *v51 = 136315138;
        *(v51 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
        _os_log_impl(&_mh_execute_header, v49, v50, "%s photos asset is nil", v51, 0xCu);
        sub_1000114A8(v52);
      }

      return (v30)(v12, v31);
    }
  }

  else
  {
    v32 = sub_1000301D0();
    (v3[2])(v9, v32, v2);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D440, aBlock);
      _os_log_impl(&_mh_execute_header, v33, v34, "%s photos identifier is nil", v35, 0xCu);
      sub_1000114A8(v36);
    }

    return (v3[1])(v9, v2);
  }
}

void sub_1000287E0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100037234();
  v9 = *v8 == a2 && v8[1] == a3;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = sub_10003724C(), *v10 == a2) ? (v11 = v10[1] == a3) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 = sub_100037264(), *v12 == a2) && v12[1] == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v13 = a1;
    v14 = UIAccessibilityAnnouncementNotification;
    type metadata accessor for RPSystemApertureElementViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    UIAccessibilityPostNotification(v14, v19);

    a1 = v13;
  }

  type metadata accessor for RPSystemApertureElementViewController();
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:v20];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v53 = v24;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = String._bridgeToObjectiveC()();
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView];
  if (v28)
  {
    sub_1000119A0(0, &qword_100069120, UIView_ptr);
    v29 = a1;
    v30 = v28;
    v31 = static NSObject.== infix(_:_:)();

    if (v31)
    {
      v32 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView];
      if (!v32)
      {
        goto LABEL_40;
      }

      v33 = [v32 accessibilityLabel];
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 == v25 && v37 == v27)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v39 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView];
  if (!v39)
  {
    goto LABEL_34;
  }

  sub_1000119A0(0, &qword_100069120, UIView_ptr);
  v40 = a1;
  v41 = v39;
  v42 = static NSObject.== infix(_:_:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v28 || (v43 = [v28 accessibilityLabel]) == 0)
  {
LABEL_40:

    goto LABEL_41;
  }

  v44 = v43;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  if (v45 != v25 || v47 != v27)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v52 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

LABEL_34:

LABEL_35:
  v48 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView];
  if (!v48 || (sub_1000119A0(0, &qword_100069120, UIView_ptr), v49 = a1, v50 = v48, v51 = static NSObject.== infix(_:_:)(), v50, v49, (v51 & 1) == 0))
  {

    return;
  }

LABEL_41:
  [a1 setAccessibilityLabel:v53];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v4 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }
}

id sub_100028D4C(uint64_t a1, uint64_t a2, void *a3)
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

id sub_100028E40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_10002910C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10002913C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100029168@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10002925C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000292D4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100029354@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100029398@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000293C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100029978(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100029414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10002945C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100029488(uint64_t a1)
{
  v2 = sub_10002A9B8(&unk_100069110, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_10002A9B8(&unk_1000696D0, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100029544()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100029580()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000295D4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100029648(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

unint64_t sub_1000296D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100029748(a1, a2, v6);
}

unint64_t sub_100029748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100029800(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005D6E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100029870(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005D770, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000298BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RPSystemApertureElementViewController()
{
  result = qword_100069D10;
  if (!qword_100069D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000299B0()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_statusBarStyleOverridesToSuppress) = 0x100000;
  v2 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *(v1 + v2) = *sub_1000366FC();
  v3 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionID);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_presentationBehaviors) = 666;
  v4 = SBUISystemApertureElementIdentifierScreenRecording;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_elementIdentifier) = SBUISystemApertureElementIdentifierScreenRecording;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingView;
  v6 = type metadata accessor for RPSessionAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v4;
  *(v1 + v5) = sub_100012A64(0);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingCountdownView;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_100012A64(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingView;
  v12 = objc_allocWithZone(v6);
  *(v1 + v11) = sub_100012A64(1);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingCountdownView;
  v14 = objc_allocWithZone(v6);
  *(v1 + v13) = sub_100012A64(1);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalView;
  v16 = objc_allocWithZone(v6);
  *(v1 + v15) = sub_100012A64(2);
  v17 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreview;
  type metadata accessor for VideoEffectsPreview();
  *(v1 + v17) = sub_10000DCFC();
  v18 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_timerLabel;
  *(v1 + v18) = [objc_allocWithZone(UILabel) init];
  v19 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel;
  *(v1 + v19) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_trailingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_leadingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_recordingState) = 1;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_sessionType) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___buttonStackView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___viewButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___deleteButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___showInFilesButton) = 0;
  v20 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosURL;
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v22(v1 + v20, 1, 1, v21);
  v23 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_photosIdentifier);
  *v23 = 0;
  v23[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___stopButton) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = 0;
  v24 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customView;
  *(v1 + v24) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_cameraPreviewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_accessoryViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_minimalViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewElementLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_customViewCameraPreviewLayoutConstraints) = &_swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_keyColor;
  *(v1 + v25) = [objc_opt_self() grayColor];
  v26 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_associatedAppBundleIdentifier);
  *v26 = 0;
  v26[1] = 0;
  v22(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_launchURL, 1, 1, v21);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_countdownPaused) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_completionTimer) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_inExpandedButtonView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100029DD4()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100029E74()
{
  result = qword_100068E80;
  if (!qword_100068E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068E80);
  }

  return result;
}

void sub_100029EC8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = objc_opt_self();
  v5 = *sub_100036D58();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v3;
  v9[4] = sub_10002B018;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000F174;
  v9[3] = &unk_10005E020;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v4 animateWithDuration:v7 animations:v5];
  _Block_release(v7);
}

uint64_t sub_100029FEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002A034(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  result = swift_beginAccess();
  if ((*(v4 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v4 + 16) = 1;
    v7 = sub_100037028();
    v8 = *v7;
    v9 = v7[1];
    v10 = *((swift_isaMask & *v3) + 0x5C8);

    v10(a1, v5, v8, v9);
  }

  return result;
}

id sub_10002A128()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(v0[2] + OBJC_IVAR____TtC14ReplayKitAngel37RPSystemApertureElementViewController_screenRecordingLabel);
  v4 = String._bridgeToObjectiveC()();
  [v3 setText:v4];

  return [v3 sizeToFit];
}

uint64_t sub_10002A1A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, v5 + 24, v3 | 7);
}

id sub_10002A288()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = *(v0 + v3);
  v8 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 1);
  v10 = *(v8 + 2);

  return sub_1000237B4(v4, v5, v6, v0 + v2, v7, v9, v10);
}

uint64_t sub_10002A320()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002A368()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10002A3C4()
{
  result = qword_100068EC0;
  if (!qword_100068EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC0);
  }

  return result;
}

unint64_t sub_10002A41C()
{
  result = qword_100068EC8;
  if (!qword_100068EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068EC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RPSessionAccessoryView.Role(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPSessionAccessoryView.Role(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10002A5E4()
{
  sub_10002A72C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002A72C()
{
  if (!qword_1000690A0)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000690A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPSystemApertureElementViewController.RecordingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RPSystemApertureElementViewController.RecordingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10002A924(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10002A9B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10002ABB0()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100047E40;
  *(v3 + 32) = v1;
  sub_1000119A0(0, &qword_100069128, PHAsset_ptr);
  v4 = v1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 deleteAssets:isa];
}

unint64_t sub_10002AC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000B62C(&unk_100069140, &qword_100048518);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002ADB4(v4, &v13, &qword_100069138, &qword_100048510);
      v5 = v13;
      v6 = v14;
      result = sub_1000296D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002AE1C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10002ADB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000B62C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_10002AE1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002AE2C()
{
  v1 = *(v0 + 16);
  if (sub_10001F664())
  {
    sub_100020AD4();
  }

  return sub_100020D10();
}

uint64_t sub_10002AE5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002AEB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10002AEF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_1000368AC();
  v4 = [v1 setAlpha:*v3];
  v5 = (*((swift_isaMask & *v2) + 0x280))(v4);
  [v5 setAlpha:*v3];
}

uint64_t sub_10002AFD8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10002B018()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = (*((swift_isaMask & **(v0 + 16)) + 0x280))();
  v3 = String._bridgeToObjectiveC()();
  [v4 setText:v3];
}

uint64_t sub_10002B144()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10002B188()
{
  result = qword_1000694E0;
  if (!qword_1000694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694E0);
  }

  return result;
}

uint64_t sub_10002B2F8(uint64_t a1)
{
  v2 = sub_10002B3F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B334(uint64_t a1)
{
  v2 = sub_10002B3F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10002B3B4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002B3F8()
{
  result = qword_10006A328;
  if (!qword_10006A328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A328);
  }

  return result;
}

uint64_t sub_10002B524@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10002B560(uint64_t a1)
{
  v2 = sub_10002B73C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B59C(uint64_t a1)
{
  v2 = sub_10002B73C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B61C(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_10000B62C(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10002B3B4(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_10002B73C()
{
  result = qword_10006A330[0];
  if (!qword_10006A330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A330);
  }

  return result;
}

uint64_t sub_10002B7D4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_10000B62C(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002B3B4(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

id sub_10002B8F4()
{
  result = [objc_allocWithZone(type metadata accessor for RPSessionGateway()) init];
  qword_10006B980 = result;
  return result;
}

uint64_t *sub_10002B924()
{
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  return &qword_10006B980;
}

id sub_10002B974()
{
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  v0 = qword_10006B980;

  return v0;
}

uint64_t sub_10002BA2C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10002BA74(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10002BB34()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10002BB78(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10002BC28()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10002BC80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

void *sub_10002BD40()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10002BD8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10002BE44()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "startReadyBanner()", v10, 2u);
  }

  (*(v3 + 8))(v6, v2);
  return (*((swift_isaMask & *v1) + 0xE0))(3);
}

uint64_t sub_10002C024()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "stopReadyBanner()", v10, 2u);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return (*((swift_isaMask & *v1) + 0xE8))(v11);
}

uint64_t sub_10002C200(unsigned int a1)
{
  v2 = v1;
  v65 = a1;
  v3 = type metadata accessor for ActivityPresentationOptions();
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = *(v66 + 64);
  __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v63 = &v62 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v62 - v16;
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v20 = sub_1000301D0();
  v21 = v8[2];
  v70 = v20;
  v71 = v21;
  v74 = v7;
  v72 = v8 + 2;
  (v21)(v19);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "startWithSessionType(_:)", v24, 2u);
  }

  v64 = v12;
  v68 = v6;

  v73 = v8[1];
  v69 = v8 + 1;
  v25 = v73(v19, v74);
  if ((*((swift_isaMask & *v2) + 0x70))(v25))
  {

    v71(v17, v70, v74);
    v26 = v2;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v75[0] = v30;
      *v29 = 136315138;
      v31 = (*((swift_isaMask & *v26) + 0xA0))();
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        v31 = 1819047246;
        v33 = 0xE400000000000000;
      }

      v34 = sub_100010E34(v31, v33, v75);
      v62 = v17;
      v35 = v34;

      *(v29 + 4) = v35;
      v36 = v74;
      _os_log_impl(&_mh_execute_header, v27, v28, "Stop existing session sessionID=%s", v29, 0xCu);
      sub_1000114A8(v30);

      v37 = v73(v62, v36);
    }

    else
    {

      v37 = v73(v17, v74);
    }

    (*((swift_isaMask & *v26) + 0xE8))(v37);
  }

  (*((swift_isaMask & *v2) + 0x90))(v65);
  v38 = sub_1000371BC();
  v39 = *v38;
  v40 = v38[1];
  sub_10000B62C(&qword_1000691F0, &qword_100048540);
  v41 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v42 = *(v41 - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100047E60;
  (*(v42 + 104))(v45 + v44, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v41);

  v46 = v68;
  ActivityPresentationOptions.init(destinations:)();
  sub_10000B62C(&qword_1000691F8, &qword_100048548);
  static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();

  v47 = *((swift_isaMask & *v2) + 0x78);

  v47(v48);
  v49 = Activity.id.getter();
  (*((swift_isaMask & *v2) + 0xA8))(v49);
  v50 = v63;
  v71(v63, v70, v74);
  v51 = v2;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = v50;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v75[0] = v56;
    *v55 = 136315138;
    v57 = (*((swift_isaMask & *v51) + 0xA0))();
    if (v58)
    {
      v59 = v58;
    }

    else
    {
      v57 = 1819047246;
      v59 = 0xE400000000000000;
    }

    v60 = sub_100010E34(v57, v59, v75);

    *(v55 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v52, v53, "new session sessionID=%s", v55, 0xCu);
    sub_1000114A8(v56);

    v73(v54, v74);
    return (*(v66 + 8))(v68, v67);
  }

  else
  {

    v73(v50, v74);
    return (*(v66 + 8))(v46, v67);
  }
}

unint64_t sub_10002CB0C()
{
  v1 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000301D0();
  (*(v9 + 16))(v12, v13, v8);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47[0] = v46;
    *v17 = 136315394;
    *(v17 + 4) = sub_100010E34(0x29286873696E6966, 0xE800000000000000, v47);
    *(v17 + 12) = 2080;
    v18 = (*((swift_isaMask & *v14) + 0xA0))();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v18 = 1819047246;
      v20 = 0xE400000000000000;
    }

    v21 = sub_100010E34(v18, v20, v47);
    v45 = v8;
    v22 = v21;

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s currentSessionID=%s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v9 + 8))(v12, v45);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  sub_10000B62C(&qword_1000691F8, &qword_100048548);
  result = static Activity.activities.getter();
  v24 = result;
  v46 = v14;
  if (!(result >> 62))
  {
    v25 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_25:

    v41 = [objc_opt_self() sharedInstance];
    [v41 setDelegate:0];

    v42 = v46;
    v43 = (*((swift_isaMask & *v46) + 0xB8))();
    [v43 invalidate];

    return (*((swift_isaMask & *v42) + 0xA8))(0, 0);
  }

  v40 = result;
  result = _CocoaArrayWrapper.endIndex.getter();
  v24 = v40;
  v25 = result;
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_9:
  if (v25 >= 1)
  {
    v26 = 0;
    v44 = v24 & 0xC000000000000001;
    v45 = v24;
    do
    {
      if (v44)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v24 + 8 * v26 + 32);
      }

      v28 = type metadata accessor for TaskPriority();
      v29 = *(v28 - 8);
      (*(v29 + 56))(v7, 1, 1, v28);
      v30 = swift_allocObject();
      v30[2] = 0;
      v30[3] = 0;
      v31 = v46;
      v30[4] = v27;
      v30[5] = v31;
      sub_10002EF3C(v7, v5);
      v32 = (*(v29 + 48))(v5, 1, v28);
      v33 = v31;

      if (v32 == 1)
      {
        sub_100011940(v5, &qword_100069200, &qword_100048550);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v29 + 8))(v5, v28);
      }

      v34 = v30[2];
      v35 = v30[3];
      swift_unknownObjectRetain();

      if (v34)
      {
        swift_getObjectType();
        v36 = dispatch thunk of Actor.unownedExecutor.getter();
        v38 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      sub_100011940(v7, &qword_100069200, &qword_100048550);
      v39 = swift_allocObject();
      *(v39 + 16) = &unk_100048568;
      *(v39 + 24) = v30;
      if (v38 | v36)
      {
        v47[1] = 0;
        v47[2] = 0;
        v47[3] = v36;
        v47[4] = v38;
      }

      ++v26;
      swift_task_create();

      v24 = v45;
    }

    while (v25 != v26);
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002D158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(sub_10000B62C(&qword_100069290, &qword_1000488B0) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002D2AC, 0, 0);
}

uint64_t sub_10002D2AC()
{
  v37 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_1000301D0();
  (*(v2 + 16))(v1, v6, v3);

  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];
  if (v10)
  {
    v34 = v0[10];
    v14 = v0[2];
    v15 = v0[3];
    v16 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_100010E34(0x29286873696E6966, 0xE800000000000000, &v36);
    *(v16 + 12) = 2080;
    v17 = Activity.id.getter();
    v19 = sub_100010E34(v17, v18, &v36);

    *(v16 + 14) = v19;
    *(v16 + 22) = 2080;
    v21 = (*((swift_isaMask & *v15) + 0xA0))(v20);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v21 = 1819047246;
      v23 = 0xE400000000000000;
    }

    v24 = sub_100010E34(v21, v23, &v36);

    *(v16 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s end activity=%s currentSessionID=%s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v12 + 8))(v34, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v25 = v0[6];
  v26 = v0[7];
  v27 = sub_10000B62C(&qword_100069298, &qword_1000488B8);
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
  static ActivityUIDismissalPolicy.immediate.getter();
  v28 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
  v35 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
  v29 = swift_task_alloc();
  v0[11] = v29;
  *v29 = v0;
  v29[1] = sub_10002D5BC;
  v30 = v0[6];
  v31 = v0[7];
  v32 = v0[2];

  return v35(v31, v30);
}

uint64_t sub_10002D5BC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v9 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_100011940(v3, &qword_100069290, &qword_1000488B0);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_10002D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002EF3C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100011940(v12, &qword_100069200, &qword_100048550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000B62C(&qword_100069288, &qword_1000488A0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100011940(a3, &qword_100069200, &qword_100048550);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011940(a3, &qword_100069200, &qword_100048550);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000B62C(&qword_100069288, &qword_1000488A0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10002DA70()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v31 - v8;
  v10 = sub_1000301D0();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v33 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v32 = v10;
    v17 = v11;
    v18 = v7;
    v19 = v16;
    v34 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D690, &v34);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_1000114A8(v19);
    v7 = v18;
    v11 = v17;
    v10 = v32;

    v3 = v33;
  }

  v20 = v3[1];
  v21 = v20(v9, v2);
  if ((*((swift_isaMask & *v1) + 0x70))(v21))
  {
    Activity.id.getter();

    v22 = objc_allocWithZone(SNAProminentPresentationAssertion);
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();

    v25 = [v22 initWithExplanation:v23 sessionIdentifier:v24 invalidationHandler:0];

    return (*((swift_isaMask & *v1) + 0xC0))(v25);
  }

  else
  {
    v11(v7, v10, v2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D690, &v34);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s SessionIdentifier nil", v29, 0xCu);
      sub_1000114A8(v30);
    }

    return v20(v7, v2);
  }
}

uint64_t sub_10002DE70(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v55 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v55 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v55 - v20;
  if (a2)
  {
    v57 = v10;
    v22 = *((swift_isaMask & *v3) + 0xA0);
    v23 = v22(v19);
    if (v24)
    {
      if (v23 == a1 && v24 == a2)
      {

LABEL_19:
        v45 = type metadata accessor for TaskPriority();
        (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
        v46 = swift_allocObject();
        v46[2] = 0;
        v46[3] = 0;
        v46[4] = v3;
        v47 = v3;
        sub_10002D76C(0, 0, v9, &unk_100048580, v46);

        v49 = (*((swift_isaMask & *v47) + 0xB8))(v48);
        [v49 invalidate];

        (*((swift_isaMask & *v47) + 0xA8))(0, 0);
        v50 = sub_1000301D0();
        v51 = v57;
        (*(v11 + 16))(v15, v50, v57);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v52, v53, "finishSession(_:)", v54, 2u);
        }

        return (*(v11 + 8))(v15, v51);
      }

      v56 = a1;
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v56 = a1;
    }

    v33 = sub_1000301D0();
    v34 = v57;
    (*(v11 + 16))(v18, v33, v57);

    v35 = v3;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v58 = v55;
      *v38 = 136315650;
      *(v38 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D6B0, &v58);
      *(v38 + 12) = 2080;

      v39 = sub_100010E34(v56, a2, &v58);

      *(v38 + 14) = v39;
      *(v38 + 22) = 2080;
      v41 = v22(v40);
      if (v42)
      {
        v43 = v42;
      }

      else
      {
        v41 = 1819047246;
        v43 = 0xE400000000000000;
      }

      v44 = sub_100010E34(v41, v43, &v58);

      *(v38 + 24) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s sessionID=%s not equal to currentSessionID=%s", v38, 0x20u);
      swift_arrayDestroy();

      return (*(v11 + 8))(v18, v57);
    }

    else
    {

      return (*(v11 + 8))(v18, v34);
    }
  }

  else
  {
    v27 = sub_1000301D0();
    (*(v11 + 16))(v21, v27, v10);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100010E34(0xD000000000000011, 0x800000010004D6B0, &v58);
      _os_log_impl(&_mh_execute_header, v28, v29, "%s sessionID is nil", v30, 0xCu);
      sub_1000114A8(v31);
    }

    return (*(v11 + 8))(v21, v10);
  }
}

uint64_t sub_10002E4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = type metadata accessor for ActivityUIDismissalPolicy();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = *(*(sub_10000B62C(&qword_100069290, &qword_1000488B0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002E5C4, 0, 0);
}

uint64_t sub_10002E5C4()
{
  v1 = (*((swift_isaMask & **(v0 + 24)) + 0x70))();
  *(v0 + 64) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = sub_10000B62C(&qword_100069298, &qword_1000488B8);
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    static ActivityUIDismissalPolicy.immediate.getter();
    v5 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
    v13 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
    v6 = swift_task_alloc();
    *(v0 + 72) = v6;
    *v6 = v0;
    v6[1] = sub_10002E760;
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);

    return v13(v8, v7);
  }

  else
  {
    v11 = *(v0 + 48);
    v10 = *(v0 + 56);
    **(v0 + 16) = 1;

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10002E760()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_100011940(v3, &qword_100069290, &qword_1000488B0);

  return _swift_task_switch(sub_10002E908, 0, 0);
}

uint64_t sub_10002E908()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 64) == 0;

  v3 = *(v0 + 8);

  return v3();
}

id sub_10002E984()
{
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_session] = 0;
  v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_sessionType] = 5;
  v1 = &v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_currentSessionID];
  *v1 = 0;
  v1[1] = 0;
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel16RPSessionGateway_assertion] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RPSessionGateway();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10002EBA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPSessionProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10002EC34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002EC6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002ED64;

  return v7(a1);
}

uint64_t sub_10002ED64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002EE5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002EEA4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100030124;

  return sub_10002D158(v4, v5, v6, v2, v3);
}

uint64_t sub_10002EF3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100069200, &qword_100048550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002EFAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030124;

  return sub_10002EC6C(a1, v5);
}

uint64_t sub_10002F064()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002F0A4(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F144;

  return sub_10002E4CC(a1, v5, v6, v4);
}

uint64_t sub_10002F144()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002F25C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10002F350;

  return v6(v2 + 32);
}

uint64_t sub_10002F350()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10002F464(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000301D0();
  (*(v5 + 16))(v8, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004D7A0, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_1000114A8(v13);
  }

  (*(v5 + 8))(v8, v4);

  v14._countAndFlagsBits = a1;
  v14._object = a2;
  LOBYTE(v15) = SessionType.init(rawValue:)(v14);
  if (qword_10006A320 != -1)
  {
    v17 = v15;
    swift_once();
    LODWORD(v15) = v17;
  }

  if (v15 == 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = v15;
  }

  return (*((swift_isaMask & *qword_10006B980) + 0xE0))(v15);
}

uint64_t sub_10002F8DC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A320 != -1)
  {
    swift_once();
  }

  v5 = (*((swift_isaMask & *qword_10006B980) + 0xA0))();
  v7 = v6;
  v8 = sub_1000301D0();
  (*(v1 + 16))(v4, v8, v0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D780, &v17);
    *(v11 + 12) = 2080;
    v16 = v0;
    v12 = v5;
    if (v7)
    {
      v13 = v7;
    }

    else
    {
      v5 = 1819047246;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100010E34(v5, v13, &v17);

    *(v11 + 14) = v14;
    v5 = v12;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s sessionID=%s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v1 + 8))(v4, v16);
  }

  else
  {

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

unint64_t sub_10002FBC8()
{
  result = qword_100069208;
  if (!qword_100069208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069208);
  }

  return result;
}

unint64_t sub_10002FC20()
{
  result = qword_100069210;
  if (!qword_100069210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069210);
  }

  return result;
}

unint64_t sub_10002FC78()
{
  result = qword_100069218;
  if (!qword_100069218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069218);
  }

  return result;
}

unint64_t sub_10002FCD0()
{
  result = qword_100069220;
  if (!qword_100069220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069220);
  }

  return result;
}

unint64_t sub_10002FD28()
{
  result = qword_100069228;
  if (!qword_100069228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069228);
  }

  return result;
}

unint64_t sub_10002FD80()
{
  result = qword_100069230;
  if (!qword_100069230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069230);
  }

  return result;
}

unint64_t sub_10002FE18()
{
  result = qword_10006A8C0;
  if (!qword_10006A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A8C0);
  }

  return result;
}

unint64_t sub_10002FE70()
{
  result = qword_10006A8C8[0];
  if (!qword_10006A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A8C8);
  }

  return result;
}

unint64_t sub_10002FEC8()
{
  result = qword_10006A950;
  if (!qword_10006A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006A950);
  }

  return result;
}

unint64_t sub_10002FF20()
{
  result = qword_10006A958[0];
  if (!qword_10006A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10006A958);
  }

  return result;
}

uint64_t sub_10002FF74()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FFAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100030124;

  return sub_10002F25C(a1, v5);
}

uint64_t sub_100030064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F144;

  return sub_10002F25C(a1, v5);
}

uint64_t sub_10003014C()
{
  v0 = type metadata accessor for Logger();
  sub_100011C68(v0, qword_10006B988);
  sub_10000E464(v0, qword_10006B988);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000301D0()
{
  if (qword_10006A9E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_10000E464(v0, qword_10006B988);
}

uint64_t sub_100030234()
{
  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_100011C68(v0, qword_10006B9A0);
  sub_10000E464(v0, qword_10006B9A0);
  sub_10000B62C(&unk_100069420, qword_100048A70);
  v1 = *(type metadata accessor for Tips.ParameterOption() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  *(swift_allocObject() + 16) = xmmword_100047E60;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100030380()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);

  return sub_10000E464(v0, qword_10006B9A0);
}

uint64_t sub_1000303F0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v3 = sub_10000E464(v2, qword_10006B9A0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1000304BC(uint64_t a1)
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v3 = sub_10000E464(v2, qword_10006B9A0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*sub_1000305BC())()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10003065C()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  return v2;
}

uint64_t sub_100030704()
{
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

void (*sub_1000307BC(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x30uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v4 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  *(v3 + 24) = v4;
  *(v3 + 32) = sub_10000E464(v4, qword_10006B9A0);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  v5 = *(v3 + 41);
  swift_endAccess();
  *(v3 + 40) = v5;
  return sub_1000308B8;
}

void sub_1000308B8(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *(*a1 + 41) = *(*a1 + 40);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();

  free(v1);
}

uint64_t sub_100030A04()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030AB8();
  return Text.init<A>(_:)();
}

unint64_t sub_100030AB8()
{
  result = qword_1000692A8;
  if (!qword_1000692A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692A8);
  }

  return result;
}

uint64_t sub_100030B0C()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100030AB8();
  return Text.init<A>(_:)();
}

uint64_t sub_100030BC0()
{
  v0 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  v5 = type metadata accessor for Tips.Rule();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10006A9F0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000E464(v0, qword_10006B9A0);
  swift_beginAccess();
  (*(v1 + 16))(v4, v10, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v6 + 8))(v9, v5);
  v11 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v11;
}

uint64_t sub_100030DDC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000B62C(&qword_1000693E0, &qword_100048A58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  v7 = sub_10000B62C(&qword_1000693E8, &qword_100048A60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v13[-v10];
  sub_1000349B0(&qword_1000693F0, &qword_1000693E8, &qword_100048A60);
  static PredicateExpressions.build_Arg<A>(_:)();
  v13[15] = 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a1[3] = sub_10000B62C(&qword_1000693F8, &qword_100048A68);
  a1[4] = sub_100034810();
  sub_10003494C(a1);
  sub_1000349B0(&qword_100069418, &qword_1000693E0, &qword_100048A58);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100031040()
{
  v0 = sub_10000B62C(&qword_1000692B0, &qword_1000488C8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - v3;
  v5 = type metadata accessor for Tips.MaxDisplayCount();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000B62C(&qword_1000692B8, &unk_1000488D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v6 + 8))(v9, v5);
  v18 = v5;
  v19 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v18 = v10;
  v19 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v4, v0);
  (*(v11 + 8))(v14, v10);
  return v16;
}

uint64_t sub_1000312E4()
{
  v1 = *v0;
  strcpy(v3, "ReactionsTip-");
  String.append(_:)(v1);
  return v3[0];
}

void sub_100031340(void *a1@<X8>)
{
  v3 = *v1;
  strcpy(v5, "ReactionsTip-");
  HIWORD(v5[1]) = -4864;
  String.append(_:)(v3);
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
}

id sub_1000313FC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = &_swiftEmptyArrayStorage;
  v15 = sub_1000301D0();
  (*(v11 + 16))(v14, v15, v10);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v10;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a2;
    v29 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_100010E34(0xD000000000000017, 0x800000010004D840, &v29);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_100010E34(a1, v28, &v29);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_100010E34(a3, a4, &v29);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s appName=%s bundleID=%s", v19, 0x20u);
    swift_arrayDestroy();
    a2 = v28;

    (*(v11 + 8))(v14, v27);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v21 = &v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName];
  *v21 = a1;
  v21[1] = a2;
  v22 = &v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID];
  *v22 = a3;
  v22[1] = a4;
  v23 = [objc_allocWithZone(UIView) init];
  *&v5[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] = v23;
  v24 = type metadata accessor for RPReactionsTipViewController();
  v30.receiver = v5;
  v30.super_class = v24;
  return objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
}

id sub_10003170C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = &_swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName];
  *v3 = 0;
  *(v3 + 1) = 0xE000000000000000;
  v4 = &v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for RPReactionsTipViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100031810()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = &selRef_setElementNeedsUpdate;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, v35);
    *(v11 + 12) = 2112;
    v14 = [v7 view];

    if (!v14)
    {
      goto LABEL_10;
    }

    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v37.origin.x = v16;
    v37.origin.y = v18;
    v37.size.width = v20;
    v37.size.height = v22;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v37);
    *(v11 + 14) = DictionaryRepresentation;
    *v12 = DictionaryRepresentation;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s self.view.frame=%@", v11, 0x16u);
    sub_100011940(v12, &qword_1000697C0, qword_100047CD0);

    sub_1000114A8(v13);

    (*(v2 + 8))(v5, v1);
    v10 = &selRef_setElementNeedsUpdate;
  }

  else
  {

    (*(v2 + 8))(v5, v1);
  }

  v24 = type metadata accessor for RPReactionsTipViewController();
  v36.receiver = v7;
  v36.super_class = v24;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  v25 = [v7 v10[228]];
  if (v25)
  {
    v26 = v25;
    v27 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
    [v25 addSubview:*(v7 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView)];

    v28 = [v7 v10[228]];
    if (v28)
    {
      v29 = v28;
      [v28 setUserInteractionEnabled:0];

      v30 = [*(v7 + v27) setUserInteractionEnabled:0];
      (*((swift_isaMask & *v7) + 0x118))(v30);
      v31 = objc_opt_self();
      v32 = *(v7 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints);
      sub_100034080();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v31 activateConstraints:isa];

      v34 = static Tips.configure(_:)();
      (*((swift_isaMask & *v7) + 0x120))(v34);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_100031C9C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000301D0();
  (*(v5 + 16))(v8, v9, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100010E34(0xD000000000000015, 0x800000010004D860, &v20);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_1000114A8(v13);
  }

  (*(v5 + 8))(v8, v4);
  v14 = type metadata accessor for RPReactionsTipViewController();
  v21.receiver = v2;
  v21.super_class = v14;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask;
  if (*&v2[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask])
  {
    v16 = *&v2[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask];

    Task.cancel()();

    v17 = *&v2[v15];
  }

  *&v2[v15] = 0;
}

id sub_100031F24()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
  [*&v0[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100047E30;
  v5 = [*&v0[v3] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  v7 = [result topAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v4 + 32) = v8;
  v9 = [*&v0[v3] trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:10.0];
  *(v4 + 40) = v12;
  v13 = [*&v0[v3] widthAnchor];
  v14 = [v13 constraintEqualToConstant:150.0];

  *(v4 + 48) = v14;
  v15 = [*&v0[v3] heightAnchor];
  v16 = [v15 constraintEqualToConstant:45.0];

  *(v4 + 56) = v16;
  v17 = *&v0[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints];
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_layoutConstraints] = v4;
}

uint64_t sub_100032188()
{
  v1 = v0;
  v2 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v58 - v4;
  v66 = type metadata accessor for Tips.Status();
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v66);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  v20 = sub_1000301D0();
  v67 = v13;
  v21 = *(v13 + 16);
  v63 = v20;
  v64 = v13 + 16;
  v62 = v21;
  (v21)(v19);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v68 = v1;
  v65 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v59 = v17;
    v27 = v26;
    v69[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004D880, v69);
    _os_log_impl(&_mh_execute_header, v22, v23, "%s", v25, 0xCu);
    sub_1000114A8(v27);

    v1 = v68;

    v28 = *(v67 + 8);
    v29 = v19;
    v30 = v12;
    v17 = v59;
  }

  else
  {

    v28 = *(v67 + 8);
    v29 = v19;
    v30 = v12;
  }

  v61 = v28;
  v28(v29, v30);
  v32 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID);
  v31 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_bundleID + 8);
  v33 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName);
  v34 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_appName + 8);
  v35 = qword_10006A9F0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_10000B62C(&qword_1000692A0, &qword_1000488C0);
  sub_10000E464(v36, qword_10006B9A0);
  v70 = 1;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v58 = v33;
  v59 = v32;
  v69[0] = v32;
  v69[1] = v31;
  v69[2] = v33;
  v69[3] = v34;
  sub_1000340CC();
  Tip.status.getter();
  v37 = enum case for Tips.InvalidationReason.displayCountExceeded(_:);
  v38 = type metadata accessor for Tips.InvalidationReason();
  (*(*(v38 - 8) + 104))(v9, v37, v38);
  v39 = v66;
  (*(v5 + 104))(v9, enum case for Tips.Status.invalidated(_:), v66);
  LOBYTE(v37) = static Tips.Status.== infix(_:_:)();
  v40 = *(v5 + 8);
  v40(v9, v39);
  v40(v11, v39);
  if (v37)
  {

    v41 = v65;
    v62(v17, v63, v65);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "tip invalidated removing scene", v44, 2u);
    }

    v45 = v61(v17, v41);
    return (*((swift_isaMask & *v68) + 0x138))(v45);
  }

  else
  {
    v47 = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask;
    v48 = v68;
    v49 = *(v68 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask);
    if (v49)
    {
      v50 = *(v68 + OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipObservationTask);
    }

    else
    {
      v51 = type metadata accessor for TaskPriority();
      v52 = v60;
      (*(*(v51 - 8) + 56))(v60, 1, 1, v51);
      type metadata accessor for MainActor();
      v53 = v48;
      v54 = static MainActor.shared.getter();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = &protocol witness table for MainActor;
      v56 = v58;
      v55[4] = v59;
      v55[5] = v31;
      v55[6] = v56;
      v55[7] = v34;
      v55[8] = v53;
      v49 = sub_1000337A0(0, 0, v52, &unk_1000488F8, v55);
    }

    v57 = *&v48[v47];
    *&v48[v47] = v49;
  }
}

uint64_t sub_100032828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a4;
  v9 = *(*(sub_10000B62C(&qword_1000693A0, &qword_100048A28) - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v10 = type metadata accessor for Tips.Status();
  v8[21] = v10;
  v11 = *(v10 - 8);
  v8[22] = v11;
  v12 = *(v11 + 64) + 15;
  v8[23] = swift_task_alloc();
  v13 = sub_10000B62C(&qword_1000693A8, &qword_100048A30);
  v8[24] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v15 = sub_10000B62C(&qword_1000693B0, &qword_100048A38);
  v8[26] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v17 = sub_10000B62C(&qword_1000693B8, &qword_100048A40);
  v8[28] = v17;
  v18 = *(v17 - 8);
  v8[29] = v18;
  v19 = *(v18 + 64) + 15;
  v8[30] = swift_task_alloc();
  v20 = sub_10000B62C(&qword_1000693C0, &unk_100048A48);
  v8[31] = v20;
  v21 = *(v20 - 8);
  v8[32] = v21;
  v22 = *(v21 + 64) + 15;
  v8[33] = swift_task_alloc();
  v8[34] = type metadata accessor for MainActor();
  v8[35] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[36] = v24;
  v8[37] = v23;

  return _swift_task_switch(sub_100032AA8, v24, v23);
}

uint64_t sub_100032AA8()
{
  *(v0 + 56) = *(v0 + 120);
  v14 = *(v0 + 264);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 224);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 144);
  *(v0 + 72) = *(v0 + 136);
  *(v0 + 80) = v7;
  *(v0 + 304) = sub_1000340CC();
  Tip.shouldDisplayUpdates.getter();
  AsyncMapSequence.base.getter();
  sub_1000349B0(&qword_1000693C8, &qword_1000693A8, &qword_100048A30);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  AsyncMapSequence.transform.getter();
  (*(v1 + 8))(v2, v4);
  AsyncMapSequence.Iterator.init(_:transform:)();
  *(v0 + 312) = OBJC_IVAR____TtC14ReplayKitAngel28RPReactionsTipViewController_tipAnchorView;
  v8 = *(v0 + 272);
  v9 = static MainActor.shared.getter();
  *(v0 + 320) = v9;
  if (v9)
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

  *(v0 + 328) = v10;
  *(v0 + 336) = v12;

  return _swift_task_switch(sub_100032C5C, v10, v12);
}

uint64_t sub_100032C5C()
{
  v1 = v0[40];
  v2 = v0[33];
  v3 = v0[31];
  v0[43] = AsyncMapSequence.Iterator.baseIterator.modify();
  sub_1000349B0(&unk_1000693D0, &qword_1000693B0, &qword_100048A38);
  v4 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v5 = swift_task_alloc();
  v0[44] = v5;
  *v5 = v0;
  v5[1] = sub_100032D60;
  v6 = v0[26];
  v7 = v0[20];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, v1, &protocol witness table for MainActor);
}

uint64_t sub_100032D60()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v8 = *v1;

  if (v0)
  {
    v4 = *(v2 + 328);
    v5 = *(v2 + 336);
    v6 = sub_100033048;
  }

  else
  {
    (*(v2 + 344))();
    v4 = *(v2 + 328);
    v5 = *(v2 + 336);
    v6 = sub_100032E88;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100032E88()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[40];

    sub_100011940(v3, &qword_1000693A0, &qword_100048A28);
    v5 = v0[36];
    v6 = v0[37];

    return _swift_task_switch(sub_100033290, v5, v6);
  }

  else
  {
    v7 = v0[33];
    v8 = v0[31];
    (*(v2 + 32))(v0[23], v3, v1);
    v9 = AsyncMapSequence.Iterator.transform.getter();
    v0[45] = v10;
    v15 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    v0[46] = v12;
    *v12 = v0;
    v12[1] = sub_100033060;
    v13 = v0[23];

    return (v15)(v0 + 49, v13);
  }
}

uint64_t sub_100033060()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v10 = *v0;

  (*(v5 + 8))(v4, v6);
  *(v1 + 393) = *(v1 + 392);
  v7 = *(v1 + 336);
  v8 = *(v1 + 328);

  return _swift_task_switch(sub_10003320C, v8, v7);
}

uint64_t sub_10003320C()
{
  v1 = *(v0 + 393);
  v2 = *(v0 + 320);

  if (v1 == 1)
  {
    v3 = sub_100033368;
  }

  else
  {
    v3 = sub_10003362C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100033290()
{
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[27];
  v7 = v0[25];
  v8 = v0[23];
  v9 = v0[20];

  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100033368()
{
  v1 = *(v0 + 272);
  *(v0 + 376) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000333F4, v3, v2);
}

uint64_t sub_1000333F4()
{
  v1 = v0[47];
  v2 = v0[38];
  v3 = v0[39];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];

  type metadata accessor for TipUIPopoverViewController();
  v0[5] = &type metadata for ReactionsTip;
  v0[6] = v2;
  v9 = swift_allocObject();
  v0[2] = v9;
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v5;
  v10 = *(v4 + v3);

  v11 = v10;
  v12 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  swift_unknownObjectRetain();
  TipUIPopoverViewController.presentationDelegate.setter();
  v13 = [v12 view];
  if (v13)
  {
    v16 = v13;
    v17 = v0[19];
    v18 = [objc_opt_self() darkGrayColor];
    [v16 setTintColor:v18];

    [v17 presentViewController:v12 animated:1 completion:0];
    v14 = v0[36];
    v15 = v0[37];
    v13 = sub_100033594;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_100033594()
{
  v1 = v0[34];
  v2 = static MainActor.shared.getter();
  v0[40] = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v0[41] = v3;
  v0[42] = v5;

  return _swift_task_switch(sub_100032C5C, v3, v5);
}

uint64_t sub_10003362C()
{
  v1 = *(v0 + 272);
  *(v0 + 384) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000336B8, v3, v2);
}

uint64_t sub_1000336B8()
{
  v1 = v0[48];
  v2 = v0[19];

  v3 = [v2 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for TipUIPopoverViewController();
    v5 = swift_dynamicCastClass();

    if (v5)
    {
      (*((swift_isaMask & *v0[19]) + 0x138))();
    }
  }

  v6 = v0[36];
  v7 = v0[37];

  return _swift_task_switch(sub_1000349FC, v6, v7);
}

uint64_t sub_1000337A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000B62C(&qword_100069200, &qword_100048550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002EF3C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100011940(v12, &qword_100069200, &qword_100048550);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100011940(a3, &qword_100069200, &qword_100048550);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100011940(a3, &qword_100069200, &qword_100048550);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_100033AFC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v38 - v8;
  v10 = sub_1000301D0();
  v39 = v3[2];
  v39(v9, v10, v2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v38[1] = v3;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v38[0] = v1;
    v15 = v7;
    v16 = v3;
    v17 = v14;
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004D8A0, &v40);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v17, 0xCu);
    sub_1000114A8(v18);

    v19 = v16;
    v7 = v15;
    v1 = v38[0];
    v20 = v19[1];
  }

  else
  {

    v20 = v3[1];
  }

  v20(v9, v2);
  v21 = [v1 view];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 window];

    if (v23)
    {
      v24 = [v23 windowScene];

      if (v24)
      {
        objc_opt_self();
        v25 = swift_dynamicCastObjCClass();
        if (v25)
        {
          [v25 invalidate];

          return;
        }
      }
    }

    v39(v7, v10, v2);
    v26 = v1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v27, v28))
    {

      v37 = v7;
      goto LABEL_14;
    }

    v29 = v7;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 136315138;
    v32 = [v26 view];

    if (v32)
    {
      v33 = [v32 window];

      sub_10000B62C(&qword_100069308, &qword_100048900);
      v34 = _typeName(_:qualified:)();
      v36 = sub_100010E34(v34, v35, &v40);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v27, v28, "Expected remote alert scene. scene type=%s", v30, 0xCu);
      sub_1000114A8(v31);

      v37 = v29;
LABEL_14:
      v20(v37, v2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_100033FB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPReactionsTipViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100034080()
{
  result = qword_100068E10;
  if (!qword_100068E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100068E10);
  }

  return result;
}

unint64_t sub_1000340CC()
{
  result = qword_100069300;
  if (!qword_100069300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069300);
  }

  return result;
}

uint64_t sub_100034120()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100034170()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F144;

  return sub_100032828(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1000343E0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000301D0();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100010E34(0xD000000000000024, 0x800000010004D9D0, &v15);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_1000114A8(v11);
  }

  v12 = (*(v3 + 8))(v6, v2);
  return (*((swift_isaMask & *v1) + 0x138))(v12);
}

unint64_t sub_1000345DC()
{
  result = qword_100069310;
  if (!qword_100069310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069310);
  }

  return result;
}

__n128 sub_10003463C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100034648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100034690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000346E0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100034718(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F144;

  return sub_10002EC6C(a1, v5);
}

uint64_t sub_1000347D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100034810()
{
  result = qword_100069400;
  if (!qword_100069400)
  {
    sub_100011788(&qword_1000693F8, &qword_100048A68);
    sub_1000349B0(&qword_100069408, &qword_1000693E8, &qword_100048A60);
    sub_1000348C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069400);
  }

  return result;
}

unint64_t sub_1000348C8()
{
  result = qword_100069410;
  if (!qword_100069410)
  {
    sub_100011788(&qword_1000693E0, &qword_100048A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069410);
  }

  return result;
}

uint64_t *sub_10003494C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000349B0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100011788(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100034A4C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_100034AF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100034BB0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion);
  }

  else
  {
    v4 = [objc_allocWithZone(RPStatusBarAssertion) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100034C24()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_window] = 0;
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate____lazy_storage___statusBarAssertion] = 0;
  v7 = sub_10002B924();
  v8 = *((swift_isaMask & **v7) + 0x88);
  v9 = *v7;
  v10 = v8();

  if (v10 == 5)
  {
    v10 = 0;
  }

  v11 = sub_1000301D0();
  (*(v3 + 16))(v6, v11, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v29 = v7;
    v34[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100010E34(0x292874696E69, 0xE600000000000000, v34);
    *(v15 + 12) = 2080;
    v17 = SessionType.rawValue.getter(v10);
    v19 = sub_100010E34(v17, v18, v34);

    *(v15 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s SystemApertureElementProvider sessionType=%s", v15, 0x16u);
    swift_arrayDestroy();
    v7 = v29;

    v1 = v30;
  }

  (*(v3 + 8))(v6, v2);
  v36 = v10;
  v35 = 3;
  sub_100029E74();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v34[0] == v32 && v34[1] == v33)
  {

LABEL_9:
    type metadata accessor for RPReadyToRecordSystemApertureElementViewController();
    v21 = sub_10003B1A4(v10);
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_9;
  }

  v22 = *((swift_isaMask & **v7) + 0x88);
  v23 = *v7;
  v24 = v22();

  if (v24 == 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  type metadata accessor for RPSystemApertureElementViewController();
  v21 = sub_100016A70(v25);
LABEL_14:
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider] = v21;
  v26 = type metadata accessor for RPSessionPlatterSceneDelegate();
  v31.receiver = v1;
  v31.super_class = v26;
  return objc_msgSendSuper2(&v31, "init");
}

id sub_10003528C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPSessionPlatterSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100035340(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  type metadata accessor for ActivityScene();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v48 = a1;
    if ([v13 SBUI_isHostedBySystemAperture])
    {
      v14 = sub_10002B924();
      v15 = *((swift_isaMask & **v14) + 0x88);
      v16 = *v14;
      v17 = v15();

      if (v17 == 5 || (LOBYTE(v50[0]) = v17, v49 = 3, sub_10002B188(), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
      {
        v18 = sub_100034BB0();
        [v18 showStatusBarWithPid:getpid()];
      }

      v19 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider;
      [v13 setSystemApertureElementViewControllerProvider:*&v2[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider]];

      v20 = sub_1000301D0();
      (*(v5 + 16))(v11, v20, v4);
      v21 = v2;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v50[0] = v47;
        *v24 = 136315650;
        *(v24 + 4) = sub_100010E34(0xD00000000000001FLL, 0x800000010004DBC0, v50);
        *(v24 + 12) = 2112;
        *(v24 + 14) = v21;
        *(v24 + 22) = 2112;
        v46 = v22;
        v26 = v2;
        v27 = v19;
        v28 = *&v26[v19];
        *(v24 + 24) = v28;
        *v25 = v21;
        v25[1] = v28;
        v29 = v21;
        v30 = v28;
        v19 = v27;
        v2 = v26;
        v31 = v23;
        v32 = v46;
        _os_log_impl(&_mh_execute_header, v46, v31, "%s %@ adding connectionManager delegate=%@", v24, 0x20u);
        sub_10000B62C(&qword_1000697C0, qword_100047CD0);
        swift_arrayDestroy();

        sub_1000114A8(v47);
      }

      else
      {
      }

      (*(v5 + 8))(v11, v4);
      v38 = *&v2[v19];
      v50[1] = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate;
      v39 = swift_dynamicCastObjCProtocolConditional();
      v40 = objc_opt_self();
      if (v39)
      {
        v41 = v40;
        v42 = v38;
        v43 = [v41 sharedInstance];
        v44 = v42;
        [v43 setDelegate:v39];
      }

      else
      {
        v45 = [v40 sharedInstance];
        [v45 setDelegate:0];
      }
    }

    else
    {

      v37 = v48;
    }
  }

  else
  {
    v33 = sub_1000301D0();
    (*(v5 + 16))(v9, v33, v4);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "not an Activity scene", v36, 2u);
    }

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_100035878()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004DBA0, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

id sub_100035A80()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004DB80, v17);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  (*(v2 + 8))(v5, v1);
  v14 = sub_100034BB0();
  [v14 invalidateStatusBar];

  v15 = *&v7[OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider];
  v17[1] = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result didEnterBackgroud];
  }

  return result;
}

uint64_t sub_100035CD8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004DB60, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100035EE0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004DB40, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

void sub_1000360E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v40 - v7;
  v9 = sub_1000301D0();
  v42 = v2[2];
  v43 = v9;
  v42(v8);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v44 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v41 = v1;
    v17 = v6;
    v18 = v2;
    v19 = v16;
    v45 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v45);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %@", v14, 0x16u);
    sub_1000365AC(v15);

    sub_1000114A8(v19);

    v21 = v18;
    v6 = v17;
    v1 = v41;
    v22 = v21[1];
    v22(v8, v41);
  }

  else
  {

    v22 = v2[1];
    v22(v8, v1);
  }

  (*((swift_isaMask & *v10) + 0x70))(0);
  v23 = objc_opt_self();
  v24 = &selRef_setElementNeedsUpdate;
  v25 = [v23 sharedInstance];
  v26 = [v25 delegate];

  if (v26)
  {
    v27 = OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider;
    v28 = *(v10 + OBJC_IVAR____TtC14ReplayKitAngel29RPSessionPlatterSceneDelegate_systemApertureElementProvider);
    swift_unknownObjectRelease();
    if (v26 == v28)
    {
      (v42)(v6, v43, v1);
      v29 = v10;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v43 = v6;
        v33 = v32;
        v34 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v45 = v42;
        *v33 = 136315650;
        *(v33 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v45);
        *(v33 + 12) = 2112;
        *(v33 + 14) = v29;
        *v34 = v10;
        *(v33 + 22) = 2112;
        v35 = *(v10 + v27);
        *(v33 + 24) = v35;
        v34[1] = v35;
        v36 = v29;
        v37 = v35;
        _os_log_impl(&_mh_execute_header, v30, v31, "%s %@ removing connectionManager delegate=%@", v33, 0x20u);
        sub_10000B62C(&qword_1000697C0, qword_100047CD0);
        swift_arrayDestroy();
        v24 = &selRef_setElementNeedsUpdate;

        sub_1000114A8(v42);

        v38 = v43;
      }

      else
      {

        v38 = v6;
      }

      v22(v38, v1);
      v39 = [v23 v24[202]];
      [v39 setDelegate:0];
    }
  }
}

uint64_t sub_1000365AC(uint64_t a1)
{
  v2 = sub_10000B62C(&qword_1000697C0, qword_100047CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100036970()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9B8 = v3;
  unk_10006B9C0 = v5;
}

uint64_t *sub_100036A08()
{
  if (qword_10006AB00 != -1)
  {
    swift_once();
  }

  return &qword_10006B9B8;
}

void sub_100036AB4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9C8 = v3;
  unk_10006B9D0 = v5;
}

uint64_t *sub_100036B4C()
{
  if (qword_10006AB08 != -1)
  {
    swift_once();
  }

  return &qword_10006B9C8;
}

void sub_100036BC4()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9D8 = v3;
  unk_10006B9E0 = v5;
}

uint64_t *sub_100036C5C()
{
  if (qword_10006AB10 != -1)
  {
    swift_once();
  }

  return &qword_10006B9D8;
}

id sub_100036D64()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.2855 blue:0.1814 alpha:1.0];
  qword_10006B9E8 = result;
  return result;
}

uint64_t *sub_100036DB0()
{
  if (qword_10006AB18 != -1)
  {
    swift_once();
  }

  return &qword_10006B9E8;
}

id sub_100036E00()
{
  if (qword_10006AB18 != -1)
  {
    swift_once();
  }

  v1 = qword_10006B9E8;

  return v1;
}

void sub_100036E80()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006B9F0 = v3;
  *algn_10006B9F8 = v5;
}

uint64_t *sub_100036F18()
{
  if (qword_10006AB20 != -1)
  {
    swift_once();
  }

  return &qword_10006B9F0;
}

void sub_100036F90()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA00 = v3;
  *algn_10006BA08 = v5;
}

uint64_t *sub_100037028()
{
  if (qword_10006AB28 != -1)
  {
    swift_once();
  }

  return &qword_10006BA00;
}

void sub_1000370A0()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA10 = v3;
  *algn_10006BA18 = v5;
}

uint64_t *sub_100037138()
{
  if (qword_10006AB30 != -1)
  {
    swift_once();
  }

  return &qword_10006BA10;
}

void sub_100037344()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA20 = v3;
  *algn_10006BA28 = v5;
}

uint64_t *sub_1000373DC()
{
  if (qword_10006AB38 != -1)
  {
    swift_once();
  }

  return &qword_10006BA20;
}

void sub_100037454()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA30 = v3;
  *algn_10006BA38 = v5;
}

uint64_t *sub_1000374EC()
{
  if (qword_10006AB40 != -1)
  {
    swift_once();
  }

  return &qword_10006BA30;
}

void sub_100037564()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 _rpLocalizedStringFromFrameworkBundleWithKey:v1];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  qword_10006BA40 = v3;
  *algn_10006BA48 = v5;
}

uint64_t *sub_1000375FC()
{
  if (qword_10006AB48 != -1)
  {
    swift_once();
  }

  return &qword_10006BA40;
}

uint64_t sub_100037674(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t SessionType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1701736302;
  v2 = 1919709544;
  v3 = 0x7964616572;
  if (a1 != 3)
  {
    v3 = 0x69647541726C7168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6D6574737973;
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

uint64_t sub_100037860(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6D6574737973;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1919709544;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7964616572;
  }

  else
  {
    v4 = 0x69647541726C7168;
    v3 = 0xE90000000000006FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D6574737973;
    }

    else
    {
      v9 = 1701736302;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7964616572;
    if (a2 != 3)
    {
      v6 = 0x69647541726C7168;
      v5 = 0xE90000000000006FLL;
    }

    if (a2 == 2)
    {
      v7 = 1919709544;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

Swift::Int sub_1000379CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100037A9C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100037B58()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100037C24@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s14ReplayKitAngel11SessionTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100037C54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE400000000000000;
  v6 = 1919709544;
  v7 = 0xE500000000000000;
  v8 = 0x7964616572;
  if (v2 != 3)
  {
    v8 = 0x69647541726C7168;
    v7 = 0xE90000000000006FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6D6574737973;
    v3 = 0xE600000000000000;
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

unint64_t _s14ReplayKitAngel11SessionTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E418, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SessionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_100037FD0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003801C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1000380D4()
{
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_10003812C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (v6 == a1 && v7 == a2)
  {
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v11 = [v2 systemApertureElementContext];
    v12 = swift_allocObject();
    *(v12 + 16) = v2;
    aBlock[4] = sub_1000138FC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F174;
    aBlock[3] = &unk_10005E918;
    v13 = _Block_copy(aBlock);
    v14 = v2;

    [v11 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*sub_100038298(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_100038338;
}

void sub_100038338(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v6 = *(*a1 + 32);

    sub_10003812C(v3, v5);
    v7 = v2[4];
  }

  else
  {
    sub_10003812C(*(*a1 + 24), v5);
  }

  free(v2);
}

unint64_t sub_1000383B4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004034C(*a1);
  *a2 = result;
  return result;
}

_BYTE *sub_100038418(int a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  p_class_meths = &OBJC_PROTOCOL___RPAngelConnectionManagerDelegate.class_meths;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package] = 0;
  v9 = &v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState];
  v10 = sub_10003720C();
  v11 = *(v10 + 1);
  *v9 = *v10;
  v9[1] = v11;
  v1[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role] = a1;
  v12 = type metadata accessor for RPReadyAccessoryView();
  v33.receiver = v1;
  v33.super_class = v12;

  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = sub_1000301D0();
  (*(v4 + 16))(v7, v14, v3);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v31[1] = a1;
    v17 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100010E34(0x6C6F722874696E69, 0xEB00000000293A65, v32);
    *(v17 + 12) = 2080;
    v18 = 0xE800000000000000;
    v19 = 0x676E696C69617274;
    if (v13[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role] != 1)
    {
      v19 = 0x6C616D696E696DLL;
      v18 = 0xE700000000000000;
    }

    if (v13[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0x676E696461656CLL;
    }

    if (v13[OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role])
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE700000000000000;
    }

    v22 = sub_100010E34(v20, v21, v32);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s role=%s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v4 + 8))(v7, v3);
    p_class_meths = (&OBJC_PROTOCOL___RPAngelConnectionManagerDelegate + 32);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v25 = objc_allocWithZone(BSUICAPackageView);
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 initWithPackageName:v26 inBundle:v24];

  v28 = p_class_meths[171];
  swift_beginAccess();
  v29 = *(v28 + v13);
  *(v28 + v13) = v27;

  return v13;
}

void sub_100038800()
{
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_package) = 0;
  v1 = (v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_viewState);
  v2 = sub_10003720C();
  v3 = *(v2 + 1);
  *v1 = *v2;
  v1[1] = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000388E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = sub_1000301D0();
  v42 = v2[2];
  v43 = v9;
  v41 = v2 + 2;
  v42(v8);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v38 = v6;
    v39 = v2;
    v40 = v1;
    v13 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v44);
    *(v13 + 12) = 2080;
    v14 = 0xE800000000000000;
    v15 = 0x676E696C69617274;
    if (*(v10 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role) != 1)
    {
      v15 = 0x6C616D696E696DLL;
      v14 = 0xE700000000000000;
    }

    if (*(v10 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role))
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x676E696461656CLL;
    }

    if (*(v10 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role))
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    v18 = sub_100010E34(v16, v17, &v44);

    *(v13 + 14) = v18;
    *(v13 + 22) = 2080;
    v20 = (*((swift_isaMask & *v10) + 0x80))(v19);
    v22 = sub_100010E34(v20, v21, &v44);

    *(v13 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s role=%s viewState=%s", v13, 0x20u);
    swift_arrayDestroy();

    v1 = v40;
    v23 = v39[1];
    v23(v8, v40);
    v6 = v38;
  }

  else
  {

    v23 = v2[1];
    v23(v8, v1);
  }

  v24 = type metadata accessor for RPReadyAccessoryView();
  v45.receiver = v10;
  v45.super_class = v24;
  v25 = objc_msgSendSuper2(&v45, "layoutSubviews");
  v26 = (*((swift_isaMask & *v10) + 0x68))(v25);
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v10) + 0x80))();
    v28 = String._bridgeToObjectiveC()();

    [v27 setState:v28];

    v29 = v27;
    [v29 sizeToFit];
    [v10 bounds];
    MidX = CGRectGetMidX(v46);
    [v10 bounds];
    [v29 setCenter:{MidX, CGRectGetMidY(v47)}];
    [v29 setAlpha:*sub_10003674C()];
    [v10 insertSubview:v29 above:v10];
  }

  else
  {
    (v42)(v6, v43, v1);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v6;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_100010E34(0xD000000000000010, 0x800000010004C950, &v44);
      _os_log_impl(&_mh_execute_header, v31, v32, "%s BSUICAPackageView should not be nil", v34, 0xCu);
      sub_1000114A8(v35);

      v36 = v33;
    }

    else
    {

      v36 = v6;
    }

    v23(v36, v1);
  }
}

double sub_100038EE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role);
  if (*(v0 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role) && v1 != 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      v4 = *((swift_isaMask & *v0) + 0x80);
      v5 = v4(v3);
      v7 = v6;
      v8 = sub_10003729C();
      if (v5 == *v8 && v7 == *(v8 + 1))
      {
        goto LABEL_17;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_18;
      }

      v12 = v4(v11);
      v14 = v13;
      v15 = sub_1000372C0();
      if (v12 == *v15 && v14 == *(v15 + 1))
      {
LABEL_17:
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
LABEL_20:
          if (v1)
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v21 & 1) == 0)
            {
LABEL_22:
              v23 = v4(v22);
              v25 = v24;
              v26 = sub_10003727C();
              if (v23 == *v26 && v25 == *(v26 + 1))
              {
              }

              else
              {
                v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v28 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              if (v1 == 1)
              {
              }

              else
              {
                v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v43 & 1) == 0)
                {
LABEL_46:
                  v18 = *sub_100036614();
                  goto LABEL_47;
                }
              }

              v29 = *sub_100036614();
              v30 = sub_100036648();
              goto LABEL_30;
            }
          }

          else
          {
          }

          v31 = v4(v22);
          v33 = v32;
          v34 = sub_100037264();
          if (v31 != *v34 || v33 != v34[1])
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              goto LABEL_40;
            }

            v38 = v4(v37);
            v40 = v39;
            v41 = sub_10003724C();
            if (v38 != *v41 || v40 != v41[1])
            {
              v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v46)
              {
                goto LABEL_40;
              }

              v48 = v4(v47);
              v50 = v49;
              v51 = sub_100037234();
              if (v48 != *v51 || v50 != v51[1])
              {
                v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v52)
                {
                  goto LABEL_40;
                }

                v54 = v4(v53);
                v56 = v55;
                v57 = sub_10003727C();
                if (v54 != *v57 || v56 != *(v57 + 1))
                {
                  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if ((v58 & 1) == 0)
                  {
                    goto LABEL_22;
                  }

LABEL_40:
                  v42 = *sub_100036614();
                  v18 = v42 + *sub_100036634();
                  goto LABEL_47;
                }
              }
            }
          }

          goto LABEL_40;
        }
      }

LABEL_18:
      if (v1)
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v29 = *sub_100036614();
      v30 = sub_100036634();
LABEL_30:
      v18 = v29 - *v30;
LABEL_47:
      v19 = sub_100036628();
      goto LABEL_48;
    }
  }

  v18 = *sub_100036670();
  v19 = sub_10003667C();
LABEL_48:
  v44 = *v19;
  return v18;
}

uint64_t sub_100039334()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003936C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100039450@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000403BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000394CC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003965C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1000396F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1000397EC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039884(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003997C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039B0C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039BA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_100039D34()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039DCC(double a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039F3C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100039FD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_10003A0D0()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003A128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003A1F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  v2 = v1;
  return v1;
}

void *sub_10003A240()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
  v2 = v1;
  return v1;
}

void *sub_10003A2BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
  v2 = v1;
  return v1;
}

id sub_10003A2EC()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10003A340(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003A408()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003A454(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003A50C()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003A550(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10003A600()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10003A644(char a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10003A6F4()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  }

  else
  {
    v4 = (*((swift_isaMask & *v0) + 0x280))();
    v5 = [v4 heightAnchor];

    v6 = [v5 constraintEqualToConstant:*sub_1000366CC()];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_10003A7D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = a1;
  return _objc_release_x1();
}

void (*sub_10003A7E8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_10003A6F4();
  return sub_10003A830;
}

void sub_10003A830(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint);
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = v2;
}

id sub_10003A848()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_10003A89C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10003AB80()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003ABD8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003AF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  return sub_1000406CC(v1 + v3, a1);
}

uint64_t sub_10003B0E4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  swift_beginAccess();
  sub_1000298BC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10003B1D8(char a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode] = 0;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole] = 2;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode] = 4;
  *&v1[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress] = 0x100000;
  v4 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *&v2[v4] = *sub_1000366FC();
  v5 = &v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionID];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors] = 666;
  v6 = SBUISystemApertureElementIdentifierScreenRecording;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier] = SBUISystemApertureElementIdentifierScreenRecording;
  v7 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView;
  v8 = type metadata accessor for RPReadyAccessoryView();
  v9 = objc_allocWithZone(v8);
  v10 = v6;
  *&v2[v7] = sub_100038418(0);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView;
  v12 = objc_allocWithZone(v8);
  *&v2[v11] = sub_100038418(1);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView;
  v14 = objc_allocWithZone(v8);
  *&v2[v13] = sub_100038418(2);
  v15 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel;
  *&v2[v16] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView] = 0;
  v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState] = 4;
  v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType] = 3;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint] = 0;
  v17 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_compactViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalViewLayoutConstraints] = &_swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewElementLayoutConstraints] = &_swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  *&v2[v18] = [objc_opt_self() grayColor];
  v19 = &v2[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  v24.receiver = v2;
  v24.super_class = type metadata accessor for RPReadyToRecordSystemApertureElementViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_10003EC88(a1);

  return v22;
}

void sub_10003B4D4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v9)
  {
    v10 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
    if (v10)
    {
      v161 = &v153 - v8;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = objc_opt_self();
      v13 = v10;
      v14 = v9;
      v159 = v12;
      v15 = [v12 bundleForClass:ObjCClassFromMetadata];
      v16 = objc_allocWithZone(BSUICAPackageView);
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 initWithPackageName:v17 inBundle:v15];

      if (v18)
      {
        v156 = v18;
        v158 = v14;
        v163 = v13;
        v19 = sub_10002B924();
        v20 = *((swift_isaMask & **v19) + 0xA0);
        v21 = *v19;
        v22 = v20();
        v24 = v23;

        (*((swift_isaMask & *v1) + 0x1C8))(v22, v24);
        v25 = sub_1000301D0();
        v26 = v161;
        (*(v3 + 16))(v161, v25, v2);
        v27 = v1;
        v28 = v1;
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        v31 = os_log_type_enabled(v29, v30);
        v162 = v28;
        if (v31)
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v157 = v33;
          v160 = swift_slowAlloc();
          v165 = v160;
          *v32 = 136315650;
          *(v32 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, &v165);
          *(v32 + 12) = 2112;
          *(v32 + 14) = v27;
          *v33 = v28;
          *(v32 + 22) = 2080;
          v34 = *((swift_isaMask & *v27) + 0x1C0);
          v35 = v27;
          v36 = v34();
          if (v37)
          {
            v38 = v37;
          }

          else
          {
            v36 = 1819047246;
            v38 = 0xE400000000000000;
          }

          v39 = sub_100010E34(v36, v38, &v165);

          *(v32 + 24) = v39;
          _os_log_impl(&_mh_execute_header, v29, v30, "%s self=%@ sessionID=%s", v32, 0x20u);
          sub_100011940(v157, &qword_1000697C0, qword_100047CD0);

          swift_arrayDestroy();

          (*(v3 + 8))(v161, v2);
        }

        else
        {

          (*(v3 + 8))(v26, v2);
        }

        v45 = v163;
        v46 = v158;
        v47 = type metadata accessor for RPReadyToRecordSystemApertureElementViewController();
        v164.receiver = v27;
        v164.super_class = v47;
        objc_msgSendSuper2(&v164, "viewDidLoad");
        v48 = [v27 view];
        if (v48)
        {
          v49 = v48;
          [v48 setTranslatesAutoresizingMaskIntoConstraints:0];

          v50 = (swift_isaMask & *v27) + 640;
          v51 = *((swift_isaMask & *v27) + 0x280);
          v52 = v51();
          [v52 setTranslatesAutoresizingMaskIntoConstraints:0];

          [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
          v53 = *(v27 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
          if (v53)
          {
            [v53 setTranslatesAutoresizingMaskIntoConstraints:0];
          }

          [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
          v54 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v27 action:"customViewTapped:"];
          v55 = v51();
          [v55 setUserInteractionEnabled:1];

          v56 = v51();
          v57 = [v56 layer];

          [v57 setHitTestsAsOpaque:1];
          v58 = v51();
          v155 = v54;
          [v58 addGestureRecognizer:v54];

          v59 = [v27 view];
          if (v59)
          {
            v60 = v59;
            v61 = v51();
            [v60 addSubview:v61];

            v62 = [v27 view];
            if (v62)
            {
              v63 = v62;
              [v62 addSubview:v46];

              v64 = [v27 view];
              if (v64)
              {
                v65 = v64;
                [v64 addSubview:v163];

                v66 = v51;
                v67 = v51();
                v68 = [v67 centerXAnchor];

                v69 = [v27 view];
                if (v69)
                {
                  v70 = v69;
                  v71 = [v69 centerXAnchor];

                  v72 = [v68 constraintEqualToAnchor:v71];
                  [v72 setActive:1];

                  v73 = v51();
                  v74 = [v73 topAnchor];

                  v75 = [v27 view];
                  v161 = v50;
                  if (v75)
                  {
                    v76 = v75;
                    v77 = [v75 topAnchor];

                    v78 = [v74 constraintEqualToAnchor:v77];
                    [v78 setActive:1];

                    v79 = v156;
                    v80 = v156;
                    [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
                    [v80 setAlpha:*sub_10003674C()];
                    [v80 setUserInteractionEnabled:0];
                    v81 = *((swift_isaMask & *v27) + 0x228);
                    v82 = v80;
                    v83 = v81(v79);
                    v84 = (v66)(v83);
                    v157 = v82;
                    [v84 addSubview:v82];

                    v85 = ((swift_isaMask & *v27) + 520);
                    v86 = *((swift_isaMask & *v27) + 0x208);
                    v87 = v86();
                    [v87 setTranslatesAutoresizingMaskIntoConstraints:0];

                    v88 = v86();
                    v89 = String._bridgeToObjectiveC()();
                    v90 = [v159 _rpLocalizedStringFromFrameworkBundleWithKey:v89];

                    v160 = v66;
                    if (!v90)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v90 = String._bridgeToObjectiveC()();
                    }

                    [v88 setText:v90];

                    v91 = v86();
                    v92 = objc_opt_self();
                    v93 = [v92 systemFontOfSize:*sub_100036E5C() weight:UIFontWeightMedium];
                    [v91 setFont:v93];

                    v94 = v86();
                    v95 = objc_opt_self();
                    v96 = [v95 systemOrangeColor];
                    [v94 setTextColor:v96];

                    v97 = v86();
                    [v97 setHidden:1];

                    v98 = v86();
                    [v98 sizeToFit];

                    v99 = v86();
                    v100 = [v99 layer];

                    [v100 setAllowsHitTesting:0];
                    v101 = v160();
                    v102 = v86();
                    [v101 addSubview:v102];

                    v103 = *(v27 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel);
                    [v103 setTranslatesAutoresizingMaskIntoConstraints:0];
                    v104 = [v95 whiteColor];
                    [v103 setTextColor:v104];

                    v105 = String._bridgeToObjectiveC()();
                    v106 = [v159 _rpLocalizedStringFromFrameworkBundleWithKey:v105];

                    v159 = v85;
                    v156 = v86;
                    if (!v106)
                    {
                      static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v106 = String._bridgeToObjectiveC()();
                    }

                    [v103 setText:v106];

                    v107 = [v92 systemFontOfSize:*sub_100036A98() weight:UIFontWeightMedium];
                    [v103 setFont:v107];

                    [v103 sizeToFit];
                    [v103 setHidden:1];
                    v108 = [v103 layer];
                    [v108 setAllowsHitTesting:0];

                    v109 = v160;
                    v110 = v160();
                    [v110 addSubview:v103];

                    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
                    v111 = swift_allocObject();
                    *(v111 + 16) = xmmword_100049080;
                    v112 = v157;
                    v113 = [v157 topAnchor];
                    v114 = v109;
                    v115 = v109();
                    v116 = [v115 topAnchor];

                    v117 = [v113 constraintEqualToAnchor:v116 constant:*sub_100036864()];
                    *(v111 + 32) = v117;
                    v118 = [v112 widthAnchor];
                    v119 = [v118 constraintEqualToConstant:*sub_100036E68()];

                    *(v111 + 40) = v119;
                    v120 = [v112 heightAnchor];
                    v121 = [v120 constraintEqualToConstant:*sub_100036E74()];

                    *(v111 + 48) = v121;
                    v122 = [v112 leadingAnchor];
                    v123 = v114();
                    v124 = [v123 leadingAnchor];

                    v154 = sub_100036848();
                    v125 = [v122 constraintEqualToAnchor:v124 constant:*v154];

                    *(v111 + 56) = v125;
                    v126 = v156;
                    v127 = v156();
                    v128 = [v127 centerYAnchor];

                    v129 = [v112 centerYAnchor];
                    v130 = [v128 constraintEqualToAnchor:v129];

                    *(v111 + 64) = v130;
                    v131 = v126();
                    v132 = [v131 leadingAnchor];

                    v133 = [v112 trailingAnchor];
                    v134 = [v132 constraintEqualToAnchor:v133 constant:*sub_100036880()];

                    *(v111 + 72) = v134;
                    v135 = v126();
                    v136 = [v135 widthAnchor];

                    v137 = [v136 constraintEqualToConstant:*sub_100037CE0()];
                    *(v111 + 80) = v137;
                    v138 = [v103 topAnchor];
                    v139 = v126();
                    v140 = [v139 bottomAnchor];

                    v141 = [v138 constraintEqualToAnchor:v140 constant:*sub_100037CEC()];
                    *(v111 + 88) = v141;
                    v142 = [v103 leadingAnchor];
                    v143 = v160;
                    v144 = v160();
                    v145 = [v144 leadingAnchor];

                    v146 = [v142 constraintEqualToAnchor:v145 constant:*v154];
                    *(v111 + 96) = v146;
                    v147 = [v103 trailingAnchor];
                    v148 = v143();
                    v149 = [v148 trailingAnchor];

                    v150 = [v147 constraintEqualToAnchor:v149 constant:-*sub_100036D24()];
                    *(v111 + 104) = v150;
                    (*((swift_isaMask & *v27) + 0x2E8))(v111);
                    v151 = objc_opt_self();
                    (*((swift_isaMask & *v27) + 0x2E0))();
                    sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v151 activateConstraints:isa];

                    sub_10003F274();
                    return;
                  }

LABEL_32:
                  __break(1u);
                  return;
                }

LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

LABEL_29:
            __break(1u);
            goto LABEL_30;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_29;
      }
    }
  }

  v40 = sub_1000301D0();
  (*(v3 + 16))(v7, v40, v2);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v165 = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_100010E34(0x4C64694477656976, 0xED0000292864616FLL, &v165);
    _os_log_impl(&_mh_execute_header, v41, v42, "%s error loading sub views", v43, 0xCu);
    sub_1000114A8(v44);
  }

  (*(v3 + 8))(v7, v2);
}

void sub_10003C914(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v8)
  {
    v9 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
    if (v9)
    {
      v10 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView);
      if (v10)
      {
        v33 = a1;
        v11 = *((swift_isaMask & *v1) + 0x220);
        v12 = v10;
        v13 = v9;
        v14 = v8;
        v15 = v11();
        if (v15)
        {
          v16 = v15;
          v17 = swift_allocObject();
          v17[2] = v1;
          v17[3] = v13;
          v17[4] = v14;
          v17[5] = v12;
          v17[6] = v16;
          v38 = sub_100040AA4;
          v39 = v17;
          aBlock = _NSConcreteStackBlock;
          v35 = 1107296256;
          v36 = sub_10001D7A4;
          v37 = &unk_10005E968;
          v18 = _Block_copy(&aBlock);
          v19 = v12;
          v20 = v13;
          v21 = v14;
          v22 = v1;
          v23 = v16;

          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          v38 = sub_100040AB4;
          v39 = v24;
          aBlock = _NSConcreteStackBlock;
          v35 = 1107296256;
          v36 = sub_10001D7A4;
          v37 = &unk_10005E9B8;
          v25 = _Block_copy(&aBlock);
          v26 = v22;

          [v33 animateAlongsideTransition:v18 completion:v25];
          _Block_release(v25);
          _Block_release(v18);

          return;
        }
      }
    }
  }

  v27 = sub_1000301D0();
  (*(v4 + 16))(v7, v27, v3);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    aBlock = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &aBlock);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s error loading sub views", v30, 0xCu);
    sub_1000114A8(v31);
  }

  (*(v4 + 8))(v7, v3);
}

void sub_10003CCEC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (*((swift_isaMask & *a1) + 0x128))(v13);
  if (v16 > 2)
  {
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        return;
      }

      v24 = &swift_isaMask;
      v44 = (*((swift_isaMask & *a1) + 0x208))();
      [v44 setHidden:0];

      [a5 setHidden:0];
      [a2 setHidden:1];
      [a3 setHidden:1];
      [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:0];
      v45 = objc_opt_self();
      (*((swift_isaMask & *a1) + 0x2B0))();
      v46 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v45 deactivateConstraints:isa];

      (*((swift_isaMask & *a1) + 0x2C8))();
      v48 = Array._bridgeToObjectiveC()().super.isa;

      [v45 deactivateConstraints:v48];

      v49 = (swift_isaMask & *a1) + 664;
      v50 = *((swift_isaMask & *a1) + 0x298);
      v51 = v50();
      if (v51 >> 62)
      {
        v52 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v52)
      {
        goto LABEL_99;
      }

      v170 = v50;
      v171 = v49;
      v168 = v46;
      v169 = v45;
      sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_100047E30;
      v55 = [a1 view];
      if (v55)
      {
        v56 = v55;
        v19 = &selRef_setElementNeedsUpdate;
        v57 = [v55 widthAnchor];

        v58 = *((swift_isaMask & *a1) + 0x280);
        v59 = v58();
        v60 = [v59 widthAnchor];

        v61 = [v57 constraintEqualToAnchor:v60];
        *(v54 + 32) = v61;
        v62 = [a1 view];
        if (v62)
        {
          v63 = v62;
          v64 = [v62 heightAnchor];

          v65 = v58();
          v24 = [v65 heightAnchor];

          v66 = [v64 constraintEqualToAnchor:v24];
          *(v54 + 40) = v66;
          v67 = v58();
          v68 = [v67 widthAnchor];

          v69 = [v68 constraintEqualToConstant:*sub_1000366B0()];
          *(v54 + 48) = v69;
          *(v54 + 56) = (*((swift_isaMask & *a1) + 0x268))();
          v70 = (*((swift_isaMask & *a1) + 0x2A0))(v54);
          v71 = (v170)(v70);
          v72 = v71;
          if (!(v71 >> 62))
          {
            v20 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v20)
            {
              goto LABEL_27;
            }

            goto LABEL_98;
          }

          goto LABEL_97;
        }

LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    v76 = [objc_msgSend(a1 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    if (v76)
    {
      v77 = [v76 isUserInitiated];
    }

    else
    {
      v77 = 0;
    }

    v78 = (*((swift_isaMask & *a1) + 0x238))();
    if (v78 <= 5 || v78 == 6)
    {
      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92 & v77)
      {
LABEL_55:
        v93 = sub_10002B924();
        v94 = *((swift_isaMask & *a1) + 0x1C0);
        v95 = *v93;
        v96 = v94();
        (*((swift_isaMask & *v95) + 0xF8))(v96);

LABEL_126:

        return;
      }
    }

    else
    {

      if (v77)
      {
        goto LABEL_55;
      }
    }

    [a2 setHidden:1];
    [a4 setHidden:1];
    [a3 setHidden:0];
    [a5 setHidden:1];
    v97 = [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:1];
    v98 = (*((swift_isaMask & *a1) + 0x208))(v97);
    [v98 setHidden:1];

    v45 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x298))();
    v99 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v100 = Array._bridgeToObjectiveC()().super.isa;

    [v45 deactivateConstraints:v100];

    (*((swift_isaMask & *a1) + 0x2C8))();
    v101 = Array._bridgeToObjectiveC()().super.isa;

    [v45 deactivateConstraints:v101];

    v102 = (swift_isaMask & *a1) + 688;
    v103 = *((swift_isaMask & *a1) + 0x2B0);
    v104 = v103();
    if (v104 >> 62)
    {
      v138 = _CocoaArrayWrapper.endIndex.getter();

      if (v138)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v105 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v105)
      {
        goto LABEL_113;
      }
    }

    v170 = v45;
    v171 = v103;
    v169 = v99;
    sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_100047E30;
    v108 = [a3 centerXAnchor];
    v20 = &selRef_setElementNeedsUpdate;
    v109 = [a1 view];
    if (!v109)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v110 = v109;
    v111 = [v109 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v112 = [v111 centerXAnchor];
    v113 = [v108 constraintEqualToAnchor:v112];

    *(v107 + 32) = v113;
    v114 = [a3 centerYAnchor];
    v115 = [a1 view];
    if (!v115)
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v116 = v115;
    v117 = [v115 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

    v118 = [v117 centerYAnchor];
    v119 = [v114 constraintEqualToAnchor:v118];

    *(v107 + 40) = v119;
    v120 = [a4 centerXAnchor];
    v121 = [a1 view];
    if (!v121)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    v122 = v121;
    v123 = [v121 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v124 = [v123 centerXAnchor];
    v125 = [v120 constraintEqualToAnchor:v124];

    *(v107 + 48) = v125;
    v126 = [a4 centerYAnchor];
    v127 = [a1 view];
    if (!v127)
    {
LABEL_139:
      __break(1u);
      return;
    }

    v128 = v127;
    v129 = [v127 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

    v130 = [v129 centerYAnchor];
    v24 = [v126 constraintEqualToAnchor:v130];

    *(v107 + 56) = v24;
    v131 = (*((swift_isaMask & *a1) + 0x2B8))(v107);
    v132 = (v171)(v131);
    v133 = v132;
    v168 = v102;
    if (v132 >> 62)
    {
      goto LABEL_111;
    }

    v134 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v134)
    {
      goto LABEL_65;
    }

LABEL_112:

    v45 = v170;
    v103 = v171;
LABEL_113:
    v160 = (v103)(v106);
    if (v160 >> 62)
    {
      v165 = v160;
      v166 = _CocoaArrayWrapper.endIndex.getter();
      v160 = v165;
      if (!v166)
      {
        goto LABEL_126;
      }
    }

    else if (!*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_126;
    }

    if ((v160 & 0xC000000000000001) != 0)
    {
      v161 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v161 = *(v160 + 32);
    }

    v162 = v161;

    v163 = [v162 isActive];

    if ((v163 & 1) == 0)
    {
      v103();
LABEL_121:
      v171 = Array._bridgeToObjectiveC()().super.isa;

      [v45 activateConstraints:v171];
LABEL_122:
      v164 = v171;
    }

    return;
  }

  if (v16 == 1)
  {
    v75 = (*((swift_isaMask & *a1) + 0x238))();
    if (v75 <= 3 || v75 <= 5 || v75 == 6)
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v79 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    v80 = sub_1000301D0();
    (*(v11 + 16))(v15, v80, v10);
    v81 = a1;
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v172 = v86;
      *v84 = 136315394;
      *(v84 + 4) = sub_100010E34(0xD00000000000001DLL, 0x800000010004CA10, &v172);
      *(v84 + 12) = 2112;
      *(v84 + 14) = v81;
      *v85 = a1;
      v87 = v81;
      _os_log_impl(&_mh_execute_header, v82, v83, "%s self=%@ inactive and recording completed, ending session", v84, 0x16u);
      sub_100011940(v85, &qword_1000697C0, qword_100047CD0);

      sub_1000114A8(v86);
    }

    (*(v11 + 8))(v15, v10);
    v88 = sub_10002B924();
    v89 = *((swift_isaMask & *v81) + 0x1C0);
    v90 = *v88;
    v91 = v89();
    (*((swift_isaMask & *v90) + 0xF8))(v91);
  }

  else if (v16 == 2)
  {
    [a2 setHidden:0];
    [a3 setHidden:1];
    [a4 setHidden:1];
    [a5 setHidden:1];
    v17 = [*(a1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel) setHidden:1];
    v18 = (*((swift_isaMask & *a1) + 0x208))(v17);
    [v18 setHidden:1];

    v19 = objc_opt_self();
    (*((swift_isaMask & *a1) + 0x298))();
    v20 = sub_1000119A0(0, &qword_100068E10, NSLayoutConstraint_ptr);
    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v19 deactivateConstraints:v21];

    (*((swift_isaMask & *a1) + 0x2B0))();
    v22 = Array._bridgeToObjectiveC()().super.isa;

    [v19 deactivateConstraints:v22];

    v23 = (swift_isaMask & *a1) + 712;
    v24 = *((swift_isaMask & *a1) + 0x2C8);
    v25 = v24();
    if (v25 >> 62)
    {
      goto LABEL_79;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v26)
    {
      goto LABEL_6;
    }

    while (1)
    {
LABEL_86:
      v72 = a1;
      v139 = (v24)(v27);
      if (v139 >> 62)
      {
        v72 = v139;
        v143 = _CocoaArrayWrapper.endIndex.getter();
        v139 = v72;
        if (!v143)
        {
          goto LABEL_126;
        }
      }

      else if (!*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      if ((v139 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v139 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v140 = *(v139 + 32);
LABEL_91:
        v141 = v140;

        v142 = [v141 isActive];

        if (v142)
        {
          return;
        }

        v24();
        v171 = Array._bridgeToObjectiveC()().super.isa;

        [v19 activateConstraints:v171];
        goto LABEL_122;
      }

      __break(1u);
LABEL_97:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (!v20)
      {
LABEL_98:

        v24 = &swift_isaMask;
        v45 = v169;
        v50 = v170;
LABEL_99:
        v144 = (*((swift_isaMask & *a1) + 0x268))(v53);
        v145 = [a1 view];
        if (!v145)
        {
          goto LABEL_131;
        }

        v20 = v145;
        v146 = [v145 SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

        [v146 layoutFrame];
        v148 = v147;
        v150 = v149;
        v152 = v151;
        v154 = v153;

        v174.origin.x = v148;
        v174.origin.y = v150;
        v174.size.width = v152;
        v174.size.height = v154;
        [v144 setConstant:CGRectGetHeight(v174)];

        v133 = a1;
        v155 = v50();
        if (v155 >> 62)
        {
          v133 = v155;
          v159 = _CocoaArrayWrapper.endIndex.getter();
          v155 = v133;
          if (!v159)
          {
            goto LABEL_126;
          }
        }

        else if (!*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_126;
        }

        if ((v155 & 0xC000000000000001) != 0)
        {
          v156 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_111:
            v134 = _CocoaArrayWrapper.endIndex.getter();
            if (v134)
            {
LABEL_65:
              v23 = 0;
              v19 = v133 & 0xFFFFFFFFFFFFFF8;
              a2 = 1144750080;
              while (1)
              {
                if ((v133 & 0xC000000000000001) != 0)
                {
                  v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  if (v23 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_78;
                  }

                  v135 = *(v133 + 8 * v23 + 32);
                }

                v24 = v135;
                v20 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
                  goto LABEL_77;
                }

                LODWORD(v136) = 1144750080;
                [v135 setPriority:v136];

                ++v23;
                if (v20 == v134)
                {
                  goto LABEL_112;
                }
              }
            }

            goto LABEL_112;
          }

          v156 = *(v155 + 32);
        }

        v157 = v156;

        v158 = [v157 isActive];

        if (v158)
        {
          return;
        }

        v50();
        goto LABEL_121;
      }

LABEL_27:
      v23 = 0;
      a2 = v72 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v72 & 0xC000000000000001) != 0)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_76;
          }

          v73 = *(v72 + 8 * v23 + 32);
        }

        v24 = v73;
        v19 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        LODWORD(v74) = 1144750080;
        [v73 setPriority:v74];

        ++v23;
        if (v19 == v20)
        {
          goto LABEL_98;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v137 = _CocoaArrayWrapper.endIndex.getter();

        if (v137)
        {
          break;
        }

LABEL_6:
        v170 = v24;
        v171 = v23;
        v169 = v20;
        sub_10000B62C(&unk_1000692F0, &unk_1000488E0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100047E50;
        v29 = [a2 centerXAnchor];
        v30 = [a1 view];
        if (!v30)
        {
          goto LABEL_132;
        }

        v31 = v30;
        v32 = [v30 centerXAnchor];

        v33 = [v29 constraintEqualToAnchor:v32];
        *(v28 + 32) = v33;
        v34 = [a2 centerYAnchor];
        v35 = [a1 view];
        if (!v35)
        {
          goto LABEL_134;
        }

        v36 = v35;
        v168 = v19;
        v24 = [v35 centerYAnchor];

        v37 = [v34 constraintEqualToAnchor:v24];
        *(v28 + 40) = v37;
        v38 = (*((swift_isaMask & *a1) + 0x2D0))(v28);
        v39 = (v170)(v38);
        v40 = v39;
        if (v39 >> 62)
        {
          a2 = _CocoaArrayWrapper.endIndex.getter();
          if (!a2)
          {
LABEL_85:

            v19 = v168;
            v24 = v170;
            goto LABEL_86;
          }
        }

        else
        {
          a2 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a2)
          {
            goto LABEL_85;
          }
        }

        v23 = 0;
        v20 = &selRef_setElementNeedsUpdate;
        v19 = 1144750080;
        while (1)
        {
          if ((v40 & 0xC000000000000001) != 0)
          {
            v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v41 = *(v40 + 8 * v23 + 32);
          }

          v24 = v41;
          v43 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          LODWORD(v42) = 1144750080;
          [v41 setPriority:v42];

          ++v23;
          if (v43 == a2)
          {
            goto LABEL_85;
          }
        }

        __break(1u);
      }
    }

    v140 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_91;
  }
}

uint64_t sub_10003E828(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if ((result & 1) == 0)
  {
    v10 = *((swift_isaMask & *a2) + 0x128);
    if (v10() == 3 || (result = v10(), result == 2))
    {
      v11 = (*((swift_isaMask & *a2) + 0x238))();
      if (v11 <= 3 || v11 > 5 || v11 == 4)
      {
        v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v12 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }

      v20 = v10;
      v13 = sub_1000301D0();
      (*(v5 + 16))(v8, v13, v4);
      v14 = a2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134217984;
        *(v17 + 4) = v20();

        _os_log_impl(&_mh_execute_header, v15, v16, "resume system session in layout mode=%ld", v17, 0xCu);
      }

      else
      {

        v15 = v14;
      }

      (*(v5 + 8))(v8, v4);
      v18 = [objc_opt_self() sharedInstance];
      [v18 resumeCurrentSystemSession];

      return (*((swift_isaMask & v14->isa) + 0x240))(4);
    }
  }

  return result;
}

uint64_t sub_10003EC88(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000119A0(0, &qword_100068CF8, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000412A0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F174;
  aBlock[3] = &unk_10005EB28;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100040D28(&qword_100068E90, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000B62C(&qword_100068D00, &unk_100047DD0);
  sub_100011AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10003EF54(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*((swift_isaMask & *a1) + 0x250))(v7);
  v21 = a2;
  sub_10002B188();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v11 = sub_1000301D0();
    (*(v5 + 16))(v9, v11, v4);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v14 = 136315394;
      *(v14 + 4) = sub_100010E34(0xD000000000000012, 0x800000010004D650, &v20);
      *(v14 + 12) = 2080;
      v15 = SessionType.rawValue.getter(a2);
      v17 = sub_100010E34(v15, v16, &v20);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s with session type %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v9, v4);
    return (*((swift_isaMask & *a1) + 0x258))(a2);
  }

  return result;
}

uint64_t sub_10003F274()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v59 - v8;
  v10 = sub_1000301D0();
  v11 = *(v3 + 16);
  v11(v9, v10, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v61 = v3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v60 = v1;
    v16 = v15;
    v17 = swift_slowAlloc();
    v59 = v11;
    v18 = v3;
    v19 = v17;
    v62 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v62);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v16, 0xCu);
    sub_1000114A8(v19);

    v1 = v60;

    v20 = v18;
    v11 = v59;
  }

  else
  {

    v20 = v3;
  }

  v21 = *(v20 + 8);
  v21(v9, v2);
  v22 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView);
  if (v22)
  {
    v23 = v1;
    type metadata accessor for RPReadyAccessoryView();
    v60 = swift_dynamicCastClass();
    if (v60)
    {
      v24 = *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
      if (v24)
      {
        v25 = *(v23 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView);
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;
          v28 = *((swift_isaMask & *v23) + 0x238);
          v29 = v24;
          v30 = v23;
          v31 = v29;
          v32 = v22;
          v33 = v28();
          if (v33 <= 3)
          {
            v34 = v60;
            if (v33 > 1)
            {
              if (v33 == 2)
              {
                v35 = sub_10003724C();
              }

              else
              {
                v35 = sub_100037264();
              }
            }

            else if (v33)
            {
              v35 = sub_100037234();
            }

            else
            {
              v35 = sub_10003720C();
            }

            v56 = v35;
            v57 = *v35;
            v58 = v35[1];

            sub_10003F854(v34, v57, v58);

            v54 = *v56;
            v55 = v56[1];
            goto LABEL_24;
          }

          v34 = v60;
          if ((v33 - 4) >= 2)
          {
            if (v33 == 6)
            {
              v50 = sub_1000372C0();
              v51 = *v50;
              v52 = v50[1];

              sub_10003F854(v34, v51, v52);

              v53 = sub_100037304();
              v54 = *v53;
              v55 = v53[1];
LABEL_24:

              sub_10003F854(v27, v54, v55);
            }
          }

          else
          {
            v41 = sub_10003729C();
            v42 = *v41;
            v43 = v41[1];

            sub_10003F854(v34, v42, v43);

            v44 = *v41;
            v45 = v41[1];

            sub_10003F854(v27, v44, v45);

            v46 = *sub_100037700();
            v47 = *sub_100037718();
            v48 = *sub_100037730();
            v49 = [objc_allocWithZone(UIColor) initWithRed:v46 green:v47 blue:v48 alpha:*sub_100037748()];
            (*((swift_isaMask & *v30) + 0x300))(v49);
          }

          [v34 layoutSubviews];
          [v27 layoutSubviews];
          [objc_msgSend(v30 "systemApertureElementContext")];

          return swift_unknownObjectRelease();
        }
      }
    }
  }

  v11(v7, v10, v2);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004D610, &v62);
    _os_log_impl(&_mh_execute_header, v36, v37, "%s cannot get leading, trailing, and minimal views", v38, 0xCu);
    sub_1000114A8(v39);
  }

  return (v21)(v7, v2);
}

void sub_10003F854(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000301D0();
  (*(v8 + 16))(v11, v12, v7);
  v13 = a1;

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v30 = v4;
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v16 = 136315650;
    *(v16 + 4) = sub_100010E34(0xD00000000000001ELL, 0x800000010004D4A0, &v32);
    *(v16 + 12) = 2080;
    v17 = *(v13 + OBJC_IVAR____TtC14ReplayKitAngel20RPReadyAccessoryView_role);
    v29 = v7;
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = 0x676E696C69617274;
      }

      else
      {
        v18 = 0x6C616D696E696DLL;
      }

      if (v17 == 1)
      {
        v19 = 0xE800000000000000;
      }

      else
      {
        v19 = 0xE700000000000000;
      }
    }

    else
    {
      v19 = 0xE700000000000000;
      v18 = 0x676E696461656CLL;
    }

    v21 = sub_100010E34(v18, v19, &v32);

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v20 = v31;
    *(v16 + 24) = sub_100010E34(v31, a3, &v32);
    _os_log_impl(&_mh_execute_header, v14, v15, "%s role=%s viewState=%s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v8 + 8))(v11, v29);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
    v20 = v31;
  }

  v22 = *((swift_isaMask & *v13) + 0x88);

  v23 = v22(v20, a3);
  v24 = (*((swift_isaMask & *v13) + 0x68))(v23);
  if (v24)
  {
    v25 = v24;
    v26 = String._bridgeToObjectiveC()();
    [v25 setState:v26];
  }

  sub_10003FBD8(v13, v20, a3);
}

void sub_10003FBD8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100037234();
  v9 = *v8 == a2 && v8[1] == a3;
  if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || ((v10 = sub_10003724C(), *v10 == a2) ? (v11 = v10[1] == a3) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v12 = sub_100037264(), *v12 == a2) && v12[1] == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v13 = a1;
    v14 = UIAccessibilityAnnouncementNotification;
    type metadata accessor for RPReadyToRecordSystemApertureElementViewController();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    if (!v19)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = String._bridgeToObjectiveC()();
    }

    UIAccessibilityPostNotification(v14, v19);

    a1 = v13;
    v4 = v3;
  }

  type metadata accessor for RPReadyToRecordSystemApertureElementViewController();
  v20 = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass:v20];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

  v43 = v24;
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = String._bridgeToObjectiveC()();
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  v28 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView];
  if (v28)
  {
    v29 = v25;
    sub_1000119A0(0, &qword_100069120, UIView_ptr);
    v30 = a1;
    v31 = v28;
    v32 = static NSObject.== infix(_:_:)();

    if (v32)
    {
      v33 = [v31 accessibilityLabel];
      if (!v33)
      {

        goto LABEL_33;
      }

      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      if (v35 != v29 || v37 != v27)
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }
    }
  }

LABEL_26:
  v38 = *&v4[OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView];
  if (!v38 || (sub_1000119A0(0, &qword_100069120, UIView_ptr), v39 = a1, v40 = v38, v41 = static NSObject.== infix(_:_:)(), v40, v39, (v41 & 1) == 0))
  {

    return;
  }

LABEL_33:
  [a1 setAccessibilityLabel:v43];

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    [objc_msgSend(v4 "systemApertureElementContext")];

    swift_unknownObjectRelease();
  }
}

id sub_1000400F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100040290(uint64_t a1)
{
  v2 = sub_100040D28(&unk_1000696E0, type metadata accessor for STBackgroundActivityIdentifier);
  v3 = sub_100040D28(&qword_100069728, type metadata accessor for STBackgroundActivityIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_10004034C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E780, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000403BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10005E810, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void *sub_100040408(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000B62C(&unk_1000696F8, &qword_1000493A8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_1000405FC()
{
  sub_10000B62C(&qword_1000696F0, &qword_1000493A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100047E80;
  *(inited + 32) = String._bridgeToObjectiveC()();
  *(inited + 40) = String._bridgeToObjectiveC()();
  v1 = sub_100040408(inited);
  swift_setDeallocating();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1000406CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B62C(&qword_100068DF0, qword_100047E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RPReadyToRecordSystemApertureElementViewController()
{
  result = qword_10006AFD0;
  if (!qword_10006AFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100040788()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_maximumLayoutMode) = 4;
  *(v0 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_statusBarStyleOverridesToSuppress) = 0x100000;
  v2 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_preferredHeightForBottomSafeArea;
  *(v1 + v2) = *sub_1000366FC();
  v3 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionID);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_presentationBehaviors) = 666;
  v4 = SBUISystemApertureElementIdentifierScreenRecording;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_elementIdentifier) = SBUISystemApertureElementIdentifierScreenRecording;
  v5 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_leadingView;
  v6 = type metadata accessor for RPReadyAccessoryView();
  v7 = objc_allocWithZone(v6);
  v8 = v4;
  *(v1 + v5) = sub_100038418(0);
  v9 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_trailingView;
  v10 = objc_allocWithZone(v6);
  *(v1 + v9) = sub_100038418(1);
  v11 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalView;
  v12 = objc_allocWithZone(v6);
  *(v1 + v11) = sub_100038418(2);
  v13 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedReadyLabel;
  *(v1 + v13) = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedCallRecordingLabel;
  *(v1 + v14) = [objc_allocWithZone(UILabel) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_expandedOrangeDotLeadingPackageView) = 0;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_recordingState) = 4;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_sessionType) = 3;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController____lazy_storage___customViewHeightConstraint) = 0;
  v15 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customView;
  *(v1 + v15) = [objc_allocWithZone(UIView) init];
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_compactViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_minimalViewLayoutConstraints) = &_swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_customViewElementLayoutConstraints) = &_swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_keyColor;
  *(v1 + v16) = [objc_opt_self() grayColor];
  v17 = (v1 + OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_associatedAppBundleIdentifier);
  *v17 = 0;
  v17[1] = 0;
  v18 = OBJC_IVAR____TtC14ReplayKitAngel50RPReadyToRecordSystemApertureElementViewController_launchURL;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100040A4C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100040AC0()
{
  result = qword_100069630;
  if (!qword_100069630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069630);
  }

  return result;
}

unint64_t sub_100040B18()
{
  result = qword_100069638;
  if (!qword_100069638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069638);
  }

  return result;
}

void sub_100040B84()
{
  sub_10002A72C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100040D28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100040ED8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  v10 = sub_1000301D0();
  v11 = v3[2];
  v11(v9, v10, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v10;
    v17 = v11;
    v18 = v7;
    v19 = v16;
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004E160, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v15, 0xCu);
    sub_1000114A8(v19);
    v7 = v18;
    v11 = v17;
    v10 = v28;

    v3 = v29;
  }

  v20 = v3[1];
  v21 = v20(v9, v2);
  if ((*((swift_isaMask & *v1) + 0x128))(v21) == 4)
  {
    v11(v7, v10, v2);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100010E34(0xD000000000000014, 0x800000010004E160, &v30);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s cancel ready to record", v24, 0xCu);
      sub_1000114A8(v25);
    }

    v20(v7, v2);
    v26 = [objc_opt_self() sharedInstance];
    [v26 requestToCancelReadyToRecord];
  }
}

uint64_t sub_100041268()
{

  return _swift_deallocObject(v0, 25, 7);
}

void *sub_100041414()
{
  v1 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1000414C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_100041800()
{
  *&v0[OBJC_IVAR____TtC14ReplayKitAngel26RPRemoteAlertSceneDelegate_window] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPRemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10004188C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RPRemoteAlertSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000418D0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100041914(a1, v4);
}

unint64_t sub_100041914(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100042ED8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100042E84(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1000419DC(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v73 = &v71 - v10;
  v11 = __chkstk_darwin(v9);
  v72 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v71 - v14;
  __chkstk_darwin(v13);
  v17 = &v71 - v16;
  v18 = sub_1000301D0();
  v19 = v4[2];
  v75 = v18;
  v76 = v19;
  v77 = v4 + 2;
  (v19)(v17);
  v20 = v1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v21, v22);
  v78 = v4;
  v71 = v15;
  v74 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = v8;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v81[0] = v27;
    *v24 = 136315394;
    *(v24 + 4) = sub_100010E34(0xD00000000000001FLL, 0x800000010004DBC0, v81);
    *(v24 + 12) = 2112;
    *(v24 + 14) = v20;
    *v26 = v20;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s %@ Remote Alert for reactions tip", v24, 0x16u);
    sub_1000365AC(v26);
    v8 = v25;

    sub_1000114A8(v27);
    v4 = v78;
  }

  v29 = v4[1];
  v29(v17, v3);
  v30 = v3;
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v33 = objc_allocWithZone(UIWindow);
    v34 = a1;
    v35 = [v33 initWithWindowScene:v32];
    v36 = v74;
    (*((swift_isaMask & *v74) + 0x60))(v35);
    v37 = [v32 configurationContext];
    if (!v37 || (v38 = v37, v39 = [v37 userInfo], v38, !v39))
    {
      v52 = v73;
      v76(v73, v75, v30);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        v56 = "user info dictionary missing from remote alert";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

LABEL_25:
        v66 = v52;
        goto LABEL_26;
      }

LABEL_24:

      goto LABEL_25;
    }

    v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v79 = 0x746163696C707061;
    v80 = 0xEF656D614E6E6F69;
    AnyHashable.init<A>(_:)();
    if (*(v40 + 16))
    {
      v41 = sub_1000418D0(v81);
      if (v42)
      {
        sub_100011C08(*(v40 + 56) + 32 * v41, v82);
        sub_100042E84(v81);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_28:

LABEL_21:
          v52 = v72;
          v76(v72, v75, v30);
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 0;
            v56 = "missing dictionary info";
            goto LABEL_23;
          }

          goto LABEL_24;
        }

        v43 = v79;
        v44 = v80;
        v79 = 0xD000000000000010;
        v80 = 0x800000010004E260;
        AnyHashable.init<A>(_:)();
        if (*(v40 + 16))
        {
          v45 = sub_1000418D0(v81);
          if (v46)
          {
            sub_100011C08(*(v40 + 56) + 32 * v45, v82);
            sub_100042E84(v81);

            if (swift_dynamicCast())
            {
              v47 = v79;
              v48 = v80;
              type metadata accessor for RPReactionsTipViewController();
              v49 = sub_1000313A0(v43, v44, v47, v48);
              v50 = (*((swift_isaMask & *v36) + 0x58))();
              if (v50)
              {
                v51 = v50;
                [v50 setRootViewController:v49];
                [v51 makeKeyAndVisible];
                [v32 setAllowsMenuButtonDismissal:1];

                return;
              }

              v8 = v71;
              v76(v71, v75, v30);
              v68 = Logger.logObject.getter();
              v69 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v68, v69))
              {
                v70 = swift_slowAlloc();
                *v70 = 0;
                _os_log_impl(&_mh_execute_header, v68, v69, "window is nil", v70, 2u);
              }

              else
              {
              }

              goto LABEL_19;
            }

            goto LABEL_28;
          }
        }
      }
    }

    sub_100042E84(v81);
    goto LABEL_21;
  }

  v76(v8, v75, v3);
  v57 = a1;
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v58, v59))
  {

LABEL_19:
    v66 = v8;
LABEL_26:
    v67 = v30;
    goto LABEL_27;
  }

  v60 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  v81[0] = v61;
  *v60 = 136315138;
  swift_getObjectType();
  v62 = _typeName(_:qualified:)();
  v64 = v8;
  v65 = sub_100010E34(v62, v63, v81);

  *(v60 + 4) = v65;
  _os_log_impl(&_mh_execute_header, v58, v59, "Expected remote alert scene. scene type=%s", v60, 0xCu);
  sub_1000114A8(v61);

  v66 = v64;
  v67 = v3;
LABEL_27:
  v29(v66, v67);
}

void sub_10004228C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_1000301D0();
  v29 = v2[2];
  v30 = v9;
  v29(v8);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v31 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_100010E34(0xD000000000000018, 0x800000010004DBA0, &v31);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v10;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %@", v14, 0x16u);
    sub_1000365AC(v15);

    sub_1000114A8(v16);

    v2 = v28;
  }

  v18 = v2[1];
  v19 = v18(v8, v1);
  v20 = (*((swift_isaMask & *v10) + 0x58))(v19);
  if (v20)
  {
    v21 = v20;
    v22 = [v20 rootViewController];

    if (v22)
    {
      type metadata accessor for RPReactionsTipViewController();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v24 = [v23 presentedViewController];

        v22 = v24;
        if (!v24)
        {
          return;
        }
      }
    }
  }

  (v29)(v6, v30, v1);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "rootViewController is not valid", v27, 2u);
  }

  v18(v6, v1);
}

uint64_t sub_100042604()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD000000000000019, 0x800000010004DB80, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_10004280C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD00000000000001CLL, 0x800000010004DB60, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100042A14()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD00000000000001BLL, 0x800000010004DB40, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_100042C1C()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000301D0();
  (*(v2 + 16))(v5, v6, v1);
  v7 = v0;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_100010E34(0xD000000000000016, 0x800000010004DB20, &v16);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s %@", v10, 0x16u);
    sub_1000365AC(v11);

    sub_1000114A8(v12);
  }

  (*(v2 + 8))(v5, v1);
  return (*((swift_isaMask & *v7) + 0x60))(0);
}

id sub_100042F44()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10006B8E8 = result;
  return result;
}

uint64_t sub_100042F98()
{
  v0 = type metadata accessor for ImageResource();
  sub_100011C68(v0, qword_10006BA58);
  sub_10000E464(v0, qword_10006BA58);
  if (qword_10006B8E0 != -1)
  {
    swift_once();
  }

  v1 = qword_10006B8E8;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100043044()
{
  if (qword_10006B8F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();

  return sub_10000E464(v0, qword_10006BA58);
}

uint64_t sub_1000430A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10006B8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ImageResource();
  v3 = sub_10000E464(v2, qword_10006BA58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_10004351C()
{
  sub_100003A9C();
  v1 = 92;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Permission Denied", v0, 0x12u);
}

void sub_1000435BC()
{
  sub_100003A9C();
  v1 = 148;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d Unidentifiable application", v0, 0x12u);
}

void sub_1000436C8(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003A9C();
    sub_100003AB0(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d _pegasusProxy removeObserver failed", v3, v4, v5, v6, v7);
  }

  objc_end_catch();
}

void sub_100043798(void *a1)
{
  v1 = objc_begin_catch(a1);
  if (__RPLogLevel <= 2u && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100003A9C();
    sub_100003AB0(&_mh_execute_header, &_os_log_default, v2, " [ERROR] %{public}s:%d removeObserver failed", v3, v4, v5, v6, v7);
  }

  objc_end_catch();
}

void sub_100043868(uint64_t a1)
{
  v1 = 136446722;
  v2 = "[RPStatusBarAssertion invalidateStatusBar]_block_invoke";
  v3 = 1024;
  v4 = 104;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, " [ERROR] %{public}s:%d setRegisteredStyleOverrides replied with error: %@", &v1, 0x1Cu);
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}