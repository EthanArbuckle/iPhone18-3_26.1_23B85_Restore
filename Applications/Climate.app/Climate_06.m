uint64_t sub_1000803AC@<X0>(uint64_t a1@<X8>)
{
  sub_10000827C(0, &qword_100115830);
  CAFPositionedRequired.layoutKey.getter();
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

void sub_100080444()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent);
  v5 = [v4 currentIndexRange];
  CAFRange.minimumValue<A>()();

  if (v16 == v3)
  {
    v6 = [v4 currentIndexRange];
    CAFRange.minimumValue<A>()();

    v7 = [v4 currentIndexRange];
    CAFRange.stepValue<A>()();

    v8 = 2 * v16;
    if (!__CFADD__(v16, v16))
    {
      v9 = [v4 currentIndexRange];
      CAFRange.maximumValue<A>()();

      if (v16 < v8)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v10 = [v4 currentIndexRange];
    CAFRange.maximumValue<A>()();

    if (v3 >= v16)
    {
      v15 = [v4 currentIndexRange];
      CAFRange.maximumValue<A>()();

      v14 = [v4 currentIndexRange];
      CAFRange.minimumValue<A>()();
      goto LABEL_10;
    }

    v11 = [v4 currentIndexRange];
    CAFRange.stepValue<A>()();

    v12 = __CFADD__(v3, v16);
    v8 = v3 + v16;
    if (!v12)
    {
      v13 = [v4 currentIndexRange];
      CAFRange.maximumValue<A>()();

      if (v16 < v8)
      {
LABEL_8:
        v14 = [v4 currentIndexRange];
        CAFRange.maximumValue<A>()();
LABEL_10:

        v8 = v16;
      }

LABEL_11:
      *(v1 + v2) = v8;
      (*((swift_isaMask & *v1) + 0x1F8))();
      return;
    }
  }

  __break(1u);
}

void sub_100080778(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for CAFVent.Configuration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  CAFVent.configuration.getter();
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 != enum case for CAFVent.Configuration.onMany(_:))
  {
    if (v10 != enum case for CAFVent.Configuration.onSingle(_:))
    {
      if (v10 != enum case for CAFVent.Configuration.many(_:) && v10 != enum case for CAFVent.Configuration.manyWithZero(_:))
      {

        (*(v5 + 8))(v7, v4);
        return;
      }

      sub_100080444();
      (*((swift_isaMask & *v9) + 0x1F8))();
      goto LABEL_9;
    }

    v12 = [*(v9 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent) setOn:{objc_msgSend(*(v9 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent), "on") ^ 1}];
    goto LABEL_8;
  }

  v11 = OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent;
  if (![*(v9 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent) on])
  {
    v12 = [*(v9 + v11) setOn:1];
LABEL_8:
    (*((swift_isaMask & *v9) + 0x1F8))(v12);
    goto LABEL_9;
  }

  sub_100080444();
LABEL_9:
  v13 = [a3 currentIndex];
  if (v13 != *(v9 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue))
  {
    [a3 setCurrentIndex:?];
  }
}

uint64_t sub_100080AAC()
{
}

id sub_100080AF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateVentServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateVentServiceButton()
{
  result = qword_100117058;
  if (!qword_100117058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100080DAC(void *a1, char a2)
{
  v5 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v6 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543618;
    *(v7 + 4) = a1;
    *v8 = a1;
    *(v7 + 12) = 1026;
    *(v7 + 14) = a2 & 1;
    v9 = a1;
    _os_log_impl(&_mh_execute_header, v6, v5, "Vent: %{public}@ ON state updated to: %{BOOL,public}d", v7, 0x12u);
    sub_100006C40(v8);
  }

  v10 = *((swift_isaMask & *v2) + 0x1F8);

  return v10();
}

unint64_t sub_100081014()
{
  result = qword_100117068;
  if (!qword_100117068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117068);
  }

  return result;
}

unint64_t sub_100081068(uint64_t a1)
{
  result = sub_100081090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100081090()
{
  result = qword_1001170A8;
  if (!qword_1001170A8)
  {
    type metadata accessor for ClimateVentServiceButton();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001170A8);
  }

  return result;
}

void *sub_1000810E8(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for CAFVent.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue] = 0;
  v10 = &v3[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_defaultSymbolName];
  *v10 = 0xD000000000000012;
  v10[1] = 0x80000001000DD970;
  *&v3[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_vent] = a1;
  v3[OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_style] = a2;
  sub_1000040E8(&qword_1001170B0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000D5970;
  v56 = 0;
  v57 = 0xE000000000000000;
  v12 = a1;
  _StringGuts.grow(_:)(81);
  v13._countAndFlagsBits = 0x207075746553;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = [v12 name];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 0xD000000000000019;
  v19._object = 0x80000001000DD990;
  String.append(_:)(v19);
  v20 = [v12 hasOn];
  v21 = v20 == 0;
  if (v20)
  {
    v22 = 1702195828;
  }

  else
  {
    v22 = 0x65736C6166;
  }

  if (v21)
  {
    v23 = 0xE500000000000000;
  }

  else
  {
    v23 = 0xE400000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v22);

  v25._countAndFlagsBits = 0xD000000000000016;
  v25._object = 0x80000001000DD9B0;
  String.append(_:)(v25);
  v26 = [v12 combinations];
  sub_10000827C(0, &qword_1001170B8);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v27 >> 62)
  {
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = v28;
  v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 0xD000000000000014;
  v30._object = 0x80000001000DD9D0;
  String.append(_:)(v30);
  CAFVent.configuration.getter();
  v31 = CAFVent.Configuration.rawValue.getter();
  v33 = v32;
  (*(v7 + 8))(v9, v6);
  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35 = v56;
  v36 = v57;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v35;
  *(v11 + 40) = v36;
  print(_:separator:terminator:)();

  v37 = type metadata accessor for ClimateVentServiceButton();
  v58.receiver = v3;
  v58.super_class = v37;
  v38 = objc_msgSendSuper2(&v58, "init");
  v39 = [v12 registerObserver:v38];
  v40 = *((swift_isaMask & *v38) + 0x1F8);
  (v40)(v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  *(v42 + 24) = v12;
  v43 = (v38 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v44 = *v43;
  *v43 = sub_100081758;
  v43[1] = v42;
  v45 = v12;

  sub_100003380(v44);

  (v40)(v46);
  v47 = [v38 imageView];

  if (v47)
  {
    v48 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_1000D5DA0;
    v50 = [v47 firstBaselineAnchor];
    v51 = [v38 firstBaselineAnchor];
    v52 = [v50 constraintEqualToAnchor:v51];

    *(v49 + 32) = v52;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v48 activateConstraints:isa];
  }

  v54 = [v45 currentIndex];
  *(v38 + OBJC_IVAR____TtC7Climate24ClimateVentServiceButton_currentValue) = v54;
  v40();
  return v38;
}

uint64_t sub_1000816E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100081718()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100081760(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_activeConstraints;
  sub_10000827C(0, &qword_1001149C0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:v6];
}

void sub_100081860()
{
  v1 = type metadata accessor for CAFUISettingsCache();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-v6];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!v17[8])
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView);
    if (*(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive) == 1)
    {
      [v8 setHidden:1];
      [*(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton) setHidden:1];
      v9 = sub_100081B70();
      [v9 setHidden:0];
    }

    else
    {
      [v8 setHidden:0];
      v10 = sub_100081B70();
      [v10 setHidden:1];

      v9 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton);
      v11 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
      swift_beginAccess();
      sub_1000287E8(v0 + v11, v7, &unk_100117180);
      if ((*(v2 + 48))(v7, 1, v1))
      {
        v12 = v9;
        sub_100008904(v7, &unk_100117180);
        v13 = 1;
      }

      else
      {
        (*(v2 + 16))(v4, v7, v1);
        v14 = v9;
        sub_100008904(v7, &unk_100117180);
        v15 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
        (*(v2 + 8))(v4, v1);
        if (v15 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v13 = v16 == 0;
      }

      [v9 setHidden:v13];
    }
  }
}

id sub_100081B70()
{
  v1 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard);
  }

  else
  {
    v4 = sub_100081BD4(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_100081BD4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v15[0];
  if (v15[0])
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = type metadata accessor for ClimateCoordinator();
    v17 = &off_1000F7FD8;
    v15[0] = v1;
    v4 = objc_allocWithZone(type metadata accessor for ClimateZoneCard());
    v5 = sub_10008C668(v15, v16);
    v6 = __chkstk_darwin(v5);
    v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;

    v11 = v1;
    v12 = sub_1000893E8(v2, v10, sub_10008C92C, v3, v4);
    sub_100006B9C(v15);

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_100081DFC()
{
  v1 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem + 8);
    v5 = objc_allocWithZone(type metadata accessor for ClimateSystemControls());
    v6 = v4;
    v7 = v0;
    v8 = sub_10005D7BC(v6);
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100081E88()
{
  v1 = v0;
  sub_1000040E8(&unk_100114770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D8650;
  v3 = sub_100081DFC();
  v4 = [v3 topAnchor];

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = [result safeAreaLayoutGuide];

  v8 = [v7 topAnchor];
  v9 = [v4 constraintEqualToAnchor:v8];

  *(v2 + 32) = v9;
  v10 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls;
  v11 = [*&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  v13 = [result safeAreaLayoutGuide];

  v14 = [v13 bottomAnchor];
  v15 = [v11 constraintEqualToAnchor:v14];

  *(v2 + 40) = v15;
  v16 = [*&v1[v10] leftAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = result;
  v18 = [result safeAreaLayoutGuide];

  v19 = [v18 leftAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];

  *(v2 + 48) = v20;
  v21 = [*&v1[v10] widthAnchor];
  v22 = [v21 constraintEqualToConstant:66.0];

  *(v2 + 56) = v22;
  v23 = sub_100081B70();
  v24 = [v23 topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = result;
  v26 = [result safeAreaLayoutGuide];

  v27 = [v26 topAnchor];
  v28 = [v24 constraintEqualToAnchor:v27 constant:4.0];

  *(v2 + 64) = v28;
  v29 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard;
  v30 = [*&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard] leftAnchor];
  v31 = [*&v1[v10] rightAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v2 + 72) = v32;
  v76 = v2;
  v33 = [objc_allocWithZone(UILayoutGuide) init];
  result = [v1 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = result;
  v74 = v10;
  [result addLayoutGuide:v33];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8660;
  v36 = [*&v1[v29] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = result;
  v38 = [result safeAreaLayoutGuide];

  v39 = [v38 bottomAnchor];
  v40 = [v36 constraintEqualToAnchor:v39 constant:-4.0];

  *(inited + 32) = v40;
  v41 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView;
  v42 = [*&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView] centerYAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v43 = result;
  v44 = [result safeAreaLayoutGuide];

  v45 = [v44 centerYAnchor];
  v46 = [v42 constraintEqualToAnchor:v45];

  *(inited + 40) = v46;
  v47 = [*&v1[v41] widthAnchor];
  v48 = [v47 constraintEqualToConstant:216.0];

  *(inited + 48) = v48;
  v49 = [*&v1[v41] heightAnchor];
  v50 = [v49 constraintEqualToConstant:216.0];

  *(inited + 56) = v50;
  v51 = [v33 leftAnchor];
  v52 = [*&v1[v29] rightAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(inited + 64) = v53;
  v54 = [v33 rightAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = result;
  v56 = [result safeAreaLayoutGuide];

  v57 = [v56 rightAnchor];
  v58 = [v54 constraintEqualToAnchor:v57];

  *(inited + 72) = v58;
  v59 = [*&v1[v41] centerXAnchor];
  v60 = [v33 centerXAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];

  *(inited + 80) = v61;
  sub_1000B7604(inited);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v75)
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_1000D5DA0;
    v63 = [*&v1[v29] widthAnchor];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v64 = 300.0;
    if (v75 == 1)
    {
      v64 = 180.0;
    }

    v65 = [v63 constraintEqualToConstant:v64];

    *(v62 + 32) = v65;
    goto LABEL_15;
  }

  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_1000D58A0;
  v66 = [*&v1[v41] leftAnchor];
  v67 = [*&v1[v74] rightAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:20.0];

  *(v62 + 32) = v68;
  v69 = [*&v1[v29] rightAnchor];
  result = [v1 view];
  if (result)
  {
    v70 = result;
    v71 = [result safeAreaLayoutGuide];

    v72 = [v71 rightAnchor];
    v73 = [v69 constraintEqualToAnchor:v72 constant:-20.0];

    *(v62 + 40) = v73;
LABEL_15:
    sub_1000B7604(v62);

    return v76;
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_10008285C()
{
  sub_1000040E8(&unk_100114770);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D8670;
  v2 = sub_100081DFC();
  v3 = [v2 topAnchor];

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  v6 = [result safeAreaLayoutGuide];

  v7 = [v6 topAnchor];
  v8 = [v3 constraintEqualToAnchor:v7];

  *(v1 + 32) = v8;
  v9 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls;
  v10 = [*&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  v12 = [result safeAreaLayoutGuide];

  v13 = [v12 bottomAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];

  *(v1 + 40) = v14;
  v15 = [*&v0[v9] rightAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = result;
  v17 = [result safeAreaLayoutGuide];

  v18 = [v17 rightAnchor];
  v19 = [v15 constraintEqualToAnchor:v18];

  *(v1 + 48) = v19;
  v20 = [*&v0[v9] widthAnchor];
  v21 = [v20 constraintEqualToConstant:66.0];

  *(v1 + 56) = v21;
  v22 = sub_100081B70();
  v23 = [v22 topAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = result;
  v25 = [result safeAreaLayoutGuide];

  v26 = [v25 topAnchor];
  v27 = [v23 constraintEqualToAnchor:v26 constant:4.0];

  *(v1 + 64) = v27;
  v28 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard;
  v29 = [*&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = result;
  v31 = [result safeAreaLayoutGuide];

  v32 = [v31 bottomAnchor];
  v33 = [v29 constraintEqualToAnchor:v32];

  *(v1 + 72) = v33;
  v66 = v28;
  v34 = [*&v0[v28] rightAnchor];
  v35 = [*&v0[v9] leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v1 + 80) = v36;
  v37 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView;
  v38 = [*&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView] topAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v39 = result;
  v40 = [result safeAreaLayoutGuide];

  v41 = [v40 topAnchor];
  v42 = [v38 constraintEqualToAnchor:v41];

  *(v1 + 88) = v42;
  v43 = [*&v0[v37] bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = result;
  v45 = [result safeAreaLayoutGuide];

  v46 = [v45 bottomAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];

  *(v1 + 96) = v47;
  v48 = [*&v0[v37] leftAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v49 = result;
  v50 = [result safeAreaLayoutGuide];

  v51 = [v50 leftAnchor];
  v52 = [v48 constraintEqualToAnchor:v51];

  *(v1 + 104) = v52;
  v68 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v67)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D58A0;
    v54 = [*&v0[v66] widthAnchor];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = 300.0;
    if (v67 == 1)
    {
      v55 = 180.0;
    }

    v56 = [v54 constraintEqualToConstant:v55];

    *(inited + 32) = v56;
    v57 = [*&v0[v37] rightAnchor];
    v58 = [*&v0[v66] leftAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];
    goto LABEL_15;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v60 = [*&v0[v37] rightAnchor];
  v61 = [*&v0[v9] leftAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-20.0];

  *(inited + 32) = v62;
  v57 = [*&v0[v66] leftAnchor];
  result = [v0 view];
  if (result)
  {
    v63 = result;
    v64 = [result safeAreaLayoutGuide];

    v58 = [v64 leftAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:20.0];
LABEL_15:
    v65 = v59;

    *(inited + 40) = v65;
    sub_1000B7604(inited);
    return v68;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100083154()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v2 - 8);
  v4 = v99 - v3;
  v115 = sub_1000040E8(&qword_1001172A8);
  __chkstk_darwin(v115);
  v114 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v113 = v99 - v7;
  v8 = type metadata accessor for CAFUISettingsCache();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v99 - v13;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v15 = [objc_opt_self() sharedApplication];
  v16 = [v15 delegate];

  if (v16)
  {
    v17 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v18 = sub_1000AF438();
    swift_unknownObjectRelease();
    *&v1[v17] = v18;
    v19 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_53;
    }

LABEL_3:
    for (i = &_swiftEmptySetSingleton; ; i = sub_100027E1C(_swiftEmptyArrayStorage))
    {
      v117 = v14;
      v102 = v11;
      v106 = v4;
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_cancellables] = i;
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_activeConstraints] = v19;
      v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive] = 0;
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard] = 0;
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_autoSettingsObserver] = 0;
      v107 = v9;
      v21 = *(v9 + 56);
      v118 = v8;
      v105 = (v9 + 56);
      v104 = v21;
      v21(&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache], 1, 1, v8);
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls] = 0;
      v22 = *&v1[v17];
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = v22;
      static Published.subscript.getter();

      v24 = v122;
      v120 = v17;
      if (!v122)
      {
        goto LABEL_72;
      }

      v25 = *(&v122 + 1);
      v26 = *(&v123 + 1);
      v9 = v123;
      v27 = v124;
      v17 = v125;
      v28 = &v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem];
      v29 = v123;
      *v28 = v122;
      *(v28 + 1) = v29;
      *(v28 + 2) = v124;
      *(v28 + 6) = v17;
      v30 = objc_allocWithZone(type metadata accessor for ClimateSettingsButton());
      v112 = v27;

      v109 = v24;
      v31 = v24;
      v108 = v25;
      v32 = v25;
      v110 = v9;
      v33 = v9;
      v111 = v26;

      v34 = [v30 init];
      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton] = v34;
      v35 = *&v1[v120];
      v36 = *&v35[OBJC_IVAR____TtC7Climate18ClimateCoordinator_assetManager];
      v37 = v35;

      v38 = sub_10008A05C(&v122, v37, v36);

      *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView] = v38;
      v39 = type metadata accessor for ClimateAppViewController();
      v121.receiver = v1;
      v121.super_class = v39;
      v40 = objc_msgSendSuper2(&v121, "initWithNibName:bundle:", 0, 0);
      v41 = [v31 automakerSettings];
      if (!v41)
      {
        static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        sub_1000081D8(v109, v108, v110);
        return v40;
      }

      v4 = v41;
      v42 = sub_10008BE68();
      v43 = [v4 settingsSections];
      v119 = *(&v27 + 1);
      v103 = v17;
      if (v43)
      {
        v44 = v43;
        sub_10000827C(0, &qword_1001172B8);
        v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v14 = 0;
      }

      v19 = v117;
      v45 = v118;

      CAFUISettingsCache.init(settings:sections:)();
      v46 = CAFUISettingsCache.rootSettings.getter();
      v47 = v46;
      if (v46 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_56:

          static os_log_type_t.debug.getter();
          if (qword_100113F00 != -1)
          {
            swift_once();
          }

          os_log(_:dso:log:_:_:)();

          sub_1000081D8(v109, v108, v110);
          (*(v107 + 8))(v19, v45);
          return v40;
        }
      }

      else if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v120 = v47;
      v48 = *(v119 + 16);
      v101 = v40;
      v100 = v4;
      v99[1] = v42;
      if (v48)
      {
        v11 = (v119 + 64);
        v49 = 1 << *(v119 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v8 = v50 & *(v119 + 64);
        v1 = ((v49 + 63) >> 6);
        swift_bridgeObjectRetain_n();
        v4 = 0;
        v51 = _swiftEmptyArrayStorage;
        if (v8)
        {
          while (1)
          {
            v116 = v51;
LABEL_23:
            v53 = __clz(__rbit64(v8)) | (v4 << 6);
            v54 = v119;
            v55 = *(v119 + 48);
            v56 = type metadata accessor for CAUVehicleLayoutKey();
            v57 = *(v56 - 8);
            v58 = v113;
            (*(v57 + 16))(v113, v55 + *(v57 + 72) * v53, v56);
            v59 = *(*(v54 + 56) + 8 * v53);
            v60 = v114;
            *(v58 + *(v115 + 48)) = v59;
            sub_1000287E8(v58, v60, &qword_1001172A8);

            v19 = CAUVehicleLayoutKey.rawValue.getter();
            v17 = v61;
            sub_100008904(v58, &qword_1001172A8);
            (*(v57 + 8))(v60, v56);
            v51 = v116;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v51 = sub_1000C487C(0, *(v51 + 2) + 1, 1, v51);
            }

            v9 = *(v51 + 2);
            v62 = *(v51 + 3);
            v14 = (v9 + 1);
            if (v9 >= v62 >> 1)
            {
              v51 = sub_1000C487C((v62 > 1), v9 + 1, 1, v51);
            }

            v8 &= v8 - 1;
            *(v51 + 2) = v14;
            v63 = &v51[16 * v9];
            *(v63 + 4) = v19;
            *(v63 + 5) = v17;
            if (!v8)
            {
              goto LABEL_19;
            }
          }
        }

        while (1)
        {
LABEL_19:
          v52 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
            goto LABEL_51;
          }

          if (v52 >= v1)
          {
            break;
          }

          v8 = *&v11[8 * v52];
          ++v4;
          if (v8)
          {
            v116 = v51;
            v4 = v52;
            goto LABEL_23;
          }
        }

        v64 = v117;
        v65 = CAFUISettingsCache.settings(excludingLayoutKeys:)();

        if (v65 >> 62)
        {
          v66 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v67 = v118;
        v68 = v100;
        v69 = CAFUISettingsCache.settings.getter();
        if (v69 >> 62)
        {
          v4 = v69;
          v70 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v66 == v70)
        {

LABEL_39:
          v40 = v101;
          goto LABEL_40;
        }

        v71 = [v68 settingsSections];
        if (v71)
        {
          v72 = v71;
          sub_10000827C(0, &qword_1001172B8);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v73 = v107;
        v4 = v102;
        CAFUISettingsCache.init(settings:sections:)();
        v74 = *(v73 + 8);
        v74(v64, v67);
        (*(v73 + 32))(v64, v4, v67);
        v75 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
        v120 = v75;
        if (v75 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_39;
          }
        }

        else if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();

        sub_1000081D8(v109, v108, v110);
        v74(v64, v67);
        return v101;
      }

LABEL_40:
      v19 = [objc_allocWithZone(type metadata accessor for CAFUIAutomakerSettingObserver()) init];
      sub_10008C8C8();
      v14 = v40;
      dispatch thunk of CAFUIAutomakerSettingObserver.delegate.setter();
      v76 = v120;
      if (v120 >> 62)
      {
        v79 = _CocoaArrayWrapper.endIndex.getter();
        v76 = v120;
        v1 = v79;
        if (!v79)
        {
LABEL_60:
          v80 = v107;
          v81 = v106;
          v82 = v118;
          v83 = v117;
          (*(v107 + 16))(v106);
          v104(v81, 0, 1, v82);
          v84 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
          swift_beginAccess();
          sub_10001356C(v81, &v14[v84]);
          swift_endAccess();
          v85 = *&v14[OBJC_IVAR____TtC7Climate24ClimateAppViewController_autoSettingsObserver];
          *&v14[OBJC_IVAR____TtC7Climate24ClimateAppViewController_autoSettingsObserver] = v19;
          v86 = v19;

          v87 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton;
          v88 = *&v14[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton];
          v89 = objc_opt_self();
          v90 = v88;
          v91 = [v89 grayColor];
          [v90 setTitleColor:v91 forState:2];

          v92 = *&v14[v87];
          v93 = v14;
          [v92 addTarget:v93 action:"settingsButtonTapped" forControlEvents:64];
          v94 = [objc_opt_self() defaultCenter];
          [v94 addObserver:v93 selector:"appMovedToForeground" name:UISceneWillEnterForegroundNotification object:0];

          v95 = [v93 view];
          if (!v95)
          {
            goto LABEL_71;
          }

          v96 = v95;

          v97 = [v89 clearColor];
          [v96 setBackgroundColor:v97];

          sub_1000081D8(v109, v108, v110);
          (*(v80 + 8))(v83, v82);
          return v101;
        }
      }

      else
      {
        v1 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v1)
        {
          goto LABEL_60;
        }
      }

      v77 = 0;
      v11 = (v76 & 0xC000000000000001);
      v8 = v76 & 0xFFFFFFFFFFFFFF8;
      v9 = &stru_100102000;
      while (1)
      {
        if (v11)
        {
          v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v77 >= *(v8 + 16))
          {
            goto LABEL_52;
          }

          v78 = *(v76 + 8 * v77 + 32);
        }

        v4 = v78;
        v17 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        [v78 registerObserver:v19];

        ++v77;
        v76 = v120;
        if (v17 == v1)
        {
          goto LABEL_60;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_3;
      }
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100084144()
{
  v1 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  v7 = type metadata accessor for CAFUISettingsCache();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator];
  v13 = [*(v12 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus) currentSession];
  if (!v13)
  {
    return;
  }

  if (*(v12 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_requestContentManager))
  {
    v37 = v13;
    v14 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem];

    v15 = [v14 automakerSettings];
    if (v15)
    {

      v16 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
      swift_beginAccess();
      sub_1000287E8(&v0[v16], v6, &unk_100117180);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_100008904(v6, &unk_100117180);
        return;
      }

      (*(v8 + 32))(v11, v6, v7);
      v17 = v37;
      v37 = v0;
      CAFUISettingsCache.categorySettings(for:)();
      (*(v8 + 16))(v3, v11, v7);
      v36 = v8;
      (*(v8 + 56))(v3, 0, 1, v7);
      objc_allocWithZone(type metadata accessor for CAFUITileViewController());

      v35 = v17;
      v18 = CAFUITileViewController.init(carSession:prominentCategories:listItems:settingsSections:settingsCache:assetManager:requestContentManager:preventVolumeNotification:)();
      v19 = String._bridgeToObjectiveC()();
      [v18 setTitle:v19];

      v20 = [v37 navigationController];
      if (v20)
      {
        v21 = v20;
        [v20 pushViewController:v18 animated:1];
      }

      v34 = v18;
      v22 = objc_opt_self();
      v23 = [v22 sharedApplication];
      v24 = [v23 delegate];

      if (v24)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        sub_1000AF438();
        swift_unknownObjectRelease();
        v25 = [v22 sharedApplication];
        v26 = [v25 delegate];

        if (v26)
        {
          swift_dynamicCastClassUnconditional();
          v27 = sub_1000AF438();
          swift_unknownObjectRelease();
          v28 = v27[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

          if (v28)
          {
            v29 = 7;
          }

          else
          {
            v29 = 3;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          v38 = v29;
          static Published.subscript.setter();
          v30 = [v37 navigationController];
          v31 = v36;
          v32 = v34;
          if (v30)
          {
            v33 = v30;
            [v30 setNavigationBarHidden:0];

            (*(v31 + 8))(v11, v7);
          }

          else
          {
            (*(v36 + 8))(v11, v7);
          }

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

    v13 = v37;
  }
}

void sub_100084744()
{
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v1 = [v0 navigationController];
  v4 = [v1 topViewController];

  if (v4)
  {
  }

  else
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 delegate];

    if (v3)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      sub_1000AF438();
      swift_unknownObjectRelease();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10008495C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAppViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAppViewController()
{
  result = qword_100117168;
  if (!qword_100117168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100084B60()
{
  sub_100012DC8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100084C44()
{
  v1 = v0;
  v2 = sub_1000040E8(&unk_100118440);
  v140 = *(v2 - 8);
  v141 = v2;
  __chkstk_darwin(v2);
  v139 = v113 - v3;
  v4 = sub_1000040E8(&unk_1001166D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v142 = v113 - v6;
  v133 = sub_1000040E8(&qword_100117198);
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v127 = v113 - v7;
  v132 = sub_1000040E8(&qword_1001171A0);
  v129 = *(v132 - 8);
  __chkstk_darwin(v132);
  v126 = v113 - v8;
  v134 = sub_1000040E8(&qword_1001171A8);
  v131 = *(v134 - 8);
  __chkstk_darwin(v134);
  v128 = v113 - v9;
  v138 = sub_1000040E8(&qword_1001171B0);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v135 = v113 - v10;
  v122 = sub_1000040E8(&qword_1001171B8);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = v113 - v11;
  v125 = sub_1000040E8(&unk_1001171C0);
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = v113 - v12;
  v13 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v13 - 8);
  v137 = v113 - v14;
  v15 = sub_1000040E8(&qword_1001171D0);
  v149 = *(v15 - 8);
  v150 = v15;
  __chkstk_darwin(v15);
  v17 = v113 - v16;
  v148 = sub_1000040E8(&qword_1001171D8);
  v117 = *(v148 - 1);
  __chkstk_darwin(v148);
  v116 = v113 - v18;
  v147 = sub_1000040E8(&unk_1001171E0);
  v119 = *(v147 - 8);
  __chkstk_darwin(v147);
  v118 = v113 - v19;
  v20 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v20 - 8);
  v22 = v113 - v21;
  v152 = type metadata accessor for CAFUISettingsCache();
  v23 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ClimateAppViewController();
  v154.receiver = v0;
  v154.super_class = v25;
  objc_msgSendSuper2(&v154, "viewDidLoad");
  v26 = [v0 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = sub_100081DFC();
  [v27 addSubview:v28];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = sub_100081B70();
  [v30 addSubview:v31];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v32;
  v114 = v5;
  [v32 addSubview:*&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView]];

  v34 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
  swift_beginAccess();
  sub_1000287E8(&v1[v34], v22, &unk_100117180);
  v35 = v152;
  v36 = (*(v23 + 48))(v22, 1, v152);
  v115 = v4;
  if (v36 == 1)
  {
    sub_100008904(v22, &unk_100117180);
    v38 = v149;
    v37 = v150;
LABEL_18:
    v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive] = 0;
    sub_100081860();
    v80 = *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator];
    swift_beginAccess();
    sub_1000040E8(&qword_100115DB0);
    Published.projectedValue.getter();
    swift_endAccess();
    v151 = &protocol conformance descriptor for Published<A>.Publisher;
    sub_10000A8E8(&unk_1001171F0, &qword_1001171D0);
    v81 = v116;
    Publisher.dropFirst(_:)();
    (*(v38 + 8))(v17, v37);
    v145 = objc_opt_self();
    v82 = [v145 mainRunLoop];
    v153 = v82;
    v146 = type metadata accessor for NSRunLoop.SchedulerOptions();
    v83 = *(v146 - 1);
    v144 = *(v83 + 56);
    v150 = v83 + 56;
    v84 = v137;
    v144(v137, 1, 1, v146);
    v149 = sub_10000827C(0, &unk_1001166E0);
    v113[1] = &protocol conformance descriptor for Publishers.Drop<A>;
    sub_10000A8E8(&unk_100117200, &qword_1001171D8);
    v152 = sub_10000A7D8();
    v85 = v118;
    v86 = v148;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v84, &unk_1001166C0);

    (*(v117 + 8))(v81, v86);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v148 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000A8E8(&unk_100117210, &unk_1001171E0);
    v87 = v147;
    Publisher<>.sink(receiveValue:)();

    (*(v119 + 8))(v85, v87);
    v147 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_cancellables;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v143 = v80;
    swift_beginAccess();
    sub_1000040E8(&unk_100115EF8);
    v88 = v120;
    Published.projectedValue.getter();
    swift_endAccess();
    v89 = v145;
    v90 = [v145 mainRunLoop];
    v153 = v90;
    v91 = v146;
    v92 = v144;
    v144(v84, 1, 1, v146);
    sub_10000A8E8(&qword_100117220, &qword_1001171B8);
    v93 = v123;
    v94 = v122;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v84, &unk_1001166C0);

    (*(v121 + 8))(v88, v94);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100117228, &unk_1001171C0);
    v95 = v125;
    Publisher<>.sink(receiveValue:)();

    (*(v124 + 8))(v93, v95);
    v113[0] = v1;
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_1000040E8(&qword_100115EF0);
    v96 = v127;
    Published.projectedValue.getter();
    swift_endAccess();
    v97 = [v89 mainRunLoop];
    v153 = v97;
    v92(v84, 1, 1, v91);
    sub_10000A8E8(&qword_100117238, &qword_100117198);
    v98 = v126;
    v99 = v133;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v84, &unk_1001166C0);

    (*(v130 + 8))(v96, v99);
    sub_10000A8E8(&qword_100117240, &qword_1001171A0);
    v100 = v128;
    v101 = v132;
    Publisher.dropFirst(_:)();
    (*(v129 + 8))(v98, v101);
    sub_10000A8E8(&qword_100117248, &qword_1001171A8);
    sub_10008C5E0();
    v102 = v135;
    v103 = v134;
    Publisher<>.removeDuplicates()();
    (*(v131 + 8))(v100, v103);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&qword_100117258, &qword_1001171B0);
    v104 = v138;
    Publisher<>.sink(receiveValue:)();

    (*(v136 + 8))(v102, v104);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v105 = v143;

    v106 = v139;
    dispatch thunk of CAUAssetLibraryManager.$slimAssetLibrary.getter();

    v107 = [v145 mainRunLoop];
    v153 = v107;
    v144(v84, 1, 1, v146);
    sub_10000A8E8(&qword_100117260, &unk_100118440);
    v109 = v141;
    v108 = v142;
    Publisher.receive<A>(on:options:)();
    sub_100008904(v84, &unk_1001166C0);

    (*(v140 + 8))(v106, v109);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&qword_1001166F8, &unk_1001166D0);
    v110 = v115;
    Publisher<>.sink(receiveValue:)();

    (*(v114 + 8))(v108, v110);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v111 = *(v105 + OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager);
    v111[OBJC_IVAR____TtC7Climate22ClimateSignpostManager_mainViewControllerDidLoad] = 1;
    v112 = v111;
    sub_1000B4ABC();

    return;
  }

  (*(v23 + 32))(v151, v22, v35);
  v39 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton;
  [*&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v40 = [v1 view];
  if (!v40)
  {
    goto LABEL_23;
  }

  v41 = v40;
  [v40 addSubview:*&v1[v39]];

  v42 = [objc_opt_self() sharedApplication];
  v43 = [v42 delegate];

  if (!v43)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v44 = sub_1000AF438();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v45 = v153;
  sub_1000040E8(&unk_100114770);
  if (v45 == 8)
  {
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000D5D90;
    v47 = [*&v1[v39] topAnchor];
    v48 = [v1 view];
    if (v48)
    {
      v49 = v48;
      v50 = [v48 safeAreaLayoutGuide];

      v51 = [v50 topAnchor];
      v52 = [v47 constraintEqualToAnchor:v51 constant:4.0];

      *(v46 + 32) = v52;
      v53 = [*&v1[v39] leftAnchor];
      v54 = [v1 view];
      if (v54)
      {
        v55 = v54;
        v146 = objc_opt_self();
        v56 = [v55 safeAreaLayoutGuide];

        v57 = [v56 leftAnchor];
        v58 = [v53 constraintEqualToAnchor:v57 constant:4.0];

        *(v46 + 40) = v58;
        v59 = [*&v1[v39] widthAnchor];
        v60 = [v59 constraintEqualToConstant:44.0];

        *(v46 + 48) = v60;
        v61 = (v46 + 56);
        v62 = [*&v1[v39] heightAnchor];
        v63 = [*&v1[v39] widthAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];
LABEL_15:
        v75 = v64;

        *v61 = v75;
        sub_10000827C(0, &qword_1001149C0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v146 activateConstraints:isa];

        v77 = *&v1[v39];
        v78 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
        if (v78 >> 62)
        {
          v79 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v149;
        v37 = v150;

        [v77 setHidden:v79 == 0];

        (*(v23 + 8))(v151, v152);
        goto LABEL_18;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1000D58A0;
  v66 = [*&v1[v39] topAnchor];
  v67 = [v1 view];
  if (!v67)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v68 = v67;
  v69 = [v67 safeAreaLayoutGuide];

  v70 = [v69 topAnchor];
  v71 = [v66 constraintEqualToAnchor:v70 constant:4.0];

  *(v65 + 32) = v71;
  v62 = [*&v1[v39] rightAnchor];
  v72 = [v1 view];
  if (v72)
  {
    v73 = v72;
    v146 = objc_opt_self();
    v61 = (v65 + 40);
    v74 = [v73 safeAreaLayoutGuide];

    v63 = [v74 rightAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:-4.0];
    goto LABEL_15;
  }

LABEL_28:
  __break(1u);
}

void sub_1000864A8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {

      v4 = sub_100081B70();
      *&v4[OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone] = v1;
      swift_retain_n();

      sub_1000BE6C0();

      v3[OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive] = 1;
      sub_100081860();
      sub_100086578();
    }
  }
}

void sub_100086578()
{
  v154[4] = swift_unknownObjectWeakLoadStrong();
  v154[5] = swift_unknownObjectWeakLoadStrong();
  v154[6] = swift_unknownObjectWeakLoadStrong();
  v154[7] = swift_unknownObjectWeakLoadStrong();
  v145 = v0;
  v1 = 0;
  v154[8] = swift_unknownObjectWeakLoadStrong();
  v2 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v1 <= 5)
  {
    v3 = 5;
  }

  else
  {
    v3 = v1;
  }

  while (1)
  {
    if (v1 == 5)
    {
      sub_1000040E8(&qword_100117190);
      swift_arrayDestroy();
      if (v2 >> 62)
      {
        goto LABEL_25;
      }

      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

    if (v3 == v1)
    {
      break;
    }

    v4 = v154[v1++ + 4];
    if (v4)
    {
      v5 = v4;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v153 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v153 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v153;
      goto LABEL_2;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      break;
    }

LABEL_13:
    v7 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong removeFromSuperview];

      v12 = [v9 owningView];
      if (v12)
      {
        v13 = v12;
        [v12 removeLayoutGuide:v9];
      }

      ++v7;
      if (v10 == v6)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_26:

  v14 = [v145 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_39;
  }

  v15 = v14;
  sub_1000040E8(&unk_100114770);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000D5DA0;
  *(v16 + 32) = sub_100081DFC();
  v17 = type metadata accessor for ClimateFocusGuide();
  v18 = objc_allocWithZone(v17);
  swift_unknownObjectWeakInit();
  v19 = &v18[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v19 = 0;
  v19[1] = 0;
  *&v18[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v18[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
  *v19 = 0;
  v19[1] = 0;
  v152.receiver = v18;
  v152.super_class = v17;
  v147 = v17;
  v20 = objc_msgSendSuper2(&v152, "init");
  v21 = String._bridgeToObjectiveC()();
  [v20 setIdentifier:v21];

  sub_1000040E8(&unk_1001150F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v20 setPreferredFocusEnvironments:isa];

  [v15 addLayoutGuide:v20];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000D5D90;
  v24 = [v20 topAnchor];
  v25 = [v145 view];
  if (!v25)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v23 + 32) = v28;
  v29 = [v20 bottomAnchor];
  v30 = [v145 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor:v32];
  *(v23 + 40) = v33;
  v34 = [v20 leftAnchor];
  v35 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls;
  v36 = [*&v145[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls] leftAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v23 + 48) = v37;
  v38 = [v20 rightAnchor];

  v39 = [*&v145[v35] rightAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v23 + 56) = v40;
  sub_10005B210(v23);
  swift_unknownObjectWeakAssign();
  v41 = *&v145[v35];
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000D5DA0;
  v43 = v41;
  *(v42 + 32) = sub_100081B70();
  v44 = objc_allocWithZone(v147);
  swift_unknownObjectWeakInit();
  v45 = &v44[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v45 = 0;
  v45[1] = 0;
  *&v44[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v44[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
  *v45 = 0;
  v45[1] = 0;
  v151.receiver = v44;
  v151.super_class = v147;
  v46 = objc_msgSendSuper2(&v151, "init");
  v47 = String._bridgeToObjectiveC()();
  [v46 setIdentifier:v47];

  v48 = Array._bridgeToObjectiveC()().super.isa;

  [v46 setPreferredFocusEnvironments:v48];

  [v43 addLayoutGuide:v46];
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1000D5D90;
  v50 = [v46 topAnchor];
  v51 = [*&v145[v35] bottomAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v49 + 32) = v52;
  v53 = [v46 bottomAnchor];
  v54 = [v145 view];
  if (!v54)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v53 constraintEqualToAnchor:v56];
  *(v49 + 40) = v57;
  v58 = [v46 leftAnchor];
  v59 = [*&v145[v35] leftAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v49 + 48) = v60;
  v61 = [v46 rightAnchor];

  v62 = [*&v145[v35] rightAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v49 + 56) = v63;
  sub_10005B210(v49);
  swift_unknownObjectWeakAssign();
  v64 = [v145 view];
  if (!v64)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v65 = v64;
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1000D5DA0;
  v67 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard;
  v68 = *&v145[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard];
  *(v66 + 32) = v68;
  v69 = objc_allocWithZone(v147);
  swift_unknownObjectWeakInit();
  v70 = &v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v70 = 0;
  v70[1] = 0;
  *&v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v69[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
  *v70 = 0;
  v70[1] = 0;
  v150.receiver = v69;
  v150.super_class = v147;
  v71 = v68;
  v72 = objc_msgSendSuper2(&v150, "init");
  v73 = String._bridgeToObjectiveC()();
  [v72 setIdentifier:v73];

  v74 = Array._bridgeToObjectiveC()().super.isa;

  [v72 setPreferredFocusEnvironments:v74];

  [v65 addLayoutGuide:v72];
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1000D5D90;
  v76 = [v72 topAnchor];
  v77 = [v145 view];
  if (!v77)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v78 = v77;
  v144 = v20;
  v79 = [v77 topAnchor];

  v80 = [v76 constraintEqualToAnchor:v79];
  *(v75 + 32) = v80;
  v81 = [v72 bottomAnchor];
  v82 = [v145 view];
  if (!v82)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v83 = v82;
  v84 = [v82 bottomAnchor];

  v85 = [v81 constraintEqualToAnchor:v84];
  *(v75 + 40) = v85;
  v86 = [v72 leftAnchor];
  v87 = [*&v145[v67] leftAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v75 + 48) = v88;
  v89 = [v72 rightAnchor];

  v90 = [*&v145[v67] rightAnchor];
  v91 = [v89 constraintEqualToAnchor:v90];

  *(v75 + 56) = v91;
  sub_10005B210(v75);
  swift_unknownObjectWeakAssign();
  v92 = *&v145[v67];
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1000D5DA0;
  v146 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView;
  v94 = *&v145[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView];
  *(v93 + 32) = v94;
  v95 = objc_allocWithZone(v147);
  swift_unknownObjectWeakInit();
  v96 = &v95[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v96 = 0;
  v96[1] = 0;
  *&v95[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v95[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
  *v96 = 0;
  v96[1] = 0;
  v149.receiver = v95;
  v149.super_class = v147;
  v97 = v94;
  v98 = v92;
  v99 = objc_msgSendSuper2(&v149, "init");
  v100 = String._bridgeToObjectiveC()();
  [v99 setIdentifier:v100];

  v101 = Array._bridgeToObjectiveC()().super.isa;

  [v99 setPreferredFocusEnvironments:v101];

  [v98 addLayoutGuide:v99];
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1000D5D90;
  v103 = [v99 topAnchor];
  v104 = [*&v145[v67] bottomAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v102 + 32) = v105;
  v106 = [v99 bottomAnchor];
  v107 = [v145 view];
  if (!v107)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v108 = v107;
  v109 = [v107 bottomAnchor];

  v110 = [v106 constraintEqualToAnchor:v109];
  *(v102 + 40) = v110;
  v111 = [v99 leftAnchor];
  v112 = [*&v145[v67] leftAnchor];
  v113 = [v111 constraintEqualToAnchor:v112];

  *(v102 + 48) = v113;
  v114 = [v99 rightAnchor];

  v115 = [*&v145[v67] rightAnchor];
  v116 = [v114 constraintEqualToAnchor:v115];

  *(v102 + 56) = v116;
  sub_10005B210(v102);
  swift_unknownObjectWeakAssign();
  v117 = [v145 view];
  if (!v117)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v118 = v117;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1000D5DA0;
  v120 = *&v145[v146];
  *(v119 + 32) = v120;
  v121 = objc_allocWithZone(v147);
  swift_unknownObjectWeakInit();
  v122 = &v121[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_completion];
  *v122 = 0;
  v122[1] = 0;
  *&v121[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_activeConstraints] = _swiftEmptyArrayStorage;
  v121[OBJC_IVAR____TtC7Climate17ClimateFocusGuide_isDebug] = 0;
  *v122 = 0;
  v122[1] = 0;
  v148.receiver = v121;
  v148.super_class = v147;
  v123 = v120;
  v124 = objc_msgSendSuper2(&v148, "init");
  v125 = String._bridgeToObjectiveC()();
  [v124 setIdentifier:v125];

  v126 = Array._bridgeToObjectiveC()().super.isa;

  [v124 setPreferredFocusEnvironments:v126];

  [v118 addLayoutGuide:v124];
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1000D5D90;
  v128 = [v124 topAnchor];
  v129 = [v145 view];
  if (!v129)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v130 = v129;
  v131 = [v129 topAnchor];

  v132 = [v128 constraintEqualToAnchor:v131];
  *(v127 + 32) = v132;
  v133 = [v124 bottomAnchor];
  v134 = [v145 view];
  if (v134)
  {
    v135 = v134;
    v136 = [v134 bottomAnchor];

    v137 = [v133 constraintEqualToAnchor:v136];
    *(v127 + 40) = v137;
    v138 = [v124 leftAnchor];
    v139 = [*&v145[v146] leftAnchor];
    v140 = [v138 constraintEqualToAnchor:v139];

    *(v127 + 48) = v140;
    v141 = [v124 rightAnchor];

    v142 = [*&v145[v146] rightAnchor];
    v143 = [v141 constraintEqualToAnchor:v142];

    *(v127 + 56) = v143;
    sub_10005B210(v127);

    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_48:
  __break(1u);
}

void sub_1000878A4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 == 2)
    {
      v4 = sub_100081E88();
    }

    else
    {
      v4 = sub_10008285C();
    }

    sub_100081760(v4);
  }
}

void sub_100087918()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10008796C();
  }
}

void sub_10008796C()
{
  v1 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView;
  [*&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_carView] removeFromSuperview];
  v2 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem + 16];
  v33[0] = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem];
  v33[1] = v2;
  v33[2] = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem + 32];
  v3 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator];
  v34 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_climateSystem + 48];
  v4 = *&v3[OBJC_IVAR____TtC7Climate18ClimateCoordinator_assetManager];

  v5 = v3;
  v6 = sub_10008A05C(v33, v5, v4);

  v7 = *&v0[v1];
  *&v0[v1] = v6;

  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = v8;
  [v8 addSubview:*&v0[v1]];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = v10;
  [v10 bringSubviewToFront:*&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton]];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_1000040E8(&unk_100114770);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D5DA0;
    v15 = *&v0[v1];
    *(v14 + 32) = v15;
    v16 = v15;
    sub_1000040E8(&unk_1001150F0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v13 setPreferredFocusEnvironments:isa];
  }

  v18 = sub_1000889D4();
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v20 = sub_100081B70();
  [v20 removeFromSuperview];

  v21 = OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard;
  v22 = *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard];
  *&v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard] = v19;
  v23 = v19;

  v24 = [v0 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 addSubview:*&v0[v21]];

  v0[OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive] = 1;
  sub_100081860();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_1000040E8(&unk_100114770);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1000D5DA0;
    *(v28 + 32) = v23;
    v29 = v23;
    sub_1000040E8(&unk_1001150F0);
    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v27 setPreferredFocusEnvironments:v30];
  }

LABEL_10:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v32 == 2)
  {
    v31 = sub_100081E88();
  }

  else
  {
    v31 = sub_10008285C();
  }

  sub_100081760(v31);
  sub_100086578();
}

void sub_100087E14(char a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for ClimateAppViewController();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 setNavigationBarHidden:1];
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 delegate];

  if (v7)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.setter();
    sub_100086578();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100087FA8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ClimateAppViewController();
  v46.receiver = v1;
  v46.super_class = v4;
  objc_msgSendSuper2(&v46, "shouldUpdateFocusInContext:", a1);
  v5 = [a1 nextFocusedView];
  v6 = [a1 previouslyFocusedView];
  v7 = v6;
  if (!v5)
  {
    if (!v6)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v7 = v5;
LABEL_8:

    goto LABEL_9;
  }

  sub_10000827C(0, &qword_100115400);
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 0;
  }

LABEL_9:
  p_cache = &OBJC_METACLASS____TtC7Climate24ClimatePassthroughButton.cache;
  if ([a1 focusHeading] == 512 || objc_msgSend(a1, "focusHeading") == 256)
  {
    v10 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton;
    *(*&v2[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton] + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 0;
    v11 = [a1 nextFocusedView];
    if (v11)
    {
      v12 = v11;
      v13 = *&v2[v10];
      sub_10000827C(0, &qword_100115400);
      v14 = v13;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        return 0;
      }
    }
  }

  else
  {
    *(*&v2[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton] + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 1;
  }

  if ([a1 focusHeading] == 32)
  {
    v16 = [a1 nextFocusedView];
    if (v16)
    {
      v17 = v16;
      v18 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton;
      v19 = *&v2[OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton];
      sub_10000827C(0, &qword_100115400);
      v20 = v19;
      v21 = static NSObject.== infix(_:_:)();

      p_cache = (&OBJC_METACLASS____TtC7Climate24ClimatePassthroughButton + 16);
      if (v21)
      {
        result = 0;
        *(*&v2[v18] + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 0;
        return result;
      }
    }
  }

  if ([a1 focusHeading] != 16)
  {
    goto LABEL_39;
  }

  v23 = p_cache[36];
  *(*&v23[v2] + OBJC_IVAR____TtC7Climate21ClimateSettingsButton_allowFocus) = 1;
  v24 = [a1 previouslyFocusedView];
  if (v24)
  {
    v25 = v24;
    v26 = *&v23[v2];
    sub_10000827C(0, &qword_100115400);
    v27 = v26;
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      return 0;
    }
  }

  v29 = sub_100081DFC();
  v30 = *&v29[OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView];

  v31 = [v30 arrangedSubviews];
  sub_10000827C(0, &qword_100115400);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = &selRef_maxDefrostOn;
    if (v33)
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
  v34 = &selRef_maxDefrostOn;
  if (!v33)
  {
LABEL_38:

LABEL_39:
    v45.receiver = v2;
    v45.super_class = v4;
    return objc_msgSendSuper2(&v45, "shouldUpdateFocusInContext:", a1);
  }

LABEL_25:
  v35 = __OFSUB__(v33, 1);
  result = v33 - 1;
  if (v35)
  {
    __break(1u);
    goto LABEL_41;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
    v37 = v36;

    v38 = [a1 previouslyFocusedView];
    if (v38)
    {
      v39 = v38;
      v40 = v37;
      v41 = static NSObject.== infix(_:_:)();

      if ((v41 & 1) != 0 && (v42 = [a1 v34[155]]) != 0)
      {
        v43 = v42;
        type metadata accessor for ClimateTargetTemperatureZoneSelectionButton();
        v44 = [v43 isKindOfClass:swift_getObjCClassFromMetadata()];

        if (v44)
        {
          return 0;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    goto LABEL_39;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v32 + 8 * result + 32);
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

void sub_1000884A8(void *a1, uint64_t a2)
{
  v45.receiver = v2;
  v45.super_class = type metadata accessor for ClimateAppViewController();
  v44 = a1;
  objc_msgSendSuper2(&v45, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  v5 = sub_100081DFC();
  v6 = *&v5[OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView];

  v7 = [v6 arrangedSubviews];
  sub_10000827C(0, &qword_100115400);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_29;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_30:

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v27 = Strong;
      [Strong setEnabled:0];
    }

    v28 = [*(*(v43 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls) + OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView) arrangedSubviews];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      goto LABEL_51;
    }

    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
LABEL_38:

      return;
    }

    while ((v29 & 0xC000000000000001) == 0)
    {
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = *(v29 + 32);
LABEL_37:

        if (v30 == 1)
        {
          goto LABEL_38;
        }

        v32 = 5;
        while (1)
        {
          v33 = v32 - 4;
          if ((v29 & 0xC000000000000001) != 0)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              break;
            }

            v34 = *(v29 + 8 * v32);
          }

          v35 = v34;
          v36 = __OFADD__(v33, 1);
          v37 = v32 - 3;
          if (v36)
          {
            goto LABEL_50;
          }

          type metadata accessor for ClimateButton();
          v38 = swift_dynamicCastClass();
          if (v38)
          {
            v39 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
            v40 = v38;
            swift_beginAccess();
            *(v40 + v39) = 0;
          }

          ++v32;
          if (v37 == v30)
          {
            goto LABEL_38;
          }
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (!v30)
      {
        goto LABEL_38;
      }
    }

    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_37;
  }

  while (2)
  {
    v10 = 0;
    while ((v8 & 0xC000000000000001) == 0)
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v11 = *(v8 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_14;
      }

LABEL_9:
      v13 = v11;
      v14 = [v44 nextFocusedView];
      if (v14)
      {
        v15 = v14;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v10;
      if (v12 == v9)
      {
        goto LABEL_30;
      }
    }

    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
LABEL_15:

    v17 = [*(*(v43 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls) + OBJC_IVAR____TtC7Climate21ClimateSystemControls_stackView) arrangedSubviews];
    v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v18 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (v19)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19)
      {
LABEL_17:
        v8 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v20 = *(v18 + 8 * v8 + 32);
          }

          v21 = v20;
          v22 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          type metadata accessor for ClimateButton();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v24 = OBJC_IVAR____TtC7Climate13ClimateButton_allowFocus;
            v25 = v23;
            swift_beginAccess();
            *(v25 + v24) = 1;
          }

          ++v8;
          if (v22 == v19)
          {
            goto LABEL_55;
          }
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (!v9)
        {
          goto LABEL_30;
        }

        continue;
      }
    }

    break;
  }

LABEL_55:

  v41 = swift_unknownObjectWeakLoadStrong();
  if (v41)
  {
    v42 = v41;
    [v41 setEnabled:1];
  }
}

char *sub_1000889D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v15[0];
  if (v15[0])
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = type metadata accessor for ClimateCoordinator();
    v17 = &off_1000F7FD8;
    v15[0] = v1;
    v4 = objc_allocWithZone(type metadata accessor for ClimateZoneCard());
    v5 = sub_10008C668(v15, v16);
    v6 = __chkstk_darwin(v5);
    v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;

    v11 = v1;
    v12 = sub_1000893E8(v2, v10, sub_10008C64C, v3, v4);
    sub_100006B9C(v15);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive) = 0;
    sub_100081860();
    return 0;
  }

  return v12;
}

void sub_100088BBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive) = 0;
    sub_100081860();
    v2 = *&v1[OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator];
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    static Published.subscript.setter();
  }
}

void sub_100088D28(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_100088E3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100056B94(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100088ECC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100088F4C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

void *sub_100088FC0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000040E8(&qword_1001172A0);
  v4 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000890BC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000040E8(&unk_100114770);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100089144(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for CAUVehicleLayoutKey();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

char *sub_1000893E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = type metadata accessor for ClimateCoordinator();
  v103 = &off_1000F7FD8;
  *&a5[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background] = 0;
  v102 = v8;
  v101[0] = a2;
  *&a5[OBJC_IVAR____TtC7Climate15ClimateZoneCard_zone] = a1;
  v9 = objc_allocWithZone(UILabel);

  v10 = [v9 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a5[OBJC_IVAR____TtC7Climate15ClimateZoneCard_zoneLabel] = v10;
  v11 = objc_allocWithZone(type metadata accessor for ClimateZoneControls());

  v13 = sub_1000A9944(v12);

  *&a5[OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid] = v13;
  v100.receiver = a5;
  v100.super_class = type metadata accessor for ClimateZoneCard();
  v14 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  v16 = [v15 clearColor];
  [v14 setBackgroundColor:v16];

  sub_1000BE828();
  v17 = OBJC_IVAR____TtC7Climate15ClimateZoneCard_zoneLabel;
  [*&v14[OBJC_IVAR____TtC7Climate15ClimateZoneCard_zoneLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = OBJC_IVAR____TtC7Climate15ClimateZoneCard_background;
  v19 = *&v14[OBJC_IVAR____TtC7Climate15ClimateZoneCard_background];
  if (v19)
  {
    [v19 addSubview:*&v14[v17]];
  }

  v20 = *&v14[v17];
  sub_100071888();
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v22 = *&v14[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
  [v24 setFont:v25];

  v26 = *&v14[v17];
  sub_10000D960(v101, v102);
  v27 = v26;
  [v27 setTextAlignment:sub_100046214() != 0];

  v28 = *&v14[v18];
  if (v28)
  {
    [v28 addSubview:*&v14[OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid]];
  }

  v97 = OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid;
  v29 = *(*(*&v14[OBJC_IVAR____TtC7Climate15ClimateZoneCard_servicesGrid] + OBJC_IVAR____TtC7Climate19ClimateZoneControls_zoneViews) + OBJC_IVAR____TtC7Climate11ClimateGrid_grid);
  if (v29)
  {
    v30 = objc_allocWithZone(_UIScrollPocketInteraction);
    v31 = v29;
    v32 = [v30 initWithScrollView:v31 edge:1 style:1];
    [*&v14[v17] addInteraction:v32];
  }

  sub_10000D960(v101, v102);
  v33 = &selRef_maxDefrostOn;
  v98 = v17;
  if (sub_100046214())
  {
    sub_1000040E8(&unk_100114770);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D5DA0;
    v35 = [*&v14[v17] centerXAnchor];
    v36 = [v14 centerXAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(inited + 32) = v37;
    sub_1000B7604(inited);
  }

  else
  {
    v38 = [objc_allocWithZone(type metadata accessor for ClimateButton()) init];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 addSubview:v38];
    v39 = [v15 clearColor];
    v40 = [v15 labelColor];
    sub_10007A4CC(v39, v40, &_swiftEmptyDictionarySingleton);

    v41 = &v38[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
    swift_beginAccess();
    v42 = *v41;
    v43 = *(v41 + 1);
    *v41 = 0xD000000000000011;
    *(v41 + 1) = 0x80000001000DDB80;
    if (!v43 || (v42 != 0xD000000000000011 || 0x80000001000DDB80 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    *&v38[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier] = xmmword_1000D8680;

    sub_1000946A8();
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = a3;
    v45[4] = a4;
    v46 = &v38[OBJC_IVAR____TtC7Climate13ClimateButton_action];
    swift_beginAccess();
    v47 = *v46;
    *v46 = sub_10008C6F8;
    v46[1] = v45;
    v96 = v14;

    sub_100003380(v47);

    sub_1000040E8(&unk_100114770);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_1000D8650;
    v49 = [v38 heightAnchor];
    v50 = [v49 constraintEqualToConstant:30.0];

    *(v48 + 32) = v50;
    v51 = [v38 widthAnchor];
    v52 = [v38 heightAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(v48 + 40) = v53;
    v54 = [v38 trailingAnchor];
    v55 = [v96 trailingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55 constant:-20.0];

    *(v48 + 48) = v56;
    v57 = [v38 centerYAnchor];

    v58 = [*&v14[v17] centerYAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(v48 + 56) = v59;
    v60 = [*&v14[v17] leadingAnchor];
    v61 = [v96 leadingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61 constant:20.0];

    *(v48 + 64) = v62;
    v33 = &selRef_maxDefrostOn;
    v63 = [*&v14[v17] trailingAnchor];
    v64 = [v96 trailingAnchor];

    v65 = [v63 constraintLessThanOrEqualToAnchor:v64 constant:-20.0];
    *(v48 + 72) = v65;
    sub_1000B7604(v48);
  }

  sub_1000040E8(&unk_100114770);
  v66 = swift_initStackObject();
  *(v66 + 16) = xmmword_1000D5B90;
  v67 = [*&v14[v17] topAnchor];
  v68 = v14;
  v69 = [v68 topAnchor];
  v70 = v17;
  v71 = v33;
  v72 = [v67 v33[24]];

  *(v66 + 32) = v72;
  v73 = [*&v14[v70] firstBaselineAnchor];
  v74 = [v68 topAnchor];
  v75 = [v73 v71[24]];

  *(v66 + 40) = v75;
  v76 = [*&v14[v97] bottomAnchor];
  v77 = [v68 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v66 + 48) = v78;
  v79 = [*&v14[v97] leadingAnchor];
  v80 = [v68 leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  *(v66 + 56) = v81;
  v82 = [*&v14[v97] trailingAnchor];
  v83 = [v68 trailingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  *(v66 + 64) = v84;
  sub_1000B7604(v66);
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_1000D58A0;
  v86 = [*&v14[v97] topAnchor];
  v87 = [*&v14[v98] bottomAnchor];
  v88 = [v86 v71[24]];

  *(v85 + 32) = v88;
  v89 = [*&v14[v97] bottomAnchor];
  v90 = [v68 bottomAnchor];

  v91 = [v89 v71[24]];
  *(v85 + 40) = v91;
  sub_1000B7604(v85);
  v92 = objc_opt_self();
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v92 activateConstraints:isa];

  sub_100006B9C(v101);
  return v68;
}

char *sub_10008A05C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1000040E8(&qword_100117268);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ClimateAssets();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = *(a1 + 40);
  v37 = v15;
  v16 = *(v15 + 16);
  if (v16)
  {
    v29 = v9;
    v30 = a3;
    v31 = &v28 - v13;
    v32 = a2;
    v33 = a1;
    v17 = sub_100088FC0(v16, 0);
    v18 = *(type metadata accessor for CAUVehicleLayoutKey() - 8);
    sub_100089144(&v35, &v17[(*(v18 + 80) + 32) & ~*(v18 + 80)], v16, v15);
    v20 = v19;
    sub_1000287E8(&v37, v36, &unk_100117270);
    result = sub_10008C704();
    if (v20 != v16)
    {
      __break(1u);
      return result;
    }

    a2 = v32;
    a1 = v33;
    v14 = v31;
    v9 = v29;
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  sub_100005DD0(v17, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100008904(v8, &qword_100117268);
    v22 = objc_allocWithZone(type metadata accessor for ClimateCarPlaceholderView());
    sub_10008C70C(a1, &v35);
    return sub_10008A368(a1, a2, v22);
  }

  else
  {
    sub_10008C768(v8, v14);
    v23 = v34;
    sub_10008C7CC(v14, v34);
    v24 = objc_allocWithZone(type metadata accessor for ClimateCarView());
    sub_10008C70C(a1, &v35);
    v25 = a2;
    sub_10008B328(a1, v25, v23, v24);
    v27 = v26;

    sub_10008C830(a1);
    sub_10003B46C(v14);
    return v27;
  }
}

char *sub_10008A368(id *a1, void *a2, char *a3)
{
  v6 = OBJC_IVAR____TtC7Climate25ClimateCarPlaceholderView_carView;
  sub_10000827C(0, &unk_100116370);
  *&a3[v6] = UIStackView.init(axis:spacing:arrangedSubviews:)();
  v39.receiver = a3;
  v39.super_class = type metadata accessor for ClimateCarPlaceholderView();
  v7 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v38[1] = _swiftEmptyArrayStorage;
  v8 = OBJC_IVAR____TtC7Climate25ClimateCarPlaceholderView_carView;
  [*&v7[OBJC_IVAR____TtC7Climate25ClimateCarPlaceholderView_carView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v7[v8] setDistribution:2];
  [*&v7[v8] setAlignment:3];
  [*&v7[v8] setLayoutMargins:{5.0, 0.0, 0.0, 0.0}];
  [*&v7[v8] setLayoutMarginsRelativeArrangement:1];
  v9 = qword_100113E80;
  v10 = *&v7[v8];
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_10011AF28];

  v11 = [*&v7[v8] layer];
  [v11 setCornerRadius:28.0];

  v12 = [*&v7[v8] layer];
  [v12 setCornerCurve:kCACornerCurveContinuous];

  v13 = [*a1 vehicleResources];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 vehicleInformation];

    if (v15)
    {
      v16 = [v15 vehicleUserVisibleLabel];

      if (!v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = String._bridgeToObjectiveC()();
      }

      v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      [v17 setTextAlignment:1];
      v18 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024];
      [v17 setFont:v18];

      [v17 setText:v16];
      [*&v7[v8] addArrangedSubview:v17];
    }
  }

  v19 = static CAUVehicleLayoutKey.seatFrontKeys.getter();
  v20 = static CAUVehicleLayoutKey.seat2ndRowKeys.getter();
  v21 = static CAUVehicleLayoutKey.seat3rdRowKeys.getter();
  v38[0] = v19;
  sub_10007080C(v38, a1, a2, &off_1000F8008, v7);

  v38[0] = v20;
  sub_10007080C(v38, a1, a2, &off_1000F8008, v7);

  v38[0] = v21;
  sub_10007080C(v38, a1, a2, &off_1000F8008, v7);

  [v7 addSubview:*&v7[v8]];
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5D90;
  v23 = [*&v7[v8] topAnchor];
  v24 = [v7 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:35.0];

  *(inited + 32) = v25;
  v26 = [*&v7[v8] leftAnchor];
  v27 = [v7 leftAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:40.0];

  *(inited + 40) = v28;
  v29 = [*&v7[v8] rightAnchor];
  v30 = [v7 rightAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-40.0];

  *(inited + 48) = v31;
  v32 = [*&v7[v8] bottomAnchor];
  v33 = [v7 bottomAnchor];

  v34 = [v32 constraintEqualToAnchor:v33 constant:-5.0];
  *(inited + 56) = v34;
  sub_1000B7604(inited);
  v35 = objc_opt_self();
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints:isa];

  sub_10008C830(a1);
  return v7;
}

void sub_10008AA20(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v50 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews_scale] = 0x3FF0000000000000;
  *&a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews____lazy_storage___heightConstraint] = 0;
  *&a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews____lazy_storage___widthConstraint] = 0;
  v11 = &a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews_climateSystem];
  v12 = *(a1 + 16);
  *v11 = *a1;
  *(v11 + 1) = v12;
  *(v11 + 2) = *(a1 + 32);
  *(v11 + 6) = *(a1 + 48);
  v13 = &a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews_activeZoneTracker];
  *v13 = a2;
  *(v13 + 1) = &off_1000F8008;
  sub_10008C7CC(a3, &a4[OBJC_IVAR____TtC7Climate20ClimatePositionViews_assets]);
  v52 = a3;
  v53 = a2;
  v54 = &off_1000F8008;
  v14 = *(a1 + 40);
  v15 = a2;
  sub_10008C70C(a1, &v58);
  v51 = sub_10008B0E4(v14, sub_10008C894);
  v58 = v51;
  v57 = _swiftEmptyArrayStorage;
  v16 = [objc_opt_self() sharedApplication];
  v17 = [v16 delegate];

  if (!v17)
  {
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v18 = sub_1000AF438();
  swift_unknownObjectRelease();
  v19 = [*&v18[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
  v49 = a4;
  if (!v19)
  {

    goto LABEL_6;
  }

  v20 = v19;
  v21 = [v19 configuration];

  LOBYTE(v20) = [v21 rightHandDrive];
  if ((v20 & 1) == 0)
  {
LABEL_6:
    v22 = static CAUVehicleLayoutKey.seatKeys.getter();
    goto LABEL_7;
  }

  v22 = static CAUVehicleLayoutKey.rhdSeatKeys.getter();
LABEL_7:
  v23 = v50;
  v24 = *(v22 + 16);
  if (v24)
  {
    v45 = v15;
    v46 = a1;
    v47 = a3;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v51 = v26;
    v27 = *(v25 + 64);
    v48 = v22;
    v28 = v22 + ((v27 + 32) & ~v27);
    v29 = *(v25 + 56);
    v30 = (v25 - 8);
    v31 = _swiftEmptyArrayStorage;
    for (i = (v26)(v10, v28, v50); ; i = (v51)(v10, v28, v23))
    {
      __chkstk_darwin(i);
      *(&v44 - 2) = v10;
      sub_100088D28(sub_10008C8A0, (&v44 - 4), v33);
      if ((v35 & 1) == 0)
      {
        sub_100088E3C(v34);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v57;
        v23 = v50;
      }

      (*v30)(v10, v23);
      v28 += v29;
      if (!--v24)
      {
        break;
      }
    }

    a3 = v47;
    a1 = v46;
    v15 = v45;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  v36 = v49;
  *&v49[OBJC_IVAR____TtC7Climate20ClimatePositionViews_positions] = v31;
  v37 = type metadata accessor for ClimatePositionViews();
  v56.receiver = v36;
  v56.super_class = v37;

  v38 = objc_msgSendSuper2(&v56, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_100114770);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000D58A0;
  *(v39 + 32) = sub_1000AA038();
  *(v39 + 40) = sub_1000AA060();
  v55 = v39;
  v40 = v38;

  sub_10008AF88(v41, v40);

  v42 = objc_opt_self();
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v42 activateConstraints:isa];

  sub_10008C830(a1);

  sub_10003B46C(a3);
}

void sub_10008AF88(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [a2 addSubview:v5];
      sub_1000040E8(&unk_100114770);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000D5D90;
      *(inited + 32) = sub_1000A4F74();
      *(inited + 40) = sub_1000A4FA0();
      *(inited + 48) = sub_1000A513C();
      *(inited + 56) = sub_1000A5164();
      sub_1000B7604(inited);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void *sub_10008B0E4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    v24 = _swiftEmptyArrayStorage;
    v22 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = v22;
    v6 = v22 + 64;
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v9 = *(v22 + 36);
    v20 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      a2(&v23, v12);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v22;
      v10 = 1 << *(v22 + 32);
      if (v7 >= v10)
      {
        goto LABEL_24;
      }

      v13 = *(v6 + 8 * v11);
      if ((v13 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      if (v9 != *(v22 + 36))
      {
        goto LABEL_26;
      }

      v14 = v13 & (-2 << (v7 & 0x3F));
      if (v14)
      {
        v10 = __clz(__rbit64(v14)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v11 << 6;
        v16 = v11 + 1;
        v17 = (v22 + 72 + 8 * v11);
        while (v16 < (v10 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_100050B88(v7, v9, 0);
            v10 = __clz(__rbit64(v18)) + v15;
            goto LABEL_18;
          }
        }

        result = sub_100050B88(v7, v9, 0);
LABEL_18:
        v5 = v22;
      }

      ++v8;
      v7 = v10;
      if (v8 == v20)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

void sub_10008B328(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = sub_1000040E8(&unk_1001166C0);
  __chkstk_darwin(v8 - 8);
  v74 = &v66 - v9;
  v75 = sub_1000040E8(&qword_1001171D0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v11 = &v66 - v10;
  v68 = sub_1000040E8(&qword_100117960);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v76 = &v66 - v12;
  v71 = sub_1000040E8(&qword_100117280);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v66 - v13;
  v14 = type metadata accessor for ClimateAssets();
  __chkstk_darwin(v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView;
  *&a4[v17] = [objc_allocWithZone(UIImageView) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  *&a4[OBJC_IVAR____TtC7Climate14ClimateCarView_cancellables] = v18;
  a4[OBJC_IVAR____TtC7Climate14ClimateCarView_hasAlreadyLayout] = 0;
  *&a4[OBJC_IVAR____TtC7Climate14ClimateCarView_imageActiveHeightConstraint] = _swiftEmptyArrayStorage;
  v19 = &a4[OBJC_IVAR____TtC7Climate14ClimateCarView_climateSystem];
  v20 = *(a1 + 16);
  *v19 = *a1;
  *(v19 + 1) = v20;
  *(v19 + 2) = *(a1 + 32);
  *(v19 + 6) = *(a1 + 48);
  v21 = &a4[OBJC_IVAR____TtC7Climate14ClimateCarView_activeZoneTracker];
  *v21 = a2;
  v21[1] = &off_1000F8008;
  sub_10008C7CC(a3, &a4[OBJC_IVAR____TtC7Climate14ClimateCarView_assets]);
  sub_10008C7CC(a3, v16);
  v22 = objc_allocWithZone(type metadata accessor for ClimatePositionViews());
  v23 = a2;
  sub_10008C70C(a1, v79);
  v24 = v23;
  v72 = v24;
  sub_10008C70C(a1, v79);
  sub_10008AA20(a1, v24, v16, v22);
  *&a4[OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews] = v25;
  v26 = type metadata accessor for ClimateCarView();
  v78.receiver = a4;
  v78.super_class = v26;
  v27 = objc_msgSendSuper2(&v78, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView;
  v29 = *&v27[OBJC_IVAR____TtC7Climate14ClimateCarView_carImageView];
  v30 = *(a3 + *(v14 + 24));
  v31 = v27;
  [v29 setImage:v30];
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v77 = _swiftEmptyArrayStorage;
  [*&v27[v28] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v27[v28] setContentMode:2];
  [*&v27[v28] setClipsToBounds:1];
  [v31 addSubview:*&v27[v28]];
  v32 = OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews;
  [*&v31[OBJC_IVAR____TtC7Climate14ClimateCarView_positionViews] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v31 addSubview:*&v31[v32]];
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8650;
  v34 = [*&v27[v28] centerXAnchor];
  v35 = [v31 centerXAnchor];
  v66 = a3;
  v36 = [v34 constraintEqualToAnchor:v35];

  *(inited + 32) = v36;
  v37 = [*&v27[v28] centerYAnchor];
  v38 = [v31 centerYAnchor];

  v39 = [v37 constraintEqualToAnchor:v38];
  *(inited + 40) = v39;
  v40 = [*&v31[v32] leadingAnchor];
  v41 = [*&v27[v28] leadingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(inited + 48) = v42;
  v43 = [*&v31[v32] trailingAnchor];
  v44 = [*&v27[v28] trailingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(inited + 56) = v45;
  v46 = [*&v31[v32] topAnchor];
  v47 = [*&v27[v28] topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(inited + 64) = v48;
  v49 = [*&v31[v32] bottomAnchor];
  v50 = [*&v27[v28] bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(inited + 72) = v51;
  sub_1000B7604(inited);
  v52 = objc_opt_self();
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v52 activateConstraints:isa];

  type metadata accessor for ClimateCoordinator();
  sub_1000461A0();
  v54 = [objc_opt_self() mainRunLoop];
  v79[0] = v54;
  v55 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v56 = v74;
  (*(*(v55 - 8) + 56))(v74, 1, 1, v55);
  sub_10000827C(0, &unk_1001166E0);
  sub_10000A8E8(&unk_1001171F0, &qword_1001171D0);
  sub_10000A7D8();
  v57 = v76;
  v58 = v75;
  Publisher.receive<A>(on:options:)();
  sub_100008904(v56, &unk_1001166C0);

  (*(v73 + 8))(v11, v58);
  v59 = [objc_opt_self() sharedApplication];
  v60 = [v59 delegate];

  if (v60)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v61 = sub_1000AF438();
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000A8E8(&qword_100117288, &qword_100117960);
    v62 = v69;
    v63 = v68;
    Publisher.dropFirst(_:)();
    (*(v67 + 8))(v57, v63);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A8E8(&unk_100117290, &qword_100117280);
    v64 = v71;
    Publisher<>.sink(receiveValue:)();

    (*(v70 + 8))(v62, v64);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v65 = v66;
    sub_10003A5E4(v31);

    sub_10003B46C(v65);
  }

  else
  {
    __break(1u);
  }
}

void *sub_10008BE68()
{
  v16[3] = &type metadata for ClimateFeatures;
  v16[4] = sub_100028968();
  LOBYTE(v16[0]) = 0;
  v0 = isFeatureEnabled(_:)();
  sub_100006B9C(v16);
  v1 = CAFAutomakerSettings.allSettings.getter();
  v2 = v1;
  if (v0)
  {
    v16[0] = _swiftEmptyArrayStorage;
    if (v1 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v4 = 0;
      v5 = &selRef_maxDefrostOn;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if ([v6 category] != 2 || (objc_msgSend(v7, v5[306]) & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v5 = &selRef_maxDefrostOn;
        }

        ++v4;
        if (v8 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      ;
    }

    goto LABEL_35;
  }

  v16[0] = _swiftEmptyArrayStorage;
  if (!(v1 >> 62))
  {
    v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_17;
    }

LABEL_35:
    v14 = _swiftEmptyArrayStorage;
    goto LABEL_36;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_35;
  }

LABEL_17:
  v10 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v11 = *(v2 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_29;
    }

    if ([v11 category] == 2)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v10;
  }

  while (v13 != v9);
LABEL_27:
  v14 = v16[0];
LABEL_36:

  return v14;
}

void sub_10008C110()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
  }

  v3 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_coordinator;
  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v4 = v0;
  v5 = sub_1000AF438();
  swift_unknownObjectRelease();
  *(v4 + v3) = v5;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = sub_100027E1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_cancellables) = v6;
  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_activeConstraints) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___zoneCard) = 0;
  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_autoSettingsObserver) = 0;
  v7 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
  v8 = type metadata accessor for CAFUISettingsCache();
  (*(*(v8 - 8) + 56))(v4 + v7, 1, 1, v8);
  *(v4 + OBJC_IVAR____TtC7Climate24ClimateAppViewController____lazy_storage___systemControls) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10008C334()
{
  v1 = type metadata accessor for CAFUISettingsCache();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040E8(&unk_100117180);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  if ((*(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_zoneCardActive) & 1) == 0)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsButton);
    v9 = OBJC_IVAR____TtC7Climate24ClimateAppViewController_settingsCache;
    swift_beginAccess();
    sub_1000287E8(v0 + v9, v7, &unk_100117180);
    if ((*(v2 + 48))(v7, 1, v1))
    {
      v10 = v8;
      sub_100008904(v7, &unk_100117180);
      v11 = 1;
    }

    else
    {
      (*(v2 + 16))(v4, v7, v1);
      v12 = v8;
      sub_100008904(v7, &unk_100117180);
      v13 = CAFUISettingsCache.rootSettings(in:visibleOnly:)();
      (*(v2 + 8))(v4, v1);
      if (v13 >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v14 == 0;
    }

    [v8 setHidden:v11];
  }
}

uint64_t sub_10008C598()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10008C5E0()
{
  result = qword_100117250;
  if (!qword_100117250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117250);
  }

  return result;
}

uint64_t sub_10008C668(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10008C6B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008C768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClimateAssets();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C7CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClimateAssets();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10008C8C8()
{
  result = qword_1001172B0;
  if (!qword_1001172B0)
  {
    type metadata accessor for ClimateAppViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001172B0);
  }

  return result;
}

uint64_t sub_10008C930()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl);
  v2 = [v1 intensity];
  v3 = [v1 intensityRestricted];
  v4 = [v1 intensityDisabled];
  if (v2 == 1)
  {
    v5 = 4;
    if (!v3)
    {
      v5 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return v5;
    }

    return v5 | 0x10;
  }

  v5 = 5;
  if (!v3)
  {
    v5 = 1;
  }

  if (v4)
  {
    return v5 | 0x10;
  }

  return v5;
}

void *sub_10008C9D0(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl] = a1;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ClimateAutoControlServiceButton();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v14, "init");
  (*((swift_isaMask & *v4) + 0x1F8))();
  [v3 registerObserver:v4];

  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = 1;
  v7 = v4;
  if ((v6 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v3;
  v10 = (v7 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v11 = *v10;
  *v10 = sub_10002CC0C;
  v10[1] = v9;
  v12 = v3;

  sub_100003380(v11);

  sub_10008CD4C();

  return v7;
}

void sub_10008CBA4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setIntensity:{sub_10008CC2C(1, objc_msgSend(a3, "intensity"))}];
    sub_10008CD4C();
  }
}

uint64_t sub_10008CC2C(uint64_t a1, uint64_t a2)
{
  result = static CAFAutoModeIntensity.allCases.getter();
  v7 = *(result + 16);
  if (v7)
  {
    v2 = result;
    v6 = 0;
    v8 = a2;
    a2 = result + 32;
    while (*(result + v6 + 32) != v8)
    {
      if (v7 == ++v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  v9 = __OFADD__(v6, a1);
  v10 = v6 + a1;
  if (v9)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10 % v7;
  sub_1000040E8(&qword_1001170B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000D5970;
  *(v12 + 56) = &type metadata for Int;
  *(v12 + 32) = v11;
  print(_:separator:terminator:)();

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (v11 < *(v2 + 16))
    {
LABEL_12:
      v13 = *(a2 + v11);

      return v13;
    }

    __break(1u);
  }

  v11 += v7;
  if (v11 < 0)
  {
    goto LABEL_14;
  }

  if (v11 < *(v2 + 16))
  {
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10008CD4C()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl];
  [v1 intensity];
  v2._countAndFlagsBits = CAFAutoModeIntensity.description.getter();
  String.append(_:)(v2);

  v3 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 1);
  *v3 = 0xA4F545541;
  *(v3 + 1) = 0xE500000000000000;
  if (!v5 || (v4 == 0xA4F545541 ? (v6 = v5 == 0xE500000000000000) : (v6 = 0), !v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    ClimateButton.updateClimateConfiguration()();
  }

  sub_1000C10C4();
  [v1 intensity];
  [v1 intensityRestricted];
  [v0 setEnabled:{objc_msgSend(v1, "intensityDisabled") ^ 1}];
  v7 = [v1 intensity] == 1;
  [v1 intensityRestricted];
  if ((v7 | [v1 intensityDisabled]))
  {
    v8 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  v9 = &v0[*v8];
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = *v9;
  v13 = v10;

  sub_10007A4CC(v12, v13, v11);

  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
}

id sub_10008CF24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAutoModeIntensityButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAutoModeIntensityButton()
{
  result = qword_1001172F8;
  if (!qword_1001172F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008CFE8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D020()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10008D060()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v5 = [v2 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_dynamicCastClassUnconditional();
  v7 = sub_1000AF438();
  swift_unknownObjectRelease();
  v8 = v7[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v8 == 1)
  {
    sub_10008E0B8();
  }

  else
  {
    sub_10008E668();
  }

  v9 = [v2 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
    goto LABEL_18;
  }

  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v11 = [v2 sharedApplication];
  v12 = [v11 delegate];

  if (!v12)
  {
LABEL_19:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v13 = sub_1000AF438();
  swift_unknownObjectRelease();
  v14 = v13[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v14 == 1)
  {
    sub_10008EA9C();
  }

  else
  {
    sub_10008EE88();
  }
}

uint64_t sub_10008D2E4()
{

  return swift_deallocClassInstance();
}

void sub_10008D348(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    v17 = [v16 delegate];

    if (v17)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v18 = sub_1000AF438();
      swift_unknownObjectRelease();

      v19 = [v15 sharedApplication];
      v20 = [v19 delegate];

      if (v20)
      {
        swift_dynamicCastClassUnconditional();
        v21 = sub_1000AF438();
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_29;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = v12;
  if (!IndexPath.section.getter())
  {
    v23 = *(*(*(v5 + 16) + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
    if (IndexPath.item.getter() < v23)
    {
      if (__OFADD__(IndexPath.item.getter(), 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      IndexPath.section.getter();
      IndexPath.init(item:section:)();
      v24 = *(v5 + 16);
      v25 = sub_10000FC64(v14);
      v27 = v26;

      if (v25)
      {
        v57 = v27;
        v28 = [objc_opt_self() sharedApplication];
        v29 = [v28 delegate];

        if (!v29)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v30 = sub_1000AF438();
        swift_unknownObjectRelease();
        v31 = v30[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        ObjectType = swift_getObjectType();
        v33 = sub_1000564E8(v31, ObjectType, v57);

        v34 = v33 == 2;
        if (a3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v34 = 1;
        if (a3)
        {
LABEL_18:
          (*(v11 + 8))(v14, v22);
          goto LABEL_19;
        }
      }

      if (a2 == 2 && v34)
      {
        v35 = objc_opt_self();
        v36 = [v35 sharedApplication];
        v37 = [v36 delegate];

        if (v37)
        {
          type metadata accessor for ClimateAppDelegate();
          swift_dynamicCastClassUnconditional();
          v38 = sub_1000AF438();
          swift_unknownObjectRelease();

          v39 = [v35 sharedApplication];
          v40 = [v39 delegate];

          if (v40)
          {
            swift_dynamicCastClassUnconditional();
            v41 = sub_1000AF438();
            swift_unknownObjectRelease();
            (*(v11 + 8))(v14, v22);

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      goto LABEL_18;
    }
  }

LABEL_19:
  v42 = *(v5 + 16);
  v43 = sub_10000FC64(a1);
  v45 = v44;

  if (v43)
  {
    v46 = objc_opt_self();
    v47 = [v46 sharedApplication];
    v48 = [v47 delegate];

    if (v48)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v49 = sub_1000AF438();
      swift_unknownObjectRelease();
      v50 = v49[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      v51 = swift_getObjectType();
      v52 = sub_1000564E8(v50, v51, v45);
      v53 = [v46 sharedApplication];
      v54 = [v53 delegate];

      if (v52 == 2)
      {
        if (!v54)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      else if (!v54)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      swift_dynamicCastClassUnconditional();
      v55 = sub_1000AF438();
      swift_unknownObjectRelease();

      return;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

void sub_10008DA1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_10000FC64(a1);
  v6 = v5;

  if (v4)
  {
    v7 = objc_opt_self();
    v8 = [v7 sharedApplication];
    v9 = [v8 delegate];

    if (v9)
    {
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v10 = sub_1000AF438();
      swift_unknownObjectRelease();

      v11 = [v7 sharedApplication];
      v12 = [v11 delegate];

      if (v12)
      {
        swift_dynamicCastClassUnconditional();
        v13 = sub_1000AF438();
        swift_unknownObjectRelease();
        v14 = v13[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        ObjectType = swift_getObjectType();
        v16 = sub_1000564E8(v14, ObjectType, v6);
        v17 = [v7 sharedApplication];
        v18 = [v17 delegate];

        if (v16 != 3)
        {
          if (v18)
          {
            swift_dynamicCastClassUnconditional();

            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_13;
        }

        if (v18)
        {
          swift_dynamicCastClassUnconditional();
          v19 = sub_1000AF438();
          swift_unknownObjectRelease();

          return;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_10008DCB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v17 = sub_10000FC64(a1);
  v5 = v4;

  if (!v17)
  {
    return;
  }

  ObjectType = swift_getObjectType();
  if (sub_1000564B4(ObjectType, v5))
  {
    type metadata accessor for ClimateStepper();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = objc_opt_self();
      v10 = v17;
      v11 = [v9 sharedApplication];
      v12 = [v11 delegate];

      if (v12)
      {
        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();

        v13 = swift_unknownObjectRelease();
        (*((swift_isaMask & *v8) + 0x220))(v13, 44.0);
        v14 = [v9 sharedApplication];
        v15 = [v14 delegate];

        if (v15)
        {
          swift_dynamicCastClassUnconditional();

          v16 = swift_unknownObjectRelease();
          (*((swift_isaMask & *v8) + 0x238))(v16, 44.0);

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
  }

LABEL_7:
}

void sub_10008DF1C(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v5 = sub_1000AF438();
  swift_unknownObjectRelease();
  v6 = v5[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v6 == 1)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 236.0;
  }

  if (a1 == v7)
  {
    v8 = [v2 sharedApplication];
    v9 = [v8 delegate];

    if (v9)
    {
      swift_dynamicCastClassUnconditional();
      v10 = sub_1000AF438();
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_10;
  }
}

void sub_10008E0B8()
{
  v1 = v0;
  v39 = type metadata accessor for IndexPath();
  __chkstk_darwin(v39);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = 2;
  if (!*(*(v5 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16))
  {
    v6 = 3;
  }

  v38 = v6;
  v7 = *(*(v5 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v2 + 8);
    v10 = 0.0;
    v11 = v38;
    v12 = 0.0;
    while (1)
    {
      IndexPath.init(item:section:)();
      sub_10008DA1C(v4);
      v14 = v13;
      v16 = v15;
      sub_10008DF1C(v13);
      v18 = v17;
      sub_10008DCB8(v4);
      if (v11 <= 0)
      {
        v19 = [objc_opt_self() sharedApplication];
        v20 = [v19 delegate];

        if (!v20)
        {
          goto LABEL_26;
        }

        type metadata accessor for ClimateAppDelegate();
        swift_dynamicCastClassUnconditional();
        v21 = sub_1000AF438();
        swift_unknownObjectRelease();
        v22 = v21[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        if (v22)
        {
          v23 = 12.0;
        }

        else
        {
          v23 = 8.0;
        }

        v10 = v10 + v14 + v23;
        v12 = 0.0;
        v11 = v38;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v25 = [objc_opt_self() layoutAttributesForCellWithIndexPath:isa];

      [v25 setFrame:{v10, v12, v14, v16}];
      swift_beginAccess();
      v26 = v25;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v27 = *(v1 + 32);
      v40.origin.x = v10;
      v40.origin.y = v12;
      v40.size.width = v14;
      v40.size.height = v16;
      MaxY = CGRectGetMaxY(v40);
      if (v27 > MaxY)
      {
        MaxY = v27;
      }

      *(v1 + 32) = MaxY;
      v29 = *(v1 + 40);
      v41.origin.x = v10;
      v41.origin.y = v12;
      v41.size.width = v14;
      v41.size.height = v16;
      MaxX = CGRectGetMaxX(v41);
      if (v29 > MaxX)
      {
        MaxX = v29;
      }

      *(v1 + 40) = MaxX;
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 delegate];

      if (!v32)
      {
        break;
      }

      ++v8;
      v33 = -3;
      if ((v18 & 1) == 0)
      {
        v33 = -1;
      }

      v11 += v33;
      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v34 = sub_1000AF438();

      swift_unknownObjectRelease();
      (*v9)(v4, v39);
      v35 = v34[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if (v35)
      {
        v36 = 23.0;
      }

      else
      {
        v36 = 8.0;
      }

      v12 = v12 + v16 + v36;
      if (v7 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_10008E4CC(double a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v5 = sub_1000AF438();
  swift_unknownObjectRelease();
  v6 = v5[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v6 == 1)
  {
    v7 = 44.0;
  }

  else
  {
    v7 = 148.0;
  }

  if (a1 == v7)
  {
    v8 = [v2 sharedApplication];
    v9 = [v8 delegate];

    if (v9)
    {
      swift_dynamicCastClassUnconditional();
      v10 = sub_1000AF438();
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_10;
  }
}

void sub_10008E668()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  __chkstk_darwin(v2);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = 2;
  if (!*(*(v6 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16))
  {
    v7 = 3;
  }

  v39 = v7;
  v8 = *(*(v6 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
  if (!v8)
  {
    return;
  }

  v9 = 0;
  v10 = (v3 + 8);
  v11 = 0.0;
  v12 = v39;
  v13 = 0.0;
  while (1)
  {
    IndexPath.init(item:section:)();
    sub_10008D348(v5, v12, 0, 0);
    v15 = v14;
    v17 = v16;
    sub_10008E4CC(v14);
    v19 = v18;
    if (!v12 || ((v12 < 2) & v18) != 0)
    {
      v20 = [objc_opt_self() sharedApplication];
      v21 = [v20 delegate];

      if (!v21)
      {
        goto LABEL_31;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v22 = sub_1000AF438();
      swift_unknownObjectRelease();
      v23 = v22[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if (v23)
      {
        v24 = 23.0;
      }

      else
      {
        v24 = 8.0;
      }

      v11 = v11 + v17 + v24;
      v13 = 0.0;
      v12 = v39;
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v26 = [objc_opt_self() layoutAttributesForCellWithIndexPath:isa];

    [v26 setFrame:{v13, v11, v15, v17}];
    swift_beginAccess();
    v27 = v26;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v38[1] = *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v28 = *(v1 + 32);
    v40.origin.x = v13;
    v40.origin.y = v11;
    v40.size.width = v15;
    v40.size.height = v17;
    MaxY = CGRectGetMaxY(v40);
    if (v28 > MaxY)
    {
      MaxY = v28;
    }

    *(v1 + 32) = MaxY;
    v30 = *(v1 + 40);
    v41.origin.x = v13;
    v41.origin.y = v11;
    v41.size.width = v15;
    v41.size.height = v17;
    MaxX = CGRectGetMaxX(v41);
    if (v30 > MaxX)
    {
      MaxX = v30;
    }

    *(v1 + 40) = MaxX;
    if (v19)
    {
      break;
    }

    v32 = __OFSUB__(v12--, 1);
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_23:
    v33 = [objc_opt_self() sharedApplication];
    v34 = [v33 delegate];

    if (!v34)
    {
      goto LABEL_30;
    }

    ++v9;
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v35 = sub_1000AF438();

    swift_unknownObjectRelease();
    (*v10)(v5, v2);
    v36 = v35[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    if (v36)
    {
      v37 = 12.0;
    }

    else
    {
      v37 = 8.0;
    }

    v13 = v13 + v15 + v37;
    if (v8 == v9)
    {
      return;
    }
  }

  v32 = __OFSUB__(v12, 2);
  v12 -= 2;
  if (!v32)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_10008EA9C()
{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  __chkstk_darwin(v35);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(*(v5 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(*(v5 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
    v9 = (v2 + 8);
    v10 = 0.0;
    while (!__OFADD__(v7, v8))
    {
      IndexPath.init(item:section:)();
      sub_10008DA1C(v4);
      v12 = v11;
      v14 = v13;
      v15 = objc_opt_self();
      v16 = [v15 sharedApplication];
      v17 = [v16 delegate];

      if (!v17)
      {
        goto LABEL_24;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v18 = sub_1000AF438();
      swift_unknownObjectRelease();
      v19 = v18[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if (v19)
      {
        v20 = 112.0;
      }

      else
      {
        v20 = 164.0;
      }

      v21 = 0.0;
      if (IndexPath.item.getter() != v8)
      {
        v22 = [v15 sharedApplication];
        v23 = [v22 delegate];

        if (!v23)
        {
          goto LABEL_25;
        }

        swift_dynamicCastClassUnconditional();
        v24 = sub_1000AF438();
        swift_unknownObjectRelease();
        v25 = v24[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        if (v25)
        {
          v26 = 23.0;
        }

        else
        {
          v26 = 8.0;
        }

        v21 = v10 + v26;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v28 = [objc_opt_self() layoutAttributesForCellWithIndexPath:isa];

      [v28 setFrame:{v20, v21, v12, v14}];
      swift_beginAccess();
      v29 = v28;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v7;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v30 = *(v1 + 32);
      v36.origin.x = v20;
      v36.origin.y = v21;
      v36.size.width = v12;
      v36.size.height = v14;
      MaxY = CGRectGetMaxY(v36);
      if (v30 > MaxY)
      {
        MaxY = v30;
      }

      *(v1 + 32) = MaxY;
      v32 = *(v1 + 40);
      v37.origin.x = v20;
      v37.origin.y = v21;
      v37.size.width = v12;
      v37.size.height = v14;
      MaxX = CGRectGetMaxX(v37);

      (*v9)(v4, v35);
      if (v32 > MaxX)
      {
        v34 = v32;
      }

      else
      {
        v34 = MaxX;
      }

      *(v1 + 40) = v34;
      v10 = v14 + v21;
      if (v6 == v7)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

void sub_10008EE88()
{
  v1 = v0;
  v46 = type metadata accessor for IndexPath();
  __chkstk_darwin(v46);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(*(v0 + 16) + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
  if (v5)
  {
    v45 = v2;
    v6 = objc_opt_self();
    v7 = [v6 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRelease();
    v9 = *(*(*(v1 + 16) + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
    v10 = [v6 sharedApplication];
    v11 = [v10 delegate];

    if (!v11)
    {
LABEL_34:
      __break(1u);
      return;
    }

    v12 = v9 - 1;
    swift_dynamicCastClassUnconditional();
    v13 = sub_1000AF438();
    swift_unknownObjectRelease();
    v14 = v13[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v15 = 8.0;
    if (v14)
    {
      v15 = 23.0;
    }

    v47 = v5 * 44.0 + v15 * v12 < *(v1 + 32);
    v2 = v45;
  }

  else
  {
    v47 = 0;
  }

  v16 = *(v1 + 16);
  v45 = *(*(v16 + OBJC_IVAR____TtC7Climate17ClimateGridSource_surfaceItems) + 16);
  if (v45)
  {
    v17 = 0;
    v18 = *(*(v16 + OBJC_IVAR____TtC7Climate17ClimateGridSource_flowItems) + 16);
    v19 = (v2 + 8);
    v20 = 0.0;
    while (!__OFADD__(v17, v18))
    {
      IndexPath.init(item:section:)();
      sub_10008D348(v4, 0, 1, v47);
      v22 = v21;
      v24 = v23;
      v25 = objc_opt_self();
      v26 = [v25 sharedApplication];
      v27 = [v26 delegate];

      if (!v27)
      {
        goto LABEL_31;
      }

      type metadata accessor for ClimateAppDelegate();
      swift_dynamicCastClassUnconditional();
      v28 = sub_1000AF438();
      swift_unknownObjectRelease();
      v29 = v28[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

      if (v29)
      {
        v30 = 62.0;
      }

      else
      {
        v30 = 166.0;
      }

      v31 = 0.0;
      if (IndexPath.item.getter() != v18)
      {
        v32 = [v25 sharedApplication];
        v33 = [v32 delegate];

        if (!v33)
        {
          goto LABEL_32;
        }

        swift_dynamicCastClassUnconditional();
        v34 = sub_1000AF438();
        swift_unknownObjectRelease();
        v35 = v34[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

        if (v35)
        {
          v36 = 23.0;
        }

        else
        {
          v36 = 8.0;
        }

        v31 = v20 + v36;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [objc_opt_self() layoutAttributesForCellWithIndexPath:isa];

      [v38 setFrame:{v30, v31, v22, v24}];
      swift_beginAccess();
      v39 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v17;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v40 = *(v1 + 32);
      v48.origin.x = v30;
      v48.origin.y = v31;
      v48.size.width = v22;
      v48.size.height = v24;
      MaxY = CGRectGetMaxY(v48);
      if (v40 > MaxY)
      {
        MaxY = v40;
      }

      *(v1 + 32) = MaxY;
      v42 = *(v1 + 40);
      v49.origin.x = v30;
      v49.origin.y = v31;
      v49.size.width = v22;
      v49.size.height = v24;
      MaxX = CGRectGetMaxX(v49);

      (*v19)(v4, v46);
      if (v42 > MaxX)
      {
        v44 = v42;
      }

      else
      {
        v44 = MaxX;
      }

      *(v1 + 40) = v44;
      v20 = v24 + v31;
      if (v45 == v17)
      {
        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

void sub_10008F408(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 delegate];

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v5 = sub_1000AF438();
  swift_unknownObjectRelease();
  v6 = v5[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  if (v6 == 1)
  {
    v7 = [v2 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    swift_dynamicCastClassUnconditional();
    v9 = sub_1000AF438();
    swift_unknownObjectRelease();
  }

  v10 = [v2 sharedApplication];
  v11 = [v10 delegate];

  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_dynamicCastClassUnconditional();
  v12 = sub_1000AF438();
  swift_unknownObjectRelease();
  v13 = v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

  v14 = [v2 sharedApplication];
  v15 = [v14 delegate];

  if (v13 != 1)
  {
    if (a1 != 2)
    {
      if (v15)
      {
        goto LABEL_12;
      }

      goto LABEL_23;
    }

    if (v15)
    {
LABEL_12:
      swift_dynamicCastClassUnconditional();
      v16 = sub_1000AF438();
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_21;
  }

  if (a1 != 3)
  {
    if (v15)
    {
      swift_dynamicCastClassUnconditional();

      swift_unknownObjectRelease();
      return;
    }

    goto LABEL_22;
  }

  if (v15)
  {
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_10008F794()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for ClimateTapAreaButton();
  objc_msgSendSuper2(&v9, "didMoveToSuperview");
  swift_getObjectType();
  sub_1000040E8(&qword_1001174A8);
  v7 = String.init<A>(describing:)();
  v8 = v1;
  v2._countAndFlagsBits = 58;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100056230(*(v0 + OBJC_IVAR____TtC7Climate20ClimateTapAreaButton_slotType));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = CAUVehicleLayoutKey.rawValue.getter();
  String.append(_:)(v5);

  v6 = String._bridgeToObjectiveC()();

  [v0 setAccessibilityIdentifier:{v6, v7, v8}];
}

uint64_t sub_10008F94C()
{
  v1 = OBJC_IVAR____TtC7Climate20ClimateTapAreaButton_key;
  v2 = type metadata accessor for CAUVehicleLayoutKey();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10008F9B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateTapAreaButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateTapAreaButton()
{
  result = qword_100117498;
  if (!qword_100117498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008FAAC()
{
  result = type metadata accessor for CAUVehicleLayoutKey();
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

void sub_10008FB44(int a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue);
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue) = a1;
  sub_10003C32C(v2);

  sub_100090A8C();
}

void sub_10008FB84(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v8 = (v5 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v10 = *(v5 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  v9 = *(v5 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 8);
  v11 = *(v5 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig + 16);
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v12 = a3;
  swift_bridgeObjectRetain_n();
  v13 = a1;
  v14 = a2;
  v27 = v12;
  v28 = v13;
  v15 = v14;

  v16 = *(v5 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v17 = [objc_opt_self() clearColor];
  v18 = *v8;
  v19 = (v16 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v20 = *(v16 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig);
  v21 = *(v16 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8);
  v22 = *(v16 + OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16);
  *v19 = v17;
  v19[1] = v18;
  v19[2] = &_swiftEmptyDictionarySingleton;
  sub_10000827C(0, &qword_100115110);
  v23 = v18;
  v24 = v17;
  if (static NSObject.== infix(_:_:)() & 1) != 0 && (static NSObject.== infix(_:_:)() & 1) != 0 && (sub_10007DB08(&_swiftEmptyDictionarySingleton, v22), (v25))
  {

    v26 = v27;

    v21 = v15;
    v20 = v28;
  }

  else
  {
    ClimateButton.refreshColorConfig()();

    v26 = v27;
  }

  [*(v5 + OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView) setBackgroundColor:v8[1]];
  [*(v5 + OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView) setBackgroundColor:v8[2]];
}

id sub_10008FDE0(char a1)
{
  v2 = OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted;
  *(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted) = a1;
  if (a1)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setAlpha:v3];
  v4 = *(v1 + OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView);
  if (*(v1 + v2))
  {
    v5 = 0.2;
  }

  else
  {
    v5 = 1.0;
  }

  return [v4 setAlpha:v5];
}

id sub_10008FE7C(double a1, double a2)
{
  v5 = *&v2[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView];
  [v2 addSubview:v5];
  v6 = *&v2[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView];
  [v2 addSubview:v6];
  v44 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D8A40;
  v8 = [v5 topAnchor];
  v9 = *&v2[OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];

  *(v7 + 32) = v11;
  v12 = [v5 widthAnchor];
  v13 = [v12 constraintEqualToConstant:a2];

  *(v7 + 40) = v13;
  v14 = [v5 heightAnchor];
  v15 = [v14 constraintEqualToConstant:a1];

  *(v7 + 48) = v15;
  v16 = [v5 centerXAnchor];
  v17 = [v2 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v7 + 56) = v18;
  v19 = [v6 topAnchor];
  v20 = [v9 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  v22 = OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint;
  v23 = *&v2[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint];
  *(v7 + 64) = v21;
  *(v7 + 72) = v23;
  v24 = v23;
  v25 = [v6 heightAnchor];
  v26 = [v25 constraintEqualToConstant:a1];

  *(v7 + 80) = v26;
  v27 = [v6 leadingAnchor];
  v28 = [v5 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v7 + 88) = v29;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 activateConstraints:isa];

  v31 = *&v2[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue];
  v32 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;
  v33 = [*&v2[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] minimum];
  [v33 doubleValue];
  v35 = v34;

  v36 = v31 - v35;
  v37 = [*&v2[v32] maximum];
  [v37 doubleValue];
  v39 = v38;

  v40 = [*&v2[v32] minimum];
  [v40 doubleValue];
  v42 = v41;

  [*&v2[v22] setConstant:v36 / (v39 - v42) * 30.0];

  return [v2 layoutIfNeeded];
}

uint64_t sub_1000902DC(char a1)
{
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v4 = *&v1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView];
  *(inited + 32) = v4;
  v5 = *&v1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView];
  *(inited + 40) = v5;
  v6 = v4;
  v7 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v9 = i;
    v18 = 0;
    v19 = 0;
    v17 = 0x3FF0000000000000;
    v20 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    [i setTransform:&v17];
    [v9 setAlpha:0.0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v11 = v10;
  v18 = 0;
  v19 = 0;
  v17 = 0x3FF0000000000000;
  v20 = 0x3FF0000000000000;
  v21 = 0;
  v22 = 0;
  [v10 setTransform:&v17];
  [v11 setAlpha:0.0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100090F38;
    *(v13 + 24) = v12;
    v14 = v1;

    [v14 _removeAllAnimations:1];
    v15 = sub_10000827C(0, &qword_100115400);
    __chkstk_darwin(v15);
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  }

  else
  {
    sub_100090598(v1);
  }
}

uint64_t sub_100090598(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
  if (v2)
  {
    [v2 setConstant:-3.0];
  }

  [a1 layoutIfNeeded];
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v4 = *&a1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView];
  *(inited + 32) = v4;
  v5 = *&a1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView];
  *(inited + 40) = v5;
  v6 = v4;
  v7 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_11;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v9 = i;
    v14 = 0;
    v15 = 0;
    v13 = 0x3FF0000000000000;
    v16 = 0x3FF0000000000000;
    v17 = 0;
    v18 = 0;
    [i setTransform:&v13];
    [v9 setAlpha:1.0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    ;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v11 = v10;
  v14 = 0;
  v15 = 0;
  v13 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  [v10 setTransform:&v13];
  [v11 setAlpha:1.0];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t sub_100090758(char a1)
{
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D58A0;
  v4 = *&v1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView];
  *(inited + 32) = v4;
  v5 = *&v1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView];
  *(inited + 40) = v5;
  v6 = v4;
  v7 = v5;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_17;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v9 = i;
    if (qword_100113E68 != -1)
    {
      swift_once();
    }

    v19 = *byte_10011AE10;
    v20 = *&byte_10011AE10[16];
    v21 = *&byte_10011AE10[32];
    [v9 setTransform:&v19];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v10 = *(inited + 40);
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v11 = v10;
  if (qword_100113E68 != -1)
  {
    swift_once();
  }

  v19 = *byte_10011AE10;
  v20 = *&byte_10011AE10[16];
  v21 = *&byte_10011AE10[32];
  [v11 setTransform:&v19];

  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  if (a1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100035E50;
    *(v13 + 24) = v12;
    v14 = v1;

    [v14 _removeAllAnimations:1];
    v15 = sub_10000827C(0, &qword_100115400);
    __chkstk_darwin(v15);
    static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
  }

  else
  {
    v17 = *&v1[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint];
    v18 = v1;
    if (v17)
    {
      [v17 setConstant:0.0];
    }

    [v1 layoutIfNeeded];
  }
}

void sub_100090A8C()
{
  v1 = OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue;
  v2 = OBJC_IVAR____TtC7Climate19ClimateProgressView_range;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_range);
  if ((*(v0 + OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue) & 0x80000000) != 0)
  {
    v13 = [v3 maximum];
    [v13 intValue];

    v14 = *(v0 + v1);
    v15 = [*(v0 + v2) maximum];
    v16 = [v15 intValue];

    if (v14 >= 0)
    {
      v17 = v16 & ~(v16 >> 31);
    }

    else
    {
      v17 = v16 & (v16 >> 31);
    }

    v18 = *(v0 + v1);
    v19 = [*(v0 + v2) minimum];
    v20 = [v19 intValue];

    v21 = v20 & ~(v20 >> 31);
    if (v18 < 0)
    {
      v21 = v20 & (v20 >> 31);
    }

    if (!__OFSUB__(v17, v21))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = [v3 minimum];
    [v4 intValue];

    v5 = *(v0 + v1);
    v6 = [*(v0 + v2) maximum];
    v7 = [v6 intValue];

    if (v5 >= 0)
    {
      v8 = v7 & ~(v7 >> 31);
    }

    else
    {
      v8 = v7 & (v7 >> 31);
    }

    v9 = *(v0 + v1);
    v10 = [*(v0 + v2) minimum];
    v11 = [v10 intValue];

    v12 = v11 & ~(v11 >> 31);
    if (v9 < 0)
    {
      v12 = v11 & (v11 >> 31);
    }

    if (!__OFSUB__(v8, v12))
    {
LABEL_15:
      v22 = sub_10000827C(0, &qword_100115400);
      __chkstk_darwin(v22);
      static UIView.animate(springDuration:bounce:initialSpringVelocity:delay:options:animations:completion:)();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

id sub_100090D24(char *a1, float a2)
{
  v4 = *&a1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView];
  v5 = *&a1[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint];
  [v4 bounds];
  [v5 setConstant:CGRectGetWidth(v8) * a2];

  return [a1 layoutIfNeeded];
}

void sub_100090DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint);
}

id sub_100090E14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateBarProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100090EC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090F00()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100090F64()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  v4 = 7.0;
  if (v3)
  {
    v5 = [v0 standardUserDefaults];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 valueForKey:v6];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      sub_1000910E4(v12);
    }
  }

  return v4;
}

uint64_t sub_1000910E4(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_1001166B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10009114C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate23ClimateZonePositionView_zone);
  v3 = *(v2 + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan);
  if (v3)
  {
    v4 = v3;
    v5 = CAFSeatFan.isVenting.getter();
  }

  else
  {
    v5 = 0;
  }

  v6 = OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling;
  v7 = *(v2 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7;
  v9 = CAFSeatHeatingCooling.isHeating.getter();

  v10 = *(v2 + v6);
  if (!v10)
  {
    if (v9)
    {
      goto LABEL_10;
    }

LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v13 = *(v1 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView);
    v14 = *(v1 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_images + 8);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = CAFSeatHeatingCooling.isCooling.getter();

  if ((v9 & 1) == 0)
  {
    if (((v5 | v12) & 1) == 0)
    {
LABEL_8:
      v13 = *(v1 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView);
      v14 = 0;
      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_10:
  v13 = *(v1 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView);
  v15 = (v1 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_images);
  if (v5)
  {
    v14 = v15[2];
  }

  else
  {
    v14 = *v15;
  }

LABEL_15:

  return [v13 setImage:v14];
}

void sub_100091294()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_images + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_images + 16);
}

id sub_1000912FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateZoneHeatingCoolingVentingPositionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateZoneHeatingCoolingVentingPositionView()
{
  result = qword_100117518;
  if (!qword_100117518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_10009179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v49 = a6;
  v50 = a3;
  v13 = type metadata accessor for CAUVehicleLayoutInfo();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView;
  *(v7 + v17) = [objc_allocWithZone(UIImageView) init];
  v18 = (v7 + OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_images);
  v19 = v49;
  *v18 = a5;
  v18[1] = v19;
  v18[2] = a7;
  v51 = v14;
  v52 = v13;
  v20 = *(v14 + 16);
  v53 = a4;
  v20(v16, a4, v13);
  v21 = a7;

  swift_unknownObjectRetain();
  v22 = a5;
  v23 = v19;
  sub_1000A62B8(a1, a2, v50, v16);
  v25 = v24;

  swift_unknownObjectRelease();
  [*(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_temperature) registerObserver:v25];
  v26 = *(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_seatHeatingCooling);
  if (v26)
  {
    [v26 registerObserver:v25];
  }

  v27 = *(a1 + OBJC_IVAR____TtC7Climate11ClimateZone_seatFan);
  if (v27)
  {
    [v27 registerObserver:v25];
  }

  v28 = OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView;
  [*&v25[OBJC_IVAR____TtC7Climate44ClimateZoneHeatingCoolingVentingPositionView_seatView] setContentMode:1];
  [*&v25[v28] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = *&v25[v28];
  v30 = *&v25[OBJC_IVAR____TtC7Climate23ClimateZonePositionView_activeButton];
  v31 = v25;
  [v31 insertSubview:v29 belowSubview:v30];
  v32 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000D5D90;
  v34 = [*&v25[v28] topAnchor];
  v35 = [v31 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v33 + 32) = v36;
  v37 = [*&v25[v28] bottomAnchor];
  v38 = [v31 bottomAnchor];

  v39 = [v37 constraintEqualToAnchor:v38];
  *(v33 + 40) = v39;
  v40 = [*&v25[v28] leadingAnchor];
  v41 = [v31 leadingAnchor];

  v42 = [v40 constraintEqualToAnchor:v41];
  *(v33 + 48) = v42;
  v43 = [*&v25[v28] trailingAnchor];
  v44 = [v31 trailingAnchor];

  v45 = [v43 constraintEqualToAnchor:v44];
  *(v33 + 56) = v45;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];

  sub_10009114C();
  (*(v51 + 8))(v53, v52);
  return v31;
}

char *ClimateStepper.init(primaryButton:axis:range:)(void *a1, uint64_t a2, void *a3)
{
  UUID.init()();
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_activeConstraints] = &_swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig];
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  v7 = [v5 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v8 = [v7 resolvedColorWithTraitCollection:qword_100116BF8];

  *v4 = v6;
  *(v4 + 1) = v8;
  *(v4 + 2) = &_swiftEmptyDictionarySingleton;
  v9 = &v3[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig];
  v10 = [v5 clearColor];
  v11 = [v5 labelColor];
  v12 = [v11 resolvedColorWithTraitCollection:qword_100116BF8];

  *v9 = v10;
  *(v9 + 1) = v12;
  *(v9 + 2) = &_swiftEmptyDictionarySingleton;
  v13 = &v3[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig];
  if (qword_100113EC8 != -1)
  {
    swift_once();
  }

  v14 = qword_10011B070;
  v15 = [v5 labelColor];
  v16 = [v15 resolvedColorWithTraitCollection:qword_100116BF8];

  *v13 = v14;
  *(v13 + 1) = v16;
  *(v13 + 2) = &_swiftEmptyDictionarySingleton;
  v17 = &v3[OBJC_IVAR____TtC7Climate14ClimateStepper_accessibilityIdentifierModifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsWidth] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonWidth] = 0x404F000000000000;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsHeight] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonHeight] = 0x4040000000000000;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton] = a1;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_axis] = a2;
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_range] = a3;
  v18 = type metadata accessor for ClimateStepperButton(0);
  v19 = objc_allocWithZone(v18);
  v94 = a1;
  v20 = a3;
  v21 = [v19 init];
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton] = v21;
  v22 = [objc_allocWithZone(v18) init];
  *&v3[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] = v22;
  v102.receiver = v3;
  v102.super_class = type metadata accessor for ClimateStepper();
  v23 = objc_msgSendSuper2(&v102, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = OBJC_IVAR____TtC7Climate14ClimateStepper_upButton;
  v25 = *&v23[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v20;
  v28 = &v25[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v29 = *&v25[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v28 = sub_100095E88;
  v28[1] = v27;
  v30 = v23;
  v31 = v20;
  v32 = v30;
  v33 = v25;

  sub_100003380(v29);

  v100 = OBJC_IVAR____TtC7Climate14ClimateStepper_downButton;
  v34 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = v35;
  *(v36 + 24) = v31;
  v37 = &v34[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  v38 = *&v34[OBJC_IVAR____TtC7Climate20ClimateStepperButton_presentationStatesBlock];
  *v37 = sub_100095ED0;
  v37[1] = v36;
  v96 = v31;
  v39 = v34;

  sub_100003380(v38);

  if (qword_100113F18 != -1)
  {
    swift_once();
  }

  v40 = [objc_opt_self() configurationWithFont:qword_10011B258 scale:2];
  sub_100094A20();
  v41 = *&v23[v24];
  *&v41[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier] = xmmword_1000D8AE0;
  v42 = v41;

  sub_1000946A8();

  v43 = *&v23[v24];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = &v43[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v46 = *v45;
  *v45 = sub_100095ED8;
  v45[1] = v44;
  v47 = v43;

  sub_100003380(v46);

  v98 = v23;
  v48 = *&v23[v24];
  v49 = v40;
  v50 = ClimateButton.imageSymbolConfiguration.getter();
  v51 = *&v48[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v48[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v49;
  v52 = v49;

  v53 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v51) = static NSObject.== infix(_:_:)();

  v93 = v24;
  if ((v51 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v54 = *&v32[v100];
  *&v54[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier] = xmmword_1000D8AF0;
  v55 = v54;

  sub_1000946A8();

  v56 = *&v32[v100];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = &v56[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v59 = *v58;
  *v58 = sub_100095EFC;
  v58[1] = v57;
  v60 = v56;

  sub_100003380(v59);

  v61 = *&v32[v100];
  v62 = v52;
  v63 = v61;
  v64 = ClimateButton.imageSymbolConfiguration.getter();
  v65 = *&v63[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v63[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v49;
  v66 = v62;

  v67 = ClimateButton.imageSymbolConfiguration.getter();
  LOBYTE(v65) = static NSObject.== infix(_:_:)();

  if ((v65 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
  v68 = [v32 layer];
  [v68 setCornerCurve:kCACornerCurveContinuous];

  v69 = [v32 layer];
  [v69 setCornerRadius:22.0];

  [v32 setClipsToBounds:1];
  v70 = v94;
  [v32 addSubview:v70];
  v71 = *&v70[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v72 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8];
  v73 = *&v70[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];

  v74 = v72;
  sub_10007A4CC(v73, v74, v71);

  [v70 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v32 addSubview:*&v32[v100]];
  [*&v32[v100] setTranslatesAutoresizingMaskIntoConstraints:0];
  v75 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig];
  v76 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig + 8];
  v77 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig + 16];
  v78 = *&v32[v100];
  v79 = v75;
  v80 = v76;

  sub_10007A4CC(v79, v80, v77);

  v81 = [*&v32[v100] layer];
  [v81 setHitTestsAsOpaque:1];

  v82 = [*&v32[v100] layer];
  [v82 setCornerRadius:0.0];

  [v32 addSubview:*&v98[v93]];
  [*&v98[v93] setTranslatesAutoresizingMaskIntoConstraints:0];
  v101 = v66;
  v83 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig];
  v84 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig + 8];
  v85 = *&v32[OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig + 16];
  v86 = *&v98[v93];
  v87 = v83;
  v88 = v84;

  sub_10007A4CC(v87, v88, v85);

  v89 = [*&v98[v93] layer];
  [v89 setCornerRadius:0.0];

  v90 = [*&v98[v93] layer];
  [v90 setHitTestsAsOpaque:1];

  v91 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v32 action:"longPressTriggered:"];
  [v32 addGestureRecognizer:v91];
  ClimateStepper.updateConstraintsAndArrows()();

  return v32;
}

uint64_t ClimateStepper.popoverDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_100094F44();
  return swift_unknownObjectRelease();
}

void (*ClimateStepper.popoverDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100092860;
}

void sub_100092860(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_100094F44();
  }

  free(v3);
}

id ClimateStepper.primaryButton.getter()
{
  v1 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ClimateStepper.primaryButton.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ClimateStepper.axis.getter()
{
  v1 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  swift_beginAccess();
  return *(v0 + v1);
}

void ClimateStepper.axis.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    ClimateStepper.updateConstraintsAndArrows()();
  }
}

void (*ClimateStepper.axis.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100092B34;
}

void sub_100092B34(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    ClimateStepper.updateConstraintsAndArrows()();
  }

  free(v1);
}

Swift::Void __swiftcall ClimateStepper.updatePresentation()()
{
  v1 = v0;
  v2 = ((*((swift_isaMask & *v0) + 0x138))() & 0x18) != 0;
  v3 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  [v3 setHidden:v2];
  v4 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  [v4 setHidden:v2];
  v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = *((swift_isaMask & *v6) + 0x1F8);
  v8 = v6;
  v7();

  v9 = (*((swift_isaMask & *v4) + 0x1F8))();
  v10 = (*((swift_isaMask & *v3) + 0x1F8))(v9);
  v11 = (*((swift_isaMask & *v1) + 0x1C8))(v10);
  (*((swift_isaMask & *v1) + 0x1D0))(v11);
}

Swift::Void __swiftcall ClimateStepper.refreshColorConfig()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
  v3 = *((swift_isaMask & *v0) + 0x138);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
  v5 = v1;

  v7 = v3(v6);
  v8 = sub_10007E858(v7, v4, v2);

  [v0 setBackgroundColor:v8];
}

void sub_100092F5C(void *a1, double a2)
{
  v3 = *(v2 + *a1);
  *(v2 + *a1) = a2;
  if (v3 != a2)
  {
    v4 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
    swift_beginAccess();
    if (*(v2 + v4) == 1)
    {
      ClimateStepper.updateConstraintsAndArrows()();
    }
  }
}

id ClimateStepper.longPressTriggered(_:)(void *a1)
{
  v2 = v1;
  if ([a1 state] == 1)
  {
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v4 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v5 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(1, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  result = [a1 state];
  if (result == 3)
  {
    static os_log_type_t.default.getter();
    sub_10000827C(0, &qword_1001149B0);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v10 = v2 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v10 + 8);
      v12 = swift_getObjectType();
      (*(v11 + 8))(0, v12, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall ClimateStepper.updateConstraintsAndArrows()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = OBJC_IVAR____TtC7Climate14ClimateStepper_activeConstraints;
  swift_beginAccess();
  sub_10000827C(0, &qword_1001149C0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v87 = v2;
  [v2 deactivateConstraints:isa];

  *(v1 + v3) = &_swiftEmptyArrayStorage;

  v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  swift_beginAccess();
  v88 = v5;
  v6 = *(v1 + v5);
  sub_1000040E8(&unk_100114770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8B00;
  if (v6)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
    v9 = [v8 topAnchor];
    v10 = [v1 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    *(inited + 32) = v11;
    v12 = [v8 widthAnchor];
    v13 = [v1 widthAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(inited + 40) = v14;
    v15 = [v8 heightAnchor];
    v85 = *((swift_isaMask & *v1) + 0x218);
    v85();
    v16 = [v15 constraintEqualToConstant:?];

    *(inited + 48) = v16;
    v17 = [v8 centerXAnchor];
    v18 = [v1 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(inited + 56) = v19;
    v20 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    v21 = [*(v1 + v20) widthAnchor];
    v22 = [v1 widthAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];

    *(inited + 64) = v23;
    v24 = [*(v1 + v20) heightAnchor];
    (*((swift_isaMask & *v1) + 0x230))();
    v25 = [v24 constraintEqualToConstant:?];

    *(inited + 72) = v25;
    v26 = [*(v1 + v20) centerYAnchor];
    v27 = [v1 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(inited + 80) = v28;
    v29 = [*(v1 + v20) centerXAnchor];
    v30 = [v1 centerXAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(inited + 88) = v31;
    v32 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    v33 = [v32 widthAnchor];
    v34 = [v1 widthAnchor];
    v35 = [v33 constraintEqualToAnchor:v34];

    *(inited + 96) = v35;
    v36 = [v32 heightAnchor];
    v85();
    v37 = [v36 constraintEqualToConstant:?];

    *(inited + 104) = v37;
    v38 = [v32 bottomAnchor];
    v39 = [v1 bottomAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(inited + 112) = v40;
    v41 = [v32 centerXAnchor];
    v42 = [v1 centerXAnchor];
  }

  else
  {
    v32 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
    v43 = [v32 leadingAnchor];
    v44 = [v1 leadingAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];

    *(inited + 32) = v45;
    v46 = [v32 heightAnchor];
    v47 = [v1 heightAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(inited + 40) = v48;
    v49 = [v32 widthAnchor];
    v86 = *((swift_isaMask & *v1) + 0x1E8);
    v86();
    v50 = [v49 constraintEqualToConstant:?];

    *(inited + 48) = v50;
    v51 = [v32 centerYAnchor];
    v52 = [v1 centerYAnchor];
    v53 = [v51 constraintEqualToAnchor:v52];

    *(inited + 56) = v53;
    v54 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
    swift_beginAccess();
    v55 = [*(v1 + v54) widthAnchor];
    (*((swift_isaMask & *v1) + 0x200))();
    v56 = [v55 constraintEqualToConstant:?];

    *(inited + 64) = v56;
    v57 = [*(v1 + v54) heightAnchor];
    v58 = [v1 heightAnchor];
    v59 = [v57 constraintEqualToAnchor:v58];

    *(inited + 72) = v59;
    v60 = [*(v1 + v54) centerYAnchor];
    v61 = [v1 centerYAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(inited + 80) = v62;
    v63 = [*(v1 + v54) centerXAnchor];
    v64 = [v1 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor:v64];

    *(inited + 88) = v65;
    v8 = *(v1 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
    v66 = [v8 trailingAnchor];
    v67 = [v1 trailingAnchor];
    v68 = [v66 constraintEqualToAnchor:v67];

    *(inited + 96) = v68;
    v69 = [v8 widthAnchor];
    v86();
    v70 = [v69 constraintEqualToConstant:?];

    *(inited + 104) = v70;
    v71 = [v8 heightAnchor];
    v72 = [v1 heightAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    *(inited + 112) = v73;
    v41 = [v8 centerYAnchor];
    v42 = [v1 centerYAnchor];
  }

  v74 = [v41 constraintEqualToAnchor:v42];

  *(inited + 120) = v74;
  swift_beginAccess();
  sub_1000B7604(inited);
  swift_endAccess();

  v75 = Array._bridgeToObjectiveC()().super.isa;

  [v87 activateConstraints:v75];

  if (*(v1 + v88) == 1)
  {
    v76 = 0xEA00000000007075;
  }

  else
  {
    v76 = 0xEF64726177726F66;
  }

  v77 = &v8[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v78 = *v77;
  v79 = *(v77 + 1);
  *v77 = 0x2E6E6F7276656863;
  *(v77 + 1) = v76;
  if (!v79 || (v78 != 0x2E6E6F7276656863 || v79 != v76) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  if (*(v1 + v88) == 1)
  {
    v80 = 0x2E6E6F7276656863;
  }

  else
  {
    v80 = 0xD000000000000010;
  }

  if (*(v1 + v88) == 1)
  {
    v81 = 0xEC0000006E776F64;
  }

  else
  {
    v81 = 0x80000001000DE150;
  }

  v82 = &v32[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  *v82 = v80;
  v82[1] = v81;
  if (!v84 || (v80 != v83 || v84 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

uint64_t ClimateStepper.constraintsForStepButtons(_:direction:)(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  swift_beginAccess();
  v6 = *(v2 + v5);
  sub_1000040E8(&unk_100114770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D5D90;
  if (v6)
  {
    if (!a2)
    {
      v24 = [a1 topAnchor];
      v25 = [v2 topAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      *(v7 + 32) = v26;
      v27 = [a1 widthAnchor];
      v28 = [v2 widthAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];

      *(v7 + 40) = v29;
      v30 = [a1 heightAnchor];
      (*((swift_isaMask & *v2) + 0x218))();
      v31 = [v30 constraintEqualToConstant:?];

      *(v7 + 48) = v31;
LABEL_15:
      v45 = &selRef_centerXAnchor;
      goto LABEL_16;
    }

    if (a2 == 1)
    {
      v8 = [a1 widthAnchor];
      v9 = [v2 widthAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];

      *(v7 + 32) = v10;
      v11 = [a1 heightAnchor];
      (*((swift_isaMask & *v2) + 0x218))();
      v12 = [v11 constraintEqualToConstant:?];

      *(v7 + 40) = v12;
      v13 = [a1 bottomAnchor];
      v14 = [v2 bottomAnchor];
    }

    else
    {
      v32 = [a1 widthAnchor];
      v33 = [v2 widthAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];

      *(v7 + 32) = v34;
      v35 = [a1 heightAnchor];
      (*((swift_isaMask & *v2) + 0x230))();
      v36 = [v35 constraintEqualToConstant:?];

      *(v7 + 40) = v36;
      v13 = [a1 centerYAnchor];
      v14 = [v2 centerYAnchor];
    }

    v15 = [v13 constraintEqualToAnchor:v14];
LABEL_14:
    v51 = v15;

    *(v7 + 48) = v51;
    goto LABEL_15;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v46 = [a1 widthAnchor];
      (*((swift_isaMask & *v2) + 0x200))();
      v47 = [v46 constraintEqualToConstant:?];

      *(v7 + 32) = v47;
      v48 = [a1 heightAnchor];
      v49 = [v2 heightAnchor];
      v50 = [v48 constraintEqualToAnchor:v49];

      *(v7 + 40) = v50;
      v13 = [a1 centerYAnchor];
      v14 = [v2 centerYAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      goto LABEL_14;
    }

    v16 = [a1 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v7 + 32) = v18;
    v19 = [a1 heightAnchor];
    v20 = [v2 heightAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v7 + 40) = v21;
    v22 = [a1 widthAnchor];
    (*((swift_isaMask & *v2) + 0x1E8))();
    v23 = [v22 constraintEqualToConstant:?];

    *(v7 + 48) = v23;
  }

  else
  {
    v37 = [a1 trailingAnchor];
    v38 = [v2 trailingAnchor];
    v39 = [v37 constraintEqualToAnchor:v38];

    *(v7 + 32) = v39;
    v40 = [a1 widthAnchor];
    (*((swift_isaMask & *v2) + 0x1E8))();
    v41 = [v40 constraintEqualToConstant:?];

    *(v7 + 40) = v41;
    v42 = [a1 heightAnchor];
    v43 = [v2 heightAnchor];
    v44 = [v42 constraintEqualToAnchor:v43];

    *(v7 + 48) = v44;
  }

  v45 = &selRef_centerYAnchor;
LABEL_16:
  v52 = [a1 *v45];
  v53 = [v2 *v45];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v7 + 56) = v54;
  return v7;
}

void sub_1000946A8()
{
  v1 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-1] - v2;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&unk_100117A20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5970;
  v22[0] = swift_getObjectType();
  sub_1000040E8(&qword_100116C70);
  *(v8 + 32) = String.init<A>(describing:)();
  *(v8 + 40) = v9;
  v10 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier + 8];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_accessibilityIdentifierModifier];

    v8 = sub_1000C487C(1, 2, 1, v8);
    *(v8 + 16) = 2;
    *(v8 + 48) = v11;
    *(v8 + 56) = v10;
  }

  v23 = type metadata accessor for ClimateButton();
  v24 = &off_1000F8A38;
  v22[0] = v0;
  v12 = *((swift_isaMask & **sub_10000D960(v22, v23)) + 0x230);
  v13 = v0;
  v12();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100008904(v3, &qword_100115840);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v14 = CAUVehicleLayoutKey.rawValue.getter();
    v16 = v15;
    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    if (v18 >= v17 >> 1)
    {
      v8 = sub_1000C487C((v17 > 1), v18 + 1, 1, v8);
    }

    (*(v5 + 8))(v7, v4);
    *(v8 + 16) = v18 + 1;
    v19 = v8 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  sub_100006B9C(v22);
  v22[0] = v8;
  sub_1000040E8(&qword_100115EA8);
  sub_1000963BC();
  BidirectionalCollection<>.joined(separator:)();

  v20 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityIdentifier:v20];
}

void sub_100094A20()
{
  v1 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v1 - 8);
  v3 = v22 - v2;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&unk_100117A20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000D5970;
  v25[0] = swift_getObjectType();
  sub_1000040E8(qword_100117578);
  *(v8 + 32) = String.init<A>(describing:)();
  *(v8 + 40) = v9;
  v10 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_accessibilityIdentifierModifier + 8];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_accessibilityIdentifierModifier];

    v8 = sub_1000C487C(1, 2, 1, v8);
    *(v8 + 16) = 2;
    *(v8 + 48) = v11;
    *(v8 + 56) = v10;
  }

  v24 = v0;
  type metadata accessor for ClimateStepper();
  v12 = v0;
  sub_1000040E8(&unk_100116C60);
  if (swift_dynamicCast())
  {
    sub_1000751C8(v22, v25);
    v13 = v26;
    v14 = v27;
    sub_10000D960(v25, v26);
    (*(v14 + 8))(v13, v14);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_100008904(v3, &qword_100115840);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v15 = CAUVehicleLayoutKey.rawValue.getter();
      v17 = v16;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        v8 = sub_1000C487C((v18 > 1), v19 + 1, 1, v8);
      }

      (*(v5 + 8))(v7, v4);
      *(v8 + 16) = v19 + 1;
      v20 = v8 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
    }

    sub_100006B9C(v25);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_100008904(v22, &unk_100116C50);
  }

  v25[0] = v8;
  sub_1000040E8(&qword_100115EA8);
  sub_1000963BC();
  BidirectionalCollection<>.joined(separator:)();

  v21 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v21];
}

uint64_t ClimateStepper.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Climate14ClimateStepper_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100094F44()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  v2 = v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate;
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v3 = *(v2 + 8);
  v4 = v1 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  swift_beginAccess();
  *(v4 + 8) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  swift_unknownObjectWeakLoadStrong();
  v6 = *(v2 + 8);
  v7 = v5 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  swift_beginAccess();
  *(v7 + 8) = v6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v9 = *(v0 + v8);
  swift_unknownObjectWeakLoadStrong();
  v10 = *(v2 + 8);
  v11 = v9 + OBJC_IVAR____TtC7Climate13ClimateButton_popoverDelegate;
  swift_beginAccess();
  *(v11 + 8) = v10;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t ClimateStepper.presentationStates.getter()
{
  v1 = OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButton;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *((swift_isaMask & *v2) + 0x118);
  v4 = v2;
  v5 = v3();

  return v5;
}

uint64_t ClimateStepper.preferredFocusEnvironments.getter()
{
  sub_1000040E8(&unk_100114770);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000D58A0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upButton);
  v3 = *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downButton);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = v2;
  v5 = v3;
  return v1;
}

uint64_t sub_1000952E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = (*((swift_isaMask & *result) + 0x138))();
  v3 = (*((swift_isaMask & *v1) + 0xE8))();
  CAFRange.maximumValue<A>()();

  v4 = v2 & 8;
  if ((v2 & 0x10) != 0)
  {
    if (v2)
    {
      if ((v2 & 2) == 0)
      {
        if ((v2 & 4) == 0)
        {
          result = v4 | 1;
          return result | 0x10;
        }

        if ((v2 & 8) != 0)
        {
          result = 13;
          return result | 0x10;
        }

LABEL_35:
        result = 5;
        return result | 0x10;
      }

      v5 = v4 | 3;
      v6 = v4 | 7;
    }

    else
    {
      if ((v2 & 2) == 0)
      {
        if ((v2 & 4) != 0)
        {
          result = v4 | 4;
        }

        else
        {
          if ((v2 & 8) == 0)
          {
            return 16;
          }

          result = 8;
        }

        return result | 0x10;
      }

      v5 = v4 | 2;
      v6 = v4 | 6;
    }

    if ((v2 & 4) != 0)
    {
      result = v6;
    }

    else
    {
      result = v5;
    }

    return result | 0x10;
  }

  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      if ((v2 & 4) != 0)
      {
        return v4 | 7;
      }

      else
      {
        return v4 | 3;
      }
    }

    if ((v2 & 4) == 0)
    {
      result = v4 | 1;
      goto LABEL_41;
    }

    if ((v2 & 8) != 0)
    {
      result = 13;
      goto LABEL_41;
    }

    if (v7 > v3)
    {
      return 5;
    }

    goto LABEL_35;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) != 0)
    {
      result = v4 | 4;
    }

    else
    {
      if ((v2 & 8) == 0)
      {
        if (v7 > v3)
        {
          return 0;
        }

        return 16;
      }

      result = 8;
    }

LABEL_41:
    if (v7 > v3)
    {
      return result;
    }

    return result | 0x10;
  }

  if ((v2 & 4) != 0)
  {
    return v4 | 6;
  }

  else
  {
    return v4 | 2;
  }
}

uint64_t sub_1000954E0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = (*((swift_isaMask & *result) + 0x138))();
  v3 = (*((swift_isaMask & *v1) + 0xE8))();
  CAFRange.minimumValue<A>()();

  v4 = v2 & 8;
  if ((v2 & 0x10) != 0)
  {
    if (v2)
    {
      if ((v2 & 2) == 0)
      {
        if ((v2 & 4) == 0)
        {
          result = v4 | 1;
          return result | 0x10;
        }

        if ((v2 & 8) != 0)
        {
          result = 13;
          return result | 0x10;
        }

LABEL_35:
        result = 5;
        return result | 0x10;
      }

      v5 = v4 | 3;
      v6 = v4 | 7;
    }

    else
    {
      if ((v2 & 2) == 0)
      {
        if ((v2 & 4) != 0)
        {
          result = v4 | 4;
        }

        else
        {
          if ((v2 & 8) == 0)
          {
            return 16;
          }

          result = 8;
        }

        return result | 0x10;
      }

      v5 = v4 | 2;
      v6 = v4 | 6;
    }

    if ((v2 & 4) != 0)
    {
      result = v6;
    }

    else
    {
      result = v5;
    }

    return result | 0x10;
  }

  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      if ((v2 & 4) != 0)
      {
        return v4 | 7;
      }

      else
      {
        return v4 | 3;
      }
    }

    if ((v2 & 4) == 0)
    {
      result = v4 | 1;
      goto LABEL_41;
    }

    if ((v2 & 8) != 0)
    {
      result = 13;
      goto LABEL_41;
    }

    if (v3 > v7)
    {
      return 5;
    }

    goto LABEL_35;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) != 0)
    {
      result = v4 | 4;
    }

    else
    {
      if ((v2 & 8) == 0)
      {
        if (v3 > v7)
        {
          return 0;
        }

        return 16;
      }

      result = 8;
    }

LABEL_41:
    if (v3 > v7)
    {
      return result;
    }

    return result | 0x10;
  }

  if ((v2 & 4) != 0)
  {
    return v4 | 6;
  }

  else
  {
    return v4 | 2;
  }
}

uint64_t sub_1000956E0(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v4 = type metadata accessor for CAFRange.StepDirection();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    (*(v5 + 104))(v7, *a3, v4);
    (*((swift_isaMask & *v9) + 0x148))(v7);

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void ClimateStepper.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 delegate];

  if (v10)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v11 = sub_1000AF438();
    swift_unknownObjectRelease();
    v12 = *&v11[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v13 = *(v3 + 16);
    v13(v8, &v1[OBJC_IVAR____TtC7Climate14ClimateStepper_id], v2);
    v13(v5, v8, v2);
    v17 = 0;
    v18 = 1;
    swift_beginAccess();
    sub_100078128(&v17, v5);
    swift_endAccess();

    (*(v3 + 8))(v8, v2);
    v14 = type metadata accessor for ClimateStepper();
    v16.receiver = v1;
    v16.super_class = v14;
    objc_msgSendSuper2(&v16, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ClimateStepper.layoutSubviews()()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ClimateStepper();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = OBJC_IVAR____TtC7Climate14ClimateStepper_axis;
  swift_beginAccess();
  if (*&v0[v1] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_upButton];
    [v2 bounds];
    v3 = CGRectGetHeight(v5) + -44.0;
    [v2 setImageEdgeInsets:{0.0, 0.0, v3, 0.0}];
    [*&v0[OBJC_IVAR____TtC7Climate14ClimateStepper_downButton] setImageEdgeInsets:{v3, 0.0, 0.0, 0.0}];
  }
}

uint64_t type metadata accessor for ClimateStepper()
{
  result = qword_100117560;
  if (!qword_100117560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100095E4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100095F20(void *a1, void *a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
  v8 = *(v3 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig);
  v9 = *(v3 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 8);
  v10 = *(v3 + OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig + 16);
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  sub_10000827C(0, &qword_100115110);
  v11 = a1;
  v12 = a2;

  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || (sub_10007DB08(a3, v10), (v13 & 1) == 0))
  {
    (*((swift_isaMask & *v3) + 0x1D0))();
  }
}

void _s7Climate0A7StepperC5coderACSgSo7NSCoderC_tcfc_0()
{
  UUID.init()();
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_popoverDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_activeConstraints) = _swiftEmptyArrayStorage;
  v1 = (v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_downColorConfig);
  v2 = objc_opt_self();
  v3 = [v2 clearColor];
  v4 = [v2 labelColor];
  if (qword_100113EB8 != -1)
  {
    swift_once();
  }

  v5 = [v4 resolvedColorWithTraitCollection:qword_100116BF8];

  *v1 = v3;
  v1[1] = v5;
  v1[2] = &_swiftEmptyDictionarySingleton;
  v6 = (v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_upColorConfig);
  v7 = [v2 clearColor];
  v8 = [v2 labelColor];
  v9 = [v8 resolvedColorWithTraitCollection:qword_100116BF8];

  *v6 = v7;
  v6[1] = v9;
  v6[2] = &_swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtC7Climate14ClimateStepper_colorConfig;
  if (qword_100113EC8 != -1)
  {
    swift_once();
  }

  v11 = (v0 + v10);
  v12 = qword_10011B070;
  v13 = [v2 labelColor];
  v14 = [v13 resolvedColorWithTraitCollection:qword_100116BF8];

  *v11 = v12;
  v11[1] = v14;
  v11[2] = &_swiftEmptyDictionarySingleton;
  v15 = (v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_accessibilityIdentifierModifier);
  *v15 = 0;
  v15[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsWidth) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonWidth) = 0x404F000000000000;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_arrowsHeight) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC7Climate14ClimateStepper_primaryButtonHeight) = 0x4040000000000000;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000962D8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1000963BC()
{
  result = qword_100115EE0;
  if (!qword_100115EE0)
  {
    sub_1000082C4(&qword_100115EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115EE0);
  }

  return result;
}

uint64_t ClimateLogPrefix(file:function:line:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = 0;
  v32 = 0xE000000000000000;
  v27[0] = 47;
  v27[1] = 0xE100000000000000;
  v26[2] = v27;

  if (*(sub_10009748C(0x7FFFFFFFFFFFFFFFLL, 1, sub_100067ED4, v26, a1, a2, v11) + 2))
  {
  }

  else
  {

    Substring.init(_:)();
  }

  v12 = static String._fromSubstring(_:)();
  v14 = v13;

  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 58;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v27[0] = a6;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v19);

  v20 = 0xE000000000000000;
  if (!*(a7 + 24))
  {
    v23 = 0;
    goto LABEL_8;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);
  result = sub_10009784C(a7, v27);
  if (v28)
  {
    sub_10000D960(v27, v28);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    sub_100006B9C(v27);
    v23 = v29;
    v20 = v30;
LABEL_8:
    v24 = v20;
    String.append(_:)(*&v23);

    v25._countAndFlagsBits = 58;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_100096674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000040E8(&qword_100115108);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v11._countAndFlagsBits = 0x3A6574616D696C63;
  v11._object = 0xEB000000003F2F2FLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 1701736314;
  v12._object = 0xE400000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 61;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  _print_unlocked<A, B>(_:_:)();
  URL.init(string:)();

  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_100008904(v10, &qword_100115108);
    v16 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v17 = qword_10011B1C0;
    (*(v5 + 16))(v7, a1, v4);
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = a2;
      v30[0] = v19;
      v20 = v19;
      *v18 = 136315138;
      v21 = CAUVehicleLayoutKey.rawValue.getter();
      v22 = v5;
      v24 = v23;
      (*(v22 + 8))(v7, v4);
      v25 = sub_10000835C(v21, v24, v30);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v16, "Unable to generate URL for %s.", v18, 0xCu);
      sub_100006B9C(v20);
      a2 = v29;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v26 = 1;
  }

  else
  {
    (*(v15 + 32))(a2, v10, v14);
    v26 = 0;
  }

  return (*(v15 + 56))(a2, v26, 1, v14);
}

uint64_t sub_100096A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100067E40();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

uint64_t sub_100096B2C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = type metadata accessor for URL();
  v70 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v61 - v6;
  v7 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v7 - 8);
  v66 = &v61 - v8;
  v9 = type metadata accessor for URLQueryItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v67 = &v61 - v14;
  v15 = sub_1000040E8(&qword_100117600);
  __chkstk_darwin(v15 - 8);
  v17 = &v61 - v16;
  v18 = type metadata accessor for URLComponents();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v1;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v17, v18);
    v65 = v21;
    v31 = URLComponents.queryItems.getter();
    v32 = v71;
    if (v31)
    {
      v33 = v31;
      v62 = v2;
      v63 = v19;
      v64 = v18;
      v34 = *(v31 + 16);
      if (v34)
      {
        v2 = 0;
        v4 = (v10 + 16);
        v35 = (v10 + 8);
        while (1)
        {
          if (v2 >= *(v33 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          (*(v10 + 16))(v12, v33 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v2, v9);
          if (URLQueryItem.name.getter() == 1701736314 && v36 == 0xE400000000000000)
          {
            break;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_24;
          }

          ++v2;
          (*v35)(v12, v9);
          if (v34 == v2)
          {
            goto LABEL_13;
          }
        }

LABEL_24:

        v54 = v67;
        (*(v10 + 32))(v67, v12, v9);
        URLQueryItem.value.getter();
        v32 = v71;
        v55 = v63;
        v56 = v65;
        v57 = v66;
        if (v58)
        {
          CAUVehicleLayoutKey.init(rawValue:)();
          v59 = type metadata accessor for CAUVehicleLayoutKey();
          v60 = *(v59 - 8);
          if ((*(v60 + 48))(v57, 1, v59) != 1)
          {
            (*v35)(v54, v9);
            (*(v55 + 8))(v56, v64);
            (*(v60 + 32))(v32, v57, v59);
            return (*(v60 + 56))(v32, 0, 1, v59);
          }

          sub_100008904(v57, &qword_100115840);
        }

        static os_log_type_t.debug.getter();
        if (qword_100113F00 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        (*v35)(v54, v9);
        (*(v55 + 8))(v56, v64);
        goto LABEL_22;
      }

LABEL_13:

      v32 = v71;
      v19 = v63;
      v18 = v64;
      v2 = v62;
    }

    v38 = static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    v39 = qword_10011B1C0;
    v40 = v70;
    v41 = v68;
    (*(v70 + 16))(v68, v69, v2);
    if (os_log_type_enabled(v39, v38))
    {
      v42 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v42 = 136315394;
      sub_100097958();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v71) = v38;
      v44 = v32;
      v45 = v43;
      v46 = v40;
      v48 = v47;
      (*(v46 + 8))(v41, v2);
      v49 = v45;
      v32 = v44;
      v50 = sub_10000835C(v49, v48, &v72);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_10000835C(1701736314, 0xE400000000000000, &v72);
      _os_log_impl(&_mh_execute_header, v39, v71, "URL %s doesn't seem to have a %s query parameter.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v40 + 8))(v41, v2);
    }

    (*(v19 + 8))(v65, v18);
LABEL_22:
    v53 = type metadata accessor for CAUVehicleLayoutKey();
    return (*(*(v53 - 8) + 56))(v32, 1, 1, v53);
  }

  sub_100008904(v17, &qword_100117600);
  LOBYTE(v12) = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
LABEL_32:
    swift_once();
  }

  v22 = qword_10011B1C0;
  v23 = v70;
  (*(v70 + 16))(v4, v69, v2);
  if (os_log_type_enabled(v22, v12))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v72 = v25;
    *v24 = 136315138;
    sub_100097958();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v2;
    v29 = v28;
    (*(v23 + 8))(v4, v27);
    v30 = sub_10000835C(v26, v29, &v72);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v12, "Couldn't parse URL components out of %s", v24, 0xCu);
    sub_100006B9C(v25);
  }

  else
  {
    (*(v23 + 8))(v4, v2);
  }

  v51 = type metadata accessor for CAUVehicleLayoutKey();
  return (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
}

void *sub_10009748C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000C4F10(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000C4F10((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000C4F10(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000C4F10(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000C4F10((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009784C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040E8(&qword_100115408);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000978BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000978F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100097918(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_100097958()
{
  result = qword_100117608;
  if (!qword_100117608)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100117608);
  }

  return result;
}

uint64_t sub_1000979E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v2 = [v1 maxACOn];
  v3 = [v1 maxACOnRestricted];
  v4 = [v1 maxACOnInvalid];
  v5 = [v1 maxACOnDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_100097ABC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setMaxACOn:{objc_msgSend(a3, "maxACOn") ^ 1}];
    sub_1000C10C4();
    [v5 setEnabled:sub_1000979E0() < 8];
    sub_100097B60();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_100097B60()
{
  v1 = v0;
  if ((sub_1000979E0() & 0x1B) == 1)
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v2 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v3 = v0 + *v2;
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *v3;
  v7 = v4;

  sub_10007A4CC(v6, v7, v5);

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 delegate];

  if (v9)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v10 = sub_1000AF438();
    swift_unknownObjectRelease();
    v11 = *&v10[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v12 = *&v11[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v12 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v13 = qword_10011B0B8;
      v14 = qword_10011B0C0;
      v15 = qword_10011B0C8;
      v16 = [objc_opt_self() labelColor];
      if (!v16)
      {
        v16 = v14;
      }

      v19 = v13;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style) == 4)
      {
        if (qword_100113EF0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0E8;
      }

      else
      {
        if (qword_100113EE0 != -1)
        {
          swift_once();
        }

        v17 = &qword_10011B0B8;
      }

      v18 = v17[1];
      v15 = v17[2];
      v19 = *v17;
      v16 = v18;
    }

    sub_1000A70A8(v19, v16, v15);
  }

  else
  {
    __break(1u);
  }
}

id sub_100097E98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateMaxACButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateMaxACButton()
{
  result = qword_100117638;
  if (!qword_100117638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100097F6C(void *a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = sub_10003FC80(v3, a2);
  v5 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v6 = v4[v5];
  v4[v5] = 1;
  v7 = v4;
  if ((v6 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v8 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  *v8 = xmmword_1000D8BE0;
  if (v10 && (v9 == 0x432F412058414DLL ? (v11 = v10 == 0xE700000000000000) : (v11 = 0), v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v12 = v7;
  }

  else
  {
    v13 = v7;
    ClimateButton.updateClimateConfiguration()();
  }

  v14 = [v7 titleLabel];

  if (v14)
  {
    [v14 setNumberOfLines:2];
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v3;
  v17 = &v7[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v18 = *v17;
  *v17 = sub_100098448;
  v17[1] = v16;
  v19 = v3;

  sub_100003380(v18);

  if ((a2 | 2) == 3)
  {
    v20 = [v7 titleLabel];
    if (v20)
    {
      if (qword_100113F10 != -1)
      {
        v35 = v20;
        swift_once();
        v20 = v35;
      }

      v21 = v20;
      [v20 setFont:qword_10011B250];
    }

    if (qword_100113EE0 != -1)
    {
      swift_once();
    }

    v22 = qword_10011B0C0;
    v23 = qword_10011B0C8;
    v24 = qword_10011B0B8;
    v25 = v22;

    sub_1000A70A8(v24, v25, v23);

    if (qword_100113ED8 != -1)
    {
      swift_once();
    }

    v26 = qword_10011B0A8;
    v27 = qword_10011B0B0;
    v28 = qword_10011B0A0;
    v29 = v26;

    sub_1000A70B4(v28, v29, v27);
  }

  sub_1000C10C4();
  [v7 setEnabled:sub_1000979E0() < 8];
  sub_100097B60();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v30 = [objc_opt_self() sharedApplication];
  v31 = [v30 delegate];

  if (v31)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v32 = sub_1000AF438();
    swift_unknownObjectRelease();
    v33 = *&v32[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v34 = v7;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000983D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100098408()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100098450()
{
  v0 = sub_1000040E8(&qword_100115840);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  sub_1000985E0();
  CAFPositioned.layoutKey.getter();
  v3 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10001AEA0(v2);
    v5 = 1;
  }

  else
  {
    v6 = CAUVehicleLayoutKey.rawValue.getter();
    v8 = v7;
    (*(v4 + 8))(v2, v3);
    v11[2] = CAUVehicleLayoutKey.rawValue.getter();
    v11[3] = v9;
    v11[0] = v6;
    v11[1] = v8;
    sub_100034270();
    v5 = StringProtocol.contains<A>(_:)();
  }

  return v5 & 1;
}

unint64_t sub_1000985E0()
{
  result = qword_1001152C0;
  if (!qword_1001152C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001152C0);
  }

  return result;
}

char *sub_100098660(void *a1)
{
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for ClimateZonesSyncedServiceButton());
  sub_10001B8E0(a1, 1u);
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton) = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync) = a1;
  v5 = a1;
  v6 = sub_10001414C(0, 0, 1);
  [v5 registerObserver:v6];
  [v6 addSubview:*&v6[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton]];
  sub_1000987B4();
  v7 = [*&v6[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
  v6[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v7;
  sub_1000C10C4();
  [v6 setEnabled:(sub_10001B250() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();

  return v6;
}

void sub_1000987B4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5D90;
  v4 = *&v1[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton];
  v5 = [v4 leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v3 + 32) = v7;
  v8 = [v4 trailingAnchor];
  v9 = [v1 trailingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v3 + 40) = v10;
  v11 = [v4 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v3 + 48) = v13;
  v14 = [v4 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v3 + 56) = v16;
  sub_100004130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_100098A28()
{
  v1 = [*&v0[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
  v0[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn] = v1;
  sub_1000C10C4();
  [v0 setEnabled:(sub_10001B250() & 0x18) == 0];
  ClimateButton.refreshColorConfig()();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

void sub_100098AB8()
{
  sub_1000289EC(v0 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_delegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_syncButton);
}

id sub_100098B08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateSyncIndicator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateSyncIndicator()
{
  result = qword_100117678;
  if (!qword_100117678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100098CB4(void *a1)
{
  v3 = OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn;
  v4 = v1[OBJC_IVAR____TtC7Climate16ClimateIndicator_isIndicatorOn];
  if (v4 == [a1 on])
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = [a1 receivedAllValues];
  v6 = static os_log_type_t.debug.getter();
  if (v5)
  {
    if (qword_100113F00 != -1)
    {
      v12 = v6;
      swift_once();
      v6 = v12;
    }

    v7 = qword_10011B1C0;
    v8 = v6;
    if (os_log_type_enabled(qword_10011B1C0, v6))
    {
      v9 = a1;
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = [v9 on];

      _os_log_impl(&_mh_execute_header, v7, v8, "Sync indicator did update ON: %{BOOL,public}d", v10, 8u);
    }

    v1[v3] = [*&v1[OBJC_IVAR____TtC7Climate20ClimateSyncIndicator_sync] on];
    sub_1000C10C4();
    [v1 setEnabled:(sub_10001B250() & 0x18) == 0];
    ClimateButton.refreshColorConfig()();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_10006638C();

      return swift_unknownObjectRelease();
    }

    return result;
  }

  if (qword_100113F00 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_15:

  return os_log(_:dso:log:_:_:)();
}

double sub_100098F78()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for ClimateSeatHeatingCoolingServiceButton());
  v3 = sub_10006E5D8(v1, 2);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_1000040E8(&unk_1001179E0);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_1000D5970;
  *(v4 + 32) = v3;
  *(v4 + 40) = &off_1000F8858;
  return result;
}

void sub_100099000()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 == 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_18:
    v1 = sub_100056AB0(v1);
  }

  v4 = 0;
  v2 += 3;
  while (1)
  {
    v6 = v2 - 4;
    if (v4 == v2 - 4)
    {
      goto LABEL_8;
    }

    v7 = v1[2];
    if (v4 >= v7)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v6 >= v7)
    {
      goto LABEL_17;
    }

    v8 = &v1[v4];
    v9 = v8[4];
    v8[4] = v1[v2];
    v10 = v1[2];

    if (v6 >= v10)
    {
      break;
    }

    v1[v2] = v9;

LABEL_8:
    ++v4;
    v5 = v2 - 5;
    --v2;
    if (v4 >= v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v0 = v1;
}