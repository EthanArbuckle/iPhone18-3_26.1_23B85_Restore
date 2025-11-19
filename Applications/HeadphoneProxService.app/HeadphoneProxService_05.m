void sub_10007FE84(void *a1, uint64_t a2)
{
  v109 = a1;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v111 = v3;
  v112 = v4;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v102 = v99 - v10;
  v11 = __chkstk_darwin(v9);
  v104 = (v99 - v12);
  __chkstk_darwin(v11);
  v14 = v99 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v21 = sub_10000A570(v20, qword_100122FA0);
  v105 = *(v16 + 16);
  v105(v19, a2, v15);
  v110 = v21;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  v107 = v15;
  v108 = v16;
  v106 = v16 + 16;
  v103 = v8;
  if (v24)
  {
    v25 = a2;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v115 = v27;
    *v26 = 136315138;
    sub_100080BB0();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v15;
    v31 = v30;
    (*(v16 + 8))(v19, v29);
    v32 = sub_100078978(v28, v31, &v115);

    *(v26 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, "Live Translation: didSelectRowAt: %s", v26, 0xCu);
    sub_10000EA94(v27);

    a2 = v25;
  }

  else
  {

    (*(v16 + 8))(v19, v15);
  }

  v33 = IndexPath.section.getter();
  if (v33)
  {
    if (v33 != 1)
    {
      return;
    }

    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = v113 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v36 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = (v35 + *(v36 + 80));
    v38 = *v37;
    if (*v37)
    {
      v39 = v37[1];
      v40 = *v37;

      v41 = IndexPath.row.getter();
      v100 = a2;
      v99[1] = v39;
      if (v34)
      {
        if ((v39 & 0xC000000000000001) == 0)
        {
          if ((v41 & 0x8000000000000000) == 0)
          {
            if (v41 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v42 = v39 + 8 * v41;
LABEL_21:
              v43 = *(v42 + 32);
              goto LABEL_22;
            }

            goto LABEL_49;
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else if ((v38 & 0xC000000000000001) == 0)
      {
        if ((v41 & 0x8000000000000000) == 0)
        {
          if (v41 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v42 = v38 + 8 * v41;
            goto LABEL_21;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
      v44 = v43;
      v45 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v46 = v113;
      swift_beginAccess();
      v47 = *(v46 + v45);

      v101 = v44;
      v48 = [v44 locale];
      if (v48)
      {
        v49 = v48;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = Locale.identifier.getter();
        v52 = v51;
        v53 = *(v112 + 8);
        v112 += 8;
        v53(v14, v111);
        v54 = *(v47 + 16);
        if (v54)
        {
          v55 = 0;
          v56 = (v47 + 40);
          while (1)
          {
            v57 = *(v56 - 1) == v50 && *v56 == v52;
            if (v57 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v55;
            v56 += 2;
            if (v54 == v55)
            {
              goto LABEL_31;
            }
          }

          swift_beginAccess();
          sub_1000808AC(v55);
          swift_endAccess();

          v58 = v101;
          v84 = v101;
          v85 = Logger.logObject.getter();
          v86 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v85, v86))
          {

            v78 = v100;
            v68 = v107;
            goto LABEL_44;
          }

          v104 = v53;
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v114[0] = v88;
          *v87 = 136315138;
          v89 = [v84 locale];

          v78 = v100;
          v68 = v107;
          if (v89)
          {
            v90 = v102;
            static Locale._unconditionallyBridgeFromObjectiveC(_:)();

            v91 = Locale.identifier.getter();
            v93 = v92;
            v104(v90, v111);
            v94 = sub_100078978(v91, v93, v114);

            *(v87 + 4) = v94;
            _os_log_impl(&_mh_execute_header, v85, v86, "Live Translation: Remove %s from Download List", v87, 0xCu);
            sub_10000EA94(v88);

            goto LABEL_44;
          }

LABEL_54:
          __break(1u);
          return;
        }

LABEL_31:

        v58 = v101;
        v59 = [v101 locale];
        if (v59)
        {
          v60 = v59;

          v61 = v104;
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v62 = Locale.identifier.getter();
          v64 = v63;
          v104 = v53;
          v53(v61, v111);
          v65 = v113;
          swift_beginAccess();
          v66 = *(v65 + v45);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v65 + v45) = v66;
          v68 = v107;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v66 = sub_1000CC104(0, *(v66 + 2) + 1, 1, v66);
            *(v113 + v45) = v66;
          }

          v70 = *(v66 + 2);
          v69 = *(v66 + 3);
          if (v70 >= v69 >> 1)
          {
            v66 = sub_1000CC104((v69 > 1), v70 + 1, 1, v66);
          }

          *(v66 + 2) = v70 + 1;
          v71 = &v66[16 * v70];
          *(v71 + 4) = v62;
          *(v71 + 5) = v64;
          *(v113 + v45) = v66;
          swift_endAccess();
          v72 = v58;
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v73, v74))
          {

            v78 = v100;
            goto LABEL_44;
          }

          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v114[0] = v76;
          *v75 = 136315138;
          v77 = [v72 locale];

          v78 = v100;
          if (v77)
          {
            v79 = v103;
            static Locale._unconditionallyBridgeFromObjectiveC(_:)();

            v80 = Locale.identifier.getter();
            v82 = v81;
            v104(v79, v111);
            v83 = sub_100078978(v80, v82, v114);

            *(v75 + 4) = v83;
            _os_log_impl(&_mh_execute_header, v73, v74, "Live Translation: Add %s to Download List", v75, 0xCu);
            sub_10000EA94(v76);

            v58 = v101;
LABEL_44:
            sub_100008438(&qword_10011EBD8, &qword_1000D8B28);
            v95 = *(v108 + 72);
            v96 = (*(v108 + 80) + 32) & ~*(v108 + 80);
            v97 = swift_allocObject();
            *(v97 + 16) = xmmword_1000D5250;
            v105((v97 + v96), v78, v68);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v109 reloadRowsAtIndexPaths:isa withRowAnimation:100];

            return;
          }

          goto LABEL_53;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }
}

uint64_t sub_1000808AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007AD6C(v3);
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

uint64_t sub_100080A34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100080AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100080B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100080B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100080BB0()
{
  result = qword_10011EBE0;
  if (!qword_10011EBE0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EBE0);
  }

  return result;
}

uint64_t sub_100080C08(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    return 0;
  }

  v6 = (v3 + *(v4 + 80));
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  if (v2)
  {
    v8 = v6[1];
    if (!(v8 >> 62))
    {
      return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else if (!(v7 >> 62))
  {
    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100080D14(unint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 <= 1)
  {
    v8 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    static UIListContentConfiguration.header()();
    if (a1)
    {
      v9 = 101;
    }

    else
    {
      v9 = 100;
    }

    sub_100033A5C(v9);
    UIListContentConfiguration.text.setter();
    v12[3] = v2;
    v12[4] = &protocol witness table for UIListContentConfiguration;
    v10 = sub_10007C900(v12);
    (*(v3 + 16))(v10, v6, v2);
    UITableViewHeaderFooterView.contentConfiguration.setter();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  return result;
}

uint64_t sub_100080E80(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100080ED8()
{
  result = qword_10011EBF0;
  if (!qword_10011EBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011EBF0);
  }

  return result;
}

void sub_100080F50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceAddress:v3];
}

void sub_100080FF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_10006AF20;
    v4[3] = &unk_100106F88;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setCompletionHandler:v3];
  _Block_release(v3);
}

uint64_t sub_1000810A0()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100081180()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  result = __chkstk_darwin(v18);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 81) == 1)
  {
    v24 = *(v1 + 40);
    if (v24)
    {
      v25 = *(v1 + 48);
      v26 = *(v1 + 88);
      sub_100062D70(*(v1 + 40));
      swift_errorRetain();
      v24(v26);
      sub_1000622D4(v24);
    }
  }

  else
  {
    sub_100041E90();
    v35 = v3;
    v27 = v2;
    (*(v19 + 104))(v23, enum case for DispatchQoS.QoSClass.background(_:), v18);
    v34 = static OS_dispatch_queue.global(qos:)();
    (*(v19 + 8))(v23, v18);
    static DispatchTime.now()();
    + infix(_:_:)();
    v28 = v37;
    v29 = *(v36 + 8);
    v29(v15, v37);
    v30 = v29;
    aBlock[4] = sub_10008180C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100106F60;
    v31 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_100041EE4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v32 = v34;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v31);

    (*(v35 + 8))(v6, v27);
    (*(v38 + 8))(v10, v39);
    v30(v17, v28);
  }

  return result;
}

uint64_t sub_10008160C(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = *(result + 48);

    v1(0);

    return sub_1000622D4(v1);
  }

  return result;
}

uint64_t sub_10008166C()
{
  v1 = v0[3];

  v2 = v0[6];
  sub_1000622D4(v0[5]);
  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];
  sub_1000622D4(v0[12]);

  return swift_deallocClassInstance();
}

double sub_1000816E8()
{
  *(v0 + 76) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  return result;
}

uint64_t sub_10008171C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_100081744(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1000622D4(v3);
}

uint64_t sub_100081758()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_1000817A4()
{
  v1 = v0;
  v2 = v0[12];
  if (v2)
  {
    v3 = v0[13];
    v4 = v1[13];

    v2(v5);
    sub_1000622D4(v2);
  }

  v6 = v1[5];
  v7 = v1[6];
  v1[5] = 0;
  v1[6] = 0;

  return sub_1000622D4(v6);
}

uint64_t sub_100081814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100081834(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = *v6++;
      v9 = v7;
      v8 = v7;
      a1(&v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1000818C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011ED60);
  v1 = sub_10000A570(v0, qword_10011ED60);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100081988()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  [v0 setDismissalType:3];
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide];
  v2 = String._bridgeToObjectiveC()();
  [v1 setIdentifier:v2];

  v3 = [v0 contentView];
  [v3 addLayoutGuide:v1];

  v4 = [v0 contentView];
  v5 = [v4 mainContentGuide];

  v6 = [v1 bottomAnchor];
  v7 = [v5 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  v9 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000D6000;
  v11 = [v1 topAnchor];
  v12 = [v5 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v1 trailingAnchor];
  v18 = [v5 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  *(v10 + 56) = v8;
  sub_10000F5A0();
  v20 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];

  v22 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v23 = *&v0[v22];
  *&v0[v22] = v20;
  v24 = v20;

  v25 = sub_100081CEC();
  v26 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer] = v25;
}

char *sub_100081CEC()
{
  type metadata accessor for HeadphoneBatteryContainer();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = &v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel];
  swift_beginAccess();
  v3 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_10001309C(&v68);
  }

  else
  {
    v4 = &v2[*(v3 + 56)];
    v5 = *(v4 + 13);
    v65 = *(v4 + 12);
    v66 = v5;
    v67 = *(v4 + 14);
    v6 = *(v4 + 9);
    v61 = *(v4 + 8);
    v62 = v6;
    v7 = *(v4 + 11);
    v63 = *(v4 + 10);
    v64 = v7;
    v8 = *(v4 + 5);
    v57 = *(v4 + 4);
    v58 = v8;
    v9 = *(v4 + 7);
    v59 = *(v4 + 6);
    v60 = v9;
    v10 = *(v4 + 1);
    v53 = *v4;
    v54 = v10;
    v11 = *(v4 + 3);
    v55 = *(v4 + 2);
    v56 = v11;
    sub_10000E88C(&v53, &v68, &unk_10011FF80, &qword_1000D8590);
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v72 = v57;
    v73 = v58;
    v74 = v59;
    v75 = v60;
    v68 = v53;
    v69 = v54;
    v70 = v55;
    v71 = v56;
  }

  v12 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  v14 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 16];
  v13 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 32];
  v53 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  v54 = v14;
  v55 = v13;
  v15 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 96];
  v17 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 48];
  v16 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 64];
  v58 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 80];
  v59 = v15;
  v56 = v17;
  v57 = v16;
  v18 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 160];
  v20 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 112];
  v19 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 128];
  v62 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 144];
  v63 = v18;
  v60 = v20;
  v61 = v19;
  v21 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 224];
  v23 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 176];
  v22 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 192];
  v66 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 208];
  v67 = v21;
  v64 = v23;
  v65 = v22;
  v24 = v68;
  v25 = v70;
  *(v12 + 1) = v69;
  *(v12 + 2) = v25;
  *v12 = v24;
  v26 = v71;
  v27 = v72;
  v28 = v74;
  *(v12 + 5) = v73;
  *(v12 + 6) = v28;
  *(v12 + 3) = v26;
  *(v12 + 4) = v27;
  v29 = v75;
  v30 = v76;
  v31 = v78;
  *(v12 + 9) = v77;
  *(v12 + 10) = v31;
  *(v12 + 7) = v29;
  *(v12 + 8) = v30;
  v32 = v79;
  v33 = v80;
  v34 = v82;
  *(v12 + 13) = v81;
  *(v12 + 14) = v34;
  *(v12 + 11) = v32;
  *(v12 + 12) = v33;
  sub_10000E950(&v53, &unk_10011FF80, &qword_1000D8590);
  v35 = [v0 contentView];
  [v35 addSubview:v1];

  v36 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000D6000;
  v38 = [v1 topAnchor];
  v39 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];

  *(v37 + 32) = v41;
  v42 = [v1 bottomAnchor];
  v43 = [v39 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

  *(v37 + 40) = v44;
  v45 = [v1 centerXAnchor];
  v46 = [v39 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v37 + 48) = v47;
  v48 = [v1 centerYAnchor];

  v49 = [v39 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v37 + 56) = v50;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  return v1;
}

uint64_t sub_1000821A4()
{
  v1 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for HeadphoneAssets(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v11 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_10000E950(v4, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_10000E88C(v10 + *(v11 + 44), v4, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000E950(v4, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_10008A70C(v4, v9, type metadata accessor for HeadphoneAssets);
  sub_100008438(&qword_10011EF60, &qword_1000D8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8C40;
  v14 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  swift_beginAccess();
  v15 = *(v0 + v14);
  *(inited + 32) = v15;
  v16 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
  swift_beginAccess();
  v17 = *(v0 + v16);
  *(inited + 40) = v17;
  v18 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
  v19 = swift_beginAccess();
  *(inited + 48) = *(v0 + v18);
  __chkstk_darwin(v19);
  *(&v37 - 2) = v9;
  v21 = v20;
  v22 = v15;
  v23 = v17;
  sub_100081834(sub_10008C150, (&v37 - 4), inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011EF68, qword_1000D8E78);
  swift_arrayDestroy();
  v24 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
  swift_beginAccess();
  v25 = *(v0 + v24);
  if (v25)
  {
    v26 = *&v25[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
    objc_opt_self();
    v27 = swift_dynamicCastObjCClass();
    if (v27)
    {
      v28 = v27;
      v29 = objc_opt_self();
      v30 = v26;
      v31 = v25;
      v32 = [v29 currentTraitCollection];
      v33 = [v32 userInterfaceStyle];

      if (v33 == 2)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v36 = v35;
      [v28 updateViewForAssetType:v34 adjustmentsURL:v35];
    }
  }

  return sub_10008AF60(v9, type metadata accessor for HeadphoneAssets);
}

uint64_t sub_100082670(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = (v5 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView);
    v7 = *v6;
    v8 = v6[1];
    swift_getObjectType();
    return dispatch thunk of VideoPlaybackControllable.stop()();
  }

  return result;
}

void sub_10008276C(void *a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011EE90, &qword_1000D8D70);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v40 - v6;
  v8 = [objc_allocWithZone(UILabel) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor:v10];

  [v8 setTextAlignment:1];
  v11 = [v1 contentView];
  [v11 addSubview:v8];

  v12 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel] = v8;
  v13 = v8;

  v14 = a1[7];
  v15 = a1[6] & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  if (!v15)
  {
    v33 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView];
    if (v33)
    {
      [v33 removeFromSuperview];
    }

    v34 = [v1 contentView];
    [v34 setNeedsLayout];

    v35 = [v2 contentView];
    [v35 layoutIfNeeded];

    v32 = a1[12];
    if (!v32)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost;
  v17 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost];
  if (v17)
  {
    goto LABEL_6;
  }

  *v7 = static VerticalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v18 = sub_100008438(&qword_10011EE98, &qword_1000D8D78);
  sub_100082BF0(a1, &v7[*(v18 + 44)]);
  sub_10001C3D8(&qword_10011EEA0, &qword_10011EE90, &qword_1000D8D70);
  v19 = AnyView.init<A>(_:)();
  v20 = objc_allocWithZone(sub_100008438(&qword_10011EEA8, &qword_1000D8D80));
  v40[1] = v19;
  v21 = UIHostingController.init(rootView:)();
  v22 = *&v2[v16];
  *&v2[v16] = v21;

  v17 = *&v2[v16];
  if (v17)
  {
LABEL_6:
    v23 = v17;
    v24 = [v23 view];
    v25 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView;
    v26 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView] = v24;

    v27 = [v23 view];
    if (v27)
    {
      [v27 setTranslatesAutoresizingMaskIntoConstraints:0];

      v28 = *&v2[v25];
      if (v28)
      {
        v29 = [v28 superview];
        if (v29)
        {
LABEL_11:

          v31 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
          *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = v17;

          v32 = a1[12];
          if (!v32)
          {
LABEL_19:

            return;
          }

LABEL_16:
          v36 = v32;
          [v13 setAttributedText:v36];
          sub_1000835D8();
          v37 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
          swift_beginAccess();
          v38 = *&v2[v37];
          if (v38)
          {
            v39 = v38;
            [v39 setActive:0];
          }

          v13 = v36;
          goto LABEL_19;
        }
      }

      v30 = [v2 contentView];
      if (*&v2[v25])
      {
        v29 = v30;
        [v30 addSubview:?];
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100082BF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a2;
  v55 = type metadata accessor for BorderedButtonStyle();
  v56 = *(v55 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v55);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ButtonSizing();
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  __chkstk_darwin(v52);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100008438(&qword_10011EEB0, &qword_1000D8D88);
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v48);
  v11 = &v48 - v10;
  v50 = sub_100008438(&qword_10011EEB8, &qword_1000D8D90);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v14 = &v48 - v13;
  v15 = sub_100008438(&qword_10011EEC0, &qword_1000D8D98);
  v16 = *(v15 - 8);
  v54 = v15 - 8;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v49 = &v48 - v18;
  v19 = sub_100008438(&qword_10011EEC8, &qword_1000D8DA0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = a1;

  sub_100008438(&qword_10011EED0, &qword_1000D8DA8);
  sub_10008AD10(&qword_10011EED8, &qword_10011EED0, &qword_1000D8DA8, sub_10008A9C4);
  Button.init(action:label:)();
  v23 = v19;

  static ButtonSizing.flexible.getter();
  sub_10001C3D8(&qword_10011EEF0, &qword_10011EEB0, &qword_1000D8D88);
  v24 = v48;
  View.buttonSizing(_:)();
  (*(v51 + 8))(v7, v52);
  (*(v8 + 8))(v11, v24);
  static Font.callout.getter();
  static Font.Weight.bold.getter();
  v25 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v27 = &v14[*(v50 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = v53;
  BorderedButtonStyle.init()();
  sub_10008AAA0();
  sub_10008ABC8();
  v29 = v49;
  v30 = v55;
  View.buttonStyle<A>(_:)();
  (*(v56 + 8))(v28, v30);
  sub_10000E950(v14, &qword_10011EEB8, &qword_1000D8D90);
  v31 = [objc_opt_self() systemGreenColor];
  v32 = Color.init(uiColor:)();
  v33 = swift_getKeyPath();
  *&v59 = v32;
  v34 = AnyShapeStyle.init<A>(_:)();
  v35 = (v29 + *(sub_100008438(&qword_10011EF18, &qword_1000D8E20) + 36));
  *v35 = v33;
  v35[1] = v34;
  v36 = (v29 + *(v54 + 44));
  v37 = *(sub_100008438(&qword_10011EF20, &qword_1000D8E28) + 28);
  v38 = enum case for ControlSize.large(_:);
  v39 = type metadata accessor for ControlSize();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10008ACA0(v29, v22);
  v40 = &v22[*(v23 + 36)];
  v41 = v64;
  *(v40 + 4) = v63;
  *(v40 + 5) = v41;
  *(v40 + 6) = v65;
  v42 = v60;
  *v40 = v59;
  *(v40 + 1) = v42;
  v43 = v62;
  *(v40 + 2) = v61;
  *(v40 + 3) = v43;
  sub_100008438(&qword_10011EF28, &qword_1000D8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8C40;
  LOBYTE(v29) = static Edge.Set.leading.getter();
  *(inited + 32) = v29;
  v45 = static Edge.Set.trailing.getter();
  *(inited + 33) = v45;
  v46 = static Edge.Set.top.getter();
  *(inited + 34) = v46;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v45)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v46)
  {
    Edge.Set.init(rawValue:)();
  }

  sub_10008AD10(&qword_10011EF30, &qword_10011EEC8, &qword_1000D8DA0, sub_10008AD94);
  View.scenePadding(_:)();
  return sub_10000E950(v22, &qword_10011EEC8, &qword_1000D8DA0);
}

void sub_1000833B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000BAD18();
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100083428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 48);
  sub_100008480();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v11[71] = v16;
  *&v11[55] = v15;
  *&v11[23] = v13;
  *&v11[7] = v12;
  *&v11[87] = v17;
  *&v11[103] = v18;
  *&v11[39] = v14;
  *(a2 + 97) = *&v11[64];
  *(a2 + 113) = *&v11[80];
  *(a2 + 129) = *&v11[96];
  *(a2 + 33) = *v11;
  *(a2 + 49) = *&v11[16];
  result = *&v11[32];
  *(a2 + 65) = *&v11[32];
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 144) = *(&v18 + 1);
  *(a2 + 81) = *&v11[48];
  return result;
}

uint64_t sub_100083558(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10008BEFC(a1);
  (*(*(*(v2 + qword_100123148) - 8) + 8))(a1);
  return v5;
}

void sub_1000835D8()
{
  v1 = v0;
  v2 = [v0 contentView];
  v60 = [v2 mainContentGuide];

  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  v4 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  if (v4)
  {
    v5 = v3;
    v6 = [v4 view];
    v7 = v6;
    if (v3)
    {
      if (v6)
      {
        if (qword_10011C640 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000A570(v8, qword_100123058);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Battery: OBC/DEOC Layout for Button and Label", v11, 2u);
        }

        v59 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1000D5D20;
        v13 = v5;
        v14 = [v13 topAnchor];
        v15 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide] bottomAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 constant:20.0];

        *(v12 + 32) = v16;
        v17 = [v13 leadingAnchor];
        v18 = [v60 leadingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        *(v12 + 40) = v19;
        v20 = [v13 trailingAnchor];
        v21 = [v60 trailingAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];

        *(v12 + 48) = v22;
        v23 = [v7 topAnchor];
        v24 = [v13 bottomAnchor];

        v25 = [v23 constraintEqualToAnchor:v24];
        *(v12 + 56) = v25;
        v26 = [v7 leadingAnchor];
        v27 = [v60 leadingAnchor];
        v28 = [v26 constraintEqualToAnchor:v27];

        *(v12 + 64) = v28;
        v29 = [v7 trailingAnchor];
        v30 = [v60 trailingAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v12 + 72) = v31;
        v32 = [v7 bottomAnchor];
        v33 = [v60 bottomAnchor];
        v34 = [v32 constraintLessThanOrEqualToAnchor:v33];

        *(v12 + 80) = v34;
        sub_10000F5A0();
        v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v59 activateConstraints:v35.super.isa];

        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = v3;
    if (v3)
    {
      v5 = v36;
LABEL_11:
      if (qword_10011C640 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000A570(v37, qword_100123058);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Battery: OBC/DEOC Layout for Label only", v40, 2u);
      }

      v41 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1000D6000;
      v43 = v5;
      v44 = [v43 topAnchor];
      v45 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide] bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:20.0];

      *(v42 + 32) = v46;
      v47 = [v43 leadingAnchor];
      v48 = [v60 leadingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];

      *(v42 + 40) = v49;
      v50 = [v43 trailingAnchor];
      v51 = [v60 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];

      *(v42 + 48) = v52;
      v53 = [v43 bottomAnchor];

      v54 = [v60 bottomAnchor];
      v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

      *(v42 + 56) = v55;
      sub_10000F5A0();
      v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 activateConstraints:v35.super.isa];

      goto LABEL_21;
    }

    v7 = 0;
  }

  if (qword_10011C640 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000A570(v56, qword_100123058);
  v35.super.isa = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35.super.isa, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v35.super.isa, v57, "Battery: OBC/DEOC layout none", v58, 2u);
  }

LABEL_21:
}

void sub_100083E0C(uint64_t *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = aBlock - v9 + 16;
  sub_10008A94C(a1, aBlock - v9 + 16, type metadata accessor for HeadphoneViewModel);
  v11 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v10, &v1[v12]);
  swift_endAccess();
  v13 = *a1;
  v14 = a1[1];
  v15 = String._bridgeToObjectiveC()();
  [v1 setTitle:v15];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    sub_10000E88C(v17 + 16, aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v18 = v55;
    if (v55)
    {
      v19 = sub_10000E7E4(aBlock, v55);
      v20 = *(v18 - 1);
      v21 = *(v20 + 64);
      __chkstk_darwin(v19);
      v23 = (aBlock - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
      (*(v20 + 16))(v23);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v24 = *v23;
      v25 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10008A94C(v24 + v25, v6, type metadata accessor for HeadphoneModel);
      (*(v20 + 8))(v23, v18);
      v26 = v6[136];
      sub_10008AF60(v6, type metadata accessor for HeadphoneModel);
      if (v26 == 13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    }
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    swift_beginAccess();
    sub_10000E88C(v28 + 16, aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v29 = v55;
    if (v55)
    {
      v30 = sub_10000E7E4(aBlock, v55);
      v31 = *(v29 - 1);
      v32 = *(v31 + 64);
      __chkstk_darwin(v30);
      v34 = (aBlock - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
      (*(v31 + 16))(v34);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v35 = [*(*v34 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed];
      (*(v31 + 8))(v34, v29);
      if (v35)
      {
        v36 = v1;
        if (qword_10011C6D8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_10000A570(v37, qword_10011ED60);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v38, v39, "Temporary Managed Pairing: Show Subtitle", v40, 2u);
        }

        v41 = a1[2];
        v42 = a1[3];
        v43 = String._bridgeToObjectiveC()();
        v1 = v36;
        [v36 setSubtitle:v43];
      }
    }

    else
    {
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    }
  }

LABEL_15:
  v44 = a1[5];
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v47 = String._bridgeToObjectiveC()();
    v56 = sub_10008A6EC;
    v57 = v46;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C034;
    v55 = &unk_1001070D0;
    v48 = _Block_copy(aBlock);
    v49 = [objc_opt_self() actionWithTitle:v47 style:0 handler:v48];

    _Block_release(v48);

    v50 = [v1 addAction:v49];
  }

  sub_10008276C(a1);
  v51 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
  v52 = v51;
  sub_100084558(a1, v51);
}

void sub_1000844E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B615C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100084558(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v30 - v10);
  __chkstk_darwin(v9);
  v13 = (&v30 - v12);
  v14 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v15 = *(*(v14 - 8) + 64);
  result = __chkstk_darwin(v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = type metadata accessor for HeadphoneViewModel(0);
    sub_10008A94C(a1 + *(v19 + 48), v18, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if (result != 3)
      {
        if (result != 4)
        {
          return result;
        }

        sub_10008A70C(v18, v13, type metadata accessor for HeadphoneBatteryInfo);
        v21 = a2;
        sub_1000897B0(v13, v21);

        return sub_10008AF60(v13, type metadata accessor for HeadphoneBatteryInfo);
      }

      v24 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      sub_10008A70C(v18, v13, type metadata accessor for HeadphoneBatteryInfo);
      sub_10008A70C(&v18[v24], v11, type metadata accessor for HeadphoneBatteryInfo);
      v23 = a2;
      sub_100088EF8(v13, v11, v23);
    }

    else
    {
      if (result)
      {
        if (result == 1)
        {
          sub_10008A70C(v18, v13, type metadata accessor for HeadphoneBatteryInfo);
          v20 = a2;
          sub_100087C74(v13, v20);

          return sub_10008AF60(v13, type metadata accessor for HeadphoneBatteryInfo);
        }

        v26 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
        v27 = *(v26 + 48);
        v28 = *(v26 + 64);
        sub_10008A70C(v18, v13, type metadata accessor for HeadphoneBatteryInfo);
        sub_10008A70C(&v18[v27], v11, type metadata accessor for HeadphoneBatteryInfo);
        sub_10008A70C(&v18[v28], v8, type metadata accessor for HeadphoneBatteryInfo);
        v29 = a2;
        sub_100088428(v13, v11, v8, v29);

        sub_10008AF60(v8, type metadata accessor for HeadphoneBatteryInfo);
        v25 = v11;
LABEL_13:
        sub_10008AF60(v25, type metadata accessor for HeadphoneBatteryInfo);
        return sub_10008AF60(v13, type metadata accessor for HeadphoneBatteryInfo);
      }

      v22 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      sub_10008A70C(v18, v13, type metadata accessor for HeadphoneBatteryInfo);
      sub_10008A70C(&v18[v22], v11, type metadata accessor for HeadphoneBatteryInfo);
      v23 = a2;
      sub_100086F94(v13, v11, v23);
    }

    v25 = v11;
    goto LABEL_13;
  }

  return result;
}

void sub_1000848FC(uint64_t a1)
{
  v2 = v1;
  v140 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v126 - v12;
  v14 = type metadata accessor for HeadphoneViewModel(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v137 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v136 = &v126 - v19;
  v20 = __chkstk_darwin(v18);
  v132 = &v126 - v21;
  v22 = __chkstk_darwin(v20);
  v134 = &v126 - v23;
  v24 = __chkstk_darwin(v22);
  v133 = &v126 - v25;
  v26 = __chkstk_darwin(v24);
  v131 = &v126 - v27;
  __chkstk_darwin(v26);
  v29 = &v126 - v28;
  v139 = v2;
  v30 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel];
  swift_beginAccess();
  sub_10000E88C(v30, v13, &qword_10011F2E0, &unk_1000D8580);
  v138 = v15;
  v31 = *(v15 + 48);
  if (v31(v13, 1, v14) == 1)
  {
    sub_10000E950(v13, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  v129 = v31;
  v130 = v30;
  sub_10008A70C(v13, v29, type metadata accessor for HeadphoneViewModel);
  v32 = v14;
  v33 = *(v14 + 48);
  swift_storeEnumTagMultiPayload();
  v34 = v140;
  v35 = sub_1000174A4(v140 + v33, v6);
  sub_10008AF60(v6, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  if (v35)
  {
    sub_10008AF60(v29, type metadata accessor for HeadphoneViewModel);
    return;
  }

  sub_10008A94C(v34, v11, type metadata accessor for HeadphoneViewModel);
  (*(v138 + 56))(v11, 0, 1, v32);
  v36 = v130;
  swift_beginAccess();
  sub_10004D3E8(v11, v36);
  swift_endAccess();
  v128 = v32;
  v37 = *(v32 + 48);
  v38 = v29;
  if (sub_1000174A4(&v29[v37], v34 + v33))
  {
    if (qword_10011C640 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000A570(v39, qword_100123058);
    v40 = v136;
    sub_10008A94C(v29, v136, type metadata accessor for HeadphoneViewModel);
    v41 = v137;
    sub_10008A94C(v140, v137, type metadata accessor for HeadphoneViewModel);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v44 = 136315394;
      v45 = v128;
      v46 = v40 + *(v128 + 48);
      v47 = sub_1000171AC();
      v48 = v40;
      v50 = v49;
      sub_10008AF60(v48, type metadata accessor for HeadphoneViewModel);
      v51 = sub_100078978(v47, v50, &aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      v52 = &v41[*(v45 + 48)];
      v53 = sub_1000171AC();
      v55 = v54;
      sub_10008AF60(v41, type metadata accessor for HeadphoneViewModel);
      v56 = sub_100078978(v53, v55, &aBlock);

      *(v44 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v42, v43, "Battery: old:%s new: %s", v44, 0x16u);
      swift_arrayDestroy();

      v38 = v29;
    }

    else
    {

      sub_10008AF60(v41, type metadata accessor for HeadphoneViewModel);
      sub_10008AF60(v40, type metadata accessor for HeadphoneViewModel);
    }

    v58 = v139;
  }

  else
  {
    v57 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning;
    v58 = v139;
    v59 = v139[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning];
    v127 = v38;
    if (v59)
    {
      if (qword_10011C6D8 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for Logger();
      sub_10000A570(v60, qword_10011ED60);
      v61 = v132;
      sub_10008A94C(v140, v132, type metadata accessor for HeadphoneViewModel);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        aBlock = v65;
        *v64 = 136315138;
        v66 = v128;
        v67 = v61 + *(v128 + 48);
        v68 = sub_1000171AC();
        v69 = v61;
        v71 = v70;
        sub_10008AF60(v69, type metadata accessor for HeadphoneViewModel);
        v72 = sub_100078978(v68, v71, &aBlock);

        *(v64 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v62, v63, "Battery: Transition caught configuration change %s", v64, 0xCu);
        sub_10000EA94(v65);

        v38 = v127;
      }

      else
      {

        sub_10008AF60(v61, type metadata accessor for HeadphoneViewModel);
        v38 = v127;
        v66 = v128;
      }

      v94 = v130;
      swift_beginAccess();
      if (!v129(v94, 1, v66))
      {
        sub_10008B79C(v38 + v37, v94 + *(v66 + 48));
      }

      swift_endAccess();
    }

    else
    {
      if (qword_10011C6D8 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      sub_10000A570(v73, qword_10011ED60);
      v74 = v131;
      sub_10008A94C(v38, v131, type metadata accessor for HeadphoneViewModel);
      v75 = v140;
      v76 = v133;
      sub_10008A94C(v140, v133, type metadata accessor for HeadphoneViewModel);
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.debug.getter();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v128;
      if (v79)
      {
        v81 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        aBlock = v137;
        *v81 = 136315394;
        v82 = v74 + *(v80 + 48);
        v83 = sub_1000171AC();
        v84 = v57;
        v85 = v80;
        v87 = v86;
        sub_10008AF60(v74, type metadata accessor for HeadphoneViewModel);
        v88 = sub_100078978(v83, v87, &aBlock);

        *(v81 + 4) = v88;
        *(v81 + 12) = 2080;
        v89 = *(v85 + 48);
        v57 = v84;
        v90 = sub_1000171AC();
        v92 = v91;
        sub_10008AF60(v76, type metadata accessor for HeadphoneViewModel);
        v93 = sub_100078978(v90, v92, &aBlock);

        *(v81 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v77, v78, "Battery: Transitioning battery configuration: %s -> %s", v81, 0x16u);
        swift_arrayDestroy();
        v75 = v140;
      }

      else
      {

        sub_10008AF60(v76, type metadata accessor for HeadphoneViewModel);
        sub_10008AF60(v74, type metadata accessor for HeadphoneViewModel);
      }

      v95 = *&v139[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
      v96 = v95;
      v97 = sub_100081CEC();
      [v97 setAlpha:0.0];
      v98 = v97;
      sub_100084558(v75, v97);

      v99 = [v139 contentView];
      [v99 layoutIfNeeded];

      v139[v57] = 1;
      v137 = objc_opt_self();
      v100 = swift_allocObject();
      *(v100 + 16) = v95;
      v145 = sub_10008AFF8;
      v146 = v100;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_100019340;
      v144 = &unk_100107120;
      v101 = _Block_copy(&aBlock);
      v102 = v96;

      v103 = v134;
      sub_10008A94C(v75, v134, type metadata accessor for HeadphoneViewModel);
      v104 = (*(v138 + 80) + 40) & ~*(v138 + 80);
      v105 = swift_allocObject();
      v106 = v139;
      v105[2] = v98;
      v105[3] = v106;
      v105[4] = v95;
      sub_10008A70C(v103, v105 + v104, type metadata accessor for HeadphoneViewModel);
      *(v105 + ((v16 + v104 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v145 = sub_10008B6B8;
      v146 = v105;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_1000194C0;
      v144 = &unk_100107170;
      v107 = _Block_copy(&aBlock);
      v108 = v102;
      v109 = v98;
      v110 = v139;
      v58 = v139;

      [v137 animateWithDuration:0 delay:v101 options:v107 animations:0.333 completion:0.0];
      _Block_release(v107);
      _Block_release(v101);

      v38 = v127;
    }
  }

  sub_100085D30();
  v111 = v140;
  v112 = v140[12];
  if (!v112)
  {
    v118 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
    swift_beginAccess();
    v119 = *&v58[v118];
    if (v119 && ([v119 isActive] & 1) == 0)
    {
      v120 = objc_opt_self();
      v121 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v145 = sub_10008B794;
      v146 = v121;
      aBlock = _NSConcreteStackBlock;
      v142 = 1107296256;
      v143 = sub_100019340;
      v144 = &unk_1001071C0;
      v122 = _Block_copy(&aBlock);

      [v120 animateWithDuration:v122 animations:0.3];
      _Block_release(v122);
    }

    goto LABEL_38;
  }

  v113 = *&v58[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  *&v58[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = 0;
  v114 = v112;

  v115 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel;
  v116 = *&v58[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  if (v116)
  {
    [v116 removeFromSuperview];
    v117 = *&v58[v115];
  }

  else
  {
    v117 = 0;
  }

  *&v58[v115] = 0;

  sub_10008276C(v111);
  v123 = *&v58[v115];
  if (v123)
  {
    [v123 setAttributedText:v114];
  }

  v124 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v125 = *&v58[v124];
  if (v125)
  {
    swift_endAccess();
    [v125 setActive:0];

LABEL_38:
    sub_10008AF60(v38, type metadata accessor for HeadphoneViewModel);
    return;
  }

  sub_10008AF60(v38, type metadata accessor for HeadphoneViewModel);
  swift_endAccess();
}

void sub_10008580C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v23 = a4;
  v8 = type metadata accessor for HeadphoneViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v29 = sub_10008B840;
  v30 = v12;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100019340;
  v28 = &unk_100107210;
  v13 = _Block_copy(&aBlock);
  v14 = a2;
  v15 = a3;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10008A94C(a5, v11, type metadata accessor for HeadphoneViewModel);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = v23;
  v18[3] = v16;
  v18[4] = v14;
  sub_10008A70C(v11, v18 + v17, type metadata accessor for HeadphoneViewModel);
  v29 = sub_10008BE84;
  v30 = v18;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000194C0;
  v28 = &unk_100107260;
  v20 = _Block_copy(&aBlock);
  v21 = v19;
  v22 = v14;

  [v24 animateWithDuration:0 delay:v13 options:v20 animations:1.0 completion:0.0];
  _Block_release(v20);
  _Block_release(v13);
}

void sub_100085AB0(void *a1, void *a2)
{
  [a1 setAlpha:1.0];
  v3 = [a2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setNeedsLayout];

  v5 = [a2 navigationController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 parentViewController];

  if (!v7)
  {
    return;
  }

  v8 = [v7 view];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  [v8 layoutIfNeeded];
}

void sub_100085BC4(int a1, id a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    [a2 removeFromSuperview];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer);
    *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer) = a4;
    v9 = Strong;

    v10 = a4;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v11[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning] = 0;
  }

  if ((*(a5 + *(type metadata accessor for HeadphoneViewModel(0) + 60)) & 1) == 0)
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
      swift_beginAccess();
      v15 = *&v13[v14];
      if (v15)
      {
        v16 = v15;

        v17 = *&v16[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView + 8];
        v18 = *&v16[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];

        swift_getObjectType();
        dispatch thunk of VideoPlaybackControllable.stop()();
      }

      else
      {
      }
    }
  }
}

void sub_100085D30()
{
  v1 = v0;
  v176 = type metadata accessor for HeadphoneBatteryInfo(0);
  v172 = *(v176 - 8);
  v2 = *(v172 + 64);
  v3 = __chkstk_darwin(v176);
  v168 = v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v166 = v164 - v6;
  v7 = __chkstk_darwin(v5);
  v167 = v164 - v8;
  v9 = __chkstk_darwin(v7);
  v173 = v164 - v10;
  v11 = __chkstk_darwin(v9);
  v174 = v164 - v12;
  v13 = __chkstk_darwin(v11);
  v169 = v164 - v14;
  v15 = __chkstk_darwin(v13);
  v165 = v164 - v16;
  v17 = __chkstk_darwin(v15);
  v170 = v164 - v18;
  __chkstk_darwin(v17);
  v171 = v164 - v19;
  v20 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v164 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = v164 - v26;
  v28 = type metadata accessor for HeadphoneViewModel(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v177 = v164 - v34;
  v35 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v175 = v1;
  sub_10000E88C(v1 + v35, v27, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_10000E950(v27, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v27, v177, type metadata accessor for HeadphoneViewModel);
  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  v37 = sub_10000A570(v36, qword_10011ED60);
  sub_10008A94C(v177, v33, type metadata accessor for HeadphoneViewModel);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v164[1] = v37;
    v42 = v41;
    v178[0] = v41;
    *v40 = 136315138;
    v43 = *(v28 + 48);
    v44 = sub_100016C48();
    v46 = v45;
    sub_10008AF60(v33, type metadata accessor for HeadphoneViewModel);
    v47 = sub_100078978(v44, v46, v178);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Battery: updateBatteryLevels battery %s", v40, 0xCu);
    sub_10000EA94(v42);
  }

  else
  {

    sub_10008AF60(v33, type metadata accessor for HeadphoneViewModel);
  }

  sub_10008A94C(v177 + *(v28 + 48), v23, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v110 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v82 = v167;
      sub_10008A70C(v23, v167, type metadata accessor for HeadphoneBatteryInfo);
      v111 = &v23[v110];
      v112 = v166;
      sub_10008A70C(v111, v166, type metadata accessor for HeadphoneBatteryInfo);
      v113 = Logger.logObject.getter();
      v114 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v113, v114, "Battery: splitWithoutCase", v115, 2u);
      }

      v116 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v117 = v175;
      swift_beginAccess();
      v118 = *(v117 + v116);
      v119 = v176;
      if (v118)
      {
        v120 = *&v118[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
        v121 = *v82;
        v122 = *(v82 + 8);
        v123 = *(v176 + 28);
        v124 = v118;
        sub_10003CEB8(v122, v82 + v123, v121);
      }

      v125 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
      swift_beginAccess();
      v126 = *(v117 + v125);
      if (v126)
      {
        swift_endAccess();
        v127 = *&v126[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
        v128 = *v112;
        v129 = *(v112 + 8);
        v130 = *(v119 + 28);
        v61 = v126;
        sub_10003CEB8(v129, v112 + v130, v128);
        v131 = v112;
LABEL_46:
        sub_10008AF60(v131, type metadata accessor for HeadphoneBatteryInfo);
        v62 = v82;
        goto LABEL_47;
      }

      sub_10008AF60(v112, type metadata accessor for HeadphoneBatteryInfo);
      v163 = v82;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_31;
      }

      v63 = v168;
      sub_10008A70C(v23, v168, type metadata accessor for HeadphoneBatteryInfo);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Battery: headsetOnly", v66, 2u);
      }

      v67 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
      v68 = v175;
      swift_beginAccess();
      v69 = *(v68 + v67);
      v70 = v176;
      if (v69)
      {
        sub_100008438(&qword_1001200B0, &qword_1000DA550);
        v71 = *(v172 + 72);
        v72 = (*(v172 + 80) + 32) & ~*(v172 + 80);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_1000D5250;
        sub_10008A94C(v63, v73 + v72, type metadata accessor for HeadphoneBatteryInfo);
        v74 = v69;
        sub_100009690(v73);

        swift_setDeallocating();
        sub_10008AF60(v73 + v72, type metadata accessor for HeadphoneBatteryInfo);
        swift_deallocClassInstance();
      }

      v75 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      swift_beginAccess();
      v76 = *(v68 + v75);
      if (v76)
      {
        swift_endAccess();
        v77 = *&v76[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
        v78 = *v63;
        v79 = *(v63 + 8);
        v80 = *(v70 + 28);
        v61 = v76;
        sub_10003CEB8(v79, v63 + v80, v78);
        v62 = v63;
        goto LABEL_47;
      }

      v163 = v63;
    }

    sub_10008AF60(v163, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v177, type metadata accessor for HeadphoneViewModel);
    goto LABEL_55;
  }

  if (!EnumCaseMultiPayload)
  {
    v81 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v82 = v171;
    sub_10008A70C(v23, v171, type metadata accessor for HeadphoneBatteryInfo);
    v83 = &v23[v81];
    v84 = v170;
    sub_10008A70C(v83, v170, type metadata accessor for HeadphoneBatteryInfo);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "Battery: combinedWithCase", v87, 2u);
    }

    v88 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
    v89 = v175;
    swift_beginAccess();
    v90 = *(v89 + v88);
    v91 = v176;
    if (v90)
    {
      v92 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
      v93 = *v82;
      v94 = *(v82 + 8);
      v95 = *(v176 + 28);
      v96 = v90;
      sub_10003CEB8(v94, v82 + v95, v93);
    }

    v97 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
    swift_beginAccess();
    v98 = *(v89 + v97);
    if (v98)
    {
      v99 = *&v98[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
      v100 = *v84;
      v101 = *(v84 + 8);
      v102 = *(v91 + 28);
      v103 = v98;
      sub_10003CEB8(v101, v84 + v102, v100);
    }

    v104 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
    swift_beginAccess();
    v105 = *(v89 + v104);
    if (!v105)
    {
      v162 = v84;
      goto LABEL_54;
    }

    swift_endAccess();
    sub_100008438(&qword_1001200B0, &qword_1000DA550);
    v106 = *(v172 + 72);
    v107 = (*(v172 + 80) + 32) & ~*(v172 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1000D66A0;
    sub_10008A94C(v82, v108 + v107, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A94C(v84, v108 + v107 + v106, type metadata accessor for HeadphoneBatteryInfo);
    v109 = v105;
    sub_100009690(v108);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10008AF60(v84, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v82, type metadata accessor for HeadphoneBatteryInfo);
LABEL_31:
    sub_10008AF60(v177, type metadata accessor for HeadphoneViewModel);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v132 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
    v133 = *(v132 + 48);
    v134 = *(v132 + 64);
    v82 = v169;
    sub_10008A70C(v23, v169, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A70C(&v23[v133], v174, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A70C(&v23[v134], v173, type metadata accessor for HeadphoneBatteryInfo);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&_mh_execute_header, v135, v136, "Battery: splitWithCase", v137, 2u);
    }

    v138 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
    v139 = v175;
    swift_beginAccess();
    v140 = *(v139 + v138);
    v141 = v176;
    if (v140)
    {
      v142 = *&v140[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
      v143 = *v82;
      v144 = *(v82 + 8);
      v145 = *(v176 + 28);
      v146 = v140;
      sub_10003CEB8(v144, v82 + v145, v143);
    }

    v147 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
    swift_beginAccess();
    v148 = *(v139 + v147);
    if (v148)
    {
      v149 = *&v148[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
      v150 = v174;
      v151 = *v174;
      v152 = *(v174 + 8);
      v153 = *(v141 + 28);
      v154 = v148;
      sub_10003CEB8(v152, v150 + v153, v151);
    }

    v155 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
    swift_beginAccess();
    v156 = *(v139 + v155);
    if (v156)
    {
      swift_endAccess();
      v157 = *&v156[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
      v158 = v173;
      v159 = *v173;
      v160 = *(v173 + 8);
      v161 = *(v141 + 28);
      v61 = v156;
      sub_10003CEB8(v160, v158 + v161, v159);
      sub_10008AF60(v158, type metadata accessor for HeadphoneBatteryInfo);
      v131 = v174;
      goto LABEL_46;
    }

    sub_10008AF60(v173, type metadata accessor for HeadphoneBatteryInfo);
    v162 = v174;
LABEL_54:
    sub_10008AF60(v162, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v82, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v177, type metadata accessor for HeadphoneViewModel);
    goto LABEL_55;
  }

  v49 = v165;
  sub_10008A70C(v23, v165, type metadata accessor for HeadphoneBatteryInfo);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Battery: combinedWithoutCase", v52, 2u);
  }

  v53 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  v54 = v175;
  swift_beginAccess();
  v55 = *(v54 + v53);
  v56 = v176;
  if (v55)
  {
    swift_endAccess();
    v57 = *&v55[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_batteryView];
    v58 = *v49;
    v59 = *(v49 + 8);
    v60 = *(v56 + 28);
    v61 = v55;
    sub_10003CEB8(v59, v49 + v60, v58);
    v62 = v49;
LABEL_47:
    sub_10008AF60(v62, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v177, type metadata accessor for HeadphoneViewModel);

    return;
  }

  sub_10008AF60(v49, type metadata accessor for HeadphoneBatteryInfo);
  sub_10008AF60(v177, type metadata accessor for HeadphoneViewModel);
LABEL_55:
  swift_endAccess();
}

void sub_100086DA4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  if (v1)
  {
    v2 = v1;

    [v2 removeFromSuperview];
    Strong = v2;
  }

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = *&v3[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  if (v4)
  {
    v5 = v4;

    v3 = [v5 view];
    [v3 removeFromSuperview];
  }

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v8 = *&v6[v7];
  if (v8)
  {
    v9 = v8;

    [v9 setActive:1];
    v6 = v9;
  }

  v10 = swift_unknownObjectUnownedLoadStrong();
  v11 = [v10 view];

  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v11 setNeedsLayout];

  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = [v12 navigationController];

  if (v13)
  {
    v14 = [v13 parentViewController];

    if (v14)
    {
      v15 = [v14 view];

      if (v15)
      {
        [v15 layoutIfNeeded];

        return;
      }

LABEL_14:
      __break(1u);
    }
  }
}

void sub_100086F94(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v132 = a3;
  v127 = a2;
  v129 = a1;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v125 = *(v5 - 8);
  v6 = *(v125 + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v130 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v124 - v9;
  v10 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v126 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v124 - v14;
  v16 = type metadata accessor for HeadphoneAssets(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v128 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v134 = &v124 - v21;
  v22 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v124 - v24;
  v26 = type metadata accessor for HeadphoneViewModel(0);
  v27 = *(v26 - 1);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v133 = v4;
  sub_10000E88C(v4 + v31, v25, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_10000E950(v25, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v25, v30, type metadata accessor for HeadphoneViewModel);
  v32 = v26[11];
  sub_10000E88C(&v30[v32], v15, &qword_10011CCF0, qword_1000D61B0);
  v33 = *(v17 + 48);
  v34 = v30;
  if (v33(v15, 1, v16) == 1)
  {
    sub_10008AF60(v30, type metadata accessor for HeadphoneViewModel);
    sub_10000E950(v15, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v35 = v16;
  v36 = v15;
  v37 = v134;
  sub_10008A70C(v36, v134, type metadata accessor for HeadphoneAssets);
  if (v30[v26[15]] == 1)
  {
    v38 = &v30[v26[14]];
    v39 = *(v38 + 11);
    v40 = *(v38 + 13);
    v148 = *(v38 + 12);
    v149 = v40;
    v41 = *(v38 + 7);
    v42 = *(v38 + 9);
    v144 = *(v38 + 8);
    v145 = v42;
    v43 = *(v38 + 9);
    v44 = *(v38 + 11);
    v146 = *(v38 + 10);
    v147 = v44;
    v45 = *(v38 + 3);
    v46 = *(v38 + 5);
    v140 = *(v38 + 4);
    v141 = v46;
    v47 = *(v38 + 5);
    v48 = *(v38 + 7);
    v142 = *(v38 + 6);
    v143 = v48;
    v49 = *(v38 + 1);
    v136 = *v38;
    v137 = v49;
    v50 = *(v38 + 3);
    v52 = *v38;
    v51 = *(v38 + 1);
    v138 = *(v38 + 2);
    v139 = v50;
    v162 = v39;
    v163 = v148;
    v53 = *(v38 + 14);
    v164 = *(v38 + 13);
    v165 = v53;
    v158 = v41;
    v159 = v144;
    v160 = v43;
    v161 = v146;
    v154 = v45;
    v155 = v140;
    v156 = v47;
    v157 = v142;
    v150 = v53;
    v151 = v52;
    v152 = v51;
    v153 = v138;
    if (sub_100026134(&v151) != 1)
    {
      v166[12] = v163;
      v166[13] = v164;
      v166[14] = v165;
      v166[8] = v159;
      v166[9] = v160;
      v166[10] = v161;
      v166[11] = v162;
      v166[4] = v155;
      v166[5] = v156;
      v166[6] = v157;
      v166[7] = v158;
      v166[0] = v151;
      v166[1] = v152;
      v166[2] = v153;
      v166[3] = v154;
      v54 = &v30[v32];
      v55 = v126;
      sub_10000E88C(v54, v126, &qword_10011CCF0, qword_1000D61B0);
      if (v33(v55, 1, v16) == 1)
      {
        sub_10000E950(v55, &qword_10011CCF0, qword_1000D61B0);
      }

      else
      {
        v56 = v55 + v16[10];
        v57 = *v56;
        v58 = *(v56 + 8);
        sub_10000E88C(&v136, &v135, &unk_10011FF80, &qword_1000D8590);
        v59 = v57;
        sub_10008AF60(v55, type metadata accessor for HeadphoneAssets);
        if (v57)
        {
          sub_100008438(&qword_1001200B0, &qword_1000DA550);
          v60 = *(v125 + 72);
          v61 = (*(v125 + 80) + 32) & ~*(v125 + 80);
          v62 = swift_allocObject();
          *(v62 + 16) = xmmword_1000D66A0;
          v63 = v62 + v61;
          sub_10008A94C(v129, v63, type metadata accessor for HeadphoneBatteryInfo);
          sub_10008A94C(v127, v63 + v60, type metadata accessor for HeadphoneBatteryInfo);
          objc_allocWithZone(type metadata accessor for HeadphoneMovieBatteryView());
          v64 = v59;
          v65 = v62;
          v66 = v133;
          v67 = sub_100008B78(v64, v58, v166, v65);
          sub_10008A83C(v67, v132, &off_1001031F8);

          sub_10008AF60(v134, type metadata accessor for HeadphoneAssets);
          sub_10008AF60(v34, type metadata accessor for HeadphoneViewModel);
          v68 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
LABEL_38:
          swift_beginAccess();
          v123 = *(v66 + v68);
          *(v66 + v68) = v67;

          return;
        }

        sub_10000E950(&v136, &unk_10011FF80, &qword_1000D8590);
        v37 = v134;
      }
    }
  }

  v69 = *(v37 + v16[8]);
  if (v69 >> 62)
  {
    if (v69 < 0)
    {
      v81 = *(v37 + v16[8]);
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 3)
    {
      goto LABEL_14;
    }
  }

  else if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
LABEL_14:
    if (qword_10011C6D8 != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    sub_10000A570(v70, qword_10011ED60);
    v71 = v128;
    sub_10008A94C(v37, v128, type metadata accessor for HeadphoneAssets);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v151 = v75;
      *v74 = 136315138;
      *&v136 = *&v71[v35[8]];

      sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
      v76 = String.init<A>(reflecting:)();
      v78 = v77;
      sub_10008AF60(v71, type metadata accessor for HeadphoneAssets);
      v79 = sub_100078978(v76, v78, &v151);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v72, v73, "Expected 3 images, only have: %s", v74, 0xCu);
      sub_10000EA94(v75);

      v37 = v134;
    }

    else
    {

      sub_10008AF60(v71, type metadata accessor for HeadphoneAssets);
    }

    sub_10008AF60(v37, type metadata accessor for HeadphoneAssets);
    v80 = v34;
    goto LABEL_35;
  }

  v124 = v34;
  if ((v69 & 0xC000000000000001) != 0)
  {
    v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }

  v82 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v82)
  {
    if (v82 != 1)
    {
      v83 = *(v69 + 32);
      v84 = *(v69 + 40);
      v85 = v83;
      v86 = v84;
LABEL_27:
      v87 = v86;
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1000D5DA0;
      *(v88 + 32) = v85;
      *(v88 + 40) = v87;
      v89 = v131;
      sub_10008A94C(v129, v131, type metadata accessor for HeadphoneBatteryInfo);
      v129 = v85;
      v128 = v87;
      v90 = sub_10002A38C(v88, v89, 0, 0);
      sub_100029E98();
      v91 = (v124 + v26[14]);
      v92 = v91[13];
      v163 = v91[12];
      v164 = v92;
      v165 = v91[14];
      v93 = v91[9];
      v159 = v91[8];
      v160 = v93;
      v94 = v91[11];
      v161 = v91[10];
      v162 = v94;
      v95 = v91[5];
      v155 = v91[4];
      v156 = v95;
      v96 = v91[7];
      v157 = v91[6];
      v158 = v96;
      v97 = v91[1];
      v151 = *v91;
      v152 = v97;
      v98 = v91[3];
      v153 = v91[2];
      v154 = v98;
      v99 = sub_100026134(&v151);
      v100 = *&v90[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView];
      if (v100)
      {
        v101 = *(&v163 + 1);
        if (v99 == 1)
        {
          v101 = 0.0;
        }

        [v100 setSpacing:{v101, v124}];
      }

      v102 = v90;
      sub_10008A83C(v102, v132, &off_100104338);
      v103 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v104 = v133;
      swift_beginAccess();
      v105 = *(v104 + v103);
      *(v104 + v103) = v102;

      v106 = v37;
      v107 = *(v37 + v16[9]);
      if (!v107)
      {

        sub_10008AF60(v106, type metadata accessor for HeadphoneAssets);
        v80 = v124;
LABEL_35:
        sub_10008AF60(v80, type metadata accessor for HeadphoneViewModel);
        return;
      }

      sub_10008A94C(v127, v130, type metadata accessor for HeadphoneBatteryInfo);
      v108 = v91[13];
      v148 = v91[12];
      v149 = v108;
      v150 = v91[14];
      v109 = v91[9];
      v144 = v91[8];
      v145 = v109;
      v110 = v91[11];
      v146 = v91[10];
      v147 = v110;
      v111 = v91[5];
      v140 = v91[4];
      v141 = v111;
      v112 = v91[7];
      v142 = v91[6];
      v143 = v112;
      v113 = v91[1];
      v136 = *v91;
      v137 = v113;
      v114 = v91[3];
      v138 = v91[2];
      v139 = v114;
      if (sub_100026134(&v136) == 1)
      {
        v115 = 0;
        v116 = 0;
      }

      else
      {
        v115 = *(&v147 + 1);
        v116 = v148;
      }

      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_1000D78E0;
      *(v117 + 32) = v107;
      v118 = v130;
      v119 = v131;
      sub_10008A94C(v130, v131, type metadata accessor for HeadphoneBatteryInfo);
      objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
      v120 = v107;
      v121 = sub_100028B48(_swiftEmptyArrayStorage, v117, v119, v115, v116);
      sub_10008AF60(v118, type metadata accessor for HeadphoneBatteryInfo);
      v122 = v134;
      sub_100029E98();
      v67 = v121;
      sub_10008A83C(v67, v132, &off_100104338);

      sub_10008AF60(v122, type metadata accessor for HeadphoneAssets);
      sub_10008AF60(v124, type metadata accessor for HeadphoneViewModel);
      v68 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
      v66 = v133;
      goto LABEL_38;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100087C74(uint64_t a1, char *a2)
{
  v74 = a2;
  v72 = a1;
  v3 = type metadata accessor for HeadphoneBatteryInfo(0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v71 - v8;
  v10 = type metadata accessor for HeadphoneAssets(0);
  v77 = *(v10 - 8);
  v11 = v77[8];
  v12 = __chkstk_darwin(v10);
  v75 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v76 = &v71 - v14;
  v15 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for HeadphoneViewModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v25 = v2 + v24;
  v26 = v19;
  sub_10000E88C(v25, v18, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_10000E950(v18, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v18, v23, type metadata accessor for HeadphoneViewModel);
  sub_10000E88C(&v23[*(v19 + 44)], v9, &qword_10011CCF0, qword_1000D61B0);
  if ((v77[6])(v9, 1, v10) == 1)
  {
    sub_10008AF60(v23, type metadata accessor for HeadphoneViewModel);
    sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v27 = v10;
  v28 = v76;
  sub_10008A70C(v9, v76, type metadata accessor for HeadphoneAssets);
  v29 = *(v28 + *(v27 + 32));
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v43 = *(v28 + *(v27 + 32));
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_7;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_7:
    if (qword_10011C6D8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000A570(v30, qword_10011ED60);
    v31 = v75;
    sub_10008A94C(v28, v75, type metadata accessor for HeadphoneAssets);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v79[0] = v35;
      *v34 = 136315138;
      v78 = *(v31 + *(v27 + 32));

      sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
      v36 = String.init<A>(reflecting:)();
      v37 = v31;
      v38 = v36;
      v39 = v23;
      v41 = v40;
      sub_10008AF60(v37, type metadata accessor for HeadphoneAssets);
      v42 = sub_100078978(v38, v41, v79);
      v23 = v39;

      *(v34 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v32, v33, "Expected 2 images, only have: %s", v34, 0xCu);
      sub_10000EA94(v35);
      v28 = v76;
    }

    else
    {

      sub_10008AF60(v31, type metadata accessor for HeadphoneAssets);
    }

    sub_10008AF60(v28, type metadata accessor for HeadphoneAssets);
    sub_10008AF60(v23, type metadata accessor for HeadphoneViewModel);
    return;
  }

  v71 = v2;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v45 = v26;
    v46 = v23;
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  v44 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v44 == 1)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v45 = v26;
  v46 = v23;
  v47 = *(v29 + 32);
  v48 = *(v29 + 40);
  v49 = v47;
  v50 = v48;
LABEL_20:
  v51 = v50;
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5DA0;
  *(inited + 32) = v49;
  *(inited + 40) = v51;
  v53 = v73;
  sub_10008A94C(v72, v73, type metadata accessor for HeadphoneBatteryInfo);
  v77 = v49;
  v54 = v51;
  v55 = sub_10002A38C(inited, v53, 0, 0);
  sub_100029E98();
  v56 = (v46 + *(v45 + 56));
  v57 = v56[13];
  v80 = v56[12];
  v81 = v57;
  v82 = v56[14];
  v58 = v56[9];
  v79[8] = v56[8];
  v79[9] = v58;
  v59 = v56[11];
  v79[10] = v56[10];
  v79[11] = v59;
  v60 = v56[5];
  v79[4] = v56[4];
  v79[5] = v60;
  v61 = v56[7];
  v79[6] = v56[6];
  v79[7] = v61;
  v62 = v56[1];
  v79[0] = *v56;
  v79[1] = v62;
  v63 = v56[3];
  v79[2] = v56[2];
  v79[3] = v63;
  v64 = sub_100026134(v79);
  v65 = *&v55[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView];
  if (v65)
  {
    v66 = *(&v80 + 1);
    if (v64 == 1)
    {
      v66 = 0.0;
    }

    [v65 setSpacing:{v66, v71}];
  }

  v67 = v55;
  sub_10008A83C(v67, v74, &off_100104338);

  sub_10008AF60(v28, type metadata accessor for HeadphoneAssets);
  sub_10008AF60(v46, type metadata accessor for HeadphoneViewModel);
  v68 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  v69 = v71;
  swift_beginAccess();
  v70 = *(v69 + v68);
  *(v69 + v68) = v67;
}

void sub_100088428(uint64_t a1, id *a2, uint64_t a3, char *a4)
{
  v119 = a4;
  v112 = a3;
  v113 = a2;
  v114 = a1;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v115 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v117 = &v104 - v10;
  v11 = __chkstk_darwin(v9);
  v120 = &v104 - v12;
  __chkstk_darwin(v11);
  *&v118 = &v104 - v13;
  v14 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v104 - v16;
  v18 = type metadata accessor for HeadphoneAssets(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v104 - v24;
  v116 = v4;
  v26 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel);
  swift_beginAccess();
  v27 = type metadata accessor for HeadphoneViewModel(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v28 + 48;
  if (v29(v26, 1, v27))
  {
    (*(v19 + 56))(v17, 1, 1, v18);
LABEL_4:
    sub_10000E950(v17, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v109 = v29;
  v110 = v23;
  v108 = v30;
  v31 = v120;
  v111 = v25;
  sub_10000E88C(v26 + *(v27 + 44), v17, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    goto LABEL_4;
  }

  v32 = v111;
  sub_10008A70C(v17, v111, type metadata accessor for HeadphoneAssets);
  v33 = *(v32 + v18[8]);
  if (v33 >> 62)
  {
    if (v33 < 0)
    {
      v101 = *(v32 + v18[8]);
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v118;
  if (v34 >= 3)
  {
    v105 = v27;
    v107 = v18;
    v110 = (v33 & 0xC000000000000001);
    if ((v33 & 0xC000000000000001) != 0)
    {
      v18 = v33;
      v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v18 = v33;
      v46 = *(v33 + 32);
    }

    v47 = v46;
    sub_10008A94C(v114, v35, type metadata accessor for HeadphoneBatteryInfo);
    v114 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    v118 = xmmword_1000D78E0;
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v47;
    sub_10008A94C(v35, v31, type metadata accessor for HeadphoneBatteryInfo);
    v49 = v47;
    v50 = sub_10002A38C(inited, v31, 0, 0);
    v33 = v50;
    v51 = *(v50 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
    v104 = v26;
    if ((v51 & 0xC000000000000001) != 0)
    {
      v102 = v50;

      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_18;
    }

    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v52 = *(v51 + 32);
      v53 = v50;
      v54 = v52;
LABEL_18:
      v55 = v18;
      v18 = &unk_100116000;
      [v54 setTintColor:{0, v104}];

      sub_10008AF60(v35, type metadata accessor for HeadphoneBatteryInfo);
      sub_100029E98();
      v33 = v33;
      sub_10008A83C(v33, v119, &off_100104338);

      v56 = v113;
      if (v110)
      {
        v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v58 = v117;
      }

      else
      {
        v58 = v117;
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_44;
        }

        v57 = v55[5];
      }

      sub_10008A94C(v56, v58, type metadata accessor for HeadphoneBatteryInfo);
      v59 = swift_initStackObject();
      *(v59 + 16) = v118;
      *(v59 + 32) = v57;
      sub_10008A94C(v58, v31, type metadata accessor for HeadphoneBatteryInfo);
      v35 = v57;
      v60 = sub_10002A38C(v59, v31, 0, 0);
      v26 = v60;
      v61 = *&v60[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
      v106 = v49;
      if ((v61 & 0xC000000000000001) == 0)
      {
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v62 = *(v61 + 32);
          v63 = v60;
          v64 = v62;
          goto LABEL_27;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

LABEL_42:
      v103 = v26;

      v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_27:
      [v64 *(v18 + 149)];

      sub_10008AF60(v117, type metadata accessor for HeadphoneBatteryInfo);
      v65 = v111;
      sub_100029E98();
      v66 = v26;
      sub_10008A83C(v66, v119, &off_100104338);

      v67 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v68 = v116;
      swift_beginAccess();
      v69 = *(v68 + v67);
      *(v68 + v67) = v33;
      v70 = v33;

      v71 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
      swift_beginAccess();
      v72 = *(v68 + v71);
      *(v68 + v71) = v66;
      v73 = v66;

      v74 = *(v65 + v107[9]);
      if (v74)
      {
        v113 = v70;
        v117 = v35;
        sub_10008A94C(v112, v115, type metadata accessor for HeadphoneBatteryInfo);
        v75 = v104;
        v76 = v105;
        v77 = v109(v104, 1, v105);
        v110 = v73;
        if (v77)
        {
          v78 = 0;
          v79 = 0;
          v81 = v119;
          v80 = v120;
        }

        else
        {
          v82 = v75 + *(v76 + 56);
          v83 = *(v82 + 208);
          v121[12] = *(v82 + 192);
          v121[13] = v83;
          v121[14] = *(v82 + 224);
          v84 = *(v82 + 144);
          v121[8] = *(v82 + 128);
          v121[9] = v84;
          v85 = *(v82 + 176);
          v121[10] = *(v82 + 160);
          v121[11] = v85;
          v86 = *(v82 + 80);
          v121[4] = *(v82 + 64);
          v121[5] = v86;
          v87 = *(v82 + 112);
          v121[6] = *(v82 + 96);
          v121[7] = v87;
          v88 = *(v82 + 16);
          v121[0] = *v82;
          v121[1] = v88;
          v89 = *(v82 + 48);
          v121[2] = *(v82 + 32);
          v121[3] = v89;
          v90 = sub_100026134(v121);
          v81 = v119;
          v80 = v120;
          if (v90 == 1)
          {
            v78 = 0;
            v79 = 0;
          }

          else
          {
            v78 = *(v82 + 184);
            v79 = *(v82 + 192);
          }
        }

        v91 = swift_allocObject();
        *(v91 + 16) = v118;
        *(v91 + 32) = v74;
        v92 = v115;
        sub_10008A94C(v115, v80, type metadata accessor for HeadphoneBatteryInfo);
        v93 = objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
        v94 = v74;
        v95 = sub_100028B48(_swiftEmptyArrayStorage, v91, v80, v78, v79);
        sub_10008AF60(v92, type metadata accessor for HeadphoneBatteryInfo);
        v96 = v111;
        sub_100029E98();
        v97 = v95;
        sub_10008A83C(v97, v81, &off_100104338);

        sub_10008AF60(v96, type metadata accessor for HeadphoneAssets);
        v98 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
        v99 = v116;
        swift_beginAccess();
        v100 = *(v99 + v98);
        *(v99 + v98) = v97;
      }

      else
      {

        sub_10008AF60(v65, type metadata accessor for HeadphoneAssets);
      }

      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000A570(v36, qword_10011ED60);
  v37 = v110;
  sub_10008A94C(v32, v110, type metadata accessor for HeadphoneAssets);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v121[0] = v41;
    *v40 = 136315138;
    v122 = *&v37[v18[8]];

    sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
    v42 = String.init<A>(reflecting:)();
    v44 = v43;
    sub_10008AF60(v37, type metadata accessor for HeadphoneAssets);
    v45 = sub_100078978(v42, v44, v121);

    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "Expected 3 images, only have: %s", v40, 0xCu);
    sub_10000EA94(v41);
  }

  else
  {

    sub_10008AF60(v37, type metadata accessor for HeadphoneAssets);
  }

  sub_10008AF60(v111, type metadata accessor for HeadphoneAssets);
}

void sub_100088EF8(SEL *a1, uint64_t a2, char *a3)
{
  v72 = a3;
  v73 = a2;
  v75 = a1;
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v71 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v74 = (&v66 - v9);
  __chkstk_darwin(v8);
  v11 = &v66 - v10;
  v12 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v66 - v14;
  v16 = type metadata accessor for HeadphoneAssets(0);
  v17 = *(v16 - 1);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = v3;
  v25 = v3 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v26 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_4:
    sub_10000E950(v15, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  *&v68 = v21;
  v67 = v3;
  v69 = v11;
  v70 = v23;
  sub_10000E88C(&v25[*(v26 + 44)], v15, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  v27 = v70;
  sub_10008A70C(v15, v70, type metadata accessor for HeadphoneAssets);
  v28 = *(v27 + v16[8]);
  if (v28 >> 62)
  {
    if (v28 < 0)
    {
      v63 = *(v27 + v16[8]);
    }

    v29 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v75;
  if (v29 >= 2)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v41 = v69;
    }

    else
    {
      v41 = v69;
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_34;
      }

      v24 = *(v28 + 32);
    }

    sub_10008A94C(v30, v41, type metadata accessor for HeadphoneBatteryInfo);
    v30 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    v68 = xmmword_1000D78E0;
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v24;
    v16 = v74;
    sub_10008A94C(v41, v74, type metadata accessor for HeadphoneBatteryInfo);
    v75 = v24;
    v43 = sub_10002A38C(inited, v16, 0, 0);
    v23 = v43;
    v44 = *&v43[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    if ((v44 & 0xC000000000000001) != 0)
    {
      v64 = v43;

      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_18;
    }

    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v45 = *(v44 + 32);
      v46 = v43;
      v47 = v45;
LABEL_18:
      v24 = &unk_100116000;
      [v47 setTintColor:0];

      sub_10008AF60(v69, type metadata accessor for HeadphoneBatteryInfo);
      sub_100029E98();
      v16 = v23;
      v23 = v72;
      sub_10008A83C(v16, v72, &off_100104338);

      v48 = v73;
      if ((v28 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v50 = v74;
      }

      else
      {
        v50 = v74;
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_37;
        }

        v49 = *(v28 + 40);
      }

      v28 = v71;
      sub_10008A94C(v48, v71, type metadata accessor for HeadphoneBatteryInfo);
      v51 = swift_initStackObject();
      *(v51 + 16) = v68;
      *(v51 + 32) = v49;
      sub_10008A94C(v28, v50, type metadata accessor for HeadphoneBatteryInfo);
      v30 = v49;
      v52 = sub_10002A38C(v51, v50, 0, 0);
      v41 = v52;
      v53 = *&v52[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
      if ((v53 & 0xC000000000000001) == 0)
      {
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v54 = *(v53 + 32);
          v55 = v52;
          v56 = v54;
LABEL_27:
          [v56 v24[149]];

          sub_10008AF60(v28, type metadata accessor for HeadphoneBatteryInfo);
          sub_100029E98();
          v57 = v41;
          sub_10008A83C(v57, v23, &off_100104338);

          sub_10008AF60(v27, type metadata accessor for HeadphoneAssets);
          v58 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
          v59 = v67;
          swift_beginAccess();
          v60 = *(v59 + v58);
          *(v59 + v58) = v16;

          v61 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
          swift_beginAccess();
          v62 = *(v59 + v61);
          *(v59 + v61) = v57;

          return;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_35:
      v65 = v41;

      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_27;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000A570(v31, qword_10011ED60);
  v32 = v68;
  sub_10008A94C(v27, v68, type metadata accessor for HeadphoneAssets);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v77 = v36;
    *v35 = 136315138;
    v76 = *(v32 + v16[8]);

    sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
    v37 = String.init<A>(reflecting:)();
    v39 = v38;
    sub_10008AF60(v32, type metadata accessor for HeadphoneAssets);
    v40 = sub_100078978(v37, v39, &v77);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Expected 2 images, only have: %s", v35, 0xCu);
    sub_10000EA94(v36);

    v27 = v70;
  }

  else
  {

    sub_10008AF60(v32, type metadata accessor for HeadphoneAssets);
  }

  sub_10008AF60(v27, type metadata accessor for HeadphoneAssets);
}

void sub_1000897B0(uint64_t a1, char *a2)
{
  v92 = a2;
  v93 = a1;
  v3 = type metadata accessor for HeadphoneBatteryInfo(0);
  v96 = *(v3 - 8);
  v4 = *(v96 + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v95 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v87 - v7;
  v8 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v87 - v10;
  v12 = type metadata accessor for HeadphoneAssets(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2;
  v18 = v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v19 = type metadata accessor for HeadphoneViewModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v22 = v20 + 48;
  if (v21(v18, 1, v19))
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_4:
    sub_10000E950(v11, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v89 = v22;
  v90 = v21;
  v24 = v95;
  v23 = v96;
  v88 = v17;
  v91 = v16;
  sub_10000E88C(v18 + *(v19 + 44), v11, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  v25 = v91;
  sub_10008A70C(v11, v91, type metadata accessor for HeadphoneAssets);
  v26 = *(v25 + *(v12 + 32));
  if (v26 >> 62)
  {
    if (v26 < 0)
    {
      v85 = *(v25 + *(v12 + 32));
    }

    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v24;
  if (v27)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v29 = v93;
      v30 = v94;
    }

    else
    {
      v29 = v93;
      v30 = v94;
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return;
      }

      v31 = *(v26 + 32);
    }

    sub_10008A94C(v29, v30, type metadata accessor for HeadphoneBatteryInfo);
    v32 = [objc_opt_self() systemGray2Color];
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v31;
    sub_10008A94C(v30, v28, type metadata accessor for HeadphoneBatteryInfo);
    v34 = v31;
    v35 = sub_10002A38C(inited, v28, 0, 0);
    v36 = v35;
    v37 = *&v35[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    v38 = v92;
    v39 = v88;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v86 = v35;

      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_14;
    }

    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v40 = *(v37 + 32);
      v41 = v35;
      v42 = v40;
LABEL_14:
      [v42 setTintColor:v32];

      sub_10008AF60(v94, type metadata accessor for HeadphoneBatteryInfo);
      v43 = v36;
      sub_10008A83C(v43, v38, &off_100104338);

      sub_10008AF60(v25, type metadata accessor for HeadphoneAssets);
      v44 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      swift_beginAccess();
      v45 = *(v39 + v44);
      *(v39 + v44) = v43;

      return;
    }

    goto LABEL_31;
  }

  if (v90(v18, 1, v19))
  {
    goto LABEL_24;
  }

  v46 = (v18 + *(v19 + 56));
  v47 = v46[11];
  v48 = v46[13];
  v109 = v46[12];
  v110 = v48;
  v49 = v46[13];
  v111 = v46[14];
  v50 = v46[7];
  v51 = v46[9];
  v105 = v46[8];
  v106 = v51;
  v52 = v46[9];
  v53 = v46[11];
  v107 = v46[10];
  v108 = v53;
  v54 = v46[3];
  v55 = v46[5];
  v101 = v46[4];
  v102 = v55;
  v56 = v46[5];
  v57 = v46[7];
  v103 = v46[6];
  v104 = v57;
  v58 = v46[1];
  v98[0] = *v46;
  v98[1] = v58;
  v59 = v46[3];
  v61 = *v46;
  v60 = v46[1];
  v99 = v46[2];
  v100 = v59;
  v124 = v109;
  v125 = v49;
  v126 = v46[14];
  v120 = v105;
  v121 = v52;
  v122 = v107;
  v123 = v47;
  v116 = v101;
  v117 = v56;
  v118 = v103;
  v119 = v50;
  v112 = v61;
  v113 = v60;
  v114 = v99;
  v115 = v54;
  if (sub_100026134(&v112) == 1)
  {
    goto LABEL_24;
  }

  v127[4] = v116;
  v127[5] = v117;
  v127[2] = v114;
  v127[3] = v115;
  v127[8] = v120;
  v127[9] = v121;
  v127[6] = v118;
  v127[7] = v119;
  v127[14] = v126;
  v127[13] = v125;
  v127[12] = v124;
  v127[10] = v122;
  v127[11] = v123;
  v127[0] = v112;
  v127[1] = v113;
  v62 = v25 + *(v12 + 40);
  v63 = *v62;
  if (!*v62)
  {
LABEL_24:
    sub_10008AF60(v25, type metadata accessor for HeadphoneAssets);
  }

  else
  {
    v64 = v88;
    v65 = *(v62 + 8);
    sub_100008438(&qword_1001200B0, &qword_1000DA550);
    v66 = *(v23 + 72);
    v67 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1000D5250;
    sub_10008A94C(v93, v68 + v67, type metadata accessor for HeadphoneBatteryInfo);
    objc_allocWithZone(type metadata accessor for HeadphoneMovieBatteryView());
    v69 = v63;
    sub_10000E88C(v98, &v97, &unk_10011FF80, &qword_1000D8590);
    v70 = sub_100008B78(v69, v65, v127, v68);
    v71 = *&v70[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
    objc_opt_self();
    v72 = swift_dynamicCastObjCClass();
    if (v72)
    {
      v73 = v72;
      v74 = objc_opt_self();
      v75 = v71;
      v76 = [v74 currentTraitCollection];
      v77 = [v76 userInterfaceStyle];

      if (v77 == 2)
      {
        v78 = 1;
      }

      else
      {
        v78 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v80 = v79;
      v81 = v78;
      v25 = v91;
      [v73 updateViewForAssetType:v81 adjustmentsURL:v79];
    }

    v82 = v70;
    sub_10008A83C(v82, v92, &off_1001031F8);

    sub_10008AF60(v25, type metadata accessor for HeadphoneAssets);
    v83 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
    swift_beginAccess();
    v84 = *(v64 + v83);
    *(v64 + v83) = v82;
  }
}

void sub_100089FA0(void *a1)
{
  if (!*a1)
  {
    return;
  }

  v1 = *(*a1 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v1 < 0)
  {
    v13 = *(*a1 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (v2)
  {
LABEL_4:
    v3 = objc_opt_self();
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = v3;
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        ++v5;
        v8 = [v4 currentTraitCollection];
        v9 = [v8 userInterfaceStyle];

        if (v9 == 2)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        URL._bridgeToObjectiveC()(1);
        v12 = v11;
        [v7 updateViewForAssetType:v10 adjustmentsURL:v11];
      }

      while (v2 != v5);
    }
  }
}

void *sub_10008A138(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100123148);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_10008A270(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_100123148);
  v5 = *(v3 + qword_100123148 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HeadphoneBatteryViewController.SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10008A348()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_100123148);
  v3 = *(v1 + qword_100123148 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HeadphoneBatteryViewController.SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for HeadphoneBatteryViewController()
{
  result = qword_10011EE00;
  if (!qword_10011EE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008A56C()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10008A6B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008A774(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

id sub_10008A83C(void *a1, char *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews;
  swift_beginAccess();
  v7 = *&a2[v6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a2[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000CC450(0, v7[2] + 1, 1, v7);
    *&a2[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1000CC450((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = a3;
  *&a2[v6] = v7;
  swift_endAccess();
  v12 = a1;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  return [a2 addSubview:v12];
}

uint64_t sub_10008A94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10008A9C4()
{
  result = qword_10011EEE0;
  if (!qword_10011EEE0)
  {
    sub_10000A408(&qword_10011EEE8, &qword_1000D8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEE0);
  }

  return result;
}

uint64_t sub_10008AA48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008AA74(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.font.setter();
}

unint64_t sub_10008AAA0()
{
  result = qword_10011EEF8;
  if (!qword_10011EEF8)
  {
    sub_10000A408(&qword_10011EEB8, &qword_1000D8D90);
    sub_10000A408(&qword_10011EEB0, &qword_1000D8D88);
    sub_10001C3D8(&qword_10011EEF0, &qword_10011EEB0, &qword_1000D8D88);
    swift_getOpaqueTypeConformance2();
    sub_10001C3D8(&qword_10011EF00, &qword_10011EF08, &qword_1000D8DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEF8);
  }

  return result;
}

unint64_t sub_10008ABC8()
{
  result = qword_10011EF10;
  if (!qword_10011EF10)
  {
    type metadata accessor for BorderedButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF10);
  }

  return result;
}

uint64_t sub_10008AC20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008AC4C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_10008ACA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EEC0, &qword_1000D8D98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AD10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008AD94()
{
  result = qword_10011EF38;
  if (!qword_10011EF38)
  {
    sub_10000A408(&qword_10011EEC0, &qword_1000D8D98);
    sub_10008AE4C();
    sub_10001C3D8(&qword_10011EF58, &qword_10011EF20, &qword_1000D8E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF38);
  }

  return result;
}

unint64_t sub_10008AE4C()
{
  result = qword_10011EF40;
  if (!qword_10011EF40)
  {
    sub_10000A408(&qword_10011EF18, &qword_1000D8E20);
    sub_10000A408(&qword_10011EEB8, &qword_1000D8D90);
    type metadata accessor for BorderedButtonStyle();
    sub_10008AAA0();
    sub_10008ABC8();
    swift_getOpaqueTypeConformance2();
    sub_10001C3D8(&qword_10011EF48, &qword_10011EF50, &qword_1000D8E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF40);
  }

  return result;
}

uint64_t sub_10008AF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008AFC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10008AFF8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10008B014()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 40) & ~v3;
  v69 = *(*(v2 - 1) + 64);

  v5 = v0 + v4;
  v6 = *(v0 + v4 + 8);

  v7 = *(v0 + v4 + 24);

  v8 = *(v0 + v4 + 40);

  v9 = *(v0 + v4 + 56);

  v10 = *(v0 + v4 + 72);

  v11 = *(v0 + v4 + 88);

  v12 = v0 + v4 + v2[11];
  v13 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {
    v63 = v3;
    v66 = (v3 + 40) & ~v3;
    v14 = type metadata accessor for URL();
    v15 = *(v14 - 8);
    v16 = *(v15 + 8);
    v16(v12, v14);
    v16(&v12[v13[5]], v14);
    v17 = v13[6];
    if (!(*(v15 + 48))(&v12[v17], 1, v14))
    {
      v16(&v12[v17], v14);
    }

    v18 = &v12[v13[7]];
    v19 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v16(v18, v14);
      v20 = *&v18[*(v19 + 20)];

      v21 = *&v18[*(v19 + 24)];
    }

    v22 = *&v12[v13[8]];

    v1 = v0;
    v3 = v63;
    v4 = v66;
  }

  v23 = &v5[v2[12]];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v42 = type metadata accessor for HeadphoneBatteryInfo(0);
      v43 = v3;
      v44 = *(v42 + 28);
      v45 = type metadata accessor for BatteryIconStyle();
      v68 = v4;
      v46 = *(*(v45 - 8) + 8);
      v47 = &v23[v44];
      v3 = v43;
      v46(v47, v45);
      v30 = (v42 + 32);

      v23 += *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      v46(&v23[*(v42 + 28)], v45);
      v4 = v68;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    v25 = type metadata accessor for HeadphoneBatteryInfo(0);
    v28 = *(v25 + 28);
    v29 = type metadata accessor for BatteryIconStyle();
    (*(*(v29 - 8) + 8))(&v23[v28], v29);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v31 = type metadata accessor for HeadphoneBatteryInfo(0);
      v64 = v3;
      v32 = *(v31 + 28);
      v33 = type metadata accessor for BatteryIconStyle();
      v67 = v4;
      v34 = *(*(v33 - 8) + 8);
      v34(&v23[v32], v33);
      v30 = (v31 + 32);

      v35 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v36 = &v23[*(v35 + 48)];
      v34(&v36[*(v31 + 28)], v33);

      v37 = *(v35 + 64);
      v3 = v64;
      v23 += v37;
      v34(&v23[*(v31 + 28)], v33);
      v4 = v67;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v38 = type metadata accessor for HeadphoneBatteryInfo(0);
      v39 = *(v38 + 28);
      v40 = type metadata accessor for BatteryIconStyle();
      v65 = v3;
      v41 = *(*(v40 - 8) + 8);
      v41(&v23[v39], v40);
      v30 = (v38 + 32);

      v23 += *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v41(&v23[*(v38 + 28)], v40);
      v3 = v65;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_20;
    }

    v25 = type metadata accessor for HeadphoneBatteryInfo(0);
    v26 = *(v25 + 28);
    v27 = type metadata accessor for BatteryIconStyle();
    (*(*(v27 - 8) + 8))(&v23[v26], v27);
  }

  v30 = (v25 + 32);
LABEL_19:

LABEL_20:
  v48 = &v5[v2[13]];
  if (*(v48 + 1))
  {

    v49 = *(v48 + 3);
  }

  v50 = &v5[v2[14]];
  if (*(v50 + 22))
  {

    v51 = *(v50 + 24);
  }

  v52 = *&v5[v2[17]];

  v53 = *&v5[v2[18]];

  v54 = &v5[v2[19]];
  if (*(v54 + 1))
  {

    v55 = *(v54 + 3);

    v56 = *(v54 + 7);

    v57 = *(v54 + 9);

    v58 = *(v54 + 12);

    v59 = *(v54 + 13);
  }

  v60 = &v5[v2[20]];
  if (*v60)
  {

    v61 = *(v60 + 1);
  }

  return _swift_deallocObject(v1, ((v69 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10008B6B8(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10008580C(a1, v5, v6, v7, v1 + v4);
}

uint64_t sub_10008B75C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B848()
{
  v1 = type metadata accessor for HeadphoneViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = *(v0 + 24);

  v71 = v0;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  v12 = *(v0 + v3 + 88);

  v13 = v0 + v3 + v1[11];
  v14 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v66 = v4;
    v68 = (v2 + 40) & ~v2;
    v64 = v2;
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v17 = *(v16 + 8);
    v17(v13, v15);
    v17(v13 + v14[5], v15);
    v18 = v14[6];
    if (!(*(v16 + 48))(v13 + v18, 1, v15))
    {
      v17(v13 + v18, v15);
    }

    v19 = v13 + v14[7];
    v20 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v17(v19, v15);
      v21 = *(v19 + *(v20 + 20));

      v22 = *(v19 + *(v20 + 24));
    }

    v23 = *(v13 + v14[8]);

    v2 = v64;
    v4 = v66;
    v3 = v68;
  }

  v24 = v6 + v1[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v37 = type metadata accessor for HeadphoneBatteryInfo(0);
    v45 = v2;
    v46 = *(v37 + 28);
    v40 = type metadata accessor for BatteryIconStyle();
    v70 = v3;
    v41 = *(*(v40 - 8) + 8);
    v67 = v4;
    v47 = v24 + v46;
    v2 = v45;
    v41(v47, v40);
    v29 = (v37 + 32);

    v43 = &qword_10011D0C0;
    v44 = &unk_1000D8D60;
LABEL_18:
    v24 += *(sub_100008438(v43, v44) + 48);
    v41(v24 + *(v37 + 28), v40);
    v4 = v67;
    v3 = v70;
    goto LABEL_19;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v30 = type metadata accessor for HeadphoneBatteryInfo(0);
      v65 = v2;
      v31 = *(v30 + 28);
      v32 = type metadata accessor for BatteryIconStyle();
      v63 = *(*(v32 - 8) + 8);
      v63(v24 + v31, v32);
      v29 = (v30 + 32);

      v33 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v69 = v3;
      v34 = v24 + *(v33 + 48);
      v63(v34 + *(v30 + 28), v32);
      v35 = *(v34 + *(v30 + 32));
      v3 = v69;

      v36 = *(v33 + 64);
      v2 = v65;
      v24 += v36;
      v63(v24 + *(v30 + 28), v32);
      goto LABEL_19;
    case 3:
      v37 = type metadata accessor for HeadphoneBatteryInfo(0);
      v38 = v2;
      v39 = *(v37 + 28);
      v40 = type metadata accessor for BatteryIconStyle();
      v70 = v3;
      v41 = *(*(v40 - 8) + 8);
      v67 = v4;
      v42 = v24 + v39;
      v2 = v38;
      v41(v42, v40);
      v29 = (v37 + 32);

      v43 = &qword_10011D0B8;
      v44 = &unk_1000D8D50;
      goto LABEL_18;
    case 4:
LABEL_14:
      v26 = type metadata accessor for HeadphoneBatteryInfo(0);
      v27 = *(v26 + 28);
      v28 = type metadata accessor for BatteryIconStyle();
      (*(*(v28 - 8) + 8))(v24 + v27, v28);
      v29 = (v26 + 32);
LABEL_19:

      break;
  }

LABEL_20:
  v48 = v6 + v1[13];
  if (*(v48 + 8))
  {

    v49 = *(v48 + 24);
  }

  v50 = v6 + v1[14];
  if (*(v50 + 176))
  {

    v51 = *(v50 + 192);
  }

  v52 = *(v6 + v1[17]);

  v53 = *(v6 + v1[18]);

  v54 = v6 + v1[19];
  if (*(v54 + 8))
  {

    v55 = *(v54 + 24);

    v56 = *(v54 + 56);

    v57 = *(v54 + 72);

    v58 = *(v54 + 96);

    v59 = *(v54 + 104);
  }

  v60 = (v6 + v1[20]);
  if (*v60)
  {

    v61 = v60[1];
  }

  return _swift_deallocObject(v71, v3 + v4, v2 | 7);
}

void sub_10008BE84(int a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100085BC4(a1, v4, v5, v6, v7);
}

uint64_t sub_10008BEFC(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_100123148) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

id sub_10008BFE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer] = 0;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide;
  *&v1[v4] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type] = 2;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithContentView:", a1);
}

uint64_t sub_10008C1C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC20HeadphoneProxService36SoftwareUpdateRequiredViewController_offsetIcon] = 0;
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLoad");
  v11 = OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel;
  swift_beginAccess();
  sub_10008C7F8(&v0[v11], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10008C790(v5);
  }

  sub_1000260D0(v5, v10);
  v13 = *(v10 + 6);
  v14 = *(v10 + 7);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10008C8A0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_1001072F0;
  v17 = _Block_copy(aBlock);
  v18 = [objc_opt_self() actionWithTitle:v16 style:1 handler:v17];

  _Block_release(v17);

  v19 = [v0 addAction:v18];

  return sub_10004CE1C(v10);
}

void sub_10008C474()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*&Strong[OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter])
    {
      v2 = *&Strong[OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter];
      swift_unknownObjectRetain();

      sub_1000B6688();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10008C5FC()
{
  sub_10008C790(v0 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel);
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HeadphoneUnsupportedViewController()
{
  result = qword_10011EFA0;
  if (!qword_10011EFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008C6DC()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10008C790(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C868()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C8C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011EFB0);
  v1 = sub_10000A570(v0, qword_10011EFB0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008C988(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [a1 traitCollection];
  v14 = [v13 userInterfaceStyle];

  if (v14 == 1)
  {
    v15 = 19788;
  }

  else
  {
    v15 = 19780;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v23 = 0xD000000000000010;
  v24 = 0x80000001000E1260;
  v18._countAndFlagsBits = v15;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();

  v20 = String._bridgeToObjectiveC()();
  v21 = [v17 URLForResource:v19 withExtension:v20];

  if (v21)
  {

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v12, v10, v2);
    (*(v3 + 16))(v7, v12, v2);
    v22 = objc_allocWithZone(type metadata accessor for ProxMovieLoopPlayer());
    [sub_1000302F0(v7 0.0];
    (*(v3 + 8))(v12, v2);
  }

  else
  {
    __break(1u);
  }
}

id sub_10008CC70(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10008CCD4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = sub_10008CC70(&OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView, sub_10008C988);
  [v2 addSubview:v3];

  v4 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5DA0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView;
  v7 = [*(a1 + OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView) centerXAnchor];
  v8 = [v2 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [*(a1 + v6) centerYAnchor];
  v11 = [v2 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v2 heightAnchor];
  v15 = [v14 constraintEqualToConstant:180.0];

  [v15 setActive:1];
  return v2;
}

void sub_10008CF20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v5);
  v9 = v40 - v8 + 40;
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  [v1 setDismissalType:1];
  v10 = &v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    sub_1000145EC(v12 + 16, v40);
    swift_unknownObjectRelease();
    v13 = v41;
    if (v41)
    {
      v14 = sub_10000E7E4(v40, v41);
      v15 = *(v13 - 8);
      v16 = *(v15 + 64);
      __chkstk_darwin(v14);
      v18 = (v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v15 + 16))(v18);
      sub_10001465C(v40);
      v19 = *v18;
      v20 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v19 + v20, v7);
      (*(v15 + 8))(v18, v13);
      sub_10000E828(v7, v9);
      v21 = [v1 contentView];
      v22 = sub_10008CC70(&OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset, sub_10008CCD4);
      [v21 addSubview:v22];

      v23 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset];
      v24 = [v1 contentView];
      v25 = [v24 mainContentGuide];

      [v23 pinToOtherWithLayoutGuide:v25];
      v26 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_headphoneProxFeatureManager];
      v27 = *(v9 + 18);
      v28 = *(v9 + 19);
      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v29 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v30 = *(v29 - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1000D5250;
      (*(v30 + 104))(v33 + v32, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.headGestures(_:), v29);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      type metadata accessor for HeadphoneYodelHearingProtectionViewController();
      v34 = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v9, v34, *(v10 + 1));
      swift_unknownObjectRelease();
      sub_10000E8F4(v9);
      return;
    }

    sub_10001465C(v40);
  }

  if (qword_10011C6E0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_10000A570(v35, qword_10011EFB0);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Head Gestures: Headphone Model is nil, exiting", v38, 2u);
  }
}

void sub_10008D5C4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_10008DAA4;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100107380;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_10008DAEC;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_1001073A8;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_10008D87C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10008DA6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10008DB1C()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

uint64_t sub_10008DC98()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F018);
  v1 = sub_10000A570(v0, qword_10011F018);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008DD60()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew);
  if (v2 == 2)
  {
    v3 = String._bridgeToObjectiveC()();
    CFPreferencesAppSynchronize(v3);

    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, 0);

    LOBYTE(v2) = AppBooleanValue != 0;
    *(v0 + v1) = AppBooleanValue != 0;
  }

  return v2 & 1;
}

uint64_t sub_10008DE2C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap);
  }

  else
  {
    swift_unknownObjectWeakInit();
    sub_10008DEB4();
    v2 = v3;
    swift_unknownObjectWeakDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10008DEB4()
{
  v0 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v140 = *(v0 - 8);
  v1 = *(v140 + 64);
  v2 = __chkstk_darwin(v0);
  v3 = &v120 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v137 = v3;
  v5 = __chkstk_darwin(v4);
  v134 = v3;
  v6 = __chkstk_darwin(v5);
  v132 = v3;
  __chkstk_darwin(v6);
  v139 = v3;
  v7 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v143 = *(v7 - 8);
  v8 = *(v143 + 64);
  v9 = __chkstk_darwin(v7);
  v138 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v135 = &v120 - v12;
  v13 = __chkstk_darwin(v11);
  v133 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v131 = &v120 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v120 - v18;
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v136 = v3;
  v22 = __chkstk_darwin(v21);
  v142 = v3;
  v23 = __chkstk_darwin(v22);
  v141 = v3;
  __chkstk_darwin(v23);
  v144 = v3;
  v24 = type metadata accessor for HeadphoneModel(0);
  v129 = *(v24 - 8);
  v25 = *(v129 + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v130 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v120 - v28;
  __chkstk_darwin(v27);
  v31 = &v120 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      swift_beginAccess();
      sub_10000E88C(v35 + 16, &v145, &qword_10011FBC0, &unk_1000D5EF0);
      swift_unknownObjectRelease();
      v36 = v146;
      if (v146)
      {
        v121 = v3;
        v122 = v3;
        v37 = sub_10000E7E4(&v145, v146);
        v127 = &v120;
        v38 = *(v36 - 8);
        v128 = v7;
        v39 = v38;
        v40 = *(v38 + 64);
        __chkstk_darwin(v37);
        v125 = v33;
        v42 = (&v120 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v39 + 16))(v42);
        sub_10000E950(&v145, &qword_10011FBC0, &unk_1000D5EF0);
        v43 = *v42;
        v44 = v0;
        v45 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v46 = v43 + v45;
        v47 = v44;
        sub_10000E390(v46, v29);
        (*(v39 + 8))(v42, v36);
        v48 = v128;
        v126 = v31;
        sub_10000E828(v29, v31);
        v49 = *&v125[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_listBuilder];
        v50 = v143;
        v51 = *(v143 + 104);
        v51(v19, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.headGestures(_:), v48);
        v52 = *(v50 + 32);
        v53 = v139;
        v52(v139, v19, v48);
        v54 = v144;
        v52(v144, v53, v48);
        v139 = v47;
        v55 = &v54[*(v47 + 12)];
        v56 = swift_allocObject();
        *(v56 + 16) = sub_100090D38;
        *(v56 + 24) = v49;
        *v55 = sub_10006278C;
        v55[1] = v56;
        v143 = v49;
        swift_retain_n();
        v57 = sub_1000CC7B0(0, 1, 1, _swiftEmptyArrayStorage);
        v59 = v57[2];
        v58 = v57[3];
        if (v59 >= v58 >> 1)
        {
          v57 = sub_1000CC7B0(v58 > 1, v59 + 1, 1, v57);
        }

        v57[2] = v59 + 1;
        v127 = ((*(v140 + 80) + 32) & ~*(v140 + 80));
        v140 = *(v140 + 72);
        sub_100013704(v144, v127 + v57 + v140 * v59);
        v60 = v126;
        v62 = *(v126 + 18);
        v61 = *(v126 + 19);
        v63 = sub_1000220A4();
        v144 = v52;
        v124 = v51;
        v123 = v61;
        if (v63)
        {
          v120 = v62;
          v64 = v131;
          v65 = v128;
          v51(v131, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v128);
          v66 = v130;
          sub_10000E390(v60, v130);
          v67 = (*(v129 + 80) + 24) & ~*(v129 + 80);
          v68 = swift_allocObject();
          *(v68 + 16) = v143;
          sub_10000E828(v66, v68 + v67);
          v69 = v132;
          v52(v132, v64, v65);
          v70 = v141;
          v52(v141, v69, v65);
          v71 = (v70 + *(v139 + 12));
          v72 = swift_allocObject();
          *(v72 + 16) = sub_1000910E0;
          *(v72 + 24) = v68;
          *v71 = sub_100064F5C;
          v71[1] = v72;
          v73 = v57[2];
          v74 = v57[3];

          if (v73 >= v74 >> 1)
          {
            v57 = sub_1000CC7B0(v74 > 1, v73 + 1, 1, v57);
          }

          v57[2] = v73 + 1;
          sub_100013704(v141, v127 + v57 + v73 * v140);
          v51 = v124;
          v62 = v120;
          v61 = v123;
        }

        if (sub_1000216CC(v62, v61))
        {
          v79 = [objc_opt_self() currentDevice];
          v80 = [v79 userInterfaceIdiom];

          v81 = v80 == 0;
          if (v80)
          {
            v82 = 1145131081;
          }

          else
          {
            v82 = 0x454E4F485049;
          }

          if (v81)
          {
            v83 = 0xE600000000000000;
          }

          else
          {
            v83 = 0xE400000000000000;
          }

          v84 = v133;
          v85 = v128;
          v51(v133, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v128);
          v86 = swift_allocObject();
          v86[2] = v143;
          v86[3] = v82;
          v86[4] = v83;
          v87 = v134;
          v88 = v84;
          v89 = v144;
          (v144)(v134, v88, v85);
          v90 = v142;
          (v89)(v142, v87, v85);
          v91 = (v90 + *(v139 + 12));
          v92 = swift_allocObject();
          *(v92 + 16) = sub_100090E08;
          *(v92 + 24) = v86;
          *v91 = sub_100064F5C;
          v91[1] = v92;
          v93 = v57[2];
          v94 = v57[3];

          if (v93 >= v94 >> 1)
          {
            v57 = sub_1000CC7B0(v94 > 1, v93 + 1, 1, v57);
          }

          v57[2] = v93 + 1;
          sub_100013704(v142, v127 + v57 + v93 * v140);
          v51 = v124;
          v61 = v123;
        }

        v95 = sub_1000216B0(v62, v61);
        v96 = v144;
        if (v95)
        {
          v97 = v135;
          v98 = v128;
          v51(v135, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v128);
          v99 = v137;
          (v96)(v137, v97, v98);
          v100 = v136;
          (v96)(v136, v99, v98);
          v101 = (v100 + *(v139 + 12));
          v102 = swift_allocObject();
          v103 = v143;
          *(v102 + 16) = sub_100090DC0;
          *(v102 + 24) = v103;
          *v101 = sub_100064F5C;
          v101[1] = v102;
          v104 = v57[2];
          v105 = v57[3];

          if (v104 >= v105 >> 1)
          {
            v57 = sub_1000CC7B0(v105 > 1, v104 + 1, 1, v57);
          }

          v57[2] = v104 + 1;
          sub_100013704(v100, v127 + v57 + v104 * v140);
        }

        if (qword_10011C700 != -1)
        {
          swift_once();
        }

        v106 = qword_1001231A0;
        v107 = String._bridgeToObjectiveC()();
        v108 = [objc_opt_self() _systemImageNamed:v107 withConfiguration:v106];

        if (v108)
        {
          if (qword_10011C708 != -1)
          {
            swift_once();
          }

          v109 = [v108 imageByApplyingSymbolConfiguration:qword_1001231A8];

          if (v109)
          {
            v110 = v138;
            v111 = v128;
            v51(v138, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.improvedVoiceQuality(_:), v128);
            v112 = swift_allocObject();
            *(v112 + 16) = v143;
            *(v112 + 24) = v109;
            v113 = v122;
            (v96)(v122, v110, v111);
            v114 = v121;
            (v96)(v121, v113, v111);
            v115 = (v114 + *(v139 + 12));
            v116 = swift_allocObject();
            *(v116 + 16) = sub_100090DB8;
            *(v116 + 24) = v112;
            *v115 = sub_100064F5C;
            v115[1] = v116;
            v117 = v57[2];
            v118 = v57[3];

            v119 = v109;
            if (v117 >= v118 >> 1)
            {
              v57 = sub_1000CC7B0(v118 > 1, v117 + 1, 1, v57);
            }

            v57[2] = v117 + 1;
            sub_100013704(v114, v127 + v57 + v117 * v140);
            sub_10000E8F4(v126);
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

      sub_10000E950(&v145, &qword_10011FBC0, &unk_1000D5EF0);
    }

    else
    {
    }
  }

  if (qword_10011C6F0 != -1)
  {
    swift_once();
  }

  v75 = type metadata accessor for Logger();
  sub_10000A570(v75, qword_100123180);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "no features we are dallocating", v78, 2u);
  }
}

uint64_t sub_10008EDB0()
{
  sub_10008DB1C();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5345475F44414548;
  v7._object = 0xED00005345525554;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x80000001000DE510;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

uint64_t sub_10008EFB4(uint64_t a1, uint64_t a2)
{
  sub_100021B8C();
  v4 = v3;
  v5 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v6 = [objc_opt_self() systemBlueColor];
  [v5 setTintColor:v6];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setContentMode:1];

  v9 = *(a2 + 144);
  v8 = *(a2 + 152);
  v10 = sub_100022750(v9, v8);
  v12 = v11;

  sub_100022750(v9, v8);
  v14 = v13;
  v16 = v15;

  sub_100092F4C(v7, v10, v12, v14, v16);
}

uint64_t sub_10008F0F4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100021944();
  v5 = v4;
  v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v7 = [objc_opt_self() systemBlueColor];
  [v6 setTintColor:v7];

  v8 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setContentMode:1];

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v24._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x80000001000DDE20;
  v12.value._object = 0x80000001000DC8A0;
  v12.value._countAndFlagsBits = 0xD000000000000011;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v24);

  _StringGuts.grow(_:)(38);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);
  v16 = [v9 mainBundle];
  v25._object = 0xE000000000000000;
  v17.value._object = 0x80000001000DC8A0;
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x80000001000DF160;
  v17.value._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v25);

  sub_100092F4C(v8, v14._countAndFlagsBits, v14._object, v20._countAndFlagsBits, v20._object);
}

uint64_t sub_10008F334()
{
  sub_100021A68();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000026;
  v7._object = 0x80000001000DDD90;
  v8.value._object = 0x80000001000DC8A0;
  v8.value._countAndFlagsBits = 0xD000000000000011;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000029;
  v12._object = 0x80000001000DDD60;
  v13.value._object = 0x80000001000DC8A0;
  v13.value._countAndFlagsBits = 0xD000000000000011;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

uint64_t sub_10008F52C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(UIImageView) initWithImage:a2];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x55515F4543494F56;
  v7._object = 0xED00005954494C41;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x80000001000E1370;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);
}

void sub_10008F728()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v152 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v151 = *(v152 - 8);
  v3 = *(v151 + 64);
  v4 = __chkstk_darwin(v152);
  v6 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v158 = &v138 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v138 - v10;
  v12 = __chkstk_darwin(v9);
  v146 = &v138 - v13;
  v14 = __chkstk_darwin(v12);
  v154 = &v138 - v15;
  v16 = __chkstk_darwin(v14);
  v150 = &v138 - v17;
  __chkstk_darwin(v16);
  v157 = &v138 - v18;
  v19 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v138 - v24;
  v26 = type metadata accessor for HeadphoneModel(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v138 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v147 = &v138 - v32;
  v162.receiver = v1;
  v162.super_class = ObjectType;
  objc_msgSendSuper2(&v162, "viewDidLoad");
  [v1 setDismissalType:1];
  v33 = &v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    swift_beginAccess();
    sub_10000E88C(v35 + 16, v160, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v36 = v161;
    if (v161)
    {
      v138 = v6;
      v142 = v33;
      v145 = v23;
      v37 = sub_10000E7E4(v160, v161);
      v159 = &v138;
      v38 = *(v36 - 8);
      v39 = *(v38 + 64);
      __chkstk_darwin(v37);
      v153 = v1;
      v41 = (&v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v38 + 16))(v41);
      sub_10000E950(v160, &qword_10011FBC0, &unk_1000D5EF0);
      v42 = *v41;
      v43 = v27;
      v44 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v42 + v44, v31);
      v45 = v41;
      v46 = v153;
      (*(v38 + 8))(v45, v36);
      v47 = v31;
      v48 = v147;
      sub_10000E828(v47, v147);
      sub_10000E390(v48, v25);
      (*(v43 + 56))(v25, 0, 1, v26);
      v49 = &v46[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_model];
      swift_beginAccess();
      sub_100013144(v25, v49);
      swift_endAccess();
      v50 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_headphoneProxFeatureManager;
      v52 = v43 + 48;
      v51 = *(v43 + 48);
      if (v51(v49, 1, v26) == 1)
      {
        __break(1u);
      }

      else
      {
        v139 = v50;
        v53 = *&v46[v50];
        v141 = v49;
        v54 = *(v49 + 144);
        v55 = *(v49 + 152);

        v159 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures(deviceAddress:)();

        v56 = sub_10008DE2C();
        v57 = *(v56 + 16);
        v144 = v26;
        v143 = v52;
        v140 = v51;
        v149 = v57;
        if (v57)
        {
          v58 = 0;
          v59 = _swiftEmptyArrayStorage;
          v60 = &qword_1001200D0;
          v61 = v152;
          v148 = v56;
          while (v58 < *(v56 + 16))
          {
            v156 = (*(v151 + 80) + 32) & ~*(v151 + 80);
            v155 = *(v151 + 72);
            v62 = v157;
            sub_10000E88C(v56 + v156 + v155 * v58, v157, v60, qword_1000D60C8);
            v63 = v62;
            v64 = v150;
            v65 = v60;
            sub_10000E88C(v63, v150, v60, qword_1000D60C8);
            v66 = *(v61 + 48);
            v67 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            v68 = *(v67 - 8);
            (*(v68 + 32))(v11, v64, v67);
            v69 = &v11[*(v61 + 48)];
            v70 = swift_allocObject();
            *(v70 + 16) = *(v64 + v66);
            *v69 = sub_100090D10;
            v69[1] = v70;
            if (sub_10008DD60())
            {
LABEL_13:
              v60 = v65;
              sub_10000E950(v11, v65, qword_1000D60C8);
              sub_100013704(v157, v154);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v160[0] = v59;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1000CD604(0, v59[2] + 1, 1);
                v59 = v160[0];
              }

              v61 = v152;
              v78 = v59[2];
              v77 = v59[3];
              if (v78 >= v77 >> 1)
              {
                sub_1000CD604(v77 > 1, v78 + 1, 1);
                v59 = v160[0];
              }

              v59[2] = v78 + 1;
              sub_100013704(v154, v59 + v156 + v78 * v155);
            }

            else
            {
              v71 = 0;
              v72 = v159[2];
              while (v72 != v71)
              {
                v73 = v71 + 1;
                v74 = v159 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v71;
                sub_1000136AC();
                v75 = dispatch thunk of static Equatable.== infix(_:_:)();
                v71 = v73;
                if (v75)
                {
                  goto LABEL_13;
                }
              }

              v60 = v65;
              sub_10000E950(v11, v65, qword_1000D60C8);
              sub_10000E950(v157, v65, qword_1000D60C8);
              v61 = v152;
            }

            ++v58;
            v56 = v148;
            if (v58 == v149)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

        v59 = _swiftEmptyArrayStorage;
        v61 = v152;
LABEL_24:

        v83 = v59[2];
        if (v83)
        {
          v84 = v59 + ((*(v151 + 80) + 32) & ~*(v151 + 80));
          v85 = v61;
          v86 = *(v151 + 72);
          v156 = v59;
          v157 = v86;
          v87 = v138;
          v88 = v158;
          v89 = v146;
          do
          {
            sub_10000E88C(v84, v89, &qword_1001200D0, qword_1000D60C8);
            v90 = *(v85 + 48);
            v91 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            v92 = *(v91 - 8);
            (*(v92 + 32))(v88, v89, v91);
            v93 = &v158[*(v85 + 48)];
            v94 = swift_allocObject();
            *(v94 + 16) = *(v89 + v90);
            *v93 = sub_10009115C;
            v93[1] = v94;
            v88 = v158;
            v95 = sub_10000E88C(v158, v87, &qword_1001200D0, qword_1000D60C8);
            v96 = v87 + *(v85 + 48);
            v97 = *(v96 + 8);
            (*v96)(v95);

            sub_10000E950(v88, &qword_1001200D0, qword_1000D60C8);
            (*(v92 + 8))(v87, v91);
            v84 += v157;
            --v83;
          }

          while (v83);
        }

        v98 = v153;
        v99 = *&v153[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_listBuilder];
        v100 = sub_100092C00();
        v101 = [v98 contentView];
        v102 = v100;
        [v101 addSubview:v102];

        v103 = [v98 contentView];
        v104 = [v103 mainContentGuide];

        v105 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1000D6000;
        v107 = [v102 topAnchor];

        v108 = [v104 topAnchor];
        v109 = [v107 constraintEqualToAnchor:v108];

        *(v106 + 32) = v109;
        v110 = [v102 bottomAnchor];

        v111 = [v104 bottomAnchor];
        v112 = [v110 constraintLessThanOrEqualToAnchor:v111];

        *(v106 + 40) = v112;
        v113 = [v102 leadingAnchor];

        v114 = [v104 leadingAnchor];
        v115 = [v113 constraintEqualToAnchor:v114];

        *(v106 + 48) = v115;
        v116 = [v102 trailingAnchor];

        v158 = v104;
        v117 = [v104 trailingAnchor];
        v118 = [v116 constraintEqualToAnchor:v117];

        *(v106 + 56) = v118;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v105 activateConstraints:isa];

        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v120 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v121 = *(v120 - 8);
        v122 = *(v121 + 72);
        v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_1000D66A0;
        v125 = v124 + v123;
        v126 = *(v121 + 104);
        v126(v125, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.whatsNew(_:), v120);
        v126(v125 + v122, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.improvedVoiceQuality(_:), v120);
        v127 = v141;
        v128 = v145;
        sub_10000E88C(v141, v145, &qword_10011EBD0, &unk_1000D5EE0);
        v129 = v144;
        v130 = v140;
        if (v140(v128, 1, v144) != 1)
        {
          type metadata accessor for HeadphoneYodelHearingProtectionViewController();
          v131 = v142;
          v132 = swift_unknownObjectWeakLoadStrong();
          v133 = *(v131 + 1);
          v134 = v153;
          sub_10001F218(v153, v128, v132, v133);
          swift_unknownObjectRelease();
          sub_10000E8F4(v128);
          if (v130(v127, 1, v129) != 1)
          {
            v135 = *&v134[v139];
            v136 = *(v127 + 144);
            v137 = *(v127 + 152);

            dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

            sub_10000E8F4(v147);
            return;
          }

          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    sub_10000E950(v160, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C6E8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_10000A570(v79, qword_10011F018);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Whats New: Headphone Model is nil, exiting", v82, 2u);
  }
}

void sub_100090730(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[4];
  v7 = a1[5];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v14[4] = sub_100090B98;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10000C034;
  v14[3] = &unk_100107438;
  v10 = _Block_copy(v14);
  v11 = [objc_opt_self() actionWithTitle:v9 style:0 handler:v10];

  _Block_release(v10);

  if (a1[11])
  {
    v12 = a1[10];
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v1 setBottomTrayTitle:v13];
}

void sub_1000908DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      sub_1000B8158();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneWhatsNewUpsellViewController()
{
  result = qword_10011F088;
  if (!qword_10011F088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090A78()
{
  sub_10000E064();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100090B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100090BB8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_sectionWidth] = 0x4074000000000000;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_estimatedSectionHeight] = 0x4056800000000000;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_listBuilder;
  type metadata accessor for ProxBulltedListBuilder();
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v2[v6] = v7;
  v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew] = 2;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_model;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap] = 0;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type] = 12;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

uint64_t sub_100090D10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100090D40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090D78()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090DC8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090E14()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  if (*(v0 + v3 + 8))
  {

    v7 = *(v6 + 24);

    v8 = *(v6 + 56);

    v9 = *(v6 + 72);

    v10 = *(v6 + 96);

    v11 = *(v6 + 104);
  }

  if (*(v6 + 112))
  {

    v12 = *(v6 + 120);
  }

  v13 = *(v6 + 128);

  v14 = *(v6 + 152);

  v15 = v1[12];
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[14] + 8);

  v19 = *(v6 + v1[15] + 8);

  v20 = (v6 + v1[16]);
  v21 = v20[1];
  if (v21 >> 60 != 15)
  {
    sub_100022640(*v20, v21);
  }

  v22 = *(v6 + v1[19] + 8);

  v23 = *(v6 + v1[20] + 8);

  v24 = *(v6 + v1[37]);

  v25 = v1[38];
  v26 = type metadata accessor for Date();
  v27 = *(v26 - 8);
  if (!(*(v27 + 48))(v6 + v25, 1, v26))
  {
    (*(v27 + 8))(v6 + v25, v26);
  }

  v28 = v6 + v1[45];
  v29 = *(v28 + 8);
  if (v29 != 255)
  {
    sub_10001C2AC(*v28, v29 & 1);
  }

  v30 = *(v6 + v1[49]);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000910E0()
{
  v1 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10008EFB4(v2, v3);
}

uint64_t sub_100091160()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123180);
  sub_10000A570(v0, qword_100123180);
  return Logger.init(subsystem:category:)();
}

id sub_1000911D8()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintEqualToConstant:100.0];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_10009127C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v11 = [objc_allocWithZone(UILabel) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v7[v10] = v11;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize] = 0x4053800000000000;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint] = 0;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] = a1;
  v93.receiver = v7;
  v93.super_class = type metadata accessor for ProxCardBulletView();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView;
  [*&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v13[v14] setFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 addSubview:*&v13[v14]];
  v15 = [objc_allocWithZone(UILabel) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_opt_self();
  v17 = [v16 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v81 = a3;
  v82 = v15;
  v84 = v14;
  v85 = v12;
  v19 = [v17 fontDescriptor];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  if (!v20)
  {
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v18 pointSize];
  v78 = [v16 fontWithDescriptor:v20 size:?];

  v21 = [v13 traitCollection];
  v22 = [v21 userInterfaceStyle];

  v23 = [v16 systemFontOfSize:11.0 weight:UIFontWeightSemibold];
  v80 = objc_opt_self();
  v24 = [v80 whiteColor];
  v25 = [v80 blackColor];
  v79 = v18;
  v26 = [objc_allocWithZone(UIColor) initWithRed:0.533333333 green:0.533333333 blue:0.549019608 alpha:1.0];
  v27 = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.576470588 alpha:1.0];
  v28 = type metadata accessor for PillBadgeTextAttachment();
  v29 = objc_allocWithZone(v28);
  v30 = v29;
  v31 = &v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText];
  *v31 = a6;
  *(v31 + 1) = a7;
  *&v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont] = v23;
  if (v22 == 2)
  {
    v32 = v25;
  }

  else
  {
    v32 = v24;
  }

  if (v22 == 2)
  {
    v33 = v27;
  }

  else
  {
    v33 = v26;
  }

  *&v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor] = v32;
  v34 = v32;
  *&v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor] = v33;
  v35 = &v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_padding];
  *v35 = xmmword_1000D80E0;
  *(v35 + 1) = xmmword_1000D80E0;
  *&v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta] = 0;
  v92.receiver = v30;
  v92.super_class = v28;
  v36 = v23;
  v37 = v33;
  v38 = objc_msgSendSuper2(&v92, "initWithData:ofType:", 0, 0);
  v39 = sub_10005115C();
  [v38 setImage:v39];

  v40 = sub_100051788(a2, v81, v38);

  v41 = objc_allocWithZone(NSMutableAttributedString);
  v42 = String._bridgeToObjectiveC()();

  v91 = [v41 initWithString:v42];

  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSFontAttributeName;
  v44 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 64) = v44;
  *(inited + 40) = v78;
  v45 = NSFontAttributeName;
  v89 = v78;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000851C(inited + 32);
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = v40;
  [v47 addAttributes:isa range:{0, objc_msgSend(v47, "length")}];

  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1000D5250;
  *(v48 + 32) = v45;
  *(v48 + 64) = v44;
  *(v48 + 40) = v79;
  v87 = v79;
  sub_1000A3410(v48);
  swift_setDeallocating();
  sub_10000851C(v48 + 32);
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v91 addAttributes:v49 range:{0, objc_msgSend(v91, "length")}];

  v50 = objc_allocWithZone(NSAttributedString);
  v51 = String._bridgeToObjectiveC()();
  v52 = [v50 initWithString:v51];

  [v47 appendAttributedString:v52];
  [v47 appendAttributedString:v91];
  [v82 setAttributedText:v47];

  v53 = [v80 labelColor];
  [v82 setTextColor:v53];

  [v82 setNumberOfLines:0];
  [v82 sizeToFit];
  v54 = *&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView];
  *&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] = v82;
  v55 = v82;

  [v13 addSubview:v55];
  v83 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1000D6930;
  v57 = [*&v13[v84] leadingAnchor];
  v58 = [v13 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v56 + 32) = v59;
  v60 = [*&v13[v84] widthAnchor];
  v61 = [v60 constraintEqualToConstant:78.0];

  *(v56 + 40) = v61;
  v62 = [*&v13[v84] heightAnchor];
  v63 = [v62 constraintEqualToConstant:78.0];

  *(v56 + 48) = v63;
  v64 = [*&v13[v84] centerYAnchor];
  v65 = [v55 centerYAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v56 + 56) = v66;
  v67 = [*&v13[v84] centerYAnchor];
  v68 = [v13 centerYAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v56 + 64) = v69;
  v70 = [v55 leadingAnchor];
  v71 = [*&v13[v84] trailingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:15.0];

  *(v56 + 72) = v72;
  v73 = [v55 trailingAnchor];

  v74 = [v13 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v56 + 80) = v75;
  *(v56 + 88) = sub_1000911D8();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v76 = Array._bridgeToObjectiveC()().super.isa;

  [v83 activateConstraints:v76];

  return v13;
}

uint64_t sub_100091DA0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *&v76 = a5;
  v78 = a4;
  v77 = a2;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints] = _swiftEmptyArrayStorage;
  v13 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v13] = v14;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize] = 0x4053800000000000;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] = a1;
  v15 = type metadata accessor for ProxCardBulletView();
  v81.receiver = v5;
  v81.super_class = v15;
  v75 = a1;
  v16 = objc_msgSendSuper2(&v81, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView;
  [*&v16[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v16[v17] setFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = v17;
  [v16 addSubview:*&v16[v17]];
  v18 = [objc_allocWithZone(UILabel) init];
  v19 = v76;
  v73 = v18;
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  v79 = v77;
  v80 = a3;

  v20._countAndFlagsBits = 10;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  v21._countAndFlagsBits = v78;
  v21._object = v19;
  String.append(_:)(v21);

  v22 = v79;
  static CharacterSet.newlines.getter();
  sub_100008480();
  v23 = StringProtocol.components(separatedBy:)();
  (*(v9 + 8))(v12, v8);
  if (!v23[2])
  {
    __break(1u);
    goto LABEL_6;
  }

  v78 = v22;
  v24 = v23[4];
  v25 = v23[5];
  v26 = objc_opt_self();

  v27 = [v26 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = v27;
  v72 = v24;

  v29 = [v28 fontDescriptor];
  v30 = [v29 fontDescriptorWithSymbolicTraits:2];

  if (v30)
  {
    [v28 pointSize];
    v31 = [v26 fontWithDescriptor:v30 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v76 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v33 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v33;
    *(inited + 40) = v31;
    v34 = NSFontAttributeName;
    v77 = v31;
    v71[1] = sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000851C(inited + 32);
    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();

    v72 = [v35 rangeOfString:v36];
    v71[0] = v37;

    v38 = swift_initStackObject();
    *(v38 + 16) = v76;
    *(v38 + 32) = v34;
    *(v38 + 64) = v33;
    *(v38 + 40) = v28;
    *&v76 = v28;
    sub_1000A3410(v38);
    swift_setDeallocating();
    sub_10000851C(v38 + 32);
    v39 = objc_allocWithZone(NSMutableAttributedString);
    v40 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10003CDAC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v42 = [v39 initWithString:v40 attributes:isa];

    v43 = Dictionary._bridgeToObjectiveC()().super.isa;

    v78 = v42;
    [v42 addAttributes:v43 range:{v72, v71[0]}];

    v44 = v73;
    [v73 setAttributedText:v42];
    v45 = [objc_opt_self() labelColor];
    [v44 setTextColor:v45];

    [v44 setNumberOfLines:0];
    [v44 sizeToFit];
    v46 = *&v16[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView];
    *&v16[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] = v44;
    v47 = v44;

    [v16 addSubview:v47];
    v73 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000D6930;
    v49 = v74;
    v50 = [*&v16[v74] leadingAnchor];
    v51 = [v16 leadingAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    *(v48 + 32) = v52;
    v53 = [*&v16[v49] widthAnchor];
    v54 = [v53 constraintEqualToConstant:78.0];

    *(v48 + 40) = v54;
    v55 = [*&v16[v49] heightAnchor];
    v56 = [v55 constraintEqualToConstant:78.0];

    *(v48 + 48) = v56;
    v57 = [*&v16[v49] centerYAnchor];
    v58 = [v47 centerYAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v48 + 56) = v59;
    v60 = [*&v16[v49] centerYAnchor];
    v61 = [v16 centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v48 + 64) = v62;
    v63 = [v47 leadingAnchor];
    v64 = [*&v16[v49] trailingAnchor];
    v65 = [v63 constraintEqualToAnchor:v64 constant:15.0];

    *(v48 + 72) = v65;
    v66 = [v47 trailingAnchor];

    v67 = [v16 trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(v48 + 80) = v68;
    *(v48 + 88) = sub_1000911D8();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v69 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints:v69];

    return v16;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000927E8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ProxCardBulletView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  [*&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] bounds];
  Height = CGRectGetHeight(v9);
  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView];
  [v3 bounds];
  CGRectGetHeight(v10);
  v4 = sub_1000911D8();
  [*&v0[v1] bounds];
  v6 = v5;
  [v3 bounds];
  v7 = CGRectGetHeight(v11);
  if (v6 > v7)
  {
    v7 = v6;
  }

  [v4 setConstant:v7];
}

id sub_10009295C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxCardBulletView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100092A24()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemYellowColor];
  v2 = [v1 systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  *(v0 + 40) = v3;
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() configurationWithPaletteColors:isa];

  qword_100123198 = v5;
}

void sub_100092B44()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor:v0];

  qword_1001231A0 = v1;
}

id sub_100092BB8()
{
  result = [objc_opt_self() configurationWithPointSize:5 weight:52.0];
  qword_1001231A8 = result;
  return result;
}

id sub_100092C00()
{
  v1 = [objc_allocWithZone(UIStackView) init];
  [v1 setAlignment:1];
  [v1 setAxis:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v20 = v2 & 0xC000000000000001;
    v18 = v2;
    while (1)
    {
      if (v20)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v1 addArrangedSubview:v5];
      v21 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000D5DA0;
      v9 = [v1 leadingAnchor];
      v10 = [v6 leadingAnchor];
      v11 = i;
      v12 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v12;
      v13 = [v1 trailingAnchor];
      v14 = [v6 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v8 + 40) = v15;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 activateConstraints:isa];

      i = v11;
      v2 = v18;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  [v1 setSpacing:15.0];
  return v1;
}

uint64_t sub_100092EF0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100092F4C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  objc_allocWithZone(type metadata accessor for ProxCardBulletView());

  sub_100091DA0(a1, a2, a3, a4, a5);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v6;
}

void sub_100093050()
{
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize) = 0x4053800000000000;
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100093120(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_type] = 1;
  v7 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v7];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_tableView] = v7;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v9 = v7;
  v10 = objc_msgSendSuper2(&v21, "initWithContentView:", v8);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = v9;
  v14 = v12;
  v15 = [v11 clearColor];
  [v13 setBackgroundColor:v15];

  [v13 setDataSource:v14];
  [v13 setDelegate:v14];

  [v13 setAllowsSelection:0];
  sub_1000084D4(0, &qword_10011EBF0, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100008438(&qword_10011F2E8, qword_1000D9120);
  String.init<A>(describing:)();
  v17 = String._bridgeToObjectiveC()();

  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v13 setTableHeaderView:v18];

  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v13 setTableFooterView:v19];

  return v14;
}

void sub_1000934C0(uint64_t *a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &aBlock - v5;
  sub_1000944B8(a1, &aBlock - v5);
  v7 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v6, &v1[v8]);
  swift_endAccess();
  v9 = *a1;
  v10 = a1[1];
  v11 = String._bridgeToObjectiveC()();
  [v1 setTitle:v11];

  v12 = a1[2];
  v13 = a1[3];
  v14 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v14];

  if (a1[11])
  {
    v15 = a1[10];
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v1 setBottomTrayTitle:v16];

  v17 = a1[4];
  v18 = a1[5];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v20 = String._bridgeToObjectiveC()();
  v34 = sub_100094554;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10000C034;
  v33 = &unk_100107658;
  v21 = _Block_copy(&aBlock);
  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v20 style:0 handler:v21];

  _Block_release(v21);

  v25 = a1[6];
  v24 = a1[7];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v27 = String._bridgeToObjectiveC()();
  v34 = sub_10009459C;
  v35 = v26;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10000C034;
  v33 = &unk_100107680;
  v28 = _Block_copy(&aBlock);
  v29 = [v22 actionWithTitle:v27 style:1 handler:v28];

  _Block_release(v28);

  [*&v1[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_tableView] reloadData];
}

void sub_100093884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneAnnounceCustomizeViewController()
{
  result = qword_10011F208;
  if (!qword_10011F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000939C8()
{
  sub_100025E40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100093ABC(void *a1)
{
  v2 = sub_100008438(&qword_10011EBE8, &unk_1000D8B30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v61 - v4;
  v6 = type metadata accessor for UIBackgroundConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for UIListContentConfiguration();
  v75 = *(v76 - 8);
  v11 = *(v75 + 64);
  __chkstk_darwin(v76);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v79 = sub_1000084D4(0, &qword_10011EBF0, UITableViewCell_ptr);
  sub_100008438(&qword_10011F2E8, qword_1000D9120);
  String.init<A>(describing:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = [a1 dequeueReusableCellWithIdentifier:v14];

  if (!v15)
  {
    v15 = [objc_allocWithZone(UITableViewCell) init];
  }

  v16 = IndexPath.section.getter();
  if (v16 > 3)
  {
    return v15;
  }

  v17 = v16;
  v18 = v77 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  v19 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    return v15;
  }

  v20 = (v18 + *(v19 + 76));
  v21 = v20[5];
  v83 = v20[4];
  v84 = v21;
  v85 = v20[6];
  v22 = v20[1];
  v79 = *v20;
  v80 = v22;
  v23 = v20[3];
  v81 = v20[2];
  v82 = v23;
  v24 = *(&v79 + 1);
  if (!*(&v79 + 1))
  {
    return v15;
  }

  v71 = v5;
  v72 = v13;
  v73 = v10;
  v70 = v7;
  v74 = v6;
  v25 = *(&v82 + 1);
  v26 = *(&v83 + 1);
  v69 = v83;
  v68 = v84;
  v27 = v85;
  v64 = v81;
  v28 = *(&v81 + 1);
  v66 = v82;
  v29 = *(&v80 + 1);
  v63 = v80;
  v65 = v79;
  v67 = *(&v84 + 1);
  v30 = *(&v84 + 1);
  v62 = v27;

  v31 = v28;

  v32 = v17;
  if (v17 <= 1u)
  {
    v33 = v68;
    if (!v17)
    {
      v33 = v64;
    }

    v68 = v33;
    v34 = v67;
    if (v17)
    {
      v35 = v69;
    }

    else
    {
      v34 = v28;
      v35 = v63;
    }

    if (v32)
    {
      v36 = v26;
    }

    else
    {
      v36 = v29;
    }

    if (v32)
    {
      v37 = v25;
    }

    else
    {
      v37 = v24;
    }

    v38 = v32 == 0;
    v39 = v66;
    if (v38)
    {
      v39 = v65;
    }

    v69 = v39;
    v40 = v74;
    v41 = v73;
    v42 = v72;
    v43 = v71;
    goto LABEL_30;
  }

  v41 = v73;
  v42 = v72;
  v43 = v71;
  if (v17 == 2)
  {
    result = IndexPath.row.getter();
    v40 = v74;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v62 + 16))
      {
        v44 = v62 + 48 * result;
LABEL_29:
        v37 = *(v44 + 40);
        v69 = *(v44 + 32);
        v35 = *(v44 + 48);
        v36 = *(v44 + 56);
        v68 = *(v44 + 64);
        v34 = *(v44 + 72);
LABEL_30:
        v46 = v34;
        v47 = v34;
        v72 = v46;
        v48 = v47;
        v67 = v36;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v73 = v48;
        static UIListContentConfiguration.cell()();
        v71 = v35;
        UIListContentConfiguration.text.setter();
        UIListContentConfiguration.image.setter();
        v49 = v76;
        v78[3] = v76;
        v78[4] = &protocol witness table for UIListContentConfiguration;
        v50 = sub_10007C900(v78);
        (*(v75 + 16))(v50, v42, v49);
        UITableViewCell.contentConfiguration.setter();
        static UIBackgroundConfiguration.listGroupedCell()();
        v51 = [objc_opt_self() quaternarySystemFillColor];
        UIBackgroundConfiguration.backgroundColor.setter();
        v52 = v70;
        (*(v70 + 16))(v43, v41, v40);
        (*(v52 + 56))(v43, 0, 1, v40);
        UITableViewCell.backgroundConfiguration.setter();
        v53 = [objc_allocWithZone(UISwitch) init];
        v54 = v68 & 1;
        [v53 setOn:v68 & 1];
        sub_1000084D4(0, &qword_10011D7C0, UIAction_ptr);
        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        v57 = v69;
        *(v56 + 16) = v55;
        *(v56 + 24) = v57;
        v58 = v71;
        *(v56 + 32) = v37;
        *(v56 + 40) = v58;
        *(v56 + 48) = v67;
        *(v56 + 56) = v54;
        *(v56 + 57) = v78[0];
        *(v56 + 60) = *(v78 + 3);
        *(v56 + 64) = v72;
        *(v56 + 72) = v53;
        v59 = v53;
        v60 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v59 addAction:v60 forControlEvents:4096];
        [v15 setAccessoryView:v59];

        sub_10000E950(&v79, &qword_10011EB18, &qword_1000D8960);
        (*(v52 + 8))(v41, v74);
        (*(v75 + 8))(v42, v76);
        return v15;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = IndexPath.row.getter();
  v40 = v74;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (result < *(*(&v27 + 1) + 16))
  {
    v44 = *(&v27 + 1) + 48 * result;
    goto LABEL_29;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000942B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      sub_1000BA668(a3, [a4 isOn]);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000944B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009451C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000945CC(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    return 0;
  }

  v6 = v3 + *(v4 + 76);
  if (!*(v6 + 8))
  {
    return 0;
  }

  if (v2 < 2u)
  {
    return 1;
  }

  v9 = v6 + 96;
  v7 = *(v6 + 96);
  v8 = *(v9 + 8);
  if (v2 != 2)
  {
    v7 = v8;
  }

  return *(v7 + 16);
}

id sub_1000946A0(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v8 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    static UIListContentConfiguration.plainHeader()();
    if (a1 == 3)
    {
      v9 = 19;
    }

    else
    {
      v9 = 20;
    }

    sub_100033A5C(v9);
    UIListContentConfiguration.text.setter();
    v12[3] = v2;
    v12[4] = &protocol witness table for UIListContentConfiguration;
    v10 = sub_10007C900(v12);
    (*(v3 + 16))(v10, v6, v2);
    UITableViewHeaderFooterView.contentConfiguration.setter();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000947F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100094864()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F2F0);
  v1 = sub_10000A570(v0, qword_10011F2F0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100095548(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();
  [v1 setTitle:v5];

  v6 = a1[2];
  v7 = a1[3];
  v8 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v8];

  v9 = a1[4];
  v10 = a1[5];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v27 = sub_10009597C;
  v28 = v11;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100107738;
  v13 = _Block_copy(&v23);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = a1[6];
  v17 = a1[7];
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v19 = String._bridgeToObjectiveC()();
  v27 = sub_1000959C4;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000C034;
  v26 = &unk_100107760;
  v20 = _Block_copy(&v23);
  v21 = [v14 actionWithTitle:v19 style:1 handler:v20];

  _Block_release(v20);

  v22 = [v1 addAction:v21];
}

void sub_100095800(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100095944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000959AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000959FC(uint64_t a1)
{
  v2 = v1;
  sub_1000968C8(&OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___encoder, &type metadata accessor for JSONEncoder, &JSONEncoder.init());
  v4 = *(a1 + 16);
  v31 = *a1;
  v32 = v4;
  v33 = *(a1 + 32);
  sub_1000973AC();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage;
  v9 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v14 = *a1;
  v13 = *(a1 + 8);
  *(&v32 + 1) = &type metadata for Data;
  *&v31 = v5;
  *(&v31 + 1) = v7;
  sub_10004D3D8(&v31, v30);

  sub_10007B8A8(v5, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v12;
  sub_1000975B8(v30, v14, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v2 + v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:isa forKey:{v18, v29}];

  if (qword_10011C718 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A570(v19, qword_10011F340);
  sub_10007B8A8(v5, v7);
  sub_100097400(a1, &v31);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100022640(v5, v7);
  sub_100097438(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v30[0] = swift_slowAlloc();
    *v22 = 136315394;
    *&v31 = v5;
    *(&v31 + 1) = v7;
    sub_10007B8A8(v5, v7);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_100078978(v23, v24, v30);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *&v31 = v14;
    *(&v31 + 1) = v13;
    v26 = String.init<A>(reflecting:)();
    v28 = sub_100078978(v26, v27, v30);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Storing engraving data received from AACP %s for:%s", v22, 0x16u);
    swift_arrayDestroy();

    sub_100022640(v5, v7);
  }

  else
  {

    sub_100022640(v5, v7);
  }
}

void sub_100095FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  v10 = 0uLL;
  if (!v9)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_1000CD118(a1, a2), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10003CE5C(*(v11 + 56) + 32 * v12, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v15 = v24;
  v14 = v25;
  sub_1000968C8(&OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___decoder, &type metadata accessor for JSONDecoder, &JSONDecoder.init());
  sub_10009771C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100022640(v15, v14);

  v16 = v20[0];
  v17 = v20[1];
  v18 = v21;
  v10 = v22;
  v19 = v23;
LABEL_9:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v10;
  *(a3 + 40) = v19;
}

uint64_t sub_100096394()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F340);
  v1 = sub_10000A570(v0, qword_10011F340);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t *sub_10009645C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100096530()
{
  v1 = 0x6574617473;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000965B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000965F8(uint64_t a1)
{
  v2 = sub_100097910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096634(uint64_t a1)
{
  v2 = sub_100097910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100096670(void *a1)
{
  v3 = v1;
  v5 = sub_100008438(&qword_10011F3B0, &unk_1000D92F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8 - 8];
  v10 = a1[4];
  sub_10000E7E4(a1, a1[3]);
  sub_100097910();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 16);
    v16[0] = 1;
    sub_100097964();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v3 + 3);
    v18 = v17;
    v16[23] = 2;
    sub_1000979B8(&v18, v16);
    sub_100097A28();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100047878(v17, *(&v17 + 1));
    v13 = v3[5];
    LOBYTE(v17) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_10009686C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100097BE8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1000968C8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    v9 = a2();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v6 = a3();
    v12 = *(v8 + v4);
    *(v8 + v4) = v6;
  }

  return v6;
}

void sub_100096A14(uint64_t a1, void *a2, void *aBlock)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v6;

  v7 = a2;
  v5();
}

void sub_100096ACC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

uint64_t sub_100096BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100096CA8;
  v9[3] = &unk_100107800;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);
}

uint64_t sub_100096CA8(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_100047878(v2, v7);
}

id sub_100096D40()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___decoder] = 0;
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___encoder] = 0;
  v2 = &v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100096E5C(void *a1)
{
  v3 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:{objc_msgSend(a1, "productIdentifier")}];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 supportsDigitalEngraving];

    if (v5)
    {
      v6 = [a1 addressString];
      if (v6)
      {
        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_100095FB0(v8, v10, v15);
        if (v15[1])
        {
          sub_1000977F4(v15);
        }

        else
        {
          v16[0] = v8;
          v16[1] = v10;
          v17 = 0;
          v18 = xmmword_1000D78D0;
          v19 = 0;

          sub_1000959FC(v16);

          sub_100047878(0, 0xF000000000000000);
          v11 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
          if (v11)
          {
            v12 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler + 8);
            v13 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v14 = swift_allocObject();
            v14[2] = v8;
            v14[3] = v10;
            v14[4] = v13;
            sub_100062D70(v11);

            v11(a1, sub_1000977E8, v14);
            sub_1000622D4(v11);
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_100097088(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v29 = v4;
    v30 = v5;
    sub_10007B8A8(a1, a2);
    if (qword_10011C718 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A570(v10, qword_10011F340);
    sub_10007B8A8(a1, a2);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    sub_100047878(a1, a2);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315138;
      v23 = a1;
      v24 = a2;
      sub_10007B8A8(a1, a2);
      v14 = String.init<A>(reflecting:)();
      v16 = a4;
      v17 = a3;
      v18 = sub_100078978(v14, v15, &v22);

      *(v13 + 4) = v18;
      a3 = v17;
      a4 = v16;
      _os_log_impl(&_mh_execute_header, v11, v12, "Engraving data received from AACP %s", v13, 0xCu);
      sub_10000EA94(v21);
    }

    v23 = a3;
    v24 = a4;
    v25 = 1;
    v26 = a1;
    v27 = a2;
    v28 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;

      sub_1000959FC(&v23);

      sub_100047878(a1, a2);
    }

    else
    {
      sub_100047878(a1, a2);
    }
  }
}

unint64_t sub_1000973AC()
{
  result = qword_10011F3A0;
  if (!qword_10011F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3A0);
  }

  return result;
}

unint64_t sub_100097468(char a1, uint64_t a2, char a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000CD190(a4);
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
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_10004F5B4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10004EE10(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_1000CD190(a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 24 * v13;
    v26 = *(v25 + 8);
    *v25 = a1;
    *(v25 + 8) = a2;
    v27 = *(v25 + 16);
    *(v25 + 16) = a3;

    return sub_100097708(v26, v27);
  }

  else
  {

    return sub_10004F388(v13, a4, a1, a2, a3, v24);
  }
}

_OWORD *sub_1000975B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000CD118(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10004F730();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004F0D0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000CD118(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_10000EA94(v23);

    return sub_10004D3D8(a1, v23);
  }

  else
  {
    sub_10004F3DC(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_100097708(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10009771C()
{
  result = qword_10011F3A8;
  if (!qword_10011F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3A8);
  }

  return result;
}

uint64_t sub_100097770()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000977A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000977F4(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011EB10, &qword_1000D91E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100097864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009787C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000978BC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000978D8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100097910()
{
  result = qword_10011F3B8;
  if (!qword_10011F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3B8);
  }

  return result;
}

unint64_t sub_100097964()
{
  result = qword_10011F3C0;
  if (!qword_10011F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3C0);
  }

  return result;
}

uint64_t sub_1000979B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EAF0, &qword_1000D8908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100097A28()
{
  result = qword_10011F3C8;
  if (!qword_10011F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3C8);
  }

  return result;
}

uint64_t sub_100097A7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000E1740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000E1760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000E1780 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100097BE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100008438(&qword_10011F3D0, &qword_1000D9300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10000E7E4(a1, a1[3]);
  sub_100097910();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000EA94(a1);
  }

  LOBYTE(v21) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v20 = v11;
  v24 = 1;
  sub_100097EC4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v21;
  v24 = 2;
  sub_100097F18();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v14;
  v15 = v22;
  v19 = v21;
  LOBYTE(v21) = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);

  v17 = v19;
  sub_10007CE0C(v19, v15);
  sub_10000EA94(a1);

  result = sub_100047878(v17, v15);
  *a2 = v20;
  *(a2 + 8) = v13;
  *(a2 + 16) = v23;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

unint64_t sub_100097EC4()
{
  result = qword_10011F3D8;
  if (!qword_10011F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3D8);
  }

  return result;
}

unint64_t sub_100097F18()
{
  result = qword_10011F3E0;
  if (!qword_10011F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000980D0()
{
  result = qword_10011F3E8;
  if (!qword_10011F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3E8);
  }

  return result;
}

unint64_t sub_100098128()
{
  result = qword_10011F3F0;
  if (!qword_10011F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3F0);
  }

  return result;
}

unint64_t sub_100098180()
{
  result = qword_10011F3F8;
  if (!qword_10011F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3F8);
  }

  return result;
}

unint64_t sub_1000981D8()
{
  result = qword_10011F400;
  if (!qword_10011F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F400);
  }

  return result;
}

unint64_t sub_10009822C()
{
  result = qword_10011F408;
  if (!qword_10011F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F408);
  }

  return result;
}

uint64_t sub_10009828C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_1001231C0);
  sub_10000A570(v0, qword_1001231C0);
  return Logger.init(subsystem:category:)();
}

void *sub_100098310()
{
  v1 = v0;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = [objc_allocWithZone(NISession) init];
  v0[11] = 0;
  v10 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v21[1] = "v48@0:8@16@24@32@40";
  v21[2] = v10;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10009BAF8(&qword_10011F640, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10009BB40(&qword_10011F650, &qword_10011F648, &qword_1000D98F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v11 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v0[6];
  v0[6] = v11;

  v0[7] = [objc_allocWithZone(CBDiscovery) init];
  v0[5] = [objc_allocWithZone(type metadata accessor for NISessionDelegate()) init];
  swift_weakAssign();
  v13 = v0[7];

  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v14 setLabel:v15];

  [v1[7] setDiscoveryFlags:0x4000];
  [v1[7] clearDuplicateFilterCache];
  v16 = v1[7];
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v16;

  aBlock[4] = sub_10009B168;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A2630;
  aBlock[3] = &unk_100107A48;
  v19 = _Block_copy(aBlock);

  [v18 setDeviceFoundHandler:v19];
  _Block_release(v19);

  return v1;
}

void sub_100098740(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 identifier];
    if (v4)
    {
      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = *(v3 + 72);
      if (v8)
      {
        if (v9)
        {
          if (v6 == *(v3 + 64) && v9 == v8)
          {

LABEL_28:
            if (qword_10011C720 != -1)
            {
              swift_once();
            }

            v30 = type metadata accessor for Logger();
            sub_10000A570(v30, qword_1001231C0);
            v31 = a1;
            v14 = Logger.logObject.getter();
            v15 = static os_log_type_t.debug.getter();

            if (!os_log_type_enabled(v14, v15))
            {
              goto LABEL_33;
            }

            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *v16 = 138412290;
            *(v16 + 4) = v31;
            *v17 = v31;
            v32 = v31;
            v19 = "Ignoring advertisements from an already displayed device %@";
            goto LABEL_32;
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v11)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

LABEL_15:
        if (sub_10009B188([a1 proximityPairingProductID]) & 1) != 0 || (sub_10009B1A8(objc_msgSend(a1, "proximityPairingProductID")))
        {
          if (qword_10011C720 != -1)
          {
            swift_once();
          }

          v12 = type metadata accessor for Logger();
          sub_10000A570(v12, qword_1001231C0);
          v13 = a1;
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v14, v15))
          {
            goto LABEL_33;
          }

          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v13;
          *v17 = v13;
          v18 = v13;
          v19 = "Ignoring advertisements from W1/W2 device %@";
        }

        else
        {
          sub_1000084D4(0, &qword_10011F658, NIBluetoothSample_ptr);
          v20 = a1;
          v21 = sub_100098C78(v20);
          if (v21)
          {
            v14 = v21;
            v22 = [*(v3 + 80) devicePresenceNotifier];
            [v22 notifyBluetoothSample:v14];

            if (qword_10011C720 != -1)
            {
              swift_once();
            }

            v23 = type metadata accessor for Logger();
            sub_10000A570(v23, qword_1001231C0);
            v24 = v20;
            v25 = Logger.logObject.getter();
            v26 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v25, v26))
            {
              v27 = swift_slowAlloc();
              v28 = swift_slowAlloc();
              *v27 = 138412290;
              *(v27 + 4) = v24;
              *v28 = v24;
              v29 = v24;
              _os_log_impl(&_mh_execute_header, v25, v26, "Notified NI Sample for device: %@", v27, 0xCu);
              sub_10000E950(v28, &unk_10011D820, &qword_1000D7280);
            }

            goto LABEL_34;
          }

          if (qword_10011C720 != -1)
          {
            swift_once();
          }

          v33 = type metadata accessor for Logger();
          sub_10000A570(v33, qword_1001231C0);
          v34 = v20;
          v14 = Logger.logObject.getter();
          v15 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v14, v15))
          {
LABEL_33:

LABEL_34:

            return;
          }

          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v34;
          *v17 = v34;
          v35 = v34;
          v19 = "Couldn't create BTSample for device: %@";
        }

LABEL_32:
        _os_log_impl(&_mh_execute_header, v14, v15, v19, v16, 0xCu);
        sub_10000E950(v17, &unk_10011D820, &qword_1000D7280);

        goto LABEL_33;
      }
    }

    else
    {
      v9 = *(v3 + 72);
    }

    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_15;
  }
}

id sub_100098C78(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 bleRSSI];
    v5 = [a1 model];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v18 = v4;
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 initWithRSSI:v3 identifier:v19 model:objc_msgSend(a1 channel:"bleChannel") machContinuousTimeSeconds:{v18, mach_continuous_time()}];
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
      v13 = v8;
      v14 = String.init<A>(reflecting:)();
      v16 = sub_100078978(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Can't create NIBTSample for device: %s. No stableIdentifier.", v11, 0xCu);
      sub_10000EA94(v12);
    }

    else
    {
    }

    return 0;
  }

  return v20;
}

void sub_100098F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = &type metadata for AudioAccessoryFeatures;
  v27 = sub_10009B230();
  LOBYTE(v25[0]) = 1;
  v6 = isFeatureEnabled(_:)();
  sub_10000EA94(v25);
  if (v6)
  {
    if (a2)
    {
      v7 = v3[9];
      v3[8] = a1;
      v3[9] = a2;

      if (qword_10011C720 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000A570(v8, qword_1001231C0);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25[0] = v12;
        *v11 = 136315138;
        v13 = *v3;
        v14 = _typeName(_:qualified:)();
        v16 = sub_100078978(v14, v15, v25);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v9, v10, "%s: Scan starting", v11, 0xCu);
        sub_10000EA94(v12);
      }

      sub_100099938();
      v17 = v3[7];
      v27 = sub_1000992FC;
      v28 = 0;
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 1107296256;
      v25[2] = sub_10006AF20;
      v26 = &unk_100107AC0;
      v18 = _Block_copy(v25);
      [v17 activateWithCompletion:v18];
      _Block_release(v18);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = "Scan Started";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);
      }
    }

    else
    {
      if (qword_10011C720 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000A570(v24, qword_1001231C0);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = "Invalid Identifier";
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A570(v23, qword_1001231C0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Feature Flag is disabled";
      goto LABEL_17;
    }
  }
}

void sub_1000992FC(uint64_t a1)
{
  if (a1)
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A570(v1, qword_1001231C0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Scan Failed", v3, 2u);
    }
  }
}

void sub_1000993EC()
{
  v8[3] = &type metadata for AudioAccessoryFeatures;
  v8[4] = sub_10009B230();
  LOBYTE(v8[0]) = 1;
  v1 = isFeatureEnabled(_:)();
  sub_10000EA94(v8);
  if (v1)
  {
    [*(v0 + 80) pause];
    [*(v0 + 56) setDiscoveryFlags:0];
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A570(v2, qword_1001231C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Scan Stopped";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Feature Flag is disabled";
      goto LABEL_10;
    }
  }
}

void sub_1000995B4()
{
  v1 = v0;
  v16[3] = &type metadata for AudioAccessoryFeatures;
  v16[4] = sub_10009B230();
  LOBYTE(v16[0]) = 1;
  v2 = isFeatureEnabled(_:)();
  sub_10000EA94(v16);
  if (v2)
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_1001231C0);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      swift_beginAccess();
      *(v6 + 4) = *(*(v1 + 16) + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "Total number of devices nearby: %ld", v6, 0xCu);
    }

    else
    {
    }

    v12 = String._bridgeToObjectiveC()();
    sub_100008438(&qword_10011F688, &qword_1000D9620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001000E19E0;
    swift_beginAccess();
    v14 = *(*(v1 + 16) + 16);
    *(inited + 48) = Int._bridgeToObjectiveC()();
    sub_1000A3988(inited);
    swift_setDeallocating();
    sub_10000E950(inited + 32, &unk_10011F690, &qword_1000D9628);
    sub_1000084D4(0, &qword_10011E0A0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    AnalyticsSendEvent();

    [*(v1 + 56) invalidate];
    [*(v1 + 80) invalidate];
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Scan Invalidated";
      goto LABEL_13;
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "Feature Flag is disabled";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v8, v9, v11, v10, 2u);
    }
  }
}

void sub_100099938()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A570(v4, qword_1001231C0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Scheduling NISession creation", v7, 2u);
  }

  aBlock[4] = sub_10009BB94;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019340;
  aBlock[3] = &unk_100107A98;
  _Block_copy(aBlock);
  sub_10009BAF8(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);

  sub_100008438(&unk_100120090, &unk_1000D78C0);
  sub_10009BB40(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = type metadata accessor for DispatchWorkItem();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = DispatchWorkItem.init(flags:block:)();

  v12 = *(v1 + 88);
  *(v1 + 88) = v11;
  if (v12)
  {
    swift_retain_n();
    dispatch thunk of DispatchWorkItem.cancel()();

    v13 = *(v1 + 48);
    if (v13)
    {
LABEL_7:
      v14 = v13;
      OS_dispatch_queue.async(execute:)();

      return;
    }
  }

  else
  {

    v13 = *(v1 + 48);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Dispatch Queue Failed", v17, 2u);
  }
}

void sub_100099C90(uint64_t a1)
{
  v2 = [objc_allocWithZone(NISession) init];
  v3 = *(a1 + 80);
  *(a1 + 80) = v2;
  v4 = v2;
  [v3 invalidate];

  sub_100099DC8();
  if (qword_10011C720 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A570(v5, qword_1001231C0);
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v6, "NISession created", v7, 2u);
  }
}

void sub_100099DC8()
{
  v1 = objc_allocWithZone(NIRegionPredicate);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithName:v2 devicePresencePreset:1];

  v4 = objc_allocWithZone(NIRegionPredicate);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithName:v5 devicePresencePreset:5];

  v7 = objc_allocWithZone(NIDevicePresenceConfiguration);
  v20 = 0;
  v8 = v3;
  v9 = v6;
  v10 = [v7 initWithInnerBoundary:v8 outerBoundary:v9 error:&v20];
  if (v10)
  {
    v11 = v10;
    v12 = v20;

    [v11 setAllowedDevices:8];
    [v11 setMonitoringOption:1];
    [*(v0 + 80) setDelegate:*(v0 + 40)];
    [*(v0 + 80) setDelegateQueue:*(v0 + 48)];
    [*(v0 + 80) runWithConfiguration:v11];
  }

  else
  {
    v13 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A570(v14, qword_1001231C0);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "NIDevicePresenceConfiguration failed with %@", v17, 0xCu);
      sub_10000E950(v18, &unk_10011D820, &qword_1000D7280);
    }

    else
    {
    }
  }
}

void sub_10009A0E0(Swift::Int a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 72);
  if (v15)
  {
    v16 = *(v2 + 64) == a1 && v15 == a2;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return;
    }
  }

  v56 = a2;
  v57 = a1;
  v52 = v10;
  v53 = v6;
  v54 = v5;
  v55 = v2;
  v17 = [*(v2 + 56) discoveredDevices];
  sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = v11;
  v51 = v9;
  v49 = v14;
  if (v18 >> 62)
  {
LABEL_35:
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_9;
    }

LABEL_36:

    return;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_9:
  v20 = 0;
  while (1)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v24 = [v21 identifier];
    if (!v24)
    {
      goto LABEL_10;
    }

    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == v57 && v28 == v56)
    {
      break;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      v31 = v56;
      goto LABEL_24;
    }

LABEL_10:

    ++v20;
    if (v23 == v19)
    {
      goto LABEL_36;
    }
  }

  v31 = v56;

LABEL_24:

  v32 = v55;
  swift_beginAccess();

  v33 = v32;
  sub_1000A63DC(&v59, v57, v31);
  swift_endAccess();

  if (sub_10009B188([v22 proximityPairingProductID]) || sub_10009B1A8(objc_msgSend(v22, "proximityPairingProductID")))
  {
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_10000A570(v34, qword_1001231C0);
    v35 = v56;

    v36 = v22;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      aBlock[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v36;
      *v40 = v36;
      *(v39 + 12) = 2080;
      v42 = v36;
      *(v39 + 14) = sub_100078978(v57, v35, aBlock);
      _os_log_impl(&_mh_execute_header, v37, v38, "***DETECTED*** Found nearby device: %@ with identifier: %s", v39, 0x16u);
      sub_10000E950(v40, &unk_10011D820, &qword_1000D7280);

      sub_10000EA94(v41);
    }

    sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
    v43 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10009BAF0;
    aBlock[5] = v33;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100107A70;
    v44 = _Block_copy(aBlock);

    v45 = v49;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10009BAF8(&qword_10011F670, &type metadata accessor for DispatchWorkItemFlags);
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_10009BB40(&qword_10011F680, &unk_100120090, &unk_1000D78C0);
    v46 = v51;
    v47 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);

    (*(v53 + 8))(v46, v47);
    (*(v50 + 8))(v45, v52);
  }
}