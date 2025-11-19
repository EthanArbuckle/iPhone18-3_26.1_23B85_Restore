uint64_t sub_100032818(uint64_t *a1)
{
  v2 = type metadata accessor for DeviceSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v12 = v5;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v5 + 16);
  sub_10003466C(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceSelectionView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1000346D8(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);

  sub_100002BE4(&qword_10016AFE8, &qword_100110008);
  sub_100002BE4(&qword_10016AFF0, &qword_100110010);
  sub_100012C48(&qword_10016AFF8, &qword_10016AFE8, &qword_100110008);
  v8 = sub_10000459C(&qword_10016AFA0, &unk_10010FFB0);
  v9 = sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0);
  v12 = v8;
  v13 = v9;
  swift_getOpaqueTypeConformance2();
  sub_100035708(&qword_10016B000, &type metadata accessor for Device);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_100032AE8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a3;
  v5 = sub_100002BE4(&qword_10016B008, &qword_100110018);
  v6 = *(v5 - 8);
  v73 = v5 - 8;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v70 = &v63 - v8;
  v9 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v66 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v63 - v13;
  v14 = type metadata accessor for AutomationSemantics();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  __chkstk_darwin(v14);
  v77 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Device();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DeviceSelectionView(0);
  v78 = *(v21 - 8);
  v22 = *(v78 + 64);
  __chkstk_darwin(v21 - 8);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100002BE4(&qword_10016AFA0, &unk_10010FFB0);
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  __chkstk_darwin(v24);
  v27 = &v63 - v26;
  sub_10003466C(a2, v23, type metadata accessor for DeviceSelectionView);
  v68 = *(v18 + 16);
  v69 = v18 + 16;
  v28 = a1;
  v29 = a1;
  v30 = v17;
  v68(v20, v29, v17);
  v31 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v32 = (v22 + *(v18 + 80) + v31) & ~*(v18 + 80);
  v33 = swift_allocObject();
  sub_1000346D8(v23, v33 + v31);
  v34 = v18;
  v35 = *(v18 + 32);
  v65 = v20;
  v36 = v30;
  v64 = v35;
  v35((v33 + v32), v20, v30);
  v83 = v28;
  v84 = a2;
  v37 = v28;
  v38 = v70;
  type metadata accessor for DeviceSelectionCellView(0);
  sub_100035708(&qword_10016B018, type metadata accessor for DeviceSelectionCellView);
  v74 = v27;
  Button.init(action:label:)();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v67 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v39 = *(*(v67 - 8) + 72);
  v71 = (*(*(v67 - 8) + 80) + 32) & ~*(*(v67 - 8) + 80);
  v72 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10010FEE0;
  v41 = *a2;
  swift_getKeyPath();
  v85 = v41;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  v43 = v82;
  v44 = v37;
  v78 = v37;
  v45 = v36;
  v68(v82, v44, v36);
  v46 = v43;
  (*(v34 + 56))(v43, 0, 1, v45);
  v47 = *(v73 + 56);
  v48 = v41 + v42;
  v49 = v46;
  sub_10000C178(v48, v38, &qword_10016B010, &qword_100110020);
  sub_10000C178(v46, v38 + v47, &qword_10016B010, &qword_100110020);
  v50 = *(v34 + 48);
  if (v50(v38, 1, v45) != 1)
  {
    v52 = v66;
    sub_10000C178(v38, v66, &qword_10016B010, &qword_100110020);
    if (v50(v38 + v47, 1, v45) != 1)
    {
      v53 = v65;
      v64(v65, v38 + v47, v45);
      sub_100035708(&qword_10016B020, &type metadata accessor for Device);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      v54 = *(v34 + 8);
      v54(v53, v45);
      sub_100009908(v82, &qword_10016B010, &qword_100110020);
      v54(v52, v45);
      sub_100009908(v38, &qword_10016B010, &qword_100110020);
      goto LABEL_8;
    }

    sub_100009908(v82, &qword_10016B010, &qword_100110020);
    (*(v34 + 8))(v52, v45);
    goto LABEL_6;
  }

  sub_100009908(v49, &qword_10016B010, &qword_100110020);
  if (v50(v38 + v47, 1, v45) != 1)
  {
LABEL_6:
    sub_100009908(v38, &qword_10016B008, &qword_100110018);
    v51 = 0;
    goto LABEL_8;
  }

  sub_100009908(v38, &qword_10016B010, &qword_100110020);
  v51 = 1;
LABEL_8:
  v55 = v40 + v71;
  *(v40 + v71) = v51 & 1;
  swift_storeEnumTagMultiPayload();
  v56 = (v55 + v72);
  *v56 = Device.name.getter();
  v56[1] = v57;
  swift_storeEnumTagMultiPayload();
  v58 = v77;
  sub_1000FCC48(0xC0u, v40, v77);
  swift_setDeallocating();
  v59 = *(v40 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0);
  v60 = v76;
  v61 = v74;
  View.automationSemantics(_:)();
  (*(v79 + 8))(v58, v80);
  return (*(v75 + 8))(v61, v60);
}

uint64_t sub_1000333FC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissAction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = *a1;
  v14 = type metadata accessor for Device();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, a2, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_100085880(v12);
  v16 = a1 + *(type metadata accessor for DeviceSelectionView(0) + 20);
  sub_1000240E8(v8);
  DismissAction.callAsFunction()();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000335C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_100002BE4(&qword_10016B008, &qword_100110018);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v39 = &v37 - v8;
  v9 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Device();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v37 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = *(v16 + 16);
  v40 = &v37 - v21;
  v20();
  v22 = *a2;
  swift_getKeyPath();
  v42 = v22;
  sub_100035708(&qword_10016AFE0, type metadata accessor for DeviceProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
  swift_beginAccess();
  v24 = a1;
  v25 = v39;
  (v20)(v14, v24, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v26 = *(v6 + 56);
  sub_10000C178(v22 + v23, v25, &qword_10016B010, &qword_100110020);
  sub_10000C178(v14, v25 + v26, &qword_10016B010, &qword_100110020);
  v27 = *(v16 + 48);
  if (v27(v25, 1, v15) != 1)
  {
    v29 = v38;
    sub_10000C178(v25, v38, &qword_10016B010, &qword_100110020);
    if (v27(v25 + v26, 1, v15) != 1)
    {
      v30 = v25 + v26;
      v31 = v37;
      (*(v16 + 32))(v37, v30, v15);
      sub_100035708(&qword_10016B020, &type metadata accessor for Device);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v32 = *(v16 + 8);
      v32(v31, v15);
      sub_100009908(v14, &qword_10016B010, &qword_100110020);
      v32(v29, v15);
      sub_100009908(v25, &qword_10016B010, &qword_100110020);
      goto LABEL_8;
    }

    sub_100009908(v14, &qword_10016B010, &qword_100110020);
    (*(v16 + 8))(v29, v15);
    goto LABEL_6;
  }

  sub_100009908(v14, &qword_10016B010, &qword_100110020);
  if (v27(v25 + v26, 1, v15) != 1)
  {
LABEL_6:
    sub_100009908(v25, &qword_10016B008, &qword_100110018);
    v28 = 0;
    goto LABEL_8;
  }

  sub_100009908(v25, &qword_10016B010, &qword_100110020);
  v28 = 1;
LABEL_8:
  KeyPath = swift_getKeyPath();
  v34 = type metadata accessor for DeviceSelectionCellView(0);
  v35 = v41;
  *(v41 + *(v34 + 24)) = KeyPath;
  sub_100002BE4(&qword_10016B028, &qword_100110080);
  swift_storeEnumTagMultiPayload();
  result = (*(v16 + 32))(v35, v40, v15);
  *(v35 + *(v34 + 20)) = v28 & 1;
  return result;
}

uint64_t sub_100033AF8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100002BE4(&qword_10016AFC8, &qword_10010FFD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v13 = a1;
  sub_100002BE4(&qword_10016AFD8, &qword_10010FFD8);
  v9 = sub_10000459C(&qword_10016A028, &qword_10010EC70);
  v10 = sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70);
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100033D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  v33 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AutomationSemantics();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DeviceSelectionView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v15 = type metadata accessor for ButtonRole();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v30 = sub_100002BE4(&qword_10016A028, &qword_10010EC70);
  v17 = *(v30 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v30);
  v20 = &v29 - v19;
  static ButtonRole.confirm.getter();
  sub_10003466C(a1, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DeviceSelectionView);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = swift_allocObject();
  sub_1000346D8(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  Button<>.init(role:action:)();
  *v7 = 771;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v23 = *(v32 + 72);
  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10010D3B0;
  sub_10003466C(v7, v25 + v24, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_1000FCC48(0xC1u, v25, v11);
  swift_setDeallocating();
  v26 = *(v25 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000129F4(v7);
  sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70);
  v27 = v30;
  View.automationSemantics(_:)();
  (*(v34 + 8))(v11, v35);
  return (*(v17 + 8))(v20, v27);
}

uint64_t sub_100034150(uint64_t a1)
{
  v20 = type metadata accessor for EnvironmentValues();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016A568, &unk_10010F530);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v19 - v8);
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DeviceSelectionView(0);
  sub_10000C178(a1 + *(v15 + 20), v9, &qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  DismissAction.callAsFunction()();
  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1000343E4()
{
  result = qword_10016AF98;
  if (!qword_10016AF98)
  {
    sub_10000459C(&qword_10016AF90, &qword_10010FFA8);
    sub_10000459C(&qword_10016AFA0, &unk_10010FFB0);
    sub_100012C48(&qword_10016AFA8, &qword_10016AFA0, &unk_10010FFB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AF98);
  }

  return result;
}

unint64_t sub_1000344D8()
{
  result = qword_10016AFB8;
  if (!qword_10016AFB8)
  {
    sub_10000459C(&qword_10016AF70, &qword_10010FF88);
    sub_10000459C(&qword_10016AF68, &qword_10010FF80);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016AF60, &qword_10010FF78);
    sub_100012C48(&qword_10016AFB0, &qword_10016AF60, &qword_10010FF78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFB8);
  }

  return result;
}

uint64_t sub_10003466C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000346D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003473C()
{
  v1 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100034150(v2);
}

void sub_10003479C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D950;
  v2._countAndFlagsBits = 0xD000000000000010;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_10016AEB0 = v4;
}

uint64_t sub_100034854()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui && (v1 = [objc_opt_self() standardUserDefaults], static UserDefaultUtilities.SharedConstants.myDeviceNameOverride.getter(), v2 = String._bridgeToObjectiveC()(), , v3 = objc_msgSend(v1, "stringForKey:", v2), v1, v2, v3))
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {
    result = Device.name.getter();
    if (!v6)
    {
      if (qword_100168F10 != -1)
      {
        swift_once();
      }

      v7 = xmmword_10016AEB0;

      return v7;
    }
  }

  return result;
}

uint64_t sub_100034980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a1;
  v3 = sub_100002BE4(&qword_10016B0E0, &unk_100110100);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v66 - v8;
  v83 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v10 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v12 = &v66 - v11;
  v76 = sub_100002BE4(&qword_10016B0E8, &qword_100110110);
  v13 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v15 = &v66 - v14;
  v77 = sub_100002BE4(&qword_10016B0F0, &qword_100110118);
  v16 = *(*(v77 - 8) + 64);
  v17 = __chkstk_darwin(v77);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v75 = &v66 - v21;
  __chkstk_darwin(v20);
  v84 = &v66 - v22;
  v23 = Image.init(systemName:)();
  v24 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v73 = v24;
  v74 = v23;
  *&v98 = v23;
  v72 = KeyPath;
  *(&v98 + 1) = KeyPath;
  *&v99 = v24;
  v26 = enum case for DynamicTypeSize.accessibility2(_:);
  v27 = type metadata accessor for DynamicTypeSize();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v81 = v26;
  v79 = v28 + 104;
  v80 = v29;
  v29(v12, v26, v27);
  v78 = sub_100035708(&qword_100169A78, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v67 = v19;
    v68 = v3;
    v69 = v9;
    v70 = v7;
    v71 = a2;
    sub_100002BE4(&qword_10016B0F8, &unk_100110150);
    sub_10003605C();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v12, &qword_100169A10, &qword_10010D450);

    v31 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v32 = &v15[*(v76 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    if (*(v82 + *(type metadata accessor for DeviceSelectionCellView(0) + 20)))
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.00001;
    }

    v38 = v75;
    sub_10001D504(v15, v75, &qword_10016B0E8, &qword_100110110);
    *(v38 + *(v77 + 36)) = v37;
    sub_10001D504(v38, v84, &qword_10016B0F0, &qword_100110118);
    v39 = static HorizontalAlignment.leading.getter();
    v89 = 0;
    sub_100035150(&v98);
    v94 = v102;
    v95 = v103;
    v90 = v98;
    v91 = v99;
    v92 = v100;
    v93 = v101;
    v96 = v104;
    v97[0] = v98;
    v97[1] = v99;
    v97[2] = v100;
    v97[3] = v101;
    v97[4] = v102;
    v97[5] = v103;
    v97[6] = v104;
    sub_10000C178(&v90, &v85, &qword_10016B118, &qword_100110160);
    sub_100009908(v97, &qword_10016B118, &qword_100110160);
    *&v88[55] = v93;
    *&v88[71] = v94;
    *&v88[87] = v95;
    *&v88[103] = v96;
    *&v88[7] = v90;
    *&v88[23] = v91;
    *&v88[39] = v92;
    v40 = v89;
    v41 = static Color.white.getter();
    v42 = swift_getKeyPath();
    *(&v86[4] + 1) = *&v88[64];
    *(&v86[5] + 1) = *&v88[80];
    *(&v86[6] + 1) = *&v88[96];
    *(v86 + 1) = *v88;
    *(&v86[1] + 1) = *&v88[16];
    *(&v86[2] + 1) = *&v88[32];
    *&v85 = v39;
    *(&v85 + 1) = 0x4010000000000000;
    LOBYTE(v86[0]) = v40;
    *(&v86[3] + 1) = *&v88[48];
    *&v86[7] = *&v88[111];
    *(&v86[7] + 1) = v42;
    v87 = v41;
    v80(v12, v81, v27);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_100002BE4(&qword_10016B120, &qword_100110198);
      sub_10003611C();
      v43 = v69;
      View.dynamicTypeSize<A>(_:)();
      sub_100009908(v12, &qword_100169A10, &qword_10010D450);
      v104 = v86[5];
      v105 = v86[6];
      v106 = v86[7];
      v107 = v87;
      v100 = v86[1];
      v101 = v86[2];
      v102 = v86[3];
      v103 = v86[4];
      v98 = v85;
      v99 = v86[0];
      sub_100009908(&v98, &qword_10016B120, &qword_100110198);
      v44 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = v43 + *(sub_100002BE4(&qword_10016B140, &qword_1001101B0) + 36);
      *v53 = v44;
      *(v53 + 8) = v46;
      *(v53 + 16) = v48;
      *(v53 + 24) = v50;
      *(v53 + 32) = v52;
      *(v53 + 40) = 0;
      v54 = static Edge.Set.vertical.getter();
      EdgeInsets.init(_all:)();
      v55 = v67;
      v56 = v43 + *(v68 + 36);
      *v56 = v54;
      *(v56 + 8) = v57;
      *(v56 + 16) = v58;
      *(v56 + 24) = v59;
      *(v56 + 32) = v60;
      *(v56 + 40) = 0;
      v61 = v84;
      sub_10000C178(v84, v55, &qword_10016B0F0, &qword_100110118);
      v62 = v70;
      sub_10000C178(v43, v70, &qword_10016B0E0, &unk_100110100);
      v63 = v71;
      sub_10000C178(v55, v71, &qword_10016B0F0, &qword_100110118);
      v64 = sub_100002BE4(&qword_10016B148, &qword_1001101B8);
      sub_10000C178(v62, v63 + *(v64 + 48), &qword_10016B0E0, &unk_100110100);
      v65 = v63 + *(v64 + 64);
      *v65 = 0;
      *(v65 + 8) = 1;
      sub_100009908(v43, &qword_10016B0E0, &unk_100110100);
      sub_100009908(v61, &qword_10016B0F0, &qword_100110118);
      sub_100009908(v62, &qword_10016B0E0, &unk_100110100);
      return sub_100009908(v55, &qword_10016B0F0, &qword_100110118);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100035150@<X0>(uint64_t a1@<X8>)
{
  v43 = static VerticalAlignment.center.getter();
  sub_100034854();
  sub_100012928();
  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4;
  static Font.headline.getter();
  v6 = Text.font(_:)();
  v8 = v7;
  v10 = v9;

  sub_10001297C(v1, v3, v5 & 1);

  static Font.Weight.medium.getter();
  v41 = Text.fontWeight(_:)();
  v42 = v11;
  v13 = v12;
  v40 = v14;
  sub_10001297C(v6, v8, v10 & 1);

  v39 = static VerticalAlignment.center.getter();
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (!has_internal_ui)
  {
    goto LABEL_5;
  }

  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  v16 = os_variant_has_internal_ui();

  if (!v16)
  {
    goto LABEL_5;
  }

  v17 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.myDeviceOSVersionOverride.getter();
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 stringForKey:v18];

  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
LABEL_5:
    v20._countAndFlagsBits = Device.osVersion.getter();
    String.append(_:)(v20);
  }

  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static HierarchicalShapeStyle.secondary.getter();
  v26 = Text.foregroundStyle<A>(_:)();
  v28 = v27;
  v30 = v29;
  sub_10001297C(v21, v23, v25 & 1);

  static Font.body.getter();
  v31 = Text.font(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;

  sub_10001297C(v26, v28, v30 & 1);

  *a1 = v43;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v41;
  *(a1 + 32) = v13;
  *(a1 + 40) = v40 & 1;
  *(a1 + 48) = v42;
  *(a1 + 56) = v39;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v31;
  *(a1 + 88) = v33;
  *(a1 + 96) = v35 & 1;
  *(a1 + 104) = v37;
  sub_100003AE4(v41, v13, v40 & 1);

  sub_100003AE4(v31, v33, v35 & 1);

  sub_10001297C(v31, v33, v35 & 1);

  sub_10001297C(v41, v13, v40 & 1);
}

uint64_t sub_100035514@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100002BE4(&qword_10016B0D8, &qword_1001100F8);
  return sub_100034980(v1, a1 + *(v3 + 44));
}

uint64_t sub_10003556C()
{
  v1 = (type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[7];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100032AE8(a1, v6, a2);
}

uint64_t sub_100035708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100035750()
{
  v1 = (type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = *(v0 + v3);

  v11 = v1[7];
  sub_100002BE4(&qword_10016A568, &unk_10010F530);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for DismissAction();
    (*(*(v12 - 8) + 8))(v9 + v11, v12);
  }

  else
  {
    v13 = *(v9 + v11);
  }

  v14 = v2 | v7;
  v15 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v15, v5);

  return _swift_deallocObject(v0, v15 + v8, v14 | 7);
}

uint64_t sub_1000358F8()
{
  v1 = *(type metadata accessor for DeviceSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Device() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000333FC((v0 + v2), v5);
}

uint64_t sub_100035A18(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_100035AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_100002BE4(&qword_10016B030, &qword_100110088);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100035C48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Device();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_100002BE4(&qword_10016B030, &qword_100110088);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_100035D74()
{
  type metadata accessor for Device();
  if (v0 <= 0x3F)
  {
    sub_100035E1C(319, &unk_10016B0A0, &type metadata accessor for DynamicTypeSize);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100035E1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100035E70()
{
  sub_10000459C(&qword_10016AF88, &qword_10010FFA0);
  sub_10000459C(&qword_10016AFC0, &qword_10010FFC8);
  sub_10000459C(&qword_10016AF80, &qword_10010FF98);
  sub_10000459C(&qword_10016AF78, &qword_10010FF90);
  sub_10000459C(&qword_10016AF70, &qword_10010FF88);
  sub_1000344D8();
  sub_100012928();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000459C(&qword_10016AFC8, &qword_10010FFD0);
  sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10003605C()
{
  result = qword_10016B100;
  if (!qword_10016B100)
  {
    sub_10000459C(&qword_10016B0F8, &unk_100110150);
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B100);
  }

  return result;
}

unint64_t sub_10003611C()
{
  result = qword_10016B128;
  if (!qword_10016B128)
  {
    sub_10000459C(&qword_10016B120, &qword_100110198);
    sub_100012C48(&qword_10016B130, &qword_10016B138, &unk_1001101A0);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B128);
  }

  return result;
}

__n128 sub_100036284@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016B160, &qword_1001102B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  if (qword_100168F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AspectRatio();
  sub_100006B0C(v8, qword_100182198);
  AspectRatio.horizontalFraction.getter();
  v10 = v9;
  v11 = sub_100002BE4(&qword_10016B168, &qword_1001102B8);
  (*(*(v11 - 8) + 16))(v7, a1, v11);
  v12 = &v7[*(v4 + 36)];
  *v12 = v10;
  *(v12 + 4) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000365A4(v7, a2);
  v13 = a2 + *(sub_100002BE4(&qword_10016B170, &qword_1001102C0) + 36);
  v14 = v17[5];
  *(v13 + 64) = v17[4];
  *(v13 + 80) = v14;
  *(v13 + 96) = v17[6];
  v15 = v17[1];
  *v13 = v17[0];
  *(v13 + 16) = v15;
  result = v17[3];
  *(v13 + 32) = v17[2];
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_100036464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100002BE4(&qword_10016B178, &qword_1001102C8) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&v4->i8[v5], v6, v7);
  *v4 = vdupq_n_s64(0x4040000000000000uLL);
  *(v4->i16 + *(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)) = 256;
  v8 = sub_100002BE4(&qword_10016B188, &qword_1001102D8);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, a1, v8);
}

uint64_t sub_1000365A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B160, &qword_1001102B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100036618()
{
  result = qword_10016B190;
  if (!qword_10016B190)
  {
    sub_10000459C(&qword_10016B170, &qword_1001102C0);
    sub_1000366A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B190);
  }

  return result;
}

unint64_t sub_1000366A4()
{
  result = qword_10016B198;
  if (!qword_10016B198)
  {
    sub_10000459C(&qword_10016B160, &qword_1001102B0);
    sub_100012C48(&qword_10016B1A0, &qword_10016B168, &qword_1001102B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B198);
  }

  return result;
}

unint64_t sub_100036760()
{
  result = qword_10016B1A8;
  if (!qword_10016B1A8)
  {
    sub_10000459C(&qword_10016B178, &qword_1001102C8);
    sub_100012C48(&qword_10016B1B0, &qword_10016B188, &qword_1001102D8);
    sub_100012C48(&qword_10016B1B8, &qword_10016B180, &qword_1001102D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1A8);
  }

  return result;
}

uint64_t sub_100036844()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = v0;
    v4 = [v2 windows];
    sub_1000369C4();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v8 isKeyWindow])
        {

          v11 = [v9 rootViewController];

          return v11;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

unint64_t sub_1000369C4()
{
  result = qword_10016B1C0;
  if (!qword_10016B1C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B1C0);
  }

  return result;
}

uint64_t sub_100036A3C()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  qword_10016B1C8 = v0;
  return result;
}

uint64_t sub_100036A80@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v122 = a1;
  v115 = a2;
  v2 = sub_100002BE4(&qword_100169A80, &qword_10010D480);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v114 = v113 - v4;
  v5 = [objc_opt_self() mainBundle];
  v196._object = 0xE000000000000000;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._object = 0x800000010011D970;
  v7._countAndFlagsBits = 0xD000000000000015;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v196._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v196);

  v173 = v9;
  v121 = sub_100012928();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.title.getter();
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_10001297C(v10, v12, v14 & 1);

  static Font.Weight.medium.getter();
  v20 = Text.fontWeight(_:)();
  v22 = v21;
  LOBYTE(v12) = v23;
  sub_10001297C(v15, v17, v19 & 1);

  static Color.white.getter();
  v24 = Text.foregroundColor(_:)();
  v26 = v25;
  v28 = v27;

  sub_10001297C(v20, v22, v12 & 1);

  if (qword_100168F18 != -1)
  {
    swift_once();
  }

  v123 = qword_10016B1C8;
  v29 = Text.shadow(color:radius:x:y:)();
  v126 = v30;
  v127 = v29;
  v32 = v31;
  v128 = v33;
  sub_10001297C(v24, v26, v28 & 1);

  v125 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v124 = v32 & 1;
  LOBYTE(v173._countAndFlagsBits) = v32 & 1;
  LOBYTE(v168) = 0;
  swift_getKeyPath();
  v113[2] = OBJC_IVAR____TtC17AppleVisionProApp12PINViewModel___observationRegistrar;
  v42 = v122;
  v173._countAndFlagsBits = v122;
  v113[1] = sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = *(v42 + 40);
  v173._countAndFlagsBits = *(v42 + 32);
  v173._object = v43;

  v44 = Text.init<A>(_:)();
  v46 = v45;
  LOBYTE(v42) = v47;
  static Font.footnote.getter();
  v48 = Text.font(_:)();
  v50 = v49;
  v52 = v51;

  sub_10001297C(v44, v46, v42 & 1);

  static Font.Weight.medium.getter();
  v53 = Text.fontWeight(_:)();
  v55 = v54;
  LOBYTE(v42) = v56;
  sub_10001297C(v48, v50, v52 & 1);

  static Color.white.getter();
  v57 = Text.foregroundColor(_:)();
  v59 = v58;
  LOBYTE(v50) = v60;

  sub_10001297C(v53, v55, v42 & 1);

  v61 = Text.shadow(color:radius:x:y:)();
  v118 = v62;
  v119 = v61;
  LOBYTE(v53) = v63;
  v120 = v64;
  sub_10001297C(v57, v59, v50 & 1);

  v117 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v116 = v53 & 1;
  LOBYTE(v173._countAndFlagsBits) = v53 & 1;
  LOBYTE(v168) = 0;
  swift_getKeyPath();
  v173._countAndFlagsBits = v122;
  v73 = v122;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v74 = *(v73 + 24);
  v173._countAndFlagsBits = *(v73 + 16);
  v173._object = v74;

  v75 = Text.init<A>(_:)();
  v77 = v76;
  LOBYTE(v50) = v78;
  v79 = type metadata accessor for Font.Design();
  v80 = v114;
  (*(*(v79 - 8) + 56))(v114, 1, 1, v79);
  static Font.system(size:weight:design:)();
  sub_100009908(v80, &qword_100169A80, &qword_10010D480);
  v81 = Text.font(_:)();
  v83 = v82;
  LOBYTE(v59) = v84;

  sub_10001297C(v75, v77, v50 & 1);

  static Font.Weight.medium.getter();
  v85 = Text.fontWeight(_:)();
  v87 = v86;
  LOBYTE(v53) = v88;
  sub_10001297C(v81, v83, v59 & 1);

  v89 = Text.tracking(_:)();
  v91 = v90;
  LOBYTE(v83) = v92;
  v94 = v93;
  sub_10001297C(v85, v87, v53 & 1);

  KeyPath = swift_getKeyPath();
  v96 = static Color.white.getter();
  v97 = swift_getKeyPath();
  *&v160 = v127;
  *(&v160 + 1) = v126;
  LOBYTE(v161) = v124;
  *(&v161 + 1) = *v159;
  DWORD1(v161) = *&v159[3];
  *(&v161 + 1) = v128;
  LOBYTE(v162) = v125;
  *(&v162 + 1) = *v158;
  DWORD1(v162) = *&v158[3];
  *(&v162 + 1) = v35;
  *&v163[0] = v37;
  *(&v163[0] + 1) = v39;
  *&v163[1] = v41;
  BYTE8(v163[1]) = 0;
  *(v143 + 9) = *(v163 + 9);
  v142 = v162;
  v143[0] = v163[0];
  v140 = v160;
  v141 = v161;
  *&v164 = v119;
  *(&v164 + 1) = v118;
  LOBYTE(v165) = v116;
  DWORD1(v165) = *(v157 + 3);
  *(&v165 + 1) = v157[0];
  *(&v165 + 1) = v120;
  LOBYTE(v166) = v117;
  DWORD1(v166) = *&v156[3];
  *(&v166 + 1) = *v156;
  *(&v166 + 1) = v66;
  *&v167[0] = v68;
  *(&v167[0] + 1) = v70;
  *&v167[1] = v72;
  BYTE8(v167[1]) = 0;
  *(v147 + 9) = *(v167 + 9);
  v146 = v166;
  v147[0] = v167[0];
  v144 = v164;
  v145 = v165;
  *&v168 = v89;
  *(&v168 + 1) = v91;
  LOBYTE(v169) = v83 & 1;
  DWORD1(v169) = *(v155 + 3);
  *(&v169 + 1) = v155[0];
  *(&v169 + 1) = v94;
  *&v170 = KeyPath;
  BYTE8(v170) = 1;
  HIDWORD(v170) = *&v154[3];
  *(&v170 + 9) = *v154;
  *&v171 = v97;
  *(&v171 + 1) = v96;
  *(v172 + 8) = xmmword_1001102F0;
  v98 = v123;
  *&v172[0] = v123;
  *(&v172[1] + 1) = 0x4010000000000000;
  v148 = v168;
  v149 = v169;
  v152 = v172[0];
  v153 = v172[1];
  v150 = v170;
  v151 = v171;
  v99 = v160;
  v100 = v161;
  v101 = v163[0];
  v102 = v115;
  v115[2] = v162;
  v102[3] = v101;
  *v102 = v99;
  v102[1] = v100;
  v103 = v143[1];
  v104 = v144;
  v105 = v146;
  v102[6] = v145;
  v102[7] = v105;
  v102[4] = v103;
  v102[5] = v104;
  v106 = v147[0];
  v107 = v147[1];
  v108 = v149;
  v102[10] = v148;
  v102[11] = v108;
  v102[8] = v106;
  v102[9] = v107;
  v109 = v150;
  v110 = v151;
  v111 = v153;
  v102[14] = v152;
  v102[15] = v111;
  v102[12] = v109;
  v102[13] = v110;
  v173._countAndFlagsBits = v89;
  v173._object = v91;
  v174 = v83 & 1;
  *v175 = v155[0];
  *&v175[3] = *(v155 + 3);
  v176 = v94;
  v177 = KeyPath;
  v178 = 1;
  *v179 = *v154;
  *&v179[3] = *&v154[3];
  v180 = v97;
  v181 = v96;
  v183 = xmmword_1001102F0;
  v182 = v98;
  v184 = 0x4010000000000000;

  sub_10000C178(&v160, v129, &qword_10016A0B8, &qword_10010ECF0);
  sub_10000C178(&v164, v129, &qword_10016A0B8, &qword_10010ECF0);
  sub_10000C178(&v168, v129, &qword_10016B1E0, &qword_100110448);
  sub_100009908(&v173, &qword_10016B1E0, &qword_100110448);
  v185[0] = v119;
  v185[1] = v118;
  v186 = v116;
  *v187 = v157[0];
  *&v187[3] = *(v157 + 3);
  v188 = v120;
  v189 = v117;
  *v190 = *v156;
  *&v190[3] = *&v156[3];
  v191 = v66;
  v192 = v68;
  v193 = v70;
  v194 = v72;
  v195 = 0;
  sub_100009908(v185, &qword_10016A0B8, &qword_10010ECF0);
  v129[0] = v127;
  v129[1] = v126;
  v130 = v124;
  *v131 = *v159;
  *&v131[3] = *&v159[3];
  v132 = v128;
  v133 = v125;
  *v134 = *v158;
  *&v134[3] = *&v158[3];
  v135 = v35;
  v136 = v37;
  v137 = v39;
  v138 = v41;
  v139 = 0;
  return sub_100009908(v129, &qword_10016A0B8, &qword_10010ECF0);
}

void *sub_100037460@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = static HorizontalAlignment.center.getter();
  v25 = 1;
  sub_100036A80(v3, &v8);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = v19;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v42[12] = v20;
  v42[13] = v21;
  v42[14] = v22;
  v42[15] = v23;
  v42[8] = v16;
  v42[9] = v17;
  v42[10] = v18;
  v42[11] = v19;
  v42[4] = v12;
  v42[5] = v13;
  v42[6] = v14;
  v42[7] = v15;
  v42[0] = v8;
  v42[1] = v9;
  v42[2] = v10;
  v42[3] = v11;
  sub_10000C178(&v26, &v7, &qword_10016B1D0, &unk_100110380);
  sub_100009908(v42, &qword_10016B1D0, &unk_100110380);
  *&__src[199] = v38;
  *&__src[215] = v39;
  *&__src[231] = v40;
  *&__src[247] = v41;
  *&__src[135] = v34;
  *&__src[151] = v35;
  *&__src[167] = v36;
  *&__src[183] = v37;
  *&__src[71] = v30;
  *&__src[87] = v31;
  *&__src[103] = v32;
  *&__src[119] = v33;
  *&__src[7] = v26;
  *&__src[23] = v27;
  *&__src[39] = v28;
  *&__src[55] = v29;
  v5 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), __src, 0x107uLL);
}

unint64_t sub_100037614()
{
  result = qword_10016B1D8;
  if (!qword_10016B1D8)
  {
    type metadata accessor for PINViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1D8);
  }

  return result;
}

uint64_t sub_10003767C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000376A8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000376D4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100037700(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100037730()
{
  result = qword_10016B1E8;
  if (!qword_10016B1E8)
  {
    sub_10000459C(&qword_10016B1F0, &unk_100110450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B1E8);
  }

  return result;
}

uint64_t type metadata accessor for OpenProductPageAction()
{
  result = qword_10016B260;
  if (!qword_10016B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100037838(void *a1)
{
  v3 = v1;
  v5 = sub_100002BE4(&qword_10016B350, &qword_1001105A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_100038C6C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  type metadata accessor for ActionMetrics();
  sub_1000390FC(&qword_10016B358, &type metadata accessor for ActionMetrics);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for OpenProductPageAction();
    v18 = *(v3 + v11[5]);
    v17 = 1;
    sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
    sub_100039144();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    *&v18 = v13;
    BYTE8(v18) = v12;
    v17 = 2;
    sub_100002BE4(&qword_10016B310, &qword_100110590);
    sub_100039244();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = *(v3 + v11[7]);
    v17 = 3;
    sub_100002BE4(&qword_10016B328, &qword_100110598);
    sub_100039344();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + v11[8]);
    LOBYTE(v18) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = *(v3 + v11[9]);
    v17 = 5;
    sub_100002BE4(&qword_10016B338, &qword_1001105A0);
    sub_1000393C0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100037B60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for ActionMetrics();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  __chkstk_darwin(v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100002BE4(&qword_10016B2E0, &unk_100110580);
  v24 = *(v26 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v26);
  v9 = &v23 - v8;
  v10 = type metadata accessor for OpenProductPageAction();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_100038C6C();
  v28 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v16 = v24;
  v15 = v25;
  LOBYTE(v29) = 0;
  sub_1000390FC(&qword_10016B2F0, &type metadata accessor for ActionMetrics);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13, v27, v4);
  sub_100002BE4(&qword_10016B2F8, &qword_1001141A0);
  v31 = 1;
  sub_100038CC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = &v13[v10[5]];
  v18 = v30;
  *v17 = v29;
  *(v17 + 1) = v18;
  v27 = v18;
  sub_100002BE4(&qword_10016B310, &qword_100110590);
  v31 = 2;
  sub_100038DC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = &v13[v10[6]];
  v20 = v30;
  *v19 = v29;
  v19[8] = v20;
  sub_100002BE4(&qword_10016B328, &qword_100110598);
  v31 = 3;
  sub_100038EC0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[v10[7]] = v29;
  LOBYTE(v29) = 4;
  v13[v10[8]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_100002BE4(&qword_10016B338, &qword_1001105A0);
  v31 = 5;
  sub_100038F3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v10[9];
  (*(v16 + 8))(v28, v26);
  v13[v21] = v29;
  sub_10003903C(v13, v23);
  sub_1000052E4(a1);
  return sub_1000390A0(v13);
}

uint64_t sub_100038044()
{
  v1 = *v0;
  v2 = 0x654D6E6F69746361;
  v3 = 0x6972656E65477369;
  v4 = 0x6C63697472417369;
  if (v1 != 4)
  {
    v4 = 0x656C62616E457369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x44496D616461;
  if (v1 != 1)
  {
    v5 = 0x6570795464726163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100038120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100038268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100038154(uint64_t a1)
{
  v2 = sub_100038C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038190(uint64_t a1)
{
  v2 = sub_100038C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000381CC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ActionMetrics();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100038268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6972656E65477369 && a2 == 0xED00006472614363 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C63697472417369 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064)
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

uint64_t sub_100038480(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.productPageAdamId.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 stringForKey:v9];

  if (!v10)
  {
LABEL_6:
    v15 = (a1 + *(type metadata accessor for OpenProductPageAction() + 20));
    if (v15[1])
    {
      v11 = *v15;
      v13 = v15[1];
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    goto LABEL_10;
  }

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_6;
  }

LABEL_10:
  v16 = type metadata accessor for OpenProductPageAction();
  v17 = a1 + *(v16 + 24);
  v18 = 3;
  if ((*(v17 + 8) & 1) == 0)
  {
    v19 = sub_10004F784([objc_allocWithZone(NSNumber) initWithInteger:*v17]);
    if (v19 == 5)
    {
      v18 = 3;
    }

    else
    {
      v18 = v19;
    }
  }

  if (qword_100168F20 != -1)
  {
    swift_once();
  }

  if (*(a1 + *(v16 + 28)))
  {
    v20 = 0;
  }

  else
  {
    v20 = 256;
  }

  sub_10003E3C0(v23, v11, v13, v20 & 0xFFFFFF00 | v18);
  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100038700(uint64_t a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OpenProductPageAction();
  v8 = *(a1 + *(v7 + 36));
  if (v8 == 2 || (v8 & 1) == 0)
  {
    return sub_100038480(a1, *(a1 + *(v7 + 32)) == 1);
  }

  if (qword_100168E28 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181FA0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100006B44(0xD000000000000023, 0x8000000100110440, &v16);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Skipping action, it is disabled.", v12, 0xCu);
    sub_1000052E4(v13);
  }

  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v3 + 104))(v6, enum case for ActionOutcome.unsupported(_:), v2);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100038964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100038A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActionMetrics();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_100038B00()
{
  type metadata accessor for ActionMetrics();
  if (v0 <= 0x3F)
  {
    sub_10001EC3C(319, &qword_10016B270, &qword_10016B278, &qword_100113A20);
    if (v1 <= 0x3F)
    {
      sub_10001EC3C(319, &qword_10016B280, &qword_10016B288, qword_100110520);
      if (v2 <= 0x3F)
      {
        sub_100038C1C();
        if (v3 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016B298, &unk_10016B2A0, "ʴ");
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100038C1C()
{
  if (!qword_10016B290)
  {
    v0 = type metadata accessor for DiscardOnError();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B290);
    }
  }
}

unint64_t sub_100038C6C()
{
  result = qword_10016B2E8;
  if (!qword_10016B2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B2E8);
  }

  return result;
}

unint64_t sub_100038CC0()
{
  result = qword_10016B300;
  if (!qword_10016B300)
  {
    sub_10000459C(&qword_10016B2F8, &qword_1001141A0);
    sub_100038D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B300);
  }

  return result;
}

unint64_t sub_100038D44()
{
  result = qword_10016B308;
  if (!qword_10016B308)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B308);
  }

  return result;
}

unint64_t sub_100038DC0()
{
  result = qword_10016B318;
  if (!qword_10016B318)
  {
    sub_10000459C(&qword_10016B310, &qword_100110590);
    sub_100038E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B318);
  }

  return result;
}

unint64_t sub_100038E44()
{
  result = qword_10016B320;
  if (!qword_10016B320)
  {
    sub_10000459C(&qword_10016B288, qword_100110520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B320);
  }

  return result;
}

unint64_t sub_100038EC0()
{
  result = qword_10016B330;
  if (!qword_10016B330)
  {
    sub_10000459C(&qword_10016B328, &qword_100110598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B330);
  }

  return result;
}

unint64_t sub_100038F3C()
{
  result = qword_10016B340;
  if (!qword_10016B340)
  {
    sub_10000459C(&qword_10016B338, &qword_1001105A0);
    sub_100038FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B340);
  }

  return result;
}

unint64_t sub_100038FC0()
{
  result = qword_10016B348;
  if (!qword_10016B348)
  {
    sub_10000459C(&unk_10016B2A0, "ʴ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B348);
  }

  return result;
}

uint64_t sub_10003903C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenProductPageAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000390A0(uint64_t a1)
{
  v2 = type metadata accessor for OpenProductPageAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000390FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100039144()
{
  result = qword_10016B360;
  if (!qword_10016B360)
  {
    sub_10000459C(&qword_10016B2F8, &qword_1001141A0);
    sub_1000391C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B360);
  }

  return result;
}

unint64_t sub_1000391C8()
{
  result = qword_10016B368;
  if (!qword_10016B368)
  {
    sub_10000459C(&qword_10016B278, &qword_100113A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B368);
  }

  return result;
}

unint64_t sub_100039244()
{
  result = qword_10016B370;
  if (!qword_10016B370)
  {
    sub_10000459C(&qword_10016B310, &qword_100110590);
    sub_1000392C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B370);
  }

  return result;
}

unint64_t sub_1000392C8()
{
  result = qword_10016B378;
  if (!qword_10016B378)
  {
    sub_10000459C(&qword_10016B288, qword_100110520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B378);
  }

  return result;
}

unint64_t sub_100039344()
{
  result = qword_10016B380;
  if (!qword_10016B380)
  {
    sub_10000459C(&qword_10016B328, &qword_100110598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B380);
  }

  return result;
}

unint64_t sub_1000393C0()
{
  result = qword_10016B388;
  if (!qword_10016B388)
  {
    sub_10000459C(&qword_10016B338, &qword_1001105A0);
    sub_100039444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B388);
  }

  return result;
}

unint64_t sub_100039444()
{
  result = qword_10016B390;
  if (!qword_10016B390)
  {
    sub_10000459C(&unk_10016B2A0, "ʴ");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B390);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenProductPageAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for OpenProductPageAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100039614()
{
  result = qword_10016B398;
  if (!qword_10016B398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B398);
  }

  return result;
}

unint64_t sub_10003966C()
{
  result = qword_10016B3A0;
  if (!qword_10016B3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B3A0);
  }

  return result;
}

unint64_t sub_1000396C4()
{
  result = qword_10016B3A8;
  if (!qword_10016B3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B3A8);
  }

  return result;
}

uint64_t sub_100039718(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = a1[25];
  v5 = a2[24];
  v6 = a2[25];
  v7 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (sub_10009AA54(v3, v5))
  {
    return v4 ^ v6 ^ 1u;
  }

  return 0;
}

char *sub_10003988C(char a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(&v8[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController;
  type metadata accessor for StoreProductViewController();
  *&v8[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_deviceProvider] = a5;
  v20 = &v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_dismissHandler];
  *v20 = a6;
  *(v20 + 1) = a7;
  v21 = &v8[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType];
  *v21 = a1 & 1;
  *(v21 + 1) = a2;
  *(v21 + 2) = a3;
  v21[24] = a4;
  v22 = (a4 >> 8) & 1;
  v21[25] = v22;
  v28.receiver = v8;
  v28.super_class = ObjectType;

  v23 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v24 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController;
  *(*&v23[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController] + OBJC_IVAR____TtC17AppleVisionProApp26StoreProductViewController_dismissDelegate + 8) = &off_10015BE20;
  swift_unknownObjectWeakAssign();
  v25 = *&v23[v24];
  v26 = v23;
  [v25 setShowsStoreButton:{v22, v28.receiver, v28.super_class}];

  return v26;
}

uint64_t sub_100039A58()
{
  swift_getObjectType();
  v1 = type metadata accessor for Device();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100002BE4(&qword_10016B010, &qword_100110020);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v46[-v8];
  v10 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.remoteDownloadIdentifierOverride.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 stringForKey:v11];

  if (!v12)
  {
LABEL_10:
    v50 = v2;
    v19 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_deviceProvider);
    swift_getKeyPath();
    v52 = v19;
    sub_10003C084();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(*(v19 + 16) + 16))
    {
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100006B0C(v20, qword_100181FD0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v48 = v23;
        v49 = swift_slowAlloc();
        v52 = v49;
        *v23 = 136315138;
        v24 = _typeName(_:qualified:)();
        v47 = v22;
        v26 = sub_100006B44(v24, v25, &v52);

        v27 = v48;
        *(v48 + 1) = v26;
        _os_log_impl(&_mh_execute_header, v21, v47, "%s No devices available, so may not have a selected device.", v27, 0xCu);
        sub_1000052E4(v49);
      }
    }

    swift_getKeyPath();
    v52 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = OBJC_IVAR____TtC17AppleVisionProApp14DeviceProvider__selectedDevice;
    swift_beginAccess();
    sub_10000C178(v19 + v28, v9, &qword_10016B010, &qword_100110020);
    v29 = v50;
    if ((*(v50 + 48))(v9, 1, v1))
    {
      sub_100009908(v9, &qword_10016B010, &qword_100110020);
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100006B0C(v30, qword_100181FD0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_28;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315138;
      v35 = _typeName(_:qualified:)();
      v37 = sub_100006B44(v35, v36, &v51);

      *(v33 + 4) = v37;
      v38 = "%s No selected device available, not sending remoteDownloadIdentifiers.";
    }

    else
    {
      (*(v29 + 16))(v5, v9, v1);
      sub_100009908(v9, &qword_10016B010, &qword_100110020);
      v39 = Device.serialNumber.getter();
      v41 = v40;
      (*(v29 + 8))(v5, v1);
      if (sub_100089F28(v39, v41))
      {
        return v39;
      }

      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_100006B0C(v42, qword_100181FD0);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_28;
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = v34;
      *v33 = 136315138;
      v43 = _typeName(_:qualified:)();
      v45 = sub_100006B44(v43, v44, &v51);

      *(v33 + 4) = v45;
      v38 = "%s vision device doesn't accept remote downloads, not sending remoteDownloadIdentifiers.";
    }

    _os_log_impl(&_mh_execute_header, v31, v32, v38, v33, 0xCu);
    sub_1000052E4(v34);

LABEL_28:

    return 0;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_10;
  }

  if (v13 == 7104878 && v15 == 0xE300000000000000 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = v13, (v17 & 1) != 0))
  {

    return 0;
  }

  return result;
}

uint64_t sub_10003A0FC(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v50 = &v47 - v7;
  v58.receiver = v2;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidAppear:", a1 & 1);
  v8 = &v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType];
  v10 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v9 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v12;
  *(inited + 48) = v10;
  v49 = v10;
  *(inited + 56) = v9;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v13;
  v14 = *v8;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v14;
  swift_bridgeObjectRetain_n();
  v15 = sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  v16 = sub_100039A58();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
    sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10010D3B0;
    *(v23 + 32) = v18;
    *(v23 + 40) = v19;
    v55 = sub_100002BE4(&qword_10016B430, &unk_1001107A0);
    *&aBlock = v23;
    sub_10000BF7C(&aBlock, v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v15;
    sub_10004E1DC(v52, v20, v22, isUniquelyReferenced_nonNull_native);
  }

  v25 = *&v2[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
  [v25 setModalPresentationStyle:1];
  if (qword_100168E38 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100006B0C(v26, qword_100181FD0);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v25;
    *&aBlock = v30;
    *v29 = 136315394;
    v31 = _typeName(_:qualified:)();
    v33 = sub_100006B44(v31, v32, &aBlock);
    v47 = ObjectType;
    v34 = v33;

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v49;
    *(v29 + 14) = sub_100006B44(v49, v9, &aBlock);
    _os_log_impl(&_mh_execute_header, v27, v28, "%s started loading product page for item %s", v29, 0x16u);
    swift_arrayDestroy();
    v25 = v48;

    v36 = v47;
  }

  else
  {

    v36 = ObjectType;
    v35 = v49;
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = v35;
  v39[4] = v9;
  v39[5] = v36;
  v56 = sub_10003BF94;
  v57 = v39;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_10003B3E8;
  v55 = &unk_10015BE80;
  v40 = _Block_copy(&aBlock);

  [v25 loadProductWithParameters:isa completionBlock:v40];
  _Block_release(v40);

  v41 = v50;
  Date.init()();
  v42 = type metadata accessor for Date();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  swift_beginAccess();
  sub_10003BFB8(v41, &v2[v43]);
  swift_endAccess();
  sub_10004F388(0);
  v55 = &_s20TetsuoAnalyticsEventON;
  v56 = sub_1000250D8();
  LOBYTE(aBlock) = 11;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(&aBlock);
  v44 = *(v8 + 1);
  v45 = *(v8 + 2);
  LOBYTE(v41) = v8[24];

  sub_10004B668(0.0, v44, v45, v41);
}

void sub_10003A71C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      swift_errorRetain();
      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006B0C(v11, qword_100181FD0);
      swift_errorRetain();

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v14 = 136315650;
        v16 = _typeName(_:qualified:)();
        v18 = sub_100006B44(v16, v17, &v36);

        *(v14 + 4) = v18;
        *(v14 + 12) = 2080;
        *(v14 + 14) = sub_100006B44(a4, a5, &v36);
        *(v14 + 22) = 2112;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 24) = v19;
        *v15 = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s failed to load product page for item %s with error: %@", v14, 0x20u);
        sub_100009908(v15, &unk_100169C20, &unk_10010D6B0);

        swift_arrayDestroy();
      }

      swift_errorRetain();
      sub_10003AC64(a2, 1);
    }

    else
    {
      if (a1)
      {
        if (qword_100168E38 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100006B0C(v20, qword_100181FD0);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *v23 = 136315394;
          v24 = _typeName(_:qualified:)();
          v26 = sub_100006B44(v24, v25, &v36);

          *(v23 + 4) = v26;
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_100006B44(a4, a5, &v36);
          _os_log_impl(&_mh_execute_header, v21, v22, "%s finished loading product page for item %s", v23, 0x16u);
          swift_arrayDestroy();
        }

        sub_10003B044();
        goto LABEL_20;
      }

      if (qword_100168E38 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100006B0C(v27, qword_100181FD0);

      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v30 = 136315394;
        v31 = _typeName(_:qualified:)();
        v33 = sub_100006B44(v31, v32, &v36);

        *(v30 + 4) = v33;
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_100006B44(a4, a5, &v36);
        _os_log_impl(&_mh_execute_header, v28, v29, "%s failed to load product page for item %s for an unknown reason", v30, 0x16u);
        swift_arrayDestroy();
      }

      sub_10003C028();
      v34 = swift_allocError();
      *v35 = 0;
      sub_10003AC64(v34, 1);
    }

LABEL_20:
  }
}

uint64_t sub_10003AC64(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getObjectType();
  v7 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8);
  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16);
  if ((a2 & 1) == 0)
  {
    v21 = qword_100168E38;

    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006B0C(v22, qword_100181FD0);

    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v23))
    {
      v32 = v7;
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = _typeName(_:qualified:)();
      v27 = sub_100006B44(v25, v26, &v33);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      v28 = sub_100006B44(v32, v6, &v33);

      *(v24 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v10, v23, "%s dismissing product page for item %s", v24, 0x16u);
      swift_arrayDestroy();

      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  v8 = qword_100168E38;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181FD0);

  sub_10003BD1C(a1, 1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  sub_10003BD28(a1, 1);
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_11;
  }

  v12 = swift_slowAlloc();
  v31 = v7;
  v13 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  *v12 = 136315650;
  v14 = _typeName(_:qualified:)();
  v16 = a1;
  v17 = a2;
  v18 = sub_100006B44(v14, v15, &v33);

  *(v12 + 4) = v18;
  *(v12 + 12) = 2080;
  v19 = sub_100006B44(v31, v6, &v33);

  *(v12 + 14) = v19;
  a2 = v17;
  a1 = v16;
  *(v12 + 22) = 2112;
  swift_errorRetain();
  v20 = _swift_stdlib_bridgeErrorToNSError();
  *(v12 + 24) = v20;
  *v13 = v20;
  _os_log_impl(&_mh_execute_header, v10, v11, "%s dismissing product page for item %s with error %@", v12, 0x20u);
  sub_100009908(v13, &unk_100169C20, &unk_10010D6B0);

  swift_arrayDestroy();

LABEL_10:

LABEL_12:

  sub_10003B728();
  v29 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_dismissHandler + 8);
  return (*(v3 + OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_dismissHandler))(a1, a2 & 1);
}

uint64_t sub_10003B044()
{
  v1 = v0;
  swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v2 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  v4 = qword_100168E38;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100006B0C(v5, qword_100181FD0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, &v23);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100006B44(v3, v2, &v23);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s presenting product page for item %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
  [v1 presentViewController:v12 animated:1 completion:0];
  if ([v12 isBeingPresented])
  {
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v16 = 136315394;
      v17 = _typeName(_:qualified:)();
      v19 = sub_100006B44(v17, v18, &v23);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      v20 = sub_100006B44(v3, v2, &v23);

      *(v16 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s failed to present product page for item %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10003C028();
    v21 = swift_allocError();
    *v22 = 1;
    sub_10003AC64(v21, 1);
  }
}

void sub_10003B3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10003B4B4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v25.receiver = v1;
  v25.super_class = ObjectType;
  objc_msgSendSuper2(&v25, "viewWillDisappear:", a1 & 1);
  sub_10003B728();
  v16 = OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_cardOpenedDate;
  swift_beginAccess();
  sub_10000C178(&v1[v16], v7, &qword_10016B420, &qword_100110790);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100009908(v7, &qword_10016B420, &qword_100110790);
  }

  (*(v9 + 32))(v15, v7, v8);
  v18 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
  v19 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
  v20 = v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 24];

  Date.init()();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  v23 = *(v9 + 8);
  v23(v13, v8);
  sub_10004B668(v22, v18, v19, v20);

  return (v23)(v15, v8);
}

void sub_10003B728()
{
  v1 = v0;
  swift_getObjectType();
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_productViewController];
    sub_10003BED0();
    v5 = v4;
    v6 = static NSObject.== infix(_:_:)();

    if ((v6 & 1) != 0 && ([v5 isBeingDismissed] & 1) == 0)
    {
      v8 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 8];
      v7 = *&v1[OBJC_IVAR____TtC17AppleVisionProApp35StoreProductPresenterViewController_presentationType + 16];
      v9 = qword_100168E38;

      if (v9 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006B0C(v10, qword_100181FD0);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v13 = 136315394;
        v14 = _typeName(_:qualified:)();
        v16 = sub_100006B44(v14, v15, &v18);

        *(v13 + 4) = v16;
        *(v13 + 12) = 2080;
        v17 = sub_100006B44(v8, v7, &v18);

        *(v13 + 14) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "%s dismissing product page view controller for item %s", v13, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

id sub_10003BA30()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoreProductPresenterViewController()
{
  result = qword_10016B400;
  if (!qword_10016B400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003BB50()
{
  sub_10003BC14();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003BC14()
{
  if (!qword_10016B410)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B410);
    }
  }
}

__n128 sub_10003BC6C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10003BC80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003BCC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10003BD1C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10003BD28(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

char *sub_10003BD34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  objc_allocWithZone(type metadata accessor for StoreProductPresenterViewController());
  if (v5)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  return sub_10003988C(v1, v2, v3, v9 | v4, v6, v7, v8);
}

uint64_t sub_10003BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C2CC();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10003BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003C2CC();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10003BEA8()
{
  sub_10003C2CC();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10003BED0()
{
  result = qword_10016B418;
  if (!qword_10016B418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B418);
  }

  return result;
}

uint64_t sub_10003BF1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BF54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003BFA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003BFB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B420, &qword_100110790);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C028()
{
  result = qword_10016B438;
  if (!qword_10016B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B438);
  }

  return result;
}

unint64_t sub_10003C084()
{
  result = qword_10016AFE0;
  if (!qword_10016AFE0)
  {
    type metadata accessor for DeviceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AFE0);
  }

  return result;
}

unint64_t sub_10003C108()
{
  result = qword_10016B440;
  if (!qword_10016B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B440);
  }

  return result;
}

unint64_t sub_10003C160()
{
  result = qword_10016B448;
  if (!qword_10016B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B448);
  }

  return result;
}

__n128 sub_10003C1B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10003C1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003C218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003C278()
{
  result = qword_10016B450;
  if (!qword_10016B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B450);
  }

  return result;
}

unint64_t sub_10003C2CC()
{
  result = qword_10016B458;
  if (!qword_10016B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B458);
  }

  return result;
}

void sub_10003C324(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  if (v11 >> 60 != 15)
  {
    sub_100002BE4(&qword_10016B428, &qword_100110798);
    v17 = a2;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010FEE0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v19;
    type metadata accessor for CFString(0);
    *(inited + 72) = v20;
    *(inited + 48) = kSecClassGenericPassword;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v21;
    *(inited + 120) = &type metadata for String;
    v61 = a1;
    *(inited + 96) = a1;
    *(inited + 104) = v17;
    v22 = kSecClassGenericPassword;
    v60 = v17;

    v23 = sub_10000B7F4(inited);
    swift_setDeallocating();
    sub_100002BE4(&qword_100169778, &qword_10010D210);
    swift_arrayDestroy();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10010D3B0;
    *(v24 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v24 + 72) = &type metadata for Data;
    *(v24 + 40) = v25;
    *(v24 + 48) = v9;
    *(v24 + 56) = v11;
    *&v62 = v9;
    *(&v62 + 1) = v11;
    sub_10003DC0C(v9, v11);
    sub_10000B7F4(v24);
    swift_setDeallocating();
    sub_10003DC60(v24 + 32);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v27 = Dictionary._bridgeToObjectiveC()().super.isa;

    v28 = SecItemUpdate(isa, v27);

    if (v28 == -25300)
    {
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;
      v66 = &type metadata for Data;
      v44 = v62;
      v65 = v62;
      sub_10000BF7C(&v65, v64);
      sub_10003DC0C(v44, *(&v44 + 1));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v23;
      sub_10004E1DC(v64, v41, v43, isUniquelyReferenced_nonNull_native);

      v46 = Dictionary._bridgeToObjectiveC()().super.isa;

      v47 = SecItemAdd(v46, 0);

      if (v47 == -25293)
      {
        v55 = v60;
        v56 = v61;
        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100006B0C(v57, qword_100182078);

        v13 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v13, v38))
        {
          goto LABEL_32;
        }

        v39 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100006B44(v56, v55, &v65);
        v40 = "%s Authentication failed while adding keychain item for key: %s";
        goto LABEL_31;
      }

      v48 = v60;
      v49 = v61;
      if (v47)
      {
        v29 = v62;
        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        sub_100006B0C(v59, qword_100182078);

        v13 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v13, v52))
        {
          goto LABEL_39;
        }

        v53 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v53 = 136315650;
        *(v53 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_100006B44(v49, v48, &v65);
        *(v53 + 22) = 1024;
        *(v53 + 24) = v47;
        v54 = "%s Failed to save key: %s, error: %d";
        goto LABEL_37;
      }

      if (qword_100168E70 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_100006B0C(v50, qword_100182078);

      v13 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v38))
      {
        v39 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100006B44(v49, v48, &v65);
        v40 = "%s Successfully saved key: %s";
        goto LABEL_31;
      }
    }

    else
    {
      if (v28 != -25293)
      {
        v30 = v61;
        v29 = v62;
        v31 = v60;
        if (!v28)
        {

          if (qword_100168E70 != -1)
          {
            swift_once();
          }

          v32 = type metadata accessor for Logger();
          sub_100006B0C(v32, qword_100182078);

          v13 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v13, v33))
          {
            goto LABEL_39;
          }

          v34 = swift_slowAlloc();
          *&v65 = swift_slowAlloc();
          *v34 = 136315394;
          *(v34 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
          *(v34 + 12) = 2080;
          *(v34 + 14) = sub_100006B44(v30, v31, &v65);
          _os_log_impl(&_mh_execute_header, v13, v33, "%s Successfully updated value for key: %s", v34, 0x16u);
          swift_arrayDestroy();

LABEL_38:

LABEL_39:
          v58 = v29;
          goto LABEL_40;
        }

        if (qword_100168E70 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_100006B0C(v51, qword_100182078);

        v13 = Logger.logObject.getter();
        v52 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v13, v52))
        {
          goto LABEL_39;
        }

        v53 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v53 = 136315650;
        *(v53 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
        *(v53 + 12) = 2080;
        *(v53 + 14) = sub_100006B44(v30, v31, &v65);
        *(v53 + 22) = 1024;
        *(v53 + 24) = v28;
        v54 = "%s Unexpected error updating keychain item for key: %s, error: %d";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v13, v52, v54, v53, 0x1Cu);
        swift_arrayDestroy();

        goto LABEL_38;
      }

      v35 = v60;
      v36 = v61;
      if (qword_100168E70 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_100006B0C(v37, qword_100182078);

      v13 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v38))
      {
        v39 = swift_slowAlloc();
        *&v65 = swift_slowAlloc();
        *v39 = 136315394;
        *(v39 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
        *(v39 + 12) = 2080;
        *(v39 + 14) = sub_100006B44(v36, v35, &v65);
        v40 = "%s Authentication failed for key: %s";
LABEL_31:
        _os_log_impl(&_mh_execute_header, v13, v38, v40, v39, 0x16u);
        swift_arrayDestroy();
      }
    }

LABEL_32:
    v58 = v62;
LABEL_40:
    sub_10003DCC8(v58, *(&v62 + 1));
    goto LABEL_41;
  }

  if (qword_100168E70 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_100182078);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v65 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v65);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s Failed to convert value to data.", v15, 0xCu);
    sub_1000052E4(v16);
  }

LABEL_41:
}

void sub_10003CEC8(uint64_t a1, unint64_t a2)
{
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  type metadata accessor for CFString(0);
  *(inited + 72) = v6;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  v8 = kSecClassGenericPassword;

  sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = SecItemDelete(isa);

  if (v10 == -25293)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100006B0C(v16, qword_100182078);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100006B44(a1, a2, &v20);
      v15 = "%s Authentication failed while deleting keychain item for key: %s";
      goto LABEL_11;
    }
  }

  else if (v10)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006B0C(v17, qword_100182078);

    v12 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315650;
      *(v19 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_100006B44(a1, a2, &v20);
      *(v19 + 22) = 1024;
      *(v19 + 24) = v10;
      _os_log_impl(&_mh_execute_header, v12, v18, "%s Failed to delete key: %s, error: %d", v19, 0x1Cu);
      swift_arrayDestroy();

      goto LABEL_16;
    }
  }

  else
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100006B0C(v11, qword_100182078);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v20);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_100006B44(a1, a2, &v20);
      v15 = "%s Successfully deleted key: %s";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 0x16u);
      swift_arrayDestroy();

LABEL_16:
    }
  }
}

uint64_t sub_10003D38C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_100002BE4(&qword_10016B428, &qword_100110798);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100110A60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v7;
  type metadata accessor for CFString(0);
  v9 = v8;
  *(inited + 72) = v8;
  *(inited + 48) = kSecClassGenericPassword;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v10;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v11;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 1;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v12;
  *(inited + 216) = v9;
  *(inited + 192) = kSecMatchLimitOne;
  v13 = kSecClassGenericPassword;

  v14 = kSecMatchLimitOne;
  sub_10000B7F4(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_100169778, &qword_10010D210);
  swift_arrayDestroy();
  v41 = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = SecItemCopyMatching(isa, &v41);

  if (v16 == -25293)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006B0C(v28, qword_100182078);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_25;
    }

    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v39);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100006B44(a1, a2, &v39);
    v32 = "%s Authentication failed while retrieving keychain item for key: %s";
LABEL_23:
    _os_log_impl(&_mh_execute_header, v29, v30, v32, v31, 0x16u);
    swift_arrayDestroy();

LABEL_24:

LABEL_25:

    v20 = 0;
    goto LABEL_26;
  }

  if (v16)
  {
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006B0C(v33, qword_100182078);

    v29 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v29, v34))
    {
      goto LABEL_25;
    }

    v35 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v35 = 136315650;
    *(v35 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v39);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_100006B44(a1, a2, &v39);
    *(v35 + 22) = 1024;
    *(v35 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v29, v34, "%s Failed to retrieve key: %s, error: %d", v35, 0x1Cu);
    swift_arrayDestroy();

    goto LABEL_24;
  }

  if (!v41 || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_19:
    if (qword_100168E70 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006B0C(v36, qword_100182078);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_25;
    }

    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v39);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_100006B44(a1, a2, &v39);
    v32 = "%s Successfully retrieved key: %s, but failed to decode into value";
    goto LABEL_23;
  }

  v17 = v39;
  static String.Encoding.utf8.getter();
  sub_10003DB64();
  v18 = String.init<A>(bytes:encoding:)();
  if (!v19)
  {
    sub_10003DBB8(v39, v40);
    goto LABEL_19;
  }

  v20 = v18;
  v21 = v19;
  if (qword_100168E70 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006B0C(v22, qword_100182078);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v38 = v40;
    v25 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v25 = 136315650;
    *(v25 + 4) = sub_100006B44(0xD000000000000011, 0x800000010011DB50, &v39);
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_100006B44(a1, a2, &v39);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_100006B44(v20, v21, &v39);
    _os_log_impl(&_mh_execute_header, v23, v24, "%s Successfully retrieved key: %s, with value: %s", v25, 0x20u);
    swift_arrayDestroy();

    v26 = v17;
    v27 = v38;
  }

  else
  {
    v26 = v39;
    v27 = v40;
  }

  sub_10003DBB8(v26, v27);

LABEL_26:
  swift_unknownObjectRelease();
  return v20;
}

unint64_t sub_10003DB64()
{
  result = qword_10016B460;
  if (!qword_10016B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B460);
  }

  return result;
}

uint64_t sub_10003DBB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003DC0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003DC60(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169778, &qword_10010D210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DCC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10003DBB8(a1, a2);
  }

  return a1;
}

unint64_t sub_10003DCDC()
{
  _StringGuts.grow(_:)(43);

  String.append(_:)(*v0);
  v1._countAndFlagsBits = 0x446465646461202CLL;
  v1._object = 0xED0000203A657461;
  String.append(_:)(v1);
  v2 = *(type metadata accessor for SpatialGalleryFavorite() + 20);
  type metadata accessor for Date();
  sub_10003DE18();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD00000000000002DLL;
}

uint64_t type metadata accessor for SpatialGalleryFavorite()
{
  result = qword_10016B4C8;
  if (!qword_10016B4C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10003DE18()
{
  result = qword_10016B468;
  if (!qword_10016B468)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B468);
  }

  return result;
}

uint64_t sub_10003DE88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10003DF48(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10003DFEC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int Array<A>.id.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  v19 = v13;
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  if (!Array.endIndex.getter())
  {
LABEL_11:
    v29[2] = v26;
    v29[3] = v27;
    v30 = v28;
    v29[0] = v24;
    v29[1] = v25;
    return Hasher.finalize()();
  }

  v15 = 0;
  v21 = (v6 + 8);
  v22 = (v11 + 16);
  v20 = (v11 + 8);
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v11 + 16))(v14, a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v15, a2);
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v19 != 8)
    {
      break;
    }

    *&v29[0] = result;
    (*v22)(v14, v29, a2);
    swift_unknownObjectRelease();
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    dispatch thunk of Identifiable.id.getter();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of Hashable.hash(into:)();
    (*v21)(v10, AssociatedTypeWitness);
    (*v20)(v14, a2);
    ++v15;
    if (v17 == Array.endIndex.getter())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_10003E37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int *a3@<X8>)
{
  result = Array<A>.id.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t sub_10003E3C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);

  LOBYTE(v9) = sub_10003EBA4(v9, v10, v11, v12, a1, a2, a3, a4);

  if (v9)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v15 = *(v4 + 32);
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    *(v4 + 40) = a4;
  }
}

uint64_t sub_10003E56C()
{
  v0 = type metadata accessor for ProductPagePresentation();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = 0;
  *(v3 + 40) = 0;
  result = ObservationRegistrar.init()();
  qword_100182178 = v3;
  return result;
}

uint64_t sub_10003E5C4()
{
  swift_getKeyPath();
  v6 = v0;
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  v2 = *(v6 + 24);
  v3 = *(v6 + 32);
  v4 = *(v6 + 40);

  return v1;
}

uint64_t sub_10003E684@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_10003E740()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC17AppleVisionProApp23ProductPagePresentation___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ProductPagePresentation()
{
  result = qword_10016B530;
  if (!qword_10016B530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E838()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003E8D4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10003E998(a1, a2, a3, a4, v17);
  v6 = v18;
  v15 = v17[0];
  v16 = v17[2];
  v14 = v17[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  *a5 = v15;
  *(a5 + 16) = v14;
  *(a5 + 32) = v16;
  *(a5 + 48) = v6;
  v9 = v20;
  *(a5 + 56) = v19;
  *(a5 + 72) = v9;
  *(a5 + 88) = v21;
  *(a5 + 104) = v7;
  *(a5 + 112) = v10;
  *(a5 + 120) = v11;
  *(a5 + 128) = v12;
  *(a5 + 136) = v13;
  *(a5 + 144) = 0;
  *(a5 + 152) = 0;
  return result;
}

uint64_t sub_10003E998@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_100002BE4(&qword_10016B5C8, &qword_100110C30);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v22 + 16);
  v21 = *(v22 + 24);
  v11 = *(v22 + 32);
  v12 = *(v22 + 40);

  if (!v11)
  {
    v16 = 0;
    v20 = 0;
    v17 = 0;
    v14 = 0;
    v19 = 0;
    v15 = 0;
    goto LABEL_5;
  }

  if (a1)
  {
    v14 = *&a1[OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_deviceProvider];
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = a2;
    v15[4] = a3;
    v15[5] = a4;
    v16 = v10 & 1;
    v17 = v12 & 0x1FF;

    v18 = a1;

    v19 = sub_10003EE60;
    v20 = v21;
LABEL_5:
    *a5 = v16;
    a5[1] = v20;
    a5[2] = v11;
    a5[3] = v17;
    a5[4] = v14;
    a5[5] = v19;
    a5[6] = v15;
    return result;
  }

  type metadata accessor for AppDelegate();
  sub_10003EDD0(&qword_10016A710, type metadata accessor for AppDelegate);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10003EBA4(int a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  if (!a3)
  {
    if (!a7)
    {
      return 0;
    }

    goto LABEL_13;
  }

  if (!a7)
  {

LABEL_13:

    return 1;
  }

  if (((a1 ^ a5) & 1) != 0 || (a2 != a6 || a3 != a7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  swift_bridgeObjectRetain_n();
  v10 = sub_10009AA54(a4, a8);
  swift_bridgeObjectRelease_n();
  if (v10)
  {
    return ((a8 ^ a4) >> 8) & 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_10003EC74(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);

  return sub_10003E3C0(v2, v3, v4, v6);
}

uint64_t sub_10003ECCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v1 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t sub_10003ED1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003ED64(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10003EDD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003EE18()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003EE60()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_10003EE68();
}

uint64_t sub_10003EE68()
{
  sub_100002BE4(&qword_10016B5C8, &qword_100110C30);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_10003EDD0(&qword_10016B5C0, type metadata accessor for ProductPagePresentation);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + 32);

  if (v0)
  {

    State.wrappedValue.getter();
    sub_10003E3C0(0, 0, 0, 0);
  }

  return result;
}

unint64_t sub_10003EF9C()
{
  result = qword_10016B5D0;
  if (!qword_10016B5D0)
  {
    sub_10000459C(&qword_10016B5D8, &qword_100110C38);
    sub_10003F028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5D0);
  }

  return result;
}

unint64_t sub_10003F028()
{
  result = qword_10016B5E0;
  if (!qword_10016B5E0)
  {
    sub_10000459C(&qword_10016B5E8, &qword_100110C40);
    sub_10003F0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5E0);
  }

  return result;
}

unint64_t sub_10003F0B4()
{
  result = qword_10016B5F0;
  if (!qword_10016B5F0)
  {
    sub_10000459C(&qword_10016B5F8, &qword_100110C48);
    sub_10003F140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B5F0);
  }

  return result;
}

unint64_t sub_10003F140()
{
  result = qword_10016B600;
  if (!qword_10016B600)
  {
    sub_10000459C(&qword_10016B608, &unk_100110C50);
    sub_10003C278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B600);
  }

  return result;
}

double sub_10003F1C4()
{
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

double sub_10003F234@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_10003F2D4(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10003F6A4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F3BC(double a1, double a2)
{
  swift_getKeyPath();
  sub_10003F6A4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + 16);
  if (vabdd_f64(v6, a1) > a2)
  {
    if (v6 == a1)
    {
      *(v2 + 16) = a1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10003F4E8()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp11ScrollState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ScrollState()
{
  result = qword_10016B640;
  if (!qword_10016B640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003F5D8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10003F6A4()
{
  result = qword_10016B738;
  if (!qword_10016B738)
  {
    type metadata accessor for ScrollState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B738);
  }

  return result;
}

double sub_10003F6FC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_10003F724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = a1;
  v19[1] = a2;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100012928();
  StringProtocol.trimmingCharacters(in:)();
  (*(v10 + 8))(v13, v9);

  v19[0] = 0;
  v14 = objc_allocWithZone(NSScanner);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 initWithString:v15];

  [v16 scanHexLongLong:v19];
  (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  return Color.init(_:red:green:blue:opacity:)();
}

uint64_t sub_10003F9BC()
{
  sub_10003FB50();

  v0 = UIColor.init(_:)();
  v5 = 0;
  v6 = 0;
  v3 = 0.0;
  v4 = 0;
  v1 = [v0 getRed:&v6 green:&v5 blue:&v4 alpha:&v3];

  if ((v1 & (v3 > 0.0)) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003FA80()
{
  v2 = COERCE_DOUBLE(sub_10003F9BC());
  result = 0;
  if ((v4 & 1) == 0 && v1 * 0.0722 + v2 * 0.2126 + v0 * 0.7152 > 0.1)
  {
    v5 = COERCE_DOUBLE(sub_10003F9BC());
    if (v8 & 1 | (v6 * 0.0722 + v5 * 0.2126 + v7 * 0.7152 < 0.84))
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_10003FB50()
{
  result = qword_10016B740;
  if (!qword_10016B740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B740);
  }

  return result;
}

uint64_t sub_10003FBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppHeroModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003FC80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppHeroModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for AppHeroView()
{
  result = qword_10016B7A0;
  if (!qword_10016B7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003FD88()
{
  type metadata accessor for AppHeroModel();
  if (v0 <= 0x3F)
  {
    sub_10003FE0C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003FE0C()
{
  if (!qword_10016B7B0)
  {
    type metadata accessor for DiscoveryFeedStateProvider();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016B7B0);
    }
  }
}

uint64_t sub_10003FE80@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for _Glass();
  v77 = *(v2 - 8);
  v78 = v2;
  v3 = *(v77 + 64);
  __chkstk_darwin(v2);
  v75 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for RoundedRectangle();
  v5 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_100002BE4(&qword_10016B7E0, &qword_100110D60);
  v71 = *(v72 - 8);
  v7 = *(v71 + 64);
  __chkstk_darwin(v72);
  v67 = &v66 - v8;
  v9 = sub_100002BE4(&qword_10016B7E8, &qword_100110D68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v69 = &v66 - v11;
  v12 = type metadata accessor for AppHeroView();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002BE4(&qword_10016B7F0, &qword_100110D70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = (&v66 - v18);
  v20 = sub_100002BE4(&qword_10016B7F8, &qword_100110D78);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v66 - v23;
  v25 = sub_100002BE4(&qword_10016B800, &qword_100110D80);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v66 - v28;
  v70 = sub_100002BE4(&qword_10016B808, &qword_100110D88);
  v30 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v32 = &v66 - v31;
  *v19 = static Alignment.center.getter();
  v19[1] = v33;
  v34 = v19 + *(sub_100002BE4(&qword_10016B810, &qword_100110D90) + 44);
  v68 = v1;
  sub_10004057C(v1, v34);
  v35 = sub_1000741D0();
  v36 = static Alignment.center.getter();
  v38 = v37;
  sub_10001D504(v19, v24, &qword_10016B7F0, &qword_100110D70);
  v39 = &v24[*(v21 + 44)];
  *v39 = v35;
  v39[1] = v36;
  v39[2] = v38;
  static Alignment.center.getter();
  v40 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001D504(v24, v29, &qword_10016B7F8, &qword_100110D78);
  v41 = &v29[*(v26 + 44)];
  v42 = v84;
  *(v41 + 4) = v83;
  *(v41 + 5) = v42;
  *(v41 + 6) = v85;
  v43 = v80;
  *v41 = v79;
  *(v41 + 1) = v43;
  v44 = v82;
  *(v41 + 2) = v81;
  *(v41 + 3) = v44;
  v45 = static Alignment.topTrailing.getter();
  v47 = v46;
  sub_100044ACC(v68, v15, type metadata accessor for AppHeroView);
  v48 = &v15[*(type metadata accessor for AppHeroModel() + 28)];
  v49 = v48[1];
  if (v49)
  {
    v50 = v67;
    sub_1000409F0(*v48, v49, v67);
    v51 = v71;
    v52 = v69;
    v53 = v50;
    v54 = v72;
    (*(v71 + 32))(v69, v53, v72);
    v40 = 0;
    v55 = v54;
    v56 = v51;
    v57 = v52;
  }

  else
  {
    v55 = v72;
    v56 = v71;
    v57 = v69;
  }

  (*(v56 + 56))(v57, v40, 1, v55);
  v58 = &v32[*(v70 + 36)];
  sub_10001D504(v57, v58, &qword_10016B7E8, &qword_100110D68);
  sub_100043C40(v15, type metadata accessor for AppHeroView);
  v59 = (v58 + *(sub_100002BE4(&qword_10016B818, &qword_100110D98) + 36));
  *v59 = v45;
  v59[1] = v47;
  sub_10001D504(v29, v32, &qword_10016B800, &qword_100110D80);
  v60 = *(v73 + 20);
  v61 = enum case for RoundedCornerStyle.continuous(_:);
  v62 = type metadata accessor for RoundedCornerStyle();
  v63 = v74;
  (*(*(v62 - 8) + 104))(&v74->i8[v60], v61, v62);
  *v63 = vdupq_n_s64(0x4040000000000000uLL);
  v64 = v75;
  static _Glass.regular.getter();
  sub_100043A10();
  sub_100044BF0(&qword_10016B858, &type metadata accessor for RoundedRectangle);
  View._glassEffect<A>(_:in:)();
  (*(v77 + 8))(v64, v78);
  sub_100043C40(v63, &type metadata accessor for RoundedRectangle);
  return sub_100009908(v32, &qword_10016B808, &qword_100110D88);
}

uint64_t sub_10004057C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v3 = sub_100002BE4(&qword_10016B8B8, &qword_100110E20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v40 - v5;
  v41 = sub_100002BE4(&qword_10016B8C0, &qword_100110E28);
  v7 = *(*(v41 - 8) + 64);
  v8 = __chkstk_darwin(v41);
  v42 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = type metadata accessor for AppHeroView();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002BE4(&qword_10016B8C8, &qword_100110E30);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = (&v40 - v25);
  sub_100044ACC(a1, v18, type metadata accessor for AppHeroView);
  v27 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v28 = swift_allocObject();
  sub_100044210(v18, v28 + v27);
  v29 = (v26 + *(sub_100002BE4(&qword_10016B8D0, &qword_100110E38) + 36));
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v29->i8[v30], v31, v32);
  *v29 = vdupq_n_s64(0x4040000000000000uLL);
  v29->i8[*(sub_100002BE4(&qword_10016B8D8, &qword_100110E40) + 36)] = 0;
  *v26 = sub_100044274;
  v26[1] = v28;
  *(v26 + *(v20 + 44)) = 0;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v33 = sub_100002BE4(&qword_10016B8E0, &qword_100110E48);
  sub_100041978(v40, &v6[*(v33 + 44)]);
  v34 = sub_1000744DC();
  if (!v34)
  {
    v34 = static Color.white.getter();
  }

  v35 = v34;
  sub_10001D504(v6, v12, &qword_10016B8B8, &qword_100110E20);
  *&v12[*(v41 + 36)] = v35;
  sub_10001D504(v12, v14, &qword_10016B8C0, &qword_100110E28);
  sub_10000C178(v26, v24, &qword_10016B8C8, &qword_100110E30);
  v36 = v42;
  sub_10000C178(v14, v42, &qword_10016B8C0, &qword_100110E28);
  v37 = v43;
  sub_10000C178(v24, v43, &qword_10016B8C8, &qword_100110E30);
  v38 = sub_100002BE4(&qword_10016B8E8, &unk_100110E50);
  sub_10000C178(v36, v37 + *(v38 + 48), &qword_10016B8C0, &qword_100110E28);
  sub_100009908(v14, &qword_10016B8C0, &qword_100110E28);
  sub_100009908(v26, &qword_10016B8C8, &qword_100110E30);
  sub_100009908(v36, &qword_10016B8C0, &qword_100110E28);
  return sub_100009908(v24, &qword_10016B8C8, &qword_100110E30);
}

uint64_t sub_1000409F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v49 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  __chkstk_darwin(v49);
  v48 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for AutomationSemantics();
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  __chkstk_darwin(v8);
  v50 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Image.ResizingMode();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EnvironmentValues();
  v46 = *(v16 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v3 + *(type metadata accessor for AppHeroView() + 20));
  v21 = *v20;
  v22 = *(v20 + 8);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v45 = v16;
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v46 + 8))(v19, v45);
  }

  v24 = sub_10000D220(a1, a2);

  if (v24)
  {
    v25 = 0x6C69662E72617473;
  }

  else
  {
    v25 = 1918989427;
  }

  if (v24)
  {
    v26 = 0xE90000000000006CLL;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  Image.init(systemName:)();
  (*(v12 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v11);
  v46 = Image.resizable(capInsets:resizingMode:)();

  (*(v12 + 8))(v15, v11);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v59[0]) = 1;
  *&v61[6] = v63;
  *&v61[22] = v64;
  *&v61[38] = v65;
  v45 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v28 = static Color.white.getter();
  sub_100002BE4(&qword_10016B860, &unk_100110DD8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10010FEE0;
  v30 = static Edge.Set.top.getter();
  *(v29 + 32) = v30;
  v31 = static Edge.Set.trailing.getter();
  *(v29 + 33) = v31;
  v32 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v62 = 0;
  v54 = v46;
  LOWORD(v55[0]) = 1;
  *(v55 + 2) = *v61;
  *(&v55[1] + 2) = *&v61[16];
  *(&v55[2] + 2) = *&v61[32];
  *&v55[3] = *&v61[46];
  *(&v55[3] + 1) = KeyPath;
  *&v56 = v45;
  *(&v56 + 1) = v28;
  LOBYTE(v57) = v32;
  *(&v57 + 1) = v33;
  *&v58[0] = v34;
  *(&v58[0] + 1) = v35;
  *&v58[1] = v36;
  BYTE8(v58[1]) = 0;
  v37 = v48;
  *v48 = v25;
  *(v37 + 8) = v26;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v38 = *(v47 + 72);
  v39 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_10010D3B0;
  sub_100044ACC(v37, v40 + v39, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v41 = v50;
  sub_1000FCC48(9u, v40, v50);
  swift_setDeallocating();
  v42 = *(v40 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100043C40(v37, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100002BE4(&qword_10016B868, &qword_100110DE8);
  sub_100043CA0();
  View.automationSemantics(_:)();
  (*(v51 + 8))(v41, v52);
  v59[6] = v57;
  v60[0] = v58[0];
  *(v60 + 9) = *(v58 + 9);
  v59[2] = v55[1];
  v59[3] = v55[2];
  v59[4] = v55[3];
  v59[5] = v56;
  v59[0] = v54;
  v59[1] = v55[0];
  return sub_100009908(v59, &qword_10016B868, &qword_100110DE8);
}

uint64_t sub_100041070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v84 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v81 = *(v84 - 8);
  v5 = *(v81 + 64);
  __chkstk_darwin(v84);
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutomationSemantics();
  v85 = *(v7 - 8);
  v8 = *(v85 + 64);
  __chkstk_darwin(v7);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MediaArtwork();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100002BE4(&qword_10016BA18, &qword_100110F70);
  v14 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v77 = &v69 - v15;
  v16 = sub_100002BE4(&qword_10016BA20, &qword_100110F78);
  v86 = *(v16 - 8);
  v87 = v16;
  v17 = *(v86 + 64);
  __chkstk_darwin(v16);
  v79 = &v69 - v18;
  v78 = type metadata accessor for URL();
  v19 = *(v78 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v78);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  __chkstk_darwin(v24);
  v88 = &v69 - v25;
  v26 = sub_100002BE4(&qword_10016BA28, qword_100110F80);
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  __chkstk_darwin(v26);
  v29 = &v69 - v28;
  v30 = sub_1000741F8();
  if (v30)
  {
    v72 = v26;
    v71 = v7;
    v73 = a3;
    sub_10008E4D0(v30);

    v31 = objc_allocWithZone(AMSMediaArtwork);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v33 = [v31 initWithDictionary:isa];

    v34 = (a2 + *(type metadata accessor for AppHeroModel() + 68));
    v35 = v34[1];
    if (v35)
    {
      if (*v34 == 0x46435370412E434DLL && v35 == 0xEB00000000313042 || (v36 = *v34, v37 = v34[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v38 = 1;
        v39 = 490.0;
        v40 = 0x4089000000000000;
      }

      else
      {
        v38 = 0;
        v39 = 900.0;
        v40 = 0x4099000000000000;
      }

      v44 = *&v40;
      v43 = String._bridgeToObjectiveC()();
    }

    else
    {
      v43 = AMSMediaArtworkCropStyleSpecificRectangle;
      v38 = 0;
      v44 = 1600.0;
      v39 = 900.0;
    }

    v45 = [v33 URLWithSize:v43 cropStyle:AMSMediaArtworkFormatHEIC format:{v44, v39}];

    if (v45)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = *(v19 + 32);
      v69 = v29;
      v47 = v38;
      v48 = v88;
      v70 = v33;
      v49 = a2;
      v50 = v78;
      v46();
      GeometryProxy.size.getter();
      v52 = v51 * 1.77777778;
      GeometryProxy.size.getter();
      GeometryProxy.size.getter();
      v54 = -(v52 * 0.5 - v53 * 0.5);
      if (v47)
      {
        v55 = -22.0;
      }

      else
      {
        v55 = v54;
      }

      (*(v19 + 16))(v23, v48, v50);
      MediaArtwork.init(url:)();
      v56 = v77;
      MediaArtwork.resize(_:croppedTo:)();
      (*(v74 + 8))(v13, v75);
      v57 = v56 + *(v80 + 36);
      *v57 = v55;
      *(v57 + 8) = 0;
      v58 = v83;
      sub_100044ACC(v49, v83, type metadata accessor for AppHeroModel);
      swift_storeEnumTagMultiPayload();
      sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
      v59 = *(v81 + 72);
      v60 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_10010D3B0;
      sub_100044ACC(v58, v61 + v60, type metadata accessor for AutomationUtilities.AutomationAttributeType);
      v62 = v82;
      sub_1000FCC48(1u, v61, v82);
      swift_setDeallocating();
      v63 = *(v61 + 16);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_100043C40(v58, type metadata accessor for AutomationUtilities.AutomationAttributeType);
      sub_100044B34();
      v64 = v79;
      View.automationSemantics(_:)();

      v65 = v62;
      v29 = v69;
      (*(v85 + 8))(v65, v71);
      sub_100009908(v56, &qword_10016BA18, &qword_100110F70);
      (*(v19 + 8))(v88, v50);
      v67 = v86;
      v66 = v87;
      (*(v86 + 32))(v29, v64, v87);
      (*(v67 + 56))(v29, 0, 1, v66);
    }

    else
    {

      (*(v86 + 56))(v29, 1, 1, v87);
    }

    v68 = v73;
    sub_10001D504(v29, v73, &qword_10016BA28, qword_100110F80);
    return (*(v89 + 56))(v68, 0, 1, v72);
  }

  else
  {
    v41 = *(v89 + 56);

    return v41(a3, 1, 1, v26);
  }
}

uint64_t sub_100041978@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v52 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v3 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v5 = v51 - v4;
  v6 = sub_100002BE4(&qword_10016B8F0, &qword_100110E60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v51 - v8;
  v10 = sub_100002BE4(&qword_10016B8F8, &qword_100110E68);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v51 - v16;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v18 = sub_100002BE4(&qword_10016B900, &qword_100110E70);
  sub_100041DDC(a1, &v9[*(v18 + 44)]);
  v19 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v9[*(sub_100002BE4(&qword_10016B908, &qword_100110E78) + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v9[*(sub_100002BE4(&qword_10016B910, &qword_100110E80) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = static Alignment.center.getter();
  v41 = v40;
  v51[1] = v6;
  v42 = &v9[*(v6 + 36)];
  sub_10004232C(a1, v42);
  v43 = (v42 + *(sub_100002BE4(&qword_10016B918, &qword_100110E88) + 36));
  *v43 = v39;
  v43[1] = v41;
  v44 = enum case for DynamicTypeSize.accessibility2(_:);
  v45 = type metadata accessor for DynamicTypeSize();
  (*(*(v45 - 8) + 104))(v5, v44, v45);
  sub_100044BF0(&qword_100169A78, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1000442F4();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v5, &qword_100169A10, &qword_10010D450);
    sub_100009908(v9, &qword_10016B8F0, &qword_100110E60);
    v47 = v11[2];
    v47(v15, v17, v10);
    v48 = v53;
    *v53 = 0;
    *(v48 + 8) = 1;
    v49 = sub_100002BE4(&qword_10016B950, &qword_100110E98);
    v47(v48 + *(v49 + 48), v15, v10);
    v50 = v11[1];
    v50(v17, v10);
    return (v50)(v15, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100041DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_100002BE4(&qword_10016B990, &qword_100110F10);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v9 = sub_100002BE4(&qword_10016B998, &qword_100110F18);
  v54 = *(v9 - 8);
  v10 = *(v54 + 64);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v13 = sub_100002BE4(&qword_10016B9A0, &qword_100110F20);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v49 - v17;
  v55 = sub_100002BE4(&qword_10016B9A8, &qword_100110F28);
  v53 = *(v55 - 8);
  v19 = *(v53 + 64);
  v20 = __chkstk_darwin(v55);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0;
  v25 = 1;
  v24[16] = 1;
  v51 = sub_100002BE4(&qword_10016B9B0, &qword_100110F30);
  sub_1000426B4(a1, &v24[*(v51 + 44)]);
  v26 = type metadata accessor for AppHeroModel();
  v27 = (a1 + *(v26 + 48));
  if (v27[1])
  {
    v50 = v9;
    v28 = a1;
    v29 = v18;
    v30 = v8;
    v31 = *v27;
    *v12 = static VerticalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v32 = &v12[*(sub_100002BE4(&qword_10016B9C0, &qword_100110F40) + 44)];
    v33 = v31;
    v8 = v30;
    v18 = v29;
    a1 = v28;
    v9 = v50;
    sub_100042E04(v33, v32);
    v34 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v35 = &v12[*(v9 + 36)];
    *v35 = v34;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_10001D504(v12, v18, &qword_10016B998, &qword_100110F18);
    v25 = 0;
  }

  v40 = 1;
  (*(v54 + 56))(v18, v25, 1, v9);
  v41 = (a1 + *(v26 + 52));
  if (v41[1])
  {
    v42 = *v41;
    *v22 = static VerticalAlignment.center.getter();
    *(v22 + 1) = 0;
    v22[16] = 1;
    sub_100043344(v42, a1, &v22[*(v51 + 44)]);
    sub_10001D504(v22, v8, &qword_10016B9A8, &qword_100110F28);
    v40 = 0;
  }

  (*(v53 + 56))(v8, v40, 1, v55);
  v52 = v22;
  sub_10000C178(v24, v22, &qword_10016B9A8, &qword_100110F28);
  v43 = v56;
  sub_10000C178(v18, v56, &qword_10016B9A0, &qword_100110F20);
  v44 = v18;
  v45 = v57;
  sub_10000C178(v8, v57, &qword_10016B990, &qword_100110F10);
  v46 = v58;
  sub_10000C178(v22, v58, &qword_10016B9A8, &qword_100110F28);
  v47 = sub_100002BE4(&qword_10016B9B8, &qword_100110F38);
  sub_10000C178(v43, v46 + *(v47 + 48), &qword_10016B9A0, &qword_100110F20);
  sub_10000C178(v45, v46 + *(v47 + 64), &qword_10016B990, &qword_100110F10);
  sub_100009908(v8, &qword_10016B990, &qword_100110F10);
  sub_100009908(v44, &qword_10016B9A0, &qword_100110F20);
  sub_100009908(v24, &qword_10016B9A8, &qword_100110F28);
  sub_100009908(v45, &qword_10016B990, &qword_100110F10);
  sub_100009908(v43, &qword_10016B9A0, &qword_100110F20);
  return sub_100009908(v52, &qword_10016B9A8, &qword_100110F28);
}

uint64_t sub_10004232C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v32 - v9;
  v11 = sub_100002BE4(&qword_10016B960, &qword_100110EA8);
  v32[0] = *(v11 - 8);
  v12 = *(v32[0] + 64);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  if (*(a1 + *(type metadata accessor for AppHeroModel() + 32)) == 1)
  {
    *v14 = static HorizontalAlignment.center.getter();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v15 = &v14[*(sub_100002BE4(&qword_10016B968, &qword_100110EB0) + 44)];
    static Material.ultraThin.getter();
    *&v10[*(sub_100002BE4(&qword_10016B970, &qword_100110EB8) + 56)] = 256;
    *&v10[*(sub_100002BE4(&qword_10016B978, &qword_100110EC0) + 36)] = 0x4004000000000000;
    *&v10[*(v4 + 36)] = 256;
    sub_1000444F0(v10, v8);
    *v15 = 0;
    v15[8] = 1;
    v16 = sub_100002BE4(&qword_10016B980, &qword_100110EC8);
    sub_1000444F0(v8, &v15[*(v16 + 48)]);
    sub_100009908(v10, &qword_10016B958, &qword_100110EA0);
    sub_100009908(v8, &qword_10016B958, &qword_100110EA0);
    v17 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = &v14[*(sub_100002BE4(&qword_10016B988, &qword_100110ED0) + 36)];
    *v26 = v17;
    *(v26 + 1) = v19;
    *(v26 + 2) = v21;
    *(v26 + 3) = v23;
    *(v26 + 4) = v25;
    v26[40] = 0;
    v27 = &v14[*(v11 + 36)];
    v32[1] = 0;
    State.init(wrappedValue:)();
    v28 = v32[3];
    *v27 = v32[2];
    *(v27 + 1) = v28;
    v29 = *(type metadata accessor for BlurViewFadeModifier() + 20);
    *&v27[v29] = swift_getKeyPath();
    sub_100002BE4(&qword_10016A488, &qword_10010F480);
    swift_storeEnumTagMultiPayload();
    sub_100044568(v14, a2);
    return (*(v32[0] + 56))(a2, 0, 1, v11);
  }

  else
  {
    v31 = *(v32[0] + 56);

    return v31(a2, 1, 1, v11);
  }
}

uint64_t sub_1000426B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v70 = a2;
  v3 = type metadata accessor for AutomationSemantics();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  __chkstk_darwin(v3);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for BlendMode();
  v59 = *(v60 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v60);
  v58 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002BE4(&qword_10016B9F8, &qword_1001158D0);
  v8 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v63 = &v57 - v9;
  v10 = sub_100002BE4(&qword_10016BA00, &qword_100110F60);
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v12 = __chkstk_darwin(v10);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v57 - v14;
  v15 = (a1 + *(type metadata accessor for AppHeroModel() + 44));
  v16 = v15[1];
  if (v16)
  {
    v17 = *v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
  }

  *&v72[0] = v17;
  *(&v72[0] + 1) = v18;
  sub_100012928();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.caption.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10001297C(v19, v21, v23 & 1);

  static Font.Weight.medium.getter();
  v29 = Text.fontWeight(_:)();
  v31 = v30;
  v33 = v32;
  sub_10001297C(v24, v26, v28 & 1);

  sub_100042C6C();
  v34 = Color.opacity(_:)();

  *&v72[0] = v34;
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10001297C(v29, v31, v33 & 1);

  sub_100042C6C();
  static Color.white.getter();
  LOBYTE(v29) = static Color.== infix(_:_:)();

  v42 = v59;
  v43 = &enum case for BlendMode.plusLighter(_:);
  if ((v29 & 1) == 0)
  {
    v43 = &enum case for BlendMode.plusDarker(_:);
  }

  v44 = v58;
  v45 = v60;
  (*(v59 + 104))(v58, *v43, v60);
  v46 = v63;
  (*(v42 + 32))(&v63[*(v62 + 36)], v44, v45);
  *v46 = v35;
  *(v46 + 8) = v37;
  *(v46 + 16) = v39 & 1;
  *(v46 + 24) = v41;
  memset(v72, 0, 32);
  memset(v71, 0, sizeof(v71));
  v47 = v67;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v71, &qword_100169A38, &qword_10010D460);
  sub_100009908(v72, &qword_100169A38, &qword_10010D460);
  sub_100044A48();
  v48 = v61;
  View.automationSemantics(_:)();
  (*(v68 + 8))(v47, v69);
  sub_100009908(v46, &qword_10016B9F8, &qword_1001158D0);
  v50 = v64;
  v49 = v65;
  v51 = *(v65 + 16);
  v52 = v66;
  v51(v64, v48, v66);
  v53 = v70;
  v51(v70, v50, v52);
  v54 = &v53[*(sub_100002BE4(&qword_10016BA10, &qword_100110F68) + 48)];
  v55 = *(v49 + 8);
  v55(v48, v52);
  *v54 = 0;
  v54[8] = 1;
  return (v55)(v50, v52);
}

uint64_t sub_100042C6C()
{
  if (sub_1000741D0())
  {
    if (sub_10003FA80() == 2)
    {
      v0 = static Color.black.getter();
    }

    else
    {
      v0 = static Color.white.getter();
    }

    v7 = v0;

    return v7;
  }

  else
  {
    if (qword_100168E48 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006B0C(v1, qword_100182000);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v8 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100006B44(0x566F726548707041, 0xEB00000000776569, &v8);
      _os_log_impl(&_mh_execute_header, v2, v3, "%s no backgroundColor found on heroModel, returning white textColor", v4, 0xCu);
      sub_1000052E4(v5);
    }

    return static Color.white.getter();
  }
}

uint64_t sub_100042E04@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39[1] = a1;
  v47 = a2;
  v2 = type metadata accessor for AutomationSemantics();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  __chkstk_darwin(v2);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributedString.Runs();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NQMLConfiguration();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for AttributedString();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v43 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v40 = v39 - v20;
  v21 = sub_100042C6C();
  static Font.title.getter();
  v22 = Font.bold()();

  sub_1000445D8();
  v23 = objc_opt_self();

  v24 = [v23 systemFontOfSize:15.0];
  NQMLConfiguration.init(font:)();
  v25 = NSAttributedString.init(ju_nqml:configuration:)();
  AttributedString.init(_:)();
  v50 = v21;
  sub_1000132F4();

  AttributedString.subscript.setter();
  v50 = v22;
  sub_100013238();

  AttributedString.subscript.setter();
  AttributedString.runs.getter();

  sub_100044624(v8, v22, v14, v21);

  (*(v41 + 8))(v8, v42);

  v26 = Text.init(_:)();
  v28 = v27;
  v50 = v26;
  v51 = v27;
  LOBYTE(v25) = v29 & 1;
  v52 = v29 & 1;
  v53 = v30;
  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  v31 = v44;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v48, &qword_100169A38, &qword_10010D460);
  sub_100009908(v49, &qword_100169A38, &qword_10010D460);
  v32 = v40;
  View.automationSemantics(_:)();
  (*(v45 + 8))(v31, v46);
  sub_10001297C(v26, v28, v25);

  v33 = v16[2];
  v34 = v43;
  v33(v43, v32, v15);
  v35 = v47;
  v33(v47, v34, v15);
  v36 = &v35[*(sub_100002BE4(&qword_10016B9D0, &qword_100110F48) + 48)];
  v37 = v16[1];
  v37(v32, v15);
  *v36 = 0;
  v36[8] = 1;
  return (v37)(v34, v15);
}

uint64_t sub_100043344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v51[1] = a2;
  v51[2] = a1;
  v64 = a3;
  v3 = type metadata accessor for AutomationSemantics();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  __chkstk_darwin(v3);
  v61 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BlendMode();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v58 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for AttributedString.Runs();
  v54 = *(v52 - 8);
  v9 = *(v54 + 64);
  __chkstk_darwin(v52);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NQMLConfiguration();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for AttributedString();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100002BE4(&qword_10016B9F8, &qword_1001158D0);
  v18 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v20 = v51 - v19;
  v57 = sub_100002BE4(&qword_10016BA00, &qword_100110F60);
  v21 = *(v57 - 8);
  v22 = v21[8];
  v23 = __chkstk_darwin(v57);
  v56 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v55 = v51 - v25;
  sub_100042C6C();
  v26 = Color.opacity(_:)();

  v27 = static Font.footnote.getter();
  sub_1000445D8();
  v28 = objc_opt_self();

  v29 = [v28 systemFontOfSize:15.0];
  NQMLConfiguration.init(font:)();
  v30 = NSAttributedString.init(ju_nqml:configuration:)();
  AttributedString.init(_:)();
  *&v66[0] = v26;
  sub_1000132F4();

  AttributedString.subscript.setter();
  *&v66[0] = v27;
  sub_100013238();

  AttributedString.subscript.setter();
  AttributedString.runs.getter();

  sub_100044624(v11, v27, v17, v26);

  (*(v54 + 8))(v11, v52);

  v31 = Text.init(_:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_100042C6C();
  static Color.white.getter();
  LOBYTE(v30) = static Color.== infix(_:_:)();

  v39 = v59;
  v38 = v60;
  v40 = &enum case for BlendMode.plusLighter(_:);
  if ((v30 & 1) == 0)
  {
    v40 = &enum case for BlendMode.plusDarker(_:);
  }

  v41 = v58;
  (*(v59 + 104))(v58, *v40, v60);
  (*(v39 + 32))(&v20[*(v53 + 36)], v41, v38);
  *v20 = v31;
  *(v20 + 1) = v33;
  v20[16] = v35 & 1;
  *(v20 + 3) = v37;
  memset(v66, 0, 32);
  memset(v65, 0, sizeof(v65));
  v42 = v61;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_100009908(v65, &qword_100169A38, &qword_10010D460);
  sub_100009908(v66, &qword_100169A38, &qword_10010D460);
  sub_100044A48();
  v43 = v55;
  View.automationSemantics(_:)();
  (*(v62 + 8))(v42, v63);
  sub_100009908(v20, &qword_10016B9F8, &qword_1001158D0);
  v44 = v21[2];
  v45 = v56;
  v46 = v57;
  v44(v56, v43, v57);
  v47 = v64;
  v44(v64, v45, v46);
  v48 = &v47[*(sub_100002BE4(&qword_10016BA10, &qword_100110F68) + 48)];
  v49 = v21[1];
  v49(v43, v46);
  *v48 = 0;
  v48[8] = 1;
  return (v49)(v45, v46);
}

unint64_t sub_100043A10()
{
  result = qword_10016B820;
  if (!qword_10016B820)
  {
    sub_10000459C(&qword_10016B808, &qword_100110D88);
    sub_100043AC8();
    sub_100012C48(&qword_10016B850, &qword_10016B818, &qword_100110D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B820);
  }

  return result;
}

unint64_t sub_100043AC8()
{
  result = qword_10016B828;
  if (!qword_10016B828)
  {
    sub_10000459C(&qword_10016B800, &qword_100110D80);
    sub_100043B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B828);
  }

  return result;
}

unint64_t sub_100043B54()
{
  result = qword_10016B830;
  if (!qword_10016B830)
  {
    sub_10000459C(&qword_10016B7F8, &qword_100110D78);
    sub_100012C48(&qword_10016B838, &qword_10016B7F0, &qword_100110D70);
    sub_100012C48(&qword_10016B840, &qword_10016B848, &qword_100110DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B830);
  }

  return result;
}

uint64_t sub_100043C40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100043CA0()
{
  result = qword_10016B870;
  if (!qword_10016B870)
  {
    sub_10000459C(&qword_10016B868, &qword_100110DE8);
    sub_100043D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B870);
  }

  return result;
}

unint64_t sub_100043D2C()
{
  result = qword_10016B878;
  if (!qword_10016B878)
  {
    sub_10000459C(&qword_10016B880, &qword_100110DF0);
    sub_100043DE4();
    sub_100012C48(&qword_10016A5D0, &qword_10016A5D8, &unk_10010F630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B878);
  }

  return result;
}

unint64_t sub_100043DE4()
{
  result = qword_10016B888;
  if (!qword_10016B888)
  {
    sub_10000459C(&qword_10016B890, &qword_100110DF8);
    sub_100043E9C();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B888);
  }

  return result;
}

unint64_t sub_100043E9C()
{
  result = qword_10016B898;
  if (!qword_10016B898)
  {
    sub_10000459C(&qword_10016B8A0, &unk_100110E00);
    sub_100043F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B898);
  }

  return result;
}

unint64_t sub_100043F28()
{
  result = qword_10016B8A8;
  if (!qword_10016B8A8)
  {
    sub_10000459C(&qword_10016B8B0, &qword_1001157F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B8A8);
  }

  return result;
}

uint64_t sub_100043FAC()
{
  v1 = type metadata accessor for AppHeroView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = type metadata accessor for AppHeroModel();
  v7 = v6[5];
  v8 = type metadata accessor for ImpressionMetrics();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v6[6] + 8);

  v11 = *(v5 + v6[7] + 8);

  v12 = v6[9];
  v13 = type metadata accessor for Models.Menu();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v15 = (v5 + v6[10]);
  if (v15[3])
  {
    sub_1000052E4(v15);
  }

  v16 = *(v5 + v6[11] + 8);

  v17 = *(v5 + v6[12] + 8);

  v18 = *(v5 + v6[13] + 8);

  v19 = *(v5 + v6[14] + 8);

  v20 = *(v5 + v6[15] + 8);

  v21 = *(v5 + v6[16] + 8);

  v22 = *(v5 + v6[17] + 8);

  v23 = *(v5 + *(v1 + 20));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100044210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppHeroView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppHeroView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100041070(a1, v6, a2);
}

unint64_t sub_1000442F4()
{
  result = qword_10016B920;
  if (!qword_10016B920)
  {
    sub_10000459C(&qword_10016B8F0, &qword_100110E60);
    sub_1000443AC();
    sub_100012C48(&qword_10016B948, &qword_10016B918, &qword_100110E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B920);
  }

  return result;
}

unint64_t sub_1000443AC()
{
  result = qword_10016B928;
  if (!qword_10016B928)
  {
    sub_10000459C(&qword_10016B910, &qword_100110E80);
    sub_100044438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B928);
  }

  return result;
}

unint64_t sub_100044438()
{
  result = qword_10016B930;
  if (!qword_10016B930)
  {
    sub_10000459C(&qword_10016B908, &qword_100110E78);
    sub_100012C48(&qword_10016B938, &qword_10016B940, &qword_100110E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016B930);
  }

  return result;
}

uint64_t sub_1000444F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B958, &qword_100110EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044568(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B960, &qword_100110EA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000445D8()
{
  result = qword_10016B9C8;
  if (!qword_10016B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016B9C8);
  }

  return result;
}

uint64_t sub_100044624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v41 = type metadata accessor for AttributedString.Runs.Index();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v41);
  v39 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for AttributedString.Runs.Run();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v34);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AttributedString.Runs();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002BE4(&qword_10016B9D8, &unk_100110F50);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v21 = &v30 - v20;
  (*(v13 + 16))(v16, a1, v12);
  sub_100044BF0(&qword_10016B9E0, &type metadata accessor for AttributedString.Runs);
  dispatch thunk of Sequence.makeIterator()();
  v22 = *(v18 + 44);
  sub_100044BF0(&qword_10016B9E8, &type metadata accessor for AttributedString.Runs);
  v38 = (v6 + 8);
  v31 = (v9 + 8);
  v32 = (v9 + 16);
  while (1)
  {
    v23 = v39;
    dispatch thunk of Collection.endIndex.getter();
    sub_100044BF0(&qword_10016B9F0, &type metadata accessor for AttributedString.Runs.Index);
    v24 = v41;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v38)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v33;
    v28 = v34;
    (*v32)(v33);
    v26(v40, 0);
    dispatch thunk of Collection.formIndex(after:)();
    sub_100012D40(v27, v35, v36, v37);
    if (v4)
    {
      (*v31)(v27, v28);
      return sub_100009908(v21, &qword_10016B9D8, &unk_100110F50);
    }

    (*v31)(v27, v28);
  }

  return sub_100009908(v21, &qword_10016B9D8, &unk_100110F50);
}

unint64_t sub_100044A48()
{
  result = qword_10016BA08;
  if (!qword_10016BA08)
  {
    sub_10000459C(&qword_10016B9F8, &qword_1001158D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA08);
  }

  return result;
}

uint64_t sub_100044ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100044B34()
{
  result = qword_10016BA30;
  if (!qword_10016BA30)
  {
    sub_10000459C(&qword_10016BA18, &qword_100110F70);
    sub_100044BF0(&qword_10016BA38, &type metadata accessor for MediaArtwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BA30);
  }

  return result;
}

uint64_t sub_100044BF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044C38()
{
  sub_10000459C(&qword_10016B808, &qword_100110D88);
  type metadata accessor for RoundedRectangle();
  sub_100043A10();
  sub_100044BF0(&qword_10016B858, &type metadata accessor for RoundedRectangle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100044CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v48 = a3;
  v55 = type metadata accessor for JSONContext();
  v56 = *(v55 - 8);
  v4 = *(v56 + 64);
  __chkstk_darwin(v55);
  v49 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  __chkstk_darwin(v6);
  v51 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for JSONObject();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v53 = a1;
  v54 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  JSONObject.subscript.getter();
  JSONObject.url.getter();
  v25 = *(v14 + 8);
  v25(v20, v13);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_100045318(v12);
    v26 = type metadata accessor for JSONError();
    sub_1000458C0(&qword_10016BA48, &type metadata accessor for JSONError);
    swift_allocError();
    v28 = v27;
    v29 = type metadata accessor for OpenURLAction(0);
    *v28 = 7107189;
    v28[1] = 0xE300000000000000;
    v28[2] = v29;
    (*(*(v26 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    (*(v56 + 8))(v52, v55);
    return (v25)(v53, v13);
  }

  else
  {
    v43 = v25;
    v44 = v13;
    (*(v22 + 32))(v54, v12, v21);
    v31 = v53;
    JSONObject.subscript.getter();
    v32 = v52;
    v33 = v55;
    (*(v56 + 16))(v49, v52, v55);
    v34 = v50;
    ActionMetrics.init(deserializing:using:)();
    if (v34)
    {
      (*(v56 + 8))(v32, v33);
      v43(v31, v44);
      return (*(v22 + 8))(v54, v21);
    }

    else
    {
      v35 = v48;
      (*(v46 + 32))();
      v51 = type metadata accessor for OpenURLAction(0);
      (*(v22 + 16))(v35 + *(v51 + 5), v54, v21);
      v36 = v45;
      v37 = v32;
      JSONObject.subscript.getter();
      v38 = JSONObject.BOOL.getter();
      (*(v56 + 8))(v37, v55);
      v39 = v31;
      v41 = v43;
      v40 = v44;
      v43(v39, v44);
      v41(v36, v40);
      result = (*(v22 + 8))(v54, v21);
      *(v48 + *(v51 + 6)) = v38 & 1;
    }
  }

  return result;
}

uint64_t sub_100045318(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000453B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA50, &qword_100110FC8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100045440(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA50, &qword_100110FC8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000454DC()
{
  sub_100045548();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100045548()
{
  if (!qword_10016BAC0)
  {
    type metadata accessor for OpenURLAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016BAC0);
    }
  }
}

uint64_t sub_1000455B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1000456E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionMetrics();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for URL();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000457EC()
{
  result = type metadata accessor for ActionMetrics();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000458C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100045908@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_100170760, &unk_100111070);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100045C98(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for OpenURLAction();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100045AF0()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OpenURLAction();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100045908(v9);
  v10 = *(type metadata accessor for OpenURLAction(0) + 20);
  OpenURLAction.callAsFunction(_:)();
  (*(v6 + 8))(v9, v5);
  sub_100002BE4(&qword_10016B200, &unk_1001104F0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100045C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_100170760, &unk_100111070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045D18(uint64_t a1)
{
  v1[3] = a1;
  v3 = *(type metadata accessor for SpatialGalleryFavorite() - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_100045E08;

  return sub_100047164(a1);
}

uint64_t sub_100045E08()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100045F54, 0, 0);
  }
}

uint64_t sub_100045F54()
{
  sub_100031904(0, &qword_10016BBB8, CKQuery_ptr);
  sub_100031904(0, &qword_10016BBC0, NSPredicate_ptr);
  v1 = static NSPredicate.truePredicate.getter();
  v2._object = 0x800000010011DCA0;
  v2._countAndFlagsBits = 0xD000000000000017;
  v3.super.isa = CKQuery.init(recordType:predicate:)(v2, v1).super.isa;
  *(v0 + 56) = v3;
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 24);
  v5 = qword_1001821C8;
  v6 = unk_1001821D0;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v5;
  v10._object = v6;
  v11._countAndFlagsBits = v7;
  v11._object = v9;
  v12.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v10, v11).super.isa;
  *(v0 + 64) = v12;
  *(v0 + 72) = [v4 privateCloudDatabase];
  v13 = async function pointer to CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)[1];
  v14 = v12.super.isa;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  *v15 = v0;
  v15[1] = sub_100046144;

  return CKDatabase.records(matching:inZoneWith:desiredKeys:resultsLimit:)(v3.super.isa, v12.super.isa, 0, CKQueryOperationMaximumResults);
}

uint64_t sub_100046144(uint64_t a1, void *a2)
{
  v5 = *v3;
  v6 = *(*v3 + 80);
  v10 = *v3;
  *(v5 + 88) = a1;
  *(v5 + 96) = v2;

  if (v2)
  {
    v7 = sub_1000465E8;
  }

  else
  {
    v8 = *(v5 + 72);

    v7 = sub_100046274;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100046274()
{
  v3 = *(v1 + 88);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v1 + 32);
    v37 = _swiftEmptyArrayStorage;
    sub_100047974(0, v4, 0);
    v6 = *(v3 + 16);
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = _swiftEmptyArrayStorage;
    v9 = *(v3 + 32);
    v8 = *(v3 + 40);
    if (*(v3 + 48))
    {
LABEL_4:
      v10 = *(v1 + 88);
      v12 = *(v1 + 56);
      v11 = *(v1 + 64);
      *(v1 + 16) = v8;
      sub_100047994(v8, 1);
      sub_100047994(v8, 1);
      v13 = v9;
      sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
      swift_willThrowTypedImpl();

      sub_1000479A0(v8, 1);
LABEL_11:

      v25 = *(v1 + 40);

      v26 = *(v1 + 8);

      return v26();
    }

    v20 = *(v1 + 96);
    v21 = *(v1 + 40);
    sub_100047994(*(v3 + 40), 0);
    sub_100047994(v8, 0);
    v22 = v9;
    sub_10008DA14(v8, v21);
    if (v20)
    {
      v23 = *(v1 + 88);
      v24 = *(v1 + 64);

      sub_1000479A0(v8, 0);
      goto LABEL_11;
    }

    sub_1000479A0(v8, 0);
    v2 = _swiftEmptyArrayStorage[2];
    v6 = _swiftEmptyArrayStorage[3];
    v0 = v2 + 1;
    if (v2 >= v6 >> 1)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v27 = *(v1 + 40);
      v7[2] = v0;
      v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v5 = *(v5 + 72);
      sub_1000479AC(v27, v7 + v36 + v5 * v2);
      if (v4 == 1)
      {
        break;
      }

      v30 = (v3 + 72);
      v31 = 1;
      while (1)
      {
        v6 = *(v3 + 16);
        if (v31 >= v6)
        {
          break;
        }

        v9 = *(v30 - 2);
        v8 = *(v30 - 1);
        if (*v30)
        {
          goto LABEL_4;
        }

        v32 = *(v1 + 40);
        sub_100047994(*(v30 - 1), 0);
        sub_100047994(v8, 0);
        v33 = v9;
        sub_10008DA14(v8, v32);

        sub_1000479A0(v8, 0);
        v37 = v7;
        v2 = v7[2];
        v34 = v7[3];
        v0 = v2 + 1;
        if (v2 >= v34 >> 1)
        {
          sub_100047974(v34 > 1, v2 + 1, 1);
        }

        ++v31;
        v35 = *(v1 + 40);
        v7[2] = v0;
        sub_1000479AC(v35, v7 + v36 + v5 * v2);
        v30 += 24;
        if (v4 == v31)
        {
          goto LABEL_16;
        }
      }

LABEL_24:
      __break(1u);
LABEL_25:
      sub_100047974(v6 > 1, v0, 1);
      v7 = v37;
    }

LABEL_16:
    v28 = *(v1 + 88);
    v29 = *(v1 + 64);
  }

  else
  {
    v15 = *(v1 + 56);
    v14 = *(v1 + 64);
    v16 = *(v1 + 88);

    v7 = _swiftEmptyArrayStorage;
  }

  v17 = *(v1 + 40);

  v18 = *(v1 + 8);

  return v18(v7);
}

uint64_t sub_1000465E8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  v4 = v0[12];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_10004666C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_100046704;

  return sub_100047164(a2);
}

uint64_t sub_100046704()
{
  v2 = *(*v1 + 168);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100046834, 0, 0);
  }
}

uint64_t sub_100046834()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = sub_10008DDD0();
  v0[22] = v3;
  v4 = [v2 privateCloudDatabase];
  v0[23] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100046988;
  v5 = swift_continuation_init();
  v0[17] = sub_100002BE4(&qword_10016BB98, &qword_1001110D8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100047E64;
  v0[13] = &unk_10015C148;
  v0[14] = v5;
  [v4 saveRecord:v3 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100046988()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_100046B08;
  }

  else
  {
    v3 = sub_100046A98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100046A98()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100046B08()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[24];
  v5 = v0[1];

  return v5();
}

uint64_t sub_100046B80(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v4 = swift_task_alloc();
  v2[21] = v4;
  *v4 = v2;
  v4[1] = sub_100046C18;

  return sub_100047164(a2);
}

uint64_t sub_100046C18()
{
  v2 = *(*v1 + 168);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100046D48, 0, 0);
  }
}

uint64_t sub_100046D48()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = sub_10008DDD0();
  v0[22] = v3;
  v4 = [v2 privateCloudDatabase];
  v0[23] = v4;
  v5 = [(objc_class *)v3 recordID];
  v0[24] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100046EBC;
  v6 = swift_continuation_init();
  v0[17] = sub_100002BE4(&qword_10016BBB0, &qword_1001110F8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100047E64;
  v0[13] = &unk_10015C1C0;
  v0[14] = v6;
  [v4 deleteRecordWithID:v5 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100046EBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_100047044;
  }

  else
  {
    v3 = sub_100046FCC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100046FCC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100047044()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  v5 = v0[25];
  v6 = v0[1];

  return v6();
}

void sub_1000470C8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  v3 = 1;
  if (v2)
  {
    v3 = 2;
  }

  qword_10016BB90 = v3;
}

uint64_t sub_100047184()
{
  sub_100031904(0, &qword_10016E790, CKRecordZoneID_ptr);
  if (qword_100168F78 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = qword_1001821C8;
  v3 = unk_1001821D0;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v2;
  v7._object = v3;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v7, v8).super.isa;
  v0[28] = isa;
  v10 = [v1 privateCloudDatabase];
  v0[29] = v10;
  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_100047370;
  v11 = swift_continuation_init();
  v12 = sub_100002BE4(&qword_10016BBA8, &qword_1001110E8);
  v0[30] = v12;
  v0[25] = v12;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100047E64;
  v0[21] = &unk_10015C170;
  v0[22] = v11;
  [v10 fetchRecordZoneWithID:isa completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100047370()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1000474F0;
  }

  else
  {
    v3 = sub_100047480;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047480()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000474F0()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[27];
  swift_willThrow();

  v6 = [objc_allocWithZone(CKRecordZone) initWithZoneID:v3];
  v0[32] = v6;
  v7 = [v5 privateCloudDatabase];
  v0[33] = v7;
  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_100047670;
  v8 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_100047E64;
  v0[21] = &unk_10015C198;
  v0[22] = v8;
  [v7 saveRecordZone:v6 completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100047670()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1000477F8;
  }

  else
  {
    v3 = sub_100047780;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047780()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000477F8()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[34];

  return v5();
}

uint64_t sub_10004789C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000524C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100002BE4(&qword_10016BBA0, &qword_1001110E0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

size_t sub_100047974(size_t a1, int64_t a2, char a3)
{
  result = sub_100047A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_100047994(void *a1, char a2)
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

void sub_1000479A0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000479AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialGalleryFavorite();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_100047A10(char *a1, int64_t a2, char a3)
{
  result = sub_100047C2C(a1, a2, a3, *v3, &qword_10016BBE8, &qword_100111128);
  *v3 = result;
  return result;
}

size_t sub_100047A40(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002BE4(&qword_10016BBC8, &qword_100111108);
  v10 = *(type metadata accessor for SpatialGalleryFavorite() - 8);
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
  v15 = *(type metadata accessor for SpatialGalleryFavorite() - 8);
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

char *sub_100047C2C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100002BE4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_100047D18(void *result, int64_t a2, char a3, void *a4)
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
    sub_100002BE4(&qword_10016BBD0, &unk_100111110);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100002BE4(&qword_10016BBD8, &unk_100116AE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_100047EC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppTitleComponentModel() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = [objc_opt_self() mainBundle];
  v11._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = v4;
  v8._object = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v11);

  *a2 = v10;
  *(a2 + 16) = 0;
}

uint64_t sub_100047F88()
{
  sub_10002C080();

  return _ComponentBody.init(_:)();
}

unint64_t sub_100047FD0()
{
  result = qword_10016BBF0;
  if (!qword_10016BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BBF0);
  }

  return result;
}

uint64_t sub_1000480D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004811C()
{
  v0 = type metadata accessor for ColorScheme();
  sub_100010158(v0, qword_100182180);
  v1 = sub_100006B0C(v0, qword_100182180);
  v2 = enum case for ColorScheme.dark(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1000481A4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100010158(v0, qword_100182198);
  sub_100006B0C(v0, qword_100182198);
  return AspectRatio.init(_:_:)();
}

__n128 sub_100048208(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004821C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100048264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000482D0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v7 = sub_100002BE4(&qword_10016BC00, &qword_100111298);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v20 = static Alignment.center.getter();
  v12 = v11;
  sub_1000486D8(a1, a2, a3, &v39);
  v60 = v43;
  v61 = v44;
  v62 = v45;
  v56 = v39;
  v57 = v40;
  v58 = v41;
  v59 = v42;
  v63[0] = v39;
  v63[1] = v40;
  v63[2] = v41;
  v63[3] = v42;
  v63[4] = v43;
  v63[5] = v44;
  v64 = v45;
  sub_100048A48(&v56, &v24);
  sub_100009908(v63, &qword_10016BC08, &qword_1001112A0);
  v36 = v60;
  v37 = v61;
  v38 = v62;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(&v54[6] + 7) = *&v54[21];
  *(&v54[8] + 7) = *&v54[23];
  *(&v54[10] + 7) = *&v54[25];
  *(&v54[12] + 7) = v55;
  *(v54 + 7) = *&v54[15];
  *(&v54[2] + 7) = *&v54[17];
  *(&v54[4] + 7) = *&v54[19];
  *&v24 = v20;
  *(&v24 + 1) = v12;
  v29 = v36;
  v30 = v37;
  v31[0] = v38;
  v25 = v32;
  v26 = v33;
  v28 = v35;
  v27 = v34;
  *&v31[49] = *&v54[6];
  *&v31[33] = *&v54[4];
  *&v31[17] = *&v54[2];
  *&v31[1] = *v54;
  *&v31[112] = *(&v55 + 1);
  *&v31[97] = *&v54[12];
  *&v31[81] = *&v54[10];
  *&v31[65] = *&v54[8];
  sub_100002BE4(&qword_10016BC10, &qword_1001112A8);
  sub_100048AB8();
  View.statusBar(hidden:)();
  v51 = *&v31[80];
  v52 = *&v31[96];
  v53 = *&v31[112];
  v47 = *&v31[16];
  v48 = *&v31[32];
  v49 = *&v31[48];
  v50 = *&v31[64];
  v43 = v28;
  v44 = v29;
  v45 = v30;
  v46 = *v31;
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  sub_100009908(&v39, &qword_10016BC10, &qword_1001112A8);
  swift_getKeyPath();
  *&v24 = a1;
  sub_100048D90(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1[3])
  {
    v13 = static Color.clear.getter();
  }

  else
  {
    v13 = static Color.black.getter();
  }

  v14 = v13;
  v15 = static Edge.Set.all.getter();
  v16 = v23;
  (*(v21 + 32))(v23, v10, v22);
  result = sub_100002BE4(&qword_10016BC30, &qword_1001112E0);
  v18 = v16 + *(result + 36);
  *v18 = v14;
  *(v18 + 8) = v15;
  return result;
}

__n128 sub_1000486D8@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  *&v16 = a1;
  sub_100048D90(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (a1[3])
  {
    v15 = a1[3];
  }

  else
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = a1[2];
    swift_getKeyPath();
    *&v16 = a1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = a1[4];

    State.init(wrappedValue:)();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    v12 = a2;
    swift_retain_n();
    v13 = v12;
  }

  sub_100002BE4(&qword_10016BC38, &qword_100111338);
  sub_100048C34();
  sub_100048C88(&qword_10016BC48, &qword_10016BC38, &qword_100111338, sub_100048D0C);
  _ConditionalContent<>.init(storage:)();
  *(a4 + 64) = v20;
  *(a4 + 80) = v21;
  *(a4 + 96) = v22;
  *a4 = v16;
  *(a4 + 16) = v17;
  result = v19;
  *(a4 + 32) = v18;
  *(a4 + 48) = v19;
  return result;
}

void sub_10004898C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  if (a2)
  {
    v5 = a2;
    a4();
  }

  else
  {
    type metadata accessor for AppDelegate();
    sub_100048D90(&qword_10016A710, type metadata accessor for AppDelegate);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100048A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BC08, &qword_1001112A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100048AB8()
{
  result = qword_10016BC18;
  if (!qword_10016BC18)
  {
    sub_10000459C(&qword_10016BC10, &qword_1001112A8);
    sub_100012C48(&qword_10016BC20, &qword_10016BC28, &qword_1001112B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC18);
  }

  return result;
}

uint64_t sub_100048BC0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100048C34()
{
  result = qword_10016BC40;
  if (!qword_10016BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC40);
  }

  return result;
}

uint64_t sub_100048C88(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048D3C()
{
  result = qword_10016BC60;
  if (!qword_10016BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC60);
  }

  return result;
}

uint64_t sub_100048D90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100048DDC()
{
  result = qword_10016BC68;
  if (!qword_10016BC68)
  {
    sub_10000459C(&qword_10016BC30, &qword_1001112E0);
    sub_10000459C(&qword_10016BC10, &qword_1001112A8);
    sub_100048AB8();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BC68);
  }

  return result;
}

uint64_t sub_100048ED4()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17AppleVisionProApp24TVContentRequestProvider_tvContentRequestCloudKitCoordinator;
  v3 = type metadata accessor for TVContentRequestCloudKitCoordinator();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC17AppleVisionProApp24TVContentRequestProvider___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVContentRequestProvider()
{
  result = qword_10016BCA8;
  if (!qword_10016BCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004900C()
{
  result = type metadata accessor for TVContentRequestCloudKitCoordinator();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000490F8()
{
  v1 = [objc_allocWithZone(UIImageView) initWithImage:*v0];
  [v1 setContentMode:1];
  return v1;
}

double sub_10004915C(uint64_t a1, char a2, uint64_t a3, char a4, double result)
{
  if ((a2 & 1) == 0 && (a4 & 1) == 0)
  {
    result = *&a1;
    if (*&a3 < *&a1)
    {
      result = *&a3;
    }

    if (result > 270.0)
    {
      return 270.0;
    }
  }

  return result;
}

uint64_t sub_1000491B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000492FC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100049218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000492FC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004927C()
{
  sub_1000492FC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000492A8()
{
  result = qword_10016BDA8;
  if (!qword_10016BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDA8);
  }

  return result;
}

unint64_t sub_1000492FC()
{
  result = qword_10016BDB0;
  if (!qword_10016BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDB0);
  }

  return result;
}

uint64_t sub_10004937C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v36 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v3 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v5 = &v35 - v4;
  v6 = type metadata accessor for PlainButtonStyle();
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100002BE4(&qword_10016BDC0, &unk_100111560);
  v11 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v13 = &v35 - v12;
  v14 = static VerticalAlignment.center.getter();
  v15 = *a1;
  v16 = a1[1];
  v18 = a1[2];
  v17 = a1[3];
  v41 = v15;
  v42 = v16;
  sub_100012928();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v16) = v22;
  v24 = v23;

  v25 = Image.init(systemName:)();
  LOBYTE(v16) = v16 & 1;
  sub_100003AE4(v19, v21, v16);

  sub_10001297C(v19, v21, v16);

  v50 = 0;
  v49 = v16;
  v41 = v14;
  v42 = 0x4018000000000000;
  v43 = 0;
  v44 = v19;
  v45 = v21;
  v46 = v16;
  v47 = v24;
  v48 = v25;
  PlainButtonStyle.init()();
  sub_100002BE4(&qword_10016BDE0, &unk_100111578);
  sub_100012C48(&qword_10016BDE8, &qword_10016BDE0, &unk_100111578);
  sub_100049C68(&qword_10016BDF0, &type metadata accessor for PlainButtonStyle);
  v26 = v39;
  View.buttonStyle<A>(_:)();
  (*(v40 + 8))(v10, v26);
  v27 = v16;
  v28 = v38;
  sub_10001297C(v19, v21, v27);

  v29 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v31 = &v13[*(sub_100002BE4(&qword_10016BDD8, &qword_100111570) + 36)];
  *v31 = KeyPath;
  v31[1] = v29;
  *&v13[*(v28 + 36)] = static HierarchicalShapeStyle.secondary.getter();
  v32 = enum case for DynamicTypeSize.accessibility2(_:);
  v33 = type metadata accessor for DynamicTypeSize();
  (*(*(v33 - 8) + 104))(v5, v32, v33);
  sub_100049C68(&qword_100169A78, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100049A30();
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    View.dynamicTypeSize<A>(_:)();
    sub_100049CB0(v5);
    return sub_100049D18(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000497CC()
{
  v1 = v0[2];
  v11 = v0[1];
  v12 = v1;
  v10 = *v0;
  v13 = v11;
  v14 = v10;
  v2 = swift_allocObject();
  v3 = v0[1];
  v2[1] = *v0;
  v2[2] = v3;
  v2[3] = v0[2];
  sub_1000499D4(&v14, v9);
  sub_1000499D4(&v13, v9);

  sub_100002BE4(&qword_10016BDB8, &qword_100111558);
  v4 = sub_10000459C(&qword_10016BDC0, &unk_100111560);
  v5 = sub_10000459C(&qword_100169A10, &qword_10010D450);
  v6 = sub_100049A30();
  v7 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  swift_getOpaqueTypeConformance2();
  return Button.init(action:label:)();
}

uint64_t sub_10004995C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000499A4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

unint64_t sub_100049A30()
{
  result = qword_10016BDC8;
  if (!qword_10016BDC8)
  {
    sub_10000459C(&qword_10016BDC0, &unk_100111560);
    sub_100049AE8();
    sub_100012C48(&qword_10016BDF8, &qword_10016BE00, &qword_100111588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDC8);
  }

  return result;
}

unint64_t sub_100049AE8()
{
  result = qword_10016BDD0;
  if (!qword_10016BDD0)
  {
    sub_10000459C(&qword_10016BDD8, &qword_100111570);
    sub_10000459C(&qword_10016BDE0, &unk_100111578);
    type metadata accessor for PlainButtonStyle();
    sub_100012C48(&qword_10016BDE8, &qword_10016BDE0, &unk_100111578);
    sub_100049C68(&qword_10016BDF0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BDD0);
  }

  return result;
}

uint64_t sub_100049C68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049CB0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049D18(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BDC0, &unk_100111560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v6, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11 = v13[0];
  (*(v2 + 8))(v6, v1);
  return v11;
}

uint64_t sub_100049FB4@<X0>(uint64_t a1@<X8>)
{
  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v6 & 1;
  v19 = static Font.footnote.getter();
  *&v24 = v2;
  *(&v24 + 1) = v4;
  LOBYTE(v25) = v18;
  *(&v25 + 1) = v8;
  LOBYTE(v26) = v9;
  *(&v26 + 1) = v11;
  *&v27 = v13;
  *(&v27 + 1) = v15;
  *&v28 = v17;
  BYTE8(v28) = 0;
  *&v29 = swift_getKeyPath();
  *(&v29 + 1) = v19;
  static Font.Weight.bold.getter();
  sub_100002BE4(&qword_10016BE78, &qword_100111730);
  sub_10004AA9C();
  View.fontWeight(_:)();
  v30[2] = v26;
  v30[3] = v27;
  v30[4] = v28;
  v30[5] = v29;
  v30[0] = v24;
  v30[1] = v25;
  sub_100009908(v30, &qword_10016BE78, &qword_100111730);
  v20 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002BE4(&qword_10016BE88, &qword_100111768);
  v23 = (a1 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = v20;
  return result;
}

uint64_t sub_10004A148@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for RoundedRectangle();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0);
  v7 = *(v6 - 8);
  v46 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6 - 8);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v13 = sub_100002BE4(&qword_10016BE48, &unk_1001116C8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v45 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = (&v44 - v18);
  v20 = &v44 + *(v17 + 44) - v18;
  v21 = *(v2 + 28);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  v24 = *(*(v23 - 8) + 104);
  v24(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #9.0 }

  v44 = _Q0;
  *v20 = _Q0;
  *&v20[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  *v19 = 17;
  v24(&v5[*(v2 + 28)], v22, v23);
  *v5 = v44;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_10004A67C(v5, v12);
  v30 = *&v49 * 0.5;
  v31 = &v12[*(sub_100002BE4(&qword_10016BE50, &qword_1001116D8) + 68)];
  sub_10004A67C(v5, v31);
  *(v31 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v30;
  v32 = v31 + *(sub_100002BE4(&qword_10016BE58, &qword_1001116E0) + 36);
  v33 = v50;
  *v32 = v49;
  *(v32 + 16) = v33;
  *(v32 + 32) = v51;
  *(v31 + *(sub_100002BE4(&qword_10016BE60, &qword_1001116E8) + 56)) = 256;
  v34 = static Alignment.center.getter();
  v36 = v35;
  sub_10004A6E0(v5);
  v37 = (v31 + *(sub_100002BE4(&qword_10016BE68, &qword_1001116F0) + 36));
  *v37 = v34;
  v37[1] = v36;
  static Color.white.getter();
  v38 = Color.opacity(_:)();

  *&v12[*(v46 + 44)] = v38;
  v39 = v45;
  sub_10004A73C(v19, v45);
  v40 = v47;
  sub_10004A7AC(v12, v47);
  v41 = v48;
  sub_10004A73C(v39, v48);
  v42 = sub_100002BE4(&qword_10016BE70, &qword_1001116F8);
  sub_10004A7AC(v40, v41 + *(v42 + 48));
  sub_10004A81C(v12);
  sub_100009908(v19, &qword_10016BE48, &unk_1001116C8);
  sub_10004A81C(v40);
  return sub_100009908(v39, &qword_10016BE48, &unk_1001116C8);
}

uint64_t sub_10004A52C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_100002BE4(&qword_10016BE18, &qword_100111698);
  sub_100049FB4(a1 + *(v5 + 44));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v6 = (a1 + *(sub_100002BE4(&qword_10016BE20, &qword_1001116A0) + 36));
  *v6 = v15;
  v6[1] = v16;
  v6[2] = v17;
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = a1 + *(sub_100002BE4(&qword_10016BE28, &qword_1001116A8) + 36);
  sub_10004A148(v10);
  v11 = (v10 + *(sub_100002BE4(&qword_10016BE30, &qword_1001116B0) + 36));
  *v11 = v7;
  v11[1] = v9;
  static Color.white.getter();
  v12 = Color.opacity(_:)();

  result = sub_100002BE4(&qword_10016BE38, &qword_1001116B8);
  v14 = (a1 + *(result + 36));
  *v14 = v12;
  v14[1] = 0x4018000000000000;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

uint64_t sub_10004A67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A6E0(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BE48, &unk_1001116C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A81C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BE40, &qword_1001116C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10004A884()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10004A8F4(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10004A9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004ADC4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004AA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004ADC4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004AA6C()
{
  sub_10004ADC4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10004AA9C()
{
  result = qword_10016BE80;
  if (!qword_10016BE80)
  {
    sub_10000459C(&qword_10016BE78, &qword_100111730);
    sub_10001D8A0();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE80);
  }

  return result;
}

unint64_t sub_10004AB70()
{
  result = qword_10016BE90;
  if (!qword_10016BE90)
  {
    sub_10000459C(&qword_10016BE38, &qword_1001116B8);
    sub_10004ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE90);
  }

  return result;
}

unint64_t sub_10004ABFC()
{
  result = qword_10016BE98;
  if (!qword_10016BE98)
  {
    sub_10000459C(&qword_10016BE28, &qword_1001116A8);
    sub_10004ACB4();
    sub_100012C48(&qword_10016BEB8, &qword_10016BE30, &qword_1001116B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BE98);
  }

  return result;
}

unint64_t sub_10004ACB4()
{
  result = qword_10016BEA0;
  if (!qword_10016BEA0)
  {
    sub_10000459C(&qword_10016BE20, &qword_1001116A0);
    sub_100012C48(&qword_10016BEA8, &qword_10016BEB0, &qword_100111798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEA0);
  }

  return result;
}

unint64_t sub_10004AD70()
{
  result = qword_10016BEC0;
  if (!qword_10016BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEC0);
  }

  return result;
}

unint64_t sub_10004ADC4()
{
  result = qword_10016BEC8;
  if (!qword_10016BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEC8);
  }

  return result;
}

id sub_10004AE18()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for LayerResizableUIView();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions:1];
  v2 = [v0 layer];
  v3 = [v2 sublayers];

  if (v3)
  {
    sub_10004B160();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v0 bounds];
        [v8 setFrame:?];
        [v8 removeAllAnimations];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  return [v1 commit];
}

id sub_10004B108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayerResizableUIView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10004B160()
{
  result = qword_10016AE98;
  if (!qword_10016AE98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016AE98);
  }

  return result;
}

void sub_10004B1BC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 layer];
  v6 = [v5 sublayers];

  if (v6)
  {
    sub_10004B160();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = a3;
    __chkstk_darwin(v8);
    v19[2] = &v20;
    v9 = sub_10008BEE8(sub_10004B5BC, v19, v7);

    if ((v9 & 1) == 0)
    {
      v10 = [a1 layer];
      v11 = [v10 sublayers];

      if (v11)
      {
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          goto LABEL_16;
        }

        for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v14 = 0;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_15;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            v17 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            [v15 removeFromSuperlayer];

            ++v14;
            if (v17 == i)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          ;
        }

LABEL_17:
      }

      v18 = [a1 layer];
      [v18 addSublayer:a3];
    }
  }
}

id sub_10004B3E0()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(type metadata accessor for LayerResizableUIView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = [v2 layer];
  [v3 addSublayer:v1];

  return v2;
}

uint64_t sub_10004B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B614();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10004B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B614();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10004B53C()
{
  sub_10004B614();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10004B568()
{
  result = qword_10016BEF8;
  if (!qword_10016BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BEF8);
  }

  return result;
}

uint64_t sub_10004B5BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_10004B160();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_10004B614()
{
  result = qword_10016BF00;
  if (!qword_10016BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF00);
  }

  return result;
}

uint64_t sub_10004B668(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001119B0;
  *(inited + 32) = 0x64695F64726163;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = String._bridgeToObjectiveC()();
  *(inited + 56) = 0x7079745F64726163;
  *(inited + 64) = 0xE900000000000065;
  sub_10004C784();
  *(inited + 72) = NSNumber.init(integerLiteral:)(a4);
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v7 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016BF20, &unk_1001119D0);
  swift_arrayDestroy();
  v8 = sub_10004F388(v7);

  sub_10004F388(v8);

  v10[3] = &_s20TetsuoAnalyticsEventON;
  v10[4] = sub_1000250D8();
  LOBYTE(v10[0]) = 3;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v10);
}

unint64_t sub_10004B818(char a1)
{
  result = 0x676B636142707041;
  switch(a1)
  {
    case 1:
      return 0x6765726F46707041;
    case 2:
      return 0x636E75614C707041;
    case 3:
      return 0x6E65704F64726143;
    case 4:
      return 0x4C746E65746E6F43;
    case 5:
      return 0xD000000000000011;
    case 6:
      v3 = 10;
      goto LABEL_14;
    case 7:
      return 0xD000000000000014;
    case 8:
      return 0xD000000000000010;
    case 9:
      return 0x6544794D6E65704FLL;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0xD000000000000017;
    case 12:
      return 0x764F5654776F6853;
    case 13:
      v3 = 11;
      goto LABEL_14;
    case 14:
      v3 = 13;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004BA38(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10004B818(*a1);
  v5 = v4;
  if (v3 == sub_10004B818(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10004BAC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004B818(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004BB24()
{
  sub_10004B818(*v0);
  String.hash(into:)();
}

Swift::Int sub_10004BB78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004B818(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10004BBD8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F8C4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10004BC08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10004B818(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10004BC34()
{
  v1 = *v0;
  _StringGuts.grow(_:)(25);

  v2._countAndFlagsBits = sub_10004B818(v1);
  String.append(_:)(v2);

  return 0xD000000000000017;
}

uint64_t sub_10004BCB4(void *a1, int a2)
{
  v47 = a2;
  v3 = sub_100002BE4(&qword_10016BFA0, &qword_100111C10);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  __chkstk_darwin(v3);
  v42 = &v36 - v5;
  v6 = sub_100002BE4(&qword_10016BFA8, &qword_100111C18);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v39 = &v36 - v8;
  v9 = sub_100002BE4(&qword_10016BFB0, &qword_100111C20);
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  __chkstk_darwin(v9);
  v36 = &v36 - v11;
  v12 = sub_100002BE4(&qword_10016BFB8, &qword_100111C28);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  v16 = sub_100002BE4(&qword_10016BFC0, &qword_100111C30);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v48 = sub_100002BE4(&qword_10016BFC8, &qword_100111C38);
  v20 = *(v48 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v48);
  v23 = &v36 - v22;
  v24 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_100050218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = (v20 + 8);
  if (v47 <= 1u)
  {
    v31 = v45;
    v30 = v46;
    if (v47)
    {
      v50 = 1;
      sub_100050368();
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v15, v12);
      return (*v25)(v23, v35);
    }

    v49 = 0;
    sub_1000503BC();
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v31 + 8))(v19, v16);
    return (*v25)(v23, v32);
  }

  if (v47 == 2)
  {
    v51 = 2;
    sub_100050314();
    v33 = v36;
    v32 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v37 + 8))(v33, v38);
    return (*v25)(v23, v32);
  }

  if (v47 == 3)
  {
    v52 = 3;
    sub_1000502C0();
    v26 = v39;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v40;
    v28 = v41;
  }

  else
  {
    v53 = 4;
    sub_10005026C();
    v26 = v42;
    v27 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v43;
    v28 = v44;
  }

  (*(v29 + 8))(v26, v28);
  return (*v25)(v23, v27);
}

uint64_t sub_10004C234@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10004C264(uint64_t a1)
{
  v2 = sub_100050368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C2A0(uint64_t a1)
{
  v2 = sub_100050368();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C2DC()
{
  v1 = *v0;
  v2 = 30324;
  v3 = 0x7972656C6C6167;
  v4 = 1668508013;
  if (v1 != 3)
  {
    v4 = 0x79726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7368801;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004F910(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004C38C(uint64_t a1)
{
  v2 = sub_100050218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C3C8(uint64_t a1)
{
  v2 = sub_100050218();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C404(uint64_t a1)
{
  v2 = sub_100050314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C440(uint64_t a1)
{
  v2 = sub_100050314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C47C(uint64_t a1)
{
  v2 = sub_1000502C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C4B8(uint64_t a1)
{
  v2 = sub_1000502C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C4F4(uint64_t a1)
{
  v2 = sub_10005026C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C530(uint64_t a1)
{
  v2 = sub_10005026C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004C56C(uint64_t a1)
{
  v2 = sub_1000503BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004C5A8(uint64_t a1)
{
  v2 = sub_1000503BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10004C5F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void sub_10004C650()
{
  v1 = *v0;
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
  NSObject.hash(into:)();
}

Swift::Int sub_10004C6BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10004C784();
  isa = NSNumber.init(integerLiteral:)(v1).super.super.isa;
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004C718@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004F784(*a1);
  *a2 = result;
  return result;
}

NSNumber sub_10004C744@<X0>(NSNumber *a1@<X8>)
{
  v3 = *v1;
  sub_10004C784();
  result.super.super.isa = NSNumber.init(integerLiteral:)(v3).super.super.isa;
  a1->super.super.isa = result.super.super.isa;
  return result;
}

unint64_t sub_10004C784()
{
  result = qword_10016BF10;
  if (!qword_10016BF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016BF10);
  }

  return result;
}

uint64_t sub_10004C7D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004FAB4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10004C818(uint64_t a1)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D3B0;
  *(inited + 32) = 0x7865646E69;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v3 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_10004F4B0(inited + 32);
  v4 = sub_10004F388(v3);

  sub_10004F388(v4);

  v6[3] = &_s20TetsuoAnalyticsEventON;
  v6[4] = sub_1000250D8();
  LOBYTE(v6[0]) = 6;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v6);
}

uint64_t sub_10004C92C(char a1)
{
  sub_100002BE4(&qword_10016BF18, &qword_1001119C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010D3B0;
  *(inited + 32) = 0x656C62616E457369;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v3 = sub_10000B6F0(inited);
  swift_setDeallocating();
  sub_10004F4B0(inited + 32);
  v4 = sub_10004F388(v3);

  sub_10004F388(v4);

  v6[3] = &_s20TetsuoAnalyticsEventON;
  v6[4] = sub_1000250D8();
  LOBYTE(v6[0]) = 7;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  return sub_1000052E4(v6);
}

uint64_t sub_10004CA48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_10016BF28, &qword_1001119F8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = 8 * (v18 | (v9 << 6));
      v22 = *(*(v5 + 48) + v21);
      v23 = *(v5 + 56) + v21;
      if (a2)
      {
        sub_100008A5C(v23, v34);
      }

      else
      {
        sub_100008A24(v23, v34);
      }

      v24 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 8 * v16;
      *(*(v8 + 48) + v17) = v22;
      result = sub_100008A5C(v34, *(v8 + 56) + v17);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}