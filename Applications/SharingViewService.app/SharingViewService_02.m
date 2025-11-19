id sub_10002BBC4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate;
  swift_beginAccess();
  v6 = *(a2 + v5);
  v9 = a3;
  v8[2] = &v9;

  LOBYTE(v5) = sub_10002E40C(sub_10002E8E0, v8, v6);

  if ((v5 & 1) == 0)
  {
    return [a3 removeFromSuperview];
  }

  return result;
}

uint64_t sub_10002BC70(void *a1)
{
  v58 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v58);
  v3 = &v57 - v2;
  v4 = type metadata accessor for URL();
  v60 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v59 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v57 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005DCC(&unk_1001BBAA0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v57 - v17;
  if (!a1)
  {
    goto LABEL_7;
  }

  v19 = [a1 baUUID];
  if (v19)
  {
    v20 = v19;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v16, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v16, 1, 1, v9);
  }

  sub_10002E948(v16, v18);
  if ((*(v10 + 48))(v18, 1, v9))
  {
    sub_10001259C(v18, &unk_1001BBAA0);
LABEL_7:
    v21 = 0;
    v22 = 0xE000000000000000;
    goto LABEL_9;
  }

  (*(v10 + 16))(v12, v18, v9);
  sub_10001259C(v18, &unk_1001BBAA0);
  v21 = UUID.uuidString.getter();
  v22 = v23;
  (*(v10 + 8))(v12, v9);
LABEL_9:
  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000D298(v25, qword_1001BAAB8);
    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57 = v4;
      v31 = v30;
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = a1;
      v32 = v26;
      _os_log_impl(&_mh_execute_header, v27, v28, "No baUUID on %@", v29, 0xCu);
      sub_10001259C(v31, &unk_1001BBA60);
      v4 = v57;
    }
  }

  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v61 = 0xD000000000000013;
  v62 = 0x80000001001463C0;
  v33._countAndFlagsBits = v21;
  v33._object = v22;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0x3D656372756F733FLL;
  v34._object = 0xEB0000000063666ELL;
  String.append(_:)(v34);
  URL.init(string:)();

  Optional.unwrap(_:file:line:)();
  sub_10001259C(v3, &qword_1001BA7B0);
  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000D298(v35, qword_1001BAAB8);
  v36 = v59;
  v37 = v60;
  (*(v60 + 16))(v59, v8, v4);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v61 = v41;
    *v40 = 136315138;
    sub_10002E6E8(&unk_1001BBB30, &type metadata accessor for URL);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v43 = v36;
    v44 = v42;
    v46 = v45;
    v47 = *(v37 + 8);
    v47(v43, v4);
    v48 = sub_10002065C(v44, v46, &v61);

    *(v40 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "Opening FindMy NFC URL: %s", v40, 0xCu);
    sub_1000083B0(v41);
  }

  else
  {

    v47 = *(v37 + 8);
    v47(v36, v4);
  }

  v49 = [objc_opt_self() defaultWorkspace];
  if (v49)
  {
    v51 = v49;
    URL._bridgeToObjectiveC()(v50);
    v53 = v52;
    sub_100004F48(_swiftEmptyArrayStorage);
    v54 = v4;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v51 openSensitiveURL:v53 withOptions:isa];

    v4 = v54;
  }

  return (v47)(v8, v4);
}

uint64_t sub_10002C434(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate;
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setAlpha:1.0];
    }
  }

  return result;
}

Swift::UInt64 sub_10002C528(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for B389NFCStatusViewController();
  objc_msgSendSuper2(&v14, "viewDidDisappear:", a1 & 1);
  [*&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer] invalidate];
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  v4 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  if (v4)
  {
    v5 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks;
    v6 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks];

    if (v6)
    {
      v8 = UpTicks()();
      v9 = *&v1[v5];
      v10 = v8 >= v9;
      result = v8 - v9;
      if (!v10)
      {
        __break(1u);
        return result;
      }

      v7.n128_f64[0] = UpTicksToSecondsF(_:)(result);
    }

    else
    {
      v7.n128_u64[0] = 0;
    }

    if (v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response + 8])
    {
      v13 = 1;
    }

    else
    {
      v13 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
    }

    v4(0, v13, v7);
    sub_100012050(v4);
    v12 = *v3;
  }

  else
  {
    v12 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  return sub_100012050(v12);
}

void sub_10002C684()
{
  v1 = v0;
  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAAB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "contactPressed", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig;
  v7 = *&v0[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig];
  if (v7 && (v8 = [v7 phoneNumber]) != 0)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    type metadata accessor for URLComponents();
    v13 = swift_allocBox();
    URLComponents.init()();

    URLComponents.host.setter();
    v42 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
    v14 = objc_opt_self();
    v15 = [v14 mainBundle];
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = sub_1001279D0(v15, v16, v17);

    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v13;
    v20[4] = v10;
    v20[5] = v12;
    v48 = sub_10002E680;
    v49 = v20;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001BE90;
    v47 = &unk_1001909A8;
    v21 = _Block_copy(&aBlock);

    v22 = objc_opt_self();
    v41 = [v22 actionWithTitle:v18 style:0 handler:v21];
    _Block_release(v21);

    v23 = [v14 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = sub_1001279D0(v23, v24, v25);

    if (!v26)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = String._bridgeToObjectiveC()();
    }

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v13;
    v28[4] = v10;
    v28[5] = v12;
    v48 = sub_10002E6D4;
    v49 = v28;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001BE90;
    v47 = &unk_1001909F8;
    v29 = _Block_copy(&aBlock);

    v30 = [v22 actionWithTitle:v26 style:0 handler:v29];
    _Block_release(v29);

    v31 = String._bridgeToObjectiveC()();
    v32 = sub_100127AD0(v31);

    if (!v32)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = String._bridgeToObjectiveC()();
    }

    v48 = nullsub_4;
    v49 = 0;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001BE90;
    v47 = &unk_100190A20;
    v33 = _Block_copy(&aBlock);

    v34 = [v22 actionWithTitle:v32 style:1 handler:v33];
    _Block_release(v33);

    [v42 addAction:v41];
    [v42 addAction:v30];
    [v42 addAction:v34];
    [v1 presentViewController:v42 animated:1 completion:0];
  }

  else
  {
    v35 = v0;
    oslog = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = *&v1[v6];
      *(v37 + 4) = v39;
      *v38 = v39;
      v40 = v39;
      _os_log_impl(&_mh_execute_header, oslog, v36, "No phoneNumber on %@", v37, 0xCu);
      sub_10001259C(v38, &unk_1001BBA60);
    }
  }
}

uint64_t sub_10002CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for URLComponents();
  swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [objc_allocWithZone(CTTelephonyNetworkInfo) init];
    v11 = [v10 serviceSubscriberCellularProviders];
    if (v11 && (v12 = v11, sub_1000122EC(0, &qword_1001BAE40), v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v12, v14 = *(v13 + 16), , v14))
    {
      v15 = 0xE300000000000000;
      v16 = 7103860;
    }

    else
    {
      v15 = 0xEE006F696475612DLL;
      v16 = 0x656D697465636166;
    }

    swift_beginAccess();

    URLComponents.scheme.setter();
    swift_endAccess();
    v17 = &v9[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
    if (v9[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response + 8] == 1)
    {
      *v17 = 3;
      v17[8] = 0;
    }

    v18 = swift_allocObject();
    v18[2] = a3;
    v18[3] = v16;
    v18[4] = v15;
    v18[5] = a4;
    v18[6] = a5;

    sub_10002DB84(sub_10002EB98, v18);
  }

  return result;
}

uint64_t sub_10002CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for URLComponents();
  swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    URLComponents.scheme.setter();
    swift_endAccess();
    v10 = &v9[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
    if (v9[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response + 8] == 1)
    {
      *v10 = 4;
      v10[8] = 0;
    }

    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = 7564659;
    v11[4] = 0xE300000000000000;
    v11[5] = a4;
    v11[6] = a5;

    sub_10002DB84(sub_10002E6E4, v11);
  }

  return result;
}

void sub_10002D104(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5)
{
  v56 = a5;
  v57 = a2;
  v54 = a4;
  v58 = a3;
  v6 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v50 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v50 - v20;
  v55 = a1;
  v22 = swift_projectBox();
  swift_beginAccess();
  v51 = *(v10 + 16);
  v51(v14, v22, v9);
  URLComponents.url.getter();
  v52 = *(v10 + 8);
  v52(v14, v9);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_10001259C(v8, &qword_1001BA7B0);
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000D298(v23, qword_1001BAAB8);
    v24 = v58;

    v25 = v56;

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v60 = v55;
      *v28 = 136315650;
      *(v28 + 4) = sub_10002065C(v57, v24, &v60);
      *(v28 + 12) = 2080;
      swift_beginAccess();
      v29 = v53;
      v51(v53, v22, v9);
      sub_10002E6E8(&qword_1001BAE38, &type metadata accessor for URLComponents);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v52(v29, v9);
      v33 = sub_10002065C(v30, v32, &v60);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      *(v28 + 24) = sub_10002065C(v54, v25, &v60);
      _os_log_impl(&_mh_execute_header, v26, v27, "Could not form valid %s URL from %s, num: %s", v28, 0x20u);
      swift_arrayDestroy();
    }
  }

  else
  {
    (*(v16 + 32))(v21, v8, v15);
    if (qword_1001B92F8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000D298(v34, qword_1001BAAB8);
    (*(v16 + 16))(v19, v21, v15);
    v35 = v58;

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v56 = v21;
      v59[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_10002065C(v57, v35, v59);
      *(v38 + 12) = 2080;
      sub_10002E6E8(&unk_1001BBB30, &type metadata accessor for URL);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v43 = *(v16 + 8);
      v43(v19, v15);
      v44 = sub_10002065C(v40, v42, v59);

      *(v38 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "Opening %s URL: %s", v38, 0x16u);
      swift_arrayDestroy();
      v21 = v56;
    }

    else
    {

      v43 = *(v16 + 8);
      v43(v19, v15);
    }

    v45 = [objc_opt_self() defaultWorkspace];
    if (v45)
    {
      v47 = v45;
      URL._bridgeToObjectiveC()(v46);
      v49 = v48;
      [v47 openURL:v48 configuration:0 completionHandler:0];
    }

    v43(v21, v15);
  }
}

void sub_10002D880()
{
  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transitioning between NFC states", v4, 2u);
  }

  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig);
    oslog = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig);
    if (v6)
    {
      v7 = v5;
      v8 = [v6 promptState];
      if (v8 != [v7 promptState])
      {
        sub_1000295B0();
        v9 = v7;
        goto LABEL_16;
      }
    }

    else
    {
      v12 = v5;
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "NFC state has not changed", v15, 2u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "No NFC config.", v11, 2u);
    }
  }

  v9 = oslog;
LABEL_16:
}

id sub_10002DB84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  if (qword_1001B92F8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BAAB8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = 380;
    _os_log_impl(&_mh_execute_header, v10, v11, "dismissPressed in %ld", v12, 0xCu);
  }

  result = [v3 mainController];
  if (result)
  {
    v14 = result;
    v15 = *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction];
    v16 = *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction + 8];
    v17 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
    if (v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response + 8] == 1)
    {
      *v17 = 2;
      v17[8] = 0;
    }

    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = a1;
    v19[3] = a2;
    v19[4] = v15;
    v19[5] = v16;
    sub_100025EF0(v15);
    sub_100025EF0(v15);
    sub_100025EF0(a1);
    sub_10003BFDC(0, v8, sub_10002E5F8, v19, 386);

    sub_100012050(v15);
    return sub_10001259C(v8, &qword_1001BA7B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002DE44(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig] = 0;
  v7 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_bigBtn] = 0;
  v9 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_btnTitle];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_defaultBtnTitle];
  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100127AD0(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *v10 = v13;
  v10[1] = v15;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_numberLbl] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_msgLbl] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_titleLabel] = 0;
  v16 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel;
  *&v3[v16] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate] = _swiftEmptyArrayStorage;
  if (a2)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  v20.receiver = v3;
  v20.super_class = type metadata accessor for B389NFCStatusViewController();
  v18 = objc_msgSendSuper2(&v20, "initWithNibName:bundle:", v17, a3);

  return v18;
}

id sub_10002E090(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig] = 0;
  v4 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_bigBtn] = 0;
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_btnTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_defaultBtnTitle];
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100127AD0(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *v7 = v10;
  v7[1] = v12;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_numberLbl] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_msgLbl] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_titleLabel] = 0;
  v13 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel;
  *&v1[v13] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate] = _swiftEmptyArrayStorage;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for B389NFCStatusViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithCoder:", a1);

  if (v14)
  {
  }

  return v14;
}

id sub_10002E278()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for B389NFCStatusViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002E40C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_10002E534()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002E5A8()
{
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E5F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v1)
  {
    result = v1();
  }

  if (v2)
  {
    return v2();
  }

  return result;
}

uint64_t sub_10002E644()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002E68C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002E6E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002E730()
{

  return _swift_deallocObject(v0, 56, 7);
}

id sub_10002E7AC()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel) setAlpha:0.0];
  result = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner);
  if (result)
  {

    return [result setAlpha:0.0];
  }

  return result;
}

id sub_10002E81C()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel) removeFromSuperview];
  result = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner);
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

uint64_t sub_10002E898()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002E948(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&unk_1001BBAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10002E9B8(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_onDoneAction];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_coalescer] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig] = 0;
  v4 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_bigBtn] = 0;
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_btnTitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_defaultBtnTitle];
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100127AD0(v8);

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *v7 = v10;
  v7[1] = v12;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_numberLbl] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_msgLbl] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_titleLabel] = 0;
  v13 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_connectingLabel;
  *&v1[v13] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_spinner] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_player] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_heightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_subviewsToRemoveOnUpdate] = _swiftEmptyArrayStorage;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for B389NFCStatusViewController();
  return objc_msgSendSuper2(&v15, "initWithMainController:", a1);
}

uint64_t sub_10002EBBC()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BAE48);
  v1 = sub_10000D298(v0, qword_1001BAE48);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002EC84()
{
  ObjectType = swift_getObjectType();
  v37.receiver = v0;
  v37.super_class = type metadata accessor for AirTagInstallFindMyViewController();
  objc_msgSendSuper2(&v37, "viewDidLoad");
  sub_1000974B4(100);
  v2 = String._bridgeToObjectiveC()();

  [v0 setTitle:v2];

  sub_1000974B4(101);
  v3 = String._bridgeToObjectiveC()();

  [v0 setSubtitle:v3];

  [v0 setDismissalType:1];
  v4 = [objc_allocWithZone(UIImageView) init];
  v5 = sub_10002F72C();
  if (v5)
  {
    v6 = v5;
    [v4 setImage:v5];
  }

  v7 = v4;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 contentView];
  [v8 addSubview:v7];

  v9 = [v0 contentView];
  v10 = [v9 mainContentGuide];

  v11 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10016CED0;
  v13 = [v7 centerXAnchor];
  v14 = [v10 centerXAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v12 + 32) = v15;
  v16 = [v7 centerYAnchor];
  v17 = [v10 centerYAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v12 + 40) = v18;
  v19 = [v7 widthAnchor];
  v20 = [v19 constraintEqualToConstant:76.0];

  *(v12 + 48) = v20;
  v21 = [v7 heightAnchor];
  v22 = [v21 constraintEqualToConstant:76.0];

  *(v12 + 56) = v22;
  v23 = [v7 topAnchor];
  v24 = [v10 topAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];

  *(v12 + 64) = v25;
  v26 = [v7 bottomAnchor];

  v27 = [v10 bottomAnchor];
  v28 = [v26 constraintLessThanOrEqualToAnchor:v27];

  *(v12 + 72) = v28;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints:isa];

  sub_1000974B4(102);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = ObjectType;

  v32 = String._bridgeToObjectiveC()();

  v36[4] = sub_10002F8E0;
  v36[5] = v31;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 1107296256;
  v36[2] = sub_10001BE90;
  v36[3] = &unk_100190CA0;
  v33 = _Block_copy(v36);
  v34 = [objc_opt_self() actionWithTitle:v32 style:0 handler:v33];

  _Block_release(v33);

  v35 = [v0 addAction:v34];
}

void sub_10002F1FC()
{
  if (qword_1001B9300 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BAE48);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 53;
    _os_log_impl(&_mh_execute_header, v1, v2, "Install FindMy App pressed in %ld", v3, 0xCu);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = objc_allocWithZone(ASDSystemAppRequest);
      v9 = String._bridgeToObjectiveC()();
      v10 = [v8 initWithBundleID:v9];

      aBlock[4] = sub_10002F484;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000E4BD0;
      aBlock[3] = &unk_100190CC8;
      v11 = _Block_copy(aBlock);
      [v10 startWithErrorHandler:v11];
      _Block_release(v11);
      sub_1000BA8D0();

      goto LABEL_11;
    }
  }

  v10 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v10, v12, "mainController nil while initializing primaryAction", v13, 2u);
  }

LABEL_11:
}

void sub_10002F484(uint64_t a1)
{
  if (a1)
  {
    if (qword_1001B9300 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000D298(v1, qword_1001BAE48);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9 = v4;
      *v3 = 136315138;
      sub_100005DCC(&qword_1001B9C28);
      v5 = Optional.debugDescription.getter();
      v7 = sub_10002065C(v5, v6, &v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "### Restoring FindMy app failed: %s\n", v3, 0xCu);
      sub_1000083B0(v4);
    }

    else
    {
    }
  }
}

id sub_10002F6C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagInstallFindMyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10002F72C()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 imageForImageDescriptor:v3];
  result = [v4 CGImage];
  if (result)
  {
    v6 = result;
    [v4 scale];
    v8 = [objc_allocWithZone(UIImage) initWithCGImage:v6 scale:0 orientation:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10002F870()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002F8A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002F8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002F908()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BAE90);
  v1 = sub_10000D298(v0, qword_1001BAE90);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002F9D0()
{
  v0 = sub_1000974B4(126);
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = *&Strong[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex], v5 = Strong[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_selectedRoleIndex + 8], Strong, (v5 & 1) != 0) || (v6 = swift_unknownObjectWeakLoadStrong()) == 0 || (v7 = v6, v8 = sub_1000BCC50(), v7, !v8))
  {
LABEL_9:
    sub_1000974B4(125);
    sub_100005DCC(&unk_1001BBB70);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_10016CCE0;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000BF44();
    *(v15 + 32) = v0;
    *(v15 + 40) = v2;
    static String.localizedStringWithFormat(_:_:)();

    sub_1000974B4(124);
    v16 = String._bridgeToObjectiveC()();
    v17 = objc_opt_self();
    v18 = [v17 imageNamed:v16];

    v19 = objc_opt_self();
    v20 = [v19 systemWhiteColor];
    v21 = objc_allocWithZone(PRXFeature);
    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();

    v63 = [v21 initWithTitle:v22 detailText:v23 icon:v18 tintColor:v20 valueChangedBlock:0];

    sub_1000974B4(127);
    sub_1000974B4(128);
    v24 = String._bridgeToObjectiveC()();
    v25 = [v17 systemImageNamed:v24];

    v26 = [v19 systemBlueColor];
    v27 = objc_allocWithZone(PRXFeature);
    v28 = String._bridgeToObjectiveC()();

    v29 = String._bridgeToObjectiveC()();

    v62 = [v27 initWithTitle:v28 detailText:v29 icon:v25 tintColor:v26 valueChangedBlock:0];

    sub_1000974B4(129);
    sub_1000974B4(130);
    v30 = String._bridgeToObjectiveC()();
    v31 = [v17 systemImageNamed:v30];

    v32 = [v19 systemIndigoColor];
    v33 = objc_allocWithZone(PRXFeature);
    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v61 = [v33 initWithTitle:v34 detailText:v35 icon:v31 tintColor:v32 valueChangedBlock:0];

    sub_1000974B4(131);
    sub_1000974B4(132);
    v36 = String._bridgeToObjectiveC()();
    v37 = [v17 systemImageNamed:v36];

    v38 = [v19 systemGreenColor];
    v39 = objc_allocWithZone(PRXFeature);
    v40 = String._bridgeToObjectiveC()();

    v41 = String._bridgeToObjectiveC()();

    v60 = [v39 initWithTitle:v40 detailText:v41 icon:v37 tintColor:v38 valueChangedBlock:0];

    sub_1000974B4(133);
    sub_1000974B4(134);
    v42 = String._bridgeToObjectiveC()();
    v43 = [v17 systemImageNamed:v42];

    v44 = [v19 systemPinkColor];
    v45 = objc_allocWithZone(PRXFeature);
    v46 = String._bridgeToObjectiveC()();

    v47 = String._bridgeToObjectiveC()();

    v48 = [v45 initWithTitle:v46 detailText:v47 icon:v43 tintColor:v44 valueChangedBlock:0];

    sub_1000974B4(135);
    sub_1000974B4(136);
    v49 = String._bridgeToObjectiveC()();
    v50 = [v17 systemImageNamed:v49];

    v51 = [v19 systemGreenColor];
    v52 = objc_allocWithZone(PRXFeature);
    v53 = String._bridgeToObjectiveC()();

    v54 = String._bridgeToObjectiveC()();

    v55 = [v52 initWithTitle:v53 detailText:v54 icon:v50 tintColor:v51 valueChangedBlock:0];

    LOBYTE(v54) = SFIsFMFAllowed();
    v56 = SFIsRangingSupported();
    sub_100005DCC(&qword_1001BBB00);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10016D310;
    if (v54)
    {
      if ((v56 & 1) == 0)
      {
        *(v57 + 40) = v55;
        *(v57 + 48) = v48;
        v48 = v60;
        *(v57 + 32) = v61;
LABEL_14:
        v59 = v62;
        v58 = v63;
LABEL_16:

        return;
      }
    }

    else if ((v56 & 1) == 0)
    {
      *(v57 + 32) = v61;
      *(v57 + 40) = v55;
      *(v57 + 48) = v63;
      v58 = v61;

      v59 = v60;
      goto LABEL_16;
    }

    *(v57 + 32) = v60;
    *(v57 + 40) = v61;
    *(v57 + 48) = v55;
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < v8[2])
  {
    v9 = v8[2 * v4 + 5];

    type metadata accessor for SFMExampleUtterance();
    v10 = v9;
    v11 = SFMExampleUtterance.__allocating_init(forRole:)();
    v12 = dispatch thunk of SFMExampleUtterance.utteranceText.getter();
    v14 = v13;

    if (v14)
    {

      v0 = v12;
      v2 = v14;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000301EC()
{
  v1 = *&v0[OBJC_IVAR____TtC18SharingViewService24AirTagDoneViewController_mapViewController];
  if (v1)
  {
    v2 = v0;
    v24 = v1;
    v3 = [v24 view];
    if (v3)
    {
      v4 = v3;
      v5 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 216.0}];
      [v2 addChildViewController:v24];
      [v5 addSubview:v4];
      [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [v2 tableView];
      [v6 setTableHeaderView:v5];

      v7 = [v2 tableView];
      [v7 setSeparatorStyle:0];

      [v4 _setContinuousCornerRadius:13.0];
      v8 = objc_opt_self();
      sub_100005DCC(&qword_1001BBB00);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10016D4A0;
      v10 = [v4 topAnchor];
      v11 = [v5 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];

      *(v9 + 32) = v12;
      v13 = [v4 bottomAnchor];
      v14 = [v5 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 constant:-16.0];

      *(v9 + 40) = v15;
      v16 = [v4 leadingAnchor];
      v17 = [v5 leadingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17 constant:PRXCardDefaultLayoutMargins[1]];

      *(v9 + 48) = v18;
      v19 = [v4 trailingAnchor];
      v20 = [v5 trailingAnchor];
      v21 = [v19 constraintEqualToAnchor:v20 constant:-PRXCardDefaultLayoutMargins[3]];

      *(v9 + 56) = v21;
      sub_1000122EC(0, &qword_1001B9968);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 activateConstraints:isa];

      v23 = isa;
    }

    else
    {
      v23 = v24;
    }
  }
}

void sub_1000305A4()
{
  v1 = v0;
  v50.receiver = v0;
  v50.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v50, "viewDidLoad");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1001B9308 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v3 = Strong;
  sub_1000BCF94();
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v1 setTitle:v5];

  [v1 setDismissalType:1];
  v10 = [objc_opt_self() systemBlueColor];
  v11 = [objc_opt_self() configurationWithHierarchicalColor:v10];

  v12 = v11;
  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

  if (v14)
  {
    v15 = [objc_opt_self() textAttachmentWithImage:v14];
    sub_1000122EC(0, &qword_1001BAEE0);
    v16 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v15];
    aBlock = 32;
    v45 = 0xE100000000000000;
    v17._countAndFlagsBits = sub_1000974B4(122);
    String.append(_:)(v17);

    v18 = objc_allocWithZone(NSAttributedString);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v18 initWithString:v19];

    [v16 appendAttributedString:v20];
    [v1 setAttributedSubtitle:v16];
  }

  sub_10002F9D0();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_19;
    }
  }

  if (v23 < 1)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_5:
    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BAE90);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "mainController is nil during viewDidLoad", v9, 2u);
    }

    goto LABEL_23;
  }

  v24 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;
    v27 = [v1 addFeature:v25];
  }

  while (v23 != v24);
LABEL_19:

  sub_1000301EC();
  sub_1000974B4(123);
  sub_100005DCC(&unk_1001BBB70);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10016CCE0;
  if (qword_1001B9260 != -1)
  {
    swift_once();
  }

  v29 = [qword_1001C3838 localizedShortName];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_10000BF44();
    *(v28 + 32) = v31;
    *(v28 + 40) = v33;
    static String.localizedStringWithFormat(_:_:)();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v35 = String._bridgeToObjectiveC()();

    v48 = sub_1000318E8;
    v49 = v34;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001BE90;
    v47 = &unk_100190D18;
    v36 = _Block_copy(&aBlock);
    v37 = objc_opt_self();
    v38 = [v37 actionWithTitle:v35 style:0 handler:v36];

    _Block_release(v36);

    sub_1000974B4(2);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v40 = String._bridgeToObjectiveC()();

    v48 = sub_100031930;
    v49 = v39;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_10001BE90;
    v47 = &unk_100190D40;
    v41 = _Block_copy(&aBlock);
    v42 = [v37 actionWithTitle:v40 style:1 handler:v41];

    _Block_release(v41);

    v7 = [v1 addAction:v42];

LABEL_23:
    return;
  }

  __break(1u);
}

uint64_t sub_100030CD0()
{
  v71 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v71);
  v1 = &v61 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for UUID();
  v6 = *(v72 - 8);
  v7 = __chkstk_darwin(v72);
  v75 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v61 - v9;
  v70 = sub_100005DCC(&unk_1001BBAA0);
  v10 = __chkstk_darwin(v70);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v61 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v61 - v17;
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v65 = v1;
    v74 = v6;
    v68 = v5;
    v69 = v3;
    v67 = result;
    v78 = *(result + OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_session);
    v22 = v78;
    sub_100005DCC(&unk_1001BE1A0);
    Optional.unwrap(_:file:line:)();

    v23 = v76;
    if (qword_1001B9308 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    v25 = sub_10000D298(v24, qword_1001BAE90);
    v26 = v23;
    v66 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();

    v29 = os_log_type_enabled(v27, v28);
    v73 = v26;
    if (v29)
    {
      v63 = v2;
      v30 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v76 = v62;
      *v30 = 136315138;
      v31 = [v26 beaconId];
      if (v31)
      {
        v32 = v31;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v35 = v65;
      v36 = v74;
      v37 = v72;
      (*(v74 + 56))(v18, v33, 1, v72);
      v38 = v18;
      v34 = v37;
      sub_10002E948(v38, v20);
      sub_10000BE6C(v20, v15);
      if ((*(v36 + 48))(v15, 1, v37) == 1)
      {
        v39 = 0x8000000100146530;
        v40 = 0xD000000000000013;
      }

      else
      {
        v41 = *(v36 + 32);
        v65 = v20;
        v42 = v37;
        v43 = v64;
        v41(v64, v15, v37);
        sub_100031960();
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v44;
        v45 = v43;
        v34 = v42;
        v20 = v65;
        (*(v36 + 8))(v45, v34);
      }

      v26 = v73;
      sub_10001259C(v20, &unk_1001BBAA0);
      v46 = sub_10002065C(v40, v39, &v76);

      *(v30 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v27, v28, "beaconID: %s", v30, 0xCu);
      sub_1000083B0(v62);

      v2 = v63;
    }

    else
    {

      v34 = v72;
      v35 = v65;
    }

    v47 = [v26 beaconId];
    v48 = v74;
    if (v47)
    {
      v49 = v47;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = 0;
    }

    else
    {
      v50 = 1;
    }

    (*(v48 + 56))(v12, v50, 1, v34);
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v12, &unk_1001BBAA0);
    v76 = 0;
    v77 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v76 = 0xD000000000000013;
    v77 = 0x80000001001463C0;
    v51._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v51);

    v53 = v76;
    v52 = v77;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v76 = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_10002065C(v53, v52, &v76);
      _os_log_impl(&_mh_execute_header, v54, v55, "Opening findmy at %s", v56, 0xCu);
      sub_1000083B0(v57);
    }

    URL.init(string:)();

    v58 = v68;
    Optional.unwrap(_:file:line:)();
    sub_10001259C(v35, &qword_1001BA7B0);
    v59 = v69;
    (*(v69 + 16))(v35, v58, v2);
    (*(v59 + 56))(v35, 0, 1, v2);
    v60 = v67;
    sub_1000C1744(0, v35, 0, 0, 220);

    sub_10001259C(v35, &qword_1001BA7B0);
    (*(v59 + 8))(v58, v2);
    return (*(v48 + 8))(v75, v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100031550(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1000315AC()
{
  if (qword_1001B9308 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BAE90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    *(v3 + 4) = 199;
    _os_log_impl(&_mh_execute_header, v1, v2, "dismissPressed in %ld", v3, 0xCu);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong dismiss:0];
  }
}

id sub_100031808()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000318B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031918(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100031960()
{
  result = qword_1001BBAB0;
  if (!qword_1001BBAB0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BBAB0);
  }

  return result;
}

void *sub_1000319D0()
{
  result = sub_1000319F0();
  qword_1001C3950 = result;
  return result;
}

void *sub_1000319F0()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(6899277, 0xE300000000000000, 1u, isUniquelyReferenced_nonNull_native);
  v1 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x656D75736552, 0xE600000000000000, 2u, v1);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6D6574737953, 0xE600000000000000, 4u, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6369766544726550, 0xE900000000000065, 8u, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6E6569736E617254, 0xE900000000000074, 0x10u, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(1868983881, 0xE400000000000000, 0x20u, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x7373655372657355, 0xEB000000006E6F69, 0x40u, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x556E49746C697542, 0xE900000000000049, 0x80u, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6C6175736956, 0xE600000000000000, 0x100u, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(4408910, 0xE300000000000000, 0x200u, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(1769105747, 0xE400000000000000, 0x400u, v10);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6F69647541, 0xE500000000000000, 0x800u, v11);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x4449656C707041, 0xE700000000000000, 0x1000u, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x496874754169464DLL, 0xE900000000000043, 0x2000u, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x7774666F5369464DLL, 0xEF74726543657261, 0x4000u, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6E656B6F5469464DLL, 0xE800000000000000, 0x8000u, v15);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x636572726F636E49, 0xE900000000000074, 0x10000u, v16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x656C74746F726854, 0xE800000000000000, 0x20000u, v17);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x686374614DLL, 0xE500000000000000, 0x40000u, v18);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x7465736552, 0xE500000000000000, 0x80000u, v19);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0xD000000000000012, 0x8000000100146630, 0x100000u, v20);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0xD000000000000013, 0x8000000100146650, 0x200000u, v21);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x74694B656D6F48, 0xE700000000000000, 0x400000u, v22);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x6552657571696E55, 0xEC000000656D7573, 0x800000u, v23);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x74655374696C7053, 0xEA00000000007075, 0x1000000u, v24);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0xD000000000000010, 0x8000000100146670, 0x2000000u, v25);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x5574694B656D6F48, 0xEB00000000726573, 0x4000000u, v26);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x615063696C627550, 0xEE0064726F777373, 0x8000000u, v27);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x566874754169464DLL, 0xE900000000000033, 0x10000000u, v28);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0xD000000000000012, 0x8000000100146690, 0x20000000u, v29);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000355B8(0x69687372656E774FLL, 0xEE00666F6F725070, 0x40000000u, v30);
  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_100032098(int a1)
{
  if (qword_1001B9310 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1001C3950;
  v3 = qword_1001C3950 + 64;
  v4 = 1 << *(qword_1001C3950 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1001C3950 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 48) + ((v8 << 8) | (4 * v11)));
    if ((v12 & ~a1) == 0)
    {
      swift_beginAccess();
      v13 = qword_1001C3950;
      if (*(qword_1001C3950 + 16) && (v14 = sub_100032F1C(v12), (v15 & 1) != 0))
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v17 = v16[1];
        v30 = *v16;
        swift_endAccess();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100032A3C(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v22 = sub_100032A3C((v18 > 1), v19 + 1, 1, v9);
          v20 = v19 + 1;
          v9 = v22;
        }

        *(v9 + 2) = v20;
        v21 = &v9[16 * v19];
        *(v21 + 4) = v30;
        *(v21 + 5) = v17;
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  _StringGuts.grow(_:)(31);

  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8233;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = Array.description.getter();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  return 0xD000000000000019;
}

Swift::Int sub_10003235C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000323D0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_100032460(_DWORD *a1, int *a2)
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

_DWORD *sub_100032490@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1000324BC@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100032590@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_100005D5C(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000325D0()
{
  result = qword_1001BAEE8;
  if (!qword_1001BAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAEE8);
  }

  return result;
}

unint64_t sub_100032628()
{
  result = qword_1001BAEF0;
  if (!qword_1001BAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAEF0);
  }

  return result;
}

unint64_t sub_100032684()
{
  result = qword_1001BAEF8;
  if (!qword_1001BAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAEF8);
  }

  return result;
}

unint64_t sub_1000326DC()
{
  result = qword_1001BAF00;
  if (!qword_1001BAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BAF00);
  }

  return result;
}

void *sub_100032730(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005DCC(&qword_1001BA778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005DCC(&qword_1001BA780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100032864(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005DCC(&qword_1001BAF18);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100032A3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005DCC(&qword_1001BA018);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100032B48(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005DCC(&qword_1001BAF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005DCC(&unk_1001BE200);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100032C7C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100032FD0(a1, v4);
}

unint64_t sub_100032CC0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100033098(a1, a2, v4);
}

unint64_t sub_100032D38(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100033150(a1, v2);
}

unint64_t sub_100032DCC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100033254(a1, v4);
}

unint64_t sub_100032E10(char a1)
{
  Hasher.init(_seed:)();
  sub_100006CB4();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_100033318(a1, v2);
}

unint64_t sub_100032E98(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_10003685C(&qword_1001BA7D8);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100033724(a1, v2);
}

unint64_t sub_100032F1C(Swift::UInt32 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return sub_1000338D0(a1, v2);
}

unint64_t sub_100032F88(int a1)
{
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000338D0(a1, v2);
}

unint64_t sub_100032FD0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100036800(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000BF98(v8);
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

unint64_t sub_100033098(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100033150(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100033254(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1000367B4();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100033318(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = &off_100144560;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 2:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 3:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 4:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 5:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 6:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 7:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 8:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 9:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xA:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xB:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xC:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xD:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xE:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0xF:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0x10:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0x11:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        case 0x12:
          v7 = "51-86AA-8D9728F8D66C";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = &off_100144560;
      switch(a1)
      {
        case 1:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 2:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 3:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 4:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 5:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 6:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 7:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 8:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 9:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 10:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 11:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 12:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 13:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 14:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 15:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 16:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 17:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        case 18:
          v9 = "51-86AA-8D9728F8D66C";
          break;
        default:
          break;
      }

      if (v8 == (v9 | 0x8000000000000000))
      {
        break;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100033724(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_10003685C(&qword_1001BE220);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1000338D0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10003393C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001B95F8);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v37 & 1) == 0)
      {
        v26 = v21;
        sub_100005E24(v23, v24, v25);
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100033BDC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100005DCC(&qword_1001B9648);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_10003685C(&qword_1001BA7D8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100033FA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001B95E8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100034244(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001BAF08);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000344E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001B9608);
  v33 = a2;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v25 = *(*(v5 + 56) + 8 * v23);
    if ((v33 & 1) == 0)
    {
      v26 = v25;
    }

    Hasher.init(_seed:)();
    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = 0;
      v28 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v28 && (v27 & 1) != 0)
        {
          goto LABEL_36;
        }

        v29 = v18 == v28;
        if (v18 == v28)
        {
          v18 = 0;
        }

        v27 |= v29;
        v30 = *(v14 + 8 * v18);
      }

      while (v30 == -1);
      v19 = __clz(__rbit64(~v30)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 8 * v19) = v25;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x10003493CLL);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (v33)
  {
    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100034988(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001B9600);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_33:

    goto LABEL_34;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  while (v12)
  {
    v20 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v23 = v20 | (v8 << 6);
    v24 = *(*(v5 + 48) + v23);
    v31 = *(*(v5 + 56) + 16 * v23);
    if ((a2 & 1) == 0)
    {
      sub_100005E64(v31, *(&v31 + 1));
    }

    Hasher.init(_seed:)();
    String.hash(into:)();

    v15 = Hasher._finalize()();
    v16 = -1 << *(v7 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = 0;
      v26 = (63 - v16) >> 6;
      do
      {
        if (++v18 == v26 && (v25 & 1) != 0)
        {
          goto LABEL_36;
        }

        v27 = v18 == v26;
        if (v18 == v26)
        {
          v18 = 0;
        }

        v25 |= v27;
        v28 = *(v14 + 8 * v18);
      }

      while (v28 == -1);
      v19 = __clz(__rbit64(~v28)) + (v18 << 6);
    }

    *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v7 + 48) + v19) = v24;
    *(*(v7 + 56) + 16 * v19) = v31;
    ++*(v7 + 16);
  }

  v21 = v8;
  while (1)
  {
    v8 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      JUMPOUT(0x100034DECLL);
    }

    if (v8 >= v13)
    {
      break;
    }

    v22 = v9[v8];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v12 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  if (a2)
  {
    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  v3 = v2;
LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_100034E38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100005DCC(&qword_1001BE230);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_100005E14(v24, v34);
      }

      else
      {
        sub_10000BFEC(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_100005E14(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_1000350F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_100032DCC(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_10003393C(v17, a5 & 1);
      v12 = sub_100032DCC(a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1000367B4();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_100035C7C();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    v23 = (v22[7] + 24 * v12);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    *v23 = a1;
    v23[1] = a2;
    v23[2] = a3;

    sub_1000254F8(v24, v25, v26);
    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a4;
  v27 = (v22[7] + 24 * v12);
  *v27 = a1;
  v27[1] = a2;
  v27[2] = a3;
  v28 = v22[2];
  v16 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v29;

  v30 = a4;
}

void sub_100035288(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100032E98(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_100035E08();
      goto LABEL_7;
    }

    sub_100033BDC(v17, a3 & 1);
    v23 = sub_100032E98(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_100035B10(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

unint64_t sub_100035454(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100032CC0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100033FA4(v16, a4 & 1);
      result = sub_100032CC0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10003607C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_1000355B8(uint64_t a1, uint64_t a2, Swift::UInt32 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100032F1C(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100034244(v16, a4 & 1);
      result = sub_100032F1C(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000361E4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_100035718(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100032E10(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;

      return _objc_release_x1();
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_10003634C();
    result = v17;
    goto LABEL_8;
  }

  sub_1000344E0(v14, a3 & 1);
  result = sub_100032E10(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

unint64_t sub_100035860(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100032E10(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100034988(v16, a4 & 1);
      result = sub_100032E10(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000364A8();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v25 = (v21[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v21[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v21[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  v23 = *v22;
  v24 = v22[1];
  *v22 = a1;
  v22[1] = a2;

  return sub_1000083FC(v23, v24);
}

_OWORD *sub_1000359C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100032CC0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100036610();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100034E38(v16, a4 & 1);
    v11 = sub_100032CC0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_1000083B0(v22);

    return sub_100005E14(a1, v22);
  }

  else
  {
    sub_100035C10(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100035B10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_100035BC8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_100035C10(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_100005E14(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_100035C7C()
{
  v1 = v0;
  sub_100005DCC(&qword_1001B95F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;
        v24 = v18;
        result = sub_100005E24(v20, v21, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_100035E08()
{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001B9648);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_10003607C()
{
  v1 = v0;
  sub_100005DCC(&qword_1001B95E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000361E4()
{
  v1 = v0;
  sub_100005DCC(&qword_1001BAF08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10003634C()
{
  v1 = v0;
  sub_100005DCC(&qword_1001B9608);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000364A8()
{
  v1 = v0;
  sub_100005DCC(&qword_1001B9600);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = sub_100005E64(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100036610()
{
  v1 = v0;
  sub_100005DCC(&qword_1001BE230);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10000BFEC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100005E14(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1000367B4()
{
  result = qword_1001BBBD0;
  if (!qword_1001BBBD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BBBD0);
  }

  return result;
}

uint64_t sub_10003685C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000368A8(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = _swiftEmptyArrayStorage;
    sub_100020C44(0, v2 & ~(v2 >> 63), 0);
    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v34 = v3;
    v35 = v4;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v9 = v34;
        v8 = v35;
        v10 = v36;
        v11 = v1;
        sub_1000DD67C(v34, v35, v36, v1);
        v13 = v12;
        v14 = [v12 events];

        v15 = v32;
        v37 = v32;
        v17 = v32[2];
        v16 = v32[3];
        if (v17 >= v16 >> 1)
        {
          sub_100020C44((v16 > 1), v17 + 1, 1);
          v15 = v37;
        }

        v15[2] = v17 + 1;
        v15[v17 + 4] = v14;
        v32 = v15;
        if (v31)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          sub_100005DCC(&qword_1001BDDC0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v33, 0);
          if (v5 == v30)
          {
LABEL_32:
            sub_10006710C(v34, v35, v36);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v18 = 1 << *(v11 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(v29 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v8)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_10006710C(v9, v8, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_10006710C(v9, v8, 0);
          }

LABEL_31:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

id sub_100036BFC(void *a1)
{
  v3 = type metadata accessor for B389RestrictedViewController();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v11.receiver = v4;
  v11.super_class = v3;
  v5 = objc_msgSendSuper2(&v11, "initWithContentView:", 0);
  result = [objc_opt_self() defaultConfiguration];
  if (result)
  {
    v7 = result;
    v10.receiver = v1;
    v10.super_class = sub_100005DCC(&unk_1001BBCE0);
    v8 = objc_msgSendSuper2(&v10, "initAsSingleCardWithContentViewController:containerLayoutMargins:configuration:", v5, v7, 6.0, 6.0, 6.0, 6.0);

    v9 = v8;
    [v9 setOverrideUserInterfaceStyle:1];

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100036D24()
{
  v1 = v0;
  v2 = sub_100005DCC(&qword_1001BA000);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v11);
  v16 = &v28 - v15;
  v17 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v29 = v17;
  sub_100127D64(v18, v29);
  static DispatchTime.now()();
  *v8 = 90;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v28 = *(v10 + 8);
  v28(v13, v9);
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001BAF20);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Starting timeout.", v22, 2u);
  }

  (*(v10 + 16))(v13, v16, v9);
  (*(v10 + 56))(v4, 1, 1, v9);
  sub_1000122EC(0, &qword_1001BCE90);
  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  type metadata accessor for PushableTimer(0);
  swift_allocObject();
  v25 = v1;
  v26 = sub_1000235B4(v13, v4, v23, sub_1000671DC, v24);

  *&v25[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout] = v26;

  swift_getObjectType();
  OS_dispatch_source.resume()();

  sub_10003872C(v27);

  return (v28)(v16, v9);
}

uint64_t sub_100037178(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_1001BE200;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_100025698(&unk_1001BBBE0, v3);
      for (i = 0; i != v14; ++i)
      {
        sub_100005DCC(v3);
        v18 = v3;
        v19 = sub_1000DD364(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_1000122EC(0, &qword_1001BBBD0);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100037470()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BAF20);
  v1 = sub_10000D298(v0, qword_1001BAF20);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_100037598()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories);
  if (!v1)
  {
    return 0;
  }

  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v3)
  {
    v4 = 0;
    v30 = v1 + 32;
    v31 = v1 & 0xC000000000000001;
    v5 = &_swiftEmptyArrayStorage;
    v28 = v2;
    v29 = v1;
    v27 = v3;
    while (1)
    {
      if (v31)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v2 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v30 + 8 * v4);
      }

      v34 = v6;
      v7 = __OFADD__(v4, 1);
      v8 = v4 + 1;
      if (v7)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v3 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v32 = v8;
      v33 = v5;
      v9 = [v6 roles];
      sub_1000122EC(0, &qword_1001BE240);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v10 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
        if (!v11)
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_25;
        }
      }

      sub_100020C24(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_47;
      }

      v12 = 0;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = *(&_swiftEmptyArrayStorage + 2);
        v16 = *(&_swiftEmptyArrayStorage + 3);
        v17 = v34;
        if (v15 >= v16 >> 1)
        {
          sub_100020C24((v16 > 1), v15 + 1, 1);
        }

        ++v12;
        *(&_swiftEmptyArrayStorage + 2) = v15 + 1;
        v18 = &_swiftEmptyArrayStorage + 16 * v15;
        *(v18 + 4) = v17;
        *(v18 + 5) = v14;
      }

      while (v11 != v12);

      v2 = v28;
      v1 = v29;
      v3 = v27;
LABEL_26:
      v19 = *(&_swiftEmptyArrayStorage + 2);
      v5 = v33;
      v20 = v33[2];
      v21 = v20 + v19;
      if (__OFADD__(v20, v19))
      {
        goto LABEL_45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v21 <= v33[3] >> 1)
      {
        if (*(&_swiftEmptyArrayStorage + 2))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v20 <= v21)
        {
          v23 = v20 + v19;
        }

        else
        {
          v23 = v20;
        }

        v5 = sub_100032730(isUniquelyReferenced_nonNull_native, v23, 1, v33);
        if (*(&_swiftEmptyArrayStorage + 2))
        {
LABEL_35:
          if ((v5[3] >> 1) - v5[2] < v19)
          {
            goto LABEL_48;
          }

          sub_100005DCC(&qword_1001BA780);
          swift_arrayInitWithCopy();

          if (v19)
          {
            v24 = v5[2];
            v7 = __OFADD__(v24, v19);
            v25 = v24 + v19;
            if (v7)
            {
              goto LABEL_49;
            }

            v5[2] = v25;
          }

          goto LABEL_7;
        }
      }

      if (v19)
      {
        goto LABEL_46;
      }

LABEL_7:
      v4 = v32;
      if (v32 == v3)
      {
        goto LABEL_41;
      }
    }
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_41:

  return v5;
}

void *sub_1000378F8()
{
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleName);
LABEL_15:

    return v1;
  }

  result = sub_100037598();
  if (!result)
  {
LABEL_6:
    v1 = 0;
    goto LABEL_15;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8) == 1)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < result[2])
  {
    v4 = result[2 * v3 + 5];

    v5 = [v4 roleId];
    if (v5 == SPBeaconRoleIdOther)
    {
      v6 = [objc_opt_self() mainBundle];
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();
      v9 = sub_1001279D0(v6, v7, v8);
    }

    else
    {
      v9 = [v4 role];
    }

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = (v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fnameDisplay);
    v13 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fnameDisplay + 8);
    if (v13)
    {
      v14 = *v12;
      v15 = objc_opt_self();

      v16 = [v15 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = sub_1001279D0(v16, v17, v18);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100005DCC(&unk_1001BBB70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10016CCD0;
      *(v20 + 56) = &type metadata for String;
      v21 = sub_10000BF44();
      *(v20 + 32) = v14;
      *(v20 + 40) = v13;
      *(v20 + 96) = &type metadata for String;
      *(v20 + 104) = v21;
      *(v20 + 64) = v21;
      *(v20 + 72) = v1;
      *(v20 + 80) = v11;
      v1 = static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void *sub_100037BF8()
{
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleEmoji + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleEmoji);
LABEL_10:

    return v1;
  }

  result = sub_100037598();
  if (!result)
  {
LABEL_6:
    v1 = 0;
    goto LABEL_10;
  }

  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8) == 1)
  {

    goto LABEL_6;
  }

  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex);
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

uint64_t sub_100037D20()
{
  v1 = [v0 view];
  if (!v1)
  {
    return 30;
  }

  v2 = v1;
  v3 = [v1 window];

  if (!v3)
  {
    return 30;
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 1)
  {
    return 2;
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 activeInterfaceOrientation];

  if (v7 > 0x40)
  {
    return 0;
  }

  if (v7 == 64)
  {
    return 0;
  }

  return 1 << v7;
}

void sub_100037E28(char a1)
{
  v2 = v1;
  v66.receiver = v1;
  v66.super_class = type metadata accessor for B389SetupMainViewController(0);
  objc_msgSendSuper2(&v66, "viewWillAppear:", a1 & 1);
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "B389SetupMainViewController viewWillAppear", v7, 2u);
  }

  v8 = [v2 _remoteViewControllerProxy];
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_retain] = v8;
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

  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central;
  v16 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central];
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central] = v14;
  v17 = v14;

  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  sub_1000122EC(0, &qword_1001BBAF8);
  v18 = Array._bridgeToObjectiveC()().super.isa;
  sub_100004F48(_swiftEmptyArrayStorage);
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v17 scanForPeripheralsWithServices:v18 options:v19];

  v20 = *&v2[v15];
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = [v20 sharedPairingAgent];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = v21;
  [v21 setDelegate:v2];

  v23 = [objc_allocWithZone(SVSCommonNavController) init];
  v24 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav;
  v25 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav] = v23;
  v26 = v23;

  if (!v26)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v26 setDelegate:v2];

  v27 = *&v2[v24];
  if (!v27)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v27 setNavigationBarHidden:1];
  v28 = *&v2[v24];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v28 setModalPresentationStyle:4];
  v29 = *&v2[v24];
  if (!v29)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v29 setTransitioningDelegate:*&v2[v24]];
  v30 = [objc_allocWithZone(type metadata accessor for B389StartViewController()) initWithMainController:v2];
  v31 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC;
  v32 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC];
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC] = v30;

  v33 = sub_10005FD40();
  v34 = *&v2[v24];
  if (v33)
  {
    if (!v34)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_100005DCC(&qword_1001BBB00);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10016D240;
    v36 = *&v2[v31];
    if (!v36)
    {
LABEL_36:
      __break(1u);
      return;
    }

    *(v35 + 32) = v36;
    sub_1000122EC(0, &qword_1001BCEA0);
    v37 = v34;
    v38 = v36;
  }

  else
  {
    if (!v34)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    sub_100005DCC(&qword_1001BBB00);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10016D240;
    v40 = objc_allocWithZone(sub_100005DCC(&unk_1001BBCE0));
    v37 = v34;
    *(v39 + 32) = sub_100036BFC(v2);
    sub_1000122EC(0, &qword_1001BCEA0);
  }

  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setViewControllers:v41];

  v42 = sub_100005DCC(&qword_1001BBCC8);
  v43 = objc_allocWithZone(v42);
  v44 = objc_allocWithZone(type metadata accessor for B389CustomNameViewController());
  v45 = v2;
  v46 = sub_10009EAF4(v45);
  v47 = objc_opt_self();
  v48 = [v47 defaultConfiguration];
  if (!v48)
  {
    goto LABEL_32;
  }

  v49 = v48;
  v65.receiver = v43;
  v65.super_class = v42;
  v50 = objc_msgSendSuper2(&v65, "initAsSingleCardWithContentViewController:containerLayoutMargins:configuration:", v46, v48, 6.0, 6.0, 6.0, 6.0);

  [v50 setOverrideUserInterfaceStyle:1];
  v51 = *&v45[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC];
  *&v45[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC] = v50;

  v52 = sub_100005DCC(&qword_1001BBB60);
  v53 = objc_allocWithZone(v52);
  v54 = objc_allocWithZone(type metadata accessor for B389LinkingViewController());
  v55 = v45;
  v56 = sub_100014AF4(v55);
  v57 = [v47 defaultConfiguration];
  if (!v57)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v58 = v57;
  v64.receiver = v53;
  v64.super_class = v52;
  v59 = objc_msgSendSuper2(&v64, "initAsSingleCardWithContentViewController:containerLayoutMargins:configuration:", v56, v57, 6.0, 6.0, 6.0, 6.0);

  [v59 setOverrideUserInterfaceStyle:1];
  v60 = *&v55[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC];
  *&v55[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC] = v59;

  v61 = [objc_allocWithZone(type metadata accessor for B389LoadingViewController()) initWithMainController:v55];
  v62 = *&v55[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC];
  *&v55[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC] = v61;

  if (v55[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsNFCUI] == 1)
  {
    sub_1000385B8();
  }

  sub_10003872C(v63);
  swift_unknownObjectRelease();
}

void sub_1000385B8()
{
  v1 = v0;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAF20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "showNFCStatus", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC);
    v9 = v8;
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for B389NFCStatusViewController()) initWithMainController:v1];
    v8 = 0;
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = v9;
  v13 = v9;
  v10 = v8;

  v11 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
  if (v11)
  {
    v12 = v11;
    sub_100127D64(v12, v13);
  }

  else
  {
    __break(1u);
  }
}

void sub_10003872C(uint64_t a1)
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
  sub_10005F3E4(&v10);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v10;

  if (v5 != 1)
  {
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BAF20);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, v8, "Unexpected quantity of B389SetupMainViewController instances: %lu. fault is likely due to a retain cycle.", v9, 0xCu);
    }
  }

  sub_100051170();
  if ((*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsNFCUI) & 1) == 0)
  {
    sub_1000401A4();
    sub_100043B64();
    sub_100051274();
    sub_100044204();
    sub_100042770();
    sub_1000435FC();
    sub_100045578();
    sub_1000484E8();
    sub_1000488EC();
    sub_1000401A4();
    sub_100048BB4();
    sub_100049354();
    sub_100049AD8();
    sub_100045F1C();
    sub_100043EB4();
    sub_10004A808();
    sub_10004D354();
    sub_10004DB40();
    sub_10004EC50();
    sub_10004F4F8();
    sub_10004FE78();
    sub_100050338();
    sub_1000461B8();
    sub_10005063C(1);
    sub_100047A98();
    sub_100039158(1);
  }
}

void sub_100038C00(char a1)
{
  v2 = v1;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Main viewDidDisappear", v7, 2u);
  }

  v56.receiver = v2;
  v56.super_class = type metadata accessor for B389SetupMainViewController(0);
  objc_msgSendSuper2(&v56, "viewDidDisappear:", a1 & 1);
  sub_100039158(0);
  v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC;
  v9 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC];
  if (v9)
  {
    [v9 setMainController:0];
    v10 = *&v2[v8];
  }

  else
  {
    v10 = 0;
  }

  *&v2[v8] = 0;

  v11 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC;
  v12 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC];
  if (v12)
  {
    [v12 setMainController:0];
    v13 = *&v2[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v2[v11] = 0;

  v14 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC;
  if (*&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC])
  {
    v55.receiver = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC];
    v55.super_class = sub_100005DCC(&qword_1001BBCC8);
    v15 = objc_msgSendSuper2(&v55, "contentViewController");
    type metadata accessor for B389CustomNameViewController();
    swift_dynamicCastClassUnconditional();
    swift_unknownObjectWeakAssign();

    v16 = *&v2[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v2[v14] = 0;

  v17 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC;
  if (*&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC])
  {
    v54.receiver = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC];
    v54.super_class = sub_100005DCC(&qword_1001BBB60);
    v18 = objc_msgSendSuper2(&v54, "contentViewController");
    type metadata accessor for B389LinkingViewController();
    v19 = swift_dynamicCastClassUnconditional();
    v20 = *(v19 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController);
    *(v19 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_mainController) = 0;

    v21 = *&v2[v17];
  }

  else
  {
    v21 = 0;
  }

  *&v2[v17] = 0;

  v22 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC;
  v23 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC];
  if (v23)
  {
    [v23 setMainController:0];
    v24 = *&v2[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v2[v22] = 0;

  v25 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC;
  v26 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC];
  if (v26)
  {
    [v26 setMainController:0];
    v27 = *&v2[v25];
  }

  else
  {
    v27 = 0;
  }

  *&v2[v25] = 0;

  v28 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC;
  if (*&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC])
  {
    v53.receiver = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC];
    v53.super_class = sub_100005DCC(&unk_1001BBAD0);
    v29 = objc_msgSendSuper2(&v53, "contentViewController");
    type metadata accessor for B389ErrorViewController();
    swift_dynamicCastClassUnconditional();
    swift_unknownObjectWeakAssign();

    v30 = *&v2[v28];
  }

  else
  {
    v30 = 0;
  }

  *&v2[v28] = 0;

  v31 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC;
  v32 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC];
  if (v32)
  {
    [v32 setMainController:0];
    v33 = *&v2[v31];
  }

  else
  {
    v33 = 0;
  }

  *&v2[v31] = 0;

  v34 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC;
  v35 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC];
  if (v35)
  {
    [v35 setMainController:0];
    v36 = *&v2[v34];
  }

  else
  {
    v36 = 0;
  }

  *&v2[v34] = 0;

  v37 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC;
  v38 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC];
  if (v38)
  {
    [v38 setMainController:0];
    v39 = *&v2[v37];
  }

  else
  {
    v39 = 0;
  }

  *&v2[v37] = 0;

  v40 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC;
  v41 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC];
  if (!v41)
  {
    goto LABEL_44;
  }

  v42 = *&v41[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  if (!v42)
  {
    goto LABEL_43;
  }

  v43 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks;
  v44 = *&v41[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_uiStartTicks];
  sub_100024138(*&v41[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler]);
  if (v44)
  {
    v45 = v41;
    v46 = UpTicks()();
    v47 = *&v41[v43];
    v48 = v46 >= v47;
    v49 = v46 - v47;
    if (!v48)
    {
      __break(1u);
      return;
    }

    v50 = UpTicksToSecondsF(_:)(v49);
  }

  else
  {
    v50 = 0.0;
  }

  v42(0, 1, v50);
  sub_100012050(v42);
  v41 = *&v2[v40];
  if (v41)
  {
LABEL_43:
    [v41 setMainController:0];
    v51 = *&v2[v40];
  }

  else
  {
LABEL_44:
    v51 = 0;
  }

  *&v2[v40] = 0;

  v52 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout;
  if (*&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout])
  {
    swift_getObjectType();

    OS_dispatch_source.cancel()();
  }

  *&v2[v52] = 0;

  sub_10003CC30();
}

void sub_100039158(char a1)
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

  aBlock = 0xD00000000000006ELL;
  v57 = 0x8000000100146EA0;
  v62 = 1455;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_1000D991C(&v62, v10);
  swift_endAccess();
  if (v11)
  {
    sub_100050C70(0xD000000000000019, 0x8000000100147780, v8, v7, "%s - started... %s");
  }

  sub_10003E520(0);
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentDisconnect))
  {
    goto LABEL_36;
  }

  *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentDisconnect) = 1;
  v12 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central);
    if (!v13)
    {
LABEL_47:
      __break(1u);
      return;
    }

    v53 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_10000D298(v21, qword_1001BAF20);

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

    if (p_cache[99] != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000D298(v27, qword_1001BAF20);
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

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState) != 2)
  {
    v34 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
    if (v34)
    {
      v35 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager);
      v60 = sub_100050E30;
      v61 = 0;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1000E4BD0;
      v59 = &unk_1001910E0;
      v36 = _Block_copy(&aBlock);
      v37 = v34;
      [v35 invalidatePairingSession:v37 completion:v36];
      _Block_release(v36);
    }
  }

  if (a1)
  {
    sub_100050FE4();
  }

  v38 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central);
  if (!v38)
  {
    __break(1u);
    goto LABEL_47;
  }

  [v38 stopScan];
LABEL_36:
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart) == 1)
  {
    v39 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_reenabledProxCard;
    if ((*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_reenabledProxCard) & 1) == 0)
    {
      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000D298(v40, qword_1001BAF20);
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
      v59 = &unk_1001910B8;
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

  aBlock = 0xD00000000000006ELL;
  v57 = 0x8000000100146EA0;
  v62 = 1499;
  v48._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v48);

  v49 = String.hashValue.getter();

  swift_beginAccess();
  v50 = sub_1000D991C(&v62, v49);
  swift_endAccess();
  if (v50)
  {
    sub_100050C70(0xD000000000000019, 0x8000000100147780, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_100039AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v6 - 8);
  v8 = &aBlock[-1] - v7;
  v9 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_100005EB8(v3 + v9, v8, &unk_1001BE180);
  v10 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = *&v8[*(v10 + 28)];
    sub_10005F788(v8, type metadata accessor for B389PresentationConfig);
    v12 = [objc_allocWithZone(SFDeviceAssetQuery) initWithTagColor:v11];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v15 = objc_allocWithZone(SFDeviceAssetRequestConfiguration);
    aBlock[4] = sub_100067054;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005F258;
    aBlock[3] = &unk_100191658;
    v16 = _Block_copy(aBlock);

    v17 = [v15 initWithQueryResultHandler:v16];
    _Block_release(v16);

    [v17 setTimeout:3.0];
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BAF20);
    v19 = v3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412546;
      *(v22 + 4) = v19;
      *v23 = v3;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v11;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v20, v21, "Loading asset bundle. self: %@, colorCode: %ld", v22, 0x16u);
      sub_10001259C(v23, &unk_1001BBA60);
    }

    v25 = [objc_allocWithZone(SFDeviceAssetManager) init];
    sub_1000122EC(0, &qword_1001BCE90);
    v26 = static OS_dispatch_queue.main.getter();
    [v25 setDispatchQueue:v26];

    [v25 activate];
    [v25 getAssetBundleForDeviceQuery:v12 withRequestConfiguration:v17];
  }
}

uint64_t sub_100039EDC(void *a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void, void))
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001BAF20);

  v13 = a1;

  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v27 = a8;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v16 = 138413570;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v16 + 4) = Strong;
    *v17 = Strong;
    *(v16 + 12) = 2048;
    *(v16 + 14) = a7;
    *(v16 + 22) = 2080;
    sub_100005DCC(&qword_1001BBC20);
    v19 = Optional.debugDescription.getter();
    v21 = sub_10002065C(v19, v20, &v31);

    *(v16 + 24) = v21;
    *(v16 + 32) = 2080;
    *(v16 + 34) = sub_10002065C(a2, a3, &v31);
    *(v16 + 42) = 1024;
    *(v16 + 44) = a4 & 1;
    *(v16 + 48) = 2080;
    if (a5)
    {
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = v23;
    }

    else
    {
      v24 = 0x8000000100145470;
      v22 = 0xD000000000000015;
    }

    v25 = sub_10002065C(v22, v24, &v31);

    *(v16 + 50) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finished loading asset bundle. self: %@, colorCode: %ld, bundle: %s, productType: %s, isFallback: %{BOOL}d, error: %s", v16, 0x3Au);
    sub_10001259C(v17, &unk_1001BBA60);

    swift_arrayDestroy();

    a8 = v27;
  }

  else
  {
  }

  return a8(a1, a5);
}

uint64_t sub_10003A1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v94 = a2;
  v95 = a3;
  v96 = type metadata accessor for B389PresentationConfig.Mode(0);
  v6 = __chkstk_darwin(v96);
  v89 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v89 - v8;
  v10 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v10 - 8);
  v12 = &v89 - v11;
  v13 = type metadata accessor for B389PresentationConfig(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v89 - v18;
  v105 = a1;
  sub_100005DCC(&qword_1001BBC50);
  Optional.unwrap(_:file:line:)();
  v92 = aBlock;
  v20 = [aBlock userInfo];
  if (v20)
  {
    v21 = v20;
    v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v22 = 0;
  }

  v105 = v22;
  sub_100005DCC(&qword_1001BBC58);
  Optional.unwrap(_:file:line:)();

  v23 = aBlock;
  v105 = 0xD000000000000011;
  v106 = 0x8000000100147F60;
  AnyHashable.init<A>(_:)();
  if (v23[2] && (v24 = sub_100032C7C(&aBlock), (v25 & 1) != 0))
  {
    sub_10000BFEC(v23[7] + 32 * v24, &v105);
    sub_10000BF98(&aBlock);

    v26 = swift_dynamicCast();
    v27 = v97;
    v28 = v98;
    if (!v26)
    {
      v27 = 0;
      v28 = 0xF000000000000000;
    }
  }

  else
  {

    sub_10000BF98(&aBlock);
    v27 = 0;
    v28 = 0xF000000000000000;
  }

  v105 = v27;
  v106 = v28;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v105, v106);
  v29 = aBlock;
  v30 = v100;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10005F638(&qword_1001BBC60, type metadata accessor for B389PresentationConfig);
  v91 = v29;
  v90 = v30;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  sub_100025418(v19, v12, type metadata accessor for B389PresentationConfig);
  (*(v14 + 56))(v12, 0, 1, v13);
  v31 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_100067118(v12, v4 + v31, &unk_1001BE180);
  swift_endAccess();
  v32 = *(v13 + 24);
  sub_100025418(&v19[v32], v9, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v17;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v9[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 8))(v9, v36);
    }

    else
    {
      sub_10005F788(v9, type metadata accessor for B389PresentationConfig.Mode);
      v35 = 0;
    }
  }

  else
  {
    v35 = *v9;
  }

  v93 = v4;
  *(v4 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsMulti) = v35;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000D298(v37, qword_1001BAF20);
  v38 = v19;
  sub_100025418(v19, v17, type metadata accessor for B389PresentationConfig);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = v13;
    v43 = v32;
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v41 = 136315138;
    v45 = sub_10001CBC8();
    v46 = v34;
    v48 = v47;
    sub_10005F788(v46, type metadata accessor for B389PresentationConfig);
    v49 = sub_10002065C(v45, v48, &aBlock);

    *(v41 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v39, v40, "presentConfig: %s", v41, 0xCu);
    sub_1000083B0(v44);
    v32 = v43;
    v13 = v42;
  }

  else
  {

    sub_10005F788(v17, type metadata accessor for B389PresentationConfig);
  }

  v50 = v95;
  v51 = v38;
  v52 = &v38[*(v13 + 52)];
  v53 = v52[1];
  v55 = v92;
  v54 = v93;
  if (v53)
  {
    v56 = *v52;
    v57 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v57 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      swift_bridgeObjectRetain_n();
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = v55;
        v61 = v32;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        aBlock = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_10002065C(v56, v53, &aBlock);
        _os_log_impl(&_mh_execute_header, v58, v59, "Using given name: '%s'", v62, 0xCu);
        sub_1000083B0(v63);

        v32 = v61;
        v55 = v60;
        v50 = v95;
      }

      v64 = (v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fnameDisplay);
      *v64 = v56;
      v64[1] = v53;
    }
  }

  v65 = v89;
  sub_100025418(v51 + v32, v89, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10005F788(v65, type metadata accessor for B389PresentationConfig.Mode);
  }

  else
  {
    v66 = v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState;
    *v66 = 5;
    *(v66 + 8) = 1;
    *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState) = 1;
  }

  v67 = [v55 xpcEndpoint];
  if (v67)
  {
    v68 = v67;
    *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsNFCUI) = 1;
    v69 = [objc_allocWithZone(NSXPCListenerEndpoint) init];
    v70 = *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_endpoint);
    *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_endpoint) = v69;
    v71 = v69;

    [v71 _setEndpoint:v68];
    v72 = [objc_allocWithZone(CUXPCAgent) init];
    v73 = *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent);
    *(v54 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent) = v72;
    v74 = v72;

    sub_1000122EC(0, &qword_1001BCE90);
    v75 = static OS_dispatch_queue.main.getter();
    [v74 setDispatchQueue:v75];

    v76 = objc_opt_self();
    v77 = [v76 interfaceWithProtocol:&OBJC_PROTOCOL___SFXPCB389NFCPromptConfigurationReceiving];
    [v74 setExportedInterface:v77];

    [v74 setExportedObject:v54];
    v78 = String._bridgeToObjectiveC()();
    [v74 setLabel:v78];

    [v74 setListenerEndpoint:v71];
    v79 = [v76 interfaceWithProtocol:&OBJC_PROTOCOL___SDXPCClientInterface];
    [v74 setRemoteObjectInterface:v79];

    v103 = sub_10003AF64;
    v104 = 0;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_10001C544;
    v102 = &unk_100191720;
    v80 = _Block_copy(&aBlock);
    [v74 setInterruptionHandler:v80];
    _Block_release(v80);
    v103 = sub_10003AF70;
    v104 = 0;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_10001C544;
    v102 = &unk_100191748;
    v81 = _Block_copy(&aBlock);
    [v74 setInvalidationHandler:v81];
    _Block_release(v81);
    v82 = swift_allocObject();
    *(v82 + 16) = v74;
    v103 = sub_1000671D4;
    v104 = v82;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_1000E4BD0;
    v102 = &unk_100191798;
    v83 = _Block_copy(&aBlock);
    v84 = v74;

    [v84 activateWithCompletion:v83];
    _Block_release(v83);
    swift_unknownObjectRelease();
  }

  v85 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v86 = swift_allocObject();
  v87 = v94;
  v86[2] = v94;
  v86[3] = v50;
  v86[4] = v85;
  sub_100024138(v87);

  sub_100039AC4(sub_1000671C8, v86);

  sub_1000083FC(v91, v90);

  sub_10005F788(v51, type metadata accessor for B389PresentationConfig);
}

void sub_10003AF7C(uint64_t a1, void *a2)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);
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

  aBlock[4] = sub_10003B1BC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E4BD0;
  aBlock[3] = &unk_1001917C0;
  v13 = _Block_copy(aBlock);
  v14 = [a2 remoteObjectProxyWithErrorHandler:v13];
  _Block_release(v13);
  if (v14)
  {
    [v14 preheatXPCConnection];
    swift_unknownObjectRelease();
  }
}

void sub_10003B1BC(uint64_t a1)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAF20);
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

void sub_10003B378(void *a1, uint64_t a2, void (*a3)(void))
{
  if (a3)
  {
    a3();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle);
    *(Strong + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle) = a1;

    if (!a1)
    {
LABEL_7:

      return;
    }

    v17 = 0;
    if ([a1 loadAndReturnError:&v17])
    {
      v7 = v17;
      goto LABEL_7;
    }

    v8 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000D298(v9, qword_1001BAF20);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      swift_getErrorValue();
      v14 = Error.localizedDescription.getter();
      v16 = sub_10002065C(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Couldn't load asset bundle: %s", v12, 0xCu);
      sub_1000083B0(v13);
    }

    else
    {
    }
  }
}

void sub_10003B6A0(uint64_t a1)
{
  v2 = v1;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);

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
    sub_1000368A8(a1);
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

void sub_10003BA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v6 setSensitive:1];
  sub_1000BAC40(*(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fbOtions));
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
  aBlock[4] = sub_10006700C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BB140;
  aBlock[3] = &unk_100191608;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100024138(a2);

  [v8 openURL:v11 configuration:v14 completionHandler:v13];
  _Block_release(v13);
}

void sub_10003BC7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BAF20);

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

void sub_10003BEBC(char a1)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAF20);
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

uint64_t sub_10003BFDC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v9 = sub_100005DCC(&qword_1001BA7B0);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v12 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000D298(v15, qword_1001BAF20);
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
      v20 = sub_100066DBC;
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
  v30 = *(v27 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
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
      sub_10005F958(v32, sub_100066D44, v29);
    }

LABEL_18:
    sub_10003C568(v26, v46, a3, a4, v12);

    return sub_10001259C(v12, &qword_1001BA7B0);
  }

  sub_100024138(a3);
  result = sub_10001259C(v12, &qword_1001BA7B0);
  __break(1u);
  return result;
}

void sub_10003C568(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v26 = a4;
    v16 = type metadata accessor for Logger();
    sub_10000D298(v16, qword_1001BAF20);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "dismissClosure called", v19, 2u);
    }

    sub_100039158(0);
    sub_100005EB8(a5, v13, &qword_1001BA7B0);
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 16) = a3;
    *(v22 + 24) = v23;
    sub_100066AC8(v13, v22 + v20, &qword_1001BA7B0);
    *(v22 + v21) = v15;
    aBlock[4] = sub_100066F18;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100191568;
    v24 = _Block_copy(aBlock);
    sub_100024138(a3);
    v25 = v15;

    [v25 dismissViewControllerAnimated:a2 != 19 completion:v24];
    _Block_release(v24);
  }
}

uint64_t sub_10003C848(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v33 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005DCC(&qword_1001BA7B0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v32 - v15;
  if (a1)
  {
    a1(v14);
  }

  v34 = a3;
  sub_100005EB8(a3, v16, &qword_1001BA7B0);
  v17 = *(v8 + 48);
  v18 = v17(v16, 1, v7);
  sub_10001259C(v16, &qword_1001BA7B0);
  if (v18 == 1)
  {
    v19 = 0;
  }

  else
  {
    v20 = sub_10005FDEC();
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000D298(v21, qword_1001BAF20);
    v19 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[1] = a4;
      v26 = v25;
      *v24 = 138412290;
      *(v24 + 4) = v19;
      *v25 = v19;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v22, v23, "Took assertion: %@", v24, 0xCu);
      sub_10001259C(v26, &unk_1001BBA60);
    }
  }

  sub_10003CC30();
  sub_100005EB8(v34, v13, &qword_1001BA7B0);
  if (v17(v13, 1, v7) == 1)
  {

    return sub_10001259C(v13, &qword_1001BA7B0);
  }

  else
  {
    v29 = v33;
    (*(v8 + 32))(v33, v13, v7);
    v30 = swift_allocObject();
    *(v30 + 16) = v19;
    v31 = v19;
    sub_10003BA38(v29, sub_100066FB4, v30);

    return (*(v8 + 8))(v29, v7);
  }
}

void sub_10003CC30()
{
  v1 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent;
  [*&v0[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = [v0 _remoteViewControllerProxy];
  sub_10003E520(0);
  if (v3)
  {
    if ([v3 respondsToSelector:"invalidate"])
    {
      [v3 invalidate];
    }

    swift_unknownObjectRelease();
  }
}

void sub_10003CCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void *a8)
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
  v53 = &unk_1001911F8;
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

  v54 = sub_1000621E4;
  v55 = v39;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10001BE90;
  v53 = &unk_100191248;
  v41 = _Block_copy(&aBlock);

  v42 = [v31 actionWithTitle:v40 style:0 handler:v41];
  _Block_release(v41);

  [v26 addAction:v42];
  [v26 setPreferredAction:v42];
  [v49 presentViewController:v26 animated:1 completion:0];
}

uint64_t sub_10003D2DC(uint64_t a1, uint64_t a2)
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
  sub_1000BB214(0, 0, v9, &unk_10016E780, v13);
}

uint64_t sub_10003D4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(sub_10003D688, v8, v7);
}

uint64_t sub_10003D688()
{
  (*(v0[12] + 104))(v0[13], enum case for ClientOrigin.other(_:), v0[11]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_10003D76C;
  v2 = v0[14];

  return Session.init(_:)(v2);
}

uint64_t sub_10003D76C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[19] = a1;

  v4 = swift_task_alloc();
  v2[20] = v4;
  *v4 = v3;
  v4[1] = sub_10003D8BC;
  v5 = v2[9];

  return Session.thisDeviceWithCompanion()(v5);
}

uint64_t sub_10003D8BC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_10003DF3C;
  }

  else
  {
    v5 = sub_10003D9F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10003D9F8()
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000D298(v8, qword_1001BAF20);
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
    v18[1] = sub_10003DCB4;

    return Session.setActiveLocationSharingDevice(_:)(v15, v17);
  }
}

uint64_t sub_10003DCB4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10003E140;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_10003DDD0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10003DDD0()
{

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BAF20);
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

uint64_t sub_10003DF3C()
{
  v12 = v0;

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BAF20);
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

uint64_t sub_10003E140()
{
  v12 = v0;

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BAF20);
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

void sub_10003E34C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_dismissed;
  if ((*(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_dismissed) & 1) == 0)
  {
    v5 = *(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
    if (v5)
    {
      if (a2)
      {
        v11[4] = a2;
        v11[5] = a3;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_10001C544;
        v11[3] = &unk_1001916A8;
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

void sub_10003E520(char a1)
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
      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_10000D298(v3, qword_1001BAF20);
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

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BAF20);
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

id sub_10003E7C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  sub_100005DCC(&qword_1001BBC28);
  v7 = swift_allocObject();
  v8 = v7;
  *(v7 + 16) = 0xD00000000000001BLL;
  *(v7 + 24) = 0x800000010016E440;
  if (qword_1001B92E8 != -1)
  {
    v7 = swift_once();
  }

  v9 = qword_1001B9FF8;
  __chkstk_darwin(v7);

  os_unfair_lock_lock(v9 + 4);
  sub_1000673C0(v10);
  v11 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController___doNotReference;
  os_unfair_lock_unlock(v9 + 4);

  *&v4[v11] = v8;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations] = &_swiftEmptySetSingleton;
  v12 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDInfo];
  *v12 = xmmword_10016D2F0;
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  *(v12 + 2) = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_multiThreshold] = -50;
  v13 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v14 = type metadata accessor for B389PresentationConfig(0);
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om;
  type metadata accessor for OnceManager();
  v16 = swift_allocObject();
  *(v16 + 16) = &_swiftEmptySetSingleton;
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_beaconManager;
  *&v4[v17] = [objc_allocWithZone(SPBeaconManager) init];
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_dismissed] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_retain] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC] = 0;
  v18 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager;
  *&v4[v18] = [objc_allocWithZone(SPPairingManager) init];
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_requestedPairingData] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_reenabledProxCard] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didAgreeToLinking] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsMulti] = 0;
  v19 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_followupController;
  *&v4[v19] = [objc_allocWithZone(FLFollowUpController) init];
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapSnapshotter] = 0;
  v20 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex];
  *v20 = 0;
  v20[8] = 1;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionError] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle] = 0;
  v21 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_location];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_shownError] = 0;
  v22 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_remainingCharacteristicsToDiscover;
  *&v4[v22] = sub_1000DE3E4(&off_10018EB60);
  v23 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
  *&v4[v23] = sub_100005954(_swiftEmptyArrayStorage);
  v24 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  *&v4[v24] = sub_100005A48(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredMainService] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startedCharacteristicDiscovery] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentDisconnect] = 0;
  v25 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager];
  v26 = sub_10000518C(_swiftEmptyArrayStorage);
  *v25 = 178;
  v25[1] = v26;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentReadRequest] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentSecondReadRequest] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_storeS1] = xmmword_10016C900;
  v27 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fnameDisplay];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vbVersionStr];
  *v29 = 0;
  v29[1] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_handledS1S2PayloadRead] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionVerified] = 0;
  v30 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcUUID;
  v31 = type metadata accessor for UUID();
  (*(*(v31 - 8) + 56))(&v4[v30], 1, 1, v31);
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsNFCUI] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcConfig] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_endpoint] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent] = 0;
  v32 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_locationShifter;
  *&v4[v32] = [objc_allocWithZone(GEOLocationShifter) init];
  v33 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleName];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleEmoji];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue];
  *v35 = xmmword_10016C900;
  v35[1] = 0u;
  v35[2] = 0u;
  v35[3] = 0u;
  v35[4] = 0u;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories] = 0;
  v36 = &v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState];
  *v36 = 0;
  v36[8] = 1;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState] = 0;
  v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapConfigurationState] = 0;
  *&v4[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController] = 0;
  v37 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fbOtions;
  v38 = sub_100005B44(&off_10018F020);
  sub_100005DCC(&unk_1001BBC30);
  swift_arrayDestroy();
  *&v4[v37] = v38;
  if (a2)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  v42.receiver = v4;
  v42.super_class = type metadata accessor for B389SetupMainViewController(0);
  v40 = objc_msgSendSuper2(&v42, "initWithNibName:bundle:", v39, a3);

  return v40;
}

id sub_10003EE64(void *a1)
{
  v2 = v1;
  sub_100005DCC(&qword_1001BBC28);
  v4 = swift_allocObject();
  v5 = v4;
  *(v4 + 16) = 0xD00000000000001BLL;
  *(v4 + 24) = 0x800000010016E440;
  if (qword_1001B92E8 != -1)
  {
    v4 = swift_once();
  }

  v6 = qword_1001B9FF8;
  __chkstk_darwin(v4);

  os_unfair_lock_lock(v6 + 4);
  sub_1000255C0(v7);
  v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController___doNotReference;
  os_unfair_lock_unlock(v6 + 4);

  *&v2[v8] = v5;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations] = &_swiftEmptySetSingleton;
  v9 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDInfo];
  *v9 = xmmword_10016D2F0;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  *(v9 + 2) = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_multiThreshold] = -50;
  v10 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v11 = type metadata accessor for B389PresentationConfig(0);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om;
  type metadata accessor for OnceManager();
  v13 = swift_allocObject();
  *(v13 + 16) = &_swiftEmptySetSingleton;
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_beaconManager;
  *&v2[v14] = [objc_allocWithZone(SPBeaconManager) init];
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_dismissed] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_retain] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_namingVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_loadingVC] = 0;
  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager;
  *&v2[v15] = [objc_allocWithZone(SPPairingManager) init];
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_requestedPairingData] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_reenabledProxCard] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didAgreeToLinking] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsMulti] = 0;
  v16 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_followupController;
  *&v2[v16] = [objc_allocWithZone(FLFollowUpController) init];
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapSnapshotter] = 0;
  v17 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex];
  *v17 = 0;
  v17[8] = 1;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionError] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle] = 0;
  v18 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_location];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_shownError] = 0;
  v19 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_remainingCharacteristicsToDiscover;
  *&v2[v19] = sub_1000DE3E4(&off_10018EB60);
  v20 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
  *&v2[v20] = sub_100005954(_swiftEmptyArrayStorage);
  v21 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  *&v2[v21] = sub_100005A48(_swiftEmptyArrayStorage);
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredMainService] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startedCharacteristicDiscovery] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentDisconnect] = 0;
  v22 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager];
  v23 = sub_10000518C(_swiftEmptyArrayStorage);
  *v22 = 178;
  v22[1] = v23;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentReadRequest] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentSecondReadRequest] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_storeS1] = xmmword_10016C900;
  v24 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fnameDisplay];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vbVersionStr];
  *v26 = 0;
  v26[1] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_handledS1S2PayloadRead] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionVerified] = 0;
  v27 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcUUID;
  v28 = type metadata accessor for UUID();
  (*(*(v28 - 8) + 56))(&v2[v27], 1, 1, v28);
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsNFCUI] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcConfig] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_endpoint] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_xpcAgent] = 0;
  v29 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_locationShifter;
  *&v2[v29] = [objc_allocWithZone(GEOLocationShifter) init];
  v30 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleName];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_customRoleEmoji];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue];
  *v32 = xmmword_10016C900;
  v32[1] = 0u;
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories] = 0;
  v33 = &v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState];
  *v33 = 0;
  v33[8] = 1;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState] = 0;
  v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapConfigurationState] = 0;
  *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController] = 0;
  v34 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_fbOtions;
  v35 = sub_100005B44(&off_10018F070);
  sub_100005DCC(&unk_1001BBC30);
  swift_arrayDestroy();
  *&v2[v34] = v35;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for B389SetupMainViewController(0);
  v36 = objc_msgSendSuper2(&v38, "initWithCoder:", a1);

  if (v36)
  {
  }

  return v36;
}

void sub_10003F8AC()
{
  sub_1000594F8(319, &qword_1001BB128, type metadata accessor for B389PresentationConfig);
  if (v0 <= 0x3F)
  {
    sub_1000594F8(319, &qword_1001BB130, &type metadata accessor for UUID);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10003FAE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BAF20);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    sub_100005DCC(&unk_1001BBBF0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10002065C(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "setResponseHandler: %s", v9, 0xCu);
    sub_1000083B0(v10);
  }

  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC;
  v16 = *(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC);
  if (v16)
  {
    v17 = *(v3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC);
    v18 = v17;
  }

  else
  {
    v18 = [objc_allocWithZone(type metadata accessor for B389NFCStatusViewController()) initWithMainController:v3];
    v17 = 0;
    v16 = *(v3 + v15);
  }

  *(v3 + v15) = v18;
  v19 = v17;
  v20 = v18;

  v21 = &v20[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  v22 = *&v20[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_responseHandler];
  *v21 = a1;
  *(v21 + 1) = a2;

  sub_100012050(v22);
}

void sub_10003FDAC(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a2.n128_u64[0];
    v6 = _convertErrorToNSError(_:)();
    a2.n128_u64[0] = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a2);
}

void sub_10003FE28(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = qword_1001B9318;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000D298(v6, qword_1001BAF20);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = a1;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "Updated configuration: %@", v10, 0xCu);
      sub_10001259C(v11, &unk_1001BBA60);
    }

    v13 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC;
    v14 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC];
    if (v14)
    {
      v15 = *&v2[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC];
      v16 = v15;
    }

    else
    {
      v16 = [objc_allocWithZone(type metadata accessor for B389NFCStatusViewController()) initWithMainController:v2];
      v15 = 0;
      v14 = *&v2[v13];
    }

    *&v2[v13] = v16;
    v21 = v15;
    v22 = v16;

    v23 = OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig;
    v24 = *&v22[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_nfcConfig];
    v25 = *&v22[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig];
    *&v22[OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_previousNFCConfig] = v24;
    v26 = v7;
    v27 = v24;

    v28 = *&v22[v23];
    *&v22[v23] = a1;
    v29 = v26;

    sub_1000290A4();
  }

  else
  {
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000D298(v17, qword_1001BAF20);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received nil config, dismissing.", v20, 2u);
    }

    [v2 dismiss:0];
  }
}

void sub_1000401A4()
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
  v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v130 = v8;
  sub_1000D99FC(&v136, 0xD00000000000001CLL, 0x8000000100147830);
  swift_endAccess();

  v9 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om);
  *&aBlock = 0xD00000000000006ELL;
  *(&aBlock + 1) = 0x8000000100146EA0;
  v131 = 0x8000000100146EA0;
  *&v136 = 686;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = String.hashValue.getter();

  swift_beginAccess();
  v132 = v9;
  LOBYTE(v8) = sub_1000D991C(&v136, v11);
  swift_endAccess();
  if (v8)
  {
    sub_100050C70(0xD00000000000001CLL, 0x8000000100147830, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_requestedPairingData))
  {
    goto LABEL_4;
  }

  v127 = "ensureUserConsented()";
  v124 = v1;
  *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_requestedPairingData) = 1;
  v15 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v140 = sub_10005F830;
  v141 = v16;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1000BB514;
  *(&v139 + 1) = &unk_100191108;
  v17 = _Block_copy(&aBlock);

  [v15 initiatePairingSessionWithCompletion:v17];
  _Block_release(v17);
  v18 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_beaconManager);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v140 = sub_10005F838;
  v141 = v19;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v139 = sub_1000BB5A0;
  *(&v139 + 1) = &unk_100191130;
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
    sub_1000421E4(0, 0, 0, 0, 0, 0, 0, 0, v5);
    sub_10001259C(v5, &qword_1001BA7B0);
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000D298(v35, qword_1001BAF20);
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

  v40 = (v129 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDInfo);
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    v61 = sub_10000D298(v60, qword_1001BAF20);

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
            v115 = sub_100037538();
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
          sub_1000426B8();
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

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000D298(v55, qword_1001BAF20);
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
    if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session) && *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories))
    {
      swift_beginAccess();
      sub_1000DC818(0xD00000000000001CLL, v7 | 0x8000000000000000);
      swift_endAccess();

      *&aBlock = 0xD00000000000006ELL;
      *(&aBlock + 1) = v131;
      *&v136 = 784;
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = String.hashValue.getter();

      swift_beginAccess();
      v14 = sub_1000D991C(&v136, v13);
      swift_endAccess();
      if (v14)
      {
        sub_100050C70(0xD00000000000001CLL, v7 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
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
  sub_1000426B8();
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10000D298(v91, qword_1001BAF20);
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

uint64_t sub_100041718(void *a1, uint64_t a2)
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
    aBlock[4] = sub_10005F8F0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_1001911D0;
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

uint64_t sub_100041A58(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BAF20);
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

  *(a3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionError) = a2;

  v19 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session;
  v20 = *(a3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
  swift_errorRetain();
  *(a3 + v19) = a1;

  return sub_10003872C(v7);
}

uint64_t sub_100041CCC(uint64_t a1)
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
    aBlock[4] = sub_10005F8A0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C544;
    aBlock[3] = &unk_100191180;
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

uint64_t sub_100041FFC(uint64_t a1, uint64_t a2)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BAF20);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_1000122EC(0, &qword_1001BBB58);
    v9 = Array.description.getter();
    v11 = sub_10002065C(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "roleCategories: %s", v7, 0xCu);
    sub_1000083B0(v8);
  }

  *(a2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleCategories) = a1;

  v12 = *(a2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC);
  if (v12)
  {

    v13 = v12;
    sub_1000A2FC4();
  }

  else
  {
  }

  return sub_10003872C(v14);
}