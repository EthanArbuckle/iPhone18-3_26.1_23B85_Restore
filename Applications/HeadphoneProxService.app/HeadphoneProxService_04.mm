void sub_10006A740()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v62 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_smartChargeClient);
  if (v10)
  {
    v11 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model);
    swift_beginAccess();
    if (v11[19].isa)
    {
      v63 = v9;
      v64 = v2;
      isa = v11[18].isa;
      v13 = qword_10011C6C0;
      v14 = v10;

      if (v13 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      v16 = sub_10000A570(v15, qword_10011E7A0);

      v62[1] = v16;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      v19 = os_log_type_enabled(v17, v18);
      v65 = v11;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v62[0] = v5;
        v21 = v20;
        v22 = swift_slowAlloc();
        v67 = v22;
        *v21 = 136315138;
        v23 = v11[19].isa;
        v66[0] = v11[18].isa;
        v66[1] = v23;

        sub_100008438(&qword_10011E010, &unk_1000D8870);
        v24 = String.init<A>(reflecting:)();
        v26 = sub_100078978(v24, v25, &v67);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "Fetching full charge deadline for %s", v21, 0xCu);
        sub_10000EA94(v22);

        v5 = v62[0];
      }

      v27 = String._bridgeToObjectiveC()();

      v66[0] = 0;
      v28 = [v14 fullChargeDeadlineForDevice:v27 withError:v66];

      v29 = v66[0];
      if (v28)
      {
        v30 = v63;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v29;

        v32 = type metadata accessor for Date();
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        v33 = v65;
        swift_beginAccess();
        sub_10007B9B8(v30, v33 + *(v64 + 152));
        swift_endAccess();
        v34 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v34 + 8);
          ObjectType = swift_getObjectType();
          sub_10007C964(v33, v5, type metadata accessor for HeadphoneModel);
          (*(v35 + 24))(v5, ObjectType, v35);
          swift_unknownObjectRelease();

          sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
        }

        else
        {
        }
      }

      else
      {
        v53 = v66[0];
        v54 = _convertNSErrorToError(_:)();

        swift_willThrow();
        swift_errorRetain();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v66[0] = v58;
          *v57 = 136315138;
          v67 = v54;
          swift_errorRetain();
          sub_100008438(&unk_10011D970, &unk_1000D6500);
          v59 = String.init<A>(describing:)();
          v61 = sub_100078978(v59, v60, v66);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Failed to fetch full charge deadline: %s", v57, 0xCu);
          sub_10000EA94(v58);
        }

        else
        {
        }
      }
    }

    else
    {
      v41 = qword_10011C6C0;
      v42 = v10;
      if (v41 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_10000A570(v43, qword_10011E7A0);

      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v66[0] = v47;
        *v46 = 136315138;
        v48 = sub_10007C964(v11, v5, type metadata accessor for HeadphoneModel);
        v49 = sub_100042610(v48);
        v51 = v50;
        sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
        v52 = sub_100078978(v49, v51, v66);

        *(v46 + 4) = v52;
        _os_log_impl(&_mh_execute_header, v44, v45, "No bluetooth address: %s", v46, 0xCu);
        sub_10000EA94(v47);
      }
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A570(v37, qword_10011E7A0);
    v65 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v65, v38, "Optimized battery charging is not enabled", v39, 2u);
    }

    v40 = v65;
  }
}

void sub_10006AF20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10006AFA0(uint64_t a1, const char *a2, const char *a3)
{
  if (a1)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&qword_10011D950, &unk_1000D88C0);
      v8 = String.init<A>(reflecting:)();
      v10 = sub_100078978(v8, v9, &v16);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, oslog, v5, a3, v6, 0xCu);
      sub_10000EA94(v7);

      return;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A570(v12, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v13, a2, v14, 2u);
    }
  }
}

void sub_10006B1F0(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics;
  if ((*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_didSubmitMetrics) & 1) == 0)
  {
    v16 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v17 = type metadata accessor for HeadphoneModel(0);
    if (!*(v16 + *(v17 + 132)) && ((1 << *(v16 + 136)) & 0xD9FF) == 0)
    {
      v42 = v17;
      v41 = [objc_allocWithZone(SFHeadphoneProxPairingEvent) init];
      v18 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
      swift_beginAccess();
      v40 = v18;
      sub_10000E88C(v1 + v18, v14, &qword_10011DE30, &qword_1000D79F0);
      v39 = *(v4 + 48);
      LODWORD(v38) = v39(v14, 1, v3) != 1;
      sub_10000E950(v14, &qword_10011DE30, &qword_1000D79F0);
      v19 = v41;
      [v41 setAttemptedPairing:v38];
      [v19 setColor:*(v16 + 160)];
      [v19 setAssetFetchDuration:*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetFetchDuration)];
      if (a1)
      {
        swift_errorRetain();
        v20 = _convertErrorToNSError(_:)();
        v38 = v4 + 48;
        v21 = v20;
        v22 = [v20 code];
      }

      else
      {
        v22 = 0;
      }

      v23 = v41;
      [v41 setErrorCode:v22];
      sub_10000E88C(v1 + v40, v12, &qword_10011DE30, &qword_1000D79F0);
      if (v39(v12, 1, v3) == 1)
      {
        sub_10000E950(v12, &qword_10011DE30, &qword_1000D79F0);
        v24 = -1.0;
      }

      else
      {
        (*(v4 + 32))(v7, v12, v3);
        Date.timeIntervalSinceNow.getter();
        v26 = v25;
        (*(v4 + 8))(v7, v3);
        v24 = -v26;
      }

      [v23 setPairingDuration:v24];
      v27 = *(v16 + 136);
      if (v27 == 13)
      {
        v28 = 2;
      }

      else
      {
        v28 = v27 == 10;
      }

      [v23 setPairingType:v28];
      [v23 setProductID:*(v16 + v42[34])];
      Strong = swift_unknownObjectWeakLoadStrong();
      v30 = -1.0;
      v31 = -1.0;
      if (Strong)
      {
        v32 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks);
        swift_unknownObjectRelease();
        v33 = *(v16 + v42[17]);
        v31 = -1.0;
        if (v33)
        {
          if (v32 < v33)
          {
            __break(1u);
            goto LABEL_24;
          }

          v31 = UpTicksToMilliseconds();
        }
      }

      [v23 setFoundToFirstCardDuration:v31];
      v34 = swift_unknownObjectWeakLoadStrong();
      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = *(v34 + OBJC_IVAR____TtC20HeadphoneProxService15HeadphoneRouter_initialCardDisplayUpTicks);
      swift_unknownObjectRelease();
      v36 = *(v16 + v42[46]);
      if (!v36)
      {
        goto LABEL_22;
      }

      if (v35 >= v36)
      {
        v30 = UpTicksToMilliseconds();
LABEL_22:
        [v23 setTriggerToFirstCardDuration:v30];
        [v23 submitEvent];

        *(v1 + v15) = 1;
        return;
      }

LABEL_24:
      __break(1u);
    }
  }
}

uint64_t sub_10006B6A4()
{
  v1 = v0;
  v2 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v49[-1] - v4;
  v6 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v6 + 136) == 14)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_wantsTemporaryPairing);
  }

  else
  {
    v7 = 0;
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = sub_10000A570(v8, qword_10011E7A0);

  v48 = v9;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v49[0] = v13;
    *v12 = 136315394;
    v14 = *(v6 + 152);
    v49[1] = *(v6 + 144);
    v49[2] = v14;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v15 = String.init<A>(reflecting:)();
    v17 = sub_100078978(v15, v16, v49);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v10, v11, "Connecting device bluetoothAddress = %s guestMode = %{BOOL}d", v12, 0x12u);
    sub_10000EA94(v13);
  }

  Date.init()();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  v19 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate;
  swift_beginAccess();
  sub_10007B9B8(v5, v1 + v19);
  swift_endAccess();
  v20 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v21 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v22 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v25 = *(v6 + 144);
  v24 = *(v6 + 152);
  v26 = *(v22 + 16);

  swift_unknownObjectRetain();
  v26(v25, v24, ObjectType, v22);
  swift_unknownObjectRelease();
  v27 = *v20;
  v28 = v20[1];
  v29 = swift_getObjectType();
  v30 = *(v28 + 136);

  swift_unknownObjectRetain();
  v30(sub_10007BA28, v1, v29, v28);
  swift_unknownObjectRelease();
  v31 = *v20;
  v32 = v20[1];
  v33 = swift_getObjectType();
  v34 = *(v32 + 40);
  swift_unknownObjectRetain();
  v34(v7, v33, v32);
  swift_unknownObjectRelease();
  if ([*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed])
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Temporary Managed Pairing: Temp Pairing Mode is Enabled", v37, 2u);
    }

    v38 = *v20;
    v39 = v20[1];
    v40 = swift_getObjectType();
    v41 = *(v39 + 64);
    swift_unknownObjectRetain();
    v41(1, v40, v39);
    swift_unknownObjectRelease();
  }

  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isActiveScanRequired) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbFriendlyNameDiscovery) setDiscoveryFlags:0];
  }

  v42 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);

  sub_1000993EC();

  v44 = *v20;
  v43 = v20[1];
  v45 = swift_getObjectType();
  v46 = *(v43 + 184);
  swift_unknownObjectRetain();
  v46(v45, v43);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006BB90(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_10007B8A8(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_10007CA2C(&qword_10011EA68, &type metadata accessor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v25)
  {
    v9 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    v22 = xmmword_1000D5250;
    do
    {
      v12 = v24;
      sub_100008438(&qword_10011EA80, &unk_1000DA490);
      v13 = swift_allocObject();
      *(v13 + 16) = v22;
      *(v13 + 56) = &type metadata for UInt8;
      *(v13 + 64) = &protocol witness table for UInt8;
      *(v13 + 32) = v12;
      v14 = String.init(format:_:)();
      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1000CC104(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_1000CC104((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      v19 = &v9[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v25 != 1);
  }

  (*(v21 + 8))(v7, v4);
  v23 = v9;
  sub_100008438(&qword_10011EA70, &unk_1000D8810);
  sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
  v10 = BidirectionalCollection<>.joined(separator:)();

  return v10;
}

uint64_t sub_10006BE8C()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38[0] = v6;
    *v5 = 136315394;
    v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v8 = *(v7 + 152);
    v38[1] = *(v7 + 144);
    v38[2] = v8;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, v38);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    LODWORD(v7) = *(v7 + 136);

    *(v5 + 14) = v7 == 14;

    _os_log_impl(&_mh_execute_header, v3, v4, "Disconnecting device bluetoothAddress = %s guestMode = %{BOOL}d", v5, 0x12u);
    sub_10000EA94(v6);
  }

  else
  {
  }

  v12 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v13 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v14 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 88);
  swift_unknownObjectRetain();
  v16(1, ObjectType, v14);
  swift_unknownObjectRelease();
  v17 = *v12;
  v18 = v12[1];
  v19 = swift_getObjectType();
  v20 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v21 = *(v20 + 144);
  v22 = *(v20 + 152);
  v23 = *(v18 + 16);

  swift_unknownObjectRetain();
  v23(v21, v22, v19, v18);
  swift_unknownObjectRelease();
  v24 = *v12;
  v25 = v12[1];
  v26 = swift_getObjectType();
  v27 = *(v25 + 136);

  swift_unknownObjectRetain();
  v27(sub_10007C058, v1, v26, v25);
  swift_unknownObjectRelease();
  v29 = *v12;
  v28 = v12[1];
  v30 = swift_getObjectType();
  v31 = *(v20 + 136) == 14;
  v32 = *(v28 + 40);
  swift_unknownObjectRetain();
  v32(v31, v30, v28);
  swift_unknownObjectRelease();
  v34 = *v12;
  v33 = v12[1];
  v35 = swift_getObjectType();
  v36 = *(v33 + 184);
  swift_unknownObjectRetain();
  v36(v35, v33);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006C208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v4;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = v20;
  v17 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v22 + 8))(v10, v7);
  return (*(v11 + 8))(v14, v21);
}

uint64_t sub_10006C500()
{
  v1 = v0;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_retain_n();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v32[0] = v6;
    *v5 = 136315394;
    v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    swift_beginAccess();
    v8 = *(v7 + 152);
    v32[1] = *(v7 + 144);
    v32[2] = v8;

    sub_100008438(&qword_10011E010, &unk_1000D8870);
    v9 = String.init<A>(reflecting:)();
    v11 = sub_100078978(v9, v10, v32);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    LODWORD(v7) = *(v7 + 136);

    *(v5 + 14) = v7 == 14;

    _os_log_impl(&_mh_execute_header, v3, v4, "Unpairing device bluetoothAddress = %s guestMode = %{BOOL}d", v5, 0x12u);
    sub_10000EA94(v6);
  }

  else
  {
  }

  v12 = [objc_allocWithZone(SFBluetoothPairingSession) init];
  v13 = (v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v14 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  *v13 = v12;
  v13[1] = &off_100106DD0;
  v15 = v12;
  swift_unknownObjectRelease();
  [v15 setUnpairOnly:1];

  v16 = *v13;
  v17 = v13[1];
  ObjectType = swift_getObjectType();
  v19 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v21 = *(v19 + 144);
  v20 = *(v19 + 152);
  v22 = *(v17 + 16);

  swift_unknownObjectRetain();
  v22(v21, v20, ObjectType, v17);
  swift_unknownObjectRelease();
  v23 = *v13;
  v24 = v13[1];
  v25 = swift_getObjectType();
  v26 = *(v24 + 136);

  swift_unknownObjectRetain();
  v26(sub_10007BFFC, v1, v25, v24);
  swift_unknownObjectRelease();
  v28 = *v13;
  v27 = v13[1];
  v29 = swift_getObjectType();
  v30 = *(v27 + 184);
  swift_unknownObjectRetain();
  v30(v29, v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_10006C840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_10006278C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106518;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v7, v4);
  return (*(v8 + 8))(v11, v16);
}

id sub_10006CB3C(char a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0xD000000000000015 && 0x80000001000E0A10 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (a1)
    {
      v7 = v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v8 = type metadata accessor for HeadphoneModel(0);
      if (*(v7 + *(v8 + 164)))
      {
        v9 = *(v7 + *(v8 + 164));
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 0;
    }

    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011E7A0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136315138;
      v15 = sub_10007B94C(v9);
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100078978(v16, v18, &v27);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Setting Announce Calls to %s", v13, 0xCu);
      sub_10000EA94(v14);
    }

    return [objc_opt_self() setAnnounceCallsState:v9];
  }

  else if (a2 == 0x6C61626F6C67 && a3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v21 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v22 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v21);
    return (*(v22 + 8))(a1 & 1, v21, v22);
  }

  else
  {
    v23 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v24 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v23);
    (*(v24 + 16))(v28, a2, a3, v23, v24);
    v25 = v29;
    v26 = v30;
    sub_10000E7E4(v28, v29);
    (*(v26 + 56))(a1 & 1, v25, v26);
    return sub_10000EA94(v28);
  }
}

id sub_10006CE54()
{
  v1 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v1 + 152))
  {
    v2 = *(v1 + 144);

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(HPHeadphoneEndCallManager) initWithBluetoothAddress:v3];

  v5 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager) = v4;
  v6 = v4;

  if (v6)
  {
    v7 = [v6 isStatusUnknown];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011E7A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100078978(0xD00000000000001CLL, 0x80000001000E0AD0, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "endCallManager is nil in %s", v11, 0xCu);
      sub_10000EA94(v12);
    }

    return 0;
  }

  return v7;
}

void sub_10006D048()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setConfigForSingleTap];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001DLL, 0x80000001000E09D0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D1CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setConfigForDoubleTap];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001DLL, 0x80000001000E09F0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D350()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_endCallManager);
  if (v1)
  {

    [v1 setStatusToDone];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD000000000000016, 0x80000001000E0B60, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "endCallManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006D4D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v1)
  {

    [v1 setMuteCallConfig];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001ALL, 0x80000001000E0B80, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "headphoneFeatureManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

id sub_10006D658()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v2)
  {
    return [v2 getColorCode];
  }

  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v5 = *(v4 + 152);
  v6 = *(v4 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v5)
  {
    v7 = *(v4 + 144);

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v8 productID:v6];

  v10 = *(v3 + v1);
  *(v3 + v1) = v9;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011E7A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Mute Call: Get Color Code, init Headphone Feature Manager", v14, 2u);
  }

  v2 = *(v3 + v1);
  if (v2)
  {
    return [v2 getColorCode];
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  sub_10000A570(v11, qword_10011E7A0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_100078978(0x726F6C6F43746567, 0xEE00292865646F43, &v21);
    _os_log_impl(&_mh_execute_header, v16, v17, "Mute Call: headphoneFeatureManager is nil in %s", v18, 0xCu);
    sub_10000EA94(v19);
  }

  v20 = v3 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  return (*(v20 + 160) & 0xF);
}

id sub_10006D940()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v2)
  {
    return [v2 shouldShowAdaptiveControlsProxCard];
  }

  v3 = v0;
  v4 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v5 = *(v4 + 152);
  v6 = *(v4 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v5)
  {
    v7 = *(v4 + 144);

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v8 productID:v6];

  v10 = *(v3 + v1);
  *(v3 + v1) = v9;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011E7A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100078978(0xD000000000000025, 0x80000001000E0AF0, &v21);
    _os_log_impl(&_mh_execute_header, v12, v13, "Headphone Feature Manager Initialized in %s", v14, 0xCu);
    sub_10000EA94(v15);
  }

  v2 = *(v3 + v1);
  if (v2)
  {
    return [v2 shouldShowAdaptiveControlsProxCard];
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  sub_10000A570(v11, qword_10011E7A0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100078978(0xD000000000000025, 0x80000001000E0AF0, &v21);
    _os_log_impl(&_mh_execute_header, v17, v18, "headphoneFeatureManager is nil in %s", v19, 0xCu);
    sub_10000EA94(v20);
  }

  return 0;
}

void sub_10006DC58()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v1)
  {

    [v1 setAdaptiveControlsStatus];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v7 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100078978(0xD00000000000001FLL, 0x80000001000E0BA0, &v7);
      _os_log_impl(&_mh_execute_header, oslog, v3, "headphoneFeatureManager is nil in %s", v4, 0xCu);
      sub_10000EA94(v5);
    }
  }
}

void sub_10006DDDC(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager))
  {
    v2 = a1 & 1;
    v3 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);

    [v3 setAdaptiveControlsAdaptiveMode:v2];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100078978(0xD000000000000029, 0x80000001000E0BC0, &v9);
      _os_log_impl(&_mh_execute_header, oslog, v5, "headphoneFeatureManager is nil in %s", v6, 0xCu);
      sub_10000EA94(v7);
    }
  }
}

void sub_10006DF68(char a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = v1;
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v7 = *(v6 + 152);
  v8 = *(v6 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v7)
  {
    v9 = *(v6 + 144);

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v10 productID:v8];

  v12 = *(v5 + v3);
  *(v5 + v3) = v11;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A570(v13, qword_10011E7A0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100078978(0xD00000000000002FLL, 0x80000001000E0A30, &v22);
    _os_log_impl(&_mh_execute_header, v14, v15, "Headphone Feature Manager Initialized in %s.", v16, 0xCu);
    sub_10000EA94(v17);
  }

  v4 = *(v5 + v3);
  if (v4)
  {
LABEL_10:
    [v4 setAdaptiveControlsPersonalizedVolume:a1 & 1];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    sub_10000A570(v13, qword_10011E7A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100078978(0xD00000000000002FLL, 0x80000001000E0A30, &v22);
      _os_log_impl(&_mh_execute_header, v18, v19, "headphoneFeatureManager is nil in %s", v20, 0xCu);
      sub_10000EA94(v21);
    }
  }
}

void sub_10006E28C(char a1)
{
  v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager;
  v4 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  if (v4)
  {
    goto LABEL_10;
  }

  v5 = v1;
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v7 = *(v6 + 152);
  v8 = *(v6 + *(type metadata accessor for HeadphoneModel(0) + 136));
  if (v7)
  {
    v9 = *(v6 + 144);

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v10 productID:v8];

  v12 = *(v5 + v3);
  *(v5 + v3) = v11;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A570(v13, qword_10011E7A0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_100078978(0xD000000000000032, 0x80000001000E0A60, &v22);
    _os_log_impl(&_mh_execute_header, v14, v15, "Headphone Feature Manager Initialized in %s.", v16, 0xCu);
    sub_10000EA94(v17);
  }

  v4 = *(v5 + v3);
  if (v4)
  {
LABEL_10:
    [v4 setAdaptiveControlsConversationAwareness:a1 & 1];
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    sub_10000A570(v13, qword_10011E7A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100078978(0xD000000000000032, 0x80000001000E0A60, &v22);
      _os_log_impl(&_mh_execute_header, v18, v19, "headphoneFeatureManager is nil in %s", v20, 0xCu);
      sub_10000EA94(v21);
    }
  }
}

uint64_t sub_10006E5B0()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v6 + 152))
  {
    v7 = *(v6 + 144);
    v8 = String.uppercased()();
    type metadata accessor for HeadphoneProxFeatureManager();
    static HeadphoneProxFeatureManager.shared.getter();
    v9 = dispatch thunk of HeadphoneProxFeatureManager.connectedDevices.getter();

    if (*(v9 + 16))
    {
      v10 = sub_1000CD118(v8._countAndFlagsBits, v8._object);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        static HeadphoneProxFeatureManager.shared.getter();
        v13 = [v12 dynamicEndOfChargeCapability] == 2;
        swift_weakInit();
        swift_weakDestroy();
        sub_10006E924(v13);

        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100047C68();
          swift_unknownObjectRelease();
        }

        *(v6 + *(v2 + 88)) = 0;
        v14 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v15 = *(v14 + 8);
          ObjectType = swift_getObjectType();
          sub_10007C964(v6, v5, type metadata accessor for HeadphoneModel);
          (*(v15 + 24))(v5, ObjectType, v15);
          swift_unknownObjectRelease();

          return sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
        }

        else
        {
        }
      }
    }
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A570(v18, qword_10011E7A0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100078978(0xD000000000000021, 0x80000001000E0AA0, &v23);
    _os_log_impl(&_mh_execute_header, v19, v20, "%s dependencies not met no device and or btAddress!", v21, 0xCu);
    sub_10000EA94(v22);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10006E924(char a1)
{
  v10 = [objc_allocWithZone(AADeviceConfig) init];
  if (a1)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "BatteryCharingFeature: dynamicEndOfChargeState setting temp disabled", v5, 2u);
      v6 = &selRef_setChangeDynamicEndOfChargeState_;
LABEL_10:

      goto LABEL_13;
    }

    v6 = &selRef_setChangeDynamicEndOfChargeState_;
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011E7A0);
    v3 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v3, v8, "BatteryCharingFeature: optimizedBatteryChargingState setting temp disabled", v9, 2u);
      v6 = &selRef_setChangeOptimizedBatteryChargingState_;
      goto LABEL_10;
    }

    v6 = &selRef_setChangeOptimizedBatteryChargingState_;
  }

LABEL_13:

  [v10 *v6];
  HeadphoneProxFeatureManager.updateDevice(for:deviceAddress:usecase:completion:)();
}

void sub_10006EB48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_10011E7A0);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "### Restoring FindMy Install started", v9, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, oslog, v3, "### Restoring FindMy app failed: %@\n", v4, 0xCu);
    sub_10000E950(v5, &unk_10011D820, &qword_1000D7280);

LABEL_10:

    return;
  }
}

uint64_t sub_10006ED9C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_100008438(&qword_10011DE28, &unk_1000D98B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v11(v9, a3);

  return sub_10000E950(v9, &qword_10011DE28, &unk_1000D98B0);
}

uint64_t sub_10006EEF0(uint64_t a1, uint64_t a2)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_10011E7A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pairing did complete", v7, 2u);
  }

  if (a1)
  {
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v12 = String.init<A>(describing:)();
      v14 = sub_100078978(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to pair device: %s", v10, 0xCu);
      sub_10000EA94(v11);
    }

    v15 = a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 8))(0, ObjectType, v16);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    sub_10006F154();
  }

  sub_10006B1F0(a1);
  return sub_10006F864();
}

uint64_t sub_10006F154()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  __chkstk_darwin(v1);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTimeInterval();
  v56 = *(v9 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v47 - v19;
  v60 = v0;
  v21 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if (*(v21 + *(type metadata accessor for HeadphoneModel(0) + 132)))
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011E7A0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Skipping device authenticity check - test mode detected", v25, 2u);
    }

    return sub_10006FC54();
  }

  else
  {
    v48 = v18;
    v50 = v12;
    v52 = v20;
    v53 = v14;
    v54 = v13;
    v55 = v5;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000A570(v27, qword_10011E7A0);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v49 = v4;
    v51 = v8;
    v32 = v52;
    v31 = v53;
    v33 = v9;
    v34 = v50;
    v35 = v48;
    if (v30)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Beginning device authenticity check", v36, 2u);
    }

    v37 = v60;
    v38 = *(v60 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_cbDeviceDiscovery);
    v65 = sub_1000709D0;
    v66 = 0;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_10006AF20;
    v64 = &unk_100106630;
    v39 = _Block_copy(&aBlock);
    [v38 activateWithCompletion:v39];
    _Block_release(v39);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v47 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v34 = 5;
    v40 = v56;
    (*(v56 + 104))(v34, enum case for DispatchTimeInterval.seconds(_:), v33);
    + infix(_:_:)();
    (*(v40 + 8))(v34, v33);
    v56 = *(v31 + 8);
    v41 = v54;
    (v56)(v35, v54);
    v65 = sub_10007BE24;
    v66 = v37;
    aBlock = _NSConcreteStackBlock;
    v62 = 1107296256;
    v63 = sub_100019340;
    v64 = &unk_100106658;
    v42 = _Block_copy(&aBlock);

    v43 = v51;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v44 = v49;
    v45 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v46 = v47;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v42);

    (*(v58 + 8))(v44, v45);
    (*(v57 + 8))(v43, v55);
    return (v56)(v32, v41);
  }
}

uint64_t sub_10006F864()
{
  v1 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v33 = &v27 - v3;
  v4 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo;
  swift_beginAccess();
  sub_10000E88C(v0 + v15, v7, &qword_10011EA88, &qword_1000D8880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000E950(v7, &qword_10011EA88, &qword_1000D8880);
  }

  v17 = *(v9 + 32);
  v17(v14, v7, v8);
  v18 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v19 = *(v18 + 152);
  if (v19)
  {
    v32 = *(v18 + 144);
    v38 = String.lowercased()();
    v36 = 58;
    v37 = 0xE100000000000000;
    v34 = 45;
    v35 = 0xE100000000000000;
    v29 = sub_10007BA6C();
    sub_10007BAC0();
    v31 = v17;

    v30 = v0;
    RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

    v28 = v40;
    v29 = v39;
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
    (*(v9 + 16))(v12, v14, v8);
    v21 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    v24 = v31;
    *(v23 + 4) = v32;
    *(v23 + 5) = v19;
    v24(&v23[v21], v12, v8);
    v25 = &v23[v22];
    v26 = v28;
    *v25 = v29;
    v25[1] = v26;
    *&v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v30;

    sub_100064FAC(0, 0, v33, &unk_1000D8890, v23);
  }

  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_10006FC54()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 64);
  v3 = __chkstk_darwin(v1);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v70 - v5;
  v7 = v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  v71 = v0;
  swift_beginAccess();
  v73 = type metadata accessor for HeadphoneModel;
  v8 = v7;
  sub_10007C964(v7, v6, type metadata accessor for HeadphoneModel);
  v9 = v1[12];
  sub_10000E950(&v6[v9], &qword_10011DE28, &unk_1000D98B0);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v6[v9], 1, 1, v10);
  v11 = (v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v12 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v13 = v11[1];
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 152);
  swift_unknownObjectRetain();
  v16 = v15(ObjectType, v13);
  v18 = v17;
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = &v6[v1[14]];
  v22 = *(v21 + 1);

  *v21 = v19;
  *(v21 + 1) = v20;
  v23 = *v11;
  v24 = v11[1];
  v25 = swift_getObjectType();
  v26 = *(v24 + 168);
  swift_unknownObjectRetain();
  LODWORD(v24) = v26(v25, v24);
  swift_unknownObjectRelease();
  *&v6[v1[13]] = v24;
  v27 = *v11;
  v28 = v11[1];
  v29 = swift_getObjectType();
  v30 = *(v28 + 160);
  swift_unknownObjectRetain();
  LOBYTE(v28) = v30(v29, v28);
  swift_unknownObjectRelease();
  v31 = v1;
  v6[v1[35]] = v28 & 1;
  v32 = objc_opt_self();
  v33 = v1[34];
  v34 = v8;
  v35 = *(v8 + v33);
  v72 = v11;
  v36 = *v11;
  v37 = v11[1];
  v38 = swift_getObjectType();
  v39 = *(v37 + 176);
  swift_unknownObjectRetain();
  LOBYTE(v38) = v39(v38, v37);
  swift_unknownObjectRelease();
  v40 = v35;
  v41 = v6;
  v42 = v71;
  LOBYTE(v36) = [v32 shouldPromptForAnnounceCallsForProductID:v40 supportsInEarDetection:v38 & 1 isUpsellFlow:0];
  *(v41 + v31[40]) = (v36 | [v32 shouldPromptForAnnounceNotificationsForProductID:*(v34 + v31[34]) isUpsellFlow:0]) & 1;
  v43 = v74;
  sub_10007C964(v41, v74, v73);
  sub_100065EF8(v43);
  v44 = *(v34 + v31[34]);
  if (*(v34 + 152))
  {
    v45 = *(v34 + 144);
    v46 = *(v34 + 152);

    v47 = String._bridgeToObjectiveC()();
  }

  else
  {
    v47 = 0;
  }

  v48 = [objc_allocWithZone(HPHeadphoneFeatureManager) initWithBluetoothAddress:v47 productID:v44];

  v49 = *(v42 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager);
  *(v42 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneFeatureManager) = v48;

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_10000A570(v50, qword_10011E7A0);
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Updated Headphone Feature Manager", v53, 2u);
  }

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    *(v56 + 4) = *(v34 + v31[34]);

    _os_log_impl(&_mh_execute_header, v54, v55, "will attempt to fetch MI with model named %u", v56, 8u);
  }

  else
  {
  }

  sub_10000E9C8(v42 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient, v76);
  v57 = sub_10000E7E4(v76, v76[3]);
  v58 = *(v34 + v31[34]);
  v59 = sub_1000B43E8(v58);
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = *v57;

  v75 = 0;
  sub_1000655C0(v58, (v59 & 1) == 0, sub_10007BE64, v60);

  sub_10000EA94(v76);
  v62 = v42 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v63 = *(v62 + 8);
    v64 = swift_getObjectType();
    (*(v63 + 8))(1, v64, v63);
    swift_unknownObjectRelease();
  }

  v65 = *v72;
  v66 = v72[1];
  v67 = swift_getObjectType();
  v68 = *(v66 + 192);
  swift_unknownObjectRetain();
  v68(v67, v66);
  swift_unknownObjectRelease();
  return sub_10007C9CC(v41, type metadata accessor for HeadphoneModel);
}

uint64_t sub_1000702AC(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = a2 & 1;
  *(v15 + 24) = a2 & 1;
  *(v15 + 32) = a3;
  aBlock[4] = sub_10007BF70;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106748;
  v17 = _Block_copy(aBlock);
  sub_10001C2A0(a1, v16);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

uint64_t sub_1000705C4(void *a1, char a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011E7A0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    sub_10001C2AC(a1, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136315138;
      v30 = a1;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v13 = String.init<A>(describing:)();
      v15 = sub_100078978(v13, v14, &v31);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "HeadphoneInteractor: Failed to fetch marketing item: %s", v11, 0xCu);
      sub_10000EA94(v12);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v17 = result;
      v18 = result + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v19 = v18 + *(v4 + 180);
      v20 = *v19;
      *v19 = a1;
      v21 = *(v19 + 8);
      *(v19 + 8) = 1;
      swift_errorRetain();
      goto LABEL_14;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011E7A0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "HeadphoneInteractor: Successfully retrieved MI", v25, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v17 = result;
      v18 = result + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      v26 = v18 + *(v4 + 180);
      v20 = *v26;
      *v26 = a1;
      v21 = *(v26 + 8);
      *(v26 + 8) = 0;
      sub_10001C2A0(a1, 0);
LABEL_14:
      sub_10007BF80(v20, v21);
      v27 = v17 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v28 = *(v27 + 8);
        ObjectType = swift_getObjectType();
        sub_10007C964(v18, v7, type metadata accessor for HeadphoneModel);
        (*(v28 + 24))(v7, ObjectType, v28);

        swift_unknownObjectRelease();
        return sub_10007C9CC(v7, type metadata accessor for HeadphoneModel);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1000709E4(uint64_t a1)
{
  v2 = type metadata accessor for HeadphoneModel(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  result = swift_beginAccess();
  if ((*(v6 + *(v2 + 176)) & 1) == 0)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011E7A0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "CB Device genuine check timed out after 5 seconds", v11, 2u);
    }

    if (*(v6 + 152))
    {
      v12 = *(v6 + 144);
      String.uppercased()();
      v13 = objc_allocWithZone(NSUserDefaults);
      v14 = String._bridgeToObjectiveC()();
      v15 = [v13 initWithSuiteName:v14];

      if (v15)
      {
        v16 = String._bridgeToObjectiveC()();
        v17 = [v15 dictionaryForKey:v16];

        if (v17)
        {
        }

        else
        {
          sub_1000A3538(&off_100102BE0);
          sub_100008438(&unk_1001200A0, &unk_1000DA540);
          swift_arrayDestroy();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v22 = String._bridgeToObjectiveC()();

          [v15 setObject:isa forKey:v22];
        }
      }

      else
      {
      }
    }

    else
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "No bluetooth address found", v20, 2u);
      }
    }

    *(v6 + *(v2 + 176)) = 1;
    v23 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      sub_10007C964(v6, v5, type metadata accessor for HeadphoneModel);
      (*(v24 + 24))(v5, ObjectType, v24);
      swift_unknownObjectRelease();
      sub_10007C9CC(v5, type metadata accessor for HeadphoneModel);
    }

    return sub_10006FC54();
  }

  return result;
}

uint64_t sub_100070DBC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011E7A0);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v8 = String.init<A>(describing:)();
      v10 = sub_100078978(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to disconnect device: %s", v6, 0xCu);
      sub_10000EA94(v7);
    }

    else
    {
    }
  }

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011E7A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Dismissing after disconnect", v14, 2u);
  }

  v15 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  v16 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 192);
  swift_unknownObjectRetain();
  v18(ObjectType, v16);
  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100047C68();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100071078(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_10011E7A0);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136315138;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v7 = String.init<A>(reflecting:)();
      v9 = sub_100078978(v7, v8, &v19);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to unpair device: %s)", v5, 0xCu);
      sub_10000EA94(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A570(v11, qword_10011E7A0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Successfully unpaired device. Cleaning up pairing session", v14, 2u);
    }

    v16 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
    v15 = *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession + 8);
    ObjectType = swift_getObjectType();
    v18 = *(v15 + 192);
    swift_unknownObjectRetain();
    v18(ObjectType, v15);

    swift_unknownObjectRelease();
  }
}

void sub_100071360(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 bleDevice];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 advertisementFields];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v82 = 25452;
  *(&v82 + 1) = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = sub_1000CD1FC(v80), (v12 & 1) == 0))
  {

    sub_100047824(v80);
LABEL_9:
    v82 = 0u;
    v83 = 0u;
    goto LABEL_10;
  }

  sub_10003CE5C(*(v10 + 56) + 32 * v11, &v82);
  sub_100047824(v80);

  if (!*(&v83 + 1))
  {
LABEL_10:
    sub_10000E950(&v82, &qword_10011DC40, &qword_1000D7C40);
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v13 = v80[0];
    goto LABEL_12;
  }

LABEL_11:
  v13 = 0;
LABEL_12:
  if (*(v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_allowRepairAutoConnect) != 1)
  {
    return;
  }

  if (v13 & 1 | (([a1 needsSetup] & 1) == 0))
  {
    return;
  }

  v14 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  if ((*(v14 + *(v3 + 156)) & 0x8000000000000000) == 0)
  {
    return;
  }

  v15 = [a1 bleDevice];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 rssiFloor];
  }

  else
  {
    v17 = 0;
  }

  if ((sub_10007CA74(v17, *(v14 + *(v3 + 156))) & 0x80000000) != 0)
  {
    return;
  }

  v18 = [a1 bleDevice];
  if (!v18)
  {
    goto LABEL_36;
  }

  v19 = v18;
  v20 = [v18 bluetoothAddress];

  if (!v20)
  {
    goto LABEL_36;
  }

  v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = v23;
  v25 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v25)
    {
      sub_100022640(v21, v23);
      v26 = BYTE6(v23);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v25 != 2)
  {
    sub_100022640(v21, v23);
    goto LABEL_36;
  }

  v28 = *(v21 + 16);
  v27 = *(v21 + 24);
  sub_100022640(v21, v24);
  v26 = v27 - v28;
  if (__OFSUB__(v27, v28))
  {
    __break(1u);
LABEL_28:
    sub_100022640(v21, v24);
    LODWORD(v26) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      goto LABEL_63;
    }

    v26 = v26;
  }

LABEL_30:
  if (v26 != 6)
  {
LABEL_36:
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A570(v38, qword_10011E7A0);
    v39 = a1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_45;
    }

    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v81 = v43;
    *v42 = 136315138;
    v44 = [v39 bleDevice];
    if (v44 && (v45 = v44, v46 = [v44 bluetoothAddress], v45, v46))
    {
      v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0xF000000000000000;
    }

    *&v82 = v47;
    *(&v82 + 1) = v49;
    sub_100008438(&qword_10011EAF0, &qword_1000D8908);
    v50 = String.init<A>(reflecting:)();
    v52 = sub_100078978(v50, v51, &v81);

    *(v42 + 4) = v52;
    v53 = "Invalid bluetooth address length: %s";
    goto LABEL_44;
  }

  v29 = [a1 bleDevice];
  if (!v29 || (v30 = v29, v31 = [v29 bluetoothAddress], v30, !v31))
  {
    if (qword_10011C6C0 == -1)
    {
LABEL_48:
      v54 = type metadata accessor for Logger();
      sub_10000A570(v54, qword_10011E7A0);
      v55 = a1;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v40, v41))
      {
        goto LABEL_45;
      }

      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v81 = v43;
      *v42 = 136315138;
      v56 = [v55 bleDevice];
      if (v56 && (v57 = v56, v58 = [v56 bluetoothAddress], v57, v58))
      {
        v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;
      }

      else
      {
        v59 = 0;
        v61 = 0xF000000000000000;
      }

      *&v82 = v59;
      *(&v82 + 1) = v61;
      sub_100008438(&qword_10011EAF0, &qword_1000D8908);
      v77 = String.init<A>(reflecting:)();
      v79 = sub_100078978(v77, v78, &v81);

      *(v42 + 4) = v79;
      v53 = "Could not convert device address to string: %s";
LABEL_44:
      _os_log_impl(&_mh_execute_header, v40, v41, v53, v42, 0xCu);
      sub_10000EA94(v43);

LABEL_45:

      return;
    }

LABEL_63:
    swift_once();
    goto LABEL_48;
  }

  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = sub_10006BB90(v32, v34);
  v37 = v36;
  sub_100022640(v32, v34);
  sub_10007C964(v14, v6, type metadata accessor for HeadphoneModel);
  LOBYTE(v34) = sub_100042020(v35, v37, v6);
  sub_10007C9CC(v6, type metadata accessor for HeadphoneModel);
  if (v34)
  {
  }

  else
  {
    v62 = v1;
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A570(v63, qword_10011E7A0);
    v64 = a1;
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      *(v67 + 4) = v64;
      *v68 = v64;
      v69 = v64;
      _os_log_impl(&_mh_execute_header, v65, v66, "Triggering auto-pair for repair: %@", v67, 0xCu);
      sub_10000E950(v68, &unk_10011D820, &qword_1000D7280);
    }

    v70 = *(v14 + 152);
    *(v14 + 144) = v35;
    *(v14 + 152) = v37;

    v71 = v62;
    v72 = v62 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v73 = *(v72 + 8);
      ObjectType = swift_getObjectType();
      sub_10007C964(v14, v6, type metadata accessor for HeadphoneModel);
      (*(v73 + 24))(v6, ObjectType, v73);
      v71 = v62;
      swift_unknownObjectRelease();
      sub_10007C9CC(v6, type metadata accessor for HeadphoneModel);
    }

    *(v71 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_hasAutoConnected) = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v75 = *(v72 + 8);
      v76 = swift_getObjectType();
      (*(v75 + 16))(v76, v75);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100071C24()
{
  v1 = LXCreateWordModerationLexicon();
  if (v1)
  {
    v2 = v1;
    if ([*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed])
    {

      v3 = 1;
    }

    else
    {
      v8 = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
      v9 = String._bridgeToObjectiveC()();
      [v8 setString:v9];

      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      __chkstk_darwin(v10);
      NLTokenizer.enumerateTokens(in:using:)();

      swift_beginAccess();
      v12 = *v11;

      v3 = v12 ^ 1;
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A570(v4, qword_10011E7A0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Friendly Name: Word Moderation Lexicon failed", v7, 2u);
    }

    v3 = 0;
  }

  return v3 & 1;
}

BOOL sub_100071EB8(_BOOL8 result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v15[12] = v8;
    v15[13] = v9;
    String.subscript.getter();
    static String._fromSubstring(_:)();

    v12 = String._bridgeToObjectiveC()();

    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a8;
    v15[4] = sub_10007C0C0;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100072178;
    v15[3] = &unk_100106860;
    v14 = _Block_copy(v15);

    LXLexiconEnumerateEntriesForString();
    _Block_release(v14);

    swift_beginAccess();
    return (*(a8 + 16) & 1) == 0;
  }

  return result;
}

void sub_100072014(void *a1, _BYTE *a2, int a3, uint64_t a4)
{
  if (a1)
  {
    v11 = a1;
    if ((LXEntryGetMetaFlags() & a3) != 0)
    {
      if (qword_10011C6C0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A570(v7, qword_10011E7A0);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Friendly Name: Undisplayable name. Skipping", v10, 2u);
      }

      swift_beginAccess();
      *(a4 + 16) = 1;
      if (a2)
      {
        *a2 = 1;
      }
    }

    else
    {
    }
  }
}

void sub_100072178(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_1000721F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v25;
  *(v8 + 168) = v26;
  *(v8 + 144) = a7;
  *(v8 + 152) = a8;
  *(v8 + 364) = a6;
  *(v8 + 360) = a5;
  *(v8 + 136) = a4;
  v9 = type metadata accessor for HeadphonePairing2.AssetRequest();
  *(v8 + 176) = v9;
  v10 = *(v9 - 8);
  *(v8 + 184) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 192) = swift_task_alloc();
  v12 = *(*(sub_100008438(&qword_10011EB08, &qword_1000D8938) - 8) + 64) + 15;
  *(v8 + 200) = swift_task_alloc();
  v13 = *(*(sub_100008438(&qword_10011EA88, &qword_1000D8880) - 8) + 64) + 15;
  *(v8 + 208) = swift_task_alloc();
  v14 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  *(v8 + 216) = v14;
  v15 = *(v14 - 8);
  *(v8 + 224) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v17 = type metadata accessor for HeadphonePairing2.Configuration();
  *(v8 + 240) = v17;
  v18 = *(v17 - 8);
  *(v8 + 248) = v18;
  v19 = *(v18 + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v20 = type metadata accessor for HeadphoneHardwareModel();
  *(v8 + 272) = v20;
  v21 = *(v20 - 8);
  *(v8 + 280) = v21;
  v22 = *(v21 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100072470, 0, 0);
}

uint64_t sub_100072470()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 312) = Strong;
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    *(v0 + 320) = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
    v4 = Strong + v3;
    swift_beginAccess();
    v5 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:*(v4 + *(type metadata accessor for HeadphoneModel(0) + 136))];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 supportsDigitalEngraving];

      if (v7)
      {
        v8 = swift_task_alloc();
        *(v0 + 328) = v8;
        *v8 = v0;
        v8[1] = sub_100072A28;

        return sub_100073A60();
      }
    }

    v10 = *(v0 + 360);
    v11 = objc_opt_self();
    v12 = [v11 airPods];
    v13 = [v12 productID];

    v14 = *(v0 + 364);
    if ((v13 == v10 || (v15 = *(v0 + 360), v16 = [v11 airPodsSecondGeneration], v17 = objc_msgSend(v16, "productID"), v16, v17 == v15)) && v14 == 1)
    {
      v18 = *(v0 + 304);
      v19 = *(v0 + 272);
      v20 = *(v0 + 280);
      v21 = &enum case for HeadphoneHardwareModel.airPodsSecondGeneration(_:);
    }

    else
    {
      v22 = *(v0 + 360);
      v23 = [v11 b698];
      v24 = [v23 productID];

      if (v24 != v22)
      {
        v25 = *(v0 + 360);
        v26 = [v11 b698];
        v27 = [v26 altProductID];

        if (v27 != v25)
        {
          v34 = *(v0 + 296);
          v35 = *(v0 + 360);
          HeadphoneHardwareModel.init(productID:)();
          (*(*(v0 + 280) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 272));
          goto LABEL_15;
        }
      }

      v18 = *(v0 + 304);
      v19 = *(v0 + 272);
      v20 = *(v0 + 280);
      v21 = &enum case for HeadphoneHardwareModel.b698(_:);
    }

    (*(v20 + 104))(v18, *v21, v19);
LABEL_15:
    v28 = *(v0 + 264);
    v29 = *(v0 + 144);
    (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 304), *(v0 + 272));
    DefaultAssetRequestTimeout.getter();
    HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)();
    v30 = *(v0 + 192);
    (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
    HeadphonePairing2.AssetRequest.init(configuration:)();
    v31 = async function pointer to HeadphonePairing2.AssetRequest.assets()[1];
    v32 = swift_task_alloc();
    *(v0 + 336) = v32;
    *v32 = v0;
    v32[1] = sub_100073524;
    v33 = *(v0 + 192);

    return HeadphonePairing2.AssetRequest.assets()();
  }

  v37 = *(v0 + 296);
  v36 = *(v0 + 304);
  v38 = *(v0 + 288);
  v40 = *(v0 + 256);
  v39 = *(v0 + 264);
  v41 = *(v0 + 232);
  v43 = *(v0 + 200);
  v42 = *(v0 + 208);
  v44 = *(v0 + 192);

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100072A28()
{
  v1 = *(*v0 + 328);
  v3 = *v0;

  return _swift_task_switch(sub_100072B24, 0, 0);
}

uint64_t sub_100072B24()
{
  v1 = *(v0 + 360);
  v2 = objc_opt_self();
  v3 = [v2 airPods];
  v4 = [v3 productID];

  v5 = *(v0 + 364);
  if (v4 == v1)
  {
    if (v5 == 1)
    {
LABEL_3:
      v6 = *(v0 + 304);
      v7 = *(v0 + 272);
      v8 = *(v0 + 280);
      v9 = &enum case for HeadphoneHardwareModel.airPodsSecondGeneration(_:);
LABEL_11:
      (*(v8 + 104))(v6, *v9, v7);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *(v0 + 360);
    v11 = [v2 airPodsSecondGeneration];
    v12 = [v11 productID];

    if (v12 == v10 && v5 == 1)
    {
      goto LABEL_3;
    }
  }

  v14 = *(v0 + 360);
  v15 = [v2 b698];
  v16 = [v15 productID];

  if (v16 == v14 || (v17 = *(v0 + 360), v18 = [v2 b698], v19 = objc_msgSend(v18, "altProductID"), v18, v19 == v17))
  {
    v6 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = &enum case for HeadphoneHardwareModel.b698(_:);
    goto LABEL_11;
  }

  v64 = *(v0 + 296);
  v65 = *(v0 + 360);
  HeadphoneHardwareModel.init(productID:)();
  (*(*(v0 + 280) + 32))(*(v0 + 304), *(v0 + 296), *(v0 + 272));
LABEL_12:
  v20 = *(v0 + 264);
  v21 = *(v0 + 144);
  (*(*(v0 + 280) + 16))(*(v0 + 288), *(v0 + 304), *(v0 + 272));
  DefaultAssetRequestTimeout.getter();
  HeadphonePairing2.Configuration.init(hardwareModel:color:timeout:)();
  if (qword_10011C6C8 != -1)
  {
    swift_once();
  }

  v22 = *(v0 + 160);
  v24 = qword_10011E7B8;
  v23 = qword_10011E7C0;
  v25 = v22 >> 60;
  if (v22 >> 60 != 15)
  {
    if (qword_10011E7C0 >> 60 != 15)
    {
      v28 = *(v0 + 152);
      sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
      sub_10007B8A8(v24, v23);
      sub_10007CE0C(v28, v22);
      v29 = sub_10007B040(v28, v22, v24, v23);
      sub_100047878(v24, v23);
      sub_100022640(v24, v23);
      sub_100047878(v28, v22);
      if ((v29 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

LABEL_18:
    v27 = *(v0 + 152);
    sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
    sub_10007CE0C(v27, v22);
    sub_100047878(v27, v22);
    sub_100047878(v24, v23);
    goto LABEL_28;
  }

  if (qword_10011E7C0 >> 60 != 15)
  {
    goto LABEL_18;
  }

  v26 = *(v0 + 152);
  sub_10007B8A8(qword_10011E7B8, qword_10011E7C0);
  sub_10007CE0C(v26, v22);
  sub_100047878(v26, v22);
LABEL_20:
  if (IsAppleInternalBuild())
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A570(v30, qword_10011E7A0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Found LiveOn engraving data, switching to sandbox environment", v33, 2u);
    }

    v34 = objc_allocWithZone(NSUserDefaults);
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 initWithSuiteName:v35];

    if (!v36)
    {
      v36 = [objc_opt_self() standardUserDefaults];
    }

    v37 = String._bridgeToObjectiveC()();
    v38 = String._bridgeToObjectiveC()();
    [v36 setValue:v37 forKey:v38];
  }

LABEL_28:
  v39 = *(v0 + 216);
  v40 = *(v0 + 224);
  v41 = *(v0 + 208);
  sub_10000E88C(*(v0 + 168), v41, &qword_10011EA88, &qword_1000D8880);
  if ((*(v40 + 48))(v41, 1, v39) == 1)
  {
    sub_10000E950(*(v0 + 208), &qword_10011EA88, &qword_1000D8880);
    if (v25 > 0xE)
    {
      v42 = *(v0 + 312) + *(v0 + 320);
      if (*(v42 + 152))
      {
        v43 = *(v0 + 264);
        v44 = *(v0 + 200);
        v45 = *(v42 + 144);
        v46 = *(v42 + 152);
        *(v0 + 80) = String.lowercased()();
        *(v0 + 96) = 58;
        *(v0 + 104) = 0xE100000000000000;
        *(v0 + 112) = 45;
        *(v0 + 120) = 0xE100000000000000;
        sub_10007BA6C();
        sub_10007BAC0();

        RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

        v47 = *(v0 + 64);
        v48 = *(v0 + 72);
        PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
        v49 = enum case for PersonalizationAssetManager.AssetInfo.postPairing(_:);
        v50 = type metadata accessor for PersonalizationAssetManager.AssetInfo();
        v51 = *(v50 - 8);
        (*(v51 + 104))(v44, v49, v50);
        (*(v51 + 56))(v44, 0, 1, v50);
        HeadphonePairing2.Configuration.personalizationAssetInfo.setter();
      }
    }
  }

  else
  {
    v52 = *(v0 + 264);
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v55 = *(v0 + 216);
    v56 = *(v0 + 200);
    (*(v54 + 32))(v53, *(v0 + 208), v55);
    (*(v54 + 16))(v56, v53, v55);
    v57 = enum case for PersonalizationAssetManager.AssetInfo.prePairing(_:);
    v58 = type metadata accessor for PersonalizationAssetManager.AssetInfo();
    v59 = *(v58 - 8);
    (*(v59 + 104))(v56, v57, v58);
    (*(v59 + 56))(v56, 0, 1, v58);
    HeadphonePairing2.Configuration.personalizationAssetInfo.setter();
    (*(v54 + 8))(v53, v55);
  }

  v60 = *(v0 + 192);
  (*(*(v0 + 248) + 16))(*(v0 + 256), *(v0 + 264), *(v0 + 240));
  HeadphonePairing2.AssetRequest.init(configuration:)();
  v61 = async function pointer to HeadphonePairing2.AssetRequest.assets()[1];
  v62 = swift_task_alloc();
  *(v0 + 336) = v62;
  *v62 = v0;
  v62[1] = sub_100073524;
  v63 = *(v0 + 192);

  return HeadphonePairing2.AssetRequest.assets()();
}

uint64_t sub_100073524(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v7 = sub_10007379C;
  }

  else
  {
    *(v4 + 352) = a1;
    v7 = sub_10007364C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10007364C()
{
  v1 = v0[39];
  v2 = v0[35];
  v20 = v0[34];
  v21 = v0[38];
  v3 = v0[33];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  sub_100074730(v0[44]);

  (*(v6 + 8))(v7, v8);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v21, v20);
  v10 = v0[37];
  v9 = v0[38];
  v11 = v0[36];
  v13 = v0[32];
  v12 = v0[33];
  v14 = v0[29];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10007379C()
{
  v32 = v0;
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  v4 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  (*(v0[23] + 8))(v0[24], v0[22]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);
  v7 = v0[43];
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A570(v8, qword_10011E7A0);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    v0[16] = v7;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v13 = String.init<A>(reflecting:)();
    v15 = sub_100078978(v13, v14, &v31);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Could not fetch assets: %s", v11, 0xCu);
    sub_10000EA94(v12);
  }

  v16 = v0[39] + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v17 = *v16;
  if (*v16)
  {
    v18 = *(v16 + 8);

    v17(v19);

    sub_1000622D4(v17);
  }

  else
  {
  }

  v21 = v0[37];
  v20 = v0[38];
  v22 = v0[36];
  v24 = v0[32];
  v23 = v0[33];
  v25 = v0[29];
  v27 = v0[25];
  v26 = v0[26];
  v28 = v0[24];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100073A60()
{
  v1[39] = v0;
  v2 = *(*(sub_100008438(&qword_10011EAA0, &unk_1000D88B0) - 8) + 64) + 15;
  v1[40] = swift_task_alloc();
  v3 = type metadata accessor for ProductError();
  v1[41] = v3;
  v4 = *(v3 - 8);
  v1[42] = v4;
  v5 = *(v4 + 64) + 15;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v6 = type metadata accessor for PersonalizationAssetManager.PostPairingAssetInfo();
  v1[45] = v6;
  v7 = *(v6 - 8);
  v1[46] = v7;
  v8 = *(v7 + 64) + 15;
  v1[47] = swift_task_alloc();
  v9 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v1[48] = v9;
  v10 = *(v9 - 8);
  v1[49] = v10;
  v11 = *(v10 + 64) + 15;
  v1[50] = swift_task_alloc();

  return _swift_task_switch(sub_100073C1C, 0, 0);
}

uint64_t sub_100073C1C()
{
  v1 = *(v0 + 312);
  v2 = [objc_allocWithZone(type metadata accessor for HeadphoneDigitalEngravingManager()) init];
  *(v0 + 408) = v2;
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v4 = *(v3 + 152);
  if (!v4)
  {

LABEL_10:
    v9 = *(v0 + 400);
    v10 = *(v0 + 376);
    v12 = *(v0 + 344);
    v11 = *(v0 + 352);
    v13 = *(v0 + 320);

    v14 = *(v0 + 8);

    return v14();
  }

  v5 = *(v3 + 144);

  sub_100095FB0(v5, v4, v0 + 64);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  *(v0 + 416) = v6;
  *(v0 + 432) = v7;
  v8 = *(v0 + 104);
  *(v0 + 448) = v8;
  if (!*(&v6 + 1))
  {

    goto LABEL_9;
  }

  if (*(v0 + 80) != 1 || v8 > 2 || (*(v0 + 184) = v7, *(&v7 + 1) >> 60 == 15))
  {

    sub_10000E950(v0 + 64, &qword_10011EB10, &qword_1000D91E0);
LABEL_9:

    goto LABEL_10;
  }

  *(v0 + 488) = *(v0 + 81);
  *(v0 + 491) = *(v0 + 84);
  sub_10000E88C(v0 + 184, v0 + 200, &qword_10011EAF0, &qword_1000D8908);
  sub_10000E88C(v0 + 64, v0 + 112, &qword_10011EB10, &qword_1000D91E0);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 456) = sub_10000A570(v16, qword_10011E7A0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Fetching pending engraved asset", v19, 2u);
  }

  v20 = *(v0 + 400);
  v21 = *(v0 + 376);
  v22 = *(v0 + 312);

  sub_10000E88C(v0 + 184, v0 + 216, &qword_10011EAF0, &qword_1000D8908);
  PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
  *(v0 + 248) = String.lowercased()();
  *(v0 + 264) = 58;
  *(v0 + 272) = 0xE100000000000000;
  *(v0 + 280) = 45;
  *(v0 + 288) = 0xE100000000000000;
  sub_10007BA6C();
  sub_10007BAC0();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  v23 = *(v0 + 232);
  v24 = *(v0 + 240);
  PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
  *(v0 + 464) = sub_100066050();
  v25 = async function pointer to PersonalizationAssetManager.storeAsset(from:to:)[1];
  v26 = swift_task_alloc();
  *(v0 + 472) = v26;
  *v26 = v0;
  v26[1] = sub_100074014;
  v27 = *(v0 + 400);
  v28 = *(v0 + 376);

  return PersonalizationAssetManager.storeAsset(from:to:)(v27, v28);
}

uint64_t sub_100074014()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 464);
  v6 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v4 = sub_100074330;
  }

  else
  {
    v4 = sub_100074144;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100074144()
{
  v1 = *(v0 + 456);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 392);
  v5 = *(v0 + 400);
  v8 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 368);
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched pending engraved asset", v11, 2u);
  }

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v14 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 416);
  *(v0 + 24) = v13;
  *(v0 + 32) = 2;
  *(v0 + 33) = *(v0 + 488);
  *(v0 + 36) = *(v0 + 491);
  *(v0 + 40) = v12;
  v22 = *(v0 + 440);
  *(v0 + 48) = v22;
  sub_1000959FC(v0 + 16);
  sub_10000E950(v0 + 184, &qword_10011EAF0, &qword_1000D8908);

  sub_10000E950(v0 + 64, &qword_10011EB10, &qword_1000D91E0);

  sub_100047878(v12, v22);
  v15 = *(v0 + 400);
  v16 = *(v0 + 376);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 320);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_100074330()
{
  v42 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 456);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 384);
  (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
  (*(v4 + 8))(v3, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 480);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v41 = v10;
    *v9 = 136315138;
    *(v0 + 304) = v8;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v11 = String.init<A>(reflecting:)();
    v13 = sub_100078978(v11, v12, &v41);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to fetch pending engraving: %s", v9, 0xCu);
    sub_10000EA94(v10);
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  *(v0 + 296) = *(v0 + 480);
  swift_errorRetain();
  sub_100008438(&unk_10011D970, &unk_1000D6500);
  v16 = swift_dynamicCast();
  v17 = *(v0 + 480);
  if (v16)
  {
    v19 = *(v0 + 344);
    v18 = *(v0 + 352);
    v20 = *(v0 + 328);
    v21 = *(v0 + 336);
    v22 = *(v0 + 320);
    (*(v21 + 56))(v22, 0, 1, v20);
    (*(v21 + 32))(v18, v22, v20);
    (*(v21 + 104))(v19, enum case for ProductError.assetNotFound(_:), v20);
    sub_10007CA2C(&qword_10011EAA8, &type metadata accessor for ProductError);
    LOBYTE(v22) = dispatch thunk of static Equatable.== infix(_:_:)();

    v23 = *(v21 + 8);
    v23(v19, v20);
    v23(v18, v20);
    if (v22)
    {
      v24 = *(v0 + 448);
      v25 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v26 = *(v0 + 328);
    v27 = *(v0 + 336);
    v28 = *(v0 + 320);
    v29 = *(v0 + 480);

    (*(v27 + 56))(v28, 1, 1, v26);
    sub_10000E950(v28, &qword_10011EAA0, &unk_1000D88B0);
  }

  v24 = *(v0 + 448) + 1;
  v25 = 1;
LABEL_8:
  v31 = *(v0 + 432);
  v30 = *(v0 + 440);
  v32 = *(v0 + 424);
  v33 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 416);
  *(v0 + 24) = v32;
  *(v0 + 32) = v25;
  *(v0 + 33) = *(v0 + 488);
  *(v0 + 36) = *(v0 + 491);
  *(v0 + 40) = v31;
  *(v0 + 48) = v30;
  *(v0 + 56) = v24;
  sub_1000959FC(v0 + 16);
  sub_10000E950(v0 + 184, &qword_10011EAF0, &qword_1000D8908);

  sub_10000E950(v0 + 64, &qword_10011EB10, &qword_1000D91E0);

  sub_100047878(v31, v30);
  v34 = *(v0 + 400);
  v35 = *(v0 + 376);
  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v38 = *(v0 + 320);

  v39 = *(v0 + 8);

  return v39();
}

void sub_100074730(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011CAA8, &unk_1000D85A0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v33 - v5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = a1;
  aBlock[4] = sub_10007CE80;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100106A68;
  v16 = _Block_copy(aBlock);
  v34 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v36 + 8))(v9, v6);
  (*(v10 + 8))(v13, v35);
  v17 = objc_allocWithZone(NSUserDefaults);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v17 initWithSuiteName:v18];

  if (!v19)
  {
    v19 = [objc_opt_self() standardUserDefaults];
  }

  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  if (v21)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A570(v22, qword_10011E7A0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Manatee CloudKit migration SKIPPED, migration already ran", v25, 2u);
    }
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A570(v26, qword_10011E7A0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Manatee CloudKit migration START", v29, 2u);
    }

    v30 = type metadata accessor for TaskPriority();
    v31 = v33;
    (*(*(v30 - 8) + 56))(v33, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v34;

    sub_100064FAC(0, 0, v31, &unk_1000D8958, v32);
  }
}

uint64_t sub_100074D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  v10 = *(v5 + 156);
  v11 = *(v9 + v10);
  *(v9 + v10) = a2;

  v12 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_10007C964(v9, v8, type metadata accessor for HeadphoneModel);
    (*(v14 + 24))(v8, ObjectType, v14);
    swift_unknownObjectRelease();
    result = sub_10007C9CC(v8, type metadata accessor for HeadphoneModel);
  }

  v16 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler;
  v17 = *(a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler);
  if (v17)
  {
    v18 = *(v16 + 8);

    v17(v19);
    return sub_1000622D4(v17);
  }

  return result;
}

uint64_t sub_100074ED8()
{
  v1 = v0[3];
  v0[4] = sub_100066050();
  v2 = async function pointer to PersonalizationAssetManager.migrateToManateeContainer()[1];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100074F78;

  return PersonalizationAssetManager.migrateToManateeContainer()();
}

uint64_t sub_100074F78()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_10007526C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100075094;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100075094()
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A570(v1, qword_10011E7A0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Manatee CloudKit migration END", v4, 2u);
  }

  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 initWithSuiteName:v6];

  if (!v7)
  {
    v7 = [objc_opt_self() standardUserDefaults];
  }

  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setValue:isa forKey:v9];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10007526C()
{
  v16 = v0;
  v1 = v0[4];

  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_10000A570(v3, qword_10011E7A0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v10 = String.init<A>(reflecting:)();
    v12 = sub_100078978(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Manatee CloudKit migration FAILED {error: %s}", v8, 0xCu);
    sub_10000EA94(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100075444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v18;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = *(*(sub_100008438(&qword_10011EAA0, &unk_1000D88B0) - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v10 = type metadata accessor for ProductError();
  v8[23] = v10;
  v11 = *(v10 - 8);
  v8[24] = v11;
  v12 = *(v11 + 64) + 15;
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v13 = type metadata accessor for PersonalizationAssetManager.PostPairingAssetInfo();
  v8[27] = v13;
  v14 = *(v13 - 8);
  v8[28] = v14;
  v15 = *(v14 + 64) + 15;
  v8[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000755B4, 0, 0);
}

uint64_t sub_1000755B4()
{
  v1 = v0[17];
  v2 = v0[18];
  v0[30] = [objc_allocWithZone(type metadata accessor for HeadphoneDigitalEngravingManager()) init];

  v0[31] = PersonalizationAssetManager.PrePairingAssetInfo.scannedBluetoothData.getter();
  v0[32] = v3;
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v0[33] = sub_10000A570(v4, qword_10011E7A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Moving engraved asset", v7, 2u);
  }

  v8 = v0[29];
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];

  PersonalizationAssetManager.PostPairingAssetInfo.init(stableBluetoothIdentifier:)();
  v0[34] = sub_100066050();
  v12 = async function pointer to PersonalizationAssetManager.storeAsset(from:to:)[1];
  v13 = swift_task_alloc();
  v0[35] = v13;
  *v13 = v0;
  v13[1] = sub_100075778;
  v14 = v0[29];
  v15 = v0[18];

  return PersonalizationAssetManager.storeAsset(from:to:)(v15, v14);
}

uint64_t sub_100075778()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_100075A64;
  }

  else
  {
    v4 = sub_1000758A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000758A8()
{
  *(v0 + 16) = *(v0 + 128);
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  *(v0 + 24) = *(v0 + 136);
  *(v0 + 32) = 2;
  *(v0 + 40) = *(v0 + 248);
  *(v0 + 56) = 0;
  sub_1000959FC(v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 224);
  v6 = *(v0 + 232);
  v8 = *(v0 + 216);
  if (v5)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Moved engraved asset", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v11 = *(v0 + 248);
  v10 = *(v0 + 256);
  v13 = *(v0 + 232);
  v12 = *(v0 + 240);
  v15 = *(v0 + 200);
  v14 = *(v0 + 208);
  v16 = *(v0 + 176);
  v17 = *(v0 + 136);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v17;
  *(v0 + 80) = 2;
  *(v0 + 81) = *(v0 + 296);
  *(v0 + 84) = *(v0 + 299);
  *(v0 + 88) = v11;
  *(v0 + 96) = v10;
  *(v0 + 104) = 0;
  sub_1000959FC(v0 + 64);

  sub_100047878(v11, v10);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100075A64()
{
  v38 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 288);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    *(v0 + 120) = v5;
    swift_errorRetain();
    sub_100008438(&unk_10011D970, &unk_1000D6500);
    v8 = String.init<A>(reflecting:)();
    v10 = sub_100078978(v8, v9, &v37);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to store engraved asset: %s", v6, 0xCu);
    sub_10000EA94(v7);
  }

  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  *(v0 + 112) = *(v0 + 288);
  swift_errorRetain();
  sub_100008438(&unk_10011D970, &unk_1000D6500);
  v13 = swift_dynamicCast();
  v14 = *(v0 + 288);
  if (v13)
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 184);
    v18 = *(v0 + 192);
    v19 = *(v0 + 176);
    (*(v18 + 56))(v19, 0, 1, v17);
    (*(v18 + 32))(v15, v19, v17);
    (*(v18 + 104))(v16, enum case for ProductError.assetNotFound(_:), v17);
    sub_10007CA2C(&qword_10011EAA8, &type metadata accessor for ProductError);
    LOBYTE(v19) = dispatch thunk of static Equatable.== infix(_:_:)();

    v20 = *(v18 + 8);
    v20(v16, v17);
    v20(v15, v17);
    if (v19)
    {
      v21 = 0;
      v22 = 2;
      goto LABEL_8;
    }
  }

  else
  {
    v23 = *(v0 + 184);
    v24 = *(v0 + 192);
    v25 = *(v0 + 176);
    v26 = *(v0 + 288);

    (*(v24 + 56))(v25, 1, 1, v23);
    sub_10000E950(v25, &qword_10011EAA0, &unk_1000D88B0);
  }

  v22 = 1;
  v21 = 1;
LABEL_8:
  v28 = *(v0 + 248);
  v27 = *(v0 + 256);
  v30 = *(v0 + 232);
  v29 = *(v0 + 240);
  v32 = *(v0 + 200);
  v31 = *(v0 + 208);
  v33 = *(v0 + 176);
  v34 = *(v0 + 136);
  *(v0 + 64) = *(v0 + 128);
  *(v0 + 72) = v34;
  *(v0 + 80) = v22;
  *(v0 + 81) = *(v0 + 296);
  *(v0 + 84) = *(v0 + 299);
  *(v0 + 88) = v28;
  *(v0 + 96) = v27;
  *(v0 + 104) = v21;
  sub_1000959FC(v0 + 64);

  sub_100047878(v28, v27);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100075E14()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v78 = v4;
    v79 = v5;
    v80 = v1;
    v12 = swift_allocObject();
    v74 = v12;
    *(v12 + 16) = _swiftEmptyArrayStorage;
    v13 = (v12 + 16);
    v14 = swift_allocObject();
    v75 = v14;
    *(v14 + 16) = _swiftEmptyArrayStorage;
    v15 = (v14 + 16);
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v76 = v9;
    v77 = v6;
    v16 = type metadata accessor for Logger();
    v17 = sub_10000A570(v16, qword_10011E7A0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Fetching notification sources", v20, 2u);
    }

    v21 = *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 24);
    v22 = *(v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter + 32);
    sub_10000E7E4((v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter), v21);
    v23 = (*(v22 + 24))(v21, v22);
    v24 = *(v23 + 16);
    v81 = v0;
    if (v24)
    {
      v72[1] = v17;
      v73 = v11;
      v25 = 0;
      v72[0] = v23;
      v26 = v23 + 32;
      v82 = 0x80000001000E0CC0;
      while (1)
      {
        sub_10000E9C8(v26, aBlock);
        v27 = v84;
        v28 = v85;
        sub_10000E7E4(aBlock, v84);
        if ((*(v28 + 1))(v27, v28))
        {
          goto LABEL_9;
        }

        v29 = v84;
        v30 = v85;
        sub_10000E7E4(aBlock, v84);
        v31 = (*(v30 + 2))(v29, v30);
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v34 = v31 & 0xFFFFFFFFFFFFLL;
        }

        if (!v34)
        {
          goto LABEL_9;
        }

        v35 = v84;
        v36 = v85;
        sub_10000E7E4(aBlock, v84);
        if ((*(v36 + 3))(v35, v36) == 0xD000000000000015 && 0x80000001000E0A10 == v37)
        {
        }

        else
        {
          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v39 & 1) == 0)
          {
            v40 = v84;
            v41 = v85;
            sub_10000E7E4(aBlock, v84);
            if ((*(v41 + 3))(v40, v41) == 0xD000000000000013 && v82 == v42)
            {

              goto LABEL_23;
            }

            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v43)
            {
LABEL_23:
              v44 = v84;
              v45 = v85;
              sub_10000E7E4(aBlock, v84);
              v25 = (*(v45 + 6))(v44, v45);
            }

            v46 = v84;
            v47 = v85;
            sub_10000E7E4(aBlock, v84);
            if ((*(v47 + 4))(v46, v47))
            {
              sub_10000E9C8(aBlock, v87);
              sub_100046E78(v87, v88);
              v48 = *v13;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v13 = v48;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v48 = sub_1000CCF50(0, *(v48 + 2) + 1, 1, v48);
                *v13 = v48;
              }

              v51 = *(v48 + 2);
              v50 = *(v48 + 3);
              if (v51 >= v50 >> 1)
              {
                v48 = sub_1000CCF50((v50 > 1), v51 + 1, 1, v48);
              }

              *(v48 + 2) = v51 + 1;
              v52 = &v48[48 * v51];
              v53 = v88[0];
              v54 = v88[2];
              *(v52 + 3) = v88[1];
              *(v52 + 4) = v54;
              *(v52 + 2) = v53;
              *v13 = v48;
            }

            else
            {
              sub_10000E9C8(aBlock, v87);
              sub_100046E78(v87, v89);
              v55 = *v15;
              v56 = swift_isUniquelyReferenced_nonNull_native();
              *v15 = v55;
              if ((v56 & 1) == 0)
              {
                v55 = sub_1000CCF50(0, *(v55 + 2) + 1, 1, v55);
                *v15 = v55;
              }

              v58 = *(v55 + 2);
              v57 = *(v55 + 3);
              if (v58 >= v57 >> 1)
              {
                v55 = sub_1000CCF50((v57 > 1), v58 + 1, 1, v55);
              }

              *(v55 + 2) = v58 + 1;
              v59 = &v55[48 * v58];
              v60 = v89[0];
              v61 = v89[2];
              *(v59 + 3) = v89[1];
              *(v59 + 4) = v61;
              *(v59 + 2) = v60;
              *v15 = v55;
            }
          }
        }

LABEL_9:
        sub_10000EA94(aBlock);
        v26 += 40;
        if (!--v24)
        {

          v11 = v73;
          goto LABEL_37;
        }
      }
    }

    v25 = 0;
LABEL_37:
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Fetching notification sources finished", v64, 2u);
    }

    sub_1000767D0(v13);
    sub_1000767D0(v15);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v65 = static OS_dispatch_queue.main.getter();
    v66 = swift_allocObject();
    *(v66 + 16) = v11;
    *(v66 + 24) = v25 & 1;
    v67 = v75;
    *(v66 + 32) = v74;
    *(v66 + 40) = v67;
    v85 = sub_10007CFEC;
    v86 = v66;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    v84 = &unk_100106B30;
    v68 = _Block_copy(aBlock);

    v69 = v76;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v70 = v78;
    v71 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v68);

    (*(v80 + 8))(v70, v71);
    (*(v77 + 8))(v69, v79);
  }

  return result;
}

Swift::Int sub_1000767D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10007ACF4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_10007906C(v5);
  *a1 = v2;
  return result;
}

char *sub_100076840(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_10007AD08(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_100079164(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1000768B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for HeadphoneModel(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 64;
  __chkstk_darwin(v11);
  v15 = v30 - v14 + 64;
  v16 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007C964(a1 + v16, v15, type metadata accessor for HeadphoneModel);
  v15[*(v9 + 176)] = a2;
  v29 = 0x80000001000E0A10;
  v17 = sub_100033A5C(21);
  v19 = v18;
  v20 = sub_100033A5C(22);
  v22 = v21;
  swift_beginAccess();
  v23 = *(a3 + 16);
  swift_beginAccess();
  v24 = *(a4 + 16);
  v25 = *(v15 + 5);
  v30[4] = *(v15 + 4);
  v30[5] = v25;
  v30[6] = *(v15 + 6);
  v26 = *(v15 + 1);
  v30[0] = *v15;
  v30[1] = v26;
  v27 = *(v15 + 3);
  v30[2] = *(v15 + 2);
  v30[3] = v27;

  sub_10000E950(v30, &qword_10011EB18, &qword_1000D8960);
  *v15 = 0xD000000000000015;
  *(v15 + 1) = v29;
  *(v15 + 2) = v17;
  *(v15 + 3) = v19;
  v15[32] = 1;
  *(v15 + 40) = xmmword_1000D8670;
  *(v15 + 7) = 0xE600000000000000;
  *(v15 + 8) = v20;
  *(v15 + 9) = v22;
  v15[80] = 1;
  *(v15 + 11) = 0;
  *(v15 + 12) = v23;
  *(v15 + 13) = v24;
  sub_10007C964(v15, v13, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v13);
  return sub_10007C9CC(v15, type metadata accessor for HeadphoneModel);
}

uint64_t sub_100076ADC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  result = __chkstk_darwin(v11);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v34 = a3;
    v37 = v14;
    v38 = v10;
    v39 = v7;
    v40 = v6;
    v41 = result;
    v17 = swift_allocObject();
    v36 = v17;
    *(v17 + 16) = _swiftEmptyArrayStorage;
    v18 = (v17 + 16);
    v19 = swift_allocObject();
    v35 = v19;
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v20 = (v19 + 16);
    if (a1)
    {
      if (a1 >> 62)
      {
        goto LABEL_15;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v22 = 0;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_14;
            }

            v23 = *(a1 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          sub_10007C564(v23, v18, v20);

          ++v22;
          if (v25 == i)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        ;
      }
    }

LABEL_16:
    sub_100076840(v18);
    sub_100076840(v20);
    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v33 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    v27 = v35;
    v28 = v36;
    v26[2] = v34;
    v26[3] = v28;
    v26[4] = v27;
    aBlock[4] = sub_10007C194;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100106950;
    v29 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10007CA2C(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10001C3D8(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v30 = v38;
    v31 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v33;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v39 + 8))(v30, v31);
    (*(v37 + 8))(v16, v41);
  }

  return result;
}

uint64_t sub_100076F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HeadphoneModel(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = a1 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
  swift_beginAccess();
  sub_10007C964(v13, v12, type metadata accessor for HeadphoneModel);
  swift_beginAccess();
  v14 = *(a2 + 16);
  swift_beginAccess();
  v15 = *(a3 + 16);
  v16 = *(v12 + 14);
  v17 = *(v12 + 15);

  sub_10007C8C0(v16);
  *(v12 + 14) = v14;
  *(v12 + 15) = v15;
  sub_10007C964(v12, v10, type metadata accessor for HeadphoneModel);
  sub_100065EF8(v10);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A570(v18, qword_10011E7A0);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = *(v13 + 112);
    if (v22)
    {
      if (v22 >> 62)
      {
        if (v22 < 0)
        {
          v34 = *(v13 + 112);
        }

        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
    }

    v36 = v23;
    v37 = v22 == 0;
    sub_100008438(&unk_10011EBC0, &qword_1000D8B20);
    v24 = String.init<A>(reflecting:)();
    v26 = sub_100078978(v24, v25, &v38);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = *(v13 + 112);
    if (v27)
    {
      v28 = *(v13 + 120);
      if (v28 >> 62)
      {
        if (v28 < 0)
        {
          v35 = *(v13 + 120);
        }

        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v29 = 0;
    }

    v36 = v29;
    v37 = v27 == 0;
    v30 = String.init<A>(reflecting:)();
    v32 = sub_100078978(v30, v31, &v38);

    *(v21 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v19, v20, "Live Translation: Update: suggestedLanguages: %s, moreLanguages: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  return sub_10007C9CC(v12, type metadata accessor for HeadphoneModel);
}

uint64_t sub_10007729C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000084D4(0, &qword_10011CA90, &off_100101348);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_100077358(const char *a1)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_100077448(uint64_t a1, char a2)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_10011E7A0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136315394;
    v10 = Array.description.getter();
    v12 = sub_100078978(v10, v11, aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 1024;
    *(v8 + 14) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Live Translation: downloadTranslationAssets: locales: %s, useCellular: %{BOOL}d", v8, 0x12u);
    sub_10000EA94(v9);
  }

  if (*(a1 + 16))
  {
    v13 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_assetManagementClient);
    isa = Array._bridgeToObjectiveC()().super.isa;
    aBlock[4] = sub_100077728;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10006AF20;
    aBlock[3] = &unk_100106540;
    v15 = _Block_copy(aBlock);
    [v13 downloadTranslationAssets:isa useCellular:a2 & 1 completion:v15];
    _Block_release(v15);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Live Translation: downloadTranslationAssets: Empty Locales, Skip", v17, 2u);
    }
  }
}

void sub_100077728(uint64_t a1)
{
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A570(v2, qword_10011E7A0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      v7 = v6;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    *(v4 + 4) = v6;
    *v5 = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Live Translation: downloadTranslationAssets: Complete: %@", v4, 0xCu);
    sub_10000E950(v5, &unk_10011D820, &qword_1000D7280);
  }
}

void sub_100077898(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWInterface.InterfaceType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for NWInterface.InterfaceType.cellular(_:), v3);
  v8 = NWPath.usesInterfaceType(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_10011E7A0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      v13 = 1;
      goto LABEL_13;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Live Translation: Cellular network is used", v12, 2u);
    v13 = 1;
  }

  else
  {
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A570(v14, qword_10011E7A0);
    v10 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v15))
    {
      v13 = 0;
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v10, v15, "Live Translation: Wi-Fi network is used", v16, 2u);
    v13 = 0;
  }

LABEL_13:

  *(a2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular) = v13;
}

uint64_t sub_100077B08()
{
  sub_100008598(v0 + 16);
  sub_10007C9CC(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model, type metadata accessor for HeadphoneModel);
  sub_100008598(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler + 8);
  sub_1000622D4(*(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_activationCompletionHandler));
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingSession);
  swift_unknownObjectRelease();
  sub_10000EA94((v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_notificationSettingsCenter));

  v3 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_nwPathMonitor);

  sub_10000EA94((v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_offersClient));

  v4 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_headphoneProxFeatureManager);

  v5 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_proxScanner);

  sub_10000E950(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_pairingStartDate, &qword_10011DE30, &qword_1000D79F0);
  v6 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor____lazy_storage___personalizationManager);

  v7 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor__batteryInfo;
  v8 = sub_100008438(&qword_10011F9A0, &qword_1000D8968);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_listeners);

  sub_10000E950(v0 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_prePairingAssetInfo, &qword_10011EA88, &qword_1000D8880);
  return v0;
}

uint64_t sub_100077D34()
{
  sub_100077B08();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HeadphoneInteractor()
{
  result = qword_10011E8C0;
  if (!qword_10011E8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100077DE0()
{
  v0 = type metadata accessor for HeadphoneModel(319);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100078050(319, &qword_10011DEE0, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100078050(319, &qword_10011E8D0, &type metadata accessor for AADBatteryInfoVM, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_100078050(319, &unk_10011E8D8, &type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo, &type metadata accessor for Optional);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100078050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000780C0(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100078110(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100078158()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000781F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100078248@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000782C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100078344@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_100078574(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10007AF88(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100022640(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100078344(v13, a3, a4, &v12);
  v10 = v4;
  sub_100022640(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100078704(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000787FC;

  return v7(a1);
}

uint64_t sub_1000787FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10007891C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100078978(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100078978(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100078A44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10003CE5C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000EA94(v11);
  return v7;
}

unint64_t sub_100078A44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100078B50(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100078B50(uint64_t a1, unint64_t a2)
{
  v4 = sub_100078B9C(a1, a2);
  sub_100078CCC(&off_1001029D8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100078B9C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100078DB8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100078DB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100078CCC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100078E2C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100078DB8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100008438(&qword_10011EA58, &unk_1000D8800);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100078E2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_10011EA58, &unk_1000D8800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100078F20(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100078F34(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100078FA8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

_BYTE *sub_100078FD8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10007C2D0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10007C388(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10007C404(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

Swift::Int sub_10007906C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100079534(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100079278(0, v2, 1, a1);
  }

  return result;
}

char *sub_100079164(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000084D4(0, &qword_10011CA90, &off_100101348);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100079C00(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000793A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100079278(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_100008480();
    v7 = v6 + 48 * v4 - 48;
    v8 = v5 - v4;
LABEL_5:
    v9 = v6 + 48 * v4;
    v10 = *(v9 + 16);
    v11 = *(v9 + 24);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      v22 = *(v13 + 16);
      v23 = *(v13 + 24);
      result = StringProtocol.localizedCompare<A>(_:)();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 48;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v13 + 48);
      v15 = *(v13 + 56);
      v16 = *(v13 + 64);
      v17 = *(v13 + 72);
      v18 = *(v13 + 80);
      v19 = *(v13 + 88);
      v20 = *(v13 + 16);
      *(v13 + 48) = *v13;
      *(v13 + 64) = v20;
      *(v13 + 80) = *(v13 + 32);
      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 24) = v17;
      *(v13 + 32) = v18;
      *(v13 + 40) = v19;
      v13 -= 48;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1000793A0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = &result[-a3];
    v6 = &selRef_setTableHeaderView_;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      v9 = v7;
      v10 = v8;
      result = [v9 v6[133]];
      if (!result)
      {
        break;
      }

      v11 = result;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      result = [v10 v6[133]];
      if (!result)
      {
        __break(1u);
        break;
      }

      v15 = result;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {

        v6 = &selRef_setTableHeaderView_;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v6 = &selRef_setTableHeaderView_;
      if (v20)
      {
        if (!v27)
        {
          goto LABEL_20;
        }

        v21 = *v4;
        v7 = *(v4 + 8);
        *v4 = v7;
        *(v4 + 8) = v21;
        v4 -= 8;
        if (!__CFADD__(v5++, 1))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_100079534(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v102 = result;
  v6 = *(a3 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      v9 = v7;
      if (v7 + 1 >= v6)
      {
        v6 = (v7 + 1);
      }

      else
      {
        v100 = v5;
        v10 = *a3 + 48 * (v7 + 1);
        v11 = *a3 + 48 * v7;
        v111 = *(v10 + 16);
        v113 = *(v10 + 24);
        v105 = *(v11 + 16);
        v108 = *(v11 + 24);
        sub_100008480();
        result = StringProtocol.localizedCompare<A>(_:)();
        v12 = result;
        v13 = (v7 + 2);
        v14 = (v11 + 120);
        while (v6 != v13)
        {
          v112 = *(v14 - 1);
          v114 = *v14;
          v106 = *(v14 - 7);
          v109 = *(v14 - 6);
          result = StringProtocol.localizedCompare<A>(_:)();
          ++v13;
          v14 += 6;
          if ((v12 == -1) == (result != -1))
          {
            v6 = v13 - 1;
            break;
          }
        }

        v5 = v100;
        if (v12 == -1)
        {
          if (v6 < v7)
          {
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
            return result;
          }

          if (v7 < v6)
          {
            v15 = 48 * v6 - 24;
            v16 = 48 * v7 + 40;
            v17 = v6;
            v18 = v7;
            do
            {
              if (v18 != --v17)
              {
                v28 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v19 = (v28 + v16);
                v20 = *(v28 + v16 - 40);
                v21 = v28 + v15;
                v22 = *(v19 - 3);
                v23 = *(v19 - 2);
                v24 = *(v19 - 8);
                v25 = *v19;
                v26 = *(v21 + 8);
                v27 = *(v21 - 8);
                *(v19 - 5) = *(v21 - 24);
                *(v19 - 3) = v27;
                *(v19 - 1) = v26;
                *(v21 - 24) = v20;
                *(v21 - 8) = v22;
                *v21 = v23;
                *(v21 + 8) = v24;
                *(v21 + 16) = v25;
              }

              ++v18;
              v15 -= 48;
              v16 += 48;
            }

            while (v18 < v17);
          }
        }
      }

      v29 = *(a3 + 1);
      if (v6 >= v29)
      {
        goto LABEL_27;
      }

      if (__OFSUB__(v6, v7))
      {
        goto LABEL_117;
      }

      if (&v6[-v7] >= a4)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_118;
      }

      if (v7 + a4 < v29)
      {
        v29 = (v7 + a4);
      }

      if (v29 < v7)
      {
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      if (v6 == v29)
      {
LABEL_27:
        v7 = v6;
      }

      else
      {
        v103 = v29;
        v101 = v5;
        v77 = *a3;
        sub_100008480();
        v78 = v77 + 48 * v6 - 48;
        v98 = v9;
        v79 = v9 - v6;
        do
        {
          v80 = v77 + 48 * v6;
          v81 = *(v80 + 16);
          v82 = *(v80 + 24);
          v83 = v79;
          v84 = v78;
          do
          {
            v107 = *(v84 + 16);
            v110 = *(v84 + 24);
            result = StringProtocol.localizedCompare<A>(_:)();
            if (result != -1)
            {
              break;
            }

            if (!v77)
            {
              goto LABEL_122;
            }

            v85 = *(v84 + 48);
            v86 = *(v84 + 56);
            v87 = *(v84 + 64);
            v88 = *(v84 + 72);
            v89 = *(v84 + 80);
            v90 = *(v84 + 88);
            v91 = *(v84 + 16);
            *(v84 + 48) = *v84;
            *(v84 + 64) = v91;
            *(v84 + 80) = *(v84 + 32);
            *v84 = v85;
            *(v84 + 8) = v86;
            *(v84 + 16) = v87;
            *(v84 + 24) = v88;
            *(v84 + 32) = v89;
            *(v84 + 40) = v90;
            v84 -= 48;
          }

          while (!__CFADD__(v83++, 1));
          ++v6;
          v78 += 48;
          --v79;
        }

        while (v6 != v103);
        v5 = v101;
        v7 = v103;
        v9 = v98;
      }

      v6 = a3;
      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10007ABF0(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v31 = *(v8 + 2);
      v30 = *(v8 + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        result = sub_10007ABF0((v30 > 1), v31 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v32;
      v33 = &v8[16 * v31];
      *(v33 + 4) = v9;
      *(v33 + 5) = v7;
      v34 = *v102;
      if (!*v102)
      {
        goto LABEL_126;
      }

      if (v31)
      {
        while (1)
        {
          v35 = v32 - 1;
          if (v32 >= 4)
          {
            break;
          }

          if (v32 == 3)
          {
            v36 = *(v8 + 4);
            v37 = *(v8 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_48:
            if (v39)
            {
              goto LABEL_105;
            }

            v52 = &v8[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_108;
            }

            v58 = &v8[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_112;
            }

            if (v56 + v61 >= v38)
            {
              if (v38 < v61)
              {
                v35 = v32 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v62 = &v8[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_62:
          if (v57)
          {
            goto LABEL_107;
          }

          v65 = &v8[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_110;
          }

          if (v68 < v56)
          {
            goto LABEL_3;
          }

LABEL_69:
          v73 = v35 - 1;
          if (v35 - 1 >= v32)
          {
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
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v74 = *&v8[16 * v73 + 32];
          v75 = *&v8[16 * v35 + 40];
          sub_10007A470((*a3 + 48 * v74), (*a3 + 48 * *&v8[16 * v35 + 32]), (*a3 + 48 * v75), v34);
          if (v5)
          {
          }

          if (v75 < v74)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10007ABDC(v8);
          }

          if (v73 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v76 = &v8[16 * v73];
          *(v76 + 4) = v74;
          *(v76 + 5) = v75;
          result = sub_10007AB50(v35);
          v32 = *(v8 + 2);
          if (v32 <= 1)
          {
            goto LABEL_3;
          }
        }

        v40 = &v8[16 * v32 + 32];
        v41 = *(v40 - 64);
        v42 = *(v40 - 56);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_103;
        }

        v45 = *(v40 - 48);
        v44 = *(v40 - 40);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_104;
        }

        v47 = &v8[16 * v32];
        v49 = *v47;
        v48 = *(v47 + 1);
        v46 = __OFSUB__(v48, v49);
        v50 = v48 - v49;
        if (v46)
        {
          goto LABEL_106;
        }

        v46 = __OFADD__(v38, v50);
        v51 = v38 + v50;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v51 >= v43)
        {
          v69 = &v8[16 * v35 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v46 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v46)
          {
            goto LABEL_113;
          }

          if (v38 < v72)
          {
            v35 = v32 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v6 = *(a3 + 1);
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_88:
  v6 = *v102;
  if (!*v102)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_10007ABDC(v8);
    v8 = result;
  }

  v93 = v5;
  v94 = *(v8 + 2);
  if (v94 >= 2)
  {
    while (*a3)
    {
      v5 = v94 - 1;
      v95 = *&v8[16 * v94];
      v96 = *&v8[16 * v94 + 24];
      sub_10007A470((*a3 + 48 * v95), (*a3 + 48 * *&v8[16 * v94 + 16]), (*a3 + 48 * v96), v6);
      if (v93)
      {
      }

      if (v96 < v95)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10007ABDC(v8);
      }

      if (v94 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v97 = &v8[16 * v94];
      *v97 = v95;
      *(v97 + 1) = v96;
      result = sub_10007AB50(v5);
      v94 = *(v8 + 2);
      if (v94 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

void sub_100079C00(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    v8 = &selRef_setTableHeaderView_;
    while (1)
    {
      v9 = v6;
      v10 = v6 + 1;
      if (v6 + 1 >= v5)
      {
        goto LABEL_38;
      }

      v126 = v5;
      v119 = v7;
      v121 = v6;
      v4 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = *(*a3 + 8 * v10);
      v13 = v11;
      v14 = [v12 v8[133]];
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = [v13 v8[133]];
      if (!v18)
      {
        goto LABEL_161;
      }

      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      if (v6 == v20 && v17 == v22)
      {
        v132 = 0;
      }

      else
      {
        v132 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v9 = v121;
      v10 = v121 + 2;
      if (v121 + 2 >= v126)
      {
        v8 = &selRef_setTableHeaderView_;
        goto LABEL_29;
      }

      v129 = v121 + 2;
      v4 += 8 * v121 + 16;
      v8 = &selRef_setTableHeaderView_;
      while (1)
      {
        v25 = *(v4 - 8);
        v26 = *v4;
        v27 = v25;
        v28 = [v26 v8[133]];
        if (!v28)
        {
          goto LABEL_155;
        }

        v29 = v28;
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v32 = [v27 v8[133]];
        if (!v32)
        {
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }

        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v6 == v34 && v31 == v36)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v132 ^ v24))
        {
          v8 = &selRef_setTableHeaderView_;
          v10 = v129;
LABEL_28:
          v9 = v121;
LABEL_29:
          v7 = v119;
          if (v132)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_16:
        v4 += 8;
        ++v129;
        v10 = v126;
        v8 = &selRef_setTableHeaderView_;
        if (v126 == v129)
        {
          goto LABEL_28;
        }
      }

      if ((v132 & 1) == 0)
      {
        goto LABEL_16;
      }

      v7 = v119;
      v9 = v121;
      v8 = &selRef_setTableHeaderView_;
      v10 = v129;
LABEL_30:
      if (v10 < v9)
      {
        goto LABEL_147;
      }

      if (v9 < v10)
      {
        v38 = 8 * v10 - 8;
        v39 = 8 * v9;
        v40 = v10;
        v41 = v9;
        do
        {
          if (v41 != --v10)
          {
            v42 = *a3;
            if (!*a3)
            {
              goto LABEL_157;
            }

            v43 = *(v42 + v39);
            *(v42 + v39) = *(v42 + v38);
            *(v42 + v38) = v43;
          }

          ++v41;
          v38 -= 8;
          v39 += 8;
        }

        while (v41 < v10);
        v10 = v40;
      }

LABEL_38:
      v44 = a3[1];
      if (v10 >= v44)
      {
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      v45 = v10;
      if (v10 - v9 >= a4)
      {
LABEL_46:
        v6 = v10;
        if (v10 < v9)
        {
          goto LABEL_145;
        }

        goto LABEL_49;
      }

      v46 = v9 + a4;
      if (__OFADD__(v9, a4))
      {
        goto LABEL_148;
      }

      if (v46 >= v44)
      {
        v46 = a3[1];
      }

      if (v46 < v9)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v10 == v46)
      {
        goto LABEL_46;
      }

      v120 = v7;
      v122 = v9;
      v133 = *a3;
      v4 = *a3 + 8 * v10 - 8;
      v94 = v9 - v10;
      v124 = v46;
      do
      {
        v130 = v45;
        v95 = *(v133 + 8 * v45);
        v125 = v94;
        v127 = v4;
        while (1)
        {
          v96 = *v4;
          v97 = v95;
          v98 = v96;
          v99 = [v97 v8[133]];
          if (!v99)
          {
            goto LABEL_152;
          }

          v100 = v99;
          v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v103 = v102;

          v104 = [v98 v8[133]];
          if (!v104)
          {
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          v105 = v104;
          v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v108 = v107;

          if (v101 == v106 && v103 == v108)
          {
            break;
          }

          v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v8 = &selRef_setTableHeaderView_;
          if ((v110 & 1) == 0)
          {
            goto LABEL_100;
          }

          if (!v133)
          {
            goto LABEL_153;
          }

          v111 = *v4;
          v95 = *(v4 + 8);
          *v4 = v95;
          *(v4 + 8) = v111;
          v4 -= 8;
          if (__CFADD__(v94++, 1))
          {
            goto LABEL_100;
          }
        }

        v8 = &selRef_setTableHeaderView_;
LABEL_100:
        v45 = v130 + 1;
        v4 = v127 + 8;
        v94 = v125 - 1;
      }

      while (v130 + 1 != v124);
      v6 = v124;
      v7 = v120;
      v9 = v122;
      if (v124 < v122)
      {
        goto LABEL_145;
      }

LABEL_49:
      v47 = v7;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v47;
      }

      else
      {
        v7 = sub_10007ABF0(0, *(v47 + 2) + 1, 1, v47);
      }

      v4 = *(v7 + 2);
      v48 = *(v7 + 3);
      v49 = v4 + 1;
      if (v4 >= v48 >> 1)
      {
        v7 = sub_10007ABF0((v48 > 1), v4 + 1, 1, v7);
      }

      *(v7 + 2) = v49;
      v50 = &v7[16 * v4];
      *(v50 + 4) = v9;
      *(v50 + 5) = v6;
      v51 = *a1;
      if (!*a1)
      {
        goto LABEL_159;
      }

      if (v4)
      {
        while (1)
        {
          v52 = v49 - 1;
          if (v49 >= 4)
          {
            break;
          }

          if (v49 == 3)
          {
            v53 = *(v7 + 4);
            v54 = *(v7 + 5);
            v63 = __OFSUB__(v54, v53);
            v55 = v54 - v53;
            v56 = v63;
LABEL_68:
            if (v56)
            {
              goto LABEL_134;
            }

            v69 = &v7[16 * v49];
            v71 = *v69;
            v70 = *(v69 + 1);
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_137;
            }

            v75 = &v7[16 * v52 + 32];
            v77 = *v75;
            v76 = *(v75 + 1);
            v63 = __OFSUB__(v76, v77);
            v78 = v76 - v77;
            if (v63)
            {
              goto LABEL_140;
            }

            if (__OFADD__(v73, v78))
            {
              goto LABEL_141;
            }

            if (v73 + v78 >= v55)
            {
              if (v55 < v78)
              {
                v52 = v49 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v79 = &v7[16 * v49];
          v81 = *v79;
          v80 = *(v79 + 1);
          v63 = __OFSUB__(v80, v81);
          v73 = v80 - v81;
          v74 = v63;
LABEL_82:
          if (v74)
          {
            goto LABEL_136;
          }

          v82 = &v7[16 * v52];
          v84 = *(v82 + 4);
          v83 = *(v82 + 5);
          v63 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v63)
          {
            goto LABEL_139;
          }

          if (v85 < v73)
          {
            goto LABEL_3;
          }

LABEL_89:
          v4 = v52 - 1;
          if (v52 - 1 >= v49)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_154;
          }

          v90 = v7;
          v91 = *&v7[16 * v4 + 32];
          v92 = *&v7[16 * v52 + 40];
          sub_10007A724((*a3 + 8 * v91), (*a3 + 8 * *&v7[16 * v52 + 32]), (*a3 + 8 * v92), v51);
          if (v131)
          {
            goto LABEL_128;
          }

          if (v92 < v91)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_10007ABDC(v90);
          }

          if (v4 >= *(v90 + 2))
          {
            goto LABEL_131;
          }

          v93 = &v90[16 * v4];
          *(v93 + 4) = v91;
          *(v93 + 5) = v92;
          sub_10007AB50(v52);
          v7 = v90;
          v49 = *(v90 + 2);
          if (v49 <= 1)
          {
            goto LABEL_3;
          }
        }

        v57 = &v7[16 * v49 + 32];
        v58 = *(v57 - 64);
        v59 = *(v57 - 56);
        v63 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        if (v63)
        {
          goto LABEL_132;
        }

        v62 = *(v57 - 48);
        v61 = *(v57 - 40);
        v63 = __OFSUB__(v61, v62);
        v55 = v61 - v62;
        v56 = v63;
        if (v63)
        {
          goto LABEL_133;
        }

        v64 = &v7[16 * v49];
        v66 = *v64;
        v65 = *(v64 + 1);
        v63 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v63)
        {
          goto LABEL_135;
        }

        v63 = __OFADD__(v55, v67);
        v68 = v55 + v67;
        if (v63)
        {
          goto LABEL_138;
        }

        if (v68 >= v60)
        {
          v86 = &v7[16 * v52 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v63 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v63)
          {
            goto LABEL_142;
          }

          if (v55 < v89)
          {
            v52 = v49 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v5 = a3[1];
      if (v6 >= v5)
      {
        goto LABEL_117;
      }
    }

LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_117:
  v6 = *a1;
  if (*a1)
  {
    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
    }

    else
    {
LABEL_150:
      v113 = sub_10007ABDC(v4);
    }

    v4 = *(v113 + 2);
    if (v4 < 2)
    {
LABEL_128:

      return;
    }

    while (*a3)
    {
      v114 = *&v113[16 * v4];
      v115 = v113;
      v116 = *&v113[16 * v4 + 24];
      sub_10007A724((*a3 + 8 * v114), (*a3 + 8 * *&v113[16 * v4 + 16]), (*a3 + 8 * v116), v6);
      if (v131)
      {
        goto LABEL_128;
      }

      if (v116 < v114)
      {
        goto LABEL_143;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_10007ABDC(v115);
      }

      if (v4 - 2 >= *(v115 + 2))
      {
        goto LABEL_144;
      }

      v117 = &v115[16 * v4];
      *v117 = v114;
      *(v117 + 1) = v116;
      sub_10007AB50(v4 - 1);
      v113 = v115;
      v4 = *(v115 + 2);
      if (v4 <= 1)
      {
        goto LABEL_128;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

LABEL_162:
  __break(1u);
}

uint64_t sub_10007A470(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 48;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 48;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[48 * v11] <= a4)
    {
      memmove(a4, __dst, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 >= 48 && v6 > v7)
    {
      sub_100008480();
LABEL_23:
      v5 -= 48;
      do
      {
        v17 = v5 + 48;
        v31 = *(v12 - 4);
        v33 = *(v12 - 3);
        v27 = *(v6 - 4);
        v29 = *(v6 - 3);
        if (StringProtocol.localizedCompare<A>(_:)() == -1)
        {
          v21 = v6 - 48;
          if (v17 != v6)
          {
            v22 = *v21;
            v23 = *(v6 - 1);
            *(v5 + 1) = *(v6 - 2);
            *(v5 + 2) = v23;
            *v5 = v22;
          }

          if (v12 <= v4 || (v6 -= 48, v21 <= v7))
          {
            v6 = v21;
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        v18 = v12 - 48;
        if (v17 != v12)
        {
          v19 = *v18;
          v20 = *(v12 - 1);
          *(v5 + 1) = *(v12 - 2);
          *(v5 + 2) = v20;
          *v5 = v19;
        }

        v5 -= 48;
        v12 -= 48;
      }

      while (v18 > v4);
      v12 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_100008480();
      while (1)
      {
        v30 = *(v6 + 2);
        v32 = *(v6 + 3);
        v26 = *(v4 + 2);
        v28 = *(v4 + 3);
        if (StringProtocol.localizedCompare<A>(_:)() != -1)
        {
          break;
        }

        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_10;
        }

LABEL_11:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_33;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_11;
      }

LABEL_10:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_11;
    }

LABEL_33:
    v6 = v7;
  }

LABEL_35:
  v24 = (v12 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v24])
  {
    memmove(v6, v4, 48 * v24);
  }

  return 1;
}

uint64_t sub_10007A724(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = __src;
  v5 = a3;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    v13 = __dst;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v61 = &v4[v8];
    if (v6 >= 8 && v12 < v5)
    {
      v14 = v12;
      v15 = &selRef_setTableHeaderView_;
      v55 = v5;
      while (1)
      {
        v57 = v14;
        v16 = *v4;
        v17 = *v14;
        v18 = v16;
        result = [v17 v15[133]];
        if (!result)
        {
          goto LABEL_58;
        }

        v20 = result;
        v59 = v4;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v15;
        result = [v18 v15[133]];
        if (!result)
        {
          goto LABEL_59;
        }

        v25 = result;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v21 == v26 && v23 == v28)
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v30 & 1) == 0)
        {
          goto LABEL_22;
        }

        v31 = v55;
        v32 = v57;
        v14 = v57 + 1;
        v4 = v59;
        v15 = v24;
        if (v13 != v57)
        {
          goto LABEL_23;
        }

LABEL_24:
        ++v13;
        if (v4 >= v61 || v14 >= v31)
        {
          goto LABEL_26;
        }
      }

LABEL_22:
      v14 = v57;
      v32 = v59;
      v4 = v59 + 1;
      v31 = v55;
      v15 = v24;
      if (v13 == v59)
      {
        goto LABEL_24;
      }

LABEL_23:
      *v13 = *v32;
      goto LABEL_24;
    }

LABEL_26:
    a2 = v13;
    goto LABEL_52;
  }

  if (__src != a2 || &a2[v11] <= __src)
  {
    v33 = a2;
    memmove(__src, a2, 8 * v11);
    a2 = v33;
  }

  v61 = &v4[v11];
  if (v9 < 8 || a2 <= __dst)
  {
LABEL_52:
    if (a2 != v4 || a2 >= (v4 + ((v61 - v4 + (v61 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(a2, v4, 8 * (v61 - v4));
    }

    return 1;
  }

  v34 = &selRef_setTableHeaderView_;
  v60 = v4;
LABEL_33:
  v58 = a2;
  v35 = a2 - 1;
  v36 = v61;
  v54 = a2 - 1;
  while (1)
  {
    v56 = v5;
    v37 = *--v36;
    v38 = *v35;
    v39 = v37;
    v40 = v38;
    result = [v39 v34[133]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45 = v34;
    result = [v40 v34[133]];
    if (!result)
    {
      goto LABEL_57;
    }

    v46 = result;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v52 = v56;
      v5 = v56 - 1;
      v34 = v45;
      if (v51)
      {
        if (v56 != v58)
        {
          *v5 = *v54;
        }

        v4 = v60;
        if (v61 <= v60 || (a2 = v54, v54 <= __dst))
        {
          a2 = v54;
          goto LABEL_52;
        }

        goto LABEL_33;
      }
    }

    v35 = v54;
    if (v61 != v52)
    {
      *v5 = *v36;
    }

    v61 = v36;
    if (v36 <= v60)
    {
      v61 = v36;
      a2 = v58;
      v4 = v60;
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_10007AB50(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007ABDC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_10007ABF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100008438(&qword_10011EAC0, &unk_1000D88E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10007AD08(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10007AD80(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10007AE74;

  return v6(v2 + 32);
}

uint64_t sub_10007AE74()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10007AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100078344(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10007B040(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10007B8A8(a3, a4);
          return sub_100078574(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10007B1A8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v2 = type metadata accessor for Data.Iterator();
  object = *(v2 - 8);
  v4 = *(object + 8);
  __chkstk_darwin(v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v61 = 0;
  v8 = [v7 devicesWithDiscoveryFlags:0x800000 error:&v61];
  v9 = v61;
  if (!v8)
  {
    v36 = v61;
    v37 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C6C0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A570(v38, qword_10011E7A0);
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61 = v42;
      *v41 = 136315138;
      v60 = v37;
      swift_errorRetain();
      sub_100008438(&unk_10011D970, &unk_1000D6500);
      v43 = String.init<A>(reflecting:)();
      v45 = sub_100078978(v43, v44, &v61);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to get paired devices: %s", v41, 0xCu);
      sub_10000EA94(v42);
    }

    else
    {
    }

    return 0;
  }

  v10 = v8;
  sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v9;

  v49 = v11;
  if (v11 >> 62)
  {
LABEL_39:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
LABEL_40:

    return 0;
  }

LABEL_4:
  v14 = 0;
  v53 = v49 & 0xFFFFFFFFFFFFFF8;
  v54 = v49 & 0xC000000000000001;
  v51 = (object + 8);
  v52 = v49 + 32;
  v59 = xmmword_1000D5250;
  v50 = v13;
  while (1)
  {
    if (v54)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *(v53 + 16))
      {
        goto LABEL_38;
      }

      v15 = *(v52 + 8 * v14);
    }

    v16 = v15;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v18 = [v15 btAddressData];
    if (!v18)
    {
      object = String.lowercased()()._object;
LABEL_6:

      goto LABEL_7;
    }

    v19 = v18;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v58 = v16;
    if (v22 >> 62 == 2)
    {
      v23 = *(v20 + 16);
    }

    sub_10007B8A8(v20, v22);
    v57 = v20;
    Data.Iterator.init(_:at:)();
    sub_10007CA2C(&qword_10011EA68, &type metadata accessor for Data.Iterator);
    dispatch thunk of IteratorProtocol.next()();
    v24 = &_swiftEmptyArrayStorage;
    if ((BYTE1(v61) & 1) == 0)
    {
      do
      {
        v28 = v61;
        sub_100008438(&qword_10011EA80, &unk_1000DA490);
        v29 = swift_allocObject();
        *(v29 + 16) = v59;
        *(v29 + 56) = &type metadata for UInt8;
        *(v29 + 64) = &protocol witness table for UInt8;
        *(v29 + 32) = v28;
        v30 = String.init(format:_:)();
        v32 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1000CC104(0, *(v24 + 2) + 1, 1, v24);
        }

        v34 = *(v24 + 2);
        v33 = *(v24 + 3);
        if (v34 >= v33 >> 1)
        {
          v24 = sub_1000CC104((v33 > 1), v34 + 1, 1, v24);
        }

        *(v24 + 2) = v34 + 1;
        v35 = &v24[16 * v34];
        *(v35 + 4) = v30;
        *(v35 + 5) = v32;
        dispatch thunk of IteratorProtocol.next()();
      }

      while (BYTE1(v61) != 1);
    }

    (*v51)(v6, v2);
    v61 = v24;
    sub_100008438(&qword_10011EA70, &unk_1000D8810);
    sub_10001C3D8(&qword_10011EA78, &qword_10011EA70, &unk_1000D8810);
    BidirectionalCollection<>.joined(separator:)();
    sub_100022640(v57, v22);

    v25 = String.lowercased()();

    v26 = String.lowercased()();
    object = v26._object;
    if (!v25._object)
    {
      v13 = v50;
      v16 = v58;
      goto LABEL_6;
    }

    v16 = v58;
    if (v25._countAndFlagsBits == v26._countAndFlagsBits && v25._object == v26._object)
    {
      break;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v50;
    if (v27)
    {
      goto LABEL_35;
    }

LABEL_7:

    if (v14 == v13)
    {
      goto LABEL_40;
    }
  }

LABEL_35:

  v46 = [v16 name];

  if (!v46)
  {
    return 0;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v47;
}

uint64_t sub_10007B8A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10007B8FC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007B934(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__CFString *sub_10007B94C(unint64_t a1)
{
  if (a1 > 3)
  {
    v1 = @"?";
    v2 = @"?";
  }

  else
  {
    v1 = off_100106C60[a1];
    v2 = off_100106C80[a1];
  }

  v3 = v1;

  return v2;
}

uint64_t sub_10007B9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011DE30, &qword_1000D79F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007BA6C()
{
  result = qword_10011EA90;
  if (!qword_10011EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA90);
  }

  return result;
}

unint64_t sub_10007BAC0()
{
  result = qword_10011EA98;
  if (!qword_10011EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA98);
  }

  return result;
}

uint64_t sub_10007BB14()
{
  v1 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10007BC10(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = (v1 + v6);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100064F50;

  return sub_100075444(a1, v8, v9, v10, v11, v1 + v5, v13, v14);
}

uint64_t sub_10007BD6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100064F50;

  return sub_100078704(a1, v5);
}

uint64_t sub_10007BE2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007BE70()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007BF2C()
{
  sub_10001C2AC(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10007BF80(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_10001C2AC(a1, a2 & 1);
  }
}

uint64_t sub_10007BF98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007C0D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007C114()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007C14C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10007C1A0()
{
  v0 = objc_allocWithZone(ASDSystemAppMetadata);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleID:v1];

  [v2 setUserInitiated:1];
  v3 = objc_opt_self();
  v6[4] = sub_10006EB48;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10006ED9C;
  v6[3] = &unk_100106BA8;
  v4 = _Block_copy(v6);
  v5 = v2;
  [v3 installApp:v5 withCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_10007C2D0(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_10007C388(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10007C404(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10007C488(uint64_t a1)
{
  v9 = sub_100008438(&qword_10011EAF8, &qword_1000D8920);
  v10 = sub_10001C3D8(&qword_10011EB00, &qword_10011EAF8, &qword_1000D8920);
  v8[0] = a1;
  v2 = sub_10000E7E4(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100078FD8(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000EA94(v8);
  return v5;
}

void sub_10007C564(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C6C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000A570(v11, qword_10011E7A0);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v27 = v6;
    v28 = a2;
    v29 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 138412546;
    *(v15 + 4) = v12;
    *v16 = v12;
    *(v15 + 12) = 2080;
    v18 = v12;
    v19 = [v18 locale];

    if (!v19)
    {
      __break(1u);
      return;
    }

    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = Locale.identifier.getter();
    v22 = v21;
    (*(v7 + 8))(v10, v27);
    v23 = sub_100078978(v20, v22, &v30);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Live Translation: Asset: %@, Locale: %s", v15, 0x16u);
    sub_10000E950(v16, &unk_10011D820, &qword_1000D7280);

    sub_10000EA94(v17);

    a2 = v28;
    a3 = v29;
  }

  else
  {
  }

  v24 = [v12 isSuggested];
  v12;
  if (v24)
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t sub_10007C8C0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t *sub_10007C900(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10007C964(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007CA2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007CA74(unint64_t a1, unint64_t a2)
{
  v2 = 0x8000000000000000;
  if (a1 <= 0x8000000000000000)
  {
    v3 = 0x8000000000000000;
  }

  else
  {
    v3 = a1;
  }

  if (a2 > 0x8000000000000000)
  {
    v2 = a2;
  }

  return (v2 < a1) - (v3 < a2);
}

uint64_t sub_10007CAA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008438(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_10007CB08()
{
  v1 = *(sub_100008438(&qword_10011EA88, &qword_1000D8880) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 8);
  if (v7 >> 60 != 15)
  {
    sub_100022640(*(v0 + 7), v7);
  }

  v8 = type metadata accessor for PersonalizationAssetManager.PrePairingAssetInfo();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v0[v3], 1, v8))
  {
    (*(v9 + 8))(&v0[v3], v8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10007CC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EA88, &qword_1000D8880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007CCD0(uint64_t a1)
{
  v3 = *(sub_100008438(&qword_10011EA88, &qword_1000D8880) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));
  v12 = *(v1 + 44);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000BD1C;

  return sub_1000721F0(a1, v4, v5, v6, v7, v12, v8, v9);
}

uint64_t sub_10007CE0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10007B8A8(a1, a2);
  }

  return a1;
}

uint64_t sub_10007CE38(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10007CEA0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10007CEE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100064F50;

  return sub_100074EB8(a1, v4, v5, v6);
}

uint64_t sub_10007CFA4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10007CFFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100064F50;

  return sub_10007AD80(a1, v5);
}

uint64_t sub_10007D0B4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD1C;

  return sub_10007AD80(a1, v5);
}

unint64_t sub_10007D180()
{
  result = qword_10011EB28;
  if (!qword_10011EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EB28);
  }

  return result;
}

uint64_t sub_10007D290()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011EB30);
  v1 = sub_10000A570(v0, qword_10011EB30);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10007D358(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  v7 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales] = _swiftEmptyArrayStorage;
  v8 = &v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier];
  *v8 = 0xD000000000000021;
  v8[1] = 0x80000001000E0E60;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_type] = 15;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController] = 0;
  v9 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneModel;
  v10 = type metadata accessor for HeadphoneModel(0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView] = v11;
  v12 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v11];
  v36.receiver = v2;
  v36.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v36, "initWithContentView:", v12);
  v14 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView;
  v15 = *&v13[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableView];
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v15;
  v19 = [v16 clearColor];
  [v18 setBackgroundColor:v19];

  [*&v13[v14] setDataSource:v17];
  v20 = *&v13[v14];
  [v20 setDelegate:v17];

  v21 = *&v13[v14];
  sub_100080ED8();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = *&v17[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier];
  v24 = *&v17[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier + 8];
  v25 = v21;

  v26 = String._bridgeToObjectiveC()();

  [v25 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v26];

  v27 = *&v13[v14];
  v28 = objc_allocWithZone(UIView);
  v29 = v27;
  v30 = [v28 initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v29 setTableHeaderView:v30];

  v31 = *&v13[v14];
  v32 = objc_allocWithZone(UIView);
  v33 = v31;
  v34 = [v32 initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v33 setTableFooterView:v34];

  return v17;
}

void sub_10007D848(uint64_t *a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52 - v5;
  sub_100080B48(a1, &v52 - v5, type metadata accessor for HeadphoneViewModel);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  v55 = *(v7 - 8);
  v8 = *(v55 + 56);
  v58 = v7;
  v8(v6, 0, 1);
  v9 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v57 = v9;
  sub_10000EA2C(v6, v9, &qword_10011F2E0, &unk_1000D8580);
  swift_endAccess();
  v10 = *a1;
  v11 = a1[1];
  v12 = String._bridgeToObjectiveC()();
  [v1 setTitle:v12];

  v13 = a1[2];
  v14 = a1[3];
  v15 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v15];

  v16 = a1[4];
  v17 = a1[5];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v64 = sub_100080B18;
  v65 = v18;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10000C034;
  v63 = &unk_100106D58;
  v20 = _Block_copy(&aBlock);
  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:0 handler:v20];

  _Block_release(v20);

  v56 = v22;

  v24 = a1[6];
  v23 = a1[7];
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v26 = String._bridgeToObjectiveC()();
  v64 = sub_100080B38;
  v65 = v25;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10000C034;
  v63 = &unk_100106D80;
  v27 = _Block_copy(&aBlock);
  v28 = [v21 actionWithTitle:v26 style:1 handler:v27];

  _Block_release(v27);

  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A570(v29, qword_100122FA0);
  v30 = v1;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v54 = v28;
    v33 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = v53;
    *v33 = 136315394;
    v34 = *(v55 + 48);
    v35 = 1;
    v37 = v57;
    v36 = v58;
    if (v34(v57, 1, v58) || (v39 = *(v37 + *(v36 + 80))) == 0)
    {
      v38 = 0;
    }

    else if (v39 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      v35 = 0;
    }

    else
    {
      v35 = 0;
      v38 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    aBlock = v38;
    LOBYTE(v61) = v35;
    sub_100008438(&unk_10011EBC0, &qword_1000D8B20);
    v40 = String.init<A>(reflecting:)();
    v42 = sub_100078978(v40, v41, &v59);

    *(v33 + 4) = v42;
    *(v33 + 12) = 2080;
    v43 = 1;
    v45 = v57;
    v44 = v58;
    if (v34(v57, 1, v58) || (v47 = (v45 + *(v44 + 80)), !*v47))
    {
      v46 = 0;
    }

    else
    {
      v48 = v47[1];
      if (v48 >> 62)
      {
        v46 = _CocoaArrayWrapper.endIndex.getter();
        v43 = 0;
      }

      else
      {
        v43 = 0;
        v46 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    aBlock = v46;
    LOBYTE(v61) = v43;
    v49 = String.init<A>(reflecting:)();
    v51 = sub_100078978(v49, v50, &v59);

    *(v33 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v31, v32, "Live Translation: ViewModel: suggestedLanguages: %s, moreLanguages: %s", v33, 0x16u);
    swift_arrayDestroy();

    v28 = v54;
  }

  else
  {
  }

  sub_10007E91C();
}

void sub_10007DE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_beginAccess();
      sub_1000145EC(v5 + 16, aBlock);
      swift_unknownObjectRelease();
      v6 = v43;
      if (v43)
      {
        v7 = sub_10000E7E4(aBlock, v43);
        v8 = *(v6 - 1);
        v9 = *(v8 + 64);
        __chkstk_darwin(v7);
        v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v8 + 16))(v11);
        sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
        v12 = *(*v11 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_isUsingCellular);
        (*(v8 + 8))(v11, v6);
        if (v12 == 1)
        {
          swift_beginAccess();
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
            v15 = v13;
            swift_beginAccess();
            v16 = *&v15[v14];

            v17 = *(v16 + 16);

            if (v17)
            {
              if (qword_10011C5C0 != -1)
              {
                swift_once();
              }

              v18 = type metadata accessor for Logger();
              sub_10000A570(v18, qword_100122FA0);
              v19 = Logger.logObject.getter();
              v20 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v19, v20))
              {
                v21 = swift_slowAlloc();
                *v21 = 0;
                _os_log_impl(&_mh_execute_header, v19, v20, "Live Translation: Using Cellular, show alert", v21, 2u);
              }

              sub_100033A5C(102);
              sub_100033A5C(103);
              v22 = String._bridgeToObjectiveC()();

              v23 = String._bridgeToObjectiveC()();

              v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

              sub_100033A5C(104);

              v25 = String._bridgeToObjectiveC()();

              v44 = sub_100080B40;
              v45 = a2;
              aBlock[0] = _NSConcreteStackBlock;
              aBlock[1] = 1107296256;
              aBlock[2] = sub_10000C034;
              v43 = &unk_100106DA8;
              v26 = _Block_copy(aBlock);

              v27 = objc_opt_self();
              v28 = [v27 actionWithTitle:v25 style:1 handler:v26];
              _Block_release(v26);

              [v24 addAction:v28];
              sub_100033A5C(105);
              v29 = String._bridgeToObjectiveC()();

              v30 = [v27 actionWithTitle:v29 style:0 handler:0];

              [v24 addAction:v30];
              swift_beginAccess();
              v31 = swift_unknownObjectWeakLoadStrong();
              if (v31)
              {
                v32 = v31;
                [v31 presentViewController:v24 animated:1 completion:0];
              }

              goto LABEL_23;
            }
          }
        }
      }

      else
      {
        sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      }
    }
  }

  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000A570(v33, qword_100122FA0);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Live Translation: NOT Using Cellular, start trigger", v36, 2u);
  }

  swift_beginAccess();
  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v24 = v37;
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v40 = v38;
      swift_beginAccess();
      v41 = *&v40[v39];
    }

    else
    {
      v41 = _swiftEmptyArrayStorage;
    }

    sub_10007E58C(v41, 0);

LABEL_23:
  }
}

void sub_10007E4C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v4 = v2;
      swift_beginAccess();
      v5 = *&v4[v3];
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_10007E58C(v5, 1);
  }
}

void sub_10007E58C(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  if (v5)
  {
    v6 = qword_10011C6D0;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_10011EB30);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Requested Not Now for Live Translation", v11, 2u);
    }

    sub_1000145EC(v7 + OBJC_IVAR____TtC20HeadphoneProxService19ModernFlowPresenter_interActor, v13);
    if (v14)
    {
      v12 = *sub_10000E7E4(v13, v14);
      sub_100077448(a1, a2 & 1);
      sub_10000EA94(v13);
    }

    else
    {
      sub_10000E950(v13, &qword_10011FBC0, &unk_1000D5EF0);
    }

    sub_1000AA094(0, 0);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8BBC(a1, a2 & 1);

    swift_unknownObjectRelease();
  }
}

void sub_10007E754()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10007E7A8();
  }
}

void sub_10007E7A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C6D0;
    v7 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011EB30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requested Not Now for Live Translation", v6, 2u);
    }

    sub_1000AA094(0, 1);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8BAC();

    swift_unknownObjectRelease();
  }
}

void sub_10007E91C()
{
  v1 = v0;
  v58 = type metadata accessor for Locale();
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v58);
  v56 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = v49 - v6;
  v7 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v8 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) || (v13 = (v7 + *(v8 + 80)), (v14 = *v13) == 0))
  {
    if (qword_10011C5C0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A570(v9, qword_100122FA0);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Live Translation: Invalid Source, cannot prefill suggested section", v12, 2u);
    }

    return;
  }

  v15 = v13[1];
  v50 = v14 & 0xFFFFFFFFFFFFFF8;
  if (!(v14 >> 62))
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_32:
    sub_10007C0D4(v14);

    return;
  }

  v47 = v15;
  v48 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v47;
  v16 = v48;
  if (!v48)
  {
    goto LABEL_32;
  }

LABEL_9:
  v60 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
  v55 = v14 & 0xC000000000000001;
  v49[1] = v15;
  sub_10007C0D4(v14);
  v57 = (v2 + 8);

  v17 = 0;
  *&v18 = 136315138;
  v52 = v18;
  v54 = v1;
  v51 = v16;
  while (1)
  {
    if (v55)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *(v50 + 16))
      {
        goto LABEL_29;
      }

      v19 = *(v14 + 8 * v17 + 32);
    }

    v20 = v19;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v59 = v17 + 1;
    if (qword_10011C5C0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A570(v21, qword_100122FA0);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v14;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v61 = v27;
      *v26 = v52;
      v28 = [v22 locale];

      if (!v28)
      {
        goto LABEL_34;
      }

      v29 = v53;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = Locale.identifier.getter();
      v32 = v31;
      (*v57)(v29, v58);
      v33 = sub_100078978(v30, v32, &v61);

      *(v26 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v23, v24, "Live Translation: Prefill: %s", v26, 0xCu);
      sub_10000EA94(v27);

      v14 = v25;
      v16 = v51;
    }

    else
    {
    }

    v34 = [v22 locale];
    v35 = v54;
    if (!v34)
    {
      break;
    }

    v36 = v34;
    v37 = v56;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = Locale.identifier.getter();
    v40 = v39;
    (*v57)(v37, v58);
    v41 = v60;
    swift_beginAccess();
    v42 = *(v35 + v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v35 + v41) = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_1000CC104(0, *(v42 + 2) + 1, 1, v42);
      *(v35 + v60) = v42;
    }

    v45 = *(v42 + 2);
    v44 = *(v42 + 3);
    if (v45 >= v44 >> 1)
    {
      v42 = sub_1000CC104((v44 > 1), v45 + 1, 1, v42);
    }

    *(v42 + 2) = v45 + 1;
    v46 = &v42[16 * v45];
    *(v46 + 4) = v38;
    *(v46 + 5) = v40;
    *(v35 + v60) = v42;
    swift_endAccess();

    ++v17;
    if (v59 == v16)
    {

      swift_bridgeObjectRelease_n();
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL sub_10007EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + *(type metadata accessor for HeadphoneModel(0) + 196));
  v11 = 0;
  if (*(v6 + 16))
  {
    v7 = sub_1000CD190(0xEu);
    if ((v8 & 1) == 0 || *(*(v6 + 56) + 24 * v7 + 16) != 1)
    {
      if (*(v6 + 16))
      {
        v9 = sub_1000CD190(0xEu);
        if ((v10 & 1) != 0 && !*(*(v6 + 56) + 24 * v9 + 16))
        {
          v11 = 1;
        }
      }
    }
  }

  sub_100080B48(a4, a1, type metadata accessor for HeadphoneModel);
  return v11;
}

uint64_t type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController()
{
  result = qword_10011EB98;
  if (!qword_10011EB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007F0AC()
{
  sub_10007F1FC(319, &qword_10011D478, type metadata accessor for HeadphoneViewModel);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10007F1FC(319, &qword_10011EBB0, type metadata accessor for HeadphoneModel);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007F1FC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10007F27C(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController) = a1;
  return _objc_release_x1();
}

uint64_t sub_10007F294(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

uint64_t sub_10007F32C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000168A4(a2);
  v4 = sub_100033A5C(106);
  v6 = v5;
  v7 = a2[1];

  *a2 = v4;
  a2[1] = v6;
  v8 = sub_100033A5C(107);
  v10 = v9;
  v11 = a2[3];

  a2[2] = v8;
  a2[3] = v10;
  v12 = sub_100033A5C(108);
  v14 = v13;
  v15 = a2[5];

  a2[4] = v12;
  a2[5] = v14;
  v16 = sub_100033A5C(109);
  v18 = v17;
  v19 = a2[7];

  a2[6] = v16;
  a2[7] = v18;
  v21 = *(a1 + 112);
  v20 = *(a1 + 120);
  v22 = (a2 + *(type metadata accessor for HeadphoneViewModel(0) + 80));
  v23 = *v22;
  v24 = v22[1];
  sub_10007C0D4(v21);
  result = sub_10007C8C0(v23);
  *v22 = v21;
  v22[1] = v20;
  return result;
}

void sub_10007F464(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v70 - v9;
  v11 = sub_100008438(&qword_10011EBE8, &unk_1000D8B30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v70 - v13;
  v15 = type metadata accessor for UIBackgroundConfiguration();
  v81 = *(v15 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v15);
  v79 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for UIListContentConfiguration();
  v78 = *(v80 - 8);
  v18 = *(v78 + 64);
  __chkstk_darwin(v80);
  v82 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier);
  v21 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_tableIdentifier + 8);
  v22 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v83 = [a1 dequeueReusableCellWithIdentifier:v22 forIndexPath:isa];

  v24 = IndexPath.section.getter();
  if (v24)
  {
    if (v24 != 1)
    {
      return;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v27 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v28 = (v26 + *(v27 + 80));
    v29 = *v28;
    if (*v28)
    {
      v30 = v28[1];
      v31 = *v28;

      v32 = IndexPath.row.getter();
      v76 = v4;
      if (v25)
      {
        if ((v30 & 0xC000000000000001) == 0)
        {
          if ((v32 & 0x8000000000000000) == 0)
          {
            if (v32 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v33 = v30 + 8 * v32;
LABEL_16:
              v34 = *(v33 + 32);
              goto LABEL_17;
            }

            goto LABEL_29;
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else if ((v29 & 0xC000000000000001) == 0)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          if (v32 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v33 = v29 + 8 * v32;
            goto LABEL_16;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
      v72 = v29;
      v35 = v34;
      static UIListContentConfiguration.cell()();
      v36 = v35;
      v37 = [v35 displayName];
      v74 = v30;
      if (v37)
      {
        v38 = v37;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v39 = v82;
      UIListContentConfiguration.text.setter();
      v40 = v80;
      v86[3] = v80;
      v86[4] = &protocol witness table for UIListContentConfiguration;
      v41 = sub_10007C900(v86);
      (*(v78 + 16))(v41, v39, v40);
      UITableViewCell.contentConfiguration.setter();
      v42 = v79;
      static UIBackgroundConfiguration.listCell()();
      v73 = objc_opt_self();
      v43 = [v73 quaternarySystemFillColor];
      UIBackgroundConfiguration.backgroundColor.setter();
      v44 = v81;
      (*(v81 + 16))(v14, v42, v15);
      v45 = *(v44 + 56);
      v75 = v15;
      v45(v14, 0, 1, v15);
      UITableViewCell.backgroundConfiguration.setter();
      v46 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      swift_beginAccess();
      v47 = *(v2 + v46);

      v48 = [v36 locale];
      if (v48)
      {
        v49 = v48;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = Locale.identifier.getter();
        v52 = v51;
        v77 = *(v77 + 8);
        v53 = (v77)(v10, v76);
        v84 = v50;
        v85 = v52;
        __chkstk_darwin(v53);
        *(&v70 - 2) = &v84;
        sub_100080A34(sub_100080E64, (&v70 - 4), v47);

        v54 = *(v2 + v46);

        v55 = [v36 locale];

        v71 = v36;
        if (v55)
        {
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = Locale.identifier.getter();
          v58 = v57;
          v59 = (v77)(v8, v76);
          v84 = v56;
          v85 = v58;
          __chkstk_darwin(v59);
          *(&v70 - 2) = &v84;
          LOBYTE(v56) = sub_100080A34(sub_100080F34, (&v70 - 4), v54);

          v60 = &selRef_tintColor;
          if ((v56 & 1) == 0)
          {
            v60 = &selRef_tertiaryLabelColor;
          }

          v61 = [v73 *v60];
          v62 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
          [v62 pointSize];
          v64 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v63];
          v65 = String._bridgeToObjectiveC()();
          v66 = [objc_opt_self() _systemImageNamed:v65];

          v67 = v75;
          if (v66)
          {

            v68 = [v66 imageWithConfiguration:v64];

            v69 = [objc_allocWithZone(UIImageView) initWithImage:v68];
            [v69 setTintColor:v61];
            [v83 setAccessoryView:v69];

            (*(v81 + 8))(v79, v67);
            (*(v78 + 8))(v82, v80);
            return;
          }

LABEL_33:
          __break(1u);
          return;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }
}