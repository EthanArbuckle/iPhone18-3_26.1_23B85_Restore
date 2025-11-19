void sub_100016CC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeMigrationItem);
  if (v1)
  {
    v2 = v0;
    v3 = (v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
    if (*(v0 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8))
    {
      v4 = *v3;
      v5 = v1;

      v6 = sub_100017090();

      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000032F0(v7, qword_10007F150);
      v8 = v5;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v8;
        *v12 = v1;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, v10, "configureUpgrade: %@", v11, 0xCu);
        sub_1000227E8(v12, &qword_10007F278, &unk_10005CD60);
      }

      v14 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery;
      v15 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
      if (!v15)
      {
        sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10005C520;
        *(v16 + 32) = v6;
        objc_allocWithZone(DADiscovery);
        v17 = v6;
        v18 = sub_10001F2BC();
        v19 = *(v2 + v14);
        *(v2 + v14) = v18;

        v15 = *(v2 + v14);
        if (!v15)
        {
          goto LABEL_21;
        }
      }

      if (v3[1])
      {
        v20 = *v3;
        v21 = v15;

        v22 = String._bridgeToObjectiveC()();
      }

      else
      {
        v23 = v15;
        v22 = 0;
      }

      [v15 setBundleID:v22];

      v24 = *(v2 + v14);
      if (v24)
      {
        v25 = v24;
        [v25 setFlags:{objc_msgSend(v25, "flags") | 4}];

        v26 = *(v2 + v14);
        if (v26)
        {
          v27 = v26;
          [v27 setFlags:{objc_msgSend(v27, "flags") | 0x10}];

          v28 = *(v2 + v14);
          if (v28)
          {
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_100022264;
            aBlock[5] = v29;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100022FBC;
            aBlock[3] = &unk_100071B38;
            v30 = _Block_copy(aBlock);
            v31 = v28;

            [v31 setEventHandler:v30];
            _Block_release(v30);

            return;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }
}

id sub_100017090()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(DADiscoveryConfiguration) init];
  v8 = String._bridgeToObjectiveC()();
  [v7 setBundleID:v8];

  v9 = [v1 identifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v7 setAssociationIdentifier:v9];

  v10 = [v1 name];
  if (!v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();
  }

  [v7 setDisplayName:v10];

  [v7 setAllowsRename:{objc_msgSend(v1, "setupOptions") & 1}];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = v1;
    v14 = [v12 peripheralIdentifier];
    if (v14)
    {
      v15 = v14;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v16.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16.super.isa = 0;
    }

    [v7 setBluetoothIdentifier:v16.super.isa];

    v17 = [v12 hotspotSSID];
    [v7 setNetworkHotspotSSID:v17];

    [v7 setWifiAwarePairingID:{objc_msgSend(v12, "wifiAwarePairedDeviceID")}];
    v18 = [v12 accessoryIdentifier];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    [v7 setExistingDeviceIdentifier:v18];
  }

  v19 = [v1 descriptor];
  v20 = [v19 SSID];

  if (v20)
  {
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    sub_100009894(&qword_10007F2A8, &qword_10005D050);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_10005C440;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setHotspotSSIDs:isa];
  }

  v26 = [v1 descriptor];
  v27 = [v26 SSIDPrefix];

  if (v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    sub_100009894(&qword_10007F2A8, &qword_10005D050);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10005C440;
    *(v31 + 32) = v28;
    *(v31 + 40) = v30;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v7 setHotspotSSIDPrefixes:v32];
  }

  v33 = [v1 descriptor];
  v34 = [v33 wifiAwareServiceName];

  if (v34)
  {
    [v7 setWifiAwareServiceName:v34];

    v35 = [v1 descriptor];
    v36 = [v35 wifiAwareModelNameMatch];

    if (v36)
    {
      v37 = [v36 string];
      if (!v37)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = String._bridgeToObjectiveC()();
      }

      v38 = [objc_allocWithZone(DAPropertyCompareString) initWithString:v37 compareOptions:{objc_msgSend(v36, "compareOptions")}];

      [v7 setWifiAwareModelNameMatch:v38];
    }

    v39 = [v1 descriptor];
    v40 = [v39 wifiAwareVendorNameMatch];

    if (v40)
    {
      v41 = [v40 string];
      if (!v41)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = String._bridgeToObjectiveC()();
      }

      v42 = [objc_allocWithZone(DAPropertyCompareString) initWithString:v41 compareOptions:{objc_msgSend(v40, "compareOptions")}];

      [v7 setWifiAwareVendorNameMatch:v42];
    }

    v43 = [v1 descriptor];
    v44 = [v43 wifiAwareServiceRole];

    if (v44 == 20)
    {
      v45 = 20;
    }

    else
    {
      v45 = 10;
    }

    [v7 setWifiAwareServiceType:v45];
  }

  if (([v1 setupOptions] & 2) != 0)
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 0x10}];
  }

  v46 = [v1 descriptor];
  v47 = [v46 bluetoothCompanyIdentifier];

  if (v47)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10005C520;
    v49 = [v1 descriptor];
    v50 = [v49 bluetoothCompanyIdentifier];

    *(v48 + 32) = [objc_allocWithZone(NSNumber) initWithUnsignedShort:v50];
    sub_100009B48(0, &qword_10007F2A0, NSNumber_ptr);
    v51 = Array._bridgeToObjectiveC()().super.isa;

    [v7 setBluetoothCompanyIdentifiers:v51];
  }

  v52 = [v1 descriptor];
  v53 = [v52 bluetoothServiceUUID];

  if (v53)
  {
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10005C520;
    *(v54 + 32) = v53;
    sub_100009B48(0, &qword_10007F298, CBUUID_ptr);
    v55 = v53;
    v56 = Array._bridgeToObjectiveC()().super.isa;

    [v7 setBluetoothServices:v56];
  }

  v57 = [v1 descriptor];
  v58 = [v57 supportedOptions];

  if ((v58 & 2) != 0)
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 2}];
  }

  v59 = [v1 descriptor];
  v60 = [v59 supportedOptions];

  if ((v60 & 4) != 0)
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 4}];
  }

  v61 = [v1 descriptor];
  v62 = [v61 supportedOptions];

  if ((v62 & 8) != 0)
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 0x20}];
  }

  if ([v1 renameOptions])
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 8}];
  }

  v63 = [v1 descriptor];
  v64 = [v63 bluetoothRange];

  [v7 setBluetoothRange:v64];
  v65 = [v1 descriptor];
  v66 = [v65 bluetoothNameSubstring];

  [v7 setBluetoothNameSubstring:v66];
  v67 = [v1 descriptor];
  v68 = [v67 bluetoothServiceDataBlob];

  if (v68)
  {
    v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;

    v68 = Data._bridgeToObjectiveC()().super.isa;
    sub_10002215C(v69, v71);
  }

  [v7 setBluetoothServicePayload:v68];

  v72 = [v1 descriptor];
  v73 = [v72 bluetoothServiceDataMask];

  if (v73)
  {
    v74 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v73 = Data._bridgeToObjectiveC()().super.isa;
    sub_10002215C(v74, v76);
  }

  [v7 setBluetoothServicePayloadMask:v73];

  v77 = [v1 descriptor];
  v78 = [v77 bluetoothManufacturerDataBlob];

  if (v78)
  {
    v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;

    v78 = Data._bridgeToObjectiveC()().super.isa;
    sub_10002215C(v79, v81);
  }

  [v7 setBluetoothCompanyPayload:v78];

  v82 = [v1 descriptor];
  v83 = [v82 bluetoothManufacturerDataMask];

  if (v83)
  {
    v84 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v83 = Data._bridgeToObjectiveC()().super.isa;
    sub_10002215C(v84, v86);
  }

  [v7 setBluetoothCompanyPayloadMask:v83];

  v87 = [v1 descriptor];
  v88 = [v87 bluetoothNameSubstringCompareOptions];

  [v7 setBluetoothNameSubstringCompareOptions:v88];
  return v7;
}

void sub_100017CD8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1);
  }
}

void sub_100017D48(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v82 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v81 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000032F0(v12, qword_10007F150);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v80 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v18 = v13;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Upgrade discovery event: %@", v17, 0xCu);
    sub_1000227E8(v18, &qword_10007F278, &unk_10005CD60);

    v2 = v1;
    v9 = v80;
  }

  v20 = [v13 eventType];
  if (v20 > 39)
  {
    if (v20 > 55)
    {
      if (v20 != 56)
      {
        if (v20 != 60)
        {
          return;
        }

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Upgrade discovery: XPC connection to dataaccessd interrupted, clearing devices", v33, 2u);
        }

        v34 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
        if (!v34)
        {
          return;
        }

        goto LABEL_58;
      }

      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
        v49 = v48;
        v82 = v13;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Calling handleWiFiAwarePairingRequest", v52, 2u);
        }

        sub_10001C66C(v49);
        goto LABEL_46;
      }

      aBlock = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(95);
      v73._countAndFlagsBits = 0xD00000000000005DLL;
      v73._object = 0x800000010005E040;
      String.append(_:)(v73);
      v74 = [v13 description];
      v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v76;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);
    }

    else
    {
      if (v20 == 40)
      {
        sub_10001BE7C();
        if (v38)
        {
          v39 = v37;
          v40 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
          if (v40)
          {
            [v40 invalidate];
          }

          v41 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
          if (v41)
          {
            v42 = v41;
            [v42 invalidate];
          }
        }

        return;
      }

      if (v20 != 55)
      {
        return;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v82 = v13;
        sub_10001C234(v24);
LABEL_46:
        v53 = v82;

        return;
      }

      aBlock = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      v67._object = 0x800000010005E0A0;
      v67._countAndFlagsBits = 0xD000000000000051;
      String.append(_:)(v67);
      v68 = [v13 description];
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      v72._countAndFlagsBits = v69;
      v72._object = v71;
      String.append(_:)(v72);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (v20 <= 16)
  {
    if (v20 != 10)
    {
      if (v20 != 16)
      {
        return;
      }

      sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
      v80 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = sub_100022294;
      v89 = v21;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v22 = &unk_100071B88;
      goto LABEL_40;
    }

    if (qword_10007EC50 != -1)
    {
      swift_once();
    }

    v35 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v35)
    {
      v36 = *(v35 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout);
    }

    else
    {
      v36 = 30.0;
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v54, v55, "Discovery timeout of %f seconds", v56, 0xCu);
    }

    v57 = objc_opt_self();
    v58 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = sub_10002229C;
    v89 = v58;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_100022FBC;
    v87 = &unk_100071BB0;
    v59 = _Block_copy(&aBlock);

    v60 = [v57 scheduledTimerWithTimeInterval:0 repeats:v59 block:v36];
    _Block_release(v59);
    v61 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer) = v60;

    if (v36 > 60.0)
    {
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v88 = sub_1000222D4;
      v89 = v62;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100022FBC;
      v87 = &unk_100071BD8;
      v63 = _Block_copy(&aBlock);

      v64 = [v57 scheduledTimerWithTimeInterval:0 repeats:v63 block:30.0];
      _Block_release(v63);
      v65 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
      *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer) = v64;
    }

    return;
  }

  if (v20 == 17)
  {
    sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
    v80 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v88 = sub_100022EF8;
    v89 = v43;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v22 = &unk_100071B60;
LABEL_40:
    v86 = sub_1000102BC;
    v87 = v22;
    v44 = _Block_copy(&aBlock);

    v45 = v81;
    static DispatchQoS.unspecified.getter();
    v83 = _swiftEmptyArrayStorage;
    v79[1] = sub_10001F8CC();
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    v46 = v82;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v47 = v80;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v5 + 8))(v46, v4);
    (*(v9 + 8))(v45, v8);

    return;
  }

  if (v20 == 20)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Upgrade discovery XPC connection to dataaccessd invalidated", v27, 2u);
    }

    v28 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery;
    v29 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_upgradeDiscovery);
    if (v29)
    {
      [v29 invalidateWithReason:0];
      v30 = *(v2 + v28);
    }

    else
    {
      v30 = 0;
    }

    *(v2 + v28) = 0;

    v66 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    if (v66)
    {
      [v66 invalidate];
    }

    v34 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
    if (v34)
    {
LABEL_58:

      [v34 invalidate];
    }
  }
}

void sub_100018980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v4)
  {
    [v4 invalidateWithReason:a1];
    v4 = *(v1 + v3);
  }

  *(v1 + v3) = 0;
}

void sub_1000189D4(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (a2)
  {
    if (v4)
    {
      [v4 invalidate];
    }
  }

  else if (v4)
  {
    [v4 invalidateWithReason:a1];
  }

  v5 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  if (*(v2 + v5))
  {
    *(v2 + v5) = &_swiftEmptyDictionarySingleton;

    v6 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
    swift_beginAccess();
    if (*(v2 + v6))
    {
      *(v2 + v6) = &_swiftEmptyArrayStorage;
    }

    swift_endAccess();
    v7 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100018ABC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_100018B28(unint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v167 = *(v10 - 8);
  v11 = *(v167 + 64);
  __chkstk_darwin(v10);
  v162 = &v158 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v174 = v2;
  v14 = *&v2[v13];
  if (!v14)
  {
    __break(1u);
    goto LABEL_118;
  }

  v158 = v9;
  if (!*(v14 + 16))
  {
    goto LABEL_133;
  }

  v15 = sub_10001F768(a1, a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_133;
  }

  v159 = v10;
  v160 = v6;
  v17 = *(*(v14 + 56) + 8 * v15);
  swift_endAccess();
  v18 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v18)
  {
    goto LABEL_139;
  }

  v169 = &v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v19 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v20 = qword_10007EC50;
  v21 = v17;

  if (v20 != -1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    v170 = qword_1000814E8;
    v165 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v22 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (!v22)
    {
      goto LABEL_139;
    }

    v23 = v22[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];
    v171 = v21;
    v166 = v18;
    v163 = v19;
    v164 = v22;
    v161 = v5;
    if ((v23 & 1) == 0)
    {
      v32 = v21;
      v33 = v22;
      goto LABEL_15;
    }

    v24 = *(v21 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
    if (!v24)
    {
      goto LABEL_126;
    }

    v5 = v21;
    v25 = v22;
    v26 = v24;
    v27 = [v26 bluetoothAdvertisementData];
    if (!v27)
    {

      goto LABEL_15;
    }

    v28 = [v26 appAccessInfoMap];
    if (!v28)
    {

LABEL_40:
      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_1000032F0(v67, qword_10007F150);
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        a2 = swift_slowAlloc();
        *v70 = 138412290;
        *(v70 + 4) = v5;
        *a2 = v5;
        v71 = v5;
        _os_log_impl(&_mh_execute_header, v68, v69, "Pick device: %@", v70, 0xCu);
        sub_1000227E8(a2, &qword_10007F278, &unk_10005CD60);
      }

      v72 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
      v73 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice);
      if (v73)
      {
        v74 = [v73 appAccessInfoMap];
        if (v74)
        {
          v75 = v74;
          sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
          v76 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v77 = v169[1];
          if (!v77)
          {
            goto LABEL_125;
          }

          if (*(v76 + 16))
          {
            v78 = *v169;
            v79 = v169[1];

            v80 = sub_10001F768(v78, v77);
            a2 = v81;

            if (a2)
            {
              v82 = *(*(v76 + 56) + 8 * v80);

LABEL_52:
              v83 = v5;
              sub_1000356E8();
              v85 = v84;

              if (v85 && !v82)
              {
                aBlock = 0;
                v177 = 0xE000000000000000;
                _StringGuts.grow(_:)(67);
                v151._countAndFlagsBits = 0xD000000000000041;
                v151._object = 0x800000010005DEB0;
                String.append(_:)(v151);
                v152 = v83;
                v153 = [v152 description];
                v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v156 = v155;

                v157._countAndFlagsBits = v154;
                v157._object = v156;
                String.append(_:)(v157);

                goto LABEL_139;
              }

              v86 = *(v5 + v72);
              if (!v86)
              {
                goto LABEL_119;
              }

              v168 = v72;
              a2 = v83;
              v87 = [v86 identifier];
              if (v87)
              {
                v88 = v87;
                v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v91 = v90;

                v92 = &v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID];
                v93 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8];
                *v92 = v89;
                v92[1] = v91;

                v94 = *(v170 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
                if (v94)
                {
                  [v94 pickerDidSelectAccessory];
                }

                if (v169[1])
                {
                  v167 = a2;
                  if (!v92[1])
                  {
                    goto LABEL_122;
                  }

                  v95 = *v169;
                  a2 = *v92;
                  a1 = objc_allocWithZone(DADeviceAppAccessInfo);

                  v96 = String._bridgeToObjectiveC()();

                  v97 = String._bridgeToObjectiveC()();

                  v98 = [a1 initWithBundleIdentifier:v96 deviceIdentifier:v97 state:10];

                  v21 = v168;
                  v99 = *(v5 + v168);
                  if (v99)
                  {
                    v100 = [v99 discoveryConfiguration];
                    a1 = v167;
                    if (v100)
                    {
                      v101 = v100;
                      v102 = [v100 associationIdentifier];

                      if (v102)
                      {
                        v162 = v82;
                        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v104 = v103;

                        v173 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItems];
                        if (!v173)
                        {
                          goto LABEL_128;
                        }

                        *&v172 = v104;
                        v105 = v173 & 0xFFFFFFFFFFFFFF8;
                        v161 = v98;
                        if (v173 >> 62)
                        {
                          v106 = _CocoaArrayWrapper.endIndex.getter();
                        }

                        else
                        {
                          v106 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        if (v106)
                        {
                          a1 = 0;
                          v169 = (v173 & 0xC000000000000001);
                          while (1)
                          {
                            if (v169)
                            {
                              v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                            }

                            else
                            {
                              if (a1 >= *(v105 + 16))
                              {
                                goto LABEL_109;
                              }

                              v107 = *(v173 + 8 * a1 + 32);
                            }

                            a2 = v107;
                            v108 = a1 + 1;
                            if (__OFADD__(a1, 1))
                            {
                              goto LABEL_108;
                            }

                            v109 = [v107 identifier];
                            v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                            v111 = v110;

                            if (v18 == v19 && v111 == v172)
                            {
                              break;
                            }

                            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                            if (v21)
                            {

LABEL_84:

                              v113 = sub_100017090();
                              v98 = v161;
                              [v161 setAppDiscoveryConfiguration:v113];

                              v114 = *(v170 + v165);
                              v82 = v162;
                              a1 = v167;
                              v21 = v168;
                              if (v114)
                              {
                                v115 = v114;
                                v116 = [a2 renameOptions];

                                v115[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = v116 & 1;
                              }

                              else
                              {
                              }

                              goto LABEL_87;
                            }

                            ++a1;
                            if (v108 == v106)
                            {
                              goto LABEL_80;
                            }
                          }

                          goto LABEL_84;
                        }

LABEL_80:

                        a1 = v167;
                        v82 = v162;
                        v21 = v168;
                        v98 = v161;
                      }
                    }

LABEL_87:
                    a2 = v164;
                    if (*(a1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup) == 1)
                    {
                      v117 = *(v5 + v21);
                      if (!v117)
                      {
                        goto LABEL_127;
                      }

                      v118 = v117;
                      [v118 setFlags:{objc_msgSend(v118, "flags") | 0x10}];
                    }

                    v119 = *(v170 + v165);
                    if (!v119)
                    {
                      goto LABEL_96;
                    }

                    v120 = *(v119 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
                    if (v120 != 1)
                    {
                      if (!v120)
                      {
                        v121 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
                        if (!v121)
                        {
                          goto LABEL_129;
                        }

                        v122 = *(v5 + v21);
                        if (v122)
                        {
                          v123 = v121;
                          v124 = v122;

                          v125 = swift_allocObject();
                          v126 = v174;
                          *(v125 + 16) = v174;
                          v180 = sub_10001F830;
                          v181 = v125;
                          aBlock = _NSConcreteStackBlock;
                          v177 = 1107296256;
                          v127 = &unk_1000717C8;
LABEL_100:
                          v178 = sub_100018ABC;
                          v179 = v127;
                          v131 = _Block_copy(&aBlock);
                          v132 = v126;

                          [v123 setDeviceAppAccessInfo:v98 device:v124 completionHandler:v131];

                          _Block_release(v131);
                          return;
                        }

                        goto LABEL_131;
                      }

LABEL_96:

                      return;
                    }

                    v128 = *&v174[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery];
                    if (v128)
                    {
                      v129 = *(v5 + v21);
                      if (v129)
                      {
                        v123 = v128;
                        v124 = v129;

                        v130 = swift_allocObject();
                        v126 = v174;
                        *(v130 + 16) = v174;
                        v180 = sub_100022FCC;
                        v181 = v130;
                        aBlock = _NSConcreteStackBlock;
                        v177 = 1107296256;
                        v127 = &unk_100071778;
                        goto LABEL_100;
                      }

                      goto LABEL_132;
                    }

LABEL_130:
                    __break(1u);
LABEL_131:
                    __break(1u);
LABEL_132:
                    __break(1u);
LABEL_133:
                    swift_endAccess();
                    aBlock = 0;
                    v177 = 0xE000000000000000;
                    _StringGuts.grow(_:)(63);
                    v147._countAndFlagsBits = 0xD00000000000003DLL;
                    v147._object = 0x800000010005DDF0;
                    String.append(_:)(v147);
                    v148._countAndFlagsBits = a1;
                    v148._object = a2;
                    String.append(_:)(v148);
LABEL_139:
                    _assertionFailure(_:_:file:line:flags:)();
                    __break(1u);
                    return;
                  }

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
                  goto LABEL_130;
                }

LABEL_121:
                __break(1u);
LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

LABEL_120:
              __break(1u);
              goto LABEL_121;
            }
          }
        }

        v82 = 0;
        goto LABEL_52;
      }

LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v29 = v28;
    sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = *(v30 + 16);

    if (!v31)
    {
      goto LABEL_40;
    }

LABEL_15:
    sub_100035410();
    v35 = v34;
    v37 = v36;
    v38 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_backingDeviceMap;
    v39 = v174;
    swift_beginAccess();
    v40 = *&v39[v38];
    if (!v40)
    {
      goto LABEL_124;
    }

    if (!*(v40 + 16))
    {

LABEL_137:
      swift_endAccess();
      aBlock = 0;
      v177 = 0xE000000000000000;
      _StringGuts.grow(_:)(65);
      v149._countAndFlagsBits = 0xD00000000000003FLL;
      v149._object = 0x800000010005DE70;
      String.append(_:)(v149);
      v150._countAndFlagsBits = a1;
      v150._object = a2;
      String.append(_:)(v150);
      goto LABEL_139;
    }

    v41 = sub_10001F768(v35, v37);
    v5 = v42;

    if ((v5 & 1) == 0)
    {
      goto LABEL_137;
    }

    v43 = *(*(v40 + 56) + 8 * v41);
    swift_endAccess();
    a1 = v43 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
    v21 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_lostDeviceMap;
    v168 = v43;

    if (!a1)
    {
      break;
    }

    v173 = v168 & 0xC000000000000001;
    v18 = v168 & 0xFFFFFFFFFFFFFF8;
    a2 = v168 + 32;
    *&v44 = 138412290;
    v172 = v44;
    while (!__OFSUB__(a1--, 1))
    {
      if (v173)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_106;
        }

        if (a1 >= *(v18 + 16))
        {
          goto LABEL_107;
        }

        v46 = *(a2 + 8 * a1);
      }

      v5 = v46;
      v47 = *&v46[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      if (!v47)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v48 = [v47 identifier];
      if (!v48)
      {
        goto LABEL_114;
      }

      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = v174;
      swift_beginAccess();
      v54 = *&v53[v21];
      if (!v54)
      {
        goto LABEL_115;
      }

      if (!*(v54 + 16))
      {

LABEL_39:
        swift_endAccess();

        v18 = v166;
        goto LABEL_40;
      }

      v55 = sub_10001F768(v50, v52);
      v57 = v56;

      if ((v57 & 1) == 0)
      {
        goto LABEL_39;
      }

      v58 = *(*(v54 + 56) + 8 * v55);
      swift_endAccess();
      v59 = qword_10007EBF8;
      v60 = v58;
      if (v59 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000032F0(v61, qword_10007F150);
      v5 = v5;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = v172;
        *(v64 + 4) = v5;
        *v65 = v5;
        v66 = v5;
        _os_log_impl(&_mh_execute_header, v62, v63, "current backing device was lost, check if we have older ones that are available %@", v64, 0xCu);
        sub_1000227E8(v65, &qword_10007F278, &unk_10005CD60);
        v19 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice;
      }

      if (!a1)
      {
        goto LABEL_101;
      }
    }

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
    swift_once();
  }

LABEL_101:

  if (qword_10007EBF8 != -1)
  {
LABEL_116:
    swift_once();
  }

  v133 = type metadata accessor for Logger();
  sub_1000032F0(v133, qword_10007F150);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.error.getter();
  v136 = os_log_type_enabled(v134, v135);
  v137 = v158;
  v138 = v168;
  if (v136)
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&_mh_execute_header, v134, v135, "no available backing device, showing connection error directly", v139, 2u);
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v140 = static OS_dispatch_queue.main.getter();
  v141 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v142 = swift_allocObject();
  *(v142 + 16) = v141;
  *(v142 + 24) = v138;
  v180 = sub_10001F8C4;
  v181 = v142;
  aBlock = _NSConcreteStackBlock;
  v177 = 1107296256;
  v178 = sub_1000102BC;
  v179 = &unk_100071840;
  v143 = _Block_copy(&aBlock);

  v144 = v162;
  static DispatchQoS.unspecified.getter();
  v175 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  v145 = v161;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v143);
  v146 = v171;

  (*(v160 + 8))(v137, v145);
  (*(v167 + 8))(v144, v159);
}

uint64_t sub_100019E4C()
{
  result = [v0 bluetoothAdvertisementData];
  if (result)
  {

    v2 = [v0 appAccessInfoMap];
    if (v2)
    {
      v3 = v2;
      sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
      v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v5 = *(v4 + 16);

      return v5 == 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_100019F00(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (!swift_unknownObjectWeakLoadStrong())
  {

    return;
  }

  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_5:
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(a2 + 8 * v7 + 32);
LABEL_10:
    v9 = v8;
    sub_100029AB0(v8);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_10001A004(uint64_t result, uint64_t a2)
{
  if (result)
  {
    swift_errorRetain();
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000032F0(v3, qword_10007F150);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "error when picking a device: %@", v6, 0xCu);
      sub_1000227E8(v7, &qword_10007F278, &unk_10005CD60);
    }

    else
    {
    }

    v9 = (a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID);
    v10 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pickedDeviceID + 8);
    *v9 = 0;
    v9[1] = 0;
  }

  return result;
}

void sub_10001A19C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    goto LABEL_22;
  }

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= 1)
    {
      goto LABEL_4;
    }

LABEL_22:
    v21 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTimer);
    if (v21)
    {
      [v21 invalidate];
    }

    v22 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
    v23 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
    if (v23)
    {
      [v23 invalidateWithReason:0];
      v24 = *(v1 + v22);
    }

    else
    {
      v24 = 0;
    }

    *(v1 + v22) = 0;

    sub_1000189D4(0, 1);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100028DAC();
      swift_unknownObjectRelease();
    }

    return;
  }

LABEL_21:
  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4 < 1)
  {
    goto LABEL_22;
  }

LABEL_4:

  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = 0;
  v6 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (!v6[1])
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v5;
    v9 = *v6;
    v10 = v6[1];

    sub_100017090();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v11 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v4 != v5);
  v12 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
  v13 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
  if (v13)
  {
    [v13 invalidateWithReason:0];
    v14 = *(v1 + v12);
  }

  else
  {
    v14 = 0;
  }

  *(v1 + v12) = 0;

  sub_10001428C();
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_dismissOnMigration) = 0;
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000032F0(v15, qword_10007F150);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Migration displayItems after setup so dismiss after migration complete", v18, 2u);
  }

  v19 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migrationDiscovery);
  if (v19)
  {
    v20 = v19;

    [v20 migrateDevices];

    return;
  }

LABEL_31:
  __break(1u);
}

void sub_10001A4E0(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  if (qword_10007EC50 != -1)
  {
    v47 = a1;
    swift_once();
    a1 = v47;
  }

  v9 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v9)
  {
    goto LABEL_28;
  }

  v54 = a1;
  v10 = qword_10007EBF8;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000032F0(v12, qword_10007F150);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10003FFF4(a3, a4, &aBlock);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_10003FFF4(v54, a2, &aBlock);
    _os_log_impl(&_mh_execute_header, v13, v14, "New Name: %s, for ID: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v16 = [objc_allocWithZone(DADeviceSettings) init];
  [v16 setUserInitiated:1];
  v17 = String._bridgeToObjectiveC()();
  [v16 setDisplayName:v17];

  if (v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] == 1)
  {
    v18 = String._bridgeToObjectiveC()();
    [v16 setSSID:v18];
  }

  v19 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_session);
  if (v19)
  {
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    v60 = sub_100022EE4;
    v61 = 0;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100018ABC;
    v59 = &unk_1000718E0;
    v22 = _Block_copy(&aBlock);
    [v20 modifyDeviceWithIdentifier:v21 settings:v16 completionHandler:v22];
    _Block_release(v22);

    v23 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
    if (v23)
    {
      v24 = v23;
      v25 = String._bridgeToObjectiveC()();
      [v24 setDisplayName:v25];
    }

    v26 = v16;
    goto LABEL_22;
  }

  v53 = a3;
  v27 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
  swift_beginAccess();
  v28 = *(v5 + v27);
  if (!v28)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (*(v28 + 16))
  {
    v29 = sub_10001F768(v54, a2);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      swift_endAccess();
      v32 = v31;

      v33 = v32;
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      v52 = v33;
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v50 = v5;
        v37 = swift_slowAlloc();
        v51 = v11;
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v36 = 136315394;
        *(v36 + 4) = sub_10003FFF4(v53, a4, &aBlock);
        *(v36 + 12) = 2112;
        *(v36 + 14) = v33;
        *v37 = v33;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v34, v35, "New Name: %s, for device: %@", v36, 0x16u);
        sub_1000227E8(v37, &qword_10007F278, &unk_10005CD60);
        v5 = v50;

        sub_100009AB0(v38);
        v11 = v51;
      }

      v40 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery);
      if (v40)
      {
        v41 = v40;
        v42 = String._bridgeToObjectiveC()();
        v60 = sub_100022EE4;
        v61 = 0;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_100018ABC;
        v59 = &unk_1000718B8;
        v43 = _Block_copy(&aBlock);
        [v41 modifyDeviceWithIdentifier:v42 settings:v16 completionHandler:v43];
        _Block_release(v43);

        v44 = &v52[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
        v45 = *&v52[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
        *v44 = v53;
        v44[1] = a4;

        swift_beginAccess();
        if (*(v5 + v27))
        {

          v26 = v52;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = *(v5 + v27);
          *(v5 + v27) = 0x8000000000000000;
          sub_100020294(v26, v54, a2, isUniquelyReferenced_nonNull_native, &qword_10007F2B0, &unk_10005C5B0);

          *(v5 + v27) = v55;
          swift_endAccess();
          v20 = v16;
LABEL_22:

          return;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_28;
    }
  }

  swift_endAccess();
  aBlock = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(85);
  v48._countAndFlagsBits = 0xD000000000000053;
  v48._object = 0x800000010005DF40;
  String.append(_:)(v48);
  v49._countAndFlagsBits = v54;
  v49._object = a2;
  String.append(_:)(v49);
LABEL_28:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10001AC60(uint64_t a1)
{
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_10007F150);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

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
    _os_log_impl(&_mh_execute_header, oslog, v3, "error when renaming a device: %@", v4, 0xCu);
    sub_1000227E8(v5, &qword_10007F278, &unk_10005CD60);
  }
}

void sub_10001ADD0()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC50 != -1)
  {
    goto LABEL_40;
  }

LABEL_2:
  v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v8)
  {
    goto LABEL_43;
  }

  v9 = *&v8[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier + 8];
  if (!v9)
  {
    goto LABEL_43;
  }

  v57 = v3;
  v58 = v5;
  v63 = *&v8[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
  v10 = qword_10007EBF8;
  v61 = v8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000032F0(v11, qword_10007F150);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v64 = v9;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v65 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10003FFF4(v63, v9, &v65);
    _os_log_impl(&_mh_execute_header, v12, v13, "Synchronously fetch device for upgrade: deviceID: %s", v15, 0xCu);
    sub_100009AB0(v16);
  }

  v17 = [objc_allocWithZone(DASession) init];
  v18 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  v62 = &v1[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];

    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v60 = v1;
  v56 = v7;
  [v17 setBundleID:v20];

  v21 = [objc_opt_self() getDevicesWithFlags:8 session:v17 error:0];
  sub_100009B48(0, &qword_100080420, DADevice_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v59 = v17;
  if (v3 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v5;
    if (!v5)
    {
LABEL_42:

      goto LABEL_43;
    }
  }

  else
  {
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_42;
    }
  }

  v23 = 0;
  v7 = (v3 & 0xC000000000000001);
  while (1)
  {
    if (v7)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v5 = *(v3 + 8 * v23 + 32);
    }

    v24 = v5;
    v25 = (v23 + 1);
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v54 = v5;
      swift_once();
      v5 = v54;
      goto LABEL_2;
    }

    v26 = [v5 identifier];
    if (v26)
    {
      break;
    }

LABEL_14:

    ++v23;
    if (v25 == v22)
    {
      goto LABEL_42;
    }
  }

  v1 = v26;
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  if (v27 != v63 || v64 != v29)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_28;
    }

    goto LABEL_14;
  }

LABEL_28:
  v32 = [v24 name];
  if (v32)
  {
    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = v62[1];
  if (!v37)
  {
    while (1)
    {
      __break(1u);
LABEL_43:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v38 = *v62;
  v39 = v62[1];

  v40 = objc_allocWithZone(type metadata accessor for ASUIDevice());
  v41 = v24;
  v42 = sub_100036A64(v34, v36, v41, v38, v37);

  v43 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  v44 = v60;
  swift_beginAccess();
  v45 = *&v44[v43];
  *&v44[v43] = v42;

  v46 = [v41 displayImageFileURL];
  if (!v46)
  {
LABEL_36:

    goto LABEL_37;
  }

  v47 = v56;
  v48 = v46;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  swift_beginAccess();
  v49 = *&v44[v43];
  if (!v49)
  {
    (*(v57 + 8))(v47, v58);
    swift_endAccess();
    goto LABEL_36;
  }

  swift_endAccess();
  v50 = v49;
  URL.path(percentEncoded:)(1);
  v51 = objc_allocWithZone(UIImage);
  v52 = String._bridgeToObjectiveC()();

  v53 = [v51 initWithContentsOfFile:v52];

  (*(v57 + 8))(v47, v58);
  v41 = *&v50[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image];
  *&v50[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_image] = v53;

LABEL_37:
}

void sub_10001B4D4(char a1, uint64_t a2, unint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest))
  {
    v4 = a1 & 1;

    sub_10001B624(v4, a2, a3);
  }

  else if (*(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest))
  {
    v5 = a1 & 1;

    sub_10001BB3C(v5, a2, a3);
  }

  else
  {
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000032F0(v6, qword_10007F150);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "No current pairing request to respond to", v8, 2u);
    }
  }
}

void sub_10001B624(char a1, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  if (v4)
  {
    v8 = v4;
    v9 = [v8 pairingInfo];
    [v9 setAccept:a1 & 1];
    if (!a3)
    {
      goto LABEL_73;
    }

    v10 = HIBYTE(a3) & 0xF;
    v11 = a2 & 0xFFFFFFFFFFFFLL;
    if (!((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : a2 & 0xFFFFFFFFFFFFLL))
    {
      goto LABEL_73;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {

      v15 = sub_100020B7C(a2, a3, 10);
      v41 = v40;

      if (v41)
      {
LABEL_73:
        v37 = sub_10000A7FC();
        if (v37)
        {
          v38 = v37;
          v47 = nullsub_1;
          v48 = 0;
          aBlock = _NSConcreteStackBlock;
          v44 = 1107296256;
          v45 = sub_100018ABC;
          v46 = &unk_100071868;
          v39 = _Block_copy(&aBlock);
          [v38 respondToBluetoothPairingRequest:v9 completionHandler:v39];

          _Block_release(v39);
        }

        else
        {
        }

        return;
      }

LABEL_72:
      sub_100009B48(0, &qword_10007F2A0, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(v15).super.super.isa;
      [v9 setPasskey:isa];

      goto LABEL_73;
    }

    if ((a3 & 0x2000000000000000) != 0)
    {
      aBlock = a2;
      v44 = a3 & 0xFFFFFFFFFFFFFFLL;
      if (a2 == 43)
      {
        if (v10)
        {
          if (--v10)
          {
            v15 = 0;
            v28 = &aBlock + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_82:
        __break(1u);
        return;
      }

      if (a2 != 45)
      {
        if (v10)
        {
          v15 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v34 = *p_aBlock - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v10)
      {
        if (--v10)
        {
          v15 = 0;
          v22 = &aBlock + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v10)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v13 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 >= 1)
        {
          v10 = v11 - 1;
          if (v11 != 1)
          {
            v15 = 0;
            if (v13)
            {
              v25 = v13 + 1;
              while (1)
              {
                v26 = *v25 - 48;
                if (v26 > 9)
                {
                  goto LABEL_70;
                }

                v27 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_70;
                }

                v15 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_70;
                }

                ++v25;
                if (!--v10)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_81;
      }

      if (v14 != 45)
      {
        if (v11)
        {
          v15 = 0;
          if (v13)
          {
            while (1)
            {
              v31 = *v13 - 48;
              if (v31 > 9)
              {
                goto LABEL_70;
              }

              v32 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_70;
              }

              v15 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_70;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v15 = 0;
        LOBYTE(v10) = 1;
LABEL_71:
        if (v10)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v11 >= 1)
      {
        v10 = v11 - 1;
        if (v11 != 1)
        {
          v15 = 0;
          if (v13)
          {
            v16 = v13 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_70;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_70;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_70;
              }

              ++v16;
              if (!--v10)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v10) = 0;
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000032F0(v19, qword_10007F150);
  oslog = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "No current pairing request to respond to", v21, 2u);
  }
}

void sub_10001BB3C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  if (v4)
  {
    v7 = v4;
    v15 = [v7 pairingInfo];
    [v15 setAccept:a1 & 1];
    if (a3)
    {
      v8 = String._bridgeToObjectiveC()();
      [v15 setPasskey:v8];
    }

    v9 = sub_10000A7FC();
    if (v9)
    {
      v10 = v9;
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018ABC;
      aBlock[3] = &unk_100071890;
      v11 = _Block_copy(aBlock);
      [v10 respondToWiFiAwarePairingRequest:v15 completionHandler:v11];

      _Block_release(v11);
      return;
    }
  }

  else
  {
    if (qword_10007EBF8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000032F0(v12, qword_10007F150);
    v15 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v15, v13, "No current wi-fi aware pairing request to respond to", v14, 2u);
    }
  }
}

uint64_t sub_10001BD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10001BD8C, 0, 0);
}

uint64_t sub_10001BD8C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_100022FC0;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

void sub_10001BE14(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10001BE7C()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v2 = result;
  if (result)
  {
    v3 = v0;
    v4 = [v2 device];
    v5 = [v4 identifier];

    if (v5)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      [v2 device];
      return v6;
    }

    else
    {
      if (qword_10007EBF8 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000032F0(v7, qword_10007F150);
      v8 = v3;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        v13 = [v2 device];
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "DADevice does not have an identifier, ignoring. %@", v11, 0xCu);
        sub_1000227E8(v12, &qword_10007F278, &unk_10005CD60);
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10001C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a4;
  *(v7 + 24) = a7;
  return _swift_task_switch(sub_10001C0B8, 0, 0);
}

uint64_t sub_10001C0B8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(*(v3 + 16) + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_aliasScanningCoordinator);
  *(v3 + 32) = v4;
  if (v4)
  {

    a1 = sub_10001C140;
    a2 = v4;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_10001C140()
{
  v1 = *(v0 + 32);
  sub_1000389DC(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2();
}

void sub_10001C1A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100029AB0(a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10001C234(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000032F0(v12, qword_10007F150);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleBluetoothPairingRequest: %@", v16, 0xCu);
    sub_1000227E8(v17, &qword_10007F278, &unk_10005CD60);
  }

  v19 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = v13;

  v20 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = 0;
  v21 = v13;

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v21;
  aBlock[4] = sub_100022348;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071C78;
  v25 = _Block_copy(aBlock);
  v26 = v21;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
}

uint64_t sub_10001C66C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EBF8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000032F0(v12, qword_10007F150);
  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleWiFiAwarePairingRequest: %@", v16, 0xCu);
    sub_1000227E8(v17, &qword_10007F278, &unk_10005CD60);
  }

  v19 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentWiFiAwarePairingRequest) = v13;

  v20 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_currentBluetoothPairingRequest) = 0;
  v21 = v13;

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v21;
  aBlock[4] = sub_100022354;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100071CC8;
  v25 = _Block_copy(aBlock);
  v26 = v21;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v30 + 8))(v7, v4);
  (*(v28 + 8))(v11, v29);
}

void sub_10001CAA4(id *a1, char *a2, void *a3)
{
  v5 = v3;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v62 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v62 - v14;
  v15 = *a1;
  v16 = [*a1 appAccessInfoMap];
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v16;
  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = &a2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID];
  v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];
  if (!v20)
  {
    __break(1u);
LABEL_34:
    swift_once();
LABEL_18:
    v53 = type metadata accessor for Logger();
    sub_1000032F0(v53, qword_10007F150);
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      swift_errorRetain();
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&_mh_execute_header, v54, v55, "Migration discovery: Error writing image to file for migration: %@", v56, 0xCu);
      sub_1000227E8(v57, &qword_10007F278, &unk_10005CD60);

      sub_10002215C(a3, v19);

      (*(v64 + 8))(v65, v15);
    }

    else
    {

      sub_10002215C(a3, v19);

      (*(v4 + 8))(v65, v15);
    }

    return;
  }

  if (!*(v18 + 16))
  {

    goto LABEL_21;
  }

  v21 = *v19;
  v22 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8];

  sub_10001F768(v21, v20);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_21:
    v59 = v15;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v60 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return;
  }

  v25 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
  swift_beginAccess();
  v26 = v15;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&a2[v25] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a2[v25] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v61 = *((*&a2[v25] & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v27 = v19[1];
  if (v27)
  {
    v28 = *v19;
    v29 = v19[1];

    v30 = [v26 appAccessInfoMap];
    if (v30)
    {
      v31 = v30;
      v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v32 + 16))
      {
        v33 = sub_10001F768(v28, v27);
        v35 = v34;

        if (v35)
        {
          v36 = *(*(v32 + 56) + 8 * v33);

          v37 = [v36 associationIdentifier];

          if (!v37)
          {
            return;
          }

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;

          v41 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
          swift_beginAccess();
          v42 = *&a2[v41];
          if (*(v42 + 16))
          {
            v43 = sub_10001F768(v38, v40);
            if (v44)
            {
              v45 = *(*(v42 + 56) + 8 * v43);
              swift_endAccess();
              a2 = v45;

              v46 = [v26 displayImageFileURL];
              if (!v46)
              {

                return;
              }

              v47 = v62;
              v48 = v46;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v15 = v63;
              v4 = v64;
              v49 = v65;
              (*(v64 + 32))(v65, v47, v63);
              v50 = [a2 productImage];
              v51 = UIImagePNGRepresentation(v50);

              if (!v51)
              {
                (*(v4 + 8))(v49, v15);

                return;
              }

              a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v19 = v52;

              Data.write(to:options:)();
              if (!v5)
              {
                (*(v4 + 8))(v49, v15);

                sub_10002215C(a3, v19);
                return;
              }

              if (qword_10007EBF8 == -1)
              {
                goto LABEL_18;
              }

              goto LABEL_34;
            }
          }

          swift_endAccess();
        }
      }

      else
      {
      }
    }
  }
}

void sub_10001D128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8)
    {
      if (*(v8 + 16) && (v9 = sub_10001F768(a2, a3), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        v12 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
        swift_beginAccess();
        v13 = *&v11[v12];
        *&v11[v12] = _swiftEmptyArrayStorage;
        v14 = v11;

        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          if (*(v15 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) != 1)
          {
            sub_1000284F4();
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001D274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceMap;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8)
    {
      if (*(v8 + 16) && (v9 = sub_10001F768(a2, a3), (v10 & 1) != 0))
      {
        v11 = *(*(v8 + 56) + 8 * v9);
        swift_endAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = v11;
          sub_10002A0E8();

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10001D364()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
      if (v3)
      {
        v4 = v3;
        [v4 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10001D418(void **a1, uint64_t a2, const char *a3)
{
  v50 = a3;
  v6 = type metadata accessor for URL();
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = *a1;

  v14 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID + 8);
  if (!v14)
  {
    return;
  }

  v49 = v6;
  v15 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_appBundleID);

  v16 = [v13 appAccessInfoMap];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v16;
  sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v18 + 16))
  {

    goto LABEL_17;
  }

  v19 = sub_10001F768(v15, v14);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_17:

    return;
  }

  v22 = *(*(v18 + 56) + 8 * v19);

  v23 = [v22 associationIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_displayItemMap;
    swift_beginAccess();
    v28 = *(a2 + v27);
    if (*(v28 + 16) && (v29 = sub_10001F768(v24, v26), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
      swift_endAccess();
      v32 = v31;

      v33 = [v13 displayImageFileURL];
      if (v33)
      {
        v34 = v33;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v35 = v51;
        v36 = v49;
        (*(v51 + 32))(v12, v10, v49);
        v37 = [v32 productImage];
        v38 = UIImagePNGRepresentation(v37);

        if (v38)
        {
          v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;

          Data.write(to:options:)();
          if (v3)
          {
            if (qword_10007EBF8 != -1)
            {
              swift_once();
            }

            v42 = type metadata accessor for Logger();
            sub_1000032F0(v42, qword_10007F150);
            swift_errorRetain();
            v43 = Logger.logObject.getter();
            v44 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              *v45 = 138412290;
              swift_errorRetain();
              v47 = _swift_stdlib_bridgeErrorToNSError();
              *(v45 + 4) = v47;
              *v46 = v47;
              _os_log_impl(&_mh_execute_header, v43, v44, v50, v45, 0xCu);
              sub_1000227E8(v46, &qword_10007F278, &unk_10005CD60);

              sub_10002215C(v39, v41);

              (*(v51 + 8))(v12, v49);
            }

            else
            {

              sub_10002215C(v39, v41);

              (*(v51 + 8))(v12, v36);
            }
          }

          else
          {
            (*(v35 + 8))(v12, v36);

            sub_10002215C(v39, v41);
          }
        }

        else
        {
          (*(v35 + 8))(v12, v36);
        }
      }

      else
      {
      }
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t sub_10001D94C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v23);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_reasonableDiscoveryTimer);
    if (v18)
    {
      v19 = v18;

      [v19 invalidate];
      v17 = v19;
    }
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v20 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a4;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_10001DC50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v8 - 8);
  v9 = *(v21 + 64);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10001F8CC();
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v21 + 8))(v11, v8);
  (*(v12 + 8))(v15, v20);
}

void sub_10001DF00()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discoveryTookTooLong) = 1;
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_10001DF80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v3 = *&v1[v2];
    if (v3 && (v4 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      if (*(v4 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) == 1)
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v5 = v3;
        sub_1000284F4();

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_10001E05C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *a2;
    v6 = *(Strong + v5);
    if (v6)
    {
      [v6 invalidateWithReason:5];
      v7 = *&v4[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v4[v5] = 0;

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (v8)
      {
        if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
        {
          sub_100028FFC();
        }

        else
        {
          sub_100028FDC();
        }

        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_10001E17C(uint64_t a1, unint64_t a2)
{
  if (qword_10007EC50 != -1)
  {
    goto LABEL_84;
  }

LABEL_2:
  v3 = qword_1000814E8;
  v4 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = sub_10000A8A0();
  if (!v8)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = sub_10000A8A0();
  if (v9)
  {
LABEL_14:

    goto LABEL_15;
  }

  __break(1u);
LABEL_9:
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v7 = v10;
    v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v9 = *&v7[v11];
    if (v9)
    {
      v12 = v9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v9 = 0;
LABEL_15:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_76;
  }

  v14 = v13;
  if (!v9)
  {
    goto LABEL_81;
  }

  v15 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v15)
  {
    [v15 pickerStartedPairing];
  }

  v16 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 2u)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v18 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
  swift_beginAccess();
  v19 = *&v9[v18];
  v20 = *(v19 + 2);
  if (!v20)
  {
    v21 = 0;
    v24 = 0;
    goto LABEL_64;
  }

  v52 = v16;
  v53 = v14;
  v54 = a2;
  v21 = 0;
  v22 = v19 + 32;
  while (1)
  {
    if (v21 >= *(v19 + 2))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
      goto LABEL_2;
    }

    if (v22[v21] <= 1u)
    {
      if (v22[v21])
      {
        a2 = 0xE900000000000068;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      goto LABEL_32;
    }

    if (v22[v21] != 2)
    {
      break;
    }

    a2 = 0xEA00000000005041;
LABEL_32:
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_37;
    }

    if (v20 == ++v21)
    {
      v21 = *(v19 + 2);
      v24 = v21;
      goto LABEL_40;
    }
  }

LABEL_37:
  v25 = (v21 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v9[v18] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_91:
    v19 = sub_100021604(v19);
  }

  *&v9[v18] = v19;
  v27 = *(v19 + 2);
  if (v27 - 1 != v21)
  {
    v28 = (v21 + 33);
    while (1)
    {
      v25 = v28 - 32;
      if ((v28 - 32) >= v27)
      {
        goto LABEL_83;
      }

      if (v28[v19] > 1u)
      {
        if (v28[v19] != 2)
        {

          goto LABEL_44;
        }

        a2 = 0xEA00000000005041;
      }

      else if (v28[v19])
      {
        a2 = 0xE900000000000068;
      }

      else
      {
        a2 = 0xE400000000000000;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) == 0)
      {
        if (v25 != v21)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            goto LABEL_91;
          }

          v32 = *(v19 + 2);
          if (v21 >= v32)
          {
            goto LABEL_86;
          }

          if (v25 >= v32)
          {
            goto LABEL_87;
          }

          v33 = v19[v21 + 32];
          a2 = v28[v19];
          v34 = swift_isUniquelyReferenced_nonNull_native();
          *&v9[v18] = v19;
          if ((v34 & 1) == 0)
          {
            v19 = sub_100021604(v19);
          }

          v35 = *(v19 + 2);
          if (v21 >= v35)
          {
            goto LABEL_88;
          }

          v19[v21 + 32] = a2;
          if (v25 >= v35)
          {
            goto LABEL_89;
          }

          v28[v19] = v33;
          *&v9[v18] = v19;
        }

        ++v21;
      }

LABEL_44:
      v27 = *(v19 + 2);
      v29 = v28 + 1;
      v30 = v28 - 31;
      ++v28;
      if (v30 == v27)
      {
        v24 = (v29 - 32);
        v14 = v53;
        a2 = v54;
        v16 = v52;
        if ((v29 - 32) >= v21)
        {
          goto LABEL_64;
        }

        goto LABEL_90;
      }
    }
  }

  v24 = v25;
LABEL_40:
  v14 = v53;
  a2 = v54;
  v16 = v52;
LABEL_64:
  sub_100021928(v21, v24);
  swift_endAccess();
LABEL_65:
  v9[v16] = 1;
  v36 = [a2 pairingInfo];
  v37 = [v36 pairingType];

  if (v37 > 29)
  {
    if (v37 == 30)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_80;
      }

      sub_100028E0C();
    }

    else
    {
      if (v37 != 40)
      {
        goto LABEL_75;
      }

      sub_10000ACB0();
      if (!v39)
      {
        _StringGuts.grow(_:)(58);
        v46._countAndFlagsBits = 0xD000000000000038;
        v46._object = 0x800000010005E160;
        String.append(_:)(v46);
        v47 = [a2 description];
        v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v49;

        v51._countAndFlagsBits = v48;
        v51._object = v50;
        String.append(_:)(v51);

        goto LABEL_94;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_80;
      }

      sub_100028E2C();
    }

LABEL_79:

    swift_unknownObjectRelease();
    return;
  }

  if (v37 != 20)
  {
LABEL_75:

LABEL_76:
    return;
  }

  sub_10000ACB0();
  if (!v38)
  {
    _StringGuts.grow(_:)(55);
    v40._object = 0x800000010005E120;
    v40._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v40);
    v41 = [a2 description];
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    v45._countAndFlagsBits = v42;
    v45._object = v44;
    String.append(_:)(v45);

LABEL_94:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100028DEC();
    goto LABEL_79;
  }

LABEL_80:

LABEL_81:
}

void sub_10001E8F8(uint64_t a1, void *a2)
{
  if (qword_10007EC50 != -1)
  {
    goto LABEL_81;
  }

LABEL_2:
  v3 = qword_1000814E8;
  v4 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  if (v5 == 3)
  {
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_12;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = sub_10000A8A0();
  if (!v8)
  {
    v9 = 0;
    goto LABEL_14;
  }

  v9 = sub_10000A8A0();
  if (v9)
  {
LABEL_14:

    goto LABEL_15;
  }

  __break(1u);
LABEL_9:
  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v7 = v10;
    v11 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v9 = *&v7[v11];
    if (v9)
    {
      v12 = v9;
    }

    goto LABEL_14;
  }

LABEL_12:
  v9 = 0;
LABEL_15:
  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_74;
  }

  v14 = v13;
  if (!v9)
  {

    return;
  }

  v15 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v15)
  {
    [v15 pickerStartedPairing];
  }

  v16 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  if (v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] <= 1u && v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  v18 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologiesPendingSetup;
  swift_beginAccess();
  v19 = *&v9[v18];
  v20 = *(v19 + 2);
  if (!v20)
  {
    v21 = 0;
    v25 = 0;
    goto LABEL_62;
  }

  v44 = v16;
  v45 = a2;
  v46 = v14;
  v21 = 0;
  v22 = v19 + 32;
  a2 = 0xE900000000000065;
  while (1)
  {
    if (v21 >= *(v19 + 2))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
      goto LABEL_2;
    }

    if (v22[v21] <= 1u)
    {
      break;
    }

    v23 = v22[v21] == 2;
LABEL_32:
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      goto LABEL_37;
    }

    if (v20 == ++v21)
    {
      v21 = *(v19 + 2);
      v25 = v21;
      goto LABEL_40;
    }
  }

  if (!v22[v21])
  {
    goto LABEL_32;
  }

LABEL_37:
  v26 = (v21 + 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v9[v18] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_88:
    v19 = sub_100021604(v19);
  }

  *&v9[v18] = v19;
  v28 = *(v19 + 2);
  if (v28 - 1 != v21)
  {
    v29 = (v21 + 33);
    while (1)
    {
      v26 = v29 - 32;
      if ((v29 - 32) >= v28)
      {
        goto LABEL_80;
      }

      if (v29[v19] > 1u)
      {
        v23 = v29[v19] == 2;
      }

      else if (v29[v19])
      {

        goto LABEL_44;
      }

      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        if (v26 != v21)
        {
          if ((v21 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v33 = *(v19 + 2);
          if (v21 >= v33)
          {
            goto LABEL_83;
          }

          if (v26 >= v33)
          {
            goto LABEL_84;
          }

          v34 = v19[v21 + 32];
          v35 = v29[v19];
          v36 = swift_isUniquelyReferenced_nonNull_native();
          *&v9[v18] = v19;
          if ((v36 & 1) == 0)
          {
            v19 = sub_100021604(v19);
          }

          v37 = *(v19 + 2);
          if (v21 >= v37)
          {
            goto LABEL_85;
          }

          v19[v21 + 32] = v35;
          if (v26 >= v37)
          {
            goto LABEL_86;
          }

          v29[v19] = v34;
          *&v9[v18] = v19;
        }

        ++v21;
      }

LABEL_44:
      v28 = *(v19 + 2);
      v30 = v29 + 1;
      v31 = v29 - 31;
      ++v29;
      if (v31 == v28)
      {
        v25 = (v30 - 32);
        a2 = v45;
        v14 = v46;
        v16 = v44;
        if ((v30 - 32) >= v21)
        {
          goto LABEL_62;
        }

        goto LABEL_87;
      }
    }
  }

  v25 = v26;
LABEL_40:
  a2 = v45;
  v14 = v46;
  v16 = v44;
LABEL_62:
  sub_100021928(v21, v25);
  swift_endAccess();
LABEL_63:
  v9[v16] = 3;
  v38 = [a2 pairingInfo];
  v39 = [v38 pairingType];

  if (v39 > 29)
  {
    if (v39 == 30)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_78;
      }

      sub_100028E0C();
    }

    else
    {
      if (v39 != 40)
      {
        goto LABEL_73;
      }

      v42 = [a2 pairingInfo];
      v43 = [v42 passkey];

      if (!v43)
      {
        goto LABEL_78;
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_78;
      }

      sub_100028E2C();
    }

LABEL_77:

    swift_unknownObjectRelease();
    return;
  }

  if (v39 != 20)
  {
LABEL_73:

LABEL_74:
    return;
  }

  v40 = [a2 pairingInfo];
  v41 = [v40 passkey];

  if (v41)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100028DEC();
      goto LABEL_77;
    }
  }

LABEL_78:
}

void sub_10001EF60(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void (*sub_10001EFEC(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1000206FC(v6, a2, a3);
  return sub_10001F074;
}

void sub_10001F074(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

char *sub_10001F0C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100039830(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100009B48(0, &qword_10007F308, DAEvent_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100039830((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100022E1C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_100009B48(0, &qword_10007F308, DAEvent_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100039830((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100022E1C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_10001F2BC()
{
  sub_100009B48(0, &qword_10007F2B8, DADiscoveryConfiguration_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithConfigurations:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

id sub_10001F3A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_10001F484(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001F57C;

  return v7(a1);
}

uint64_t sub_10001F57C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10001F674(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009894(&qword_10007F2C8, &qword_10005C5C8);
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

unint64_t sub_10001F768(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10001F96C(a1, a2, v6);
}

uint64_t sub_10001F7E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F84C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F884()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001F8CC()
{
  result = qword_10007F280;
  if (!qword_10007F280)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10007F280);
  }

  return result;
}

uint64_t sub_10001F924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001F96C(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10001FA24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100009894(&unk_100080230, &qword_10005D120);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10001FCCC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100009894(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_10001FF68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100020118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001F768(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10001FA24(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10001F768(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100020430();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_100020294(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10001F768(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_10001FCCC(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_10001F768(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1000205A0(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void *sub_100020430()
{
  v1 = v0;
  sub_100009894(&unk_100080230, &qword_10005D120);
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
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

id sub_1000205A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100009894(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void (*sub_1000206FC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_100020AA4(v8);
  v8[9] = sub_100020808(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1000207A8;
}

void sub_1000207A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100020808(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10001F768(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100020430();
      v13 = v21;
      goto LABEL_11;
    }

    sub_10001FA24(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_10001F768(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_100020960;
}

void sub_100020960(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_100022210(*(v13 + 48) + 16 * v12);
      sub_10001FF68(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_100020AA4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100020ACC;
}

uint64_t sub_100020ADC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

unsigned __int8 *sub_100020B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100021108();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100021108()
{
  v0 = String.subscript.getter();
  v4 = sub_100021188(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100021188(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = Substring.UTF8View.distance(from:to:)();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100040434(v9, 0);
  v12 = sub_1000212E0(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = static String._uncheckedFromUTF8(_:)();

    return v14;
  }

  __break(1u);
LABEL_11:
  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_1000212E0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100021500(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100021500(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
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

uint64_t sub_100021500(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void (*sub_10002157C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1000215FC;
  }

  __break(1u);
  return result;
}

uint64_t sub_100021618(unint64_t a1)
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

uint64_t sub_10002167C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100021770;

  return v6(v2 + 32);
}

uint64_t sub_100021770()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

char *sub_100021884(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_100021928(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_10001F674(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_100021884(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000219E8(unint64_t a1, char *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_10001CAA4(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100021AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ASUIDevice();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100021BE8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_100020ADC(result);

  return sub_100021AE8(v4, v2, 0);
}

id sub_100021CC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v45 = *a1 >> 62;
  if (v45)
  {
    goto LABEL_81;
  }

  v47 = v2 & 0xFFFFFFFFFFFFFF8;
  v48 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  p_ivars = &ASUIPresenter.ivars;
  while (1)
  {
    if (v48 == v3)
    {
      if (v45)
      {
        return _CocoaArrayWrapper.endIndex.getter();
      }

      return *(v47 + 16);
    }

    if (v4)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v47 + 16))
      {
        goto LABEL_74;
      }

      v7 = *(v2 + 8 * v3 + 32);
    }

    v8 = v7;
    result = *&v7[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    if (!result)
    {
      goto LABEL_85;
    }

    v10 = v2;
    result = [result p_ivars[202]];
    if (!result)
    {
      goto LABEL_86;
    }

    v11 = result;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = [a2 p_ivars[202]];
    if (!v15)
    {

      goto LABEL_5;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v18;

    if (v12 == v17 && v14 == v2)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    p_ivars = (&ASUIPresenter + 48);
    if (v20)
    {
      goto LABEL_24;
    }

LABEL_5:
    v6 = __OFADD__(v3++, 1);
    v2 = v10;
    if (v6)
    {
      goto LABEL_75;
    }
  }

  p_ivars = &ASUIPresenter.ivars;
LABEL_24:
  v21 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v22 = v10;
    while (1)
    {
      if (v22 >> 62)
      {
        if (v21 == _CocoaArrayWrapper.endIndex.getter())
        {
          return v3;
        }
      }

      else if (v21 == *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v3;
      }

      if ((v22 & 0xC000000000000001) != 0)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
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
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          v47 = v2 & 0xFFFFFFFFFFFFFF8;
          v48 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_72;
        }

        v23 = *(v22 + 8 * v21 + 32);
      }

      v24 = v23;
      result = *&v23[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      if (!result)
      {
        goto LABEL_83;
      }

      v25 = v3;
      result = [result p_ivars[202]];
      if (!result)
      {
        goto LABEL_84;
      }

      v2 = result;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v29 = [a2 p_ivars[202]];
      if (!v29)
      {
        break;
      }

      v49 = v24;
      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v32;

      if (v26 == v31 && v28 == v2)
      {

        p_ivars = (&ASUIPresenter + 48);
LABEL_48:
        v3 = v25;
        v6 = __OFADD__(v21++, 1);
        if (v6)
        {
          goto LABEL_73;
        }
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        p_ivars = (&ASUIPresenter + 48);
        if (v34)
        {
          goto LABEL_48;
        }

LABEL_44:
        v35 = v25;
        if (v25 != v21)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              goto LABEL_78;
            }

            v38 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v25 >= v38)
            {
              goto LABEL_79;
            }

            if (v21 >= v38)
            {
              goto LABEL_80;
            }

            v39 = *(v22 + 32 + 8 * v21);
            v36 = *(v22 + 32 + 8 * v25);
            v37 = v39;
          }

          v40 = v37;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
          {
            v22 = sub_100021618(v22);
            v41 = (v22 >> 62) & 1;
          }

          else
          {
            LODWORD(v41) = 0;
          }

          v2 = v22 & 0xFFFFFFFFFFFFFF8;
          v42 = *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20);
          *((v22 & 0xFFFFFFFFFFFFFF8) + 8 * v35 + 0x20) = v40;

          if ((v22 & 0x8000000000000000) != 0 || v41)
          {
            v22 = sub_100021618(v22);
            v2 = v22 & 0xFFFFFFFFFFFFFF8;
            if ((v21 & 0x8000000000000000) != 0)
            {
LABEL_69:
              __break(1u);
              return _CocoaArrayWrapper.endIndex.getter();
            }
          }

          else if ((v21 & 0x8000000000000000) != 0)
          {
            goto LABEL_69;
          }

          if (v21 >= *(v2 + 16))
          {
            goto LABEL_77;
          }

          v43 = v2 + 8 * v21;
          v44 = *(v43 + 32);
          *(v43 + 32) = v36;

          *a1 = v22;
        }

        v6 = __OFADD__(v35, 1);
        v3 = v35 + 1;
        if (v6)
        {
          goto LABEL_76;
        }

        v6 = __OFADD__(v21++, 1);
        if (v6)
        {
          goto LABEL_73;
        }
      }
    }

    goto LABEL_44;
  }

  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
  return result;
}

uint64_t sub_10002215C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10002242C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002249C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000224EC(uint64_t a1)
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
  v10[1] = sub_1000225C0;

  return sub_10001C098(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000225C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000226B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100022F14;

  return sub_10001BD6C(a1, v4, v5, v7, v6);
}

uint64_t sub_100022778(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009894(&qword_10007F2D0, &qword_10005C5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000227E8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009894(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100022848()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100022880(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100022F14;

  return sub_10001F484(a1, v5);
}

uint64_t sub_1000229F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100022A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100022F14;

  return sub_10000C3C8(a1, v4, v5, v6);
}

uint64_t sub_100022AF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001F924(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022B54(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_100022BA4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100022BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100022F14;

  return sub_10000DA2C(a1, v4, v5, v7, v6);
}

uint64_t sub_100022CAC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100022F14;

  return sub_10002167C(a1, v5);
}

uint64_t sub_100022D64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000225C0;

  return sub_10002167C(a1, v5);
}

_OWORD *sub_100022E1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_100022FD0()
{
  result = PRXMainContentMargin;
  qword_1000814C0 = PRXMainContentMargin;
  return result;
}

double sub_100022FE8()
{
  result = PRXTitleToSubtitleMargin;
  qword_1000814C8 = PRXTitleToSubtitleMargin;
  return result;
}

double sub_100023000()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000814D0 = PRXMainContentMargin + 14.0;
  return result;
}

double sub_100023020()
{
  result = PRXMainContentMargin + 14.0;
  *&qword_1000814D8 = PRXMainContentMargin + 14.0;
  return result;
}

void sub_100023040(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities] = a1[24];
  v11 = a1[6];
  v12 = a1[7];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = String._bridgeToObjectiveC()();
  v53 = sub_100023B30;
  v54 = v13;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10001BE14;
  v52 = &unk_1000721D8;
  v15 = _Block_copy(&aBlock);
  v16 = objc_opt_self();
  v48 = [v16 actionWithTitle:v14 style:0 handler:v15];

  _Block_release(v15);

  v18 = a1[8];
  v17 = a1[9];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = String._bridgeToObjectiveC()();
  v53 = sub_100023B78;
  v54 = v19;
  aBlock = _NSConcreteStackBlock;
  v50 = 1107296256;
  v51 = sub_10001BE14;
  v52 = &unk_100072200;
  v21 = _Block_copy(&aBlock);
  v22 = [v16 actionWithTitle:v20 style:1 handler:v21];

  _Block_release(v21);

  v23 = *&v2[v10];
  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() _systemImageNamed:v24];

  v26 = [objc_allocWithZone(UIImageView) initWithImage:v25];
  v27 = [objc_opt_self() systemBlueColor];
  [v26 setTintColor:v27];

  v28 = v26;
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [objc_opt_self() configurationWithPointSize:72.0];
  [v28 setPreferredSymbolConfiguration:v29];

  v30 = [v2 contentView];
  [v30 addSubview:v28];

  v31 = [v2 contentView];
  v32 = [v31 mainContentGuide];

  v33 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10005C4D0;
  v35 = [v28 topAnchor];
  v36 = [v32 topAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36];

  *(v34 + 32) = v37;
  v38 = [v28 bottomAnchor];
  v39 = [v32 bottomAnchor];
  v40 = [v38 constraintLessThanOrEqualToAnchor:v39];

  *(v34 + 40) = v40;
  v41 = [v28 centerXAnchor];
  v42 = [v32 centerXAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v34 + 48) = v43;
  v44 = [v28 centerYAnchor];

  v45 = [v32 centerYAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v34 + 56) = v46;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];
}

uint64_t sub_1000236D4()
{
  sub_10003B898();
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *(v1 + 64) = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_capabilities);
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415EC(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000237B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_10002380C()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000415EC(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_100023A74@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100023AF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023B60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100023BB0(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  v10 = a1[6];
  v11 = a1[7];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = String._bridgeToObjectiveC()();
  v50 = sub_1000245AC;
  v51 = v12;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10001BE14;
  v49 = &unk_1000722B8;
  v14 = _Block_copy(&aBlock);
  v15 = objc_opt_self();
  v16 = [v15 actionWithTitle:v13 style:0 handler:v14];

  _Block_release(v14);

  v45 = v16;

  v18 = a1[8];
  v17 = a1[9];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = String._bridgeToObjectiveC()();
  v50 = sub_1000245F4;
  v51 = v19;
  aBlock = _NSConcreteStackBlock;
  v47 = 1107296256;
  v48 = sub_10001BE14;
  v49 = &unk_1000722E0;
  v21 = _Block_copy(&aBlock);
  v22 = [v15 actionWithTitle:v20 style:1 handler:v21];

  _Block_release(v21);

  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() imageNamed:v23];

  if (v24)
  {
    v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];

    v26 = v25;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v2 contentView];
    [v27 addSubview:v26];

    v28 = [v2 contentView];
    v29 = [v28 mainContentGuide];

    v30 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10005C4D0;
    v32 = [v26 topAnchor];
    v33 = [v29 topAnchor];
    v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33];

    *(v31 + 32) = v34;
    v35 = [v26 bottomAnchor];
    v36 = [v29 bottomAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36];

    *(v31 + 40) = v37;
    v38 = [v26 centerXAnchor];
    v39 = [v29 centerXAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v31 + 48) = v40;
    v41 = [v26 centerYAnchor];

    v42 = [v29 centerYAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v31 + 56) = v43;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

char *sub_100024168()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 1;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042634(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100024234(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

char *sub_100024290()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042634(v0, result);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_1000244F0@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_10000A4E8(&v9, &v8);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024574()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000245DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10002462C(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = a1[1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setTitle:v6];

  v7 = a1[2];
  v8 = a1[3];
  v9 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v9];

  if (a1[8] || a1[9] != 0xE000000000000000)
  {
    v10 = a1[8];
    v11 = a1[9];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v13 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1000253A8;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001BE14;
      aBlock[3] = &unk_100072398;
      v14 = _Block_copy(aBlock);
      v15 = [objc_opt_self() actionWithTitle:v13 style:1 handler:v14];

      _Block_release(v14);

      v16 = [v2 addAction:v15];
    }
  }

  v17 = [v2 contentView];
  v18 = [v17 mainContentGuide];

  v19 = a1[19];
  if (v19)
  {
    v20 = objc_allocWithZone(UIImageView);
    isa = v19;
    v22 = [v20 initWithImage:isa];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [v2 contentView];
    [v23 addSubview:v22];

    v24 = [v22 widthAnchor];
    v25 = [v24 constraintEqualToConstant:70.0];

    [v25 setActive:1];
    v26 = [v22 heightAnchor];
    v27 = [v26 constraintEqualToConstant:70.0];

    [v27 setActive:1];
    v28 = objc_opt_self();
    sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10005C4D0;
    v30 = [v22 topAnchor];
    v31 = [v18 topAnchor];
    v32 = [v30 constraintGreaterThanOrEqualToAnchor:v31];

    *(v29 + 32) = v32;
    v33 = [v22 bottomAnchor];
    v34 = [v18 bottomAnchor];
    v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

    *(v29 + 40) = v35;
    v36 = [v22 centerXAnchor];
    v37 = [v18 centerXAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v29 + 48) = v38;
    v39 = [v22 centerYAnchor];

    v40 = [v18 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    *(v29 + 56) = v41;
    sub_10000A5E8();
    v42.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:v42.super.isa];
    v43 = v18;
    v18 = v22;
LABEL_13:

    return;
  }

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_10005C520;
  v45 = a1[15];
  aBlock[0] = v45;
  if (v45)
  {
    v46 = v44;
    *(v44 + 32) = v45;
    sub_1000253C8(aBlock, &v78, &qword_10007F3D8, &qword_10005C9D0);
    if (qword_10007EBF0 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000032F0(v47, qword_10007EF70);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v78 = v51;
      *v50 = 136315138;
      type metadata accessor for ASUIDevice();
      v52 = Array.description.getter();
      v54 = sub_10003FFF4(v52, v53, &v78);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "init ASUIProductCarouselView with devices %s", v50, 0xCu);
      sub_100009AB0(v51);
    }

    v55 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v56 = *&v55[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
    *&v55[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v46;
    v57 = v55;

    v58 = &v57[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
    v59 = *&v57[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
    *v58 = 0;
    *(v58 + 1) = 0xE000000000000000;

    v57[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 0;
    v57[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
    sub_100005CD4();

    v43 = v57;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v60 = [v2 contentView];
    [v60 addSubview:v43];

    v61 = [v2 contentView];
    v42.super.isa = [v61 mainContentGuide];

    v77 = objc_opt_self();
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_10005C4D0;
    v63 = [v43 topAnchor];
    v64 = [(objc_class *)v42.super.isa topAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(v62 + 32) = v65;
    v66 = [v43 bottomAnchor];
    v67 = [(objc_class *)v42.super.isa bottomAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v62 + 40) = v68;
    v69 = [v43 leadingAnchor];
    v70 = [v2 contentView];
    v71 = [v70 leadingAnchor];

    v72 = [v69 constraintEqualToAnchor:v71];
    *(v62 + 48) = v72;
    v73 = [v43 trailingAnchor];

    v74 = [v2 contentView];
    v75 = [v74 trailingAnchor];

    v76 = [v73 constraintEqualToAnchor:v75];
    *(v62 + 56) = v76;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v77 activateConstraints:isa];
    goto LABEL_13;
  }

  __break(1u);
}

void sub_100025024()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100025078();
  }
}

uint64_t sub_100025078()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100042664(v0, result);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1000252DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100025370()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000253B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000253C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009894(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_100025430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon] = 0;
  v11 = &v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel] = 0;
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel] = 0;
  v22.receiver = v5;
  v22.super_class = type metadata accessor for ASUIAppHeaderView();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon];
  *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon] = a1;
  v15 = v13;
  v16 = a1;

  v17 = &v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName];
  v18 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName + 8];
  *v17 = a2;
  *(v17 + 1) = a3;

  v19 = &v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage];
  v20 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage + 8];
  *v19 = a4;
  *(v19 + 1) = a5;

  sub_10002558C();

  return v15;
}

void sub_10002558C()
{
  v1 = [objc_allocWithZone(UIImageView) initWithImage:*&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon]];
  v2 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView;
  v3 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView] = v1;

  v4 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  v5 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel;
  v6 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel] = v4;
  v7 = v4;

  if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName + 8])
  {
    v8 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName];
    v9 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName + 8];

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v7 setText:v10];

  v11 = *&v0[v5];
  if (!v11)
  {
    __break(1u);
    goto LABEL_42;
  }

  [v11 setTextAlignment:1];
  v12 = *&v0[v5];
  if (!v12)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  [v12 setNumberOfLines:0];
  v13 = [objc_allocWithZone(PRXLabel) initWithStyle:2];
  v14 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel;
  v15 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel];
  *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel] = v13;
  v16 = v13;

  if (*&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage + 8])
  {
    v17 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage];
    v18 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage + 8];

    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v16 setText:v19];

  v20 = *&v0[v14];
  if (!v20)
  {
    goto LABEL_43;
  }

  [v20 setNumberOfLines:0];
  v21 = *&v0[v14];
  if (!v21)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v85 = v14;
  [v21 setTextAlignment:1];
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10005C430;
  v23 = *&v0[v2];
  if (!v23)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v24 = inited;
  *(inited + 32) = v23;
  v25 = *&v0[v5];
  if (!v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  *(inited + 40) = v25;
  v26 = *&v0[v85];
  if (!v26)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  *(inited + 48) = v26;
  v27 = inited & 0xC000000000000001;
  v28 = v23;
  v29 = v25;
  v30 = v26;
  if (v27)
  {
    goto LABEL_38;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  for (i = v28; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v32 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v32];

    if (v27)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_37;
      }

      v33 = *(v24 + 40);
    }

    v34 = v33;
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v34];

    if (v27)
    {
      break;
    }

    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v35 = *(v24 + 48);
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v36];

  swift_setDeallocating();
  v37 = *(v24 + 16);
  swift_arrayDestroy();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10005C720;
  v39 = *&v0[v2];
  if (!v39)
  {
    goto LABEL_48;
  }

  v40 = [v39 widthAnchor];
  v41 = [v40 constraintEqualToConstant:70.0];

  *(v38 + 32) = v41;
  v42 = *&v0[v2];
  if (!v42)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v43 = [v42 heightAnchor];
  v44 = [v43 constraintEqualToConstant:70.0];

  *(v38 + 40) = v44;
  v45 = *&v0[v2];
  if (!v45)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v46 = [v45 centerXAnchor];
  v47 = [v0 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v38 + 48) = v48;
  v49 = *&v0[v2];
  if (!v49)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v50 = [v49 topAnchor];
  v51 = [v0 topAnchor];
  [v0 layoutMargins];
  v52 = [v50 constraintEqualToAnchor:v51 constant:?];

  *(v38 + 56) = v52;
  v53 = *&v0[v5];
  if (!v53)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v54 = [v53 topAnchor];
  v55 = *&v0[v2];
  if (!v55)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v56 = [v55 bottomAnchor];
  v57 = [v54 constraintEqualToAnchor:v56 constant:10.0];

  *(v38 + 64) = v57;
  v58 = *&v0[v5];
  if (!v58)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v59 = [v58 centerXAnchor];
  v60 = [v0 centerXAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(v38 + 72) = v61;
  v62 = *&v0[v5];
  if (!v62)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v63 = [v62 widthAnchor];
  v64 = [v0 widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v38 + 80) = v65;
  v66 = *&v0[v85];
  if (!v66)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v67 = [v66 topAnchor];
  v68 = *&v0[v5];
  if (!v68)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v69 = [v68 bottomAnchor];
  v70 = [v67 constraintEqualToAnchor:v69 constant:18.0];

  *(v38 + 88) = v70;
  v71 = *&v0[v85];
  if (!v71)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v72 = [v71 centerXAnchor];
  v73 = [v0 centerXAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v38 + 96) = v74;
  v75 = *&v0[v85];
  if (!v75)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v76 = [v75 widthAnchor];
  v77 = [v0 widthAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v38 + 104) = v78;
  v79 = *&v0[v85];
  if (v79)
  {
    v80 = objc_opt_self();
    v81 = [v79 bottomAnchor];
    v82 = [v0 bottomAnchor];
    v83 = [v81 constraintEqualToAnchor:v82];

    *(v38 + 112) = v83;
    sub_10000A5E8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v80 activateConstraints:isa];

    return;
  }

LABEL_60:
  __break(1u);
}

id sub_100025E10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASUIAppHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100025EFC()
{
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appIcon) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appName);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsage);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_iconView) = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_nameLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIAppHeaderView_appUsageLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100025FA8()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_10007F440);
  v1 = sub_1000032F0(v0, qword_10007F440);
  if (qword_10007EBD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081460);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Int sub_100026084()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000260F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10002613C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  v6._object = 0x800000010005E4B0;
  v6._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v6);
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = sub_10000A8A0();

  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = *&v9[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  v11 = v10;

  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = [v11 bluetoothIdentifier];

  if (v12)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UUID.uuidString.getter();
    v15 = v14;
    (*(v2 + 8))(v5, v1);
    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    URL.init(string:)();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_100026314(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin(v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC50 != -1)
  {
    result = swift_once();
  }

  v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (v15)
  {
    v16 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v16)
    {
      if (*(v16 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v17 = ~*(v15 + 84) & 1;
      }

      else
      {
        v17 = 0;
      }

      if (*(v16 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) == 1 && !*(v15 + 86))
      {
        v17 |= 2uLL;
      }
    }

    else
    {
      v17 = 0;
    }

    sub_10002A43C();
    v18 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = a3;
    aBlock[4] = sub_10002A4C0;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_1000726A8;
    v20 = _Block_copy(aBlock);
    v21 = a3;
    static DispatchQoS.unspecified.getter();
    v22[1] = _swiftEmptyArrayStorage;
    sub_10002A4E0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    sub_10002A528();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100026684(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_10007EC50 != -1)
    {
      swift_once();
    }

    v7 = qword_1000814E8;
    v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v8)
    {
      if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast) == 1)
      {
        sub_1000268F0("Showing Personal Identifier Choice View", sub_100026FC4);
      }

      else
      {
        sub_1000268F0("Showing Connect View", sub_1000270E0);
        v12 = *(a2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        if (!v12)
        {
LABEL_24:
          __break(1u);
          return;
        }

        v13 = v12;
        sub_10000B8EC();
      }

      v14 = *(v7 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (v14)
      {
        v15 = *(v14 + 40);
        v16 = *(v14 + 48);
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;

        sub_100002E6C(v15);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  v4 = a2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_14:
    sub_1000268F0("Showing Turn On Transports View", sub_100027318);
    return;
  }

  v5 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 16))(v17, ObjectType, v5);
  if (v17[2] == 1)
  {
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v9 = v17[8];
  v10 = (*(v5 + 8))(ObjectType, v5);
  swift_unknownObjectRelease();
  sub_1000227E8(v17, &unk_10007F570, &unk_10005C510);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = (v9 & a1) == a1;
  }

  if (!v11)
  {
    goto LABEL_14;
  }
}

void sub_1000268F0(const char *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  if (qword_10007EC20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000032F0(v6, qword_10007F440);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  if (v10)
  {
    v11 = v10;
    v12 = a2();
    [v11 pushViewController:v12 animated:1];
  }
}

void sub_100026A70(void *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType] = 0;
  type metadata accessor for ASUIPresenter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter];
  v6 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter];
  *v5 = v4;
  v5[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v4 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v7 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
  if (!v7)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
  {
    v9 = *(v7 + 84);
    if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi))
    {
      if ((*(v7 + 86) & *(v7 + 84) & 1) == 0)
      {
        if ((*(v7 + 84) & 1) == 0)
        {
          v10 = *(v7 + 85);
          if (*(v7 + 86))
          {
LABEL_15:
            if (v10)
            {
LABEL_16:
              v11 = swift_allocObject();
              *(v11 + 16) = v2;
              v12 = *(v7 + 40);
              v13 = *(v7 + 48);
              *(v7 + 40) = sub_10002A5C4;
              *(v7 + 48) = v11;
              swift_retain_n();
              v2;
              sub_100002E6C(v12);

              v14 = sub_100027318();
LABEL_26:
              v20 = v14;
              goto LABEL_27;
            }

LABEL_25:
            v22 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

            v14 = sub_1000271FC();
            goto LABEL_26;
          }

LABEL_14:
          v10 &= *(v7 + 87);
          goto LABEL_15;
        }

LABEL_13:
        v10 = 1;
        if (*(v7 + 86))
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if (!*(v7 + 84))
    {
      if (*(v7 + 85))
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }
  }

  else if ((*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) != 0 && (*(v7 + 86) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp) == 1)
  {
    v15 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

    v14 = sub_100026EA8();
    goto LABEL_26;
  }

  v16 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast);
  v17 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);

  if (v16 == 1)
  {
    v14 = sub_100026FC4();
    goto LABEL_26;
  }

  v18 = sub_1000270E0();
  v19 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
  if (!v19)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v20 = v18;
  v21 = v19;
  sub_10000B8EC();

LABEL_27:
  v23 = [a1 presentProxCardFlowWithDelegate:v2 initialViewController:v20];

  v24 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController] = v23;
}

char *sub_100026D8C()
{
  v1 = v0;
  type metadata accessor for ASUINamingViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI24ASUINamingViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002AA58(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000727B0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100026EA8()
{
  v1 = v0;
  type metadata accessor for ASUIAppScanConsentViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIAppScanConsentViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100032460(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072DF8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100026FC4()
{
  v1 = v0;
  type metadata accessor for ASUIDeviceOTANameChoiceViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI37ASUIDeviceOTANameChoiceViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1000531F4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073E78;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000270E0()
{
  v1 = v0;
  type metadata accessor for ASUIConnectViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10003C20C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000731D0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000271FC()
{
  v1 = v0;
  type metadata accessor for ASUITransportsRestrictedViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI38ASUITransportsRestrictedViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10003479C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072F40;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027318()
{
  v1 = v0;
  type metadata accessor for ASUITurnOnTransportsViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI34ASUITurnOnTransportsViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100023040(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072148;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027434()
{
  v1 = v0;
  type metadata accessor for ASUIUpgradeViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI25ASUIUpgradeViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002BB1C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000728F8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027550()
{
  v1 = v0;
  type metadata accessor for ASUILearnMoreViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI27ASUILearnMoreViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100009C0C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100071670;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10002766C()
{
  v1 = v0;
  type metadata accessor for ASUIDoneViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI22ASUIDoneViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002462C(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072308;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027788()
{
  v1 = v0;
  type metadata accessor for ASUIBluetoothSetupViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIBluetoothSetupViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100053AD4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073F30;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000278A4()
{
  v1 = v0;
  type metadata accessor for ASUIConnectionErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI33ASUIConnectionErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002A5CC(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000726F8;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000279C0()
{
  v1 = v0;
  type metadata accessor for ASUIUpgradeErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100049094(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073B98;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027ADC()
{
  v1 = v0;
  type metadata accessor for ASUIAppScanErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIAppScanErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100036C40(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_1000730B0;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027BF8()
{
  v1 = v0;
  type metadata accessor for ASUIDiscoveryErrorViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIDiscoveryErrorViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100052B58(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073D98;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027D14()
{
  v1 = v0;
  type metadata accessor for ASUIMigrationViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI27ASUIMigrationViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100023BB0(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072228;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027E30()
{
  v1 = v0;
  type metadata accessor for ASUINumericComparisonViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI35ASUINumericComparisonViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_1000311D4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072D18;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100027F4C()
{
  v1 = v0;
  type metadata accessor for ASUIPasskeyDisplayViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI32ASUIPasskeyDisplayViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_100037174(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100073168;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100028068()
{
  v1 = v0;
  type metadata accessor for ASUIPasskeyEntryViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  if (v3)
  {
    v4 = result;
    v5 = result[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_type];
    swift_unknownObjectRetain();
    v6 = v4;
    sub_10004B788(v5, v7);
    swift_unknownObjectWeakLoadStrong();
    *&v6[OBJC_IVAR____TtC16AccessorySetupUI30ASUIPasskeyEntryViewController_router + 8] = *(v3 + 24);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    sub_10002FEA4(v7);
    sub_10002A024(v7);
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView + 8) = &off_100072C38;
    swift_unknownObjectWeakAssign();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100028184(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 1;
  type metadata accessor for ASUIPresenter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v4 = v3;
  v4[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v3 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v6 = sub_1000270E0();
  v7 = [a1 presentProxCardFlowWithDelegate:v1 initialViewController:v6];
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v7;

  v9 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (v9)
  {
    v10 = v9;
    sub_10000B8EC();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000282B0(void *a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 3;
  type metadata accessor for ASUIPresenter();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v5 = (v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  v6 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v5 = v4;
  v5[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v4 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v7 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (v7)
  {
    v8 = v7;
    sub_10001ADD0();

    v9 = sub_100027434();
    v10 = [a1 presentProxCardFlowWithDelegate:v2 initialViewController:v9];

    v11 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
    *(v2 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v10;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000283D8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType) = 2;
  type metadata accessor for ASUIPresenter();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_presenter);
  *v4 = v3;
  v4[1] = &off_100073D68;

  swift_unknownObjectRelease();
  *(v3 + 24) = &off_100072558;
  swift_unknownObjectWeakAssign();

  v6 = sub_100026D8C();
  v7 = [a1 presentProxCardFlowWithDelegate:v1 initialViewController:v6];

  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController) = v7;
}

void sub_1000284F4()
{
  v1 = v0;
  v2 = sub_100009894(&qword_10007F2C0, &qword_10005C5C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v71 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v71 - v11;
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_didEnterPostPairingFlow) = 1;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v15 = qword_1000814E8;
  v16 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v17 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v17)
  {
    if (qword_10007EC20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000032F0(v19, qword_10007F440);
    v75 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v75, v20, "No client model found", v21, 2u);
    }

    v22 = v75;

    return;
  }

  if (*(v17 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
  {
    v18 = v17;
    goto LABEL_38;
  }

  v74 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType;
  v75 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
  v23 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  if (!v23)
  {
    __break(1u);
    goto LABEL_66;
  }

  v73 = v17;
  v24 = v23;
  v25 = sub_10000A8A0();

  if (!v25)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v26 = v25[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_allowsRename];

  if (v26 != 1)
  {
LABEL_37:
    if (!*(v17 + v74))
    {
      v63 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v64 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      if (!v64)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v65 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v66 = *(v64 + v65);
      if (v66)
      {
        if (!(v66 >> 62))
        {
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
          {
            goto LABEL_38;
          }

LABEL_55:
          v67 = *(v1 + v63);
          if (v67)
          {
            v68 = v67;
            sub_10001A19C();

            return;
          }

          goto LABEL_77;
        }

        if (v66 < 0)
        {
          v70 = *(v64 + v65);
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_38:
    v48 = *(v15 + v16);
    if (!v48 || *(v48 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
    {
      goto LABEL_49;
    }

    v49 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
    v50 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    if (v50)
    {
      v51 = v50;
      v52 = sub_10000A8A0();

      if (v52)
      {
        v53 = v52[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_needsBluetoothSetup];

        if (v53 != 1)
        {
          goto LABEL_49;
        }

        v54 = *(v1 + v49);
        if (v54)
        {
          v55 = v54;
          v56 = sub_10000A8A0();

          if (v56)
          {
            v57 = *&v56[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
            v58 = v57;

            if (v57)
            {
              v59 = [v58 flags];

              if ((v59 & 0x20) == 0)
              {
                v60 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
                if (!swift_unknownObjectWeakLoadStrong() || (v61 = *(v60 + 8), ObjectType = swift_getObjectType(), LODWORD(v61) = (*(v61 + 8))(ObjectType, v61), swift_unknownObjectRelease(), v61 != 10))
                {
                  sub_100028E4C();
                  goto LABEL_50;
                }
              }

LABEL_49:
              sub_1000268F0("Showing Done View", sub_10002766C);
LABEL_50:

              return;
            }

            goto LABEL_75;
          }

LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_68;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v27 = *(&v75->isa + v1);
  if (!v27)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v28 = v27;
  v29 = sub_10000A8A0();

  if (!v29)
  {
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
LABEL_24:
    sub_1000227E8(v14, &qword_10007F2C0, &qword_10005C5C0);
    v35 = *(&v75->isa + v1);
    if (!v35)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v36 = v35;
    v37 = sub_10000A8A0();

    if (!v37)
    {
      v42 = type metadata accessor for UUID();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
LABEL_33:
      sub_1000227E8(v9, &qword_10007F2C0, &qword_10005C5C0);
      goto LABEL_37;
    }

    v38 = *&v37[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
    v39 = v38;

    if (!v38)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return;
    }

    v40 = [v39 wifiAwareDevicePairingID];

    if (v40)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v43 = type metadata accessor for UUID();
    v44 = *(v43 - 8);
    (*(v44 + 56))(v6, v41, 1, v43);
    sub_10002A3CC(v6, v9);
    if ((*(v44 + 48))(v9, 1, v43) == 1)
    {
      goto LABEL_33;
    }

    v14 = v9;
    goto LABEL_35;
  }

  v30 = *&v29[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  v72 = v30;

  if (!v30)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v31 = v72;
  v32 = [v72 bluetoothIdentifier];

  if (v32)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
  }

  else
  {
    v33 = type metadata accessor for UUID();
    (*(*(v33 - 8) + 56))(v12, 1, 1, v33);
  }

  sub_10002A3CC(v12, v14);
  type metadata accessor for UUID();
  if ((*(*(v33 - 8) + 48))(v14, 1, v33) == 1)
  {
    goto LABEL_24;
  }

LABEL_35:
  sub_1000227E8(v14, &qword_10007F2C0, &qword_10005C5C0);
  v45 = v1 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_currentView;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v46 = *(v45 + 8);
    v47 = swift_getObjectType();
    LODWORD(v46) = (*(v46 + 8))(v47, v46);
    swift_unknownObjectRelease();
    if (v46 == 9)
    {
      goto LABEL_37;
    }
  }

  sub_1000268F0("Showing Naming View", sub_100026D8C);
  if (*(v15 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient))
  {
    v69 = *(v15 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    [swift_unknownObjectRetain() pickerStartedRename];
    swift_unknownObjectRelease();
  }
}