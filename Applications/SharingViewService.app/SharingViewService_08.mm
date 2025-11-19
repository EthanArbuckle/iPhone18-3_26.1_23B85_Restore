void *sub_1000BD294()
{
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleEmoji + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleEmoji);
LABEL_10:

    return v1;
  }

  result = sub_1000BCC50();
  if (!result)
  {
LABEL_6:
    v1 = 0;
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex + 8) == 1)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < result[2])
  {
    v4 = result[2 * v3 + 5];

    v5 = [v4 roleEmoji];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1000BD3A0(char a1)
{
  v2 = v1;
  v45.receiver = v2;
  v45.super_class = type metadata accessor for AirTagSetupMainViewController();
  objc_msgSendSuper2(&v45, "viewDidAppear:", a1 & 1);
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AirTagSetupMainViewController viewWillAppear", v7, 2u);
  }

  v8 = [v2 _remoteViewControllerProxy];
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_retain] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v8)
  {
    [v8 setStatusBarHidden:1 withDuration:0.0];
    swift_unknownObjectRetain();
    [v8 setDesiredHardwareButtonEvents:{objc_msgSend(v2, "desiredHomeButtonEvents")}];
    swift_unknownObjectRelease();
  }

  sub_1000122EC(0, &qword_1001BCE90);
  v9 = static OS_dispatch_queue.main.getter();
  sub_100005DCC(&unk_1001BBCD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v11;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  sub_100004F48(inited);
  swift_setDeallocating();
  sub_10001259C(inited + 32, &qword_1001B95D0);
  v12 = objc_allocWithZone(CBCentralManager);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithDelegate:v2 queue:v9 options:isa];

  v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central;
  v16 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central];
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000122EC(0, &qword_1001BBAF8);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  sub_100004F48(_swiftEmptyArrayStorage);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 scanForPeripheralsWithServices:v18 options:v19];

  v20 = *&v2[v15];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = [v20 sharedPairingAgent];
  if (!v21)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v22 = v21;
  [v21 setDelegate:v2];

  if (sub_10005FD40())
  {
    v23 = [objc_allocWithZone(type metadata accessor for AirTagStartViewController()) init];
    swift_unknownObjectWeakAssign();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = &v23[OBJC_IVAR____TtC18SharingViewService25AirTagStartViewController_invalidateBubbleMonitor];
    v26 = *&v23[OBJC_IVAR____TtC18SharingViewService25AirTagStartViewController_invalidateBubbleMonitor];
    *v25 = sub_1000E47A8;
    v25[1] = v24;

    sub_100012050(v26);

    v27 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC];
    *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC] = v23;
    v28 = v23;
  }

  else
  {
    v29 = type metadata accessor for AirTagRestrictedViewController();
    v30 = objc_allocWithZone(v29);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v44.receiver = v30;
    v44.super_class = v29;
    v28 = objc_msgSendSuper2(&v44, "initWithContentView:", 0);
  }

  v31 = objc_allocWithZone(type metadata accessor for AirTagCustomNameViewController());
  v32 = v2;
  v33 = sub_100073668(v32);
  v34 = *&v32[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC];
  *&v32[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC] = v33;

  v35 = objc_allocWithZone(type metadata accessor for AirTagLinkingViewController());
  v36 = v32;
  v37 = sub_10007E3D0(v36);
  v38 = *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC];
  *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC] = v37;

  v39 = [objc_allocWithZone(type metadata accessor for AirTagLoadingViewController()) init];
  swift_unknownObjectWeakAssign();
  v40 = *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC];
  *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC] = v39;

  v41 = [v36 presentProxCardFlowWithDelegate:v36 initialViewController:v28];
  v42 = *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav];
  *&v36[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav] = v41;

  sub_1000BD9C0(v43);
  swift_unknownObjectRelease();
}

void sub_1000BD94C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor);
    v2 = Strong;

    if (v1)
    {
      sub_10001C248();
    }
  }
}

void sub_1000BD9C0(uint64_t a1)
{
  v2 = v1;
  if (qword_1001B92E8 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_1001B9FF8;
  v4 = __chkstk_darwin(a1);
  __chkstk_darwin(v4);

  os_unfair_lock_lock(v3 + 4);
  sub_1000E3CDC(&v10);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v10;

  if (v5 != 1)
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BE0E0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected quantity of AirTagSetupMainViewController instances: %lu. fault is likely due to a retain cycle.", v9, 0xCu);
    }
  }

  if ((*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsNFCUI) & 1) == 0)
  {
    sub_1000C533C();
    sub_1000C8CC0();
    sub_1000D5834();
    sub_1000C9360();
    sub_1000C78CC();
    sub_1000C8758();
    sub_1000CA48C();
    sub_1000CD340();
    sub_1000CD744();
    sub_1000C533C();
    sub_1000CDA08();
    sub_1000CE170();
    sub_1000CE8BC();
    sub_1000CAE30();
    sub_1000C9010();
    sub_1000CF5D0();
    sub_1000D1C0C();
    sub_1000D23DC();
    sub_1000D33D0();
    sub_1000D3C20();
    sub_1000D4568();
    sub_1000D49F0();
    sub_1000CB0CC();
    sub_1000D4CF4(1);
    sub_1000CC8F0();
    sub_1000BE2C0(1);
  }
}

void sub_1000BDE8C(char a1)
{
  v2 = v1;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Main viewDidDisappear", v7, 2u);
  }

  v41.receiver = v2;
  v41.super_class = type metadata accessor for AirTagSetupMainViewController();
  objc_msgSendSuper2(&v41, "viewDidDisappear:", a1 & 1);
  sub_1000BE2C0(0);
  v8 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC;
  v9 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC];
  if (v9)
  {
    swift_unknownObjectWeakAssign();
    v9 = *&v2[v8];
  }

  *&v2[v8] = 0;

  v10 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC;
  v11 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC];
  if (v11)
  {
    swift_unknownObjectWeakAssign();
    v11 = *&v2[v10];
  }

  *&v2[v10] = 0;

  v12 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC;
  v13 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC];
  if (v13)
  {
    swift_unknownObjectWeakAssign();
    v13 = *&v2[v12];
  }

  *&v2[v12] = 0;

  v14 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC;
  v15 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC];
  if (v15)
  {
    v16 = *&v15[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_mainController];
    *&v15[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_mainController] = 0;

    v15 = *&v2[v14];
  }

  *&v2[v14] = 0;

  v17 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC;
  v18 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC];
  if (v18)
  {
    swift_unknownObjectWeakAssign();
    v18 = *&v2[v17];
  }

  *&v2[v17] = 0;

  v19 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC];
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC] = 0;

  v20 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC;
  v21 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC];
  if (v21)
  {
    swift_unknownObjectWeakAssign();
    v21 = *&v2[v20];
  }

  *&v2[v20] = 0;

  v22 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC;
  v23 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC];
  if (v23)
  {
    swift_unknownObjectWeakAssign();
    v23 = *&v2[v22];
  }

  *&v2[v22] = 0;

  v24 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC;
  v25 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC];
  if (v25)
  {
    swift_unknownObjectWeakAssign();
    v25 = *&v2[v24];
  }

  *&v2[v24] = 0;

  v26 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC;
  v27 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC];
  if (v27)
  {
    swift_unknownObjectWeakAssign();
    v27 = *&v2[v26];
  }

  *&v2[v26] = 0;

  v28 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcVC;
  v29 = *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcVC];
  if (!v29)
  {
    goto LABEL_32;
  }

  v30 = *&v29[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks;
  v32 = *&v29[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks];
  sub_100024138(*&v29[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler]);
  if (v32)
  {
    v33 = v29;
    v34 = UpTicks()();
    v35 = *&v29[v31];
    v36 = v34 >= v35;
    v37 = v34 - v35;
    if (!v36)
    {
      __break(1u);
      return;
    }

    v38 = UpTicksToSecondsF(_:)(v37);
  }

  else
  {
    v38 = 0.0;
  }

  v30(0, 1, v38);
  sub_100012050(v30);
  v29 = *&v2[v28];
  if (v29)
  {
LABEL_31:
    [v29 setMainController:0];
    v39 = *&v2[v28];
  }

  else
  {
LABEL_32:
    v39 = 0;
  }

  *&v2[v28] = 0;

  v40 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout;
  if (*&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout])
  {
    swift_getObjectType();

    OS_dispatch_source.cancel()();
  }

  *&v2[v40] = 0;

  sub_1000C237C();
}

void sub_1000BE2C0(char a1)
{
  v2 = v1;
  aBlock = 0x3A73736563637573;
  v57 = 0xE900000000000020;
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v8 = aBlock;
  v7 = v57;
  swift_beginAccess();
  sub_1000D99FC(&v62, 0xD000000000000019, 0x8000000100147780);
  swift_endAccess();

  aBlock = 0xD000000000000070;
  v57 = 0x800000010014C1F0;
  v62 = 1479;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_1000D991C(&v62, v10);
  swift_endAccess();
  if (v11)
  {
    sub_1000D530C(0xD000000000000019, 0x8000000100147780, v8, v7, "%s - started... %s");
  }

  sub_1000C3C6C(0);
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentDisconnect))
  {
    goto LABEL_36;
  }

  *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentDisconnect) = 1;
  v12 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central);
    if (!v13)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v53 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    v14 = v12;
    v15 = [v13 sharedPairingAgent];
    v62 = v15;
    sub_100005DCC(&qword_1001BBB18);
    Optional.unwrap(_:file:line:)();

    v16 = aBlock;
    v17 = v14;
    p_cache = SVSBaseMainController.cache;
    v52 = [aBlock isPeerPaired:v17];
    v54 = aBlock;
    if (v52)
    {
      v19 = 0x64656C696166;
      if (a1)
      {
        v19 = 0x6564656563637573;
      }

      v51 = v19;
      if (a1)
      {
        v20 = 0xE900000000000064;
      }

      else
      {
        v20 = 0xE600000000000000;
      }

      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000D298(v21, qword_1001BE0E0);

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock = v25;
        *v24 = 136315138;
        v26 = sub_10002065C(v51, v20, &aBlock);

        *(v24 + 4) = v26;
        p_cache = (SVSBaseMainController + 16);
        _os_log_impl(&_mh_execute_header, v22, v23, "Intentionally unpairing after setup %s <rdar://49613642>", v24, 0xCu);
        sub_1000083B0(v25);
      }

      else
      {
      }

      v16 = v54;
      [v54 unpairPeer:v17];
    }

    if (p_cache[146] != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000D298(v27, qword_1001BE0E0);
    v28 = v17;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412546;
      *(v31 + 4) = v28;
      *v32 = v53;
      *(v31 + 12) = 1024;
      *(v31 + 14) = v52;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v29, v30, "%@. BT-paired already? %{BOOL}d", v31, 0x12u);
      sub_10001259C(v32, &unk_1001BBA60);

      v28 = v29;
      v29 = v54;
      v16 = v33;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState) != 2)
  {
    v34 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
    if (v34)
    {
      v35 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager);
      v60 = sub_1000D54B0;
      v61 = 0;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000E4BD0;
      v59 = &unk_100194158;
      v36 = _Block_copy(&aBlock);
      v37 = v34;
      [v35 invalidatePairingSession:v37 completion:v36];
      _Block_release(v36);
    }
  }

  if (a1)
  {
    sub_1000D5664();
  }

  v38 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central);
  if (!v38)
  {
    __break(1u);
    goto LABEL_47;
  }

  [v38 stopScan];
LABEL_36:
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart) == 1)
  {
    v39 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_reenabledProxCard;
    if ((*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_reenabledProxCard) & 1) == 0)
    {
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000D298(v40, qword_1001BE0E0);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Re-enabling another setup", v43, 2u);
      }

      v44 = [objc_allocWithZone(SFClient) init];
      v45 = swift_allocObject();
      *(v45 + 16) = v44;
      v60 = sub_10005F820;
      v61 = v45;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000E4BD0;
      v59 = &unk_100194130;
      v46 = _Block_copy(&aBlock);
      v47 = v44;

      [v47 reenableProxCardType:102 completion:v46];

      _Block_release(v46);
      *(v2 + v39) = 1;
    }
  }

  swift_beginAccess();
  sub_1000DC818(0xD000000000000019, 0x8000000100147780);
  swift_endAccess();

  aBlock = 0xD000000000000070;
  v57 = 0x800000010014C1F0;
  v62 = 1523;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  v49 = String.hashValue.getter();

  swift_beginAccess();
  v50 = sub_1000D991C(&v62, v49);
  swift_endAccess();
  if (v50)
  {
    sub_1000D530C(0xD000000000000019, 0x8000000100147780, 0, 0xE000000000000000, "%s - done. %s");
  }
}

uint64_t sub_1000BEC2C()
{
  v1[6] = v0;
  v2 = type metadata accessor for AirTagPairing2.AssetRequest();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_100005DCC(&qword_1001BE238);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for AirTagHardwareModel();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for AirTagPairing2.Configuration();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_100005DCC(&unk_1001BE180);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v5 = type metadata accessor for AirTagPairing2.Configuration.Color();
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v7;
  v1[26] = v6;

  return _swift_task_switch(sub_1000BEEC8, v7, v6);
}

uint64_t sub_1000BEEC8()
{
  v1 = v0[19];
  v2 = v0[6];
  v3 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  v25 = v3;
  v26 = v2;
  sub_100005EB8(v2 + v3, v1, &unk_1001BE180);
  v4 = type metadata accessor for B389PresentationConfig(0);
  v24 = *(*(v4 - 8) + 48);
  if (v24(v1, 1, v4) == 1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return AirTagPairing2.AssetRequest.assets()();
  }

  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v23 = v0[18];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[11];
  v13 = *(v9 + *(v4 + 32));
  sub_10005F788(v9, type metadata accessor for B389PresentationConfig);
  v14 = &enum case for AirTagPairing2.Configuration.Color.hermes(_:);
  if (!v13)
  {
    v14 = &enum case for AirTagPairing2.Configuration.Color.white(_:);
  }

  (*(v8 + 104))(v5, *v14, v7);
  (*(v10 + 104))(v11, enum case for AirTagHardwareModel.original(_:), v12);
  (*(v8 + 16))(v6, v5, v7);
  AirTagPairing2.Configuration.init(hardwareModel:color:timeout:)();
  sub_100005EB8(v26 + v25, v23, &unk_1001BE180);
  if (v24(v23, 1, v4) == 1)
  {
    goto LABEL_11;
  }

  v15 = v0[18];
  v16 = (v15 + *(v4 + 56));
  v17 = *v16;
  v18 = v16[1];
  sub_100025480(*v16, v18);
  sub_10005F788(v15, type metadata accessor for B389PresentationConfig);
  if (v18 >> 60 != 15)
  {
    v19 = v0[10];
    sub_100005E64(v17, v18);
    PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
    v20 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
    (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
    AirTagPairing2.Configuration.engravingInformation.setter();
    sub_100025404(v17, v18);
  }

  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  AirTagPairing2.AssetRequest.init(configuration:)();
  v21 = swift_task_alloc();
  v0[27] = v21;
  *v21 = v0;
  v21[1] = sub_1000BF20C;

  return AirTagPairing2.AssetRequest.assets()();
}

uint64_t sub_1000BF20C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 208);
  v6 = *(v3 + 200);
  if (v1)
  {
    v7 = sub_1000BF63C;
  }

  else
  {
    v7 = sub_1000BF350;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000BF350()
{
  v32 = v0;

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BE0E0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[28];
    v5 = v0[21];
    v28 = v0[20];
    v29 = v0[23];
    v6 = v0[15];
    v26 = v0[14];
    v27 = v0[17];
    v7 = v0[8];
    v24 = v0[7];
    v25 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v0[5] = v4;
    type metadata accessor for AirTagPairing2.Assets();

    v10 = String.init<A>(describing:)();
    v12 = sub_10002065C(v10, v11, &v31);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Got assets %s", v8, 0xCu);
    sub_1000083B0(v9);

    (*(v7 + 8))(v25, v24);
    (*(v6 + 8))(v27, v26);
    (*(v5 + 8))(v29, v28);
  }

  else
  {
    v30 = v0[23];
    v13 = v0[20];
    v14 = v0[21];
    v15 = v0[17];
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[8];
    v19 = v0[9];
    v20 = v0[7];

    (*(v18 + 8))(v19, v20);
    (*(v17 + 8))(v15, v16);
    (*(v14 + 8))(v30, v13);
  }

  v21 = v0[1];
  v22 = v0[28];

  return v21(v22);
}

uint64_t sub_1000BF63C()
{
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[14];
  v7 = v0[9];
  v9 = v0[7];
  v8 = v0[8];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000BF778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v98 = a2;
  v99 = a3;
  v6 = sub_100005DCC(&unk_1001BBB80);
  __chkstk_darwin(v6 - 8);
  v97 = &v93 - v7;
  v102 = type metadata accessor for B389PresentationConfig.Mode(0);
  v8 = __chkstk_darwin(v102);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v93 - v11;
  v13 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v13 - 8);
  v15 = &v93 - v14;
  v100 = type metadata accessor for B389PresentationConfig(0);
  v16 = *(v100 - 8);
  v17 = __chkstk_darwin(v100);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  v111 = a1;
  sub_100005DCC(&qword_1001BBC50);
  Optional.unwrap(_:file:line:)();
  v101 = aBlock;
  v22 = [aBlock userInfo];
  if (v22)
  {
    v23 = v22;
    v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v24 = 0;
  }

  v111 = v24;
  sub_100005DCC(&qword_1001BBC58);
  Optional.unwrap(_:file:line:)();

  v25 = aBlock;
  v111 = 0xD000000000000011;
  v112 = 0x8000000100147F60;
  AnyHashable.init<A>(_:)();
  v26 = v25[2];
  v94 = v10;
  v93 = v19;
  if (v26 && (v27 = sub_100032C7C(&aBlock), (v28 & 1) != 0))
  {
    sub_10000BFEC(v25[7] + 32 * v27, &v111);
    sub_10000BF98(&aBlock);

    v29 = swift_dynamicCast();
    v30 = v103;
    v31 = v104;
    if (!v29)
    {
      v30 = 0;
      v31 = 0xF000000000000000;
    }
  }

  else
  {

    sub_10000BF98(&aBlock);
    v30 = 0;
    v31 = 0xF000000000000000;
  }

  v111 = v30;
  v112 = v31;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v111, v112);
  v33 = aBlock;
  v32 = v106;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10005F638(&qword_1001BBC60, type metadata accessor for B389PresentationConfig);
  v34 = v100;
  v95 = v32;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100025418(v21, v15, type metadata accessor for B389PresentationConfig);
  (*(v16 + 56))(v15, 0, 1, v34);
  v35 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_1000E44A8(v15, &v4[v35]);
  swift_endAccess();
  v36 = *(v34 + 24);
  sub_100025418(&v21[v36], v12, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v38 = v93;
    if (EnumCaseMultiPayload == 1)
    {
      v39 = v12[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
      v40 = type metadata accessor for UUID();
      (*(*(v40 - 8) + 8))(v12, v40);
    }

    else
    {
      sub_10005F788(v12, type metadata accessor for B389PresentationConfig.Mode);
      v39 = 0;
    }
  }

  else
  {
    v39 = *v12;
    v38 = v93;
  }

  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti] = v39;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000D298(v41, qword_1001BE0E0);
  sub_100025418(v21, v38, type metadata accessor for B389PresentationConfig);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  v44 = os_log_type_enabled(v42, v43);
  v96 = v33;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v46 = v36;
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v45 = 136315138;
    v48 = sub_10001CBC8();
    v49 = v38;
    v50 = v4;
    v51 = v21;
    v53 = v52;
    sub_10005F788(v49, type metadata accessor for B389PresentationConfig);
    v54 = sub_10002065C(v48, v53, &aBlock);
    v21 = v51;
    v4 = v50;

    *(v45 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v42, v43, "presentConfig: %s", v45, 0xCu);
    sub_1000083B0(v47);
    v36 = v46;
  }

  else
  {

    sub_10005F788(v38, type metadata accessor for B389PresentationConfig);
  }

  v55 = &v21[*(v100 + 52)];
  v56 = v55[1];
  if (v56)
  {
    v57 = *v55;
    v58 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v58 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v58)
    {
      swift_bridgeObjectRetain_n();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v36;
        v63 = swift_slowAlloc();
        aBlock = v63;
        *v61 = 136315138;
        *(v61 + 4) = sub_10002065C(v57, v56, &aBlock);
        _os_log_impl(&_mh_execute_header, v59, v60, "Using given name: '%s'", v61, 0xCu);
        sub_1000083B0(v63);
        v36 = v62;
      }

      v64 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fnameDisplay];
      *v64 = v57;
      v64[1] = v56;
    }
  }

  v65 = v94;
  sub_100025418(&v21[v36], v94, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10005F788(v65, type metadata accessor for B389PresentationConfig.Mode);
  }

  else
  {
    v66 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState];
    *v66 = 5;
    v66[8] = 1;
    v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState] = 1;
  }

  v67 = [v101 xpcEndpoint];
  if (v67)
  {
    v68 = v67;
    v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsNFCUI] = 1;
    v69 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    v70 = *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_endpoint];
    *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_endpoint] = v69;
    v71 = v69;

    [v71 _setEndpoint:v68];
    v72 = [objc_allocWithZone(CUXPCAgent) init];
    v73 = *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent];
    *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent] = v72;
    v74 = v72;

    sub_1000122EC(0, &qword_1001BCE90);
    v75 = static OS_dispatch_queue.main.getter();
    [v74 setDispatchQueue:v75];

    v76 = objc_opt_self();
    v77 = [v76 interfaceWithProtocol:&OBJC_PROTOCOL___SFXPCB389NFCPromptConfigurationReceiving];
    [v74 setExportedInterface:v77];

    [v74 setExportedObject:v4];
    v78 = String._bridgeToObjectiveC()();
    [v74 setLabel:v78];

    [v74 setListenerEndpoint:v71];
    v79 = [v76 interfaceWithProtocol:&OBJC_PROTOCOL___SDXPCClientInterface];
    [v74 setRemoteObjectInterface:v79];

    v109 = sub_1000C0538;
    v110 = 0;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_10001C544;
    v108 = &unk_1001944A0;
    v80 = _Block_copy(&aBlock);
    [v74 setInterruptionHandler:v80];
    _Block_release(v80);
    v109 = sub_1000C0544;
    v110 = 0;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_10001C544;
    v108 = &unk_1001944C8;
    v81 = _Block_copy(&aBlock);
    [v74 setInvalidationHandler:v81];
    _Block_release(v81);
    v82 = swift_allocObject();
    *(v82 + 16) = v74;
    v109 = sub_1000E4630;
    v110 = v82;
    aBlock = _NSConcreteStackBlock;
    v106 = 1107296256;
    v107 = sub_1000E4BD0;
    v108 = &unk_100194518;
    v83 = _Block_copy(&aBlock);
    v84 = v74;

    [v84 activateWithCompletion:v83];
    _Block_release(v83);
    swift_unknownObjectRelease();
  }

  v85 = type metadata accessor for TaskPriority();
  v86 = v97;
  (*(*(v85 - 8) + 56))(v97, 1, 1, v85);
  type metadata accessor for MainActor();
  v87 = v4;
  v89 = v98;
  v88 = v99;
  sub_100024138(v98);
  v90 = static MainActor.shared.getter();
  v91 = swift_allocObject();
  v91[2] = v90;
  v91[3] = &protocol witness table for MainActor;
  v91[4] = v87;
  v91[5] = v89;
  v91[6] = v88;
  sub_1000BB214(0, 0, v86, &unk_100170A50, v91);

  sub_1000083FC(v96, v95);

  return sub_10005F788(v21, type metadata accessor for B389PresentationConfig);
}

void sub_1000C0550(uint64_t a1, void *a2)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    aBlock[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = v10;
    }

    else
    {
      v11 = 0x8000000100145470;
      v9 = 0xD000000000000015;
    }

    v12 = sub_10002065C(v9, v11, aBlock);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Agent activated, error? %s.", v7, 0xCu);
    sub_1000083B0(v8);
  }

  aBlock[4] = sub_1000C0790;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E4BD0;
  aBlock[3] = &unk_100194540;
  v13 = _Block_copy(aBlock);
  v14 = [a2 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  if (v14)
  {
    [v14 preheatXPCConnection];
    swift_unknownObjectRelease();
  }
}

void sub_1000C0790(uint64_t a1)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (a1)
    {
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = v7;
    }

    else
    {
      v8 = 0x8000000100145470;
      v6 = 0xD000000000000015;
    }

    v9 = sub_10002065C(v6, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "remoteObjectProxyWithErrorHandler failed in updateStateRemotely. Error: %s", v4, 0xCu);
    sub_1000083B0(v5);
  }

  else
  {
  }
}

uint64_t sub_1000C094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v6[7] = v7;
  *v7 = v6;
  v7[1] = sub_1000C0A00;

  return sub_1000BEC2C();
}

uint64_t sub_1000C0A00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = sub_1000C0C14;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = sub_1000C0B80;
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t sub_1000C0B80()
{
  v1 = v0[9];
  v3 = v0[2];
  v2 = v0[3];

  *(v3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_assets) = v1;

  if (v2)
  {
    (v0[3])(v4);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C0C14()
{

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BE0E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to loadAssetBundle in AirTagSetupMainViewController", v4, 2u);
  }

  v5 = *(v0 + 24);

  if (v5)
  {
    (*(v0 + 24))();
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000C0E20(uint64_t a1)
{
  v2 = v1;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_1000B9E58(a1);
    v11 = sub_10002065C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "handleButtonActions: %s", v7, 0xCu);
    sub_1000083B0(v8);
  }

  if (a1)
  {
    sub_1000B9AF4(a1);
    v13 = *(v12 + 16);
    v14 = 32;
    while (v13)
    {
      v15 = *(v12 + v14);
      v14 += 8;
      --v13;
      if ((v15 & 0x10) != 0)
      {

        [v2 dismiss:4];
        return;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1000C11D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v6 setSensitive:1];
  sub_1000BAC40(*(v3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fbOtions));
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setFrontBoardOptions:isa];

  v16 = [objc_opt_self() defaultWorkspace];
  sub_100005DCC(&qword_1001BBC18);
  Optional.unwrap(_:file:line:)();

  v8 = aBlock[0];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  aBlock[4] = sub_1000E43C0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BB140;
  aBlock[3] = &unk_1001943D8;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100024138(a2);

  [v8 openURL:v11 configuration:v14 completionHandler:v13];
  _Block_release(v13);
}

void sub_1000C1400(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BE0E0);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315394;
    if (a1)
    {
      v10 = Dictionary.description.getter();
      v12 = v11;
    }

    else
    {
      v12 = 0x80000001001478A0;
      v10 = 0xD000000000000026;
    }

    v13 = sub_10002065C(v10, v12, &v18);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = v15;
    }

    else
    {
      v14 = 0xD000000000000015;
      v16 = 0x8000000100145470;
    }

    v17 = sub_10002065C(v14, v16, &v18);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "Open URL callback success: %s, error: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    a3();
  }
}

void sub_1000C1640(char a1)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "assertion acquired: %{BOOL}d", v4, 8u);
  }
}

uint64_t sub_1000C1744(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v9 = sub_100005DCC(&qword_1001BA7B0);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000D298(v15, qword_1001BE0E0);
  sub_100024138(a3);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_100012050(a3);
  if (os_log_type_enabled(v16, v17))
  {
    v41 = v17;
    v42 = a2;
    v43 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49 = v40;
    *v18 = 134218498;
    *(v18 + 4) = a5;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v46;
    *(v18 + 18) = 2080;
    if (a3)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a4;
      v20 = sub_1000669E4;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    v47 = v20;
    v48 = v19;
    sub_100024138(a3);
    sub_100005DCC(&qword_1001BBC08);
    v21 = Optional.debugDescription.getter();
    v22 = a4;
    v24 = v23;
    sub_100012050(v20);
    v25 = sub_10002065C(v21, v24, &v49);
    a4 = v22;

    *(v18 + 20) = v25;
    _os_log_impl(&_mh_execute_header, v16, v41, "dismissCompletion from %ld. inActionType: %d, completion: %s", v18, 0x1Cu);
    sub_1000083B0(v40);

    a2 = v42;
    v12 = v43;
  }

  else
  {
  }

  v26 = swift_allocObject();
  v27 = v45;
  swift_unknownObjectWeakInit();
  sub_100005EB8(a2, v14, &qword_1001BA7B0);
  sub_100005EB8(v14, v12, &qword_1001BA7B0);
  v28 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v46;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  sub_100066AC8(v14, v29 + v28, &qword_1001BA7B0);
  v30 = *(v27 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (v30)
  {
    sub_100024138(a3);

    v31 = [v30 topViewController];
    v49 = v31;
    sub_100005DCC(&qword_1001BBC00);
    Optional.unwrap(_:file:line:)();

    v32 = v47;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v37 = v33;
      v34 = v32;
      v35 = a4;
      v36 = [v37 containerView];
      LODWORD(v37) = [v36 swipeDismissible];

      a4 = v35;
      if (!v46)
      {
        goto LABEL_18;
      }
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (!v38)
      {
        if (v46)
        {
          goto LABEL_16;
        }

        goto LABEL_18;
      }

      v37 = (([v38 dismissalType] >> 1) & 1);
      if (!v46)
      {
        goto LABEL_18;
      }
    }

    if (!v37)
    {
LABEL_16:

      sub_10001259C(v12, &qword_1001BA7B0);
      sub_1000DDEA4(v32, sub_1000E4118, v29);
    }

LABEL_18:
    sub_1000C1CD0(v26, v46, a3, a4, v12);

    return sub_10001259C(v12, &qword_1001BA7B0);
  }

  sub_100024138(a3);
  result = sub_10001259C(v12, &qword_1001BA7B0);
  __break(1u);
  return result;
}

void sub_1000C1CD0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005DCC(&qword_1001BA7B0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &aBlock[-1] - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v26 = a4;
    v16 = type metadata accessor for Logger();
    sub_10000D298(v16, qword_1001BE0E0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "dismissClosure called", v19, 2u);
    }

    sub_1000BE2C0(0);
    sub_100005EB8(a5, v13, &qword_1001BA7B0);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 16) = a3;
    *(v22 + 24) = v23;
    sub_100066AC8(v13, v22 + v20, &qword_1001BA7B0);
    *(v22 + v21) = v15;
    aBlock[4] = sub_1000E42E4;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100194338;
    v24 = _Block_copy(aBlock);
    sub_100024138(a3);
    v25 = v15;

    [v25 dismissViewControllerAnimated:a2 != 19 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_1000C1FB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  (__chkstk_darwin)();
  v32 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BA7B0);
  v10 = (__chkstk_darwin)();
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v31 - v14;
  if (a1)
  {
    a1(v13);
  }

  v33 = a3;
  sub_100005EB8(a3, v15, &qword_1001BA7B0);
  v16 = *(v8 + 48);
  v17 = v16(v15, 1, v7);
  sub_10001259C(v15, &qword_1001BA7B0);
  if (v17 == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = sub_1000DE458();
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000D298(v20, qword_1001BE0E0);
    v18 = v19;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31[1] = a4;
      v25 = v24;
      *v23 = 138412290;
      *(v23 + 4) = v18;
      *v24 = v18;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v21, v22, "Took assertion: %@", v23, 0xCu);
      sub_10001259C(v25, &unk_1001BBA60);
    }
  }

  sub_1000C237C();
  sub_100005EB8(v33, v12, &qword_1001BA7B0);
  if (v16(v12, 1, v7) == 1)
  {

    return sub_10001259C(v12, &qword_1001BA7B0);
  }

  else
  {
    v28 = v32;
    (*(v8 + 32))(v32, v12, v7);
    v29 = swift_allocObject();
    *(v29 + 16) = v18;
    v30 = v18;
    sub_1000C11D8(v28, sub_100066FB4, v29);

    return (*(v8 + 8))(v28, v7);
  }
}

void sub_1000C237C()
{
  v1 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent;
  [*&v0[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = [v0 _remoteViewControllerProxy];
  sub_1000C3C6C(0);
  if (v3)
  {
    if ([v3 respondsToSelector:"invalidate"])
    {
      [v3 invalidate];
    }

    swift_unknownObjectRelease();
  }
}

void sub_1000C2434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v49 = a8;
  v43[1] = a6;
  v44 = a7;
  v47 = a1;
  v48 = sub_100005DCC(&qword_1001BBB68);
  v46 = *(v48 - 8);
  v45 = *(v46 + 64);
  __chkstk_darwin(v48);
  v11 = v43 - v10;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = sub_1001279D0(v13, v14, v15);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100005DCC(&unk_1001BBB70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10016CCE0;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_10000BF44();
  if (a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (a5)
  {
    v19 = a5;
  }

  *(v17 + 32) = v18;
  *(v17 + 40) = v19;

  static String.localizedStringWithFormat(_:_:)();

  v20 = [v12 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = sub_1001279D0(v20, v21, v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = String._bridgeToObjectiveC()();

  v25 = String._bridgeToObjectiveC()();

  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  v27 = String._bridgeToObjectiveC()();
  v28 = sub_100127AD0(v27);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = String._bridgeToObjectiveC()();

  v54 = nullsub_4;
  v55 = 0;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10001BE90;
  v53 = &unk_1001945B8;
  v30 = _Block_copy(&aBlock);

  v31 = objc_opt_self();
  v32 = [v31 actionWithTitle:v29 style:1 handler:v30];
  _Block_release(v30);

  v44 = v32;
  [v26 addAction:v32];
  v33 = String._bridgeToObjectiveC()();
  v34 = sub_100126B8C(v33);

  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  v35 = sub_100127AD0(v34);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v46;
  v37 = v48;
  (*(v46 + 16))(v11, v47, v48);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = swift_allocObject();
  (*(v36 + 32))(v39 + v38, v11, v37);
  v40 = String._bridgeToObjectiveC()();

  v54 = sub_1000E4858;
  v55 = v39;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10001BE90;
  v53 = &unk_100194608;
  v41 = _Block_copy(&aBlock);

  v42 = [v31 actionWithTitle:v40 style:0 handler:v41];
  _Block_release(v41);

  [v26 addAction:v42];
  [v26 setPreferredAction:v42];
  [v49 presentViewController:v26 animated:1 completion:0];
}

uint64_t sub_1000C2A28(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005DCC(&qword_1001BBB68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = sub_100005DCC(&unk_1001BBB80);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a2, v3);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  (*(v4 + 32))(v13 + v12, v6, v3);
  sub_1000BB214(0, 0, v9, &unk_100170AA0, v13);
}

uint64_t sub_1000C2C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for DeviceWithCompanion();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  sub_100005DCC(&unk_1001BE270);
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for ClientOrigin();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v4[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v8;
  v4[17] = v7;

  return _swift_task_switch(sub_1000C2DD4, v8, v7);
}

uint64_t sub_1000C2DD4()
{
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1000C2EB8;
  v2 = v0[14];

  return Session.init(_:)(v2);
}

uint64_t sub_1000C2EB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = a1;

  v4 = swift_task_alloc();
  v2[20] = v4;
  *v4 = v3;
  v4[1] = sub_1000C3008;
  v5 = v2[9];

  return Session.thisDeviceWithCompanion()(v5);
}

uint64_t sub_1000C3008()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1000C3688;
  }

  else
  {
    v5 = sub_1000C3144;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000C3144()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v1, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = v0[10];

    sub_10001259C(v7, &unk_1001BE270);
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000D298(v8, qword_1001BE0E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Me device switch failed, no this device", v11, 2u);
    }

    sub_100005DCC(&qword_1001BBB68);
    CheckedContinuation.resume(returning:)();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[10];
    v15 = Device.identifier.getter();
    v17 = v16;
    v0[22] = v16;
    (*(v6 + 8))(v14, v5);
    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_1000C3400;

    return Session.setActiveLocationSharingDevice(_:)(v15, v17);
  }
}

uint64_t sub_1000C3400()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1000C388C;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1000C351C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1000C351C()
{

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BE0E0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Me device switch succeeded", v4, 2u);
  }

  sub_100005DCC(&qword_1001BBB68);
  CheckedContinuation.resume(returning:)();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000C3688()
{
  v12 = v0;

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BE0E0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10002065C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Me device switch failed: %s", v4, 0xCu);
    sub_1000083B0(v5);
  }

  sub_100005DCC(&qword_1001BBB68);
  CheckedContinuation.resume(returning:)();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000C388C()
{
  v12 = v0;

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BE0E0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_10002065C(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Me device switch failed: %s", v4, 0xCu);
    sub_1000083B0(v5);
  }

  sub_100005DCC(&qword_1001BBB68);
  CheckedContinuation.resume(returning:)();

  v9 = *(v0 + 8);

  return v9();
}

void sub_1000C3A98(char a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_dismissed;
  if ((*(v3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_dismissed) & 1) == 0)
  {
    v5 = *(v3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
    if (v5)
    {
      if (a2)
      {
        v11[4] = a2;
        v11[5] = a3;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_10001C544;
        v11[3] = &unk_100194428;
        v8 = _Block_copy(v11);
        v9 = v5;
        sub_100024138(a2);
      }

      else
      {
        v10 = v5;
        v8 = 0;
      }

      [v5 dismissViewControllerAnimated:a1 & 1 completion:v8];
      _Block_release(v8);

      *(v3 + v4) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000C3C6C(char a1)
{
  if ([v1 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    sub_100005DCC(&unk_1001BC0B0);
    if (swift_dynamicCast())
    {
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000D298(v3, qword_1001BE0E0);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 67109120;
        *(v6 + 4) = a1 & 1;
        _os_log_impl(&_mh_execute_header, v4, v5, "Setting idle timer disabled: %{BOOL}d", v6, 8u);
      }

      v7 = String._bridgeToObjectiveC()();
      [v11 setIdleTimerDisabled:a1 & 1 forReason:v7];
      swift_unknownObjectRelease();
      goto LABEL_16;
    }
  }

  else
  {
    sub_10001259C(v14, &qword_1001BBB40);
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BE0E0);
  v7 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v7, v9, "Could not grab remote view controller proxy", v10, 2u);
  }

LABEL_16:
}

id sub_1000C3F10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_100005DCC(&unk_1001BE250);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = 0xD00000000000001DLL;
  *(v7 + 24) = 0x80000001001707D0;
  if (qword_1001B92E8 != -1)
  {
    v7 = swift_once();
  }

  v9 = qword_1001B9FF8;
  __chkstk_darwin(v7);

  os_unfair_lock_lock(v9 + 4);
  sub_1000E4BEC();
  v10 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController___doNotReference;
  os_unfair_lock_unlock(v9 + 4);

  *&v4[v10] = v8;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations] = &_swiftEmptySetSingleton;
  v11 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDInfo];
  *v11 = xmmword_10016D2F0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_multiThreshold] = -50;
  v12 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  v13 = type metadata accessor for B389PresentationConfig(0);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om;
  type metadata accessor for OnceManager();
  v15 = swift_allocObject();
  *(v15 + 16) = &_swiftEmptySetSingleton;
  *&v4[v14] = v15;
  v16 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_beaconManager;
  *&v4[v16] = [objc_allocWithZone(SPBeaconManager) init];
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_dismissed] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_retain] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC] = 0;
  v17 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager;
  *&v4[v17] = [objc_allocWithZone(SPPairingManager) init];
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_requestedPairingData] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_reenabledProxCard] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didAgreeToLinking] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti] = 0;
  v18 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_followupController;
  *&v4[v18] = [objc_allocWithZone(FLFollowUpController) init];
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapSnapshotter] = 0;
  v19 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex];
  *v19 = 0;
  v19[8] = 1;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionError] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_assets] = 0;
  v20 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_location];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_shownError] = 0;
  v21 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_remainingCharacteristicsToDiscover;
  *&v4[v21] = sub_1000DE3E4(&off_10018EB60);
  v22 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  *&v4[v22] = sub_100005954(_swiftEmptyArrayStorage);
  v23 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  *&v4[v23] = sub_100005A48(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredMainService] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startedCharacteristicDiscovery] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentDisconnect] = 0;
  v24 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager];
  v25 = sub_10000518C(_swiftEmptyArrayStorage);
  *v24 = 178;
  v24[1] = v25;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentReadRequest] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentSecondReadRequest] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_storeS1] = xmmword_10016C900;
  v26 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fnameDisplay];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vbVersionStr];
  *v28 = 0;
  v28[1] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_handledS1S2PayloadRead] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionVerified] = 0;
  v29 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcUUID;
  v30 = type metadata accessor for UUID();
  (*(*(v30 - 8) + 56))(&v4[v29], 1, 1, v30);
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsNFCUI] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcConfig] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_endpoint] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent] = 0;
  v31 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_locationShifter;
  *&v4[v31] = [objc_allocWithZone(GEOLocationShifter) init];
  v32 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleName];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleEmoji];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue];
  *v34 = xmmword_10016C900;
  v34[1] = 0u;
  v34[2] = 0u;
  v34[3] = 0u;
  v34[4] = 0u;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories] = 0;
  v35 = &v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState];
  *v35 = 0;
  v35[8] = 1;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapConfigurationState] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController] = 0;
  v36 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fbOtions;
  v37 = sub_100005B44(&off_10018F260);
  sub_100005DCC(&unk_1001BBC30);
  swift_arrayDestroy();
  *&v4[v36] = v37;
  if (a2)
  {
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  v41.receiver = v4;
  v41.super_class = type metadata accessor for AirTagSetupMainViewController();
  v39 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", v38, a3);

  return v39;
}

id sub_1000C4604(void *a1)
{
  v2 = v1;
  sub_100005DCC(&unk_1001BE250);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = 0xD00000000000001DLL;
  *(v4 + 24) = 0x80000001001707D0;
  if (qword_1001B92E8 != -1)
  {
    v4 = swift_once();
  }

  v6 = qword_1001B9FF8;
  __chkstk_darwin(v4);

  os_unfair_lock_lock(v6 + 4);
  sub_1000E43E4();
  v7 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController___doNotReference;
  os_unfair_lock_unlock(v6 + 4);

  *&v2[v7] = v5;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations] = &_swiftEmptySetSingleton;
  v8 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDInfo];
  *v8 = xmmword_10016D2F0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 2) = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_multiThreshold] = -50;
  v9 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  v10 = type metadata accessor for B389PresentationConfig(0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om;
  type metadata accessor for OnceManager();
  v12 = swift_allocObject();
  *(v12 + 16) = &_swiftEmptySetSingleton;
  *&v2[v11] = v12;
  v13 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_beaconManager;
  *&v2[v13] = [objc_allocWithZone(SPBeaconManager) init];
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_dismissed] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_retain] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_namingVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_linkingVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_loadingVC] = 0;
  v14 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager;
  *&v2[v14] = [objc_allocWithZone(SPPairingManager) init];
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_requestedPairingData] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_reenabledProxCard] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didAgreeToLinking] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti] = 0;
  v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_followupController;
  *&v2[v15] = [objc_allocWithZone(FLFollowUpController) init];
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapSnapshotter] = 0;
  v16 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex];
  *v16 = 0;
  v16[8] = 1;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairLockedVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionError] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_assets] = 0;
  v17 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_location];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_shownError] = 0;
  v18 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_remainingCharacteristicsToDiscover;
  *&v2[v18] = sub_1000DE3E4(&off_10018EB60);
  v19 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  *&v2[v19] = sub_100005954(_swiftEmptyArrayStorage);
  v20 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  *&v2[v20] = sub_100005A48(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredMainService] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startedCharacteristicDiscovery] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentDisconnect] = 0;
  v21 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager];
  v22 = sub_10000518C(_swiftEmptyArrayStorage);
  *v21 = 178;
  v21[1] = v22;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentReadRequest] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentSecondReadRequest] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_storeS1] = xmmword_10016C900;
  v23 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fnameDisplay];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vbVersionStr];
  *v25 = 0;
  v25[1] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_handledS1S2PayloadRead] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionVerified] = 0;
  v26 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcUUID;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 56))(&v2[v26], 1, 1, v27);
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsNFCUI] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcConfig] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_endpoint] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_xpcAgent] = 0;
  v28 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_locationShifter;
  *&v2[v28] = [objc_allocWithZone(GEOLocationShifter) init];
  v29 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleName];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_customRoleEmoji];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue];
  *v31 = xmmword_10016C900;
  v31[1] = 0u;
  v31[2] = 0u;
  v31[3] = 0u;
  v31[4] = 0u;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_bubbleMonitor] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories] = 0;
  v32 = &v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState];
  *v32 = 0;
  v32[8] = 1;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapConfigurationState] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController] = 0;
  v33 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_fbOtions;
  v34 = sub_100005B44(&off_10018F2B0);
  sub_100005DCC(&unk_1001BBC30);
  swift_arrayDestroy();
  *&v2[v33] = v34;
  v37.receiver = v2;
  v37.super_class = type metadata accessor for AirTagSetupMainViewController();
  v35 = objc_msgSendSuper2(&v37, "initWithCoder:", a1);

  if (v35)
  {
  }

  return v35;
}

id sub_1000C4C94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagSetupMainViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AirTagSetupMainViewController()
{
  result = qword_1001BE158;
  if (!qword_1001BE158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C50B0()
{
  sub_1000C52E8(319, &qword_1001BB128, type metadata accessor for B389PresentationConfig);
  if (v0 <= 0x3F)
  {
    sub_1000C52E8(319, &qword_1001BB130, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000C52E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000C533C()
{
  v2 = v0;
  v3 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v3);
  v5 = &v118 - v4;
  v129 = type metadata accessor for URL();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v133 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = "ensureUserConsented()";
  v8 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v130 = v8;
  sub_1000D99FC(&v136, 0xD00000000000001CLL, 0x8000000100147830);
  swift_endAccess();

  v9 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om);
  *&aBlock = 0xD000000000000070;
  *(&aBlock + 1) = 0x800000010014C1F0;
  v131 = 0x800000010014C1F0;
  *&v136 = 709;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = String.hashValue.getter();

  swift_beginAccess();
  v132 = v9;
  LOBYTE(v8) = sub_1000D991C(&v136, v11);
  swift_endAccess();
  if (v8)
  {
    sub_1000D530C(0xD00000000000001CLL, 0x8000000100147830, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_requestedPairingData))
  {
    goto LABEL_4;
  }

  v127 = "ensureUserConsented()";
  v124 = v1;
  *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_requestedPairingData) = 1;
  v15 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v140 = sub_1000E3F4C;
  v141 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1000BB514;
  *(&v139 + 1) = &unk_100194180;
  v17 = _Block_copy(&aBlock);

  [v15 initiatePairingSessionWithCompletion:v17];
  _Block_release(v17);
  v18 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_beaconManager);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v140 = sub_1000E3F54;
  v141 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1000BB5A0;
  *(&v139 + 1) = &unk_1001941A8;
  v20 = _Block_copy(&aBlock);

  [v18 roleCategoriesWithCompletion:v20];
  _Block_release(v20);
  v21 = [objc_allocWithZone(ACAccountStore) init];
  v22 = [v21 aa_primaryAppleAccount];
  if (!v22)
  {
    URL.init(string:)();
    v32 = v133;
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v5, &qword_1001BA7B0);
    v33 = v128;
    v34 = v129;
    v128[2](v5, v32, v129);
    (v33[7])(v5, 0, 1, v34);
    sub_1000C73A4(0, 0, 0, 0, 0, 0, 0, 0, v5);
    sub_10001259C(v5, &qword_1001BA7B0);
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000D298(v35, qword_1001BE0E0);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No iCloud account.", v38, 2u);
    }

    sub_10005F408();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();

    (v33[1])(v133, v34);
    return;
  }

  v23 = v22;
  v129 = v2;
  v24 = objc_allocWithZone(AAUIProfilePictureStore);
  v128 = v21;
  v126 = [v24 initWithAppleAccount:v23 grandSlamAccount:0 accountStore:v21];
  v25 = [v126 profilePictureForAccountOwner];
  v133 = v23;
  v26 = [v23 username];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0;
  }

  v40 = (v129 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDInfo);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  *v40 = v28;
  v40[1] = v30;
  v40[3] = 0;
  v40[4] = 0;
  v40[2] = v25;
  v125 = v25;
  sub_100016CBC(v41, v42, v43);
  v44 = [objc_opt_self() sharedInstance];
  v45 = String._bridgeToObjectiveC()();
  v46 = v133;
  v47 = [v133 accountPropertyForKey:v45];

  if (v47)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v136 = 0u;
    v137 = 0u;
  }

  v48 = v128;
  v7 = v127;
  aBlock = v136;
  v139 = v137;
  if (!*(&v137 + 1))
  {
    sub_10001259C(&aBlock, &qword_1001BBB40);
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    sub_10005F408();
    swift_allocError();
    *v54 = 3;
    swift_willThrow();

    return;
  }

  v49 = String._bridgeToObjectiveC()();

  v50 = [v44 authKitAccountWithAltDSID:v49];

  if (v50)
  {
    v51 = [v44 additionalInfoForAccount:v50];
    if (v51)
    {
      v52 = v51;
      v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v53 = 0;
    }

    v123 = v50;
    LODWORD(v122) = [v44 phoneAsAppleIDForAccount:v50];
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    v61 = sub_10000D298(v60, qword_1001BE0E0);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v61;
      v65 = v44;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&aBlock = v67;
      *v66 = 136315394;
      if (v53)
      {
        v68 = Dictionary.description.getter();
        v70 = v69;
      }

      else
      {
        v70 = 0x80000001001478A0;
        v68 = 0xD000000000000026;
      }

      v71 = sub_10002065C(v68, v70, &aBlock);

      *(v66 + 4) = v71;
      *(v66 + 12) = 1024;
      *(v66 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v62, v63, "Additional account info: %s, MAKO: %{BOOL}d", v66, 0x12u);
      sub_1000083B0(v67);

      v48 = v128;
      v44 = v65;
      v61 = v64;
      if (!v53)
      {
        goto LABEL_49;
      }
    }

    else
    {

      if (!v53)
      {
        goto LABEL_49;
      }
    }

    if (!*(v53 + 16))
    {
      goto LABEL_49;
    }

    v72 = sub_100032CC0(0x6D754E656E6F6870, 0xEC00000073726562);
    if ((v73 & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_10000BFEC(*(v53 + 56) + 32 * v72, &aBlock);

    sub_1000122EC(0, &qword_1001BBB48);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_49;
    }

    v74 = v136;
    if ([v136 firstObject])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v136 = 0u;
      v137 = 0u;
    }

    aBlock = v136;
    v139 = v137;
    if (*(&v137 + 1))
    {
      sub_1000122EC(0, &qword_1001BBB50);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_49;
      }

      v102 = v134;
      *&v136 = 0x6D754E656E6F6870;
      *(&v136 + 1) = 0xEB00000000726562;
      v103 = [v134 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v103)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v136 = 0u;
        v137 = 0u;
      }

      aBlock = v136;
      v139 = v137;
      if (*(&v137 + 1))
      {
        if (swift_dynamicCast())
        {
          v104 = v135;
          if ((v122 & 1) == 0)
          {
            v122 = v102;
            v128 = v74;
            v105 = v134;

            v106 = v104;
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.default.getter();

            v109 = os_log_type_enabled(v107, v108);
            v56 = v123;
            v121 = v106;
            v120 = v105;
            if (v109)
            {
              v110 = swift_slowAlloc();
              v119 = v107;
              v111 = v105;
              v112 = v110;
              v113 = swift_slowAlloc();
              *&aBlock = v113;
              *v112 = 136315138;
              *(v112 + 4) = sub_10002065C(v111, v106, &aBlock);
              v107 = v119;
              _os_log_impl(&_mh_execute_header, v119, v108, "Phone number: %s", v112, 0xCu);
              sub_1000083B0(v113);
            }

            v2 = v129;
            v115 = sub_1000BCBF0();
            v116 = v128;
            if (v114[1] != 1)
            {
              v117 = v121;
              v114[3] = v120;
              v114[4] = v117;
            }

            (v115)(&aBlock, 0);

            goto LABEL_55;
          }

LABEL_48:

          goto LABEL_49;
        }

LABEL_49:

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v122 = v61;
          v77 = v44;
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *&aBlock = v79;
          *v78 = 136315138;
          if (v53)
          {
            v80 = Dictionary.description.getter();
            v82 = v81;
          }

          else
          {
            v82 = 0x80000001001478A0;
            v80 = 0xD000000000000026;
          }

          v2 = v129;
          v83 = sub_10002065C(v80, v82, &aBlock);

          *(v78 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v75, v76, "Failed to decode phone number from: %s", v78, 0xCu);
          sub_1000083B0(v79);

          v48 = v128;
          v44 = v77;
          v56 = v123;
        }

        else
        {

          v2 = v129;
          v56 = v123;
        }

LABEL_55:
        v84 = [v44 securityLevelForAccount:v56];
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 134217984;
          *(v87 + 4) = v84;
          _os_log_impl(&_mh_execute_header, v85, v86, "securityLevel: %lu", v87, 0xCu);
        }

        if (v84 != 4)
        {
          sub_1000C775C();
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();
          v98 = os_log_type_enabled(v96, v97);
          v99 = v133;
          if (v98)
          {
            v100 = swift_slowAlloc();
            *v100 = 0;
            _os_log_impl(&_mh_execute_header, v96, v97, "No HSA2.", v100, 2u);
          }

          sub_10005F408();
          swift_allocError();
          *v101 = 3;
          swift_willThrow();

          return;
        }

        v7 = v127;
        goto LABEL_59;
      }
    }

    sub_10001259C(&aBlock, &qword_1001BBB40);
    goto LABEL_49;
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000D298(v55, qword_1001BE0E0);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v2 = v129;
  if (v58)
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v56, v57, "No AppleID account", v59, 2u);
  }

LABEL_59:

  v88 = [objc_allocWithZone(CDPStateController) init];
  *&aBlock = 0;
  if ([v88 isManateeAvailable:&aBlock])
  {
    v89 = aBlock;

LABEL_4:
    if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session) && *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories))
    {
      swift_beginAccess();
      sub_1000DC818(0xD00000000000001CLL, v7 | 0x8000000000000000);
      swift_endAccess();

      *&aBlock = 0xD000000000000070;
      *(&aBlock + 1) = v131;
      *&v136 = 806;
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = String.hashValue.getter();

      swift_beginAccess();
      v14 = sub_1000D991C(&v136, v13);
      swift_endAccess();
      if (v14)
      {
        sub_1000D530C(0xD00000000000001CLL, v7 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
      }
    }

    else
    {
      sub_10005F408();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();
    }

    return;
  }

  v90 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000C775C();
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10000D298(v91, qword_1001BE0E0);
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&_mh_execute_header, v92, v93, "No manatee.", v94, 2u);
  }

  sub_10005F408();
  swift_allocError();
  *v95 = 3;
  swift_willThrow();
}

uint64_t sub_1000C68B0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_1000122EC(0, &qword_1001BCE90);
    v21 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = a2;
    v13[4] = v12;
    aBlock[4] = sub_1000E3FC4;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100194248;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    swift_errorRetain();
    v20 = v12;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005F638(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005DCC(&unk_1001BBA90);
    v16 = v22;
    v19 = v7;
    sub_100025698(&qword_1001BA7D0, &unk_1001BBA90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v17 = v21;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v16 + 8))(v6, v4);
    return (*(v8 + 8))(v10, v19);
  }

  return result;
}

uint64_t sub_1000C6BF0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BE0E0);
  v7 = a1;
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v10 = 138412546;
    *(v10 + 4) = v7;
    v22 = v11;
    *v11 = a1;
    *(v10 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v13 = v7;
      v14 = Error.localizedDescription.getter();
      v16 = v15;
    }

    else
    {
      v16 = 0x8000000100145470;
      v17 = v7;
      v14 = 0xD000000000000015;
    }

    v18 = sub_10002065C(v14, v16, &v23);

    *(v10 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "Got pairing session: %@, error: %s", v10, 0x16u);
    sub_10001259C(v22, &unk_1001BBA60);

    sub_1000083B0(v12);
  }

  *(a3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionError) = a2;

  v19 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session;
  v20 = *(a3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  swift_errorRetain();
  *(a3 + v19) = a1;

  return sub_1000BD9C0(v7);
}

uint64_t sub_1000C6E64(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_1000122EC(0, &qword_1001BCE90);
    v18 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1000E3F74;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_1001941F8;
    v13 = _Block_copy(aBlock);
    v17 = v6;
    v14 = v13;

    v16 = v11;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005F638(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005DCC(&unk_1001BBA90);
    sub_100025698(&qword_1001BA7D0, &unk_1001BBA90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v17);
  }

  return result;
}

uint64_t sub_1000C7194(uint64_t a1, uint64_t a2)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BE0E0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    sub_1000122EC(0, &qword_1001BBB58);
    v9 = Array.description.getter();
    v11 = sub_10002065C(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "roleCategories: %s", v7, 0xCu);
    sub_1000083B0(v8);
  }

  *(a2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleCategories) = a1;

  v12 = *(a2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_roleVC);
  if (v12)
  {

    v13 = v12;
    v14 = [v13 contentView];
    v15 = [v14 pickerView];

    [v15 reloadAllComponents];
  }

  else
  {
  }

  return sub_1000BD9C0(v16);
}

void sub_1000C73A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v11 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC;
  v12 = *(v9 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_appleIDVC);
  if (!v12)
  {
    v15 = [objc_allocWithZone(type metadata accessor for AirTagAppleIDViewController()) init];
    swift_unknownObjectWeakAssign();
    v16 = *(v9 + v11);
    *(v10 + v11) = v15;
    v17 = v15;

    sub_1000707D4(&v52);
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = String._bridgeToObjectiveC()();
    sub_1000B167C(&v52);
    v22 = [v17 dismissalConfirmationActionWithTitle:v18 message:v19 confirmButtonTitle:v20 cancelButtonTitle:v21];

    v23 = v11;
    [v17 setDismissButtonAction:v22];

    v24 = *(v10 + v11);
    if (!v24)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = v24;
    v26 = a6;
    v27 = a5;
    if (!a6)
    {
      v27 = sub_1000974B4(99);
    }

    v28 = &v25[OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_buttonText];
    *v28 = v27;
    v28[1] = v26;

    v29 = *(v10 + v11);
    if (!v29)
    {
      goto LABEL_26;
    }

    v30 = v29;
    if (!a2)
    {
      sub_1000974B4(97);
    }

    v31 = String._bridgeToObjectiveC()();

    [v29 setTitle:v31];

    v32 = *(v10 + v11);
    if (!v32)
    {
      goto LABEL_27;
    }

    v33 = v32;
    if (!a4)
    {
      sub_1000974B4(98);
    }

    v34 = String._bridgeToObjectiveC()();

    [v32 setSubtitle:v34];

    v35 = *(v10 + v11);
    if (!v35)
    {
      goto LABEL_28;
    }

    v36 = &v35[OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_imageName];
    *v36 = a7;
    *(v36 + 1) = a8;
    v37 = v35;

    v38 = *(v10 + v23);
    if (!v38)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v39 = OBJC_IVAR____TtC18SharingViewService27AirTagAppleIDViewController_onDoneURL;
    swift_beginAccess();
    v40 = v38;
    sub_1000E3E50(a9, v38 + v39);
    swift_endAccess();

    v12 = *(v10 + v23);
    if (!v12)
    {
      return;
    }
  }

  v41 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav;
  v42 = *(v10 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (!v42)
  {
    __break(1u);
    goto LABEL_23;
  }

  v43 = v12;
  v44 = v42;
  v45 = sub_1000D5D10();

  v46 = *(v10 + v41);
  if (!v45)
  {
    if (v46)
    {
      v47 = v46;
      [v47 pushViewController:v43 animated:1];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  if (!v46)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v47 = v46;

LABEL_20:
}

id sub_1000C775C()
{
  v1 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_hsa2VC);
    v4 = v3;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for AirTagHSA2ViewController()) init];
    swift_unknownObjectWeakAssign();
    v3 = 0;
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = v4;
  v5 = v4;
  v6 = v3;

  sub_1000707D4(&v14);
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  sub_1000B167C(&v14);
  v11 = [v5 dismissalConfirmationActionWithTitle:v7 message:v8 confirmButtonTitle:v9 cancelButtonTitle:v10];

  [v5 setDismissButtonAction:v11];
  result = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (result)
  {
    v13 = *(v0 + v1);
    if (v13)
    {
      return [result pushViewController:v13 animated:1];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000C78CC()
{
  v1 = type metadata accessor for B389PresentationConfig(0);
  v91 = *(v1 - 8);
  v92 = v1;
  __chkstk_darwin(v1);
  v84 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v3 - 8);
  v86 = &v84 - v4;
  v87 = type metadata accessor for UUID();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v88 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for B389PresentationConfig.Mode(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v84 - v10;
  v12 = sub_100005DCC(&unk_1001BE180);
  v13 = __chkstk_darwin(v12 - 8);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v84 - v16;
  __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  v96 = v0;
  v90 = v20;
  v21 = v0 + v20;
  v23 = v91;
  v22 = v92;
  sub_100005EB8(v21, v19, &unk_1001BE180);
  v24 = *(v23 + 48);
  if (v24(v19, 1, v22) == 1)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_100025418(&v19[*(v22 + 24)], v11, type metadata accessor for B389PresentationConfig.Mode);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_10005F788(v19, type metadata accessor for B389PresentationConfig);
    return;
  }

  sub_10005F788(v11, type metadata accessor for B389PresentationConfig.Mode);
  sub_10005F788(v19, type metadata accessor for B389PresentationConfig);
  v25 = v96;
  sub_100005EB8(&v90[v96], v17, &unk_1001BE180);
  if (v24(v17, 1, v22) == 1)
  {
    goto LABEL_52;
  }

  sub_100025418(&v17[*(v22 + 24)], v9, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v86;
  v28 = v87;
  v29 = v89;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v89 + 32))(v86, v9, v87);
    (*(v29 + 56))(v27, 0, 1, v28);
  }

  else
  {
    (*(v89 + 56))(v86, 1, 1, v87);
    sub_10005F788(v9, type metadata accessor for B389PresentationConfig.Mode);
  }

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v30 = v27;
    v31 = v22;
    sub_10001259C(v30, &unk_1001BBAA0);
    sub_10005F788(v17, type metadata accessor for B389PresentationConfig);
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000D298(v32, qword_1001BE0E0);
    v33 = v25;
    v34 = Logger.logObject.getter();
    v35 = v25;
    v36 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v93 = v38;
      *v37 = 136315138;
      v39 = &v90[v35];
      v40 = v85;
      sub_100005EB8(v39, v85, &unk_1001BE180);
      if (v24(v40, 1, v31))
      {
        sub_10001259C(v40, &unk_1001BE180);
        v41 = 0x8000000100145470;
        v42 = 0xD000000000000015;
      }

      else
      {
        v73 = v84;
        sub_100025418(v40, v84, type metadata accessor for B389PresentationConfig);
        sub_10001259C(v40, &unk_1001BE180);
        v74 = sub_10001CBC8();
        v41 = v75;
        sub_10005F788(v73, type metadata accessor for B389PresentationConfig);
        v42 = v74;
      }

      v76 = sub_10002065C(v42, v41, &v93);

      *(v37 + 4) = v76;
      _os_log_impl(&_mh_execute_header, v34, v36, "No btUUID on %s", v37, 0xCu);
      sub_1000083B0(v38);
    }

    return;
  }

  (*(v29 + 32))(v88, v27, v28);
  sub_10005F788(v17, type metadata accessor for B389PresentationConfig);
  v43 = "ensureConnected()";
  swift_beginAccess();
  sub_1000D99FC(&v95, 0xD000000000000012, 0x80000001001476D0);
  swift_endAccess();

  v92 = 0x800000010014C1F0;
  v93 = 0xD000000000000070;
  v94 = 0x800000010014C1F0;
  v95 = 817;
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v45 = String.hashValue.getter();

  swift_beginAccess();
  v46 = sub_1000D991C(&v95, v45);
  swift_endAccess();
  if (v46)
  {
    sub_1000D530C(0xD000000000000012, 0x80000001001476D0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v47 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central;
  v48 = v96;
  v49 = *(v96 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central);
  if (!v49)
  {
    goto LABEL_53;
  }

  if ([v49 state] == 5)
  {
    goto LABEL_20;
  }

  v50 = *&v48[v47];
  if (!v50)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ([v50 state] != 10)
  {
    goto LABEL_46;
  }

LABEL_20:
  if (!*&v48[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph])
  {
    v91 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
    v51 = *&v48[v47];
    if (v51)
    {
      sub_100005DCC(&qword_1001BBB08);
      v52 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_10016CCE0;
      (*(v29 + 16))(v53 + v52, v88, v28);
      v54 = v51;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v56 = [v54 retrievePeripheralsWithIdentifiers:isa];

      sub_1000122EC(0, &qword_1001BBB10);
      v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v57 >> 62)
      {
        v58 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v29 = v89;
      v59 = v96;
      if (!v58)
      {

LABEL_40:
        if (*&v59[v91])
        {
          goto LABEL_41;
        }

        swift_beginAccess();
        sub_1000D99FC(&v95, 0xD000000000000012, v43 | 0x8000000000000000);
        swift_endAccess();

        v93 = 0xD000000000000070;
        v94 = v92;
        v95 = 834;
        v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v80);

        v81 = String.hashValue.getter();

        swift_beginAccess();
        v82 = sub_1000D991C(&v95, v81);
        swift_endAccess();
        if (v82)
        {
          sub_1000D530C(0xD000000000000012, v43 | 0x8000000000000000, 0, 0xE000000000000000, "%s - started... %s");
        }

LABEL_46:
        sub_10005F408();
        swift_allocError();
        *v83 = 1;
        swift_willThrow();
        (*(v29 + 8))(v88, v28);
        return;
      }

      if ((v57 & 0xC000000000000001) != 0)
      {
        v60 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_50:
          swift_once();
LABEL_32:
          v66 = type metadata accessor for Logger();
          sub_10000D298(v66, qword_1001BE0E0);
          v67 = v59;
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v70 = 138412546;
            *(v70 + 4) = v67;
            *v71 = v86;
            *(v70 + 12) = 1024;
            *(v70 + 14) = v29;
            v72 = v67;
            _os_log_impl(&_mh_execute_header, v68, v69, "%@. BT-paired already? %{BOOL}d", v70, 0x12u);
            sub_10001259C(v71, &unk_1001BBA60);
            v28 = v87;
          }

          else
          {
          }

          v29 = v89;
          v43 = v90;
          v59 = v96;
          goto LABEL_40;
        }

        v60 = *(v57 + 32);
      }

      v61 = v60;

      v62 = *&v59[v91];
      *&v59[v91] = v61;
      v86 = v61;
      v63 = v61;

      v64 = *&v59[v47];
      if (v64)
      {
        v65 = [v64 sharedPairingAgent];
        v95 = v65;
        sub_100005DCC(&qword_1001BBB18);
        Optional.unwrap(_:file:line:)();

        v57 = v93;
        v59 = v63;
        LODWORD(v29) = [v57 isPeerPaired:v59];
        if (v29)
        {
          [v57 unpairPeer:v59];
        }

        v90 = "ensureConnected()";

        if (qword_1001B9490 == -1)
        {
          goto LABEL_32;
        }

        goto LABEL_50;
      }

LABEL_56:
      __break(1u);
      return;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_41:
  swift_beginAccess();
  sub_1000DC818(0xD000000000000012, v43 | 0x8000000000000000);
  swift_endAccess();

  v93 = 0xD000000000000070;
  v94 = v92;
  v95 = 838;
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  v78 = String.hashValue.getter();

  swift_beginAccess();
  v79 = sub_1000D991C(&v95, v78);
  swift_endAccess();
  if (v79)
  {
    sub_1000D530C(0xD000000000000012, v43 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  (*(v29 + 8))(v88, v28);
}

void sub_1000C8758()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState;
  v3 = v0[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState];
  if (v3 == 4)
  {
    v30 = 0xD000000000000070;
    v31 = 0x800000010014C1F0;
    v29 = 856;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17 = String.hashValue.getter();

    swift_beginAccess();
    v18 = sub_1000D991C(&v29, v17);
    swift_endAccess();
    if (v18)
    {
      sub_1000D22EC("ensureConnected - skip");
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (!v0[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_connectionState])
      {
        swift_beginAccess();
        sub_1000D99FC(&v29, 0xD000000000000011, 0x80000001001476B0);
        swift_endAccess();

        v30 = 0xD000000000000070;
        v31 = 0x800000010014C1F0;
        v29 = 846;
        v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v4);

        v5 = String.hashValue.getter();

        swift_beginAccess();
        v6 = sub_1000D991C(&v29, v5);
        swift_endAccess();
        if (v6)
        {
          sub_1000D530C(0xD000000000000011, 0x80000001001476B0, 0, 0xE000000000000000, "%s - started... %s");
        }

        v7 = *&v1[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central];
        if (v7)
        {
          v8 = *&v1[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph];
          if (v8)
          {
            v9 = v7;
            v10 = v8;
            sub_100004F48(_swiftEmptyArrayStorage);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v9 connectPeripheral:v10 options:isa];

            v12 = 1;
            v1[v2] = 1;
LABEL_18:
            sub_10005F408();
            swift_allocError();
            *v28 = v12;
            swift_willThrow();
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000D298(v19, qword_1001BE0E0);
      v20 = v0;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        v25 = v1[v2];
        sub_10005F408();
        swift_allocError();
        *v26 = v25;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 4) = v27;
        *v24 = v27;
        _os_log_impl(&_mh_execute_header, v21, v22, "Default connectionState throw %@...", v23, 0xCu);
        sub_10001259C(v24, &unk_1001BBA60);
      }

      v12 = v1[v2];
      goto LABEL_18;
    }

    swift_beginAccess();
    sub_1000DC818(0xD000000000000011, 0x80000001001476B0);
    swift_endAccess();

    v30 = 0xD000000000000070;
    v31 = 0x800000010014C1F0;
    v29 = 852;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14 = String.hashValue.getter();

    swift_beginAccess();
    v15 = sub_1000D991C(&v29, v14);
    swift_endAccess();
    if (v15)
    {
      sub_1000D530C(0xD000000000000011, 0x80000001001476B0, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_1000C8CC0()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v13, 0xD000000000000015, 0x8000000100147810);
  swift_endAccess();

  v13 = 867;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v13, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000015, 0x8000000100147810, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didTapStart) == 1)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000015, 0x8000000100147810);
    swift_endAccess();

    v13 = 873;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_1000D991C(&v13, v6);
    swift_endAccess();
    if (v7)
    {
      sub_1000D530C(0xD000000000000015, 0x8000000100147810, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000D298(v8, qword_1001BE0E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Waiting for user to tap start...", v11, 2u);
    }

    sub_10005F408();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void sub_1000C9010()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v13, 0xD000000000000012, 0x80000001001474E0);
  swift_endAccess();

  v13 = 878;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v13, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000012, 0x80000001001474E0, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didAgreeToLinking) == 1)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000012, 0x80000001001474E0);
    swift_endAccess();

    v13 = 884;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_1000D991C(&v13, v6);
    swift_endAccess();
    if (v7)
    {
      sub_1000D530C(0xD000000000000012, 0x80000001001474E0, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000D298(v8, qword_1001BE0E0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Waiting for user to agree to linking...", v11, 2u);
    }

    sub_10005F408();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void sub_1000C9360()
{
  v1 = v0;
  v146 = type metadata accessor for URL();
  v148 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v136 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005DCC(&qword_1001BA7B0);
  v4 = __chkstk_darwin(v3 - 8);
  v143 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v147 = &v136 - v7;
  v8 = __chkstk_darwin(v6);
  v145 = &v136 - v9;
  __chkstk_darwin(v8);
  v11 = &v136 - v10;
  swift_beginAccess();
  sub_1000D99FC(&v155, 0xD000000000000020, 0x8000000100147710);
  swift_endAccess();

  v156 = 0xD000000000000070;
  v157 = 0x800000010014C1F0;
  v155 = 892;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = String.hashValue.getter();

  swift_beginAccess();
  v14 = sub_1000D991C(&v155, v13);
  swift_endAccess();
  if (v14)
  {
    sub_1000D530C(0xD000000000000020, 0x8000000100147710, 0, 0xE000000000000000, "%s - started... %s");
  }

  v15 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_followupController);
  if (v15)
  {
    v139 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_followupController;
    v156 = 0;
    v16 = v15;
    v17 = [v16 pendingFollowUpItems:&v156];
    v18 = v156;
    if (!v17)
    {
      v62 = v156;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return;
    }

    v19 = v17;
    v140 = v16;
    sub_1000122EC(0, &qword_1001BBB20);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v18;

    v154 = sub_100023D78(&off_10018EFE0);
    swift_arrayDestroy();
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    if (qword_1001B9490 != -1)
    {
LABEL_78:
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_10000D298(v25, qword_1001BE0E0);

    v138 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v137 = v11;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v153 = v22;
      v32 = v24;
      v33 = v31;
      v156 = v31;
      *v30 = 136315138;
      v34 = Array.description.getter();
      v11 = sub_10002065C(v34, v35, &v156);

      *(v30 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v27, v28, "Followup Items: %s", v30, 0xCu);
      sub_1000083B0(v33);
      v24 = v32;
      v22 = v153;
    }

    v141 = v1;
    if (v20 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      if (v1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v1)
      {
LABEL_10:
        v36 = 0;
        v151 = v20 & 0xFFFFFFFFFFFFFF8;
        v152 = (v20 & 0xC000000000000001);
        v150 = (v20 + 32);
        v153 = v154 + 7;
        v142 = v24;
        do
        {
          if (v152)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *(v151 + 16))
            {
              goto LABEL_77;
            }

            v37 = v150[v36];
          }

          v11 = v37;
          if (__OFADD__(v36++, 1))
          {
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v39 = [v37 groupIdentifier];
          if (v39)
          {
            v40 = v39;
            v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v43 = v42;

            if (v41 == v22 && v43 == v24)
            {
            }

            else
            {
              v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v45 & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v46 = v20;
            v47 = [v11 uniqueIdentifier];
            if (!v47)
            {
              __break(1u);
              goto LABEL_86;
            }

            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;

            if (v154[2])
            {
              v52 = v154;
              Hasher.init(_seed:)();
              String.hash(into:)();
              v53 = Hasher._finalize()();
              v54 = -1 << *(v52 + 32);
              v55 = v53 & ~v54;
              if ((*(v153 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
              {
                v56 = ~v54;
                while (1)
                {
                  v57 = (v154[6] + 16 * v55);
                  v58 = *v57 == v49 && v57[1] == v51;
                  if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v55 = (v55 + 1) & v56;
                  if (((*(v153 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                  {
                    goto LABEL_11;
                  }
                }

                v63 = v11;
                v64 = [v63 actions];
                if (v64)
                {
                  v65 = v64;

                  sub_1000122EC(0, &qword_1001BBB28);
                  v66 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                  v67 = v141;
                  v68 = v137;
                  if (v66 >> 62)
                  {
                    v69 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v69 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v70 = v140;
                  if (v69)
                  {
                    if ((v66 & 0xC000000000000001) != 0)
                    {
                      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        __break(1u);
                      }

                      v71 = *(v66 + 32);
                    }

                    v72 = v71;

                    v73 = [v63 title];
                    if (v73)
                    {
                      v74 = v73;
                      v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      v76 = v75;
                    }

                    else
                    {
                      v153 = 0;
                      v76 = 0;
                    }

                    v83 = v72;
                    v84 = v63;
                    v85 = Logger.logObject.getter();
                    v86 = static os_log_type_t.default.getter();

                    v87 = os_log_type_enabled(v85, v86);
                    v154 = v83;
                    v151 = v76;
                    v152 = v84;
                    if (v87)
                    {
                      v88 = swift_slowAlloc();
                      v89 = swift_slowAlloc();
                      v150 = swift_slowAlloc();
                      v156 = v150;
                      *v88 = 138412802;
                      *(v88 + 4) = v84;
                      v149 = v89;
                      *v89 = v84;
                      *(v88 + 12) = 2080;
                      v90 = v84;
                      v91 = 0x8000000100145470;
                      v92 = 0xD000000000000015;
                      if (v76)
                      {
                        v93 = v153;
                      }

                      else
                      {
                        v93 = 0xD000000000000015;
                      }

                      if (v76)
                      {
                        v94 = v76;
                      }

                      else
                      {
                        v94 = 0x8000000100145470;
                      }

                      v95 = v90;

                      v96 = sub_10002065C(v93, v94, &v156);

                      *(v88 + 14) = v96;
                      *(v88 + 22) = 2080;
                      v83 = v154;
                      v97 = [v154 label];
                      if (v97)
                      {
                        v98 = v97;
                        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v91 = v99;
                      }

                      v68 = v137;
                      v100 = sub_10002065C(v92, v91, &v156);

                      *(v88 + 24) = v100;
                      _os_log_impl(&_mh_execute_header, v85, v86, "accountFollowup: %@, title: %s, label: %s", v88, 0x20u);
                      sub_10001259C(v149, &unk_1001BBA60);

                      swift_arrayDestroy();

                      v70 = v140;
                    }

                    else
                    {
                    }

                    v101 = [v83 launchActionURL];
                    v102 = v148;
                    if (v101)
                    {
                      v103 = v144;
                      v104 = v101;
                      static URL._unconditionallyBridgeFromObjectiveC(_:)();

                      v105 = *(v102 + 32);
                      v106 = v145;
                      v107 = v146;
                      v105(v145, v103, v146);
                      v108 = *(v102 + 56);
                      v108(v106, 0, 1, v107);
                      v105(v68, v106, v107);
                      v109 = v107;
                      v108(v68, 0, 1, v107);
                    }

                    else
                    {
                      v110 = v145;
                      v109 = v146;
                      (*(v148 + 56))(v145, 1, 1, v146);
                      URL.init(string:)();
                      if ((*(v102 + 48))(v110, 1, v109) != 1)
                      {
                        sub_10001259C(v110, &qword_1001BA7B0);
                      }
                    }

                    v111 = v147;
                    sub_100005EB8(v68, v147, &qword_1001BA7B0);
                    v112 = Logger.logObject.getter();
                    v113 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v112, v113))
                    {
                      v114 = v111;
                      v115 = swift_slowAlloc();
                      v116 = swift_slowAlloc();
                      v156 = v116;
                      *v115 = 136315138;
                      v117 = v114;
                      v118 = v143;
                      sub_100005EB8(v117, v143, &qword_1001BA7B0);
                      v119 = v148;
                      if ((*(v148 + 48))(v118, 1, v109) == 1)
                      {
                        v120 = 0x8000000100147740;
                        v121 = 0xD000000000000012;
                      }

                      else
                      {
                        v123 = v118;
                        v124 = v144;
                        (*(v119 + 32))(v144, v123, v109);
                        sub_10005F638(&unk_1001BBB30, &type metadata accessor for URL);
                        v121 = dispatch thunk of CustomStringConvertible.description.getter();
                        v125 = v109;
                        v120 = v126;
                        (*(v119 + 8))(v124, v125);
                      }

                      sub_10001259C(v147, &qword_1001BA7B0);
                      v127 = sub_10002065C(v121, v120, &v156);

                      *(v115 + 4) = v127;
                      _os_log_impl(&_mh_execute_header, v112, v113, "launchActionURL: %s", v115, 0xCu);
                      sub_1000083B0(v116);

                      v70 = v140;
                    }

                    else
                    {

                      sub_10001259C(v111, &qword_1001BA7B0);
                    }

                    v128 = String._bridgeToObjectiveC()();
                    v129 = sub_100127AD0(v128);

                    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v132 = v131;

                    sub_1000C73A4(v153, v151, 0, 0xE000000000000000, v130, v132, 0, 0, v68);

                    sub_10005F408();
                    swift_allocError();
                    *v133 = 1;
                    swift_willThrow();
                    v134 = v152;

                    sub_10001259C(v68, &qword_1001BA7B0);
                  }

                  else
                  {

                    v77 = v63;
                    v78 = Logger.logObject.getter();
                    v79 = static os_log_type_t.error.getter();

                    if (os_log_type_enabled(v78, v79))
                    {
                      v80 = swift_slowAlloc();
                      v81 = swift_slowAlloc();
                      *v80 = 138412290;
                      *(v80 + 4) = v77;
                      *v81 = v77;
                      v82 = v77;
                      _os_log_impl(&_mh_execute_header, v78, v79, "account followup %@ has no actions", v80, 0xCu);
                      sub_10001259C(v81, &unk_1001BBA60);

                      v77 = v82;
                    }

                    else
                    {
                      v82 = v70;
                      v70 = v77;
                    }

                    v122 = *(v67 + v139);
                    *(v67 + v139) = 0;
                  }

                  return;
                }

LABEL_86:
                __break(1u);
                return;
              }
            }

LABEL_11:

            v20 = v46;
            v24 = v142;
          }

LABEL_12:
        }

        while (v36 != v1);
      }
    }

    v135 = *(v141 + v139);
    *(v141 + v139) = 0;

    return;
  }

  swift_beginAccess();
  sub_1000DC818(0xD000000000000020, 0x8000000100147710);
  swift_endAccess();

  v156 = 0xD000000000000070;
  v157 = 0x800000010014C1F0;
  v155 = 897;
  v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v59);

  v60 = String.hashValue.getter();

  swift_beginAccess();
  v61 = sub_1000D991C(&v155, v60);
  swift_endAccess();
  if (v61)
  {
    sub_1000D530C(0xD000000000000020, 0x8000000100147710, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_1000CA48C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState;
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState);
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState + 8) != 1)
  {
    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 948;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_1000D991C(&v50, v8);
    swift_endAccess();
    if (v9)
    {
      sub_1000D22EC("ensurePaired - Respond to request");
    }

    v10 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central);
    if (v10)
    {
      v11 = [v10 sharedPairingAgent];
      if (v11)
      {
        v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
        if (v12)
        {
          v13 = v11;
          v14 = v12;
          sub_100004BE0(_swiftEmptyArrayStorage);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v13 respondToPairingRequest:v14 type:v3 accept:1 data:isa];

          *v2 = 2;
          *(v2 + 8) = 1;
LABEL_13:
          sub_10005F408();
          swift_allocError();
          *v16 = 1;
          swift_willThrow();
          return;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v51 = 0xD000000000000070;
        v52 = 0x800000010014C1F0;
        v50 = 944;
        v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v4);

        v5 = String.hashValue.getter();

        swift_beginAccess();
        v6 = sub_1000D991C(&v50, v5);
        swift_endAccess();
        if (v6)
        {
          sub_1000D22EC("ensurePaired - Wait for pair request");
        }
      }

      else
      {
        v51 = 0xD000000000000070;
        v52 = 0x800000010014C1F0;
        v50 = 954;
        v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v44);

        v45 = String.hashValue.getter();

        swift_beginAccess();
        v46 = sub_1000D991C(&v50, v45);
        swift_endAccess();
        if (v46)
        {
          sub_1000D22EC("ensurePaired - wait for pair");
        }
      }

      goto LABEL_13;
    }

    swift_beginAccess();
    sub_1000D99FC(&v50, 0x6150657275736E65, 0xEE00292864657269);
    swift_endAccess();

    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 938;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24 = String.hashValue.getter();

    swift_beginAccess();
    v25 = sub_1000D991C(&v50, v24);
    swift_endAccess();
    if (v25)
    {
      sub_1000D530C(0x6150657275736E65, 0xEE00292864657269, 0, 0xE000000000000000, "%s - started... %s");
    }

    v26 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_central);
    if (v26)
    {
      v27 = [v26 sharedPairingAgent];
      if (v27)
      {
        if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph))
        {
          v28 = v27;
          [v27 pairPeer:?];

          *v2 = 1;
          *(v2 + 8) = 1;
          goto LABEL_13;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v3 == 3)
  {
    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 958;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = String.hashValue.getter();

    swift_beginAccess();
    v31 = sub_1000D991C(&v50, v30);
    swift_endAccess();
    if (v31)
    {
      sub_1000D22EC("ensurePaired - did pair");
    }

    v32 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
    v33 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (!v33)
    {
      goto LABEL_43;
    }

    [v33 setDelegate:v1];
    v34 = *(v1 + v32);
    if (!v34)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v35 = v34;
    v36 = String._bridgeToObjectiveC()();
    [v35 tag:v36];

    v37 = *(v1 + v32);
    if (!v37)
    {
LABEL_47:
      __break(1u);
      return;
    }

    sub_100005DCC(&qword_1001BBB00);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10016D240;
    v39 = qword_1001B9250;
    v40 = v37;
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = qword_1001C3828;
    *(v38 + 32) = qword_1001C3828;
    sub_1000122EC(0, &qword_1001BBAF8);
    v42 = v41;
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v40 discoverServices:v43];

    *v2 = 4;
    *(v2 + 8) = 1;
  }

  else if (v3 == 4)
  {
    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 965;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18 = String.hashValue.getter();

    swift_beginAccess();
    v19 = sub_1000D991C(&v50, v18);
    swift_endAccess();
    if (v19)
    {
      sub_1000D22EC("ensurePaired - handledPostPair");
    }

    swift_beginAccess();
    sub_1000DC818(0x6150657275736E65, 0xEE00292864657269);
    swift_endAccess();

    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 966;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = String.hashValue.getter();

    swift_beginAccess();
    v22 = sub_1000D991C(&v50, v21);
    swift_endAccess();
    if (v22)
    {
      sub_1000D530C(0x6150657275736E65, 0xEE00292864657269, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    v51 = 0xD000000000000070;
    v52 = 0x800000010014C1F0;
    v50 = 969;
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = String.hashValue.getter();

    swift_beginAccess();
    v49 = sub_1000D991C(&v50, v48);
    swift_endAccess();
    if (v49)
    {
      sub_1000D22EC("ensurePaired - skip pair");
    }
  }
}

void sub_1000CAE30()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v9, 0xD000000000000014, 0x8000000100147500);
  swift_endAccess();

  v9 = 975;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v9, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000014, 0x8000000100147500, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex + 8))
  {
    sub_10005F408();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000014, 0x8000000100147500);
    swift_endAccess();

    v9 = 978;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7 = String.hashValue.getter();

    swift_beginAccess();
    v8 = sub_1000D991C(&v9, v7);
    swift_endAccess();
    if (v8)
    {
      sub_1000D530C(0xD000000000000014, 0x8000000100147500, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_1000CB0CC()
{
  v2 = v0;
  v3 = sub_100005DCC(&unk_1001BE180);
  v4 = __chkstk_darwin(v3 - 8);
  v117 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v109 = (&v95 - v6);
  v7 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v110 = *(v7 - 1);
  v111 = v7;
  __chkstk_darwin(v7);
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = "v32@?0{?=dd}8d24";
  v11 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v114 = v11;
  sub_1000D99FC(v126, 0xD000000000000017, 0x8000000100146F50);
  swift_endAccess();

  v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om);
  aBlock = 0xD000000000000070;
  v119 = 0x800000010014C1F0;
  v115 = 0x800000010014C1F0;
  v126[0] = 983;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = String.hashValue.getter();

  swift_beginAccess();
  v116 = v12;
  LOBYTE(v11) = sub_1000D991C(v126, v14);
  swift_endAccess();
  if (v11)
  {
    sub_1000D530C(0xD000000000000017, 0x8000000100146F50, 0, 0xE000000000000000, "%s - started... %s");
  }

  v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState))
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState) == 2)
    {
      goto LABEL_5;
    }

LABEL_47:
    sub_10005F408();
    swift_allocError();
    *v93 = 1;
    swift_willThrow();
    return;
  }

  v126[0] = sub_1000BCF94();
  v126[1] = v19;
  sub_100005DCC(&unk_1001BBA70);
  Optional.unwrap(_:file:line:)();

  v103 = aBlock;
  v107 = v119;
  *(v0 + v15) = 1;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v102 = v1;
  v20 = type metadata accessor for Logger();
  v21 = sub_10000D298(v20, qword_1001BE0E0);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Calling finalizePairing...", v24, 2u);
  }

  v25 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  v106 = v25;
  v26 = *(v2 + v25);
  v27 = *(v26 + 16);
  v105 = "v32@?0{?=dd}8d24";
  if (v27)
  {

    v28 = sub_100032E10(13);
    if (v29)
    {
      v30 = (*(v26 + 56) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      sub_100005E64(*v30, v32);
    }

    else
    {
      v31 = 0;
      v32 = 0xF000000000000000;
    }
  }

  else
  {
    v31 = 0;
    v32 = 0xF000000000000000;
  }

  v124 = v31;
  v125 = v32;
  v108 = sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v124, v125);
  v33 = aBlock;
  v34 = v119;
  sub_100005E64(aBlock, v119);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  sub_1000083FC(v33, v34);
  v37 = os_log_type_enabled(v35, v36);
  v112 = v33;
  v113 = v34;
  v101 = v15;
  v104 = v21;
  if (v37)
  {
    v38 = v33;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v127 = v40;
    *v39 = 136315138;
    aBlock = 0;
    v119 = 0xE000000000000000;
    v124 = v38;
    v125 = v34;
    v42 = v110;
    v41 = v111;
    (*(v110 + 104))(v9, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v111);
    sub_10005F5D4();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    (*(v42 + 8))(v9, v41);
    v43 = sub_10002065C(aBlock, v119, &v127);

    *(v39 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "c3t4s4Notif: %s", v39, 0xCu);
    sub_1000083B0(v40);
  }

  v44 = sub_1000BCC50();
  v45 = v106;
  if (!v44)
  {
    goto LABEL_51;
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex + 8))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v46 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex);
  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v46 >= v44[2])
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v47 = v44[2 * v46 + 5];

  v48 = *&v45[v2];
  if (*(v48 + 16))
  {

    v49 = sub_100032E10(11);
    if (v50)
    {
      v51 = (*(v48 + 56) + 16 * v49);
      v52 = *v51;
      v53 = v51[1];
      sub_100005E64(*v51, v53);
    }

    else
    {
      v52 = 0;
      v53 = 0xF000000000000000;
    }
  }

  else
  {
    v52 = 0;
    v53 = 0xF000000000000000;
  }

  v124 = v52;
  v125 = v53;
  Optional.unwrap(_:file:line:)();
  sub_100025404(v124, v125);
  v110 = v119;
  v111 = aBlock;
  v54 = *&v45[v2];
  if (*(v54 + 16))
  {

    v55 = sub_100032E10(12);
    v56 = v109;
    v57 = v113;
    if (v58)
    {
      v59 = (*(v54 + 56) + 16 * v55);
      v60 = *v59;
      v61 = v59[1];
      sub_100005E64(*v59, v61);
    }

    else
    {
      v60 = 0;
      v61 = 0xF000000000000000;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0xF000000000000000;
    v56 = v109;
    v57 = v113;
  }

  v124 = v60;
  v125 = v61;
  Optional.unwrap(_:file:line:)();
  sub_100025404(v124, v125);
  v109 = aBlock;
  v108 = v119;
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_100005EB8(v2 + v62, v56, &unk_1001BE180);
  v63 = type metadata accessor for B389PresentationConfig(0);
  v64 = *(*(v63 - 8) + 48);
  if (v64(v56, 1, v63) == 1)
  {
    goto LABEL_53;
  }

  v65 = *(v56 + *(v63 + 36));
  sub_10005F788(v56, type metadata accessor for B389PresentationConfig);
  if (v65 > 3)
  {
    v99 = 0;
  }

  else
  {
    v99 = qword_100170AB8[v65];
  }

  v106 = v47;
  v98 = [v47 roleId];
  sub_1000BD294();
  v67 = v66;
  v68 = v2 + v62;
  v69 = v117;
  sub_100005EB8(v68, v117, &unk_1001BE180);
  if (v64(v69, 1, v63) == 1)
  {
    goto LABEL_54;
  }

  v96 = *(v69 + *(v63 + 32));
  sub_100005E64(v112, v57);
  sub_100005E64(v109, v108);
  sub_100005E64(v111, v110);
  v103 = String._bridgeToObjectiveC()();
  v97 = v2;
  if (v67)
  {
    v95 = String._bridgeToObjectiveC()();
  }

  else
  {
    v95 = 0;
  }

  v70 = objc_allocWithZone(SPPairingConfiguration);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v72 = v110;
  v73 = v111;
  v74 = Data._bridgeToObjectiveC()().super.isa;
  v75 = v109;
  v76 = v108;
  v77 = Data._bridgeToObjectiveC()().super.isa;
  LOBYTE(v94) = v96;
  v78 = v70;
  v79 = v103;
  v80 = v95;
  v99 = [v78 initWithName:v103 roleId:v98 roleEmoji:v95 keyStatus:isa collaborativeKeyC3:v74 signatureS4:v77 isZeus:v94 batteryLevel:v99];

  sub_1000083FC(v75, v76);
  sub_1000083FC(v73, v72);

  sub_1000083FC(v112, v113);
  sub_10005F788(v117, type metadata accessor for B389PresentationConfig);
  v81 = v99;
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *v84 = 138412290;
    *(v84 + 4) = v81;
    *v85 = v81;
    v86 = v81;
    _os_log_impl(&_mh_execute_header, v82, v83, "Calling finalizePairing with config: %@", v84, 0xCu);
    sub_10001259C(v85, &unk_1001BBA60);
  }

  v87 = v97;
  v88 = *(v97 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  v10 = v105;
  v89 = v106;
  if (!v88)
  {
    goto LABEL_55;
  }

  v90 = *(v97 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager);
  v91 = v88;

  v122 = sub_1000E3E00;
  v123 = v100;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_1000BB514;
  v121 = &unk_100194018;
  v92 = _Block_copy(&aBlock);

  [v90 finalizePairingWithSession:v91 configuration:v81 completion:v92];
  sub_1000083FC(v112, v113);
  sub_1000083FC(v111, v110);
  sub_1000083FC(v109, v108);

  _Block_release(v92);

  if (*(v87 + v101) != 2)
  {
    goto LABEL_47;
  }

LABEL_5:
  swift_beginAccess();
  sub_1000DC818(0xD000000000000017, v10 | 0x8000000000000000);
  swift_endAccess();

  aBlock = 0xD000000000000070;
  v119 = v115;
  v127 = 1062;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = String.hashValue.getter();

  swift_beginAccess();
  v18 = sub_1000D991C(&v127, v17);
  swift_endAccess();
  if (v18)
  {
    sub_1000D530C(0xD000000000000017, v10 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }
}

uint64_t sub_1000CBEF8(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = a3;
  v61 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v61);
  v6 = &v57 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v63 = &v57 - v12;
  if (a1)
  {
    v13 = static os_log_type_t.error.getter();
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
  }

  v14 = v13;
  v62 = v6;
  v64 = v7;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000D298(v15, qword_1001BE0E0);
  v17 = a2;
  swift_errorRetain();
  v18 = a2;
  v19 = Logger.logObject.getter();

  v20 = os_log_type_enabled(v19, v14);
  v65 = a2;
  v60 = v17;
  if (v20)
  {
    v59 = v8;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v68 = v57;
    *v21 = 138412546;
    *(v21 + 4) = v17;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v58 = v11;
    if (a1)
    {
      swift_getErrorValue();
      v23 = v17;
      v24 = Error.localizedDescription.getter();
      v26 = v25;
    }

    else
    {
      v26 = 0x8000000100145470;
      v27 = v17;
      v24 = 0xD000000000000015;
    }

    v28 = sub_10002065C(v24, v26, &v68);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v14, "finalizePairing: session: %@, error: %s", v21, 0x16u);
    sub_10001259C(v22, &unk_1001BBA60);

    sub_1000083B0(v57);

    v11 = v58;
    v8 = v59;
  }

  else
  {
  }

  v29 = v65;
  if (*(v66 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_timeout))
  {
    swift_getObjectType();

    OS_dispatch_source.cancel()();
  }

  if (a1)
  {
    swift_errorRetain();
    sub_1000CC65C(a1);
  }

  else
  {
    v31 = *(v66 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
    *(v66 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session) = v29;

    v67 = v29;
    v32 = v60;
    sub_100005DCC(&unk_1001BE1A0);
    Optional.unwrap(_:file:line:)();
    v33 = v68;
    v65 = v16;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = [v33 pairingLocation];
      *(v36 + 4) = v38;
      *v37 = v38;
      _os_log_impl(&_mh_execute_header, v34, v35, "session pairingLocation: %@", v36, 0xCu);
      sub_10001259C(v37, &unk_1001BBA60);
    }

    v39 = [v33 beaconId];
    v40 = v64;
    if (v39)
    {
      v41 = v62;
      v42 = v39;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = 0;
    }

    else
    {
      v43 = 1;
      v41 = v62;
    }

    (*(v8 + 56))(v41, v43, 1, v40);
    v44 = v63;
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v41, &unk_1001BBAA0);
    (*(v8 + 16))(v11, v44, v40);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v68 = v48;
      *v47 = 136315138;
      sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v52 = v11;
      v53 = *(v8 + 8);
      v53(v52, v64);
      v54 = sub_10002065C(v49, v51, &v68);
      v40 = v64;

      *(v47 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v45, v46, "beaconID: %s", v47, 0xCu);
      sub_1000083B0(v48);
    }

    else
    {

      v56 = v11;
      v53 = *(v8 + 8);
      v55 = (v53)(v56, v40);
    }

    *(v66 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_findMyFinalizeState) = 2;
    sub_1000BD9C0(v55);

    return (v53)(v63, v40);
  }
}

void sub_1000CC65C(uint64_t a1)
{
  v18 = a1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    sub_1000D0F94(v17);
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BE0E0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v18 = v6;
      *v5 = 136315138;
      swift_getErrorValue();
      v7 = Error.localizedDescription.getter();
      v9 = sub_10002065C(v7, v8, &v18);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "handleError: error: %s failed decode as NSError", v5, 0xCu);
      sub_1000083B0(v6);
    }

    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = sub_1001279D0(v10, v11, v12);

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    sub_1000D0A60(v14, v16, a1, 0, 0);
  }
}

void sub_1000CC8F0()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v58, 0xD000000000000015, 0x8000000100146F10);
  swift_endAccess();

  aBlock = 0xD000000000000070;
  v53 = 0x800000010014C1F0;
  v58 = 1067;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v58, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000015, 0x8000000100146F10, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  if (v5)
  {
    v6 = v5;
    v7 = SFIsFMFAllowed();
    v8 = [v6 pairingLocation];
    v9 = &unk_1001C3000;
    if (!v8 || (v8, (v7 & 1) == 0))
    {
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000D298(v10, qword_1001BE0E0);
      v11 = v6;
      v12 = v6;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 67109376;
        *(v15 + 4) = v7;
        *(v15 + 8) = 1024;
        v16 = [v12 pairingLocation];
        if (v16)
        {

          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        *(v15 + 10) = v17;

        _os_log_impl(&_mh_execute_header, v13, v14, "Not rendering map (isFMFAllowed: %{BOOL}d, pairingLocationIsNil: %{BOOL}d)", v15, 0xEu);
      }

      else
      {

        v13 = v12;
      }

      v22 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController);
      *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController) = 0;

      v9 = &unk_1001C3000;
      *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapConfigurationState) = 2;
      v6 = v11;
    }

    v23 = v9[433];
    v24 = *(v1 + v23);
    if (!*(v1 + v23))
    {
      v25 = [v6 pairingLocation];
      if (!v25)
      {
        __break(1u);
        return;
      }

      v26 = v25;
      v51 = v6;
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000D298(v27, qword_1001BE0E0);
      v28 = v26;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = 138412290;
        *(v31 + 4) = v28;
        *v32 = v26;
        v33 = v28;
        _os_log_impl(&_mh_execute_header, v29, v30, "session pairingLocation: %@", v31, 0xCu);
        sub_10001259C(v32, &unk_1001BBA60);
      }

      *(v1 + v23) = 1;
      [v28 coordinate];
      v35 = v34;
      v37 = v36;
      v38 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      *(v39 + 24) = v28;
      v50 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_locationShifter);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1000E3D70;
      *(v40 + 24) = v39;
      v56 = sub_10005F4EC;
      v57 = v40;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000BB624;
      v55 = &unk_100193FA0;
      v41 = _Block_copy(&aBlock);
      v42 = v28;

      v43 = swift_allocObject();
      *(v43 + 2) = sub_1000E3D70;
      *(v43 + 3) = v39;
      v43[4] = v35;
      v43[5] = v37;
      v56 = sub_10005F564;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000E4BD0;
      v55 = &unk_100193FF0;
      v44 = _Block_copy(&aBlock);

      sub_1000122EC(0, &qword_1001BCE90);
      v45 = static OS_dispatch_queue.main.getter();
      [v50 shiftCoordinate:v41 accuracy:0 withCompletionHandler:v44 mustGoToNetworkCallback:v45 errorHandler:v35 callbackQueue:{v37, 0.0}];

      _Block_release(v44);
      _Block_release(v41);

      v6 = v51;
      v24 = *(v1 + v23);
    }

    if (v24 == 2)
    {
      swift_beginAccess();
      sub_1000DC818(0xD000000000000015, 0x8000000100146F10);
      swift_endAccess();

      aBlock = 0xD000000000000070;
      v53 = 0x800000010014C1F0;
      v58 = 1122;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47 = String.hashValue.getter();

      swift_beginAccess();
      v48 = sub_1000D991C(&v58, v47);
      swift_endAccess();
      if (v48)
      {
        sub_1000D530C(0xD000000000000015, 0x8000000100146F10, 0, 0xE000000000000000, "%s - done. %s");
      }
    }

    else
    {
      sub_10005F408();
      swift_allocError();
      *v49 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BE0E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Should always have session in ensureMapViewConfigured", v21, 2u);
    }
  }
}

void sub_1000CD15C(CLLocationDegrees a1, CLLocationDegrees a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v34.latitude = a1;
    v34.longitude = a2;
    v35 = MKCoordinateRegionMakeWithDistance(v34, 600.0, 400.0);
    latitude = v35.center.latitude;
    longitude = v35.center.longitude;
    latitudeDelta = v35.span.latitudeDelta;
    longitudeDelta = v35.span.longitudeDelta;
    v13 = sub_1000BD294();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      v17 = type metadata accessor for B389MapAnnotation();
      v18 = objc_allocWithZone(v17);
      v19 = &v18[OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_roleEmoji];
      *v19 = v15;
      *(v19 + 1) = v16;
      v20 = &v18[OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_region];
      *v20 = latitude;
      v20[1] = longitude;
      v20[2] = latitudeDelta;
      v20[3] = longitudeDelta;
      *&v18[OBJC_IVAR____TtC18SharingViewService17B389MapAnnotation_pairingLocation] = a4;
      v33.receiver = v18;
      v33.super_class = v17;
      v21 = a4;
      v22 = objc_msgSendSuper2(&v33, "init");
      v23 = type metadata accessor for B389MapViewController();
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_tapHandler];
      *v25 = 0;
      *(v25 + 1) = 0;
      v26 = OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapView;
      v27 = objc_allocWithZone(MKMapView);
      v28 = v22;
      *&v24[v26] = [v27 init];
      *&v24[OBJC_IVAR____TtC18SharingViewService21B389MapViewController_mapAnnotation] = v28;
      v32.receiver = v24;
      v32.super_class = v23;
      v29 = objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
      v30 = *&v8[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController];
      *&v8[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController] = v29;

      v8[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapConfigurationState] = 2;
      sub_1000BD9C0(v31);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000CD340()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v19, 0xD00000000000001DLL, 0x8000000100147690);
  swift_endAccess();

  v19[3] = 0x800000010014C1F0;
  v19[0] = 1127;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v19, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD00000000000001DLL, 0x8000000100147690, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredMainService);
  if (!v5)
  {
    sub_10005F408();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startedCharacteristicDiscovery))
  {
    v6 = v5;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_startedCharacteristicDiscovery) = 1;
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v5;
    v10 = v8;
    sub_100007350();
    sub_1000122EC(0, &qword_1001BBAF8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 discoverCharacteristics:isa forService:v9];

    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000D298(v12, qword_1001BE0E0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "ensureMainServiceDiscovered", v15, 2u);
    }
  }

  swift_beginAccess();
  sub_1000DC818(0xD00000000000001DLL, 0x8000000100147690);
  swift_endAccess();

  v19[0] = 1135;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = String.hashValue.getter();

  swift_beginAccess();
  v18 = sub_1000D991C(v19, v17);
  swift_endAccess();
  if (v18)
  {
    sub_1000D530C(0xD00000000000001DLL, 0x8000000100147690, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_1000CD744()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v10, 0xD000000000000024, 0x8000000100147660);
  swift_endAccess();

  v10 = 1140;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v10, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000024, 0x8000000100147660, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_remainingCharacteristicsToDiscover;
  swift_beginAccess();
  sub_1000DC954(5);
  swift_endAccess();
  if (*(*(v1 + v5) + 16))
  {
    sub_10005F408();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000024, 0x8000000100147660);
    swift_endAccess();

    v10 = 1146;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_1000D991C(&v10, v8);
    swift_endAccess();
    if (v9)
    {
      sub_1000D530C(0xD000000000000024, 0x8000000100147660, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_1000CDA08()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v58, 0xD000000000000014, 0x80000001001475F0);
  swift_endAccess();

  v59 = 0xD000000000000070;
  v60 = 0x800000010014C1F0;
  v58 = 1151;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v58, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000014, 0x80000001001475F0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v58 = *(v0 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  v5 = v58;
  sub_100005DCC(&unk_1001BE1A0);
  Optional.unwrap(_:file:line:)();

  v6 = v59;
  v7 = [v59 nonce];

  v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v56 = v9;
  v10 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v9);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v10 != 2)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v13 = *(v57 + 16);
  v12 = *(v57 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_10:
    LODWORD(v11) = HIDWORD(v57) - v57;
    if (__OFSUB__(HIDWORD(v57), v57))
    {
      __break(1u);
      goto LABEL_46;
    }

    v11 = v11;
  }

LABEL_12:
  if (v11 != 32)
  {
    goto LABEL_49;
  }

  v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_100032E10(4);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v20 = v19;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  sub_100005DCC(&unk_1001BE1B0);
  Optional.unwrap(_:file:line:)();

  v55 = v58;
  v21 = *(v1 + v15);
  if (*(v21 + 16))
  {

    v22 = sub_100032E10(1);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      v25 = v24;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  Optional.unwrap(_:file:line:)();

  v26 = v58;
  v27 = *(v1 + v15);
  if (*(v27 + 16))
  {

    v28 = sub_100032E10(0);
    if (v29)
    {
      v30 = *(*(v27 + 56) + 8 * v28);
      v31 = v30;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  Optional.unwrap(_:file:line:)();

  v32 = v58;
  v33 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager);
  swift_beginAccess();
  if (!*(v33[1] + 16) || (, sub_100032DCC(v32), v35 = v34, , (v35 & 1) == 0))
  {
    v36 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
    v37 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (v37)
    {
      [v37 setNotifyValue:1 forCharacteristic:v55];
      v38 = *(v1 + v36);
      if (v38)
      {
        v54 = v26;
        [v38 setNotifyValue:1 forCharacteristic:v26];
        v39 = *(v1 + v36);
        if (v39)
        {
          swift_beginAccess();
          v40 = *(v33[1] + 16);
          v41 = v39;
          if (!v40 || (sub_100032DCC(v32), (v42 & 1) == 0))
          {
            v43 = v41;
            sub_100005E64(v57, v56);
            v44 = v32;
            sub_100005E64(v57, v56);
            v53 = v43;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = v33[1];
            v33[1] = 0x8000000000000000;
            sub_1000350F0(v57, v56, v39, v44, isUniquelyReferenced_nonNull_native);

            v33[1] = v61;
            sub_10001ACB0(v44);

            sub_1000083FC(v57, v56);
          }

          swift_endAccess();
          v26 = v54;
          goto LABEL_40;
        }

        goto LABEL_48;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_40:
  v47 = *v33;
  v46 = v33[1];

  v48 = sub_10001AED8(v32, v47, v46);

  if (v48)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000014, 0x80000001001475F0);
    swift_endAccess();

    v61 = 1169;
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = String.hashValue.getter();

    swift_beginAccess();
    v51 = sub_1000D991C(&v61, v50);
    swift_endAccess();
    if (v51)
    {
      sub_1000D530C(0xD000000000000014, 0x80000001001475F0, 0, 0xE000000000000000, "%s - done. %s");
    }

    sub_1000083FC(v57, v56);
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();

    sub_1000083FC(v57, v56);
  }
}

void sub_1000CE170()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v50, 0xD00000000000001FLL, 0x8000000100147570);
  swift_endAccess();

  v50[3] = 0xD000000000000070;
  v50[4] = 0x800000010014C1F0;
  v50[0] = 1174;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v50, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD00000000000001FLL, 0x8000000100147570, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16) || (, sub_100032E10(4), v7 = v6, , (v7 & 1) == 0))
  {
    sub_10005F408();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return;
  }

  v8 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentReadRequest;
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentReadRequest) & 1) == 0)
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000D298(v9, qword_1001BE0E0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "reading all values", v12, 2u);
    }

    *(v1 + v8) = 1;
    v13 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {

      v15 = sub_100032E10(2);
      if (v16)
      {
        v17 = *(*(v14 + 56) + 8 * v15);
        v18 = v17;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    v51 = v17;
    sub_100005DCC(&unk_1001BE1B0);
    Optional.unwrap(_:file:line:)();

    v20 = *(v1 + v13);
    if (*(v20 + 16))
    {

      v21 = sub_100032E10(3);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v24 = v23;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }

    v51 = v23;
    Optional.unwrap(_:file:line:)();

    v25 = *(v1 + v13);
    if (*(v25 + 16))
    {

      v26 = sub_100032E10(16);
      if (v27)
      {
        v28 = *(*(v25 + 56) + 8 * v26);
        v29 = v28;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }

    v51 = v28;
    Optional.unwrap(_:file:line:)();

    v30 = *(v1 + v13);
    if (*(v30 + 16))
    {

      v31 = sub_100032E10(17);
      if (v32)
      {
        v33 = *(*(v30 + 56) + 8 * v31);
        v34 = v33;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v51 = v33;
    Optional.unwrap(_:file:line:)();

    v35 = *(v1 + v13);
    if (*(v35 + 16))
    {

      v36 = sub_100032E10(18);
      if (v37)
      {
        v38 = *(*(v35 + 56) + 8 * v36);
        v39 = v38;
      }

      else
      {
        v38 = 0;
      }
    }

    else
    {
      v38 = 0;
    }

    v51 = v38;
    Optional.unwrap(_:file:line:)();

    v40 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
    v41 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (v41)
    {
      [v41 readValueForCharacteristic:v49];
      v42 = *(v1 + v40);
      if (v42)
      {
        [v42 readValueForCharacteristic:v49];
        v43 = *(v1 + v40);
        if (v43)
        {
          [v43 readValueForCharacteristic:v49];
          v44 = *(v1 + v40);
          if (v44)
          {
            [v44 readValueForCharacteristic:v49];
            v45 = *(v1 + v40);
            if (v45)
            {
              [v45 readValueForCharacteristic:v49];

              goto LABEL_48;
            }

LABEL_54:
            __break(1u);
            return;
          }

LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_48:
  swift_beginAccess();
  sub_1000DC818(0xD00000000000001FLL, 0x8000000100147570);
  swift_endAccess();

  v51 = 1193;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47 = String.hashValue.getter();

  swift_beginAccess();
  v48 = sub_1000D991C(&v51, v47);
  swift_endAccess();
  if (v48)
  {
    sub_1000D530C(0xD00000000000001FLL, 0x8000000100147570, 0, 0xE000000000000000, "%s - done. %s");
  }
}

uint64_t sub_1000CE8BC()
{
  v1 = v0;
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v85 = *(v2 - 8);
  v86 = v2;
  __chkstk_darwin(v2);
  v4 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1000D99FC(v93, 0xD000000000000017, 0x8000000100147520);
  swift_endAccess();

  v93[3] = 0xD000000000000070;
  v93[4] = 0x800000010014C1F0;
  v88 = 0x800000010014C1F0;
  v93[0] = 1198;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = String.hashValue.getter();

  swift_beginAccess();
  v7 = sub_1000D991C(v93, v6);
  swift_endAccess();
  if (v7)
  {
    sub_1000D530C(0xD000000000000017, 0x8000000100147520, 0, 0xE000000000000000, "%s - started... %s");
  }

  v87 = "ensureRoleSelected()";
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 8) >> 60 == 15)
  {
    goto LABEL_21;
  }

  v8 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  if (!*(*(v1 + v8) + 16))
  {
    goto LABEL_21;
  }

  sub_100032E10(2);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  v11 = *(v1 + v8);
  if (!*(v11 + 16))
  {
    goto LABEL_21;
  }

  v12 = sub_100032E10(16);
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v14 = (*(v11 + 56) + 16 * v12);
  v16 = *v14;
  v15 = v14[1];
  sub_100005E64(*v14, v15);

  v17 = *(v1 + v8);
  if (!*(v17 + 16))
  {
    sub_1000083FC(v16, v15);
LABEL_21:
    sub_10005F408();
    swift_allocError();
    *v36 = 1;
    return swift_willThrow();
  }

  v83 = v15;
  v84 = v16;

  v18 = sub_100032E10(17);
  if ((v19 & 1) == 0)
  {
    v34 = v84;
LABEL_19:
    sub_1000083FC(v34, v83);
LABEL_20:

    goto LABEL_21;
  }

  v20 = (*(v17 + 56) + 16 * v18);
  v21 = *v20;
  v22 = v20[1];
  sub_100005E64(*v20, v22);

  v23 = *(v1 + v8);
  v24 = *(v23 + 16);

  v25 = v84;
  if (!v24)
  {
    v35 = v21;
LABEL_18:
    sub_1000083FC(v35, v22);
    v34 = v25;
    goto LABEL_19;
  }

  v82 = v21;
  v26 = sub_100032E10(18);
  if ((v27 & 1) == 0)
  {
    v35 = v82;
    goto LABEL_18;
  }

  v28 = (*(v23 + 56) + 16 * v26);
  v30 = *v28;
  v29 = v28[1];
  sub_100005E64(*v28, v29);

  v31 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_storeS1);
  swift_beginAccess();
  v32 = v31[1];
  if (v32 >> 60 == 15)
  {
    sub_1000083FC(v30, v29);
    sub_1000083FC(v82, v22);
    v33 = v84;
LABEL_40:
    sub_1000083FC(v33, v83);
    goto LABEL_21;
  }

  v80 = v30;
  v81 = v29;
  v79 = v22;
  v38 = *v31;
  v39 = v32 >> 62;
  v78 = v32;
  v77 = v38;
  if ((v32 >> 62) > 1)
  {
    v40 = v80;
    v41 = v81;
    v42 = v84;
    if (v39 != 2)
    {
      v43 = 0;
      goto LABEL_33;
    }

    v45 = *(v38 + 16);
    v44 = *(v38 + 24);
    v43 = v44 - v45;
    if (!__OFSUB__(v44, v45))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_29:
    if (__OFSUB__(HIDWORD(v38), v38))
    {
      __break(1u);
      goto LABEL_49;
    }

    v43 = HIDWORD(v38) - v38;
LABEL_31:
    sub_100005E64(v38, v32);
    goto LABEL_33;
  }

  v40 = v80;
  v41 = v81;
  v42 = v84;
  if (v39)
  {
    goto LABEL_29;
  }

  v43 = BYTE6(v32);
LABEL_33:
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length + 8) & 1) != 0 || v43 != *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_targetS1Length))
  {
    sub_1000083FC(v82, v79);
    sub_1000083FC(v40, v41);
    sub_100025404(v77, v78);
    v33 = v42;
    goto LABEL_40;
  }

  v46 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vbVersionStr);
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vbVersionStr + 8))
  {
    v40 = v83;
    v47 = b389VersionString(from:)(v42, v83);
    v76 = v48;
    v91 = v47;
    v92 = v48;
    sub_100005DCC(&unk_1001BBA70);
    Optional.unwrap(_:file:line:)();

    v49 = v90;
    v74 = v89;
    *v46 = v89;
    v46[1] = v49;
    v76 = v49;

    if (qword_1001B9490 == -1)
    {
LABEL_37:
      v50 = type metadata accessor for Logger();
      sub_10000D298(v50, qword_1001BE0E0);
      sub_100005E64(v42, v40);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v53 = v42;
      v54 = v83;
      sub_1000083FC(v53, v83);

      v73 = v52;
      v75 = v51;
      if (os_log_type_enabled(v51, v52))
      {
        v55 = v54;
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v94 = v72;
        *v56 = 136315394;
        v89 = 0;
        v90 = 0xE000000000000000;
        v57 = v85;
        v91 = v84;
        v92 = v55;
        v58 = v86;
        (*(v85 + 104))(v4, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v86);
        sub_10005F5D4();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v57 + 8))(v4, v58);
        v59 = sub_10002065C(v89, v90, &v94);

        *(v56 + 4) = v59;
        *(v56 + 12) = 2080;
        v60 = v56;
        v61 = sub_10002065C(v74, v76, &v94);

        *(v56 + 14) = v61;
        v42 = v84;
        v62 = v75;
        swift_arrayDestroy();
      }

      else
      {

        v42 = v84;
      }

      v40 = v80;
      goto LABEL_43;
    }

LABEL_49:
    swift_once();
    goto LABEL_37;
  }

LABEL_43:
  v89 = 0xD000000000000070;
  v90 = v88;
  v91 = 1217;
  v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v63);

  v64 = String.hashValue.getter();

  swift_beginAccess();
  v65 = sub_1000D991C(&v91, v64);
  swift_endAccess();
  v66 = v82;
  if (v65)
  {
    sub_1000CF26C(v82, v79, v40, v81);
  }

  swift_beginAccess();
  v67 = v87;
  sub_1000DC818(0xD000000000000017, v87 | 0x8000000000000000);
  swift_endAccess();

  v89 = 0xD000000000000070;
  v90 = v88;
  v91 = 1219;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v69 = String.hashValue.getter();

  swift_beginAccess();
  v70 = sub_1000D991C(&v91, v69);
  swift_endAccess();
  if (v70)
  {
    sub_1000D530C(0xD000000000000017, v67 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  sub_1000083FC(v66, v79);
  sub_1000083FC(v80, v81);
  sub_100025404(v77, v78);
  return sub_1000083FC(v42, v83);
}

void sub_1000CF26C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001BE0E0);
  sub_100005E64(a1, a2);
  sub_100005E64(a3, a4);
  v26 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  sub_1000083FC(a1, a2);
  sub_1000083FC(a3, a4);
  if (os_log_type_enabled(v26, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315394;
    v28 = a2;
    v29 = 0;
    v30 = 0xE000000000000000;
    v31 = v15;
    v27 = a1;
    v16 = enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:);
    v23 = a3;
    v22 = *(v9 + 104);
    v22(v11, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v8);
    v21[1] = sub_10005F5D4();
    v24 = v13;
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v17 = *(v9 + 8);
    v17(v11, v8);
    v18 = sub_10002065C(v29, v30, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v29 = 0;
    v30 = 0xE000000000000000;
    v27 = v23;
    v28 = a4;
    v22(v11, v16, v8);
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    v17(v11, v8);
    v19 = sub_10002065C(v29, v30, &v31);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v26, v24, "rpkv: %s, spkv: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = v26;
  }
}

uint64_t sub_1000CF5D0()
{
  v1 = v0;
  v2 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v2 - 8);
  v82 = (&v70 - v3);
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v83 = v5;
  sub_1000D99FC(v104, 0xD000000000000017, 0x8000000100147410);
  swift_endAccess();

  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om);
  *&v108[0] = 0xD000000000000070;
  *(&v108[0] + 1) = 0x800000010014C1F0;
  v84 = 0x800000010014C1F0;
  *&v104[0] = 1224;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8 = String.hashValue.getter();

  swift_beginAccess();
  v85 = v6;
  LOBYTE(v5) = sub_1000D991C(v104, v8);
  swift_endAccess();
  if (v5)
  {
    sub_1000D530C(0xD000000000000017, 0x8000000100147410, 0, 0xE000000000000000, "%s - started... %s");
  }

  v86 = "Expect userMessage encodes";
  v9 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 16);
  v10 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 48);
  v105 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 32);
  v106 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 48);
  v107 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 64);
  v12 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 16);
  v104[0] = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue);
  v104[1] = v12;
  v96 = v105;
  v97 = v11;
  v98 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_payloadValue + 64);
  v94 = v104[0];
  v95 = v9;
  sub_100005EB8(v104, &v99, &qword_1001BBAF0);
  sub_100005DCC(&qword_1001BBAF0);
  Optional.unwrap(_:file:line:)();
  v108[2] = v96;
  v108[3] = v97;
  v108[4] = v98;
  v108[0] = v94;
  v108[1] = v95;
  sub_10001259C(v108, &qword_1001BBAF0);
  v110 = v101;
  v111 = v102;
  v112 = v103;
  v109[0] = v99;
  v109[1] = v100;
  v13 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (*(v14 + 16))
  {

    v15 = sub_100032E10(2);
    if (v16)
    {
      v17 = (*(v14 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      sub_100005E64(*v17, v19);
    }

    else
    {
      v18 = 0;
      v19 = 0xF000000000000000;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0xF000000000000000;
  }

  v92 = v18;
  v93 = v19;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v92, v93);
  v88 = *(&v99 + 1);
  v20 = v99;
  v21 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_storeS1);
  swift_beginAccess();
  v22 = v21[1];
  v90 = *v21;
  v91 = v22;
  sub_100025480(v90, v22);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v90, v91);
  v87 = *(&v99 + 1);
  v23 = v99;
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_handledS1S2PayloadRead))
  {
    goto LABEL_18;
  }

  v80 = v99;
  v81 = v20;
  *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_handledS1S2PayloadRead) = 1;
  v113 = v110;
  v99 = v110;
  sub_10005F690(&v113, &v90);
  static String.Encoding.utf8.getter();
  sub_10005F5D4();
  v24 = String.init<A>(bytes:encoding:)();
  v26 = v25;
  v27 = sub_1000083FC(v99, *(&v99 + 1));
  v90 = v24;
  v91 = v26;
  __chkstk_darwin(v27);
  sub_100005DCC(&unk_1001BBA70);
  Optional.unwrap(_:file:line:)();

  v29 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  if (!v29)
  {
    goto LABEL_27;
  }

  v79 = v99;
  v30 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_spManager);
  v31 = v29;
  v32.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = Data._bridgeToObjectiveC()().super.isa;
  v33 = *(v1 + v13);
  if (!*(v33 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v34 = result;

  result = sub_100032E10(18);
  if ((v35 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v77 = v30;
  v78 = v34;
  v36 = (*(v33 + 56) + 16 * result);
  v37 = *v36;
  v38 = v36[1];
  sub_100005E64(*v36, v38);

  isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1000083FC(v37, v38);
  v39 = *(v1 + v13);
  if (!*(v39 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_100032E10(17);
  if ((v40 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v41 = (*(v39 + 56) + 16 * result);
  v42 = *v41;
  v43 = v41[1];
  sub_100005E64(*v41, v43);

  v75 = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1000083FC(v42, v43);
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vbVersionStr + 8))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = v32.super.isa;
  v74 = v31;

  v73 = String._bridgeToObjectiveC()();

  v45 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_presentationConfig;
  swift_beginAccess();
  v46 = v82;
  sub_100005EB8(v1 + v45, v82, &unk_1001BE180);
  v47 = type metadata accessor for B389PresentationConfig(0);
  result = (*(*(v47 - 8) + 48))(v46, 1, v47);
  if (result == 1)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v48 = *v46;
  sub_10005F788(v46, type metadata accessor for B389PresentationConfig);
  v49 = Data._bridgeToObjectiveC()().super.isa;
  v71 = v49;
  v50 = Data._bridgeToObjectiveC()().super.isa;
  v72 = v50;
  v51 = String._bridgeToObjectiveC()();
  v79 = v51;

  v52 = Data._bridgeToObjectiveC()().super.isa;
  v82 = v52;
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v101 = sub_1000E3EC8;
  *(&v101 + 1) = v53;
  *&v99 = _NSConcreteStackBlock;
  *(&v99 + 1) = 1107296256;
  *&v100 = sub_1000BB514;
  *(&v100 + 1) = &unk_100194090;
  v54 = _Block_copy(&v99);

  v69 = v52;
  v67 = v50;
  v68 = v51;
  v65 = v48;
  v66 = v49;
  v55 = v78;
  v56 = v74;
  v57 = v75;
  v58 = isa;
  v59 = v73;
  [v77 verifyPairingWithPairingSession:v74 signature:v44 attestation:v78 systemPublicKey:isa refKeyPublicKey:v75 systemVersion:v73 vendorId:76 productId:v65 ecid:v66 chipId:v67 serialNumber:v68 collaborativeKey:v69 completion:v54];
  _Block_release(v54);

  v23 = v80;
  v20 = v81;
LABEL_18:
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionVerified) == 1)
  {
    swift_beginAccess();
    v60 = v86;
    sub_1000DC818(0xD000000000000017, v86 | 0x8000000000000000);
    swift_endAccess();

    *&v99 = 0xD000000000000070;
    *(&v99 + 1) = v84;
    v89 = 1284;
    v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v61);

    v62 = String.hashValue.getter();

    swift_beginAccess();
    v63 = sub_1000D991C(&v89, v62);
    swift_endAccess();
    if (v63)
    {
      sub_1000D530C(0xD000000000000017, v60 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v64 = 1;
    swift_willThrow();
  }

  sub_1000083FC(v23, v87);
  sub_1000083FC(v20, v88);
  return sub_100008450(v109);
}

uint64_t sub_1000CFFFC(uint64_t a1)
{
  v2 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v10 = 0x6E206C6169726553;
  v11 = 0xEF28207265626D75;
  v8 = *(a1 + 32);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  (*(v3 + 104))(v5, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v2);
  sub_10005F5D4();
  DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
  (*(v3 + 8))(v5, v2);
  String.append(_:)(v9);

  v6._object = 0x8000000100147430;
  v6._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v6);
  return v10;
}

uint64_t sub_1000D0198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v12 = *(v25 - 8);
  __chkstk_darwin(v25);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_1000122EC(0, &qword_1001BCE90);
    v23 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a1;
    v17[4] = v16;
    aBlock[4] = a5;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = v24;
    v18 = _Block_copy(aBlock);
    swift_errorRetain();
    v19 = a1;
    v20 = v16;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005F638(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005DCC(&unk_1001BBA90);
    sub_100025698(&qword_1001BA7D0, &unk_1001BBA90);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v26 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v25);
  }

  return result;
}

uint64_t sub_1000D04C4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v6 = static os_log_type_t.error.getter();
  }

  else
  {
    v6 = static os_log_type_t.default.getter();
  }

  v7 = v6;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BE0E0);
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v7))
  {
    v44 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v46 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    v43 = v12;
    *v12 = a2;
    *(v11 + 12) = 2080;
    if (a1)
    {
      swift_getErrorValue();
      v14 = v9;
      v15 = Error.localizedDescription.getter();
      v17 = v16;
    }

    else
    {
      v17 = 0x8000000100145470;
      v33 = v9;
      v15 = 0xD000000000000015;
    }

    v34 = sub_10002065C(v15, v17, &v46);

    *(v11 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v10, v7, "verifyPairing %@ completion, error: %s", v11, 0x16u);
    sub_10001259C(v43, &unk_1001BBA60);

    sub_1000083B0(v13);

    a3 = v44;
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!a1)
    {
LABEL_18:
      v35 = v9;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = a2;
        v40 = swift_slowAlloc();
        *v38 = 138412290;
        *(v38 + 4) = v35;
        *v40 = v39;
        v41 = v35;
        _os_log_impl(&_mh_execute_header, v36, v37, "verifyPairing %@ success", v38, 0xCu);
        sub_10001259C(v40, &unk_1001BBA60);
        a2 = v39;
      }

      v42 = *(a3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
      *(a3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session) = a2;

      *(a3 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sessionVerified) = 1;
      return sub_1000BD9C0(v35);
    }
  }

  v46 = a1;
  swift_errorRetain();
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    sub_1000D0F94(v45);
  }

  else
  {
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v46 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10002065C(v22, v23, &v46);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "verifyPairing error %s failed decode as NSError", v20, 0xCu);
      sub_1000083B0(v21);
    }

    v25 = [objc_opt_self() mainBundle];
    v26 = String._bridgeToObjectiveC()();
    v27 = String._bridgeToObjectiveC()();
    v28 = sub_1001279D0(v25, v26, v27);

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    swift_errorRetain();
    sub_1000D0A60(v29, v31, a1, 0, 0);
  }
}

void sub_1000D0A60(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  if ((v5[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_shownError] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_shownError] = 1;
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000D298(v14, qword_1001BE0E0);

    swift_errorRetain();
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    osloga = a5;
    if (os_log_type_enabled(v16, v17))
    {
      v18 = a1;
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v19 = 136315650;
      v42 = v18;
      *(v19 + 4) = sub_10002065C(v18, a2, &v47);
      *(v19 + 12) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v20 = Error.localizedDescription.getter();
        v22 = v21;
      }

      else
      {
        v22 = 0x8000000100145470;
        v20 = 0xD000000000000015;
      }

      v23 = sub_10002065C(v20, v22, &v47);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      swift_beginAccess();

      v24 = Set.description.getter();
      v26 = v25;

      v27 = sub_10002065C(v24, v26, &v47);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "showError reason: %s, error: %s\nThe following operations were in-flight at the time of error, and have not finished:\n%s", v19, 0x20u);
      swift_arrayDestroy();

      a1 = v42;
    }

    else
    {
    }

    sub_1000BE2C0(0);
    v28 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC;
    v29 = *&v15[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC];
    if (v29)
    {
      v30 = *&v15[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_errorVC];
      v31 = v30;
    }

    else
    {
      v31 = [objc_allocWithZone(type metadata accessor for AirTagErrorViewController()) init];
      swift_unknownObjectWeakAssign();
      v30 = 0;
      v29 = *&v15[v28];
    }

    *&v15[v28] = v31;
    v32 = v31;
    v33 = v30;

    v34 = &v32[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_message];
    *v34 = a1;
    v34[1] = a2;

    v35 = *&v15[v28];
    if (v35)
    {
      *&v35[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_error] = a3;
      v36 = v35;

      swift_errorRetain();

      v37 = *&v15[v28];
      if (v37)
      {
        v38 = &v37[OBJC_IVAR____TtC18SharingViewService25AirTagErrorViewController_errorTitle];
        *v38 = a4;
        *(v38 + 1) = osloga;
        v39 = v37;

        v40 = *&v15[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav];
        if (v40)
        {
          v41 = *&v15[v28];
          if (v41)
          {
            [v40 pushViewController:v41 animated:1];
            return;
          }

          goto LABEL_28;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BE0E0);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10002065C(a1, a2, v46);
    _os_log_impl(&_mh_execute_header, oslog, v9, "Already showing error, dropping message: %s", v10, 0xCu);
    sub_1000083B0(v11);
  }

  else
  {
  }
}

void sub_1000D0F94(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v80 - v3;
  v83 = a1;
  type metadata accessor for SPPairingSessionError(0);
  sub_10005F638(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.code.getter();
  if (v82 < 14)
  {
    goto LABEL_19;
  }

  if (v82 <= 17)
  {
    if (v82 == 17)
    {
      v18 = objc_opt_self();
      v19 = [v18 mainBundle];
      v20 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      v22 = sub_1001279D0(v19, v20, v21);

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = [v18 mainBundle];
      v27 = String._bridgeToObjectiveC()();
      v28 = v23;
      v29 = String._bridgeToObjectiveC()();
      v30 = sub_1001279D0(v26, v27, v29);

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

LABEL_20:
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_10000D298(v52, qword_1001BE0E0);

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v80 = v33;
        v57 = v56;
        v83 = v56;
        *v55 = 136315138;
        v58 = v28;
        v59 = sub_10002065C(v28, v25, &v83);

        *(v55 + 4) = v59;
        v28 = v58;
        _os_log_impl(&_mh_execute_header, v53, v54, "%s", v55, 0xCu);
        sub_1000083B0(v57);
        v33 = v80;
      }

      else
      {
      }

      sub_1000D0A60(v28, v25, a1, v31, v33);

      return;
    }

LABEL_19:
    v47 = [objc_opt_self() mainBundle];
    v48 = String._bridgeToObjectiveC()();
    v49 = String._bridgeToObjectiveC()();
    v50 = sub_1001279D0(v47, v48, v49);

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v51;

    v31 = 0;
    v33 = 0;
    goto LABEL_20;
  }

  if (v82 != 18)
  {
    if (v82 == 20)
    {
      if (qword_1001B9490 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000D298(v5, qword_1001BE0E0);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      v8 = &selRef_applicationProxyForIdentifier_;
      if (os_log_type_enabled(v6, v7))
      {
        v9 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v81 = v80;
        *v9 = 136315138;
        v10 = [objc_opt_self() mainBundle];
        v11 = String._bridgeToObjectiveC()();
        v12 = String._bridgeToObjectiveC()();
        v13 = sub_1001279D0(v10, v11, v12);

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;

        v17 = sub_10002065C(v14, v16, &v81);
        v8 = &selRef_applicationProxyForIdentifier_;

        *(v9 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v6, v7, "%s", v9, 0xCu);
        sub_1000083B0(v80);
      }

      v60 = objc_opt_self();
      v61 = [v60 v8[299]];
      v62 = String._bridgeToObjectiveC()();
      v63 = String._bridgeToObjectiveC()();
      v64 = sub_1001279D0(v61, v62, v63);

      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;

      v68 = [v60 v8[299]];
      v69 = String._bridgeToObjectiveC()();
      v70 = String._bridgeToObjectiveC()();
      v71 = sub_1001279D0(v68, v69, v70);

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;

      v75 = String._bridgeToObjectiveC()();
      v76 = sub_100127AD0(v75);

      v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      URL.init(string:)();
      sub_1000C73A4(v65, v67, v72, v74, v77, v79, 0xD000000000000010, 0x8000000100147060, v4);

      sub_10001259C(v4, &qword_1001BA7B0);
      return;
    }

    goto LABEL_19;
  }

  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000D298(v34, qword_1001BE0E0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v81 = v38;
    *v37 = 136315138;
    v39 = [objc_opt_self() mainBundle];
    v40 = String._bridgeToObjectiveC()();
    v41 = String._bridgeToObjectiveC()();
    v42 = sub_1001279D0(v39, v40, v41);

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_10002065C(v43, v45, &v81);

    *(v37 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v35, v36, "%s", v37, 0xCu);
    sub_1000083B0(v38);
  }

  sub_1000D5ACC();
}

void sub_1000D1C0C()
{
  v2 = v0;
  v3 = type metadata accessor for String.Encoding();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v49 = "Expect discovered c3_t4_s4 char";
  sub_1000D99FC(v48, 0xD00000000000001ALL, 0x80000001001473D0);
  swift_endAccess();

  v48[3] = 0xD000000000000070;
  v48[4] = 0x800000010014C1F0;
  v43 = 0x800000010014C1F0;
  v48[0] = 1289;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7 = String.hashValue.getter();

  swift_beginAccess();
  v8 = sub_1000D991C(v48, v7);
  swift_endAccess();
  if (v8)
  {
    sub_1000D530C(0xD00000000000001ALL, v49 | 0x8000000000000000, 0, 0xE000000000000000, "%s - started... %s");
  }

  v9 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_11;
  }

  v11 = sub_100032E10(5);
  if ((v12 & 1) == 0)
  {

LABEL_11:
    v48[0] = 0xD000000000000070;
    v48[1] = v43;
    v44 = 1293;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = String.hashValue.getter();

    swift_beginAccess();
    v21 = sub_1000D991C(&v44, v20);
    swift_endAccess();
    if (v21)
    {
      sub_1000D22EC("ensureUserMessageWritten - skipped");
    }

    swift_beginAccess();
    sub_1000DC818(0xD00000000000001ALL, v49 | 0x8000000000000000);
    swift_endAccess();

    return;
  }

  v40[1] = v1;
  v42 = *(*(v10 + 56) + 8 * v11);

  v13 = (v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager);
  swift_beginAccess();
  if (!*(v13[1] + 16) || (, sub_100032DCC(v42), v15 = v14, , (v15 & 1) == 0))
  {
    v16 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
    if (v16)
    {
      v17 = [v16 userMessage];
      if (v17)
      {
        v18 = v17;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    static String.Encoding.utf8.getter();
    v22 = String.data(using:allowLossyConversion:)();
    v24 = v23;
    v41[1](v5, v3);
    v46 = v22;
    v47 = v24;
    sub_100005DCC(&unk_1001BE190);
    Optional.unwrap(_:file:line:)();
    sub_100025404(v46, v47);
    v25 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v44;
    v27 = v45;
    v41 = v25;

    swift_beginAccess();
    if (!*(v13[1] + 16) || (sub_100032DCC(v42), (v28 & 1) == 0))
    {
      v29 = v42;
      v30 = v41;
      sub_100005E64(v26, v27);
      sub_100005E64(v26, v27);
      v40[0] = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v13[1];
      v13[1] = 0x8000000000000000;
      sub_1000350F0(v26, v27, v25, v29, isUniquelyReferenced_nonNull_native);

      v13[1] = v46;
      sub_10001ACB0(v29);

      sub_1000083FC(v26, v27);
    }

    swift_endAccess();
    sub_1000083FC(v26, v27);
  }

  v33 = *v13;
  v32 = v13[1];

  v34 = sub_10001AED8(v42, v33, v32);

  if (v34)
  {
    swift_beginAccess();
    v35 = v49;
    sub_1000DC818(0xD00000000000001ALL, v49 | 0x8000000000000000);
    swift_endAccess();

    v44 = 0xD000000000000070;
    v45 = v43;
    v46 = 1309;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37 = String.hashValue.getter();

    swift_beginAccess();
    v38 = sub_1000D991C(&v46, v37);
    swift_endAccess();
    if (v38)
    {
      sub_1000D530C(0xD00000000000001ALL, v35 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v39 = 1;
    swift_willThrow();
  }
}

void sub_1000D22EC(const char *a1)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_1000D23DC()
{
  v1 = v0;
  v149 = type metadata accessor for String.Encoding();
  v2 = *(v149 - 8);
  __chkstk_darwin(v149);
  v4 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = "Expect discovered baaCert char";
  v6 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v136 = v6;
  sub_1000D99FC(&v155, 0xD00000000000001BLL, 0x80000001001472C0);
  swift_endAccess();

  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om);
  v157 = 0xD000000000000070;
  v158 = 0x800000010014C1F0;
  v137 = 0x800000010014C1F0;
  v155 = 1314;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = String.hashValue.getter();

  swift_beginAccess();
  v138 = v7;
  LOBYTE(v6) = sub_1000D991C(&v155, v9);
  swift_endAccess();
  if (v6)
  {
    sub_1000D530C(0xD00000000000001BLL, 0x80000001001472C0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v155 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  v10 = v155;
  sub_100005DCC(&unk_1001BE1A0);
  Optional.unwrap(_:file:line:)();

  v11 = v157;
  v12 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (*(v13 + 16))
  {

    v14 = sub_100032E10(13);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      v17 = v16;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v151 = v16;
  sub_100005DCC(&unk_1001BE1B0);
  Optional.unwrap(_:file:line:)();

  v146 = v155;
  v18 = *(v1 + v12);
  if (*(v18 + 16))
  {

    v19 = sub_100032E10(6);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      v22 = v21;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  v151 = v21;
  Optional.unwrap(_:file:line:)();

  v150 = v155;
  v23 = *(v1 + v12);
  if (*(v23 + 16))
  {

    v24 = sub_100032E10(7);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      v27 = v26;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v151 = v26;
  Optional.unwrap(_:file:line:)();

  v148 = v155;
  v28 = *(v1 + v12);
  if (*(v28 + 16))
  {

    v29 = sub_100032E10(8);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      v32 = v31;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v151 = v31;
  Optional.unwrap(_:file:line:)();

  v147 = v155;
  v33 = *(v1 + v12);
  if (*(v33 + 16))
  {

    v34 = sub_100032E10(9);
    if (v35)
    {
      v36 = *(*(v33 + 56) + 8 * v34);
      v37 = v36;
    }

    else
    {
      v36 = 0;
    }
  }

  else
  {
    v36 = 0;
  }

  v151 = v36;
  Optional.unwrap(_:file:line:)();

  v38 = v155;
  v39 = [v11 collaborativeKeyC2];
  if (v39)
  {
    v40 = v39;
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0xF000000000000000;
  }

  v151 = v41;
  v152 = v43;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v151, v152);
  v142 = v156;
  v143 = v155;
  v44 = [v11 serverSeed];
  if (v44)
  {
    v45 = v44;
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0xF000000000000000;
  }

  v151 = v46;
  v152 = v48;
  Optional.unwrap(_:file:line:)();
  sub_100025404(v151, v152);
  v144 = v156;
  v145 = v155;
  v49 = [v11 serverSignature];
  if (v49)
  {
    v50 = v49;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  v151 = v51;
  v152 = v53;
  Optional.unwrap(_:file:line:)();
  sub_100025404(v151, v152);
  v141 = v155;
  v140 = v156;
  v54 = [v11 maskedAppleID];
  v135 = v11;
  if (v54)
  {
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v151 = v56;
  v152 = v58;
  sub_100005DCC(&unk_1001BBA70);
  Optional.unwrap(_:file:line:)();

  v59 = v156;
  v60 = v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager;
  swift_beginAccess();
  if (!*(*(v60 + 8) + 16))
  {
LABEL_49:
    static String.Encoding.utf8.getter();
    v62 = String.data(using:allowLossyConversion:)();
    v64 = v63;
    (*(v2 + 8))(v4, v149);
    v153 = v62;
    v154 = v64;
    Optional.unwrap(_:file:line:)();
    sub_100025404(v153, v154);
    v66 = v151;
    v65 = v152;
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000D298(v67, qword_1001BE0E0);
    sub_100005E64(v66, v65);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    sub_1000083FC(v66, v65);
    v70 = os_log_type_enabled(v68, v69);
    v149 = v65;
    v134 = "Expect discovered baaCert char";
    v133 = v38;
    v132[1] = v59;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v151 = v72;
      *v71 = 136315138;
      isa = Data._bridgeToObjectiveC()().super.isa;
      v74 = SFHexStringForData();

      if (v74)
      {
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;
      }

      else
      {
        v77 = 0x8000000100145470;
        v75 = 0xD000000000000015;
      }

      v78 = sub_10002065C(v75, v77, &v151);

      *(v71 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v68, v69, "writingAppleID: %s", v71, 0xCu);
      sub_1000083B0(v72);

      v65 = v149;
    }

    else
    {
    }

    v79 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v79 != 2)
      {
        goto LABEL_67;
      }

      v82 = *(v66 + 16);
      v81 = *(v66 + 24);
      v83 = __OFSUB__(v81, v82);
      v80 = v81 - v82;
      if (!v83)
      {
        goto LABEL_66;
      }

      __break(1u);
    }

    else if (!v79)
    {
      v80 = BYTE6(v65);
      goto LABEL_66;
    }

    LODWORD(v80) = HIDWORD(v66) - v66;
    if (__OFSUB__(HIDWORD(v66), v66))
    {
      goto LABEL_89;
    }

    v80 = v80;
LABEL_66:
    if (v80 <= 30)
    {
LABEL_67:
      v84 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
      v85 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
      if (v85)
      {
        [v85 setNotifyValue:1 forCharacteristic:v146];
        v86 = *(v1 + v84);
        if (v86)
        {
          swift_beginAccess();
          v87 = *(*(v60 + 8) + 16);
          v88 = v86;
          v139 = v66;
          if (!v87 || (sub_100032DCC(v150), (v89 & 1) == 0))
          {
            v90 = v88;
            v92 = v144;
            v91 = v145;
            sub_100005E64(v145, v144);
            v93 = v150;
            sub_100005E64(v91, v92);
            v94 = v90;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v153 = *(v60 + 8);
            *(v60 + 8) = 0x8000000000000000;
            sub_1000350F0(v91, v92, v86, v93, isUniquelyReferenced_nonNull_native);

            *(v60 + 8) = v153;
            sub_10001ACB0(v93);

            v96 = v92;
            v66 = v139;
            sub_1000083FC(v91, v96);
          }

          swift_endAccess();
          v97 = *(v1 + v84);
          if (v97)
          {
            swift_beginAccess();
            v98 = *(*(v60 + 8) + 16);
            v99 = v97;
            if (!v98 || (sub_100032DCC(v148), (v100 & 1) == 0))
            {
              v101 = v99;
              v103 = v142;
              v102 = v143;
              sub_100005E64(v143, v142);
              v104 = v148;
              sub_100005E64(v102, v103);
              v105 = v101;
              v106 = swift_isUniquelyReferenced_nonNull_native();
              v153 = *(v60 + 8);
              *(v60 + 8) = 0x8000000000000000;
              sub_1000350F0(v102, v103, v97, v104, v106);

              *(v60 + 8) = v153;
              sub_10001ACB0(v104);

              v107 = v103;
              v66 = v139;
              sub_1000083FC(v102, v107);
            }

            swift_endAccess();
            v108 = *(v1 + v84);
            if (v108)
            {
              swift_beginAccess();
              v109 = *(*(v60 + 8) + 16);
              v110 = v108;
              if (!v109 || (sub_100032DCC(v147), (v111 & 1) == 0))
              {
                v112 = v110;
                v113 = v141;
                v114 = v140;
                sub_100005E64(v141, v140);
                v115 = v147;
                sub_100005E64(v113, v114);
                v116 = v112;
                v117 = swift_isUniquelyReferenced_nonNull_native();
                v153 = *(v60 + 8);
                *(v60 + 8) = 0x8000000000000000;
                sub_1000350F0(v113, v114, v108, v115, v117);

                *(v60 + 8) = v153;
                sub_10001ACB0(v115);

                v118 = v114;
                v66 = v139;
                sub_1000083FC(v113, v118);
              }

              swift_endAccess();
              v119 = *(v1 + v84);
              if (v119)
              {
                v120 = v119;

                swift_beginAccess();
                v38 = v133;
                v121 = v149;
                if (!*(*(v60 + 8) + 16) || (sub_100032DCC(v133), (v122 & 1) == 0))
                {
                  sub_100005E64(v66, v121);
                  v123 = v120;
                  v124 = v38;
                  sub_100005E64(v66, v149);
                  v125 = v123;
                  v126 = swift_isUniquelyReferenced_nonNull_native();
                  v153 = *(v60 + 8);
                  *(v60 + 8) = 0x8000000000000000;
                  sub_1000350F0(v66, v149, v119, v124, v126);

                  *(v60 + 8) = v153;
                  v127 = v124;
                  v121 = v149;
                  sub_10001ACB0(v127);

                  sub_1000083FC(v66, v121);
                }

                swift_endAccess();
                sub_1000083FC(v66, v121);
                v5 = v134;
                goto LABEL_85;
              }

LABEL_94:
              __break(1u);
              return;
            }

LABEL_93:
            __break(1u);
            goto LABEL_94;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  sub_100032DCC(v150);
  if ((v61 & 1) == 0)
  {

    goto LABEL_49;
  }

LABEL_85:
  swift_beginAccess();
  sub_1000DC818(0xD00000000000001BLL, v5 | 0x8000000000000000);
  swift_endAccess();

  v151 = 0xD000000000000070;
  v152 = v137;
  v153 = 1348;
  v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v128);

  v129 = String.hashValue.getter();

  swift_beginAccess();
  v130 = sub_1000D991C(&v153, v129);
  swift_endAccess();
  v131 = v135;
  if (v130)
  {
    sub_1000D530C(0xD00000000000001BLL, v5 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  sub_1000083FC(v141, v140);
  sub_1000083FC(v145, v144);
  sub_1000083FC(v143, v142);
}

void sub_1000D33D0()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v68, 0xD000000000000014, 0x8000000100147260);
  swift_endAccess();

  v61 = 0xD000000000000070;
  v62 = 0x800000010014C1F0;
  v68 = 1353;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v68, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000014, 0x8000000100147260, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  swift_beginAccess();
  v6 = *(v0 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_100032E10(10);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      v10 = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v67 = v9;
  sub_100005DCC(&unk_1001BE1B0);
  Optional.unwrap(_:file:line:)();

  v11 = v61;
  v12 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager);
  swift_beginAccess();
  if (*(v12[1] + 16))
  {

    sub_100032DCC(v61);
    v14 = v13;

    if (v14)
    {
      goto LABEL_34;
    }
  }

  v59 = v61;
  v61 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
  v15 = v61;
  sub_100005DCC(&unk_1001BE1A0);
  Optional.unwrap(_:file:line:)();

  v16 = v69;
  v17 = [v69 baaLeaftCert];

  if (v17)
  {
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  v65 = v18;
  v66 = v20;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v18, v20);
  v60 = v61;
  v58 = v62;
  v21 = v62 >> 62;
  if ((v62 >> 62) > 1)
  {
    LOWORD(v22) = 0;
    if (v21 != 2)
    {
      goto LABEL_23;
    }

    v24 = *(v61 + 2);
    v23 = *(v61 + 3);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (v25)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!(v22 >> 16))
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (v21)
  {
    LODWORD(v22) = HIDWORD(v61) - v61;
    if (__OFSUB__(HIDWORD(v61), v61))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (!(v22 >> 16))
    {
      goto LABEL_23;
    }

LABEL_20:
    LOWORD(v22) = 0;
    v26 = 1;
    goto LABEL_24;
  }

  LOWORD(v22) = BYTE6(v62);
LABEL_23:
  v26 = 0;
LABEL_24:
  LOWORD(v61) = v22;
  BYTE2(v61) = v26;
  sub_100005DCC(&unk_1001BE1D0);
  Optional.unwrap(_:file:line:)();
  v27 = v65;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000D298(v28, qword_1001BE0E0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 33554688;
    *(v31 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v29, v30, "data length: %hu", v31, 6u);
  }

  v34 = sub_1000BA034(v27, 2uLL, v32, v33);
  if (*(v34 + 2) != 2)
  {
    __break(1u);
    goto LABEL_40;
  }

  v35 = sub_1000DDA74(v34);
  v37 = v36;
  v65 = v35;
  v66 = v36;
  v63 = &type metadata for Data;
  v64 = &protocol witness table for Data;
  v61 = v60;
  v62 = v58;
  v38 = sub_10000836C(&v61, &type metadata for Data);
  v39 = v1;
  v40 = *v38;
  v41 = v38[1];
  sub_100005E64(v35, v37);
  sub_100005E64(v60, v58);
  sub_1000DD46C(v40, v41);
  sub_1000083FC(v35, v37);
  sub_1000083B0(&v61);
  v42 = *(v39 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
  if (!v42)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v43 = v65;
  v44 = v66;
  v45 = v42;

  swift_beginAccess();
  if (!*(v12[1] + 16) || (sub_100032DCC(v59), (v46 & 1) == 0))
  {
    v47 = v45;
    sub_100005E64(v43, v44);
    v48 = v59;
    sub_100005E64(v43, v44);
    v49 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v12[1];
    v12[1] = 0x8000000000000000;
    sub_1000350F0(v43, v44, v42, v48, isUniquelyReferenced_nonNull_native);

    v12[1] = v65;
    sub_10001ACB0(v48);

    sub_1000083FC(v43, v44);
  }

  swift_endAccess();
  sub_1000083FC(v43, v44);
  sub_1000083FC(v60, v58);
  v11 = v59;
LABEL_34:
  v52 = *v12;
  v51 = v12[1];

  v53 = sub_10001AED8(v11, v52, v51);

  if (v53)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000014, 0x8000000100147260);
    swift_endAccess();

    v61 = 0xD000000000000070;
    v62 = 0x800000010014C1F0;
    v65 = 1372;
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    v55 = String.hashValue.getter();

    swift_beginAccess();
    v56 = sub_1000D991C(&v65, v55);
    swift_endAccess();
    if (v56)
    {
      sub_1000D530C(0xD000000000000014, 0x8000000100147260, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v57 = 1;
    swift_willThrow();
  }
}

void sub_1000D3C20()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = __chkstk_darwin(v6);
  v85 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v84 = v78 - v9;
  v10 = "Expect discovered c3 char";
  v11 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v78[1] = v11;
  sub_1000D99FC(v88, 0xD000000000000014, 0x8000000100147200);
  swift_endAccess();

  v12 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_om);
  v88[3] = 0xD000000000000070;
  v88[4] = 0x800000010014C1F0;
  v79 = 0x800000010014C1F0;
  v88[0] = 1390;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = String.hashValue.getter();

  swift_beginAccess();
  v80 = v12;
  LOBYTE(v11) = sub_1000D991C(v88, v14);
  swift_endAccess();
  if (v11)
  {
    sub_1000D530C(0xD000000000000014, 0x8000000100147200, 0, 0xE000000000000000, "%s - started... %s");
  }

  v15 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_100032E10(14);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);
      v20 = v19;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v87[0] = v19;
  sub_100005DCC(&unk_1001BE1B0);
  Optional.unwrap(_:file:line:)();

  v21 = v88[0];
  v83 = v1;
  v22 = (v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager);
  swift_beginAccess();
  if (*(v22[1] + 16))
  {

    sub_100032DCC(v21);
    v24 = v23;

    if (v24)
    {
      goto LABEL_29;
    }
  }

  Date.init()();
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  (*(v3 + 8))(v5, v2);
  Date.timeIntervalSinceReferenceDate.getter();
  v26 = v25;
  Date.timeIntervalSinceReferenceDate.getter();
  if (qword_1001B9490 != -1)
  {
    v77 = v27;
    swift_once();
    v27 = v77;
  }

  v28 = v26 - v27;
  v29 = type metadata accessor for Logger();
  sub_10000D298(v29, qword_1001BE0E0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v30, v31, "timeSinceMidnight: %f", v32, 0xCu);
  }

  v33 = v28 * MillisecondsPerSecond.getter();
  if (COERCE__INT64(fabs(v33)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v33 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v33 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v34 = v33;
  v35 = v33 >> 32;
  v36 = v35 == 0;
  v37 = v35 != 0;
  if (!v36)
  {
    LODWORD(v34) = 0;
  }

  LODWORD(v87[0]) = v34;
  BYTE4(v87[0]) = v37;
  sub_100005DCC(&unk_1001BBAE0);
  Optional.unwrap(_:file:line:)();
  v40 = sub_1000BA17C(v89, 4uLL, v38, v39);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v78[0] = "Expect discovered c3 char";
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v87[0] = v45;
    *v44 = 136315138;
    v46 = Array.description.getter();
    v48 = v21;
    v49 = sub_10002065C(v46, v47, v87);

    *(v44 + 4) = v49;
    v21 = v48;
    _os_log_impl(&_mh_execute_header, v41, v42, "reftime payload: %s", v44, 0xCu);
    sub_1000083B0(v45);
  }

  if (*(v40 + 2) != 4)
  {
    goto LABEL_37;
  }

  v50 = *(v83 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
  if (!v50)
  {
LABEL_38:
    __break(1u);
    return;
  }

  swift_beginAccess();
  v51 = v22[1];
  v52 = *(v51 + 16);
  v53 = v50;
  if (v52 && (v54 = sub_100032DCC(v21), (v55 & 1) != 0))
  {
    v56 = *(v51 + 56) + 24 * v54;
    v57 = *v56;
    v58 = *(v56 + 8);
    v59 = *(v56 + 16);
    sub_100005E24(*v56, v58, v59);

    sub_1000254F8(v57, v58, v59);
  }

  else
  {
    v60 = sub_1000DDA74(v40);
    v62 = v61;

    v63 = v53;
    v64 = v21;
    sub_100005E64(v60, v62);
    v65 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v22[1];
    v22[1] = 0x8000000000000000;
    sub_1000350F0(v60, v62, v50, v64, isUniquelyReferenced_nonNull_native);

    v22[1] = v89;
    sub_10001ACB0(v64);

    sub_1000083FC(v60, v62);
  }

  swift_endAccess();
  v67 = v82;
  v68 = *(v81 + 8);
  v68(v85, v82);
  v68(v84, v67);
  v10 = v78[0];
LABEL_29:
  v70 = *v22;
  v69 = v22[1];

  v71 = sub_10001AED8(v21, v70, v69);

  if (v71)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000014, v10 | 0x8000000000000000);
    swift_endAccess();

    v87[0] = 0xD000000000000070;
    v87[1] = v79;
    v89 = 1410;
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    v73 = String.hashValue.getter();

    swift_beginAccess();
    v74 = sub_1000D991C(&v89, v73);
    swift_endAccess();
    if (v74)
    {
      sub_1000D530C(0xD000000000000014, v10 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    sub_10005F408();
    v75 = swift_allocError();
    *v76 = 1;
    v86 = v75;
    swift_willThrow();
  }
}

void sub_1000D4568()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v27, 0xD00000000000001DLL, 0x80000001001471A0);
  swift_endAccess();

  v27[3] = 0xD000000000000070;
  v27[4] = 0x800000010014C1F0;
  v27[0] = 1415;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v27, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD00000000000001DLL, 0x80000001001471A0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16) || (, sub_100032E10(13), v7 = v6, , (v7 & 1) == 0))
  {
    sub_10005F408();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return;
  }

  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentSecondReadRequest) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_sentSecondReadRequest) = 1;
    v8 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
    swift_beginAccess();
    v9 = *(v1 + v8);
    if (*(v9 + 16))
    {

      v10 = sub_100032E10(11);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);
        v13 = v12;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v28 = v12;
    sub_100005DCC(&unk_1001BE1B0);
    Optional.unwrap(_:file:line:)();

    v15 = *(v1 + v8);
    if (*(v15 + 16))
    {

      v16 = sub_100032E10(12);
      if (v17)
      {
        v18 = *(*(v15 + 56) + 8 * v16);
        v19 = v18;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v28 = v18;
    Optional.unwrap(_:file:line:)();

    v20 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph;
    v21 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (v21)
    {
      [v21 readValueForCharacteristic:v26];
      v22 = *(v1 + v20);
      if (v22)
      {
        [v22 readValueForCharacteristic:v26];

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_23:
  swift_beginAccess();
  sub_1000DC818(0xD00000000000001DLL, 0x80000001001471A0);
  swift_endAccess();

  v28 = 1426;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24 = String.hashValue.getter();

  swift_beginAccess();
  v25 = sub_1000D991C(&v28, v24);
  swift_endAccess();
  if (v25)
  {
    sub_1000D530C(0xD00000000000001DLL, 0x80000001001471A0, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_1000D49F0()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v14, 0xD000000000000016, 0x8000000100147180);
  swift_endAccess();

  v14[3] = 0xD000000000000070;
  v14[4] = 0x800000010014C1F0;
  v14[0] = 1431;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v14, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000016, 0x8000000100147180, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_readValues;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (, sub_100032E10(11), v7 = v6, , (v7 & 1) != 0) && *(*(v1 + v5) + 16) && (, sub_100032E10(12), v9 = v8, , (v9 & 1) != 0))
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000016, 0x8000000100147180);
    swift_endAccess();

    v14[0] = 0xD000000000000070;
    v14[1] = 0x800000010014C1F0;
    v15 = 1436;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = String.hashValue.getter();

    swift_beginAccess();
    v12 = sub_1000D991C(&v15, v11);
    swift_endAccess();
    if (v12)
    {
      sub_1000D530C(0xD000000000000016, 0x8000000100147180, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
  }
}

void sub_1000D4CF4(char a1)
{
  v2 = v1;
  v45 = 0x3A73736563637573;
  v46 = 0xE900000000000020;
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v8 = v45;
  v7 = v46;
  swift_beginAccess();
  sub_1000D99FC(v44, 0xD00000000000001ELL, 0x80000001001477A0);
  swift_endAccess();

  v45 = 0xD000000000000070;
  v46 = 0x800000010014C1F0;
  v44[0] = 1441;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_1000D991C(v44, v10);
  swift_endAccess();
  if (v11)
  {
    sub_1000D530C(0xD00000000000001ELL, 0x80000001001477A0, v8, v7, "%s - started... %s");
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState + 8) == 1 && *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_pairState) == 4)
  {
    v12 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_discoveredChars;
    swift_beginAccess();
    v13 = *(v2 + v12);
    if (*(v13 + 16))
    {

      v14 = sub_100032E10(15);
      if (v15)
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        v17 = v16;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v47 = v16;
    sub_100005DCC(&unk_1001BE1B0);
    Optional.unwrap(_:file:line:)();

    v22 = *(v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_periph);
    if (v22)
    {
      v41 = v44[0];
      v23 = (v2 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_writeManager);
      swift_beginAccess();
      v24 = *(v23[1] + 16);
      v25 = v22;
      if (!v24 || (sub_100032DCC(v41), (v26 & 1) == 0))
      {
        sub_100005DCC(&qword_1001BA7E8);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_10016CCE0;
        *(v27 + 32) = a1 & 1;
        v28 = sub_1000DDA74(v27);
        v30 = v29;

        v31 = v25;
        v32 = v41;
        sub_100005E64(v28, v30);
        v43 = v31;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47 = v23[1];
        v23[1] = 0x8000000000000000;
        sub_1000350F0(v28, v30, v22, v32, isUniquelyReferenced_nonNull_native);

        v23[1] = v47;
        sub_10001ACB0(v32);

        sub_1000083FC(v28, v30);
      }

      swift_endAccess();
      v35 = *v23;
      v34 = v23[1];

      v36 = sub_10001AED8(v41, v35, v34);

      if (v36)
      {
        swift_beginAccess();
        sub_1000DC818(0xD00000000000001ELL, 0x80000001001477A0);
        swift_endAccess();

        v44[0] = 0xD000000000000070;
        v44[1] = 0x800000010014C1F0;
        v47 = 1456;
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38 = String.hashValue.getter();

        swift_beginAccess();
        v39 = sub_1000D991C(&v47, v38);
        swift_endAccess();
        if (v39)
        {
          sub_1000D530C(0xD00000000000001ELL, 0x80000001001477A0, 0, 0xE000000000000000, "%s - done. %s");
        }
      }

      else
      {
        sub_10005F408();
        swift_allocError();
        *v40 = 1;
        swift_willThrow();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BE0E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Never paired. Skip receipt write.", v21, 2u);
    }
  }
}

void sub_1000D530C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const char *a5)
{
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000D298(v10, qword_1001BE0E0);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10002065C(a1, a2, &v14);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10002065C(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, oslog, v11, a5, v12, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_1000D54B0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1001B9490 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BE0E0);
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      swift_getErrorValue();
      v6 = Error.localizedDescription.getter();
      v8 = sub_10002065C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error in invalidatePairing: %s", v4, 0xCu);
      sub_1000083B0(v5);
    }

    else
    {
    }
  }
}

void sub_1000D5664()
{
  v1 = v0;
  if (qword_1001B9490 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BE0E0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "showDone", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_doneVC);
    v9 = v8;
  }

  else
  {
    v10 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_mapViewController);
    v11 = objc_allocWithZone(type metadata accessor for AirTagDoneViewController());
    v12 = v10;
    v9 = [v11 init];
    swift_unknownObjectWeakAssign();
    v13 = *&v9[OBJC_IVAR____TtC18SharingViewService24AirTagDoneViewController_mapViewController];
    *&v9[OBJC_IVAR____TtC18SharingViewService24AirTagDoneViewController_mapViewController] = v10;

    v8 = 0;
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = v9;
  v17 = v9;
  v14 = v8;

  v15 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_vcNav);
  if (v15)
  {
    v16 = v15;
    [v16 pushViewController:v17 animated:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000D5834()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v9, 0xD000000000000016, 0x8000000100147760);
  swift_endAccess();

  v9 = 1536;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v9, v3);
  swift_endAccess();
  if (v4)
  {
    sub_1000D530C(0xD000000000000016, 0x8000000100147760, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_needsMulti))
  {
    sub_10005F408();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000016, 0x8000000100147760);
    swift_endAccess();

    v9 = 1538;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7 = String.hashValue.getter();

    swift_beginAccess();
    v8 = sub_1000D991C(&v9, v7);
    swift_endAccess();
    if (v8)
    {
      sub_1000D530C(0xD000000000000016, 0x8000000100147760, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}