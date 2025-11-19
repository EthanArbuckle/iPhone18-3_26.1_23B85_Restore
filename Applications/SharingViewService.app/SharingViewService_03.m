void sub_1000421E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v19 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v19 - 8);
  v21 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC;
  if (*(v10 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC))
  {
    goto LABEL_16;
  }

  v71 = a1;
  v72 = a7;
  v69 = &v68 - v20;
  v70 = a8;
  v22 = [objc_allocWithZone(type metadata accessor for B389AppleIDViewController(0)) initWithMainController:v10];
  v23 = *(v10 + v21);
  *(v10 + v21) = v22;
  v24 = v22;

  if (!v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = a4;
  if (!a4)
  {
    v26 = [objc_opt_self() mainBundle];
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    v68 = a2;
    v29 = v28;
    v30 = sub_1001279D0(v26, v27, v28);

    a2 = v68;
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v31;
  }

  v32 = &v24[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText];
  *v32 = a3;
  v32[1] = v25;

  sub_1000581EC();

  v33 = *(v10 + v21);
  if (!v33)
  {
    goto LABEL_22;
  }

  v34 = v71;
  v35 = v72;
  if (a6)
  {
    v36 = v33;
    v37 = a6;
  }

  else
  {
    v38 = objc_opt_self();
    v39 = v33;
    v40 = [v38 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = String._bridgeToObjectiveC()();
    v43 = a2;
    v44 = sub_1001279D0(v40, v41, v42);

    a5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v45;

    a2 = v43;
    v34 = v71;
    v35 = v72;
  }

  v46 = &v33[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
  *v46 = a5;
  v46[1] = v37;

  sub_1000581EC();

  v47 = *(v10 + v21);
  if (!v47)
  {
    goto LABEL_23;
  }

  if (a2)
  {
    v48 = v47;
    v49 = a2;
  }

  else
  {
    v50 = objc_opt_self();
    v51 = v47;
    v52 = [v50 mainBundle];
    v53 = String._bridgeToObjectiveC()();
    v54 = String._bridgeToObjectiveC()();
    v55 = sub_1001279D0(v52, v53, v54);

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v56;
  }

  v57 = &v47[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
  *v57 = v34;
  v57[1] = v49;

  sub_1000581EC();

  v58 = *(v10 + v21);
  if (!v58)
  {
    goto LABEL_24;
  }

  v59 = &v58[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName];
  v60 = v70;
  *v59 = v35;
  *(v59 + 1) = v60;
  v61 = v58;

  v62 = *(v10 + v21);
  if (v62)
  {
    v63 = v69;
    sub_100005EB8(a9, v69, &qword_1001BA7B0);
    v64 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
    swift_beginAccess();
    v65 = v62;
    sub_100067118(v63, v62 + v64, &qword_1001BA7B0);
    swift_endAccess();

LABEL_16:
    v66 = *(v10 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
    if (v66)
    {
      v67 = *(v10 + v21);
      if (v67)
      {
        sub_100127D64(v66, v67);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

void sub_1000426B8()
{
  v1 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC;
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_hsa2VC);
    v4 = v3;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for B389HSA2ViewController()) initWithMainController:v0];
    v3 = 0;
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = v4;
  v8 = v4;
  v5 = v3;

  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
  if (v6)
  {
    v7 = v6;
    sub_100127D64(v7, v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100042770()
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
  v20 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000D298(v32, qword_1001BAF20);
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

  v92 = 0x8000000100146EA0;
  v93 = 0xD00000000000006ELL;
  v94 = 0x8000000100146EA0;
  v95 = 795;
  v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v44);

  v45 = String.hashValue.getter();

  swift_beginAccess();
  v46 = sub_1000D991C(&v95, v45);
  swift_endAccess();
  if (v46)
  {
    sub_100050C70(0xD000000000000012, 0x80000001001476D0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v47 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central;
  v48 = v96;
  v49 = *(v96 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central);
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
  if (!*&v48[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph])
  {
    v91 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
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

        v93 = 0xD00000000000006ELL;
        v94 = v92;
        v95 = 812;
        v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v80);

        v81 = String.hashValue.getter();

        swift_beginAccess();
        v82 = sub_1000D991C(&v95, v81);
        swift_endAccess();
        if (v82)
        {
          sub_100050C70(0xD000000000000012, v43 | 0x8000000000000000, 0, 0xE000000000000000, "%s - started... %s");
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
          sub_10000D298(v66, qword_1001BAF20);
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

        if (qword_1001B9318 == -1)
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

  v93 = 0xD00000000000006ELL;
  v94 = v92;
  v95 = 816;
  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v77);

  v78 = String.hashValue.getter();

  swift_beginAccess();
  v79 = sub_1000D991C(&v95, v78);
  swift_endAccess();
  if (v79)
  {
    sub_100050C70(0xD000000000000012, v43 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  (*(v29 + 8))(v88, v28);
}

void sub_1000435FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState;
  v3 = v0[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState];
  if (v3 == 4)
  {
    v30 = 0xD00000000000006ELL;
    v31 = 0x8000000100146EA0;
    v29 = 834;
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17 = String.hashValue.getter();

    swift_beginAccess();
    v18 = sub_1000D991C(&v29, v17);
    swift_endAccess();
    if (v18)
    {
      sub_10004DA34("ensureConnected - skip");
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (!v0[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_connectionState])
      {
        swift_beginAccess();
        sub_1000D99FC(&v29, 0xD000000000000011, 0x80000001001476B0);
        swift_endAccess();

        v30 = 0xD00000000000006ELL;
        v31 = 0x8000000100146EA0;
        v29 = 824;
        v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v4);

        v5 = String.hashValue.getter();

        swift_beginAccess();
        v6 = sub_1000D991C(&v29, v5);
        swift_endAccess();
        if (v6)
        {
          sub_100050C70(0xD000000000000011, 0x80000001001476B0, 0, 0xE000000000000000, "%s - started... %s");
        }

        v7 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central];
        if (v7)
        {
          v8 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph];
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

      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000D298(v19, qword_1001BAF20);
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

    v30 = 0xD00000000000006ELL;
    v31 = 0x8000000100146EA0;
    v29 = 830;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14 = String.hashValue.getter();

    swift_beginAccess();
    v15 = sub_1000D991C(&v29, v14);
    swift_endAccess();
    if (v15)
    {
      sub_100050C70(0xD000000000000011, 0x80000001001476B0, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_100043B64()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v13, 0xD000000000000015, 0x8000000100147810);
  swift_endAccess();

  v13 = 845;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v13, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000015, 0x8000000100147810, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart) == 1)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000015, 0x8000000100147810);
    swift_endAccess();

    v13 = 851;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_1000D991C(&v13, v6);
    swift_endAccess();
    if (v7)
    {
      sub_100050C70(0xD000000000000015, 0x8000000100147810, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v9, v10, "Waiting for user to tap start...", v11, 2u);
    }

    sub_10005F408();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void sub_100043EB4()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v13, 0xD000000000000012, 0x80000001001474E0);
  swift_endAccess();

  v13 = 856;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v13, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000012, 0x80000001001474E0, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didAgreeToLinking) == 1)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000012, 0x80000001001474E0);
    swift_endAccess();

    v13 = 862;
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6 = String.hashValue.getter();

    swift_beginAccess();
    v7 = sub_1000D991C(&v13, v6);
    swift_endAccess();
    if (v7)
    {
      sub_100050C70(0xD000000000000012, 0x80000001001474E0, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
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
      _os_log_impl(&_mh_execute_header, v9, v10, "Waiting for user to agree to linking...", v11, 2u);
    }

    sub_10005F408();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

void sub_100044204()
{
  v1 = v0;
  v164 = type metadata accessor for URL();
  v166 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005DCC(&qword_1001BA7B0);
  v4 = __chkstk_darwin(v3 - 8);
  v159 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v161 = &v155 - v7;
  v8 = __chkstk_darwin(v6);
  v165 = &v155 - v9;
  v10 = __chkstk_darwin(v8);
  v163 = &v155 - v11;
  __chkstk_darwin(v10);
  v13 = &v155 - v12;
  swift_beginAccess();
  sub_1000D99FC(&v174, 0xD000000000000020, 0x8000000100147710);
  swift_endAccess();

  v175 = 0xD00000000000006ELL;
  v176 = 0x8000000100146EA0;
  v174 = 870;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = String.hashValue.getter();

  swift_beginAccess();
  v16 = sub_1000D991C(&v174, v15);
  swift_endAccess();
  if (v16)
  {
    sub_100050C70(0xD000000000000020, 0x8000000100147710, 0, 0xE000000000000000, "%s - started... %s");
  }

  v17 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_followupController);
  if (!v17)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000020, 0x8000000100147710);
    swift_endAccess();

    v175 = 0xD00000000000006ELL;
    v176 = 0x8000000100146EA0;
    v174 = 875;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v55);

    v56 = String.hashValue.getter();

    swift_beginAccess();
    v57 = sub_1000D991C(&v174, v56);
    swift_endAccess();
    if (v57)
    {
      sub_100050C70(0xD000000000000020, 0x8000000100147710, 0, 0xE000000000000000, "%s - done. %s");
    }

    return;
  }

  v158 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_followupController;
  v175 = 0;
  v18 = v17;
  v19 = [v18 pendingFollowUpItems:&v175];
  v20 = v175;
  if (!v19)
  {
    v58 = v175;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v21 = v19;
  sub_1000122EC(0, &qword_1001BBB20);
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v20;

  v24 = sub_100023D78(&off_10018EE88);
  swift_arrayDestroy();
  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v170 = v25;
  if (qword_1001B9318 != -1)
  {
LABEL_85:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = sub_10000D298(v26, qword_1001BAF20);

  v155 = v27;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  v30 = os_log_type_enabled(v28, v29);
  v157 = v13;
  v168 = v22;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v175 = v32;
    *v31 = 136315138;
    v33 = Array.description.getter();
    v13 = sub_10002065C(v33, v34, &v175);

    *(v31 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v28, v29, "Followup Items: %s", v31, 0xCu);
    sub_1000083B0(v32);

    v22 = v168;
  }

  v156 = v18;
  if (v22 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_10;
    }

LABEL_87:

    v146 = *(v1 + v158);
    *(v1 + v158) = 0;

    return;
  }

  v35 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_87;
  }

LABEL_10:
  v22 = 0;
  v172 = v168 & 0xFFFFFFFFFFFFFF8;
  v173 = (v168 & 0xC000000000000001);
  v171 = (v168 + 32);
  v18 = (v24 + 56);
  v160 = v1;
  while (1)
  {
    if (v173)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *(v172 + 16))
      {
        goto LABEL_84;
      }

      v36 = v171[v22];
    }

    v37 = v36;
    if (__OFADD__(v22++, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v39 = [v36 groupIdentifier];
    if (v39)
    {
      break;
    }

LABEL_12:

    if (v22 == v35)
    {
      goto LABEL_87;
    }
  }

  v40 = v39;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  if (v13 == v167 && v42 == v170)
  {
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v45 = [v37 uniqueIdentifier];
  if (!v45)
  {
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v46 = v45;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  if (!*(v24 + 16) || (Hasher.init(_seed:)(), String.hash(into:)(), v49 = Hasher._finalize()(), v50 = -1 << *(v24 + 32), v51 = v49 & ~v50, ((*&v18[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51) & 1) == 0))
  {
LABEL_11:

    v1 = v160;
    goto LABEL_12;
  }

  v52 = ~v50;
  while (1)
  {
    v53 = (*(v24 + 48) + 16 * v51);
    v54 = *v53 == v13 && v53[1] == v48;
    if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v51 = (v51 + 1) & v52;
    if (((*&v18[(v51 >> 3) & 0xFFFFFFFFFFFFFF8] >> v51) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v59 = v37;
  v60 = [v59 actions];
  if (!v60)
  {
    goto LABEL_97;
  }

  v61 = v60;

  sub_1000122EC(0, &qword_1001BBB28);
  v62 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v63 = v160;
  v64 = v157;
  v65 = v166;
  if (v62 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_89;
    }

LABEL_43:
    if ((v62 & 0xC000000000000001) != 0)
    {
      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v66 = *(v62 + 32);
    }

    v67 = v66;

    v68 = [v59 title];
    if (v68)
    {
      v69 = v68;
      v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;
    }

    else
    {
      v170 = 0;
      v71 = 0;
    }

    v72 = v67;
    v73 = v59;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    v76 = os_log_type_enabled(v74, v75);
    v172 = v71;
    v173 = v72;
    v171 = v73;
    if (v76)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v169 = swift_slowAlloc();
      v175 = v169;
      *v77 = 138412802;
      *(v77 + 4) = v73;
      v168 = v78;
      *v78 = v73;
      *(v77 + 12) = 2080;
      v79 = 0x8000000100145470;
      v80 = 0xD000000000000015;
      if (v71)
      {
        v81 = v170;
      }

      else
      {
        v81 = 0xD000000000000015;
      }

      if (v71)
      {
        v82 = v71;
      }

      else
      {
        v82 = 0x8000000100145470;
      }

      v83 = v73;

      v84 = sub_10002065C(v81, v82, &v175);

      *(v77 + 14) = v84;
      *(v77 + 22) = 2080;
      v85 = [v173 label];
      if (v85)
      {
        v86 = v85;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v87;
      }

      v63 = v160;
      v88 = sub_10002065C(v80, v79, &v175);

      *(v77 + 24) = v88;
      _os_log_impl(&_mh_execute_header, v74, v75, "accountFollowup: %@, title: %s, label: %s", v77, 0x20u);
      sub_10001259C(v168, &unk_1001BBA60);

      swift_arrayDestroy();

      v64 = v157;
      v65 = v166;
      v72 = v173;
    }

    else
    {
    }

    v89 = [v72 launchActionURL];
    if (v89)
    {
      v90 = v162;
      v91 = v89;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v92 = *(v65 + 32);
      v93 = v163;
      v94 = v164;
      v92(v163, v90, v164);
      v95 = *(v65 + 56);
      v95(v93, 0, 1, v94);
      v92(v64, v93, v94);
      v96 = v94;
      v95(v64, 0, 1, v94);
    }

    else
    {
      v97 = v163;
      v96 = v164;
      (*(v65 + 56))(v163, 1, 1, v164);
      URL.init(string:)();
      if ((*(v65 + 48))(v97, 1, v96) != 1)
      {
        sub_10001259C(v97, &qword_1001BA7B0);
      }
    }

    v98 = v165;
    sub_100005EB8(v64, v165, &qword_1001BA7B0);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v175 = v102;
      *v101 = 136315138;
      v103 = v161;
      sub_100005EB8(v98, v161, &qword_1001BA7B0);
      if ((*(v65 + 48))(v103, 1, v96) == 1)
      {
        v104 = 0x8000000100147740;
        v105 = 0xD000000000000012;
      }

      else
      {
        v106 = v162;
        (*(v65 + 32))(v162, v103, v96);
        sub_10005F638(&unk_1001BBB30, &type metadata accessor for URL);
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        v107 = v96;
        v104 = v108;
        v109 = v106;
        v98 = v165;
        (*(v65 + 8))(v109, v107);
      }

      sub_10001259C(v98, &qword_1001BA7B0);
      v110 = sub_10002065C(v105, v104, &v175);

      *(v101 + 4) = v110;
      _os_log_impl(&_mh_execute_header, v99, v100, "launchActionURL: %s", v101, 0xCu);
      sub_1000083B0(v102);
    }

    else
    {

      sub_10001259C(v98, &qword_1001BA7B0);
    }

    v111 = String._bridgeToObjectiveC()();
    v112 = sub_100127AD0(v111);

    v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v115 = v114;

    v116 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC;
    v117 = v172;
    if (!*(v63 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC))
    {
      v118 = [objc_allocWithZone(type metadata accessor for B389AppleIDViewController(0)) initWithMainController:v63];
      v119 = *(v63 + v116);
      *(v63 + v116) = v118;
      v120 = v118;

      if (!v120)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      *&v120[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText] = xmmword_10016E360;

      sub_1000581EC();

      v121 = *(v63 + v116);
      if (!v121)
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v122 = &v121[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
      *v122 = v113;
      v122[1] = v115;
      v123 = v121;

      sub_1000581EC();

      v124 = *(v63 + v116);
      if (!v124)
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      if (v117)
      {
        v125 = v124;
        v126 = v117;
        v127 = v170;
      }

      else
      {
        v128 = objc_opt_self();
        v129 = v124;
        v130 = [v128 mainBundle];
        v131 = String._bridgeToObjectiveC()();
        v132 = String._bridgeToObjectiveC()();
        v133 = sub_1001279D0(v130, v131, v132);

        v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v134;
      }

      v135 = &v124[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
      *v135 = v127;
      v135[1] = v126;

      sub_1000581EC();

      v136 = *(v63 + v116);
      if (!v136)
      {
        goto LABEL_103;
      }

      v137 = (v136 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName);
      *v137 = 0;
      v137[1] = 0;

      v138 = *(v63 + v116);
      if (!v138)
      {
LABEL_104:
        __break(1u);
        return;
      }

      v139 = v159;
      sub_100005EB8(v157, v159, &qword_1001BA7B0);
      v140 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
      swift_beginAccess();
      v141 = v138;
      sub_100067118(v139, v138 + v140, &qword_1001BA7B0);
      swift_endAccess();
    }

    v142 = *(v63 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
    if (v142)
    {
      v143 = *(v63 + v116);
      if (v143)
      {
        sub_100127D64(v142, v143);

        sub_10005F408();
        swift_allocError();
        *v144 = 1;
        swift_willThrow();
        v145 = v171;

        sub_10001259C(v157, &qword_1001BA7B0);
        return;
      }

      goto LABEL_99;
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

LABEL_89:

  v147 = v59;
  v148 = Logger.logObject.getter();
  v149 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v148, v149))
  {
    v150 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v150 = 138412290;
    *(v150 + 4) = v147;
    *v151 = v147;
    v152 = v147;
    _os_log_impl(&_mh_execute_header, v148, v149, "account followup %@ has no actions", v150, 0xCu);
    sub_10001259C(v151, &unk_1001BBA60);

    v147 = v152;
    v153 = v156;
  }

  else
  {
    v152 = v156;
    v153 = v147;
  }

  v154 = *(v63 + v158);
  *(v63 + v158) = 0;
}

void sub_100045578()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState;
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState);
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState + 8) != 1)
  {
    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 926;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_1000D991C(&v50, v8);
    swift_endAccess();
    if (v9)
    {
      sub_10004DA34("ensurePaired - Respond to request");
    }

    v10 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central);
    if (v10)
    {
      v11 = [v10 sharedPairingAgent];
      if (v11)
      {
        v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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
        v51 = 0xD00000000000006ELL;
        v52 = 0x8000000100146EA0;
        v50 = 922;
        v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v4);

        v5 = String.hashValue.getter();

        swift_beginAccess();
        v6 = sub_1000D991C(&v50, v5);
        swift_endAccess();
        if (v6)
        {
          sub_10004DA34("ensurePaired - Wait for pair request");
        }
      }

      else
      {
        v51 = 0xD00000000000006ELL;
        v52 = 0x8000000100146EA0;
        v50 = 932;
        v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v44);

        v45 = String.hashValue.getter();

        swift_beginAccess();
        v46 = sub_1000D991C(&v50, v45);
        swift_endAccess();
        if (v46)
        {
          sub_10004DA34("ensurePaired - wait for pair");
        }
      }

      goto LABEL_13;
    }

    swift_beginAccess();
    sub_1000D99FC(&v50, 0x6150657275736E65, 0xEE00292864657269);
    swift_endAccess();

    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 916;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24 = String.hashValue.getter();

    swift_beginAccess();
    v25 = sub_1000D991C(&v50, v24);
    swift_endAccess();
    if (v25)
    {
      sub_100050C70(0x6150657275736E65, 0xEE00292864657269, 0, 0xE000000000000000, "%s - started... %s");
    }

    v26 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_central);
    if (v26)
    {
      v27 = [v26 sharedPairingAgent];
      if (v27)
      {
        if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph))
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
    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 936;
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v30 = String.hashValue.getter();

    swift_beginAccess();
    v31 = sub_1000D991C(&v50, v30);
    swift_endAccess();
    if (v31)
    {
      sub_10004DA34("ensurePaired - did pair");
    }

    v32 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
    v33 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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
    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 943;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18 = String.hashValue.getter();

    swift_beginAccess();
    v19 = sub_1000D991C(&v50, v18);
    swift_endAccess();
    if (v19)
    {
      sub_10004DA34("ensurePaired - handledPostPair");
    }

    swift_beginAccess();
    sub_1000DC818(0x6150657275736E65, 0xEE00292864657269);
    swift_endAccess();

    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 944;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21 = String.hashValue.getter();

    swift_beginAccess();
    v22 = sub_1000D991C(&v50, v21);
    swift_endAccess();
    if (v22)
    {
      sub_100050C70(0x6150657275736E65, 0xEE00292864657269, 0, 0xE000000000000000, "%s - done. %s");
    }
  }

  else
  {
    v51 = 0xD00000000000006ELL;
    v52 = 0x8000000100146EA0;
    v50 = 947;
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v47);

    v48 = String.hashValue.getter();

    swift_beginAccess();
    v49 = sub_1000D991C(&v50, v48);
    swift_endAccess();
    if (v49)
    {
      sub_10004DA34("ensurePaired - skip pair");
    }
  }
}

void sub_100045F1C()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v9, 0xD000000000000014, 0x8000000100147500);
  swift_endAccess();

  v9 = 953;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v9, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000014, 0x8000000100147500, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8))
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

    v9 = 956;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7 = String.hashValue.getter();

    swift_beginAccess();
    v8 = sub_1000D991C(&v9, v7);
    swift_endAccess();
    if (v8)
    {
      sub_100050C70(0xD000000000000014, 0x8000000100147500, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_1000461B8()
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
  v11 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v114 = v11;
  sub_1000D99FC(v126, 0xD000000000000017, 0x8000000100146F50);
  swift_endAccess();

  v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om);
  aBlock = 0xD00000000000006ELL;
  v119 = 0x8000000100146EA0;
  v115 = 0x8000000100146EA0;
  v126[0] = 961;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = String.hashValue.getter();

  swift_beginAccess();
  v116 = v12;
  LOBYTE(v11) = sub_1000D991C(v126, v14);
  swift_endAccess();
  if (v11)
  {
    sub_100050C70(0xD000000000000017, 0x8000000100146F50, 0, 0xE000000000000000, "%s - started... %s");
  }

  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState))
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState) == 2)
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

  v126[0] = sub_1000378F8();
  v126[1] = v19;
  sub_100005DCC(&unk_1001BBA70);
  Optional.unwrap(_:file:line:)();

  v103 = aBlock;
  v107 = v119;
  *(v0 + v15) = 1;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v102 = v1;
  v20 = type metadata accessor for Logger();
  v21 = sub_10000D298(v20, qword_1001BAF20);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Calling finalizePairing...", v24, 2u);
  }

  v25 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
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

  v44 = sub_100037598();
  v45 = v106;
  if (!v44)
  {
    goto LABEL_51;
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex + 8))
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

  v46 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_selectedRoleIndex);
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
  v62 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
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
    v99 = qword_10016E878[v65];
  }

  v106 = v47;
  v98 = [v47 roleId];
  sub_100037BF8();
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
  v88 = *(v97 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
  v10 = v105;
  v89 = v106;
  if (!v88)
  {
    goto LABEL_55;
  }

  v90 = *(v97 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager);
  v91 = v88;

  v122 = sub_10005F594;
  v123 = v100;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_1000BB514;
  v121 = &unk_100190FA0;
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

  aBlock = 0xD00000000000006ELL;
  v119 = v115;
  v127 = 1040;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = String.hashValue.getter();

  swift_beginAccess();
  v18 = sub_1000D991C(&v127, v17);
  swift_endAccess();
  if (v18)
  {
    sub_100050C70(0xD000000000000017, v10 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }
}

uint64_t sub_100047064(uint64_t a1, void *a2, uint64_t a3)
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
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000D298(v15, qword_1001BAF20);
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
  if (*(v66 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_timeout))
  {
    swift_getObjectType();

    OS_dispatch_source.cancel()();
  }

  if (a1)
  {
    swift_errorRetain();
    sub_1000477C8(a1);
  }

  else
  {
    v31 = *(v66 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
    *(v66 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session) = v29;

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

    *(v66 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_findMyFinalizeState) = 2;
    sub_10003872C(v55);

    return (v53)(v63, v40);
  }
}

void sub_1000477C8(uint64_t a1)
{
  v18 = a1;
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    sub_10004C360(v17);
  }

  else
  {
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BAF20);
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

    sub_10004BB2C(v14, v16, a1, 0, 0, 0);
  }
}

void sub_100047A98()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v58, 0xD000000000000015, 0x8000000100146F10);
  swift_endAccess();

  aBlock = 0xD00000000000006ELL;
  v53 = 0x8000000100146EA0;
  v58 = 1045;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v58, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000015, 0x8000000100146F10, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
  if (v5)
  {
    v6 = v5;
    v7 = SFIsFMFAllowed();
    v8 = [v6 pairingLocation];
    v9 = &unk_1001C3000;
    if (!v8 || (v8, (v7 & 1) == 0))
    {
      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000D298(v10, qword_1001BAF20);
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

      v22 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController);
      *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController) = 0;

      v9 = &unk_1001C3000;
      *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapConfigurationState) = 2;
      v6 = v11;
    }

    v23 = v9[359];
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
      if (qword_1001B9318 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000D298(v27, qword_1001BAF20);
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
      v50 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_locationShifter);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_10005F4AC;
      *(v40 + 24) = v39;
      v56 = sub_10005F4EC;
      v57 = v40;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000BB624;
      v55 = &unk_100190F28;
      v41 = _Block_copy(&aBlock);
      v42 = v28;

      v43 = swift_allocObject();
      *(v43 + 2) = sub_10005F4AC;
      *(v43 + 3) = v39;
      v43[4] = v35;
      v43[5] = v37;
      v56 = sub_10005F564;
      v57 = v43;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1000E4BD0;
      v55 = &unk_100190F78;
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

      aBlock = 0xD00000000000006ELL;
      v53 = 0x8000000100146EA0;
      v58 = 1100;
      v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v46);

      v47 = String.hashValue.getter();

      swift_beginAccess();
      v48 = sub_1000D991C(&v58, v47);
      swift_endAccess();
      if (v48)
      {
        sub_100050C70(0xD000000000000015, 0x8000000100146F10, 0, 0xE000000000000000, "%s - done. %s");
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BAF20);
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

void sub_100048304(CLLocationDegrees a1, CLLocationDegrees a2, uint64_t a3, void *a4)
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
    v13 = sub_100037BF8();
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
      v30 = *&v8[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController];
      *&v8[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController] = v29;

      v8[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapConfigurationState] = 2;
      sub_10003872C(v31);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000484E8()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v19, 0xD00000000000001DLL, 0x8000000100147690);
  swift_endAccess();

  v19[3] = 0x8000000100146EA0;
  v19[0] = 1105;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v19, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD00000000000001DLL, 0x8000000100147690, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredMainService);
  if (!v5)
  {
    sub_10005F408();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startedCharacteristicDiscovery))
  {
    v6 = v5;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_startedCharacteristicDiscovery) = 1;
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000D298(v12, qword_1001BAF20);
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

  v19[0] = 1113;
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17 = String.hashValue.getter();

  swift_beginAccess();
  v18 = sub_1000D991C(v19, v17);
  swift_endAccess();
  if (v18)
  {
    sub_100050C70(0xD00000000000001DLL, 0x8000000100147690, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_1000488EC()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v10, 0xD000000000000024, 0x8000000100147660);
  swift_endAccess();

  v10 = 1118;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v10, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000024, 0x8000000100147660, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_remainingCharacteristicsToDiscover;
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

    v10 = 1124;
    v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v7);

    v8 = String.hashValue.getter();

    swift_beginAccess();
    v9 = sub_1000D991C(&v10, v8);
    swift_endAccess();
    if (v9)
    {
      sub_100050C70(0xD000000000000024, 0x8000000100147660, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

void sub_100048BB4()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v58, 0xD000000000000014, 0x80000001001475F0);
  swift_endAccess();

  v59 = 0xD00000000000006ELL;
  v60 = 0x8000000100146EA0;
  v58 = 1129;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v58, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000014, 0x80000001001475F0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v58 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
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

  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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
  v33 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager);
  swift_beginAccess();
  if (!*(v33[1] + 16) || (, sub_100032DCC(v32), v35 = v34, , (v35 & 1) == 0))
  {
    v36 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
    v37 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

    v61 = 1147;
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = String.hashValue.getter();

    swift_beginAccess();
    v51 = sub_1000D991C(&v61, v50);
    swift_endAccess();
    if (v51)
    {
      sub_100050C70(0xD000000000000014, 0x80000001001475F0, 0, 0xE000000000000000, "%s - done. %s");
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

void sub_100049354()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v50, 0xD00000000000001FLL, 0x8000000100147570);
  swift_endAccess();

  v50[3] = 0xD00000000000006ELL;
  v50[4] = 0x8000000100146EA0;
  v50[0] = 1152;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v50, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD00000000000001FLL, 0x8000000100147570, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16) || (, sub_100032E10(4), v7 = v6, , (v7 & 1) == 0))
  {
    sub_10005F408();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();
    return;
  }

  v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentReadRequest;
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentReadRequest) & 1) == 0)
  {
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000D298(v9, qword_1001BAF20);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "reading all values", v12, 2u);
    }

    *(v1 + v8) = 1;
    v13 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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

    v40 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
    v41 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

  v51 = 1171;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47 = String.hashValue.getter();

  swift_beginAccess();
  v48 = sub_1000D991C(&v51, v47);
  swift_endAccess();
  if (v48)
  {
    sub_100050C70(0xD00000000000001FLL, 0x8000000100147570, 0, 0xE000000000000000, "%s - done. %s");
  }
}

uint64_t sub_100049AD8()
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

  v93[3] = 0xD00000000000006ELL;
  v93[4] = 0x8000000100146EA0;
  v88 = 0x8000000100146EA0;
  v93[0] = 1176;
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6 = String.hashValue.getter();

  swift_beginAccess();
  v7 = sub_1000D991C(v93, v6);
  swift_endAccess();
  if (v7)
  {
    sub_100050C70(0xD000000000000017, 0x8000000100147520, 0, 0xE000000000000000, "%s - started... %s");
  }

  v87 = "ensureRoleSelected()";
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 8) >> 60 == 15)
  {
    goto LABEL_21;
  }

  v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
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

  v31 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_storeS1);
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
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length + 8) & 1) != 0 || v43 != *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_targetS1Length))
  {
    sub_1000083FC(v82, v79);
    sub_1000083FC(v40, v41);
    sub_100025404(v77, v78);
    v33 = v42;
    goto LABEL_40;
  }

  v46 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vbVersionStr);
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vbVersionStr + 8))
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

    if (qword_1001B9318 == -1)
    {
LABEL_37:
      v50 = type metadata accessor for Logger();
      sub_10000D298(v50, qword_1001BAF20);
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
  v89 = 0xD00000000000006ELL;
  v90 = v88;
  v91 = 1195;
  v63._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v63);

  v64 = String.hashValue.getter();

  swift_beginAccess();
  v65 = sub_1000D991C(&v91, v64);
  swift_endAccess();
  v66 = v82;
  if (v65)
  {
    sub_10004A4A4(v82, v79, v40, v81);
  }

  swift_beginAccess();
  v67 = v87;
  sub_1000DC818(0xD000000000000017, v87 | 0x8000000000000000);
  swift_endAccess();

  v89 = 0xD00000000000006ELL;
  v90 = v88;
  v91 = 1197;
  v68._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v68);

  v69 = String.hashValue.getter();

  swift_beginAccess();
  v70 = sub_1000D991C(&v91, v69);
  swift_endAccess();
  if (v70)
  {
    sub_100050C70(0xD000000000000017, v67 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  sub_1000083FC(v66, v79);
  sub_1000083FC(v80, v81);
  sub_100025404(v77, v78);
  return sub_1000083FC(v42, v83);
}

void sub_10004A4A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001BAF20);
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

uint64_t sub_10004A808()
{
  v1 = v0;
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  swift_beginAccess();
  sub_1000D99FC(v72, 0xD000000000000017, 0x8000000100147410);
  swift_endAccess();

  *&v76[0] = 0xD00000000000006ELL;
  *(&v76[0] + 1) = 0x8000000100146EA0;
  *&v72[0] = 1202;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4 = String.hashValue.getter();

  swift_beginAccess();
  v5 = sub_1000D991C(v72, v4);
  swift_endAccess();
  if (v5)
  {
    sub_100050C70(0xD000000000000017, 0x8000000100147410, 0, 0xE000000000000000, "%s - started... %s");
  }

  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 16);
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 48);
  v73 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 32);
  v74 = v7;
  v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 48);
  v75 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 64);
  v9 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 16);
  v72[0] = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue);
  v72[1] = v9;
  v64 = v73;
  v65 = v8;
  v66 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_payloadValue + 64);
  v62 = v72[0];
  v63 = v6;
  sub_100005EB8(v72, &v67, &qword_1001BBAF0);
  sub_100005DCC(&qword_1001BBAF0);
  Optional.unwrap(_:file:line:)();
  v76[2] = v64;
  v76[3] = v65;
  v76[4] = v66;
  v76[0] = v62;
  v76[1] = v63;
  sub_10001259C(v76, &qword_1001BBAF0);
  v78 = v69;
  v79 = v70;
  v80 = v71;
  v77[0] = v67;
  v77[1] = v68;
  v10 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_100032E10(2);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      sub_100005E64(*v14, v16);
    }

    else
    {
      v15 = 0;
      v16 = 0xF000000000000000;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  v60 = v15;
  v61 = v16;
  sub_100005DCC(&unk_1001BE190);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v15, v16);
  v82 = *(&v67 + 1);
  v17 = v67;
  v18 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_storeS1);
  swift_beginAccess();
  v19 = v18[1];
  v58 = *v18;
  v59 = v19;
  sub_100025480(v58, v19);
  Optional.unwrap(_:file:line:)();
  sub_100025404(v58, v59);
  v56 = *(&v67 + 1);
  v57 = v67;
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_handledS1S2PayloadRead))
  {
    goto LABEL_17;
  }

  *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_handledS1S2PayloadRead) = 1;
  v81 = v78;
  v67 = v78;
  sub_10005F690(&v81, &v58);
  static String.Encoding.utf8.getter();
  sub_10005F5D4();
  v20 = String.init<A>(bytes:encoding:)();
  v22 = v21;
  v23 = sub_1000083FC(v67, *(&v67 + 1));
  v58 = v20;
  v59 = v22;
  __chkstk_darwin(v23);
  sub_100005DCC(&unk_1001BBA70);
  Optional.unwrap(_:file:line:)();

  v25 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
  if (!v25)
  {
    goto LABEL_27;
  }

  v26 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_spManager);
  v27 = v25;
  v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = Data._bridgeToObjectiveC()().super.isa;
  v29 = *(v1 + v10);
  if (!*(v29 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v30 = result;

  result = sub_100032E10(18);
  if ((v31 & 1) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v53 = v26;
  v54 = v30;
  v32 = (*(v29 + 56) + 16 * result);
  v33 = *v32;
  v34 = v32[1];
  sub_100005E64(*v32, v34);

  v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1000083FC(v33, v34);
  v35 = *(v1 + v10);
  if (!*(v35 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_100032E10(17);
  if ((v36 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v51 = v27;
  v37 = (*(v35 + 56) + 16 * result);
  v38 = *v37;
  v39 = v37[1];
  sub_100005E64(*v37, v39);

  v50.super.isa = Data._bridgeToObjectiveC()().super.isa;
  result = sub_1000083FC(v38, v39);
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vbVersionStr + 8))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v49 = String._bridgeToObjectiveC()();

  isa = Data._bridgeToObjectiveC()().super.isa;
  v47 = Data._bridgeToObjectiveC()().super.isa;
  v48 = String._bridgeToObjectiveC()();

  v55 = Data._bridgeToObjectiveC()().super.isa;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v69 = sub_10005F6F4;
  *(&v69 + 1) = v40;
  *&v67 = _NSConcreteStackBlock;
  *(&v67 + 1) = 1107296256;
  *&v68 = sub_1000BB514;
  *(&v68 + 1) = &unk_100191018;
  v41 = _Block_copy(&v67);

  [v53 verifyPairingWithPairingSession:v51 signature:v28.super.isa attestation:v54 systemPublicKey:v52.super.isa refKeyPublicKey:v50.super.isa systemVersion:v49 vendorId:76 productId:21760 ecid:isa chipId:v47 serialNumber:v48 collaborativeKey:v55 completion:v41];
  _Block_release(v41);

LABEL_17:
  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionVerified) == 1)
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000017, 0x8000000100147410);
    swift_endAccess();

    *&v67 = 0xD00000000000006ELL;
    *(&v67 + 1) = 0x8000000100146EA0;
    v58 = 1260;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43 = String.hashValue.getter();

    swift_beginAccess();
    v44 = sub_1000D991C(&v58, v43);
    swift_endAccess();
    if (v44)
    {
      sub_100050C70(0xD000000000000017, 0x8000000100147410, 0, 0xE000000000000000, "%s - done. %s");
    }

    sub_1000083FC(v57, v56);
    sub_1000083FC(v17, v82);
    return sub_100008450(v77);
  }

  else
  {
    sub_10005F408();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();
    sub_1000083FC(v57, v56);
    sub_1000083FC(v17, v82);
    return sub_100008450(v77);
  }
}

uint64_t sub_10004B1A4(uint64_t a1)
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

uint64_t sub_10004B340(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_10004B66C(uint64_t a1, void *a2, uint64_t a3)
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
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BAF20);
  v9 = a2;
  swift_errorRetain();
  v10 = Logger.logObject.getter();

  if (os_log_type_enabled(v10, v7))
  {
    v37 = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v9;
    v36 = v12;
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

    v34 = sub_10002065C(v15, v17, &v39);

    *(v11 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v10, v7, "verifyPairing %@ completion, error: %s", v11, 0x16u);
    sub_10001259C(v36, &unk_1001BBA60);

    sub_1000083B0(v13);

    a3 = v37;
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
      v35 = *(a3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
      *(a3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session) = a2;

      *(a3 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionVerified) = 1;
      return sub_10003872C(v9);
    }
  }

  v39 = a1;
  swift_errorRetain();
  swift_errorRetain();
  sub_100005DCC(&qword_1001BBA48);
  type metadata accessor for SPPairingSessionError(0);
  if (swift_dynamicCast())
  {
    sub_10004C360(v38);
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
      v39 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = Error.localizedDescription.getter();
      v24 = sub_10002065C(v22, v23, &v39);

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
    sub_10004BB2C(v29, v31, a1, 0, 0, 0);
  }
}

void sub_10004BB2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if ((v6[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_shownError] & 1) == 0)
  {
    v6[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_shownError] = 1;
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000D298(v15, qword_1001BAF20);

    swift_errorRetain();
    v16 = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    v61 = a3;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_10002065C(a1, a2, &v65);
      *(v19 + 12) = 2080;
      v58 = a5;
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

      v23 = sub_10002065C(v20, v22, &v65);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      swift_beginAccess();

      v24 = Set.description.getter();
      v26 = v25;

      v27 = sub_10002065C(v24, v26, &v65);

      *(v19 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v17, v18, "showError reason: %s, error: %s\nThe following operations were in-flight at the time of error, and have not finished:\n%s", v19, 0x20u);
      swift_arrayDestroy();

      a5 = v58;
    }

    else
    {
    }

    sub_100039158(0);
    v28 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC;
    v29 = *&v16[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC];
    osloga = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC;
    if (v29)
    {
      v30 = *&v16[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_errorVC];
      v31 = v30;
    }

    else
    {
      v59 = a5;
      v32 = sub_100005DCC(&unk_1001BBAD0);
      v33 = objc_allocWithZone(v32);
      v34 = type metadata accessor for B389ErrorViewController();
      v35 = objc_allocWithZone(v34);
      swift_unknownObjectWeakInit();
      *&v35[OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_error] = 0;
      *&v35[OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_buttons] = _swiftEmptyArrayStorage;
      swift_unknownObjectWeakAssign();
      v71.receiver = v35;
      v71.super_class = v34;
      v36 = objc_msgSendSuper2(&v71, "initWithContentView:", 0);
      v37 = [objc_opt_self() defaultConfiguration];
      if (!v37)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v38 = v37;
      v70.receiver = v33;
      v70.super_class = v32;
      v31 = objc_msgSendSuper2(&v70, "initAsSingleCardWithContentViewController:containerLayoutMargins:configuration:", v36, v37, 6.0, 6.0, 6.0, 6.0);

      [v31 setOverrideUserInterfaceStyle:1];
      v30 = 0;
      v28 = osloga;
      v29 = *(&osloga->isa + v16);
      a5 = v59;
    }

    *&v16[v28] = v31;
    v39 = v31;
    v40 = v30;

    v41 = sub_100005DCC(&unk_1001BBAD0);
    v69.receiver = v39;
    v69.super_class = v41;
    v42 = objc_msgSendSuper2(&v69, "contentViewController");

    type metadata accessor for B389ErrorViewController();
    v43 = swift_dynamicCastClassUnconditional();
    if (!a5)
    {
      v44 = [objc_opt_self() mainBundle];
      v45 = String._bridgeToObjectiveC()();
      v46 = String._bridgeToObjectiveC()();
      v47 = sub_1001279D0(v44, v45, v46);

      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v48 = String._bridgeToObjectiveC()();

    [v43 setTitle:v48];

    if (*(&osloga->isa + v16))
    {
      v68.receiver = *(&osloga->isa + v16);
      v68.super_class = v41;
      v49 = objc_msgSendSuper2(&v68, "contentViewController");
      v50 = swift_dynamicCastClassUnconditional();
      v51 = String._bridgeToObjectiveC()();
      [v50 setSubtitle:v51];

      if (*(&osloga->isa + v16))
      {
        v67.receiver = *(&osloga->isa + v16);
        v67.super_class = v41;
        v52 = objc_msgSendSuper2(&v67, "contentViewController");
        *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_error) = v61;

        swift_errorRetain();

        if (*(&osloga->isa + v16))
        {
          v66.receiver = *(&osloga->isa + v16);
          v66.super_class = v41;
          v53 = objc_msgSendSuper2(&v66, "contentViewController");
          v54 = swift_dynamicCastClassUnconditional();
          v55 = _swiftEmptyArrayStorage;
          if (a6)
          {
            v55 = a6;
          }

          *(v54 + OBJC_IVAR____TtC18SharingViewService23B389ErrorViewController_buttons) = v55;

          v56 = *&v16[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
          if (v56)
          {
            v57 = *(&osloga->isa + v16);
            if (v57)
            {
              sub_100127D64(v56, v57);
              return;
            }

            goto LABEL_35;
          }

LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BAF20);

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v64[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10002065C(a1, a2, v64);
    _os_log_impl(&_mh_execute_header, oslog, v10, "Already showing error, dropping message: %s", v11, 0xCu);
    sub_1000083B0(v12);
  }

  else
  {
  }
}

void sub_10004C360(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005DCC(&qword_1001BA7B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v126 - v8;
  v131 = a1;
  type metadata accessor for SPPairingSessionError(0);
  sub_10005F638(&qword_1001BBAC0, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.code.getter();
  if (v130 <= 8)
  {
    if (v130 > 4)
    {
      if ((v130 - 6) < 3 || v130 == 5)
      {
        goto LABEL_25;
      }
    }

    else if ((v130 - 1) < 3 || v130 == 4)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v130 <= 13)
  {
    if ((v130 - 9) < 3 || v130 == 13)
    {
      goto LABEL_25;
    }

LABEL_38:
    v128 = a1;
    v84 = [objc_opt_self() mainBundle];
    v85 = String._bridgeToObjectiveC()();
    v86 = String._bridgeToObjectiveC()();
    v58 = sub_1001279D0(v84, v85, v86);

    goto LABEL_26;
  }

  if (v130 <= 17)
  {
    if (v130 != 14)
    {
      if (v130 == 17)
      {
        v128 = a1;
        v23 = objc_opt_self();
        v24 = [v23 mainBundle];
        v25 = String._bridgeToObjectiveC()();
        v26 = String._bridgeToObjectiveC()();
        v27 = sub_1001279D0(v24, v25, v26);

        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        v31 = [v23 mainBundle];
        v32 = String._bridgeToObjectiveC()();
        v33 = String._bridgeToObjectiveC()();
        v34 = sub_1001279D0(v31, v32, v33);

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        sub_100005DCC(&qword_1001BBAC8);
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_10016CCD0;
        v39 = [v23 mainBundle];
        v40 = String._bridgeToObjectiveC()();
        v41 = v2;
        v42 = String._bridgeToObjectiveC()();
        v43 = sub_1001279D0(v39, v40, v42);

        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v46 = v45;

        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v38 + 32) = v44;
        *(v38 + 40) = v46;
        *(v38 + 48) = sub_10005F680;
        *(v38 + 56) = v47;
        v48 = String._bridgeToObjectiveC()();
        v49 = sub_100127AD0(v48);

        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        *(v38 + 64) = v50;
        *(v38 + 72) = v52;
        v2 = v41;
        v54 = v28;
        *(v38 + 80) = sub_10005F688;
        *(v38 + 88) = v53;
LABEL_27:
        if (qword_1001B9318 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_10000D298(v60, qword_1001BAF20);

        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v127 = v2;
          v65 = v64;
          v129[0] = v64;
          *v63 = 136315138;
          v66 = v38;
          v67 = v37;
          v68 = v35;
          v69 = v54;
          v70 = sub_10002065C(v54, v30, v129);

          *(v63 + 4) = v70;
          v54 = v69;
          v35 = v68;
          v37 = v67;
          v38 = v66;
          _os_log_impl(&_mh_execute_header, v61, v62, "%s", v63, 0xCu);
          sub_1000083B0(v65);
        }

        else
        {
        }

        sub_10004BB2C(v54, v30, v128, v35, v37, v38);

        return;
      }

      goto LABEL_38;
    }

    goto LABEL_25;
  }

  if (v130 != 18)
  {
    if (v130 != 19)
    {
      if (v130 == 20)
      {
        if (qword_1001B9318 != -1)
        {
          swift_once();
        }

        v127 = v1;
        v10 = type metadata accessor for Logger();
        sub_10000D298(v10, qword_1001BAF20);
        v11 = Logger.logObject.getter();
        v12 = static os_log_type_t.error.getter();
        v13 = &selRef_applicationProxyForIdentifier_;
        if (os_log_type_enabled(v11, v12))
        {
          v14 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v129[0] = v128;
          *v14 = 136315138;
          v15 = [objc_opt_self() mainBundle];
          v16 = String._bridgeToObjectiveC()();
          v17 = String._bridgeToObjectiveC()();
          v18 = sub_1001279D0(v15, v16, v17);

          v13 = &selRef_applicationProxyForIdentifier_;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;

          v22 = sub_10002065C(v19, v21, v129);

          *(v14 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v11, v12, "%s", v14, 0xCu);
          sub_1000083B0(v128);
        }

        v87 = objc_opt_self();
        v88 = [v87 v13[299]];
        v89 = String._bridgeToObjectiveC()();
        v90 = String._bridgeToObjectiveC()();
        v91 = sub_1001279D0(v88, v89, v90);

        v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = v92;

        v94 = [v87 v13[299]];
        v95 = String._bridgeToObjectiveC()();
        v96 = String._bridgeToObjectiveC()();
        v97 = sub_1001279D0(v94, v95, v96);

        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;

        v101 = String._bridgeToObjectiveC()();
        v102 = sub_100127AD0(v101);

        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v104;

        URL.init(string:)();
        v106 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC;
        v107 = v127;
        if (!*(v127 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDVC))
        {
          v126 = v93;
          v108 = [objc_allocWithZone(type metadata accessor for B389AppleIDViewController(0)) initWithMainController:v127];
          v109 = *(v107 + v106);
          *(v107 + v106) = v108;
          v110 = v108;

          if (!v110)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v111 = &v110[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText];
          *v111 = v98;
          v111[1] = v100;

          sub_1000581EC();

          v112 = *(v107 + v106);
          if (!v112)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v113 = &v112[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
          *v113 = v103;
          v113[1] = v105;

          v114 = v112;

          sub_1000581EC();

          v115 = *(v107 + v106);
          if (!v115)
          {
LABEL_53:
            __break(1u);
            goto LABEL_54;
          }

          v116 = &v115[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
          v117 = v126;
          *v116 = v128;
          *(v116 + 1) = v117;

          v118 = v115;

          sub_1000581EC();

          v119 = *(v107 + v106);
          if (!v119)
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v120 = (v119 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName);
          *v120 = 0xD000000000000010;
          v120[1] = 0x8000000100147060;

          v121 = *(v107 + v106);
          if (!v121)
          {
LABEL_55:
            __break(1u);
            return;
          }

          sub_100005EB8(v9, v7, &qword_1001BA7B0);
          v122 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
          swift_beginAccess();
          v123 = v121;
          sub_100067118(v7, v121 + v122, &qword_1001BA7B0);
          swift_endAccess();

          v107 = v127;
        }

        v124 = *(v107 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
        if (v124)
        {
          v125 = *(v107 + v106);
          if (v125)
          {
            sub_100127D64(v124, v125);

            sub_10001259C(v9, &qword_1001BA7B0);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_51;
      }

      goto LABEL_38;
    }

LABEL_25:
    v128 = a1;
    v55 = [objc_opt_self() mainBundle];
    v56 = String._bridgeToObjectiveC()();
    v57 = String._bridgeToObjectiveC()();
    v58 = sub_1001279D0(v55, v56, v57);

LABEL_26:
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v59;

    v38 = 0;
    v35 = 0;
    v37 = 0;
    goto LABEL_27;
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_10000D298(v71, qword_1001BAF20);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v129[0] = v75;
    *v74 = 136315138;
    v76 = [objc_opt_self() mainBundle];
    v77 = String._bridgeToObjectiveC()();
    v78 = String._bridgeToObjectiveC()();
    v79 = sub_1001279D0(v76, v77, v78);

    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;

    v83 = sub_10002065C(v80, v82, v129);

    *(v74 + 4) = v83;
    _os_log_impl(&_mh_execute_header, v72, v73, "%s", v74, 0xCu);
    sub_1000083B0(v75);
  }

  sub_1000515A0();
}

void sub_10004D354()
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

  v48[3] = 0xD00000000000006ELL;
  v48[4] = 0x8000000100146EA0;
  v43 = 0x8000000100146EA0;
  v48[0] = 1265;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7 = String.hashValue.getter();

  swift_beginAccess();
  v8 = sub_1000D991C(v48, v7);
  swift_endAccess();
  if (v8)
  {
    sub_100050C70(0xD00000000000001ALL, v49 | 0x8000000000000000, 0, 0xE000000000000000, "%s - started... %s");
  }

  v9 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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
    v48[0] = 0xD00000000000006ELL;
    v48[1] = v43;
    v44 = 1269;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20 = String.hashValue.getter();

    swift_beginAccess();
    v21 = sub_1000D991C(&v44, v20);
    swift_endAccess();
    if (v21)
    {
      sub_10004DA34("ensureUserMessageWritten - skipped");
    }

    swift_beginAccess();
    sub_1000DC818(0xD00000000000001ALL, v49 | 0x8000000000000000);
    swift_endAccess();

    return;
  }

  v40[1] = v1;
  v42 = *(*(v10 + 56) + 8 * v11);

  v13 = (v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager);
  swift_beginAccess();
  if (!*(v13[1] + 16) || (, sub_100032DCC(v42), v15 = v14, , (v15 & 1) == 0))
  {
    v16 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
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
    v25 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

    v44 = 0xD00000000000006ELL;
    v45 = v43;
    v46 = 1285;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v37 = String.hashValue.getter();

    swift_beginAccess();
    v38 = sub_1000D991C(&v46, v37);
    swift_endAccess();
    if (v38)
    {
      sub_100050C70(0xD00000000000001ALL, v35 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
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

void sub_10004DA34(const char *a1)
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
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_10004DB40()
{
  v1 = v0;
  v149 = type metadata accessor for String.Encoding();
  v2 = *(v149 - 8);
  __chkstk_darwin(v149);
  v4 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = "Expect discovered baaCert char";
  v6 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v136 = v6;
  sub_1000D99FC(&v155, 0xD00000000000001BLL, 0x80000001001472C0);
  swift_endAccess();

  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om);
  v157 = 0xD00000000000006ELL;
  v158 = 0x8000000100146EA0;
  v137 = 0x8000000100146EA0;
  v155 = 1290;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9 = String.hashValue.getter();

  swift_beginAccess();
  v138 = v7;
  LOBYTE(v6) = sub_1000D991C(&v155, v9);
  swift_endAccess();
  if (v6)
  {
    sub_100050C70(0xD00000000000001BLL, 0x80000001001472C0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v155 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
  v10 = v155;
  sub_100005DCC(&unk_1001BE1A0);
  Optional.unwrap(_:file:line:)();

  v11 = v157;
  v12 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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
  v60 = v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager;
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_10000D298(v67, qword_1001BAF20);
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
      v84 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
      v85 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

  v151 = 0xD00000000000006ELL;
  v152 = v137;
  v153 = 1324;
  v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v128);

  v129 = String.hashValue.getter();

  swift_beginAccess();
  v130 = sub_1000D991C(&v153, v129);
  swift_endAccess();
  v131 = v135;
  if (v130)
  {
    sub_100050C70(0xD00000000000001BLL, v5 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
  }

  sub_1000083FC(v141, v140);
  sub_1000083FC(v145, v144);
  sub_1000083FC(v143, v142);
}

void sub_10004EC50()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v68, 0xD000000000000014, 0x8000000100147260);
  swift_endAccess();

  v61 = 0xD00000000000006ELL;
  v62 = 0x8000000100146EA0;
  v68 = 1329;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v68, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000014, 0x8000000100147260, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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
  v12 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager);
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
  v61 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_session);
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
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000D298(v28, qword_1001BAF20);
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
  v42 = *(v39 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

    v61 = 0xD00000000000006ELL;
    v62 = 0x8000000100146EA0;
    v65 = 1348;
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    v55 = String.hashValue.getter();

    swift_beginAccess();
    v56 = sub_1000D991C(&v65, v55);
    swift_endAccess();
    if (v56)
    {
      sub_100050C70(0xD000000000000014, 0x8000000100147260, 0, 0xE000000000000000, "%s - done. %s");
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

void sub_10004F4F8()
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
  v11 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_inFlightOperations;
  swift_beginAccess();
  v78[1] = v11;
  sub_1000D99FC(v88, 0xD000000000000014, 0x8000000100147200);
  swift_endAccess();

  v12 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_om);
  v88[3] = 0xD00000000000006ELL;
  v88[4] = 0x8000000100146EA0;
  v79 = 0x8000000100146EA0;
  v88[0] = 1366;
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14 = String.hashValue.getter();

  swift_beginAccess();
  v80 = v12;
  LOBYTE(v11) = sub_1000D991C(v88, v14);
  swift_endAccess();
  if (v11)
  {
    sub_100050C70(0xD000000000000014, 0x8000000100147200, 0, 0xE000000000000000, "%s - started... %s");
  }

  v15 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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
  v22 = (v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager);
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
  if (qword_1001B9318 != -1)
  {
    v77 = v27;
    swift_once();
    v27 = v77;
  }

  v28 = v26 - v27;
  v29 = type metadata accessor for Logger();
  sub_10000D298(v29, qword_1001BAF20);
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

  v50 = *(v83 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

    v87[0] = 0xD00000000000006ELL;
    v87[1] = v79;
    v89 = 1386;
    v72._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v72);

    v73 = String.hashValue.getter();

    swift_beginAccess();
    v74 = sub_1000D991C(&v89, v73);
    swift_endAccess();
    if (v74)
    {
      sub_100050C70(0xD000000000000014, v10 | 0x8000000000000000, 0, 0xE000000000000000, "%s - done. %s");
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

void sub_10004FE78()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v27, 0xD00000000000001DLL, 0x80000001001471A0);
  swift_endAccess();

  v27[3] = 0xD00000000000006ELL;
  v27[4] = 0x8000000100146EA0;
  v27[0] = 1391;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v27, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD00000000000001DLL, 0x80000001001471A0, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  swift_beginAccess();
  if (!*(*(v1 + v5) + 16) || (, sub_100032E10(13), v7 = v6, , (v7 & 1) == 0))
  {
    sub_10005F408();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return;
  }

  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentSecondReadRequest) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sentSecondReadRequest) = 1;
    v8 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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

    v20 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph;
    v21 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
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

  v28 = 1402;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24 = String.hashValue.getter();

  swift_beginAccess();
  v25 = sub_1000D991C(&v28, v24);
  swift_endAccess();
  if (v25)
  {
    sub_100050C70(0xD00000000000001DLL, 0x80000001001471A0, 0, 0xE000000000000000, "%s - done. %s");
  }
}

void sub_100050338()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(v14, 0xD000000000000016, 0x8000000100147180);
  swift_endAccess();

  v14[3] = 0xD00000000000006ELL;
  v14[4] = 0x8000000100146EA0;
  v14[0] = 1407;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(v14, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000016, 0x8000000100147180, 0, 0xE000000000000000, "%s - started... %s");
  }

  v5 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_readValues;
  swift_beginAccess();
  if (*(*(v1 + v5) + 16) && (, sub_100032E10(11), v7 = v6, , (v7 & 1) != 0) && *(*(v1 + v5) + 16) && (, sub_100032E10(12), v9 = v8, , (v9 & 1) != 0))
  {
    swift_beginAccess();
    sub_1000DC818(0xD000000000000016, 0x8000000100147180);
    swift_endAccess();

    v14[0] = 0xD00000000000006ELL;
    v14[1] = 0x8000000100146EA0;
    v15 = 1412;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = String.hashValue.getter();

    swift_beginAccess();
    v12 = sub_1000D991C(&v15, v11);
    swift_endAccess();
    if (v12)
    {
      sub_100050C70(0xD000000000000016, 0x8000000100147180, 0, 0xE000000000000000, "%s - done. %s");
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

void sub_10005063C(char a1)
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

  v45 = 0xD00000000000006ELL;
  v46 = 0x8000000100146EA0;
  v44[0] = 1417;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10 = String.hashValue.getter();

  swift_beginAccess();
  v11 = sub_1000D991C(v44, v10);
  swift_endAccess();
  if (v11)
  {
    sub_100050C70(0xD00000000000001ELL, 0x80000001001477A0, v8, v7, "%s - started... %s");
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState + 8) == 1 && *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairState) == 4)
  {
    v12 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredChars;
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

    v22 = *(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_periph);
    if (v22)
    {
      v41 = v44[0];
      v23 = (v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_writeManager);
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

        v44[0] = 0xD00000000000006ELL;
        v44[1] = 0x8000000100146EA0;
        v47 = 1432;
        v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v37);

        v38 = String.hashValue.getter();

        swift_beginAccess();
        v39 = sub_1000D991C(&v47, v38);
        swift_endAccess();
        if (v39)
        {
          sub_100050C70(0xD00000000000001ELL, 0x80000001001477A0, 0, 0xE000000000000000, "%s - done. %s");
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
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000D298(v18, qword_1001BAF20);
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

void sub_100050C70(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, const char *a5)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000D298(v10, qword_1001BAF20);

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

void sub_100050E30(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
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

void sub_100050FE4()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "showDone", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_doneVC);
    v9 = v8;
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for B389DoneViewController()) initWithMainController:v1];
    v8 = 0;
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = v9;
  v10 = v9;
  v11 = v8;

  v12 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_mapViewController);
  v13 = *&v10[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController];
  *&v10[OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController] = v12;
  v14 = v12;

  v15 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
  if (!v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = *(v1 + v6);
  if (!v16)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_100127D64(v15, v16);
}

id sub_100051170()
{
  v1 = v0;
  v7 = 1505;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v7, v3);
  result = swift_endAccess();
  if (v4)
  {
    v6 = *&v1[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav];
    if (v6)
    {
      return [v1 presentViewController:v6 animated:1 completion:{0, 0xD00000000000006ELL, 0x8000000100146EA0}];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100051274()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000D99FC(&v9, 0xD000000000000016, 0x8000000100147760);
  swift_endAccess();

  v9 = 1512;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3 = String.hashValue.getter();

  swift_beginAccess();
  v4 = sub_1000D991C(&v9, v3);
  swift_endAccess();
  if (v4)
  {
    sub_100050C70(0xD000000000000016, 0x8000000100147760, 0, 0xE000000000000000, "%s - started... %s");
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsMulti))
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

    v9 = 1514;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7 = String.hashValue.getter();

    swift_beginAccess();
    v8 = sub_1000D991C(&v9, v7);
    swift_endAccess();
    if (v8)
    {
      sub_100050C70(0xD000000000000016, 0x8000000100147760, 0, 0xE000000000000000, "%s - done. %s");
    }
  }
}

unint64_t sub_10005150C()
{
  _StringGuts.grow(_:)(30);

  swift_getErrorValue();
  v0._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v0);

  return 0xD00000000000001CLL;
}

void sub_1000515A0()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "pairLocked", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC;
  v7 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_pairLockedVC);
    v9 = v8;
  }

  else
  {
    v9 = [objc_allocWithZone(type metadata accessor for B389PairLockedViewController()) initWithMainController:v1];
    v8 = 0;
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = v9;
  v10 = v9;
  v11 = v8;

  v12 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
  if (v12)
  {
    v13 = v12;
    sub_100127D64(v13, v10);

    *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_shownError) = 1;

    sub_100039158(0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10005171C()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  URL.init(string:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10003BFDC(5, v2, 0, 0, 1624);
  }

  return sub_10001259C(v2, &qword_1001BA7B0);
}

void sub_100051810()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismiss:5];
  }
}

void sub_100051870()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "startTapped", v5, 2u);
  }

  *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_didTapStart) = 1;
  v6 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_sessionError);
  if (v6)
  {
    swift_errorRetain();
    sub_1000477C8(v6);

    return;
  }

  v7 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC;
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_roleVC))
  {
    v8 = [objc_allocWithZone(type metadata accessor for B389RolePickerViewController()) initWithMainController:v1];
    v9 = *(v1 + v7);
    *(v1 + v7) = v8;
  }

  v10 = *(v1 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *(v1 + v7);
  if (!v11)
  {
LABEL_17:
    __break(1u);
    return;
  }

  sub_100127D64(v10, v11);

  sub_10003872C(v12);
}

void sub_100051A10()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_linkingVC);
  if (v1)
  {
    v13 = v1;
    v16.receiver = v13;
    v16.super_class = sub_100005DCC(&qword_1001BBB60);
    v15 = objc_msgSendSuper2(&v16, "contentViewController");
    type metadata accessor for B389LinkingViewController();
    v14 = swift_dynamicCastClassUnconditional();
    v2 = (v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_appleIDInfo);
    swift_beginAccess();
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v8 = (v14 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo);
    v10 = *(v14 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo);
    v9 = *(v14 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo + 8);
    v11 = *(v14 + OBJC_IVAR____TtC18SharingViewService25B389LinkingViewController_appleIDInfo + 16);
    *v8 = v3;
    v8[1] = v4;
    v8[2] = v5;
    v8[3] = v6;
    v8[4] = v7;
    sub_10005F8FC(v3, v4, v5);
    sub_10005F8FC(v3, v4, v5);
    sub_100016CBC(v10, v9, v11);
    sub_10001445C();
    sub_100016CBC(v3, v4, v5);

    v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_vcNav);
    if (v12)
    {
      sub_100127D64(v12, v13);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100051BC4()
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BAF20);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connection Timed Out", v3, 2u);
  }

  v4 = [objc_opt_self() mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_1001279D0(v4, v5, v6);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10004BB2C(v8, v10, 0, 0, 0, 0);
}

void sub_100051D80(void *a1)
{
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BAF20);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = [v3 state];

    _os_log_impl(&_mh_execute_header, v4, v5, "centralManagerDidUpdateState: %ld", v6, 0xCu);
  }

  else
  {

    v4 = v3;
  }

  sub_10003872C(v7);
}

void sub_1000521F4(void *a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredMainService;
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_discoveredMainService))
  {
    return;
  }

  v6 = [a1 services];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  sub_1000122EC(0, &unk_1001BE1F0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v3;
  v38 = v2;
  v39 = a1;
  v40 = a2;
  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_31:

    return;
  }

LABEL_30:
  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_6:
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
        goto LABEL_29;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_1000122EC(0, &qword_1001BA740);
    v14 = [v12 UUID];
    if (qword_1001B9250 != -1)
    {
      swift_once();
    }

    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    ++v10;
    if (v13 == v9)
    {
      goto LABEL_31;
    }
  }

  v16 = qword_1001B9318;
  v17 = v12;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BAF20);
  v19 = v39;
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = [v19 services];
    if (v23)
    {
      v24 = v23;
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v25 = 0;
    }

    v26 = sub_1000B9F5C(v25);
    v28 = v27;

    v29 = sub_10002065C(v26, v28, &v41);

    *(v22 + 4) = v29;
    *(v22 + 12) = 2080;
    if (v40)
    {
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0x8000000100145470;
      v30 = 0xD000000000000015;
    }

    v33 = sub_10002065C(v30, v32, &v41);

    *(v22 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v20, v21, "didDiscoverServices: %s, error? %s", v22, 0x16u);
    swift_arrayDestroy();
  }

  v34 = *(v38 + v37);
  *(v38 + v37) = v17;
  v35 = v17;

  sub_10003872C(v36);
}

void sub_1000527D0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v11, a5);
}

void sub_100052868(char a1)
{
  v2 = v1;
  v4 = sub_100005DCC(&qword_1001BA7B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v265[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v5);
  v281 = &v265[-v9];
  v10 = __chkstk_darwin(v8);
  v271 = &v265[-v11];
  v12 = __chkstk_darwin(v10);
  v273 = &v265[-v13];
  v14 = __chkstk_darwin(v12);
  v277 = &v265[-v15];
  __chkstk_darwin(v14);
  v17 = &v265[-v16];
  v282 = type metadata accessor for URL();
  v18 = *(v282 - 1);
  v19 = __chkstk_darwin(v282);
  v21 = &v265[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v19);
  v270 = &v265[-v23];
  v24 = __chkstk_darwin(v22);
  v272 = &v265[-v25];
  __chkstk_darwin(v24);
  v276 = &v265[-v26];
  v27 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v27);
  v29 = &v265[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = sub_100005DCC(&unk_1001BE180);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v265[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v35 = &v265[-v34];
  started = type metadata accessor for B389StartViewController();
  v284.receiver = v2;
  v284.super_class = started;
  objc_msgSendSuper2(&v284, "viewWillAppear:", a1 & 1);
  v283 = [v2 mainController];
  if (!v283)
  {
    if (qword_1001B9318 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000D298(v39, qword_1001BAF20);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Main controller not found", v42, 2u);
    }

    goto LABEL_83;
  }

  v279 = v18;
  v37 = v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp;
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp + 8) == 1)
  {
    v38 = mach_continuous_time();
  }

  else
  {
    v38 = *v37;
  }

  v268 = v7;
  v269 = v21;
  *v37 = v38;
  v37[8] = 0;
  v43 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"handleTapOutside"];
  [v43 setDelegate:v2];
  [v43 setNumberOfTapsRequired:1];
  [v43 setCancelsTouchesInView:0];
  v44 = [v2 view];
  if (!v44)
  {
    __break(1u);
    goto LABEL_94;
  }

  v45 = v44;
  v275 = v43;
  [v44 addGestureRecognizer:v43];

  v46 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  v47 = v283;
  swift_beginAccess();
  sub_100005EB8(&v47[v46], v35, &unk_1001BE180);
  v48 = type metadata accessor for B389PresentationConfig(0);
  v49 = *(*(v48 - 8) + 48);
  if (v49(v35, 1, v48) == 1)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  sub_100025418(&v35[*(v48 + 24)], v29, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v53 = *v29;
    sub_10005F788(v35, type metadata accessor for B389PresentationConfig);
    if ((v53 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10005F788(v29, type metadata accessor for B389PresentationConfig.Mode);
    sub_10005F788(v35, type metadata accessor for B389PresentationConfig);
    goto LABEL_18;
  }

  v51 = v29[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
  v52 = type metadata accessor for UUID();
  (*(*(v52 - 8) + 8))(v29, v52);
  sub_10005F788(v35, type metadata accessor for B389PresentationConfig);
  if (v51)
  {
LABEL_16:
    v54 = -50;
    v280 = 1;
    v55 = v282;
    goto LABEL_20;
  }

LABEL_18:
  sub_100005EB8(&v283[v46], v33, &unk_1001BE180);
  v56 = v49(v33, 1, v48);
  v55 = v282;
  if (v56 != 1)
  {
    v54 = *&v33[*(v48 + 44)];
    sub_10005F788(v33, type metadata accessor for B389PresentationConfig);
    v280 = 0;
LABEL_20:
    type metadata accessor for SDB389BubbleMonitor();
    swift_allocObject();
    v57 = sub_10001B6DC(v54);
    v58 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor;
    *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor) = v57;

    sub_1000122EC(0, &qword_1001BCE90);
    v59 = static OS_dispatch_queue.main.getter();
    swift_beginAccess();
    v60 = *(v57 + 24);
    *(v57 + 24) = v59;

    v61 = *(v2 + v58);
    if (v61)
    {
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v63 = *(v61 + 48);
      *(v61 + 48) = sub_100066AC0;
      *(v61 + 56) = v62;

      sub_100012050(v63);

      v64 = sub_1000A1F84(v2, 0, 390.0);
      v66 = v65;

      v67 = &selRef_applicationProxyForIdentifier_;
      v68 = [v2 containerView];
      [v68 setSwipeDismissible:1];

      [v2 setModalPresentationStyle:4];
      if (*(v2 + v58))
      {
        v274 = v17;

        sub_10001B75C(nullsub_4, 0);

        v69 = [objc_opt_self() sharedInstance];
        aBlock[0] = 0;
        v70 = [v69 setCategory:AVAudioSessionCategoryAmbient withOptions:1 error:aBlock];

        p_cache = SVSBaseMainController.cache;
        v72 = v279;
        v73 = v55;
        if (v70)
        {
          v74 = aBlock[0];
        }

        else
        {
          v75 = aBlock[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          if (qword_1001B9318 != -1)
          {
            swift_once();
          }

          v76 = type metadata accessor for Logger();
          sub_10000D298(v76, qword_1001BAF20);
          swift_errorRetain();
          v77 = Logger.logObject.getter();
          v78 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            aBlock[0] = v80;
            *v79 = 136315138;
            swift_getErrorValue();
            v81 = Error.localizedDescription.getter();
            v83 = sub_10002065C(v81, v82, aBlock);

            *(v79 + 4) = v83;
            v72 = v279;
            _os_log_impl(&_mh_execute_header, v77, v78, "setCategory failed: %s", v79, 0xCu);
            sub_1000083B0(v80);

            v73 = v282;
          }

          else
          {
          }

          p_cache = (SVSBaseMainController + 16);
        }

        v278 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle;
        v84 = *&v283[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_assetBundle];
        v85 = &unk_1001BB000;
        if (v84)
        {
          v86 = v84;
          v87 = String._bridgeToObjectiveC()();
          v88 = String._bridgeToObjectiveC()();
          v89 = [v86 URLForResource:v87 withExtension:v88];

          if (v89)
          {
            v90 = v277;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v91 = 0;
          }

          else
          {
            v91 = 1;
            v90 = v277;
          }

          v94 = v73;
          v92 = v72[7];
          (v92)(v90, v91, 1, v73);
          v95 = v274;
          sub_100066AC8(v90, v274, &qword_1001BA7B0);
          v96 = v72;
          v97 = v72[6];
          if (v97(v95, 1, v94) == 1)
          {
            v93 = v95;
LABEL_41:
            v72 = v96;
            v85 = &unk_1001BB000;
            p_cache = SVSBaseMainController.cache;
            goto LABEL_42;
          }

          v98 = v276;
          v274 = v96[4];
          (v274)(v276, v95, v94);
          v99 = *&v278[v283];
          if (!v99)
          {
            (v96[1])(v98, v94);
            v93 = v273;
            (v92)(v273, 1, 1, v94);
            v67 = &selRef_applicationProxyForIdentifier_;
            goto LABEL_41;
          }

          v277 = v92;
          v100 = v99;
          v101 = String._bridgeToObjectiveC()();
          v102 = String._bridgeToObjectiveC()();
          v103 = [v100 URLForResource:v101 withExtension:v102];

          if (v103)
          {
            v104 = v271;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v105 = 0;
            v106 = v276;
            v93 = v273;
          }

          else
          {
            v105 = 1;
            v106 = v276;
            v93 = v273;
            v104 = v271;
          }

          v94 = v282;
          (v277)(v104, v105, 1, v282);
          sub_100066AC8(v104, v93, &qword_1001BA7B0);
          if (v97(v93, 1, v94) != 1)
          {
            (v274)(v272, v93, v94);
            v235 = &swift_allocBox_ptr;
            v236 = objc_allocWithZone(AVURLAsset);
            URL._bridgeToObjectiveC()(v237);
            v239 = v238;
            v240 = [v236 initWithURL:v238 options:0];

            v241 = objc_allocWithZone(AVPlayerItem);
            v274 = v240;
            v242 = [v241 initWithAsset:v240];
            v72 = v279;
            if (qword_1001B9318 != -1)
            {
              swift_once();
            }

            v243 = type metadata accessor for Logger();
            sub_10000D298(v243, qword_1001BAF20);
            v244 = v270;
            (v72[2])(v270, v106, v94);
            v245 = v242;
            v246 = Logger.logObject.getter();
            v247 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v246, v247))
            {
              v248 = swift_slowAlloc();
              v267 = swift_slowAlloc();
              v271 = swift_slowAlloc();
              aBlock[0] = v271;
              *v248 = 136315394;
              sub_10005F638(&unk_1001BBB30, &type metadata accessor for URL);
              v266 = v247;
              v249 = dispatch thunk of CustomStringConvertible.description.getter();
              v251 = v250;
              v273 = v72[1];
              (v273)(v244, v94);
              v252 = sub_10002065C(v249, v251, aBlock);

              *(v248 + 4) = v252;
              *(v248 + 12) = 2112;
              *(v248 + 14) = v245;
              v253 = v267;
              *v267 = v245;
              v254 = v245;
              _os_log_impl(&_mh_execute_header, v246, v266, "engageURL: %s, engageAsset: %@", v248, 0x16u);
              sub_10001259C(v253, &unk_1001BBA60);

              sub_1000083B0(v271);

              v235 = &swift_allocBox_ptr;
            }

            else
            {

              v273 = v72[1];
              (v273)(v244, v94);
            }

            v255 = objc_allocWithZone(v235[183]);
            v256 = v272;
            URL._bridgeToObjectiveC()(&v286);
            v258 = v257;
            v259 = [v255 initWithURL:v257 options:0];

            v260 = [objc_allocWithZone(AVPlayerItem) initWithAsset:v259];
            v261 = objc_allocWithZone(type metadata accessor for SVSProxVideoView());
            v262 = v245;
            v263 = sub_10002678C(v245, v260, 2u);

            v264 = v273;
            (v273)(v256, v94);
            (v264)(v276, v94);
            v85 = &unk_1001BB000;
            v108 = *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player);
            *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player) = v263;
            v67 = &selRef_applicationProxyForIdentifier_;
            v111 = v281;
            p_cache = (SVSBaseMainController + 16);
            v92 = v277;
LABEL_47:

            v112 = *&v278[v283];
            if (v112)
            {
              v113 = [v112 URLForResource:SFDeviceAssetNameAdjustments withExtension:0];
              if (v113)
              {
                v114 = v268;
                v115 = v113;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v116 = 0;
              }

              else
              {
                v116 = 1;
                v114 = v268;
              }

              (v92)(v114, v116, 1, v94);
              sub_100066AC8(v114, v111, &qword_1001BA7B0);
              if ((v72[6])(v111, 1, v94) != 1)
              {
                (v72[4])(v269, v111, v94);
                URL._bridgeToObjectiveC()(v121);
                v123 = v122;
                v124 = SFAdjustmentFiltersForAssetTypeAndURL();

                sub_1000122EC(0, &qword_1001BBBB8);
                v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                v126 = *(v2 + v85[88]);
                if (v126)
                {
                  v127 = v126;
                  sub_10006D5A8(v125);

                  v128 = [*&v127[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView] layer];
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  [v128 setFilters:isa];
                }

                else
                {
                }

                (v72[1])(v269, v94);
LABEL_62:
                v130 = v85[88];
                v131 = *&v130[v2];
                if (v131)
                {
                  v132 = v131;
                  v133 = [v2 v67[66]];
                  v134 = sub_1000A72CC(v132, v133, 362.0);

                  v135 = *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint);
                  *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint) = v134;
                }

                v136 = [v2 v67[66]];
                v277 = *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bottomInfoLbl);
                [v136 addSubview:?];

                v137 = [v2 v67[66]];
                v138 = *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_topInfoLbl);
                [v137 addSubview:v138];

                v139 = [v2 v67[66]];
                sub_1000A81E4(v139);
                v141 = v140;
                v142 = [v141 bottomAnchor];
                v143 = [v139 bottomAnchor];
                if (qword_1001B9448 != -1)
                {
                  swift_once();
                }

                v144 = [v142 constraintEqualToAnchor:v143 constant:-*(&xmmword_1001BD608 + 1)];

                LODWORD(v145) = 1148846080;
                [v144 setPriority:v145];
                [v144 setActive:1];

                v146 = objc_opt_self();
                v147 = v141;
                v148 = [v146 grayColor];
                [v147 setTitleColor:v148 forState:2];

                v149 = *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn);
                v282 = v147;
                *(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn) = v147;

                SFIsGreenTeaDevice();
                v281 = v130;
                v278 = v146;
                v150 = String._bridgeToObjectiveC()();
                v151 = sub_100127AD0(v150);

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                v152 = v282;
                v276 = "continuePressed";
                [v282 addTarget:v2 action:? forControlEvents:?];
                v153 = String._bridgeToObjectiveC()();

                [v152 setTitle:v153 forState:0];

                [v152 setAlpha:0.0];
                v154 = objc_opt_self();
                v155 = [v154 mainBundle];
                v156 = String._bridgeToObjectiveC()();
                v157 = String._bridgeToObjectiveC()();
                v158 = sub_1001279D0(v155, v156, v157);

                if (!v158)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v158 = String._bridgeToObjectiveC()();
                }

                v279 = v158;
                v159 = [v2 containerView];
                v160.super.super.super.isa = setupTitleLabel(inContainerView:textAlignment:)(v159, NSTextAlignmentCenter).super.super.super.isa;

                v161 = v280;
                if (v280)
                {
                  v274 = v160.super.super.super.isa;
                  v162 = String._bridgeToObjectiveC()();
                  v163 = sub_100126B8C(v162);

                  if (!v163)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v163 = String._bridgeToObjectiveC()();
                  }

                  v272 = v154;
                  v164 = [v154 mainBundle];
                  v165 = String._bridgeToObjectiveC()();
                  v166 = sub_1001279D0(v164, v165, v163);

                  if (!v166)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v166 = String._bridgeToObjectiveC()();
                  }

                  v167 = v277;
                  [v277 setText:v166];

                  [v167 setTextAlignment:1];
                  v273 = objc_opt_self();
                  v168 = [(objc_class *)v273 systemFontOfSize:17.0 weight:UIFontWeightMedium];
                  [v167 setFont:v168];

                  [v167 setAlpha:0.0];
                  v169 = [v278 lightGrayColor];
                  [v167 setTextColor:v169];

                  [v167 setNumberOfLines:0];
                  [v167 setTranslatesAutoresizingMaskIntoConstraints:0];
                  v170 = [v2 containerView];
                  [v170 addSubview:v167];

                  v171 = [v167 leadingAnchor];
                  v172 = v282;
                  v173 = [v282 leadingAnchor];
                  v174 = [v171 constraintEqualToAnchor:v173];

                  [v174 setActive:1];
                  v175 = [v167 trailingAnchor];
                  v176 = [v172 trailingAnchor];
                  v177 = [v175 constraintEqualToAnchor:v176];

                  [v177 setActive:1];
                  v178 = [v167 topAnchor];
                  v179 = [v138 bottomAnchor];
                  v180 = [v178 constraintEqualToAnchor:v179 constant:5.0];

                  [v180 setActive:1];
                  v181 = [v272 mainBundle];
                  v182 = String._bridgeToObjectiveC()();
                  v183 = String._bridgeToObjectiveC()();
                  v184 = sub_1001279D0(v181, v182, v183);

                  if (!v184)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v184 = String._bridgeToObjectiveC()();
                  }

                  [v138 setText:v184];

                  [v138 setTextAlignment:1];
                  v185 = [(objc_class *)v273 systemFontOfSize:17.0 weight:UIFontWeightMedium];
                  [v138 setFont:v185];

                  [v138 setAlpha:0.0];
                  v186 = [v278 lightGrayColor];
                  [v138 setTextColor:v186];

                  [v138 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v138 setNumberOfLines:2];
                  v187 = [v2 containerView];
                  [v187 addSubview:v138];

                  v188 = [v138 topAnchor];
                  v189 = v274;
                  v190 = [(objc_class *)v274 bottomAnchor];
                  v191 = [v188 constraintEqualToAnchor:v190 constant:5.0];

                  [v191 setActive:1];
                  v192 = [v138 heightAnchor];
                  v193 = [v192 constraintEqualToConstant:20.0];

                  [v193 setActive:1];
                  v194 = [v138 widthAnchor];
                  v195 = [v2 containerView];
                  v196 = [v195 widthAnchor];

                  v197 = [v194 constraintEqualToAnchor:v196];
                  [v197 setActive:1];

                  v198 = [v138 centerXAnchor];
                  v199 = [v2 containerView];
                  v200 = [v199 centerXAnchor];

                  v201 = [v198 constraintEqualToAnchor:v200];
                  [v201 setActive:1];

                  v202 = v279;
                  [(objc_class *)v189 setText:v279];

                  [(objc_class *)v189 setAlpha:0.0];
                  v203 = [objc_allocWithZone(UIView) init];
                  [v203 setTranslatesAutoresizingMaskIntoConstraints:0];
                  [v203 setHidden:1];
                  v204 = [v2 containerView];
                  [v204 addSubview:v203];

                  v205 = [v203 topAnchor];
                  v206 = [v277 bottomAnchor];
                  v207 = [v205 constraintEqualToAnchor:v206];

                  [v207 setActive:1];
                  v208 = [v203 bottomAnchor];
                  v209 = v282;
                  v210 = [v282 topAnchor];

                  v211 = [v208 constraintEqualToAnchor:v210];
                  [v211 setActive:1];

                  v212 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint;
                  [*(v2 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint) setActive:0];
                  v213 = *&v281[v2];
                  if (v213)
                  {
                    v214 = [v213 centerYAnchor];
                    v215 = [v203 centerYAnchor];
                    v216 = [v214 constraintEqualToAnchor:v215];
                  }

                  else
                  {
                    v216 = 0;
                  }

                  v161 = v280;
                  v218 = &off_1001AD000;
                  v219 = *(v2 + v212);
                  *(v2 + v212) = v216;
                  v220 = v216;

                  [v220 setActive:1];
                  v221 = v282;
                  [v282 removeTarget:v2 action:v276 forControlEvents:64];
                  [v221 addTarget:v2 action:"transitionOutOfMulti" forControlEvents:64];
                  v160.super.super.super.isa = v274;
                }

                else
                {
                  v217 = v279;
                  [(objc_class *)v160.super.super.super.isa setText:v279];

                  [(objc_class *)v160.super.super.super.isa setAlpha:0.0];
                  v203 = v282;
                  v218 = &off_1001AD000;
                }

                v222 = swift_allocObject();
                *(v222 + 16) = v160;
                *(v222 + 24) = v161;
                v223 = v282;
                *(v222 + 32) = v2;
                *(v222 + 40) = v223;
                v224 = objc_opt_self();
                aBlock[4] = sub_100066B78;
                aBlock[5] = v222;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_10001C544;
                aBlock[3] = &unk_100191428;
                v225 = _Block_copy(aBlock);
                v226 = v223;
                v40 = v160.super.super.super.isa;
                v227 = v2;

                [v224 animateWithDuration:65538 delay:v225 options:0 animations:1.5 completion:0.7];
                _Block_release(v225);
                v228 = [v227 containerView];
                v229.super.super.super.super.isa = setupXButton(inContainerView:)(v228).super.super.super.super.isa;

                [v229.super.super.super.super.isa v218[70]];
                v230 = *&v281[v2];
                if (v230)
                {
                  v231 = *&v230[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView];
                  v232 = v230;
                  v233 = [v231 layer];
                  objc_opt_self();
                  v234 = [swift_dynamicCastObjCClassUnconditional() player];

                  [v234 play];

                  v40 = v232;
                }

                else
                {
                }

LABEL_83:

                return;
              }
            }

            else
            {
              (v92)(v111, 1, 1, v94);
            }

            sub_10001259C(v111, &qword_1001BA7B0);
            if (p_cache[99] != -1)
            {
              swift_once();
            }

            v117 = type metadata accessor for Logger();
            sub_10000D298(v117, qword_1001BAF20);
            v118 = Logger.logObject.getter();
            v119 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              *v120 = 0;
              _os_log_impl(&_mh_execute_header, v118, v119, "Could not find adjustment file", v120, 2u);
            }

            goto LABEL_62;
          }

          v72 = v279;
          (v279[1])(v106, v94);
          v67 = &selRef_applicationProxyForIdentifier_;
          v85 = &unk_1001BB000;
          p_cache = (SVSBaseMainController + 16);
          v92 = v277;
        }

        else
        {
          v92 = v72[7];
          v93 = v274;
          v94 = v73;
          (v92)(v274, 1, 1, v73);
        }

LABEL_42:
        sub_10001259C(v93, &qword_1001BA7B0);
        if (p_cache[99] != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_10000D298(v107, qword_1001BAF20);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v108, v109, "Could not find engage or loop movies", v110, 2u);
        }

        v111 = v281;
        goto LABEL_47;
      }

      goto LABEL_96;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  __break(1u);
}

void sub_100054EBC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v48 - v7;
  v58 = sub_100005DCC(&unk_1001BBBC0);
  __chkstk_darwin(v58);
  v9 = &v48 - v8;
  v57 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v57);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_100005DCC(&unk_1001BBAA0);
  v16 = __chkstk_darwin(v15 - 8);
  v56 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v48 - v19;
  __chkstk_darwin(v18);
  v22 = &v48 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v52 = a1;
    v53 = v6;
    v50 = *(v3 + 16);
    v51 = v3 + 16;
    v50(v22, a1, v2);
    v25 = *(v3 + 56);
    v25(v22, 0, 1, v2);
    v55 = v24;
    v26 = [v55 mainController];
    if (v26)
    {
      v27 = v26;
      v49 = v3;
      v28 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
      swift_beginAccess();
      sub_100005EB8(v27 + v28, v14, &unk_1001BE180);
      v29 = type metadata accessor for B389PresentationConfig(0);
      if ((*(*(v29 - 8) + 48))(v14, 1, v29) == 1)
      {
        __break(1u);
        return;
      }

      sub_100025418(&v14[*(v29 + 24)], v11, type metadata accessor for B389PresentationConfig.Mode);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = v49;
        (*(v49 + 32))(v20, v11, v2);
        v25(v20, 0, 1, v2);
      }

      else
      {
        v25(v20, 1, 1, v2);
        sub_10005F788(v11, type metadata accessor for B389PresentationConfig.Mode);
        v3 = v49;
      }

      sub_10005F788(v14, type metadata accessor for B389PresentationConfig);
    }

    else
    {
      v25(v20, 1, 1, v2);
    }

    v30 = *(v58 + 48);
    sub_100005EB8(v22, v9, &unk_1001BBAA0);
    sub_100005EB8(v20, &v9[v30], &unk_1001BBAA0);
    v31 = *(v3 + 48);
    if (v31(v9, 1, v2) == 1)
    {
      sub_10001259C(v20, &unk_1001BBAA0);
      sub_10001259C(v22, &unk_1001BBAA0);
      if (v31(&v9[v30], 1, v2) == 1)
      {
        sub_10001259C(v9, &unk_1001BBAA0);
        v32 = v55;
LABEL_16:
        if (qword_1001B9318 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_10000D298(v38, qword_1001BAF20);
        v39 = v53;
        v50(v53, v52, v2);
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v59 = v43;
          *v42 = 136315138;
          sub_10005F638(&qword_1001BBAB0, &type metadata accessor for UUID);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          (*(v3 + 8))(v39, v2);
          v47 = sub_10002065C(v44, v46, &v59);

          *(v42 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v40, v41, "Lost %s", v42, 0xCu);
          sub_1000083B0(v43);
        }

        else
        {

          (*(v3 + 8))(v39, v2);
        }

        v34 = [v32 mainController];

        if (!v34)
        {
          goto LABEL_24;
        }

        [v34 dismiss:7];
LABEL_23:

LABEL_24:
        return;
      }
    }

    else
    {
      v33 = v56;
      sub_100005EB8(v9, v56, &unk_1001BBAA0);
      if (v31(&v9[v30], 1, v2) != 1)
      {
        v35 = &v9[v30];
        v36 = v54;
        (*(v3 + 32))(v54, v35, v2);
        sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
        LODWORD(v58) = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = *(v3 + 8);
        v37(v36, v2);
        sub_10001259C(v20, &unk_1001BBAA0);
        sub_10001259C(v22, &unk_1001BBAA0);
        v37(v33, v2);
        sub_10001259C(v9, &unk_1001BBAA0);
        v32 = v55;
        v34 = v55;
        if ((v58 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }

      sub_10001259C(v20, &unk_1001BBAA0);
      sub_10001259C(v22, &unk_1001BBAA0);
      (*(v3 + 8))(v33, v2);
    }

    sub_10001259C(v9, &unk_1001BBBC0);
    v32 = v55;
    v34 = v55;
    goto LABEL_23;
  }
}

id sub_100055784(void *a1, char a2, uint64_t a3, void *a4)
{
  [a1 setAlpha:1.0];
  if (a2)
  {
    [*(a3 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_topInfoLbl) setAlpha:1.0];
    [a4 setAlpha:1.0];
    a4 = *(a3 + OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bottomInfoLbl);
  }

  return [a4 setAlpha:1.0];
}

id sub_10005586C(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for B389StartViewController();
  v17.receiver = v1;
  v17.super_class = started;
  result = objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  v9 = &v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp];
  if ((v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp + 8] & 1) == 0)
  {
    v10 = *v9;
    result = b389_log();
    if (result)
    {
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      result = b389_log();
      if (result)
      {
        v11 = result;
        sub_100005DCC(&unk_1001BBB70);
        v12 = swift_allocObject();
        v16 = xmmword_10016CCE0;
        *(v12 + 16) = xmmword_10016CCE0;
        *(v12 + 56) = &type metadata for UInt64;
        *(v12 + 64) = &protocol witness table for UInt64;
        *(v12 + 32) = v10;
        os_signpost(_:dso:log:name:signpostID:_:_:)();

        static os_signpost_type_t.end.getter();
        result = b389_log();
        if (result)
        {
          v13 = result;
          v14 = swift_allocObject();
          *(v14 + 16) = v16;
          v15 = mach_continuous_time();
          *(v14 + 56) = &type metadata for UInt64;
          *(v14 + 64) = &protocol witness table for UInt64;
          *(v14 + 32) = v15;
          os_signpost(_:dso:log:name:signpostID:_:_:)();

          result = (*(v4 + 8))(v6, v3);
          *v9 = 0;
          v9[8] = 1;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_100055B60()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for DispatchQoS();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchTime();
  v48 = *(v55 - 8);
  v5 = __chkstk_darwin(v55);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  v10 = type metadata accessor for B389PresentationConfig.Mode(0);
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = [v0 mainController];
  aBlock[6] = v16;
  sub_100005DCC(&qword_1001BBBA8);
  Optional.unwrap(_:file:line:)();

  v17 = aBlock[0];
  v18 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  swift_beginAccess();
  sub_100005EB8(v17 + v18, v15, &unk_1001BE180);
  v19 = type metadata accessor for B389PresentationConfig(0);
  if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
  {
    __break(1u);
    return;
  }

  sub_100025418(&v15[*(v19 + 24)], v12, type metadata accessor for B389PresentationConfig.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v12[*(sub_100005DCC(&unk_1001BA6E0) + 48)];
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v12, v22);
      sub_10005F788(v15, type metadata accessor for B389PresentationConfig);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_7;
    }

    sub_10005F788(v12, type metadata accessor for B389PresentationConfig.Mode);
    sub_10005F788(v15, type metadata accessor for B389PresentationConfig);
LABEL_12:

    return;
  }

  v23 = *v12;
  sub_10005F788(v15, type metadata accessor for B389PresentationConfig);
  if (v23 != 1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v24 = [v1 containerView];
  v25 = [v24 layer];

  [v25 removeAllAnimations];
  v26 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint;
  v27 = *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint];
  if (v27)
  {
    [v27 setActive:0];
  }

  v28 = *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player];
  if (v28)
  {
    v29 = [v28 centerYAnchor];
    v30 = [v1 containerView];
    v31 = [v30 centerYAnchor];

    v32 = [v29 constraintEqualToAnchor:v31];
  }

  else
  {
    v32 = 0;
  }

  v33 = *&v1[v26];
  *&v1[v26] = v32;
  v34 = v32;

  if (v32)
  {
    [v34 setActive:1];
  }

  v35 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn;
  v36 = *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn];
  if (v36)
  {
    [v36 removeTarget:v1 action:"continuePressed" forControlEvents:64];
    v37 = *&v1[v35];
    if (v37)
    {
      [v37 addTarget:v1 action:"continuePressed" forControlEvents:64];
    }
  }

  sub_1000573D4();
  sub_1000122EC(0, &qword_1001BCE90);
  v47 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v38 = v9;
  + infix(_:_:)();
  v48 = *(v48 + 8);
  (v48)(v7, v55);
  v39 = swift_allocObject();
  *(v39 + 16) = v1;
  *(v39 + 24) = v17;
  aBlock[4] = sub_100066A54;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  aBlock[3] = &unk_1001913B0;
  v40 = _Block_copy(aBlock);
  v41 = v1;
  v42 = v17;

  v43 = v49;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005F638(&qword_1001BA7C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005DCC(&unk_1001BBA90);
  sub_100025698(&qword_1001BA7D0, &unk_1001BBA90);
  v44 = v51;
  v45 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v46 = v47;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v40);

  (*(v53 + 8))(v44, v45);
  (*(v50 + 8))(v43, v52);
  (v48)(v38, v55);
}

void sub_1000563A4(char *a1, uint64_t a2)
{
  v106 = a2;
  v96 = type metadata accessor for B389PresentationConfig.Mode(0);
  v3 = __chkstk_darwin(v96);
  v92 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v90 - v5;
  v7 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v7 - 8);
  v9 = &v90 - v8;
  v10 = sub_100005DCC(&unk_1001BBAA0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v90 - v15;
  __chkstk_darwin(v14);
  v18 = &v90 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v94 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v102 = &v90 - v23;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v95 = v13;
  v93 = v6;
  v24 = type metadata accessor for Logger();
  v104 = sub_10000D298(v24, qword_1001BAF20);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Done waiting for multi scan", v27, 2u);
  }

  v101 = v9;
  v105 = v19;

  v28 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor;
  v29 = *&a1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor];
  if (!v29)
  {
    goto LABEL_52;
  }

  swift_beginAccess();
  v30 = *(v29 + 80);
  v31 = *(v30 + 16);
  if (v31)
  {
    v97 = v28;
    v98 = a1;
    v99 = v16;
    v100 = v18;
    v103 = v20;
    v32 = sub_1000205D4(v31, 0);
    v33 = sub_100022BD4(v108, v32 + 4, v31, v30);
    v18 = v108[0];
    v20 = v108[2];
    v16 = v108[3];
    swift_bridgeObjectRetain_n();

    sub_100024148();
    if (v33 != v31)
    {
      __break(1u);
      goto LABEL_50;
    }

    v20 = v103;
    v16 = v99;
    v18 = v100;
    a1 = v98;
    v28 = v97;
  }

  else
  {

    v32 = _swiftEmptyArrayStorage;
  }

  v108[0] = v32;
  sub_1000218B4(v108);
  v34 = sub_10001B4CC(v108[0]);

  if (*&a1[v28])
  {

    sub_10001C248();
  }

  v30 = v105;
  if (!(v34 >> 62))
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

LABEL_45:

    v44 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v44, v88, "No more B389s in range...", v89, 2u);
    }

    goto LABEL_47;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_45;
  }

LABEL_14:
  if ((v34 & 0xC000000000000001) == 0)
  {
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_50:
  v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
  v36 = v35;
  v37 = [v35 bleDevice];
  if (!v37)
  {

    (*(v20 + 56))(v18, 1, 1, v30);
LABEL_24:
    sub_10001259C(v18, &unk_1001BBAA0);
    v43 = v36;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412546;
      v48 = [v43 bleDevice];
      *(v46 + 4) = v48;
      *(v46 + 12) = 2112;
      *(v46 + 14) = v43;
      *v47 = v48;
      v47[1] = v43;
      v49 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "No identifier for ble device %@ on %@", v46, 0x16u);
      sub_100005DCC(&unk_1001BBA60);
      swift_arrayDestroy();

      v43 = v44;
      v44 = v49;
    }

LABEL_47:
    goto LABEL_48;
  }

  v38 = v37;
  v39 = [v37 identifier];

  if (v39)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = *(v20 + 56);
  v41(v16, v40, 1, v30);
  sub_100066AC8(v16, v18, &unk_1001BBAA0);
  v42 = *(v20 + 48);
  if (v42(v18, 1, v30) == 1)
  {

    goto LABEL_24;
  }

  v103 = v20;
  v100 = *(v20 + 32);
  (v100)(v102, v18, v30);
  v50 = v106 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
  swift_beginAccess();
  v99 = v50;
  v51 = v101;
  sub_100005EB8(v50, v101, &unk_1001BE180);
  v52 = type metadata accessor for B389PresentationConfig(0);
  v53 = *(v52 - 8);
  v98 = *(v53 + 48);
  v97 = v53 + 48;
  if ((v98)(v51, 1, v52) == 1)
  {
    goto LABEL_53;
  }

  v91 = v52;
  v54 = v51 + *(v52 + 24);
  v55 = v93;
  sub_100025418(v54, v93, type metadata accessor for B389PresentationConfig.Mode);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v95;
    (v100)(v95, v55, v30);
    v41(v56, 0, 1, v30);
  }

  else
  {
    v56 = v95;
    v41(v95, 1, 1, v30);
    sub_10005F788(v55, type metadata accessor for B389PresentationConfig.Mode);
  }

  if (v42(v56, 1, v30) == 1)
  {

    sub_10001259C(v56, &unk_1001BBAA0);
    sub_10005F788(v101, type metadata accessor for B389PresentationConfig);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v57, v58, "No btUUID", v59, 2u);

      v60 = v36;
    }

    else
    {
      v60 = v57;
      v57 = v36;
    }

    v87 = v102;
    v86 = v103;

    v85 = (*(v86 + 8))(v87, v30);
    goto LABEL_48;
  }

  (v100)(v94, v56, v30);
  sub_10005F788(v101, type metadata accessor for B389PresentationConfig);
  sub_10005F638(&qword_1001BE220, &type metadata accessor for UUID);
  v61 = v102;
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = v36;

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v107[0] = v68;
    *v66 = 138412802;
    *(v66 + 4) = v63;
    *v67 = v63;
    *(v66 + 12) = 1024;
    *(v66 + 14) = (v62 & 1) == 0;
    *(v66 + 18) = 2080;
    sub_1000122EC(0, &qword_1001BBBB0);
    v69 = v63;
    v70 = Array.description.getter();
    v72 = sub_10002065C(v70, v71, v107);

    *(v66 + 20) = v72;
    _os_log_impl(&_mh_execute_header, v64, v65, "Closest B389 is %@. isDifferent: %{BOOL}d.\nall: %s", v66, 0x1Cu);
    sub_10001259C(v67, &unk_1001BBA60);
    v30 = v105;

    sub_1000083B0(v68);
    v61 = v102;
  }

  v73 = v103;
  if (v62)
  {
    goto LABEL_41;
  }

  v63 = v63;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412290;
    *(v76 + 4) = v63;
    *v77 = v63;
    v78 = v63;
    _os_log_impl(&_mh_execute_header, v74, v75, "Setting different tag for multi: %@", v76, 0xCu);
    sub_10001259C(v77, &unk_1001BBA60);
  }

  v79 = *(sub_100005DCC(&unk_1001BA6E0) + 48);
  v80 = v92;
  (*(v73 + 16))(v92, v61, v30);
  v80[v79] = 1;
  v81 = v80;
  swift_storeEnumTagMultiPayload();
  v82 = v99;
  swift_beginAccess();
  v83 = v91;
  if ((v98)(v82, 1, v91) != 1)
  {
    sub_100066A5C(v81, &v82[*(v83 + 24)]);
    swift_endAccess();
LABEL_41:

    v84 = *(v73 + 8);
    v84(v94, v30);
    v85 = (v84)(v61, v30);
LABEL_48:
    *(v106 + OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_needsMulti) = 0;
    sub_10003872C(v85);
    return;
  }

LABEL_54:
  __break(1u);

  __break(1u);
}

void sub_1000571A8(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for B389StartViewController();
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor])
  {

    sub_10001C248();

    v4 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player;
    v5 = *&v2[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player];
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView];
      v7 = v5;
      v8 = [v6 layer];
      objc_opt_self();
      v9 = [swift_dynamicCastObjCClassUnconditional() player];

      [v9 pause];
      v10 = [v6 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setPlayer:0];

      [v7 removeFromSuperview];
      v5 = *&v2[v4];
    }

    *&v2[v4] = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000573D4()
{
  v1 = v0;
  v2 = sub_100005DCC(&unk_1001BE180);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  if (qword_1001B9258 != -1)
  {
    swift_once();
  }

  v5 = qword_1001C3830;
  v6 = String._bridgeToObjectiveC()();
  LOBYTE(v5) = [v5 BOOLForKey:v6];

  if ((v5 & 1) == 0)
  {
    v7 = [v1 mainController];
    if (!v7)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = v7;
    v9 = OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_presentationConfig;
    swift_beginAccess();
    sub_100005EB8(v8 + v9, v4, &unk_1001BE180);
    v10 = type metadata accessor for B389PresentationConfig(0);
    if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v11 = v4[*(v10 + 40)];
    sub_10005F788(v4, type metadata accessor for B389PresentationConfig);
    if (v11 == 1)
    {
      sub_100057974();
      return;
    }
  }

  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000D298(v12, qword_1001BAF20);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "continuePressed", v15, 2u);
  }

  v16 = [v1 mainController];
  if (v16)
  {
    v17 = v16;
    sub_10003E520(1);
  }

  v18 = [v1 mainController];
  if (!v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18;
  sub_100051870();

  v20 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player;
  v21 = *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player];
  if (v21)
  {
    v22 = *&v21[OBJC_IVAR____TtC18SharingViewService16SVSProxVideoView_movieView];
    v23 = v21;
    v24 = [v22 layer];
    objc_opt_self();
    v25 = [swift_dynamicCastObjCClassUnconditional() player];

    [v25 pause];
    v26 = [v22 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setPlayer:0];

    [v23 removeFromSuperview];
    v21 = *&v1[v20];
  }

  *&v1[v20] = 0;
}

void sub_100057800()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "user tapped outside", v5, 2u);
  }

  v6 = [v1 mainController];
  if (v6)
  {
    v7 = v6;
    [v6 dismiss:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100057974()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_1001279D0(v2, v3, v4);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = [v1 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_1001279D0(v6, v7, v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  v13 = [v1 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = sub_1001279D0(v13, v14, v15);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  v18 = v0;
  v19 = String._bridgeToObjectiveC()();

  v22[4] = sub_100066A0C;
  v22[5] = v17;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10001BE90;
  v22[3] = &unk_100191360;
  v20 = _Block_copy(v22);

  v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
  _Block_release(v20);

  [v12 addAction:v21];
  [v12 setPreferredAction:v21];
  [v18 presentViewController:v12 animated:1 completion:0];
}

void sub_100057D14(int a1, id a2)
{
  v2 = [a2 mainController];
  if (v2)
  {
    v3 = v2;
    [v2 dismiss:5];
  }

  else
  {
    __break(1u);
  }
}

id sub_100057DB0(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_pairPressed_] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint] = 0;
  v6 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_topInfoLbl;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bottomInfoLbl;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  *&v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor] = 0;
  v8 = &v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v3[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bypassBatteryTooLowCheck];
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x8000000100147C60;
  if (a2)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for B389StartViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", v10, a3);

  return v11;
}

id sub_100057F20(void *a1)
{
  v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_pairPressed_] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_player] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_mainBtn] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_playerYConstraint] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_topInfoLbl;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bottomInfoLbl;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  *&v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bubbleMonitor] = 0;
  v5 = &v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_viewWillAppearTimestamp];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService23B389StartViewController_bypassBatteryTooLowCheck];
  *v6 = 0xD00000000000001CLL;
  v6[1] = 0x8000000100147C60;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for B389StartViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10005808C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1000581EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn);
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText + 8))
    {
      v2 = v1;

      v3 = String._bridgeToObjectiveC()();
    }

    else
    {
      v2 = v1;
      v3 = 0;
    }

    [v2 setTitle:v3 forState:0];
  }

  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText + 8))
    {
      v5 = v4;

      v6 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = v4;
      v6 = 0;
    }

    [v5 setText:v6];
  }

  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_msgLbl);
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText + 8))
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];
}

void sub_10005838C(char a1)
{
  v63.receiver = v1;
  v63.super_class = type metadata accessor for B389AppleIDViewController(0);
  objc_msgSendSuper2(&v63, "viewWillAppear:", a1 & 1);
  v3 = sub_1000A1F84(v1, 0, 390.0);
  v5 = v4;

  v6 = [v1 containerView];
  [v6 setSwipeDismissible:0];

  [v1 setModalPresentationStyle:4];
  v7 = [v1 containerView];
  sub_1000A81E4(v7);
  v9 = v8;
  v10 = [v9 bottomAnchor];
  v11 = [v7 bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v12 = [v10 constraintEqualToAnchor:v11 constant:-*(&xmmword_1001BD608 + 1)];

  LODWORD(v13) = 1148846080;
  [v12 setPriority:v13];
  [v12 setActive:1];

  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn];
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn] = v9;
  v15 = v9;

  v16 = objc_opt_self();
  v17 = [v16 labelColor];
  [v15 setTitleColor:v17 forState:0];

  [v15 addTarget:v1 action:"openSettingsPressed" forControlEvents:64];
  v18 = [v1 containerView];
  isa = setupTitleLabel(inContainerView:textAlignment:)(v18, NSTextAlignmentCenter).super.super.super.isa;

  [(objc_class *)isa setNumberOfLines:2];
  v20 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl];
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl] = isa;
  v62 = isa;

  v21 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_msgLbl];
  v22 = [objc_opt_self() defaultFontDescriptorWithTextStyle:UIFontTextStyleSubhead addingSymbolicTraits:0x8000 options:0];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];

    [v21 setFont:v24];
    v25 = [v16 blackColor];
    [v21 setTextColor:v25];

    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v21 setTextAlignment:1];
    [v21 setNumberOfLines:5];
    v26 = [v1 containerView];
    [v26 addSubview:v21];

    v27 = *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_lockImageView];

    v28 = String._bridgeToObjectiveC()();

    v29 = [objc_opt_self() imageNamed:v28];

    if (v29)
    {
      v30 = [objc_opt_self() mainScreen];
      [v30 scale];
      v32 = v31;

      v33 = [v29 _applicationIconImageForFormat:2 precomposed:0 scale:v32];
    }

    else
    {
      v33 = 0;
    }

    [v27 setImage:v33];

    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v1 containerView];
    [v34 addSubview:v27];

    v35 = [v15 topAnchor];
    v36 = [v21 bottomAnchor];
    v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36 constant:16.0];

    [v37 setActive:1];
    v38 = [v21 firstBaselineAnchor];
    v39 = [v27 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:32.0];

    [v40 setActive:1];
    v41 = [v21 leadingAnchor];
    v42 = [v1 containerView];
    v43 = [v42 leadingAnchor];

    v44 = [v41 constraintEqualToAnchor:v43 constant:36.0];
    [v44 setActive:1];

    v45 = [v21 trailingAnchor];
    v46 = [v1 containerView];
    v47 = [v46 trailingAnchor];

    v48 = [v45 constraintEqualToAnchor:v47 constant:-36.0];
    [v48 setActive:1];

    v49 = [v27 centerXAnchor];
    v50 = [v1 containerView];
    v51 = [v50 centerXAnchor];

    v52 = [v49 constraintEqualToAnchor:v51];
    [v52 setActive:1];

    v53 = [v27 widthAnchor];
    v54 = [v53 constraintEqualToConstant:76.0];

    [v54 setActive:1];
    v55 = [v27 heightAnchor];
    v56 = [v55 constraintEqualToConstant:76.0];

    [v56 setActive:1];
    v57 = [v27 topAnchor];
    v58 = [(objc_class *)v62 bottomAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:18.0];

    [v59 setActive:1];
    v60 = [v1 containerView];
    v61 = setupXButton(inContainerView:)(v60).super.super.super.super.isa;

    [(objc_class *)v61 addTarget:v1 action:"dismissPressed" forControlEvents:64];
    sub_1000581EC();
  }

  else
  {
    __break(1u);
  }
}

id sub_100058D14()
{
  v1 = v0;
  v2 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  if (qword_1001B9318 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BAF20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = 2387;
    _os_log_impl(&_mh_execute_header, v6, v7, "openSettingsPressed in %ld", v8, 0xCu);
  }

  result = [v1 mainController];
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
    swift_beginAccess();
    sub_100005EB8(v1 + v11, v4, &qword_1001BA7B0);
    sub_10003BFDC(0, v4, 0, 0, 2390);

    return sub_10001259C(v4, &qword_1001BA7B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100058FBC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  v9 = &v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_body];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn] = 0;
  *&v3[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl] = 0;
  v13 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_msgLbl;
  *&v3[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_lockImageView;
  *&v3[v14] = [objc_allocWithZone(UIImageView) init];
  if (a2)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  v18.receiver = v3;
  v18.super_class = type metadata accessor for B389AppleIDViewController(0);
  v16 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", v15, a3);

  return v16;
}

id sub_100059160(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_imageName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_onDoneURL;
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v6 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_body];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_buttonText];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleText];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_bodyText];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_btn] = 0;
  *&v1[OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_titleLbl] = 0;
  v10 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_msgLbl;
  *&v1[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC18SharingViewService25B389AppleIDViewController_lockImageView;
  *&v1[v11] = [objc_allocWithZone(UIImageView) init];
  v14.receiver = v1;
  v14.super_class = type metadata accessor for B389AppleIDViewController(0);
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_10005941C()
{
  sub_1000594F8(319, &qword_1001BB578, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000594F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_10005954C(char a1)
{
  v70.receiver = v1;
  v70.super_class = type metadata accessor for B389HSA2ViewController();
  objc_msgSendSuper2(&v70, "viewWillAppear:", a1 & 1);
  v3 = sub_1000A1F84(v1, 0, 390.0);
  v5 = v4;

  v6 = [v1 containerView];
  [v6 setSwipeDismissible:0];

  [v1 setModalPresentationStyle:4];
  v7 = [v1 containerView];
  sub_1000A81E4(v7);
  v9 = v8;
  v10 = [v9 bottomAnchor];
  v11 = [v7 bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v12 = [v10 constraintEqualToAnchor:v11 constant:-*(&xmmword_1001BD608 + 1)];

  LODWORD(v13) = 1148846080;
  [v12 setPriority:v13];
  [v12 setActive:1];

  v14 = *&v1[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_btn];
  *&v1[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_btn] = v9;
  v15 = v9;

  v68 = objc_opt_self();
  v16 = [v68 labelColor];
  [v15 setTitleColor:v16 forState:0];

  [v15 addTarget:v1 action:"updateSettingsPressed" forControlEvents:64];
  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100127AD0(v17);

  if (!v18)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = String._bridgeToObjectiveC()();
  }

  v69 = v15;
  [v15 setTitle:v18 forState:0];

  v19 = [v1 containerView];
  v20.super.super.super.isa = setupTitleLabel(inContainerView:textAlignment:)(v19, NSTextAlignmentCenter).super.super.super.isa;

  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = String._bridgeToObjectiveC()();
  v24 = String._bridgeToObjectiveC()();
  v25 = sub_1001279D0(v22, v23, v24);

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v20.super.super.super.isa setText:v25];

  [(objc_class *)v20.super.super.super.isa setNumberOfLines:2];
  v26 = *&v1[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_msgLbl];
  v27 = [v21 mainBundle];
  v28 = String._bridgeToObjectiveC()();
  v29 = String._bridgeToObjectiveC()();
  v30 = sub_1001279D0(v27, v28, v29);

  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v26 setText:v30];

  v31 = [v68 blackColor];
  [v26 setTextColor:v31];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setTextAlignment:1];
  [v26 setNumberOfLines:5];
  [v26 setAdjustsFontSizeToFitWidth:1];
  [v26 setMinimumScaleFactor:0.3];
  v32 = [v1 containerView];
  [v32 addSubview:v26];

  v33 = *&v1[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_lockImageView];
  v34 = String._bridgeToObjectiveC()();
  v35 = [objc_opt_self() imageNamed:v34];

  if (v35)
  {
    v36 = [objc_opt_self() mainScreen];
    [v36 scale];
    v38 = v37;

    v39 = [v35 _applicationIconImageForFormat:2 precomposed:1 scale:v38];
  }

  else
  {
    v39 = 0;
  }

  [v33 setImage:v39];

  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v1 containerView];
  [v40 addSubview:v33];

  v41 = [v69 topAnchor];
  v42 = [v26 bottomAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:16.0];

  [v43 setActive:1];
  v44 = [v26 firstBaselineAnchor];
  v45 = [v33 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:32.0];

  [v46 setActive:1];
  v47 = [v26 leadingAnchor];
  v48 = [v1 containerView];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:36.0];
  [v50 setActive:1];

  v51 = [v26 trailingAnchor];
  v52 = [v1 containerView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53 constant:-36.0];
  [v54 setActive:1];

  v55 = [v33 centerXAnchor];
  v56 = [v1 containerView];
  v57 = [v56 centerXAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  [v58 setActive:1];

  v59 = [v33 widthAnchor];
  v60 = [v59 constraintEqualToConstant:76.0];

  [v60 setActive:1];
  v61 = [v33 heightAnchor];
  v62 = [v61 constraintEqualToConstant:76.0];

  [v62 setActive:1];
  v63 = [v33 topAnchor];
  v64 = [(objc_class *)v20.super.super.super.isa bottomAnchor];
  v65 = [v63 constraintEqualToAnchor:v64 constant:18.0];

  [v65 setActive:1];
  v66 = [v1 containerView];
  isa = setupXButton(inContainerView:)(v66).super.super.super.super.isa;

  [(objc_class *)isa addTarget:v1 action:"dismissPressed" forControlEvents:64];
}

id sub_10005A024()
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
    *v5 = 134217984;
    *(v5 + 4) = 2457;
    _os_log_impl(&_mh_execute_header, v3, v4, "updateSettingsPressed in %ld", v5, 0xCu);
  }

  result = [v1 mainController];
  if (result)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = v7;
    sub_100060030(v1, sub_1000669DC, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005A190()
{
  v0 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v0);
  v2 = &v8 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  Optional.unwrap(_:file:line:)();
  sub_10001259C(v2, &qword_1001BA7B0);
  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_10003BFDC(0, v2, 0, 0, 2465);
  sub_10001259C(v2, &qword_1001BA7B0);
  return (*(v4 + 8))(v6, v3);
}

void sub_10005A3E4(uint64_t a1)
{
  v3 = v1;
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
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "dismissPressed in %ld", v7, 0xCu);
  }

  v8 = [v3 mainController];
  if (v8)
  {
    v9 = v8;
    [v8 dismiss:5];
  }

  else
  {
    __break(1u);
  }
}

id sub_10005A634(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_btn] = 0;
  v6 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_msgLbl;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_lockImageView;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for B389HSA2ViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10005A730(void *a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_btn] = 0;
  v3 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_msgLbl;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC18SharingViewService22B389HSA2ViewController_lockImageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for B389HSA2ViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_10005A8A8(char a1)
{
  v2 = v1;
  v95.receiver = v2;
  v95.super_class = type metadata accessor for B389PairLockedViewController();
  objc_msgSendSuper2(&v95, "viewWillAppear:", a1 & 1);
  v4 = sub_1000A1F84(v2, 0, 390.0);
  v6 = v5;

  v7 = [v2 containerView];
  [v7 setSwipeDismissible:0];

  [v2 setModalPresentationStyle:4];
  v8 = [v2 containerView];
  sub_1000A81E4(v8);
  v10 = v9;
  v11 = [v10 bottomAnchor];
  v12 = [v8 bottomAnchor];
  if (qword_1001B9448 != -1)
  {
    swift_once();
  }

  v13 = [v11 constraintEqualToAnchor:v12 constant:-*(&xmmword_1001BD608 + 1)];

  LODWORD(v14) = 1148846080;
  [v13 setPriority:v14];
  [v13 setActive:1];

  v15 = *&v2[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_btn];
  *&v2[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_btn] = v10;
  v16 = v10;

  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  [v16 setTitleColor:v18 forState:0];

  [v16 addTarget:v2 action:"learnMorePressed" forControlEvents:64];
  v19 = objc_opt_self();
  v20 = [v19 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = sub_1001279D0(v20, v21, v22);

  if (!v23)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = String._bridgeToObjectiveC()();
  }

  v93 = v16;
  [v16 setTitle:v23 forState:0];

  v24 = [v2 containerView];
  v25.super.super.super.isa = setupTitleLabel(inContainerView:textAlignment:)(v24, NSTextAlignmentCenter).super.super.super.isa;

  v26 = [v19 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = sub_1001279D0(v26, v27, v28);

  if (!v29)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v25.super.super.super.isa setText:v29];

  v30 = objc_opt_self();
  v31 = [v30 systemFontOfSize:30.0];
  v32 = [v31 fontDescriptor];
  v33 = [v32 fontDescriptorWithSymbolicTraits:2];

  sub_100005DCC(&qword_1001BBBA0);
  Optional.unwrap(_:file:line:)();

  [v31 pointSize];
  v34 = [v30 fontWithDescriptor:v94 size:?];

  [(objc_class *)v25.super.super.super.isa setFont:v34];
  v35 = [v17 blackColor];
  [(objc_class *)v25.super.super.super.isa setTextColor:v35];

  [(objc_class *)v25.super.super.super.isa setNumberOfLines:2];
  v36 = *&v2[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_msgLbl];
  v37 = [v19 mainBundle];
  v38 = String._bridgeToObjectiveC()();
  v39 = String._bridgeToObjectiveC()();
  v40 = sub_1001279D0(v37, v38, v39);

  if (!v40)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = String._bridgeToObjectiveC()();
  }

  [v36 setText:v40];

  v41 = [v17 blackColor];
  [v36 setTextColor:v41];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setTextAlignment:1];
  [v36 setNumberOfLines:5];
  [v36 setAdjustsFontSizeToFitWidth:1];
  [v36 setMinimumScaleFactor:0.3];
  v42 = [v2 containerView];
  [v42 addSubview:v36];

  v43 = *&v2[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_avatarImageView];
  v44 = String._bridgeToObjectiveC()();
  v45 = objc_opt_self();
  v46 = [v45 imageNamed:v44];

  [v43 setImage:v46];
  [v43 setContentMode:1];
  v47 = [v17 systemGrayColor];
  [v43 setTintColor:v47];

  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = [v2 containerView];
  [v48 addSubview:v43];

  v49 = *&v2[OBJC_IVAR____TtC18SharingViewService28B389PairLockedViewController_lockImageView];
  v50 = String._bridgeToObjectiveC()();
  v51 = [v45 imageNamed:v50];

  [v49 setImage:v51];
  [v49 setContentMode:1];
  v52 = [v17 systemBlueColor];
  [v49 setTintColor:v52];

  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v53 = [v2 containerView];
  [v53 addSubview:v49];

  v54 = [v93 topAnchor];
  v55 = [v36 bottomAnchor];
  v56 = [v54 constraintGreaterThanOrEqualToAnchor:v55 constant:16.0];

  [v56 setActive:1];
  v57 = [v36 firstBaselineAnchor];
  v58 = [v49 bottomAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:32.0];

  [v59 setActive:1];
  v60 = [v36 leadingAnchor];
  v61 = [v2 containerView];
  v62 = [v61 leadingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:36.0];
  [v63 setActive:1];

  v64 = [v36 trailingAnchor];
  v65 = [v2 containerView];
  v66 = [v65 trailingAnchor];

  v67 = [v64 constraintEqualToAnchor:v66 constant:-36.0];
  [v67 setActive:1];

  v68 = [v43 centerXAnchor];
  v69 = [v2 containerView];
  v70 = [v69 centerXAnchor];

  v71 = [v68 constraintEqualToAnchor:v70];
  [v71 setActive:1];

  v72 = [v43 widthAnchor];
  v73 = [v72 constraintEqualToConstant:152.0];

  [v73 setActive:1];
  v74 = [v43 heightAnchor];
  v75 = [v74 constraintEqualToConstant:152.0];

  [v75 setActive:1];
  v76 = [v43 topAnchor];
  v77 = v25.super.super.super.isa;
  v78 = [(objc_class *)v77 bottomAnchor];
  v79 = [v76 constraintEqualToAnchor:v78 constant:18.0];

  [v79 setActive:1];
  v80 = [v49 centerXAnchor];
  v81 = [v2 containerView];
  v82 = [v81 centerXAnchor];

  v83 = [v80 constraintEqualToAnchor:v82];
  [v83 setActive:1];

  v84 = [v49 widthAnchor];
  v85 = [v84 constraintEqualToConstant:152.0];

  [v85 setActive:1];
  v86 = [v49 heightAnchor];
  v87 = [v86 constraintEqualToConstant:152.0];

  [v87 setActive:1];
  v88 = [v49 topAnchor];
  v89 = [(objc_class *)v77 bottomAnchor];

  v90 = [v88 constraintEqualToAnchor:v89 constant:18.0];
  [v90 setActive:1];

  v91 = [v2 containerView];
  isa = setupXButton(inContainerView:)(v91).super.super.super.super.isa;

  [(objc_class *)isa addTarget:v2 action:"dismissPressed" forControlEvents:64];
}