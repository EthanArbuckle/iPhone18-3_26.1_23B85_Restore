unint64_t sub_100406FB8()
{
  v0 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v1 - 8);
  v3 = v18 - v2;
  v4 = type metadata accessor for LocalizedStringResource();
  v21 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  sub_100140278(&qword_1008EC718);
  v6 = sub_100140278(&qword_1008EC720);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 72);
  v9 = swift_allocObject();
  v23 = v9;
  *(v9 + 16) = xmmword_1006D6950;
  v10 = (v9 + v7);
  *v10 = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v11 = *(v5 + 56);
  v24 = v5 + 56;
  v22 = v11;
  v11(v3, 1, 1, v4);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v20 = v10;
  DisplayRepresentation.init(title:subtitle:image:)();
  v19 = v8;
  v10[v8] = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v13 = v21;
  v12 = v22;
  v22(v3, 1, 1, v21);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v14 = 2 * v8;
  v15 = v20;
  v18[1] = *(v6 + 48);
  v20[v14] = 2;
  LocalizedStringResource.init(stringLiteral:)();
  v12(v3, 1, 1, v13);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v15[v14 + v19] = 3;
  LocalizedStringResource.init(stringLiteral:)();
  v12(v3, 1, 1, v13);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v16 = sub_1004CBD98(v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v16;
}

unint64_t sub_100407458(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100845980, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1004074A4()
{
  result = qword_1008EC738;
  if (!qword_1008EC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC738);
  }

  return result;
}

double sub_1004074F8(_OWORD *a1)
{
  result = 0.0;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_100407520()
{
  result = qword_1008EC770;
  if (!qword_1008EC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC770);
  }

  return result;
}

unint64_t sub_100407574()
{
  result = qword_1008EC7A0;
  if (!qword_1008EC7A0)
  {
    sub_100141EEC(&qword_1008EC780);
    sub_100407834(&qword_1008EC7A8, type metadata accessor for WorkoutStatView);
    sub_10014A6B0(&qword_1008EC7B0, &qword_1008EC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC7A0);
  }

  return result;
}

unint64_t sub_1004076D0()
{
  result = qword_1008EC7B8;
  if (!qword_1008EC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC7B8);
  }

  return result;
}

uint64_t sub_100407778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1004077E0()
{
  result = qword_1008EC858;
  if (!qword_1008EC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC858);
  }

  return result;
}

uint64_t sub_100407834(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10040787C()
{
  result = qword_1008EC900;
  if (!qword_1008EC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EC900);
  }

  return result;
}

id sub_1004079F4()
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v0 setFont:v1];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v2];

  [v0 setScrollEnabled:0];
  [v0 setEditable:0];
  [v0 _setInteractiveTextSelectionDisabled:1];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return [v0 setAdjustsFontForContentSizeCategory:1];
}

id sub_100407B04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendsFooterTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100407B70()
{
  sub_1000059F8(0, &qword_1008F73C0);
  v0 = UIFontDescriptorSystemDesignRounded;
  v1 = static UIFont.systemFont(ofSize:weight:design:)();

  qword_1008ECA58 = v1;
}

id sub_100407BF4()
{
  result = sub_100407C14();
  qword_1008ECA60 = result;
  return result;
}

id sub_100407C14()
{
  sub_100140278(&qword_1008EC090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100140278(&qword_1008EC098);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  sub_100140278(&qword_1008EC0A0);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_1006D1F70;
  v3 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(v2 + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  v4 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(v2 + 40) = 38;
  *(v2 + 48) = v4;
  *(v2 + 56) = 1;
  v5 = UIFontDescriptorFeatureSettingsAttribute;
  v6 = v3;
  v7 = v4;
  v8 = sub_1004C9778(v2);
  swift_setDeallocating();
  sub_100140278(&qword_1008EC0A8);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(inited + 40) = v1;
  v9 = sub_1004C9D90(inited);
  swift_setDeallocating();
  sub_1003E7E44(inited + 32);
  if (qword_1008DAAC8 != -1)
  {
    swift_once();
  }

  v10 = qword_1008ECA58;
  v11 = [qword_1008ECA58 fontDescriptor];
  sub_100376848(v9);

  type metadata accessor for AttributeName(0);
  sub_10005FB9C(&qword_1008DBA98, type metadata accessor for AttributeName);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = [v11 fontDescriptorByAddingAttributes:isa];

  [v10 pointSize];
  v15 = [objc_opt_self() fontWithDescriptor:v13 size:v14];

  return v15;
}

void sub_100407EE0(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 defaultFontForTextStyle:v6];

  *a3 = v7;
}

id sub_100407F7C()
{
  result = [objc_opt_self() fu_sausageFontOfSize:30.0];
  qword_1008ECA78 = result;
  return result;
}

id sub_100407FE8(uint64_t a1, void *a2, void **a3, void **a4)
{
  if (*a2 != -1)
  {
    v7 = a4;
    v8 = a3;
    swift_once();
    a3 = v8;
    a4 = v7;
  }

  v5 = *a3;
  *a4 = *a3;

  return v5;
}

id sub_100408048()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager) stringWithDuration:3 durationFormat:?];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    Double.write<A>(to:)();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v4 = objc_opt_self();
  v5 = NSForegroundColorAttributeName;
  result = [v4 elapsedTimeColors];
  if (result)
  {
    v7 = result;
    v8 = [result nonGradientTextColor];

    v9 = sub_100140278(&qword_1008ECAC0);
    *(inited + 40) = v8;
    *(inited + 64) = v9;
    *(inited + 72) = NSFontAttributeName;
    v10 = qword_1008DAAE8;
    v11 = NSFontAttributeName;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_1008ECA78;
    *(inited + 104) = sub_100140278(&unk_1008EB5C8);
    *(inited + 80) = v12;
    v13 = v12;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730);
    swift_arrayDestroy();
    v14 = objc_allocWithZone(NSAttributedString);
    v15 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v17 = [v14 initWithString:v15 attributes:isa];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1004082F8(double a1)
{
  v3 = swift_slowAlloc();
  v4 = *(v1 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager);
  result = [v4 unitManager];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  v7 = [result userDistanceUnitForDistanceType:1];

  *v3 = v7;
  sub_1000059F8(0, &qword_1008E1768);
  v8 = static FIUIWorkoutActivityType.indoorRun.getter();
  v9 = FIUIDistanceTypeForActivityType();

  v10 = [v4 localizedNaturalScaleStringWithDistanceInMeters:v9 distanceType:0 unitStyle:v3 usedUnit:2 decimalTrimmingMode:a1];
  if (v10)
  {
    v11 = v10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v13 = objc_opt_self();
  v37 = NSForegroundColorAttributeName;
  result = [v13 distanceColors];
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = result;
  v15 = [result nonGradientTextColor];

  v16 = sub_100140278(&qword_1008ECAC0);
  *(inited + 40) = v15;
  v36 = v16;
  *(inited + 64) = v16;
  *(inited + 72) = NSFontAttributeName;
  v17 = qword_1008DAAF0;
  v35 = NSFontAttributeName;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1008ECA80;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8);
  *(inited + 80) = v18;
  v19 = v18;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v20 = objc_allocWithZone(NSAttributedString);
  v21 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v23 = [v20 initWithString:v21 attributes:isa];

  result = [v4 localizedShortUnitStringForDistanceUnit:*v3];
  if (!result)
  {
    goto LABEL_14;
  }

  v24 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_1006D1F70;
  *(v25 + 32) = v37;
  result = [v13 distanceColors];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v26 = result;

  v27 = [v26 nonGradientTextColor];

  *(v25 + 40) = v27;
  *(v25 + 64) = v36;
  *(v25 + 72) = v35;
  if (qword_1008DAAD0 != -1)
  {
    swift_once();
  }

  v28 = qword_1008ECA60;
  *(v25 + 104) = sub_1000059F8(0, &qword_1008F73C0);
  *(v25 + 80) = v28;
  v29 = v28;
  sub_1004C9200(v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  v30 = objc_allocWithZone(NSAttributedString);
  v31 = String._bridgeToObjectiveC()();

  v32 = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithString:v31 attributes:v32];

  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];
  [v34 appendAttributedString:v33];

  return v34;
}

id sub_10040885C(double a1)
{
  v3 = [objc_opt_self() kilocalorieUnit];
  v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:a1];

  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager);
  v6 = [v5 localizedStringWithActiveEnergy:v4];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = objc_opt_self();
  v35 = NSForegroundColorAttributeName;
  result = [v9 energyColors];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v34 = v4;
  v12 = [result nonGradientTextColor];

  v13 = sub_100140278(&qword_1008ECAC0);
  *(inited + 40) = v12;
  v33 = v13;
  *(inited + 64) = v13;
  *(inited + 72) = NSFontAttributeName;
  v14 = qword_1008DAAF0;
  v32 = NSFontAttributeName;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1008ECA80;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8);
  *(inited + 80) = v15;
  v16 = v15;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(NSAttributedString);
  v18 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithString:v18 attributes:isa];

  result = [v5 localizedShortActiveEnergyUnitString];
  if (!result)
  {
    goto LABEL_12;
  }

  v21 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1006D1F70;
  *(v22 + 32) = v35;
  result = [v9 energyColors];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v23 = result;

  v24 = [v23 nonGradientTextColor];

  *(v22 + 40) = v24;
  *(v22 + 64) = v33;
  *(v22 + 72) = v32;
  if (qword_1008DAAD0 != -1)
  {
    swift_once();
  }

  v25 = qword_1008ECA60;
  *(v22 + 104) = sub_1000059F8(0, &qword_1008F73C0);
  *(v22 + 80) = v25;
  v26 = v25;
  sub_1004C9200(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = objc_allocWithZone(NSAttributedString);
  v28 = String._bridgeToObjectiveC()();

  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = [v27 initWithString:v28 attributes:v29];

  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  [v31 appendAttributedString:v30];

  return v31;
}

void sub_100408D88()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizationKeyForEnergyBaseKey:v2];

  if (v3)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_100408E70(double a1)
{
  v3 = [objc_opt_self() kilocalorieUnit];
  v4 = [objc_opt_self() quantityWithUnit:v3 doubleValue:a1];

  v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager);
  v6 = [v5 localizedStringWithActiveEnergy:v4];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = objc_opt_self();
  v36 = NSForegroundColorAttributeName;

  result = [v9 energyColors];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = result;
  v35 = v9;
  v34 = v4;
  v12 = [result nonGradientTextColor];

  v13 = sub_100140278(&qword_1008ECAC0);
  *(inited + 40) = v12;
  v33 = v13;
  *(inited + 64) = v13;
  *(inited + 72) = NSFontAttributeName;
  v14 = qword_1008DAAF0;
  v32 = NSFontAttributeName;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_1008ECA80;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8);
  *(inited + 80) = v15;
  v16 = v15;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v17 = objc_allocWithZone(NSAttributedString);
  v18 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v20 = [v17 initWithString:v18 attributes:isa];

  result = [v5 localizedShortActiveEnergyUnitString];
  if (!result)
  {
    goto LABEL_12;
  }

  v21 = result;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();

  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1006D1F70;
  *(v22 + 32) = v36;
  result = [v35 energyColors];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v23 = result;

  v24 = [v23 nonGradientTextColor];

  *(v22 + 40) = v24;
  *(v22 + 64) = v33;
  *(v22 + 72) = v32;
  if (qword_1008DAAD0 != -1)
  {
    swift_once();
  }

  v25 = qword_1008ECA60;
  *(v22 + 104) = sub_1000059F8(0, &qword_1008F73C0);
  *(v22 + 80) = v25;
  v26 = v25;
  sub_1004C9200(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = objc_allocWithZone(NSAttributedString);
  v28 = String._bridgeToObjectiveC()();

  v29 = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = [v27 initWithString:v28 attributes:v29];

  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  [v31 appendAttributedString:v30];

  return v31;
}

void sub_1004093AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp22StackFormattingManager_fiuiFormattingManager);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizationKeyForEnergyBaseKey:v2];

  if (v3)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_1004094C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackFormattingManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100409544(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for FitnessPlusStackViewModel() + 20));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = 0.0;
    do
    {
      sub_100007C5C(v3, v49);
      v5 = v50;
      v6 = v51;
      sub_1000066AC(v49, v50);
      v4 = v4 + (*(v6 + 40))(v5, v6);
      sub_100005A40(v49);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v7.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
  v8 = [objc_opt_self() stringWithNumber:v7.super.super.isa decimalPrecision:1 roundingMode:6];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0xE100000000000000;
    v10 = 48;
  }

  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  v17 = v16;
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v13 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 localizedStringForKey:v22 value:0 table:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v49[0] = v24;
  v49[1] = v26;
  sub_10000FCBC();
  StringProtocol.localizedUppercase.getter();
  v27 = String._bridgeToObjectiveC()();

  sub_1000059F8(0, &qword_1008DB888);
  sub_100140278(&unk_1008E4E50);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006D1F70;
  *(v28 + 56) = &type metadata for String;
  v29 = sub_10000A788();
  *(v28 + 32) = v10;
  *(v28 + 40) = v12;
  *(v28 + 96) = &type metadata for String;
  *(v28 + 104) = v29;
  *(v28 + 64) = v29;
  *(v28 + 72) = v18;
  *(v28 + 80) = v20;

  v30 = NSString.init(format:_:)();
  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v32 = objc_opt_self();
  v33 = v30;
  v34 = NSForegroundColorAttributeName;
  v35 = [v32 elapsedTimeColors];
  if (v35)
  {
    v36 = v35;

    v37 = [v36 nonGradientTextColor];

    v38 = sub_100140278(&qword_1008ECAC0);
    *(inited + 40) = v37;
    *(inited + 64) = v38;
    *(inited + 72) = NSFontAttributeName;
    v39 = qword_1008DAAC8;
    v40 = NSFontAttributeName;
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = qword_1008ECA58;
    *(inited + 104) = sub_1000059F8(0, &qword_1008F73C0);
    *(inited + 80) = v41;
    v42 = v41;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    type metadata accessor for Key(0);
    sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v45 = [v43 initWithString:v33 attributes:isa];

    v46 = [v33 rangeOfString:v17];
    v48 = v47;

    if (qword_1008DAAD0 != -1)
    {
      swift_once();
    }

    [v45 addAttribute:v40 value:qword_1008ECA60 range:{v46, v48, 2, 4}];
  }

  else
  {

    __break(1u);
  }
}

id sub_100409AF0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v4 = objc_opt_self();
  v5 = NSForegroundColorAttributeName;
  v6 = [v4 labelColor];
  v7 = sub_1000059F8(0, &qword_1008E7FC0);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSFontAttributeName;
  v8 = qword_1008DAAC0;
  v9 = NSFontAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1008ECA50;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8);
  *(inited + 80) = v10;
  v11 = v10;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v12 = objc_allocWithZone(NSAttributedString);
  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithString:v2 attributes:isa];

  return v14;
}

id sub_100409D88()
{
  v0 = [objc_opt_self() timeDateFormatter];
  type metadata accessor for FitnessPlusStackViewModel();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = Date._bridgeToObjectiveC()().super.isa;
  v4 = [v0 stringFromDate:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = 9666786;
  v8._object = 0xA300000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = v7;
  String.append(_:)(v9);

  sub_100140278(&unk_1008E7FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  *(inited + 32) = NSForegroundColorAttributeName;
  v11 = objc_opt_self();
  v12 = NSForegroundColorAttributeName;
  v13 = [v11 secondaryLabelColor];
  v14 = sub_1000059F8(0, &qword_1008E7FC0);
  *(inited + 40) = v13;
  *(inited + 64) = v14;
  *(inited + 72) = NSFontAttributeName;
  v15 = qword_1008DAAE0;
  v16 = NSFontAttributeName;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_1008ECA70;
  *(inited + 104) = sub_100140278(&unk_1008EB5C8);
  *(inited + 80) = v17;
  v18 = v17;
  sub_1004C9200(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EE730);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(NSAttributedString);
  v20 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10005FB9C(&qword_1008E7FD0, type metadata accessor for Key);
  v21 = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v19 initWithString:v20 attributes:v21];

  return v22;
}

unint64_t sub_10040A09C()
{
  result = qword_1008ECAC8;
  if (!qword_1008ECAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAC8);
  }

  return result;
}

unint64_t sub_10040A0F4()
{
  result = qword_1008ECAD0;
  if (!qword_1008ECAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAD0);
  }

  return result;
}

unint64_t sub_10040A14C()
{
  result = qword_1008ECAD8;
  if (!qword_1008ECAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAD8);
  }

  return result;
}

unint64_t sub_10040A1A4()
{
  result = qword_1008ECAE0;
  if (!qword_1008ECAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAE0);
  }

  return result;
}

uint64_t sub_10040A250()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008DEC70);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = sub_100140278(&qword_1008DEC88);
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v60 = &v54 - v6;
  v7 = sub_100140278(&qword_1008DEC58);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - v9;
  v11 = [objc_opt_self() mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 localizedStringForKey:v12 value:0 table:0];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v59 = *(v1 + 64);
  AppDependency.wrappedValue.getter();
  v17 = v64;
  EntityProperty.wrappedValue.getter();
  Measurement.value.getter();
  v19 = v18;
  v57 = *(v8 + 8);
  v57(v10, v7);
  v20 = [v17 stringWithDuration:3 durationFormat:v19];

  v58 = v14;
  if (v20)
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {

    v61 = v14;
    v22 = v16;
  }

  EntityProperty.wrappedValue.getter();
  v24 = v62;
  v23 = v63;
  if ((*(v62 + 48))(v4, 1, v63) == 1)
  {

    sub_10000EA04(v4, &qword_1008DEC70);
    return v61;
  }

  else
  {
    v56 = v16;
    v26 = v60;
    (*(v24 + 32))(v60, v4, v23);
    if (*(v1 + 56))
    {
      (*(v24 + 8))(v26, v23);

      return v61;
    }

    else
    {
      v55 = v22;
      v27 = *(v1 + 48);
      v28 = [objc_opt_self() meterUnit];
      Measurement.value.getter();
      v30 = [objc_opt_self() quantityWithUnit:v28 doubleValue:v29];

      v31 = FIUIPaceFormatForDistanceType();
      AppDependency.wrappedValue.getter();
      v32 = v64;
      v33 = v30;
      EntityProperty.wrappedValue.getter();
      Measurement.value.getter();
      v35 = v34;
      v57(v10, v7);
      v36 = v27;
      v37 = [v32 localizedPaceStringWithDistance:v33 overDuration:v31 paceFormat:v27 distanceType:v35];

      if (v37)
      {
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = v56;
        v41 = v58;
      }

      else
      {
        v40 = v56;

        v41 = v58;
        v57 = v58;
        v39 = v40;
      }

      AppDependency.wrappedValue.getter();
      v42 = v63;
      v43 = v64;
      v44 = v60;
      Measurement.value.getter();
      v45 = [v43 localizedStringWithDistanceInMeters:v36 distanceType:1 unitStyle:?];

      v46 = v62;
      if (v45)
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        v40 = v48;
      }

      v64 = v41;
      v65 = v40;
      v49._countAndFlagsBits = 548913696;
      v49._object = 0xA400000000000000;
      String.append(_:)(v49);
      v50._countAndFlagsBits = v61;
      v50._object = v55;
      String.append(_:)(v50);

      v51._countAndFlagsBits = 548913696;
      v51._object = 0xA400000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = v57;
      v52._object = v39;
      String.append(_:)(v52);

      v53 = v64;
      (*(v46 + 8))(v44, v42);
      return v53;
    }
  }
}

uint64_t sub_10040A818()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v1 = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_100925928 = v0;
  unk_100925930 = v1;
  qword_100925938 = result;
  return result;
}

uint64_t sub_10040A924()
{
  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v0, qword_100925940);
  sub_10001AC90(v0, qword_100925940);
  return TypeDisplayRepresentation.init(stringLiteral:)();
}

uint64_t sub_10040A994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008DDB78);
  __chkstk_darwin(v2 - 8);
  v3 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  v19._countAndFlagsBits = 0x20746E656D676553;
  v19._object = 0xE800000000000000;
  result = EntityProperty.wrappedValue.getter();
  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    ++v18;
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = a1;
    String.append(_:)(v12);

    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
    LocalizedStringResource.init(stringInterpolation:)();
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    v15._countAndFlagsBits = sub_10040A250();
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v15);

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    LocalizedStringResource.init(stringInterpolation:)();
    (*(v7 + 56))(v5, 0, 1, v6);
    DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
    return DisplayRepresentation.init(title:subtitle:image:)();
  }

  return result;
}

uint64_t sub_10040ACB8@<X0>(void *a1@<X8>)
{
  if (qword_1008DAAF8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_100925930;
  v2 = qword_100925938;
  *a1 = qword_100925928;
  a1[1] = v1;
  a1[2] = v2;
}

unint64_t sub_10040AD48()
{
  result = qword_1008ECAF0;
  if (!qword_1008ECAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAF0);
  }

  return result;
}

unint64_t sub_10040AD9C()
{
  result = qword_1008ECAF8;
  if (!qword_1008ECAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECAF8);
  }

  return result;
}

unint64_t sub_10040ADF0()
{
  result = qword_1008ECB00;
  if (!qword_1008ECB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECB00);
  }

  return result;
}

unint64_t sub_10040AE48()
{
  result = qword_1008ECB08;
  if (!qword_1008ECB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECB08);
  }

  return result;
}

uint64_t sub_10040AED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutSegmentIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10040AF10@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAB00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_100925940);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10040AFBC()
{
  result = qword_1008ECB18;
  if (!qword_1008ECB18)
  {
    sub_100141EEC(&qword_1008ECB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECB18);
  }

  return result;
}

uint64_t sub_10040B020(uint64_t a1)
{
  v2 = sub_1002CC35C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10040B070()
{
  result = qword_1008ECB28;
  if (!qword_1008ECB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECB28);
  }

  return result;
}

uint64_t sub_10040B0C8(uint64_t a1)
{
  v2 = sub_10040AE48();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10040B114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7865646E69;
  }

  else
  {
    v3 = 0x4974756F6B726F77;
  }

  if (v2)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7865646E69;
  }

  else
  {
    v5 = 0x4974756F6B726F77;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10040B1BC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10040B240()
{
  String.hash(into:)();
}

Swift::Int sub_10040B2B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10040B330@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100845A28, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10040B390(uint64_t *a1@<X8>)
{
  v2 = 0x4974756F6B726F77;
  if (*v1)
  {
    v2 = 0x7865646E69;
  }

  v3 = 0xE900000000000064;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10040B3D0()
{
  if (*v0)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x4974756F6B726F77;
  }
}

uint64_t sub_10040B40C@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100845A28, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10040B470(uint64_t a1)
{
  v2 = sub_10040D2A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10040B4AC(uint64_t a1)
{
  v2 = sub_10040D2A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10040B4E8()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  sub_10040AED0(&qword_1008ECC08);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;
  static String.Encoding.utf8.getter();
  v9 = String.init(data:encoding:)();
  if (v10)
  {
    v11 = v9;
    sub_10000AF88(v6, v8);
  }

  else
  {
    sub_10040D24C();
    swift_allocError();
    swift_willThrow();
    sub_10000AF88(v6, v8);
    static os_log_type_t.error.getter();
    v2 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1006D1F70;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = sub_10000A788();
    *(v3 + 32) = 0xD000000000000016;
    *(v3 + 40) = 0x8000000100750300;
    v4 = v2;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 96) = sub_1000059F8(0, &qword_1008E56F0);
    *(v3 + 104) = sub_10028E1EC();
    *(v3 + 72) = v5;
    os_log(_:dso:log:_:_:)();

    v11 = 0;
  }

  return v11;
}

uint64_t sub_10040B7B8(void *a1)
{
  v3 = v1;
  v5 = sub_100140278(&qword_1008ECC28);
  v13 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_1000066AC(a1, a1[3]);
  sub_10040D2A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v13;
    v15 = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v9;
    v14 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v8 + 8))(v7, v5);
    *(v3 + 32) = v10;
  }

  sub_100005A40(a1);
  return v3;
}

uint64_t sub_10040B9AC(void *a1)
{
  v3 = sub_100140278(&qword_1008ECC18);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000066AC(a1, a1[3]);
  sub_10040D2A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10040BB2C()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_10040AED0(&qword_1008ECC00);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100145150(v4, v6);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10040BE2C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100845A78, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10040BE80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10040BEB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_10040B7B8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10040BF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10040B4E8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10040BF84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10040BB2C();
  *a1 = result;
  return result;
}

Swift::Int sub_10040BFE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  return Hasher._finalize()();
}

void sub_10040C034()
{
  v1 = *v0;
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
}

Swift::Int sub_10040C06C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  return Hasher._finalize()();
}

BOOL sub_10040C0BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v3 + 24))
  {
    return *(v2 + 32) == *(v3 + 32);
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return *(v2 + 32) == *(v3 + 32);
  }

  return result;
}

__n128 sub_10040C128@<Q0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a5;
  v114 = a4;
  v119 = a3;
  v115 = a2;
  v120 = a6;
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v118 = sub_100140278(&qword_1008DEC58);
  v117 = *(v118 - 8);
  v8 = __chkstk_darwin(v118);
  v113 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v112 = &v100 - v11;
  __chkstk_darwin(v10);
  v123 = &v100 - v12;
  v13 = sub_100140278(&qword_1008ECBE8);
  v14 = __chkstk_darwin(v13 - 8);
  v103 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v104 = &v100 - v16;
  v121 = sub_100140278(&qword_1008ECBF0);
  v105 = *(v121 - 8);
  __chkstk_darwin(v121);
  v18 = &v100 - v17;
  v19 = sub_100140278(&qword_1008DEC98);
  v20 = __chkstk_darwin(v19 - 8);
  v110 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v111 = &v100 - v23;
  v24 = __chkstk_darwin(v22);
  v124 = &v100 - v25;
  __chkstk_darwin(v24);
  v122 = &v100 - v26;
  v27 = sub_100140278(&qword_1008DED28);
  v28 = __chkstk_darwin(v27 - 8);
  v109 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v108 = &v100 - v31;
  v32 = __chkstk_darwin(v30);
  v127 = &v100 - v33;
  __chkstk_darwin(v32);
  v35 = &v100 - v34;
  v36 = sub_100140278(&qword_1008DEC70);
  v37 = __chkstk_darwin(v36 - 8);
  v107 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v106 = &v100 - v40;
  v41 = __chkstk_darwin(v39);
  v125 = &v100 - v42;
  __chkstk_darwin(v41);
  v44 = &v100 - v43;
  v45 = sub_100140278(&qword_1008DEC88);
  v46 = *(*(v45 - 8) + 56);
  v126 = v44;
  v46(v44, 1, 1, v45);
  v47 = sub_100140278(&qword_1008DED40);
  v48 = *(v47 - 8);
  v49 = *(v48 + 56);
  v50 = v48 + 56;
  v128 = v35;
  v49(v35, 1, 1, v47);
  v51 = [a1 distance];
  v129 = a1;
  if (v51)
  {
    v52 = v51;
    v102 = v50;
    v53 = [objc_opt_self() meterUnit];
    [v52 doubleValueForUnit:v53];
    v55 = v54;

    if (v55 <= 0.0)
    {

      a1 = v129;
    }

    else
    {
      v56 = [objc_opt_self() meters];
      sub_1000059F8(0, &qword_1008DEE38);
      v57 = v18;
      v58 = v125;
      Measurement.init(value:unit:)();
      v101 = v49;
      v59 = v126;
      sub_10000EA04(v126, &qword_1008DEC70);
      v46(v58, 0, 1, v45);
      v60 = v58;
      v18 = v57;
      sub_100015E80(v60, v59, &qword_1008DEC70);
      a1 = v129;
      [v129 elapsedTime];
      v61 = [objc_opt_self() metersPerSecond];
      sub_1000059F8(0, &qword_1008DEE28);
      v62 = v127;
      Measurement.init(value:unit:)();

      v63 = v128;
      sub_10000EA04(v128, &qword_1008DED28);
      v101(v62, 0, 1, v47);
      sub_100015E80(v62, v63, &qword_1008DED28);
    }
  }

  v64 = sub_100140278(&qword_1008DECB0);
  v65 = *(*(v64 - 8) + 56);
  v66 = v122;
  v65(v122, 1, 1, v64);
  v67 = [a1 activeEnergy];
  if (!v67)
  {
    v74 = v104;
    (*(v105 + 56))(v104, 1, 1, v121);
LABEL_11:
    sub_10000EA04(v74, &qword_1008ECBE8);
    goto LABEL_16;
  }

  v68 = v67;
  v69 = [v67 _foundationMeasurement];

  v70 = v105;
  if (v69)
  {
    sub_1000059F8(0, &qword_1008ECBF8);
    v71 = v103;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = 0;
    v73 = v121;
  }

  else
  {
    v72 = 1;
    v73 = v121;
    v71 = v103;
  }

  (*(v70 + 56))(v71, v72, 1, v73);
  v74 = v104;
  sub_100015E80(v71, v104, &qword_1008ECBE8);
  v75 = (*(v70 + 48))(v74, 1, v73);
  a1 = v129;
  if (v75 == 1)
  {
    goto LABEL_11;
  }

  (*(v70 + 32))(v18, v74, v73);
  v76 = v18;
  v77 = v70;
  v78 = Measurement.unit.getter();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    Measurement.value.getter();
    sub_1000059F8(0, &qword_1008DEE40);
    v79 = v73;
    v80 = v124;
    Measurement.init(value:unit:)();
    (*(v77 + 8))(v76, v79);
    sub_10000EA04(v66, &qword_1008DEC98);
    v65(v80, 0, 1, v64);
    sub_100015E80(v80, v66, &qword_1008DEC98);
  }

  else
  {

    (*(v77 + 8))(v76, v73);
  }

  a1 = v129;
LABEL_16:
  [a1 elapsedTime];
  v81 = [objc_opt_self() seconds];
  sub_1000059F8(0, &qword_1008DEE10);
  v82 = v123;
  Measurement.init(value:unit:)();
  v83 = v125;
  sub_10001B104(v126, v125, &qword_1008DEC70);
  sub_10001B104(v128, v127, &qword_1008DED28);
  sub_10001B104(v66, v124, &qword_1008DEC98);
  sub_100140278(&qword_1008DEDD0);
  LocalizedStringResource.init(stringLiteral:)();
  v103 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDD8);
  LocalizedStringResource.init(stringLiteral:)();
  v102 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDE8);
  LocalizedStringResource.init(stringLiteral:)();
  v104 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEDE0);
  LocalizedStringResource.init(stringLiteral:)();
  v101 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DEE08);
  LocalizedStringResource.init(stringLiteral:)();
  v121 = EntityProperty<>.init(title:)();
  sub_100140278(&qword_1008DD150);
  type metadata accessor for AppDependencyManager();
  v138 = 0u;
  v139 = 0u;
  v140 = 0;
  static AppDependencyManager.shared.getter();
  v105 = AppDependency.__allocating_init(key:manager:)();
  v132 = 0;
  type metadata accessor for WorkoutSegmentIdentifier();
  v84 = swift_allocObject();
  v85 = v116;
  v84[2] = v114;
  v84[3] = v85;
  v86 = v115;
  v84[4] = v115;
  *&v138 = v86;
  EntityProperty.wrappedValue.setter();
  v87 = v117;
  v88 = *(v117 + 16);
  v89 = v112;
  v90 = v118;
  v88(v112, v82, v118);
  v88(v113, v89, v90);
  EntityProperty.wrappedValue.setter();
  v117 = *(v87 + 8);
  (v117)(v89, v90);
  v91 = v106;
  sub_10001B104(v83, v106, &qword_1008DEC70);
  sub_10001B104(v91, v107, &qword_1008DEC70);
  EntityProperty.wrappedValue.setter();
  sub_10000EA04(v91, &qword_1008DEC70);
  v92 = v127;
  v93 = v108;
  sub_10001B104(v127, v108, &qword_1008DED28);
  sub_10001B104(v93, v109, &qword_1008DED28);
  EntityProperty.wrappedValue.setter();
  sub_10000EA04(v93, &qword_1008DED28);
  v94 = v124;
  v95 = v111;
  sub_10001B104(v124, v111, &qword_1008DEC98);
  sub_10001B104(v95, v110, &qword_1008DEC98);
  v96 = v104;
  EntityProperty.wrappedValue.setter();

  sub_10000EA04(v95, &qword_1008DEC98);
  sub_10000EA04(v94, &qword_1008DEC98);
  sub_10000EA04(v92, &qword_1008DED28);
  sub_10000EA04(v125, &qword_1008DEC70);
  (v117)(v123, v90);
  sub_10000EA04(v122, &qword_1008DEC98);
  sub_10000EA04(v128, &qword_1008DED28);
  sub_10000EA04(v126, &qword_1008DEC70);
  *&v133 = v84;
  *(&v133 + 1) = v103;
  v134.n128_u64[0] = v102;
  v134.n128_u64[1] = v96;
  *&v135 = v101;
  *(&v135 + 1) = v121;
  *&v136 = v119;
  *(&v136 + 9) = *v131;
  HIDWORD(v136) = *&v131[3];
  BYTE8(v136) = v132;
  v137 = v105;
  *&v138 = v84;
  *(&v138 + 1) = v103;
  *&v139 = v102;
  *(&v139 + 1) = v96;
  v140 = v101;
  v141 = v121;
  v142 = v119;
  v143 = v132;
  *v144 = *v131;
  *&v144[3] = *&v131[3];
  v145 = v105;
  sub_1002CC4D0(&v133, v130);
  sub_100407724(&v138);
  v97 = v136;
  v98 = v120;
  *(v120 + 32) = v135;
  *(v98 + 48) = v97;
  *(v98 + 64) = v137;
  result = v134;
  *v98 = v133;
  *(v98 + 16) = result;
  return result;
}

unint64_t sub_10040D24C()
{
  result = qword_1008ECC10;
  if (!qword_1008ECC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC10);
  }

  return result;
}

unint64_t sub_10040D2A0()
{
  result = qword_1008ECC20;
  if (!qword_1008ECC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC20);
  }

  return result;
}

unint64_t sub_10040D318()
{
  result = qword_1008ECC30;
  if (!qword_1008ECC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC30);
  }

  return result;
}

unint64_t sub_10040D370()
{
  result = qword_1008ECC38;
  if (!qword_1008ECC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC38);
  }

  return result;
}

unint64_t sub_10040D3C8()
{
  result = qword_1008ECC40;
  if (!qword_1008ECC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC40);
  }

  return result;
}

unint64_t sub_10040D420()
{
  result = qword_1008ECC48;
  if (!qword_1008ECC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC48);
  }

  return result;
}

unint64_t sub_10040D480()
{
  result = qword_1008ECC50;
  if (!qword_1008ECC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC50);
  }

  return result;
}

unint64_t sub_10040D4D8()
{
  result = qword_1008ECC58;
  if (!qword_1008ECC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC58);
  }

  return result;
}

double sub_10040D574@<D0>(_OWORD *a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  a1[12] = v15;
  a1[13] = v16;
  a1[14] = v17;
  a1[15] = v18;
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = v13;
  a1[11] = v14;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10040D5F0(_OWORD *a1)
{
  v1 = a1[13];
  v2 = a1[11];
  v31 = a1[12];
  v32 = v1;
  v3 = a1[13];
  v4 = a1[15];
  v33 = a1[14];
  v34 = v4;
  v5 = a1[9];
  v6 = a1[7];
  v27 = a1[8];
  v28 = v5;
  v7 = a1[9];
  v8 = a1[11];
  v29 = a1[10];
  v30 = v8;
  v9 = a1[5];
  v10 = a1[3];
  v23 = a1[4];
  v24 = v9;
  v11 = a1[5];
  v12 = a1[7];
  v25 = a1[6];
  v26 = v12;
  v13 = a1[1];
  v20[0] = *a1;
  v20[1] = v13;
  v14 = a1[3];
  v16 = *a1;
  v15 = a1[1];
  v21 = a1[2];
  v22 = v14;
  v19[28] = v31;
  v19[29] = v3;
  v17 = a1[15];
  v19[30] = v33;
  v19[31] = v17;
  v19[24] = v27;
  v19[25] = v7;
  v19[26] = v29;
  v19[27] = v2;
  v19[20] = v23;
  v19[21] = v11;
  v19[22] = v25;
  v19[23] = v6;
  v19[16] = v16;
  v19[17] = v15;
  v19[18] = v21;
  v19[19] = v10;
  sub_1001C6FE0(v20, v19);
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_10040D6B0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10040D6DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10040DA78();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_10040D708(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100202054;

  return sub_10040E178(a1);
}

uint64_t sub_10040D7B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10016200C;

  return sub_10040EED0(v3);
}

unint64_t sub_10040D860()
{
  result = qword_1008ECC60;
  if (!qword_1008ECC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC60);
  }

  return result;
}

unint64_t sub_10040D900()
{
  result = qword_1008ECC68;
  if (!qword_1008ECC68)
  {
    sub_100141EEC(&qword_1008ECC70);
    sub_10040F80C(&qword_1008DEAE0, type metadata accessor for WorkoutActivityEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECC68);
  }

  return result;
}

uint64_t sub_10040D9B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100198574();
  *v5 = v2;
  v5[1] = sub_10002BACC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10040DA78()
{
  sub_100140278(&qword_1008ECC78);
  swift_getKeyPath();
  v0 = IntentParameterDependency.__allocating_init<A, B>(_:)();
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v0;
}

void *sub_10040DBB0(void *a1)
{
  v2 = type metadata accessor for WorkoutActivityEntity(0);
  v40 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v37 - v6;
  if ([a1 isMultiSportWorkout])
  {
    v8 = [a1 workoutActivities];
    sub_10040E12C();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_46;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_47:

    return _swiftEmptyArrayStorage;
  }

  if (![a1 isIntervalWorkout])
  {
    return _swiftEmptyArrayStorage;
  }

  v21 = [a1 workoutActivities];
  sub_10040E12C();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_50;
  }

  v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_22:
    v23 = 0;
    v38 = v9 & 0xFFFFFFFFFFFFFF8;
    v39 = (v9 & 0xC000000000000001);
    v12 = _swiftEmptyArrayStorage;
    v37 = v22;
    while (1)
    {
      if (v39)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v24 = *(v9 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (!v9)
        {
          goto LABEL_47;
        }

LABEL_4:
        if (v9 >= 1)
        {
          v39 = a1;
          v10 = 0;
          v11 = 0;
          a1 = (v5 & 0xC000000000000001);
          v12 = _swiftEmptyArrayStorage;
          while (1)
          {
            if (a1)
            {
              v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v13 = *(v5 + 8 * v11 + 32);
            }

            v14 = v13;
            v15 = [v13 fiui_activityType];
            v16 = [v15 effectiveTypeIdentifier];

            if (v16 == 83)
            {
            }

            else
            {
              v17 = v14;
              sub_1001996A8(v17, 0, v10, v39, v7);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_1001A3310(0, v12[2] + 1, 1, v12);
              }

              v19 = v12[2];
              v18 = v12[3];
              if (v19 >= v18 >> 1)
              {
                v12 = sub_1001A3310(v18 > 1, v19 + 1, 1, v12);
              }

              v12[2] = v19 + 1;
              sub_1002CC52C(v7, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v19);
              if (__OFADD__(v10++, 1))
              {
                __break(1u);
                goto LABEL_44;
              }
            }

            if (v9 == ++v11)
            {
              goto LABEL_52;
            }
          }
        }

        __break(1u);
LABEL_50:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (!v22)
        {
          break;
        }

        goto LABEL_22;
      }

      v27 = [v24 metadata];
      if (!v27)
      {
        goto LABEL_36;
      }

      v28 = v27;
      v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_1008DA9C8 == -1)
      {
        if (!*(v29 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        swift_once();
        if (!*(v29 + 16))
        {
LABEL_35:

LABEL_36:
          v7 = 0;
          goto LABEL_37;
        }
      }

      v30 = sub_100066F20(qword_100925718, qword_100925720);
      if ((v31 & 1) == 0)
      {
        goto LABEL_35;
      }

      sub_10000B1B4(*(v29 + 56) + 32 * v30, v41);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v7 = sub_1003B02C8();

LABEL_37:

      v32 = a1;
      v33 = v25;
      sub_1001996A8(v33, v7, v23, v32, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1001A3310(0, v12[2] + 1, 1, v12);
      }

      v35 = v12[2];
      v34 = v12[3];
      if (v35 >= v34 >> 1)
      {
        v12 = sub_1001A3310(v34 > 1, v35 + 1, 1, v12);
      }

      v12[2] = v35 + 1;
      sub_1002CC52C(v5, v12 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v35);
      ++v23;
      if (v26 == v37)
      {
        goto LABEL_52;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_52:

  return v12;
}

unint64_t sub_10040E12C()
{
  result = qword_1008EAF90;
  if (!qword_1008EAF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008EAF90);
  }

  return result;
}

uint64_t sub_10040E178(uint64_t a1)
{
  v1[70] = a1;
  v2 = type metadata accessor for WorkoutActivityEntity(0);
  v1[71] = v2;
  v1[72] = *(v2 - 8);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  sub_100140278(&unk_1008DB8A0);
  v1[75] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[76] = v3;
  v1[77] = *(v3 - 8);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();

  return _swift_task_switch(sub_10040E2E4, 0, 0);
}

void sub_10040E2E4()
{
  v1 = v0[70];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[77];
    v31 = (v4 + 48);
    v30 = (v4 + 32);
    v5 = v1 + 40;
    v6 = _swiftEmptyArrayStorage;
    v32 = *(v1 + 16);
    v29 = v1 + 40;
    while (1)
    {
      v7 = (v5 + 16 * v3);
      v8 = v3;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_23;
        }

        v10 = *(v7 - 1);
        v11 = *v7;
        type metadata accessor for WorkoutActivityIdentifier(0);
        v36 = swift_allocObject();
        v0[66] = v10;
        v0[67] = v11;
        sub_10000FCBC();

        v12 = StringProtocol<>.split(separator:maxSplits:omittingEmptySubsequences:)();

        if (*(v12 + 16))
        {
          break;
        }

LABEL_5:
        swift_deallocPartialClassInstance();
        v7 += 2;
        ++v8;
        if (v9 == v2)
        {
          goto LABEL_19;
        }
      }

      v34 = v0[76];
      v35 = v8 + 1;
      v13 = v0;
      v33 = v0[75];

      static String._fromSubstring(_:)();

      UUID.init(uuidString:)();

      if ((*v31)(v33, 1, v34) == 1)
      {
        break;
      }

      v15 = v0[79];
      v16 = v13[76];
      v17 = v13;
      v18 = v13[75];
      v19 = *v30;
      (*v30)(v15, v18, v16);
      v20 = static String._fromSubstring(_:)();
      v22 = v21;

      *(v36 + 16) = v20;
      *(v36 + 24) = v22;
      v19(v36 + OBJC_IVAR____TtC10FitnessApp25WorkoutActivityIdentifier_activityId, v15, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100042744(0, *(v6 + 2) + 1, 1, v6);
      }

      v3 = v35;
      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      v0 = v17;
      if (v24 >= v23 >> 1)
      {
        v6 = sub_100042744((v23 > 1), v24 + 1, 1, v6);
      }

      v5 = v29;
      *(v6 + 2) = v24 + 1;
      v25 = &v6[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      v2 = v32;
      if (v35 == v32)
      {
        goto LABEL_19;
      }
    }

    v14 = v0[75];

    sub_10020864C(v14);
    v0 = v13;
    v2 = v32;
    v9 = v8 + 1;
    goto LABEL_5;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  v0[80] = v6;
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v26 = AppDependency.__allocating_init(key:manager:)();
  v0[81] = v26;
  sub_100140278(&qword_1008DD150);
  static AppDependencyManager.shared.getter();
  v0[82] = AppDependency.__allocating_init(key:manager:)();
  sub_100140278(&qword_1008DFB48);
  static AppDependencyManager.shared.getter();
  v27 = AppDependency.__allocating_init(key:manager:)();
  v0[83] = v27;
  v28 = swift_task_alloc();
  v0[84] = v28;
  *v28 = v0;
  v28[1] = sub_10040E7A0;

  sub_100207400(v6, v26, v27);
}

uint64_t sub_10040E7A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 680) = a1;
  *(v3 + 688) = v1;

  if (v1)
  {
    v4 = sub_10040EDF4;
  }

  else
  {

    v4 = sub_10040E8C0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10040E8C0()
{
  v1 = *(v0 + 680);
  v2 = v1[2];
  if (v2)
  {
    v3 = *(v1 + 2);
    v4 = *(v1 + 3);
    v5 = *(v1 + 5);
    *(v0 + 48) = *(v1 + 4);
    *(v0 + 64) = v5;
    *(v0 + 16) = v3;
    *(v0 + 32) = v4;
    v6 = *(v1 + 6);
    v7 = *(v1 + 7);
    v8 = *(v1 + 9);
    *(v0 + 112) = *(v1 + 8);
    *(v0 + 128) = v8;
    *(v0 + 80) = v6;
    *(v0 + 96) = v7;
    v9 = *(v1 + 10);
    v10 = *(v1 + 11);
    v11 = *(v1 + 13);
    *(v0 + 176) = *(v1 + 12);
    *(v0 + 192) = v11;
    *(v0 + 144) = v9;
    *(v0 + 160) = v10;
    v12 = *(v1 + 14);
    v13 = *(v1 + 15);
    v14 = *(v1 + 17);
    *(v0 + 240) = *(v1 + 16);
    *(v0 + 256) = v14;
    *(v0 + 208) = v12;
    *(v0 + 224) = v13;
    v15 = *(v0 + 240);
    sub_1001C6FE0(v0 + 16, v0 + 272);
    v17 = sub_10040DBB0(v15) + 2;
    v16 = *v17;
    v18 = _swiftEmptyArrayStorage[2];
    v19 = v18 + *v17;
    if (!__OFADD__(v18, *v17))
    {
      v20 = (v1 + 36);
      v1 = _swiftEmptyArrayStorage;
      do
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && (v22 = v1[3] >> 1, v22 >= v19))
        {
          if (!*v17)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v18 <= v19)
          {
            v26 = v19;
          }

          else
          {
            v26 = v18;
          }

          result = sub_1001A3310(result, v26, 1, v1);
          v1 = result;
          v22 = *(result + 24) >> 1;
          if (!*v17)
          {
LABEL_15:

            if (v16)
            {
              goto LABEL_38;
            }

            goto LABEL_16;
          }
        }

        if (v22 - v1[2] < v16)
        {
          goto LABEL_39;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v23 = v1[2];
          v24 = __OFADD__(v23, v16);
          v25 = v23 + v16;
          if (v24)
          {
            goto LABEL_40;
          }

          v1[2] = v25;
        }

LABEL_16:
        sub_1001C7018(v0 + 16);
        if (!--v2)
        {
          goto LABEL_20;
        }

        v27 = *v20;
        v28 = v20[1];
        v29 = v20[3];
        *(v0 + 48) = v20[2];
        *(v0 + 64) = v29;
        *(v0 + 16) = v27;
        *(v0 + 32) = v28;
        v30 = v20[4];
        v31 = v20[5];
        v32 = v20[7];
        *(v0 + 112) = v20[6];
        *(v0 + 128) = v32;
        *(v0 + 80) = v30;
        *(v0 + 96) = v31;
        v33 = v20[8];
        v34 = v20[9];
        v35 = v20[11];
        *(v0 + 176) = v20[10];
        *(v0 + 192) = v35;
        *(v0 + 144) = v33;
        *(v0 + 160) = v34;
        v36 = v20[12];
        v37 = v20[13];
        v38 = v20[15];
        *(v0 + 240) = v20[14];
        *(v0 + 256) = v38;
        *(v0 + 208) = v36;
        *(v0 + 224) = v37;
        v39 = *(v0 + 240);
        sub_1001C6FE0(v0 + 16, v0 + 272);
        v17 = sub_10040DBB0(v39) + 2;
        v16 = *v17;
        v18 = v1[2];
        v20 += 16;
        v19 = v18 + *v17;
      }

      while (!__OFADD__(v18, *v17));
    }

    __break(1u);
LABEL_20:
  }

  else
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v59 = v1[2];
  if (v59)
  {
    v40 = 0;
    v58 = *(v0 + 576);
    v56 = (*(v0 + 616) + 8);
    v57 = *(v0 + 568);
    v41 = _swiftEmptyArrayStorage;
    while (v40 < v1[2])
    {
      v42 = *(v0 + 624);
      v43 = *(v0 + 608);
      v44 = *(v0 + 592);
      v45 = *(v0 + 560);
      v61 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v62 = v41;
      v60 = *(v58 + 72);
      sub_1002CC590(v1 + v61 + v60 * v40, v44);
      sub_10040F80C(&qword_1008EE840, &type metadata accessor for UUID);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v64 = v46;
      v47._countAndFlagsBits = 47;
      v47._object = 0xE100000000000000;
      String.append(_:)(v47);
      v48 = [*(v44 + *(v57 + 20)) UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v49);

      (*v56)(v42, v43);
      *(v0 + 544) = v63;
      *(v0 + 552) = v64;
      v50 = swift_task_alloc();
      *(v50 + 16) = v0 + 544;
      LOBYTE(v45) = sub_100321EE0(sub_10040F854, v50, v45);

      v51 = *(v0 + 592);
      if (v45)
      {
        sub_1002CC52C(v51, *(v0 + 584));
        v41 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001862FC(0, v62[2] + 1, 1);
          v41 = v62;
        }

        v53 = v41[2];
        v52 = v41[3];
        if (v53 >= v52 >> 1)
        {
          sub_1001862FC(v52 > 1, v53 + 1, 1);
          v41 = v62;
        }

        v54 = *(v0 + 584);
        v41[2] = v53 + 1;
        result = sub_1002CC52C(v54, v41 + v61 + v53 * v60);
      }

      else
      {
        result = sub_1002CC5F4(v51);
        v41 = v62;
      }

      if (v59 == ++v40)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
    v41 = _swiftEmptyArrayStorage;
LABEL_34:

    v55 = *(v0 + 8);

    return v55(v41);
  }

  return result;
}

uint64_t sub_10040EDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10040EEF0()
{
  *(v0 + 528) = _swiftEmptyArrayStorage;
  if (IntentParameterDependency.wrappedValue.getter())
  {
    v1 = v0 + 528;
    KeyPath = swift_getKeyPath();
    sub_1001C2F30();
    IntentProjection.subscript.getter();

    v3 = *(v0 + 480);
    *(v0 + 208) = *(v0 + 464);
    *(v0 + 224) = v3;
    v4 = *(v0 + 512);
    *(v0 + 240) = *(v0 + 496);
    *(v0 + 256) = v4;
    v5 = *(v0 + 416);
    *(v0 + 144) = *(v0 + 400);
    *(v0 + 160) = v5;
    v6 = *(v0 + 448);
    *(v0 + 176) = *(v0 + 432);
    *(v0 + 192) = v6;
    v7 = *(v0 + 352);
    *(v0 + 80) = *(v0 + 336);
    *(v0 + 96) = v7;
    v8 = *(v0 + 384);
    *(v0 + 112) = *(v0 + 368);
    *(v0 + 128) = v8;
    v9 = *(v0 + 288);
    *(v0 + 16) = *(v0 + 272);
    *(v0 + 32) = v9;
    v10 = *(v0 + 320);
    *(v0 + 48) = *(v0 + 304);
    *(v0 + 64) = v10;
    v11 = *(v0 + 240);
    sub_1001C7018(v0 + 16);
    if ([v11 workoutActivityType] == 82)
    {
      KeyPath = v11;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_41;
      }

      goto LABEL_4;
    }

LABEL_9:
    v16 = *v1;
    if (*v1 >> 62)
    {
      goto LABEL_35;
    }

    v1 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v0;
    if (v1)
    {
      do
      {
        if (v1 < 1)
        {
          __break(1u);
LABEL_41:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_4:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          goto LABEL_9;
        }

        KeyPath = 0;
        v0 = v16 & 0xC000000000000001;
        v17 = _swiftEmptyArrayStorage;
        v18 = v16;
        while (1)
        {
          v19 = v0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v16 + 8 * KeyPath + 32);
          v20 = v19;
          v21 = sub_10040DBB0(v19);
          v22 = v21[2];
          v23 = v17[2];
          v24 = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          v25 = v21;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && (v27 = v17[3] >> 1, v27 >= v24))
          {
            if (v25[2])
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (v23 <= v24)
            {
              v28 = v23 + v22;
            }

            else
            {
              v28 = v23;
            }

            v17 = sub_1001A3310(isUniquelyReferenced_nonNull_native, v28, 1, v17);
            v27 = v17[3] >> 1;
            if (v25[2])
            {
LABEL_27:
              v29 = v27 - v17[2];
              type metadata accessor for WorkoutActivityEntity(0);
              if (v29 < v22)
              {
                goto LABEL_33;
              }

              swift_arrayInitWithCopy();

              if (v22)
              {
                v30 = v17[2];
                v31 = __OFADD__(v30, v22);
                v32 = v30 + v22;
                if (v31)
                {
                  goto LABEL_34;
                }

                v17[2] = v32;
              }

              goto LABEL_14;
            }
          }

          if (v22)
          {
            goto LABEL_32;
          }

LABEL_14:
          ++KeyPath;

          v16 = v18;
          if (v1 == KeyPath)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v33 = v16;
        v34 = _CocoaArrayWrapper.endIndex.getter();
        v16 = v33;
        v1 = v34;
        v36 = v0;
      }

      while (v34);
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_37:

    v35 = *(v36 + 8);

    return v35(v17);
  }

  else
  {
    sub_100140278(&qword_1008DD148);
    type metadata accessor for AppDependencyManager();
    static AppDependencyManager.shared.getter();
    v12 = AppDependency.__allocating_init(key:manager:)();
    *(v0 + 544) = v12;
    sub_100140278(&qword_1008DD150);
    static AppDependencyManager.shared.getter();
    *(v0 + 552) = AppDependency.__allocating_init(key:manager:)();
    sub_100140278(&qword_1008DFB48);
    static AppDependencyManager.shared.getter();
    v13 = AppDependency.__allocating_init(key:manager:)();
    *(v0 + 560) = v13;
    v14 = swift_task_alloc();
    *(v0 + 568) = v14;
    *v14 = v0;
    v14[1] = sub_10040F3B8;

    return sub_100208D98(v12, v13);
  }
}

uint64_t sub_10040F3B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_10040F7F4;
  }

  else
  {
    v4 = sub_10040F530;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10040F530()
{
  v1 = (v0 + 528);
  v2 = *(v0 + 576);
  v3 = *(v2 + 16);
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (v2 + 256);
    do
    {
      v5 = *v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v3;
    }

    while (v3);
  }

  result = sub_10019ECA8(_swiftEmptyArrayStorage);
  v7 = *v1;
  if (*v1 >> 62)
  {
    goto LABEL_30;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      if (v8 < 1)
      {
        __break(1u);
        return result;
      }

      v9 = 0;
      v10 = _swiftEmptyArrayStorage;
      while (1)
      {
        v11 = (v7 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v7 + 8 * v9 + 32);
        v12 = v11;
        v13 = sub_10040DBB0(v11);
        v14 = v13[2];
        v15 = v10[2];
        v16 = v15 + v14;
        if (__OFADD__(v15, v14))
        {
          break;
        }

        v17 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && (v19 = v10[3] >> 1, v19 >= v16))
        {
          if (v17[2])
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v15 <= v16)
          {
            v20 = v15 + v14;
          }

          else
          {
            v20 = v15;
          }

          v10 = sub_1001A3310(isUniquelyReferenced_nonNull_native, v20, 1, v10);
          v19 = v10[3] >> 1;
          if (v17[2])
          {
LABEL_22:
            v21 = v19 - v10[2];
            type metadata accessor for WorkoutActivityEntity(0);
            if (v21 < v14)
            {
              goto LABEL_28;
            }

            swift_arrayInitWithCopy();

            if (v14)
            {
              v22 = v10[2];
              v23 = __OFADD__(v22, v14);
              v24 = v22 + v14;
              if (v23)
              {
                goto LABEL_29;
              }

              v10[2] = v24;
            }

            goto LABEL_9;
          }
        }

        if (v14)
        {
          goto LABEL_27;
        }

LABEL_9:
        ++v9;

        if (v8 == v9)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = _CocoaArrayWrapper.endIndex.getter();
      v8 = result;
    }

    while (result);
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_32:

  v25 = *(v26 + 8);

  return v25(v10);
}

uint64_t sub_10040F80C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10040FA6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  sub_1000066AC(a3, a3[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9 = (*(a4 + 16))(a4, a1, isa, v8);

  swift_unknownObjectRelease();
  return v9;
}

void sub_10040FB40(void *a1, void *a2, char a3)
{
  *&v3[OBJC_IVAR___CHMoveModeSettingsViewController_dataSource] = 0;
  *&v3[OBJC_IVAR___CHMoveModeSettingsViewController_healthStore] = a1;
  *&v3[OBJC_IVAR___CHMoveModeSettingsViewController_formattingManager] = a2;
  v3[OBJC_IVAR___CHMoveModeSettingsViewController_isAppleMoveTime] = a3;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for MoveModeSettingsViewController();
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v22, "initWithStyle:", 2);
  v9 = [v8 tableView];
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = v9;
  [v9 setSeparatorStyle:0];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = [v8 tableView];
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = objc_allocWithZone(type metadata accessor for MoveModeSettingsViewControllerDiffableDataSource());
  v21[4] = sub_10041070C;
  v21[5] = v11;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100410D80;
  v21[3] = &unk_100857DD8;
  v15 = _Block_copy(v21);

  v16 = [v14 initWithTableView:v13 cellProvider:v15];

  _Block_release(v15);

  v17 = *&v8[OBJC_IVAR___CHMoveModeSettingsViewController_dataSource];
  *&v8[OBJC_IVAR___CHMoveModeSettingsViewController_dataSource] = v16;

  v18 = [v8 tableView];
  if (v18)
  {
    type metadata accessor for MoveModeSettingsCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = String._bridgeToObjectiveC()();
    [v18 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v20];

    sub_10040FE0C();

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_10040FE0C()
{
  swift_getObjectType();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_10000AFDC(0xD000000000000012, 0x8000000100749A00, &v12);
    _os_log_impl(&_mh_execute_header, v3, v1, "%s::%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_10040FFB0();
  v9 = *(v0 + OBJC_IVAR___CHMoveModeSettingsViewController_dataSource);
  if (v9)
  {
    v11 = v8;
    v10 = v9;
    [v10 applySnapshot:v11 animatingDifferences:1];

    v8 = v11;
  }
}

id sub_10040FFB0()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(NSDiffableDataSourceSnapshot) init];
  sub_100140278(&qword_1008E7590);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x8000000100752950;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 appendSectionsWithIdentifiers:isa];

  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D46C0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x800000010075C390;
  v4 = Array._bridgeToObjectiveC()().super.isa;

  [v0 appendItemsWithIdentifiers:v4];

  v5 = static os_log_type_t.default.getter();
  v6 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v5))
  {
    v7 = v6;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v8 = 136315650;
    v10 = _typeName(_:qualified:)();
    v12 = sub_10000AFDC(v10, v11, &v15);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10000AFDC(0x70616E53656B616DLL, 0xEE002928746F6873, &v15);
    *(v8 + 22) = 2112;
    *(v8 + 24) = v0;
    *v9 = v0;
    v13 = v0;
    _os_log_impl(&_mh_execute_header, v7, v5, "%s::%s snapshot %@", v8, 0x20u);
    sub_1001F3454(v9);

    swift_arrayDestroy();
  }

  return v0;
}

id sub_100410264(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong[OBJC_IVAR___CHMoveModeSettingsViewController_isAppleMoveTime];
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for MoveModeSettingsCell();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v8 + OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_moveTimeSwitch);
    v11 = v4;
    [v10 setOn:v6];
    v12 = &off_100857DA0;
    if (!v9)
    {
      v12 = 0;
    }

    *(v8 + OBJC_IVAR____TtC10FitnessApp20MoveModeSettingsCell_delegate + 8) = v12;
    swift_unknownObjectWeakAssign();
  }

  return v4;
}

id sub_100410654(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100410714(char a1)
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [v1 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = objc_opt_self();
  v8 = [v28 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 localizedStringForKey:v9 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();

  v34 = sub_100410EE0;
  v35 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001CA96C;
  v33 = &unk_100857E50;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v27 = [v14 actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;

  v17 = String._bridgeToObjectiveC()();

  v34 = sub_100410EE8;
  v35 = v16;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1001CA96C;
  v33 = &unk_100857EA0;
  v18 = _Block_copy(&aBlock);

  v19 = [v14 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  v20 = [v28 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = String._bridgeToObjectiveC()();

  v24 = String._bridgeToObjectiveC()();

  v25 = [objc_opt_self() alertControllerWithTitle:v23 message:v24 preferredStyle:1];

  [v25 addAction:v27];
  [v25 addAction:v19];
  [v26 presentViewController:v25 animated:1 completion:0];
}

void sub_100410C58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong tableView];

    if (v2)
    {
      [v2 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100410CDC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR___CHMoveModeSettingsViewController_isAppleMoveTime) = a3 & 1;
    if (a3)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    v6 = Strong;
    [objc_opt_self() saveActivityMoveModeAndDefaultGoalSamplesForActivityMoveMode:v5 healthStore:*&v6[OBJC_IVAR___CHMoveModeSettingsViewController_healthStore] formattingManager:*&v6[OBJC_IVAR___CHMoveModeSettingsViewController_formattingManager]];
  }
}

id sub_100410D80(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15[3] = swift_getObjectType();
  v15[0] = a4;

  v12 = a2;
  swift_unknownObjectRetain();
  v13 = v11(v12, v10, v15);

  (*(v8 + 8))(v10, v7);
  sub_100005A40(v15);

  return v13;
}

uint64_t type metadata accessor for WorkoutTabRootView()
{
  result = qword_1008ECD48;
  if (!qword_1008ECD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100410F7C()
{
  sub_1004110E0();
  if (v0 <= 0x3F)
  {
    sub_100411174();
    if (v1 <= 0x3F)
    {
      sub_100411208();
      if (v2 <= 0x3F)
      {
        type metadata accessor for HKActivityMoveMode(319);
        if (v3 <= 0x3F)
        {
          sub_1000059F8(319, &qword_1008F24B0);
          if (v4 <= 0x3F)
          {
            sub_1000059F8(319, &qword_1008F24A0);
            if (v5 <= 0x3F)
            {
              type metadata accessor for WorkoutConfigurationOccurrenceStore();
              if (v6 <= 0x3F)
              {
                type metadata accessor for FitnessAppContext();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for InferenceClient();
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for SnapshotClient();
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004110E0()
{
  if (!qword_1008ECD58)
  {
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_100411BF4(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008ECD58);
    }
  }
}

void sub_100411174()
{
  if (!qword_1008ECD60)
  {
    type metadata accessor for StandardActivityItemsViewModel();
    sub_100411BF4(&qword_1008EBB90, type metadata accessor for StandardActivityItemsViewModel);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008ECD60);
    }
  }
}

void sub_100411208()
{
  if (!qword_1008ECD68)
  {
    type metadata accessor for WorkoutVoiceAvailabilityProvider();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1008ECD68);
    }
  }
}

uint64_t sub_10041127C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v57 = type metadata accessor for WorkoutOnboardingNavigationiOS();
  __chkstk_darwin(v57);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = sub_100140278(&qword_1008ECDB8);
  __chkstk_darwin(v54);
  v55 = v41 - v4;
  v5 = type metadata accessor for EnvironmentValues();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SnapshotClient();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v51 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for InferenceClient();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for AppComposer();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v45);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v41 - v15;
  v53 = sub_100140278(&qword_1008ECDC0);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = v41 - v17;
  v18 = *v1;
  if (!*v1)
  {
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_100411BF4(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    EnvironmentObject.error()();
    __break(1u);
LABEL_11:
    v39 = v23;
    type metadata accessor for StandardActivityItemsViewModel();
    sub_100411BF4(&qword_1008EBB90, type metadata accessor for StandardActivityItemsViewModel);
    v40 = v39;
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v18;
  static Published.subscript.getter();

  if (v58)
  {
    v20 = type metadata accessor for WorkoutTabRootView();
    (*(v9 + 16))(v3 + *(v57 + 20), v1 + *(v20 + 48), v52);
    type metadata accessor for WorkoutOnboardingCoordinatoriOS();
    sub_100411BF4(&qword_1008DB068, type metadata accessor for WorkoutOnboardingCoordinatoriOS);
    *v3 = EnvironmentObject.init()();
    v3[1] = v21;
    sub_100411C3C(v3, v55);
    swift_storeEnumTagMultiPayload();
    sub_100411B90();
    sub_100411BF4(&qword_1008ECDD8, type metadata accessor for WorkoutOnboardingNavigationiOS);
    _ConditionalContent<>.init(storage:)();
    return sub_100411CA0(v3);
  }

  v23 = *(v1 + 56);
  v24 = *(v1 + 16);
  if (!v24)
  {
    goto LABEL_11;
  }

  v41[4] = *(v1 + 48);
  v25 = *(v24 + OBJC_IVAR___CHStandardActivityItemsViewModel_dataSource);
  v27 = *(v1 + 64);
  v26 = *(v1 + 72);
  v41[2] = v23;
  v41[3] = v25;

  v41[1] = v27;
  v41[0] = v26;
  AppCoordinator.composer.getter();
  v28 = *(v11 + 32);
  v29 = v45;
  v28(v13, v16, v45);
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v31 = swift_allocObject();
  v28((v31 + v30), v13, v29);
  v32 = type metadata accessor for WorkoutTabRootView();
  (*(v9 + 16))(v49, v1 + *(v32 + 48), v52);
  (*(v46 + 16))(v51, v1 + *(v32 + 52), v47);
  v33 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v33;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v33, 0);
    (*(v43 + 8))(v35, v44);
  }

  sub_100140278(&qword_1008ECDC8);
  swift_getOpaqueTypeConformance2();
  v36 = v48;
  WorkoutBrowsingViewiOS.init(activityMoveMode:formattingManager:dataSource:healthStore:occurrenceStore:makeFitnessPlusSampleContentView:inferenceClient:snapshotClient:workoutVoiceAvailabilityProvider:)();
  v37 = v50;
  v38 = v53;
  (*(v50 + 16))(v55, v36, v53);
  swift_storeEnumTagMultiPayload();
  sub_100411B90();
  sub_100411BF4(&qword_1008ECDD8, type metadata accessor for WorkoutOnboardingNavigationiOS);
  _ConditionalContent<>.init(storage:)();
  return (*(v37 + 8))(v36, v38);
}

unint64_t sub_100411B90()
{
  result = qword_1008ECDD0;
  if (!qword_1008ECDD0)
  {
    sub_100141EEC(&qword_1008ECDC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECDD0);
  }

  return result;
}

uint64_t sub_100411BF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100411C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutOnboardingNavigationiOS();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100411CA0(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutOnboardingNavigationiOS();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100411CFC()
{
  result = qword_1008ECDE0;
  if (!qword_1008ECDE0)
  {
    sub_100141EEC(&qword_1008ECDE8);
    sub_100411B90();
    sub_100411BF4(&qword_1008ECDD8, type metadata accessor for WorkoutOnboardingNavigationiOS);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECDE0);
  }

  return result;
}

void sub_100411DB8()
{
  sub_1000059F8(319, &unk_1008DEED8);
  if (v0 <= 0x3F)
  {
    sub_100411F6C(319, &qword_1008E2840, type metadata accessor for MetricChartData, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100411F04();
      if (v2 <= 0x3F)
      {
        sub_100411F6C(319, &unk_1008ECE60, &type metadata accessor for DateInterval, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Date();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100411F04()
{
  if (!qword_1008ECE58)
  {
    sub_1000059F8(255, &qword_1008ED7C0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1008ECE58);
    }
  }
}

void sub_100411F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100411FD0(uint64_t a1)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E5C70);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  sub_100307A9C(a1, *(v1 + 16));
  sub_10030809C(a1, *(v1 + 24));
  v10 = *(v1 + 32);
  if ((*(v1 + 40) & 1) == 0)
  {
    Hasher._combine(_:)(3uLL);
  }

  Hasher._combine(_:)(v10);
  v11 = type metadata accessor for MetricDetailViewModel();
  sub_10005A758(v1 + *(v11 + 36), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_10005AA50(&qword_1008ECEB0, &type metadata accessor for DateInterval);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }

  Hasher._combine(_:)(*(v1 + *(v11 + 40)));
  type metadata accessor for Date();
  sub_10005AA50(&qword_1008DEF18, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100412270()
{
  Hasher.init(_seed:)();
  sub_100411FD0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1004122B4()
{
  Hasher.init(_seed:)();
  sub_100411FD0(v1);
  return Hasher._finalize()();
}

double sub_100412338()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  Width = CGRectGetWidth(v15);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  result = Width / v13;
  *&qword_100925958 = Width / v13;
  return result;
}

uint64_t getEnumTagSinglePayload for TrendsCoachingGoalBucket(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrendsCoachingGoalBucket(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100412554(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x4974756F6B726F77;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x7865646E69;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000100747220;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1701869940;
    }

    else
    {
      v5 = 0x4974756F6B726F77;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xD000000000000011;
  v8 = 0x8000000100747220;
  if (a2 != 2)
  {
    v7 = 0x7865646E69;
    v8 = 0xE500000000000000;
  }

  if (a2)
  {
    v3 = 1701869940;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100412680(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x78614D324F76;
  if (a1 != 6)
  {
    v5 = 7628141;
    v4 = 0xE300000000000000;
  }

  v6 = 0x6465657073;
  if (a1 != 4)
  {
    v6 = 0x746E756F63;
  }

  if (a1 <= 5u)
  {
    v5 = v6;
    v4 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6574756E696DLL;
  if (a1 != 2)
  {
    v8 = 1701011824;
    v7 = 0xE400000000000000;
  }

  v9 = 0x726574656DLL;
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v9 = 1818321771;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x78614D324F76)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 7628141)
        {
LABEL_45:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6465657073)
        {
          goto LABEL_45;
        }
      }

      else if (v10 != 0x746E756F63)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6574756E696DLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701011824)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x726574656DLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1818321771)
    {
      goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_1004128A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0xD000000000000010;
    v9 = 0x800000010075C600;
    if (a1 != 6)
    {
      v8 = 0x74697465706D6F63;
      v9 = 0xEC000000736E6F69;
    }

    v10 = 0x507373656E746966;
    v11 = 0xEB0000000073756CLL;
    if (a1 != 4)
    {
      v10 = 0x45646574696D696CLL;
      v11 = 0xEE006E6F69746964;
    }

    if (a1 <= 5u)
    {
      v6 = v10;
    }

    else
    {
      v6 = v8;
    }

    if (v2 <= 5)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0x7974697669746361;
    if (a1 != 2)
    {
      v4 = 0x7374756F6B726F77;
    }

    v5 = 0x7449726F466F67;
    if (a1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v5 = 7105633;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0xE800000000000000;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0x800000010075C600;
        if (v6 != 0xD000000000000010)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v12 = 0xEC000000736E6F69;
        if (v6 != 0x74697465706D6F63)
        {
LABEL_47:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB0000000073756CLL;
      if (v6 != 0x507373656E746966)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v12 = 0xEE006E6F69746964;
      if (v6 != 0x45646574696D696CLL)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    v12 = 0xE800000000000000;
    if (a2 == 2)
    {
      if (v6 != 0x7974697669746361)
      {
        goto LABEL_47;
      }
    }

    else if (v6 != 0x7374756F6B726F77)
    {
      goto LABEL_47;
    }
  }

  else if (a2)
  {
    v12 = 0xE700000000000000;
    if (v6 != 0x7449726F466F67)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v6 != 7105633)
    {
      goto LABEL_47;
    }
  }

  if (v7 != v12)
  {
    goto LABEL_47;
  }

  v13 = 1;
LABEL_48:

  return v13 & 1;
}

uint64_t sub_100412B50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x61446D6F74737563;
    }

    else
    {
      v3 = 0x796144664F646E65;
    }

    if (v2)
    {
      v4 = 0xEA00000000007379;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x656557664F646E65;
    v4 = 0xE90000000000006BLL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x6E6F4D664F646E65;
    }

    else
    {
      v3 = 0x6369666963657073;
    }

    if (v2 == 3)
    {
      v4 = 0xEA00000000006874;
    }

    else
    {
      v4 = 0xEC00000065746144;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x61446D6F74737563;
    }

    else
    {
      v6 = 0x796144664F646E65;
    }

    if (a2)
    {
      v5 = 0xEA00000000007379;
    }

    else
    {
      v5 = 0xE800000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE90000000000006BLL;
    if (v3 != 0x656557664F646E65)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEA00000000006874;
    if (v3 != 0x6E6F4D664F646E65)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEC00000065746144;
    if (v3 != 0x6369666963657073)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_100412D1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74696C7073;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746E656D676573;
    }

    else
    {
      v4 = 0x6C61767265746E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x70536D6F74737563;
    }

    else
    {
      v4 = 0x74696C7073;
    }

    if (v3)
    {
      v5 = 0xEB0000000074696CLL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x746E656D676573;
  if (a2 != 2)
  {
    v8 = 0x6C61767265746E69;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x70536D6F74737563;
    v6 = 0xEB0000000074696CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_100412E6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x646E617473;
  if (a1 != 5)
  {
    v5 = 1819045746;
    v4 = 0xE400000000000000;
  }

  v6 = 0x756E694D65766F6DLL;
  v7 = 0xEB00000000736574;
  if (a1 != 3)
  {
    v6 = 0x6573696372657865;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6F6C614365766F6DLL;
  v9 = 0xEC00000073656972;
  if (a1 != 1)
  {
    v8 = 0x6F6C694B65766F6DLL;
    v9 = 0xEE0073656C756F6ALL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 7105633;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEC00000073656972;
        if (v10 != 0x6F6C614365766F6DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEE0073656C756F6ALL;
        if (v10 != 0x6F6C694B65766F6DLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 7105633)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x646E617473)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1819045746)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEB00000000736574;
    if (v10 != 0x756E694D65766F6DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE800000000000000;
    if (v10 != 0x6573696372657865)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1004130B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000012;
  v3 = 0xD000000000000017;
  v4 = "tomSplit";
  v5 = a1;
  v6 = 0xD000000000000016;
  if (a1 == 4)
  {
    v6 = 0xD000000000000017;
    v7 = "VO2MAX_BUCKET_GOOD";
  }

  else
  {
    v7 = "VO2MAX_BUCKET_EXCELLENT";
  }

  if (a1 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 3)
  {
    v9 = "VO2MAX_BUCKET_FAIR";
  }

  else
  {
    v9 = v7;
  }

  if (a1 == 1)
  {
    v10 = "VO2MAX_BUCKET_VERY_POOR";
  }

  else
  {
    v10 = "VO2MAX_BUCKET_POOR";
  }

  if (v5)
  {
    v3 = 0xD000000000000012;
    v11 = v10;
  }

  else
  {
    v11 = "tomSplit";
  }

  if (v5 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v8;
  }

  if (v5 <= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v4 = "VO2MAX_BUCKET_FAIR";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000017;
      v4 = "VO2MAX_BUCKET_GOOD";
    }

    else
    {
      v2 = 0xD000000000000016;
      v4 = "VO2MAX_BUCKET_EXCELLENT";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v4 = "VO2MAX_BUCKET_VERY_POOR";
    }

    else
    {
      v4 = "VO2MAX_BUCKET_POOR";
    }
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (v12 == v2 && (v13 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

uint64_t sub_100413218(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x736C616F67;
    }

    else
    {
      v3 = 7105633;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v3 = 0x68746C616568;
  }

  else if (a1 == 3)
  {
    v3 = 0x6163696669746F6ELL;
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x7374696E75;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x736C616F67;
    }

    else
    {
      v9 = 7105633;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
    v6 = 0xED0000736E6F6974;
    if (a2 != 3)
    {
      v5 = 0x7374696E75;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x68746C616568;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_10041339C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xEA00000000003472;
    if (a1 == 6)
    {
      v9 = 0xEA00000000003372;
    }

    v10 = 0xEA00000000003172;
    if (a1 != 4)
    {
      v10 = 0xEA00000000003272;
    }

    v7 = 0x6F6C6F4374786574;
    if (v2 <= 5)
    {
      v8 = v10;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0xE300000000000000;
    v5 = 7107189;
    if (a1 != 2)
    {
      v5 = 0x726F6C6F436762;
      v4 = 0xE700000000000000;
    }

    v6 = 0x746867696568;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v6 = 0x6874646977;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v11 = 0xEA00000000003372;
        if (v7 != 0x6F6C6F4374786574)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v11 = 0xEA00000000003472;
        if (v7 != 0x6F6C6F4374786574)
        {
LABEL_44:
          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEA00000000003172;
      if (v7 != 0x6F6C6F4374786574)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0xEA00000000003272;
      if (v7 != 0x6F6C6F4374786574)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0xE300000000000000;
      if (v7 != 7107189)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v7 != 0x726F6C6F436762)
      {
        goto LABEL_44;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (v7 != 0x746867696568)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v7 != 0x6874646977)
    {
      goto LABEL_44;
    }
  }

  if (v8 != v11)
  {
    goto LABEL_44;
  }

  v12 = 1;
LABEL_45:

  return v12 & 1;
}

uint64_t sub_1004135F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0x616473656E646577;
    v13 = 0xE900000000000079;
    if (a1 != 2)
    {
      v12 = 0x7961647372756874;
      v13 = 0xE800000000000000;
    }

    v14 = 0x79616473657574;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x7961646E6F6DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v3 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v4 = 0x7961646E7573;
    v5 = 0xE600000000000000;
    v6 = 0x7961646F74;
    if (a1 != 7)
    {
      v6 = 0x796C696164;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = 0xE500000000000000;
    }

    v7 = 0xE600000000000000;
    v8 = 0x796164697266;
    if (a1 != 4)
    {
      v8 = 0x7961647275746173;
      v7 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        v15 = 0xE500000000000000;
        if (a2 == 7)
        {
          v16 = 1633972084;
        }

        else
        {
          v16 = 1818845540;
        }

        if (v9 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x7900000000))
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      v2 = 0x7961646E7573;
      goto LABEL_41;
    }

    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x796164697266)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0xE800000000000000;
    v17 = 0x647275746173;
LABEL_48:
    if (v9 != (v17 & 0xFFFFFFFFFFFFLL | 0x7961000000000000))
    {
LABEL_51:
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0xE900000000000079;
      if (v9 != 0x616473656E646577)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }

    v15 = 0xE800000000000000;
    v17 = 0x647372756874;
    goto LABEL_48;
  }

  if (!a2)
  {
LABEL_41:
    v15 = 0xE600000000000000;
    if (v9 != v2)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v15 = 0xE700000000000000;
  if (v9 != 0x79616473657574)
  {
    goto LABEL_51;
  }

LABEL_49:
  if (v10 != v15)
  {
    goto LABEL_51;
  }

  v18 = 1;
LABEL_52:

  return v18 & 1;
}

Swift::Int sub_100413858()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100413944()
{
  String.hash(into:)();
}

uint64_t sub_100413A48()
{
  String.hash(into:)();
}

uint64_t sub_100413B90()
{
  String.hash(into:)();
}

uint64_t sub_100413CBC()
{
  String.hash(into:)();
}

Swift::Int sub_100413DF4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100413F34()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10041401C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100414148()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1004142A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1004143BC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = result;
  v8 = 0;
  v9 = result + 64;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 64);
  v13 = (v10 + 63) >> 6;
  v14 = 6;
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = v5[6] + ((v8 << 11) | (32 * v16));
    v18 = *(v17 + 8);
    if (*v17 <= a4 && v18 > a4)
    {
      if (v5[2])
      {
        v20 = *(v17 + 16);
        v21 = *(v17 + 24);
        v24 = *v17;
        result = sub_1004C55D4(v20, v21, *v17, v18);
        v22 = v24;
        if (v23)
        {
          v14 = *(v5[7] + result);
LABEL_17:
          *a3 = a4;
          *(a3 + 8) = 0;
          *(a3 + 16) = v22;
          *(a3 + 32) = v20;
          *(a3 + 40) = v21;
          *(a3 + 48) = v14;
          *(a3 + 56) = a2;
          return result;
        }
      }
    }
  }

  while (1)
  {
    v15 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      v20 = 0;
      v21 = 0;
      a2 = 0;
      v22 = 0uLL;
      a4 = 0.0;
      goto LABEL_17;
    }

    v12 = *(v9 + 8 * v15);
    ++v8;
    if (v12)
    {
      v8 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100414514()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v3;
}

uint64_t sub_100414670()
{
  String.hash(into:)();
}

unint64_t sub_10041474C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004152D0(*a1);
  *a2 = result;
  return result;
}

void sub_10041477C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "VO2MAX_BUCKET_FAIR";
  v5 = "VO2MAX_BUCKET_GOOD";
  v6 = 0xD000000000000017;
  if (v3 != 4)
  {
    v6 = 0xD000000000000016;
    v5 = "VO2MAX_BUCKET_EXCELLENT";
  }

  if (v3 == 3)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v4 = v5;
  }

  v7 = "VO2MAX_BUCKET_VERY_POOR";
  if (v3 != 1)
  {
    v7 = "VO2MAX_BUCKET_POOR";
  }

  if (*v1)
  {
    v8 = v7;
  }

  else
  {
    v2 = 0xD000000000000017;
    v8 = "tomSplit";
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v2 = v6;
    v9 = v4;
  }

  *a1 = v2;
  a1[1] = v9 | 0x8000000000000000;
}

unint64_t sub_100414828()
{
  result = qword_1008ECF28;
  if (!qword_1008ECF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECF28);
  }

  return result;
}

unint64_t sub_10041487C()
{
  result = qword_1008ECF30;
  if (!qword_1008ECF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008ECF30);
  }

  return result;
}

void sub_1004148D0(double a1, double a2, uint64_t a3, Swift::UInt a4, Swift::UInt a5)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  Hasher._combine(_:)(*&v8);
  Hasher._combine(_:)(a4);
  Hasher._combine(_:)(a5);
}

Swift::Int sub_100414940()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  sub_1004148D0(v1, v2, v6, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1004149AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  sub_1004148D0(v1, v2, v6, v3, v4);
  return Hasher._finalize()();
}

unint64_t sub_100414A6C()
{
  result = sub_1004C99A0(&off_10083E030);
  qword_1008ECEC8 = result;
  return result;
}

unint64_t sub_100414A94()
{
  result = sub_1004C99A0(&off_10083E250);
  qword_1008ECED0 = result;
  return result;
}

unint64_t sub_100414ABC()
{
  result = sub_1004C99A0(&off_10083E470);
  qword_1008ECED8 = result;
  return result;
}

unint64_t sub_100414AE4()
{
  result = sub_1004C99A0(&off_10083E690);
  qword_1008ECEE0 = result;
  return result;
}

unint64_t sub_100414B0C()
{
  result = sub_1004C99A0(&off_10083E8B0);
  qword_1008ECEE8 = result;
  return result;
}

unint64_t sub_100414B34()
{
  result = sub_1004C99A0(&off_10083EAD0);
  qword_1008ECEF0 = result;
  return result;
}

unint64_t sub_100414B5C()
{
  result = sub_1004C99A0(&off_10083DF20);
  qword_1008ECEF8 = result;
  return result;
}

unint64_t sub_100414B84()
{
  result = sub_1004C99A0(&off_10083E140);
  qword_1008ECF00 = result;
  return result;
}

unint64_t sub_100414BAC()
{
  result = sub_1004C99A0(&off_10083E360);
  qword_1008ECF08 = result;
  return result;
}

unint64_t sub_100414BD4()
{
  result = sub_1004C99A0(&off_10083E580);
  qword_1008ECF10 = result;
  return result;
}

unint64_t sub_100414BFC()
{
  result = sub_1004C99A0(&off_10083E7A0);
  qword_1008ECF18 = result;
  return result;
}

unint64_t sub_100414C24()
{
  result = sub_1004C99A0(&off_10083E9C0);
  qword_1008ECF20 = result;
  return result;
}

uint64_t sub_100414C4C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a2 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v9;
    if (!v9)
    {
      break;
    }

LABEL_11:
    v15 = __clz(__rbit64(v13)) | (v11 << 6);
    v16 = *(*(v4 + 56) + v15);
    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v18 = 0xD000000000000012;
        v17 = "VO2MAX_BUCKET_FAIR";
      }

      else if (v16 == 4)
      {
        v18 = 0xD000000000000017;
        v17 = "VO2MAX_BUCKET_GOOD";
      }

      else
      {
        v18 = 0xD000000000000016;
        v17 = "VO2MAX_BUCKET_EXCELLENT";
      }
    }

    else if (*(*(v4 + 56) + v15))
    {
      v17 = "VO2MAX_BUCKET_VERY_POOR";
      if (v16 != 1)
      {
        v17 = "VO2MAX_BUCKET_POOR";
      }

      v18 = 0xD000000000000012;
    }

    else
    {
      v18 = 0xD000000000000017;
      v17 = "tomSplit";
    }

    v9 = (v13 - 1) & v13;
    v19 = v4;
    v20 = (*(v4 + 48) + 32 * v15);
    v21 = *v20;
    v22 = v20[1];
    v33 = v20[3];
    v34 = v20[2];
    v23 = v17 | 0x8000000000000000;
    v24 = 0xD000000000000017;
    v25 = 0xD000000000000016;
    if (a1 == 4)
    {
      v25 = 0xD000000000000017;
    }

    v26 = "VO2MAX_BUCKET_GOOD";
    if (a1 != 4)
    {
      v26 = "VO2MAX_BUCKET_EXCELLENT";
    }

    if (a1 == 3)
    {
      v25 = 0xD000000000000012;
      v26 = "VO2MAX_BUCKET_FAIR";
    }

    v27 = "VO2MAX_BUCKET_VERY_POOR";
    if (a1 != 1)
    {
      v27 = "VO2MAX_BUCKET_POOR";
    }

    if (a1)
    {
      v24 = 0xD000000000000012;
    }

    else
    {
      v27 = "tomSplit";
    }

    if (a1 <= 2u)
    {
      v28 = v24;
    }

    else
    {
      v28 = v25;
    }

    if (a1 <= 2u)
    {
      v29 = v27;
    }

    else
    {
      v29 = v26;
    }

    if (v18 == v28 && v23 == (v29 | 0x8000000000000000))
    {

LABEL_42:
      result = sub_100022DEC();
      *a4 = 0;
      *(a4 + 8) = 1;
      *(a4 + 16) = v21;
      *(a4 + 24) = v22;
      *(a4 + 32) = v34;
      *(a4 + 40) = v33;
      *(a4 + 48) = v16;
      *(a4 + 56) = a3;
      return result;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v19;
    if (v12)
    {
      goto LABEL_42;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_44;
    }

    v13 = *(v6 + 8 * v11);
    ++v14;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_44:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100414F58(unint64_t a1, uint64_t a2)
{
  if (a1 - 80 < 0xFFFFFFFFFFFFFFC4 || (a2 - 1) > 1)
  {
    return 0;
  }

  if (a1 <= 0x1D)
  {
    if (a2 == 1)
    {
      if (qword_1008DAB50 == -1)
      {
      }
    }

    else if (qword_1008DAB20 == -1)
    {
    }

    goto LABEL_39;
  }

  if (a1 <= 0x27)
  {
    if (a2 == 1)
    {
      if (qword_1008DAB58 == -1)
      {
      }
    }

    else if (qword_1008DAB28 == -1)
    {
    }

    goto LABEL_39;
  }

  if (a1 <= 0x31)
  {
    if (a2 == 1)
    {
      if (qword_1008DAB60 == -1)
      {
      }
    }

    else if (qword_1008DAB30 == -1)
    {
    }

    goto LABEL_39;
  }

  if (a1 <= 0x3B)
  {
    if (a2 == 1)
    {
      if (qword_1008DAB68 == -1)
      {
      }
    }

    else if (qword_1008DAB38 == -1)
    {
    }

    goto LABEL_39;
  }

  if (a1 <= 0x45)
  {
    if (a2 == 1)
    {
      if (qword_1008DAB70 == -1)
      {
      }
    }

    else if (qword_1008DAB40 == -1)
    {
    }

    goto LABEL_39;
  }

  if (a2 == 1)
  {
    if (qword_1008DAB78 == -1)
    {
    }

    goto LABEL_39;
  }

  if (qword_1008DAB48 != -1)
  {
LABEL_39:
    swift_once();
  }
}

unint64_t sub_1004152D0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100845AB0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1004153CC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v24 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v8;
    v22 = a4;
    v13 = *(v8 + 16);
    v12 = v8 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v7);
      v17 = v24(v10);
      if (v4)
      {
        return (*v14)(v10, v7);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v7);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v8 = v21;
        a4 = v22;
        return (*(v8 + 56))(a4, v18, 1, v7);
      }
    }

    v8 = v21;
    a4 = v22;
    (*(v21 + 32))(v22, v10, v7);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v8 + 56))(a4, v18, 1, v7);
}

uint64_t sub_1004155F8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, char *a4@<X8>)
{
  v5 = v4;
  v33 = a1;
  v29 = a4;
  v39 = a3(0);
  __chkstk_darwin(v39);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v5;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v5 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100415900@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = a3(0);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  v17 = *(a2 + 16);
  if (v17)
  {
    v23 = v14;
    v24 = v13;
    v25 = a6;
    v18 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v19 = *(v14 + 72);
    while (1)
    {
      sub_10042C4D0(v18, v16, a4);
      v20 = a1(v16);
      if (v6)
      {
        return sub_10042C538(v16, a5);
      }

      if (v20)
      {
        break;
      }

      sub_10042C538(v16, a5);
      v18 += v19;
      if (!--v17)
      {
        v21 = 1;
        a6 = v25;
        goto LABEL_10;
      }
    }

    a6 = v25;
    sub_10042C598(v16, v25, a4);
    v21 = 0;
LABEL_10:
    v14 = v23;
    v13 = v24;
  }

  else
  {
    v21 = 1;
  }

  return (*(v14 + 56))(a6, v21, 1, v13);
}

void *sub_100415A9C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

void sub_100415BB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [*(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_stackViewModelCache) removeAllObjects];
    sub_1000062E0();
  }
}

uint64_t sub_100415C1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v90 = a3;
  v91 = a4;
  v6 = sub_100140278(&qword_1008ED000);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = __chkstk_darwin(v6);
  v78 = v8;
  v79 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v74 - v9;
  v10 = sub_100140278(&unk_1008F2010);
  v87 = *(v10 - 8);
  v88 = v10;
  v11 = __chkstk_darwin(v10);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v85 = &v74 - v14;
  v81 = v15;
  __chkstk_darwin(v13);
  v86 = &v74 - v16;
  v17 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v17 - 8);
  v75 = &v74 - v18;
  v77 = type metadata accessor for Trainer();
  v74 = *(v77 - 8);
  v19 = __chkstk_darwin(v77);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = &v74 - v22;
  static os_log_type_t.default.getter();
  v23 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1006D1F70;
  *(v24 + 56) = &type metadata for String;
  v25 = sub_10000A788();
  *(v24 + 32) = 0xD000000000000024;
  *(v24 + 40) = 0x800000010075CB00;
  *(v24 + 96) = &type metadata for String;
  *(v24 + 104) = v25;
  *(v24 + 64) = v25;
  *(v24 + 72) = a1;
  *(v24 + 80) = a2;
  v26 = v23;

  os_log(_:dso:log:_:_:)();

  v27 = a1;
  v28 = v89;

  v29 = OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_trainerCache;
  swift_beginAccess();
  v30 = *&v28[v29];
  if (*(v30 + 16))
  {

    v31 = sub_100066F20(v27, a2);
    if (v32)
    {
      v33 = v74;
      v34 = *(v30 + 56) + *(v74 + 72) * v31;
      v89 = *(v74 + 16);
      v35 = v77;
      (v89)(v21, v34, v77);

      (*(v33 + 32))(v76, v21, v35);
      static os_log_type_t.default.getter();
      v36 = HKLogActivity;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1006D64F0;
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = v25;
      *(v37 + 32) = 0xD000000000000024;
      *(v37 + 40) = 0x800000010075CB00;
      *(v37 + 96) = &type metadata for String;
      *(v37 + 104) = v25;
      *(v37 + 72) = v27;
      *(v37 + 80) = a2;

      v38 = v36;
      v39 = v76;
      v40 = Trainer.description.getter();
      *(v37 + 136) = &type metadata for String;
      *(v37 + 144) = v25;
      *(v37 + 112) = v40;
      *(v37 + 120) = v41;
      os_log(_:dso:log:_:_:)();

      v42 = v75;
      v43 = v77;
      (v89)(v75, v39, v77);
      (*(v33 + 56))(v42, 0, 1, v43);
      v90(v42);
      sub_10000EA04(v42, &unk_1008E9B20);
      return (*(v33 + 8))(v39, v43);
    }
  }

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  v46[2] = v45;
  v46[3] = v27;
  v47 = v90;
  v48 = v91;
  v46[4] = a2;
  v46[5] = v47;
  v46[6] = v48;
  v49 = swift_allocObject();
  v49[2] = v27;
  v49[3] = a2;
  v49[4] = v47;
  v49[5] = v48;
  sub_1000066AC(&v28[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient], *&v28[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24]);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v50 = v80;
  dispatch thunk of CatalogClientProtocol.fetchRemoteTrainerDetail(_:)();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_10042C688;
  *(v51 + 24) = v46;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_10042C6B0;
  *(v52 + 24) = v51;
  v54 = v82;
  v53 = v83;
  v55 = v79;
  (*(v82 + 16))(v79, v50, v83);
  v56 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v57 = (v78 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v56, v55, v53);
  v59 = (v58 + v57);
  *v59 = sub_10042C60C;
  v59[1] = v52;

  v60 = v85;
  Promise.init(asyncOperation:)();
  (*(v54 + 8))(v50, v53);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10042C600;
  *(v61 + 24) = v49;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_10042C698;
  *(v62 + 24) = v61;
  v64 = v87;
  v63 = v88;
  v65 = v84;
  (*(v87 + 16))(v84, v60, v88);
  v66 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v67 = (v81 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v66, v65, v63);
  v69 = (v68 + v67);
  *v69 = sub_10042C604;
  v69[1] = v62;

  v70 = v86;
  Promise.init(asyncOperation:)();
  v71 = *(v64 + 8);
  v71(v60, v63);
  v72 = Promise.operation.getter();
  v73 = swift_allocObject();
  *(v73 + 16) = 0;
  *(v73 + 24) = 0;
  v72(sub_10042C67C, v73);

  return (v71)(v70, v63);
}

uint64_t sub_10041653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v19 = a6;
  v20 = a5;
  v8 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Trainer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TrainerDetail.trainer.getter();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = *(v12 + 16);
  if (Strong)
  {
    v17 = Strong;
    v16(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    swift_beginAccess();

    sub_10055A8FC(v10, a3, a4);
    swift_endAccess();
  }

  v16(v10, v14, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  v20(v10);
  sub_10000EA04(v10, &unk_1008E9B20);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100416788(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v7 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  static os_log_type_t.error.getter();
  v10 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1006D64F0;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_10000A788();
  *(v11 + 32) = 0xD000000000000024;
  *(v11 + 40) = 0x800000010075CB00;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;
  swift_getErrorValue();
  v13 = v10;

  v14 = Error.localizedDescription.getter();
  *(v11 + 136) = &type metadata for String;
  *(v11 + 144) = v12;
  *(v11 + 112) = v14;
  *(v11 + 120) = v15;
  os_log(_:dso:log:_:_:)();

  v16 = type metadata accessor for Trainer();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v19(v9);
  return sub_10000EA04(v9, &unk_1008E9B20);
}

uint64_t sub_1004169A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v40 = a4;
  v41 = a6;
  v9 = type metadata accessor for CatalogLockup();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v37 - v14;
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v16 = *(v10 + 16);
  v16(&v37 - v14, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v10 + 8))(v15, v9);
LABEL_7:
    LODWORD(v39) = static os_log_type_t.error.getter();
    v32 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1006D64F0;
    *(v33 + 56) = &type metadata for String;
    v34 = sub_10000A788();
    *(v33 + 64) = v34;
    *(v33 + 32) = 0xD00000000000002ALL;
    *(v33 + 40) = 0x8000000100748BB0;
    *(v33 + 96) = sub_100140278(&qword_1008ECFF0);
    v35 = sub_10014A6B0(&qword_1008ECFF8, &qword_1008ECFF0);
    *(v33 + 72) = a1;
    *(v33 + 136) = &type metadata for String;
    *(v33 + 144) = v34;
    *(v33 + 104) = v35;
    *(v33 + 112) = a3;
    *(v33 + 120) = v40;

    v36 = v32;

    os_log(_:dso:log:_:_:)();

    return (a5)(0);
  }

  v39 = a5;
  v18 = Strong;
  sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_mediaTagStringBuilder, v42);

  sub_100006260(v42, v43);
  v16(v13, v15, v9);
  sub_100007C5C(v43, v42);
  v19 = type metadata accessor for CatalogItemViewModel();
  v20 = objc_allocWithZone(v19);
  v21 = sub_1003A6018(v13, v42);
  v38 = static os_log_type_t.default.getter();
  v37 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1006D64F0;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_10000A788();
  *(v22 + 32) = 0xD00000000000002ALL;
  *(v22 + 40) = 0x8000000100748BB0;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = a3;
  *(v22 + 80) = v40;
  *(v22 + 136) = v19;
  *(v22 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
  *(v22 + 112) = v21;
  v24 = v37;

  v25 = v21;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v28 = *(v26 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogItemViewModelCache);

    v29 = String._bridgeToObjectiveC()();
    [v28 setObject:v25 forKey:v29];
  }

  v30 = v25;
  v39(v25);

  sub_100005A40(v43);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_100416E78(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D64F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10000A788();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD00000000000002ALL;
  *(v5 + 40) = 0x8000000100748BB0;
  v8 = a2[3];
  v7 = a2[4];
  sub_1000066AC(a2, v8);
  v9 = *(v7 + 8);
  v10 = v4;
  v11 = v9(v8, v7);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v11;
  *(v5 + 80) = v12;
  swift_getErrorValue();
  v13 = Error.localizedDescription.getter();
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v6;
  *(v5 + 112) = v13;
  *(v5 + 120) = v14;
  os_log(_:dso:log:_:_:)();

  return a3(0);
}

void sub_100417014(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v98 = a2;
  v99 = a3;
  v89 = sub_100140278(&unk_1008F4FB0);
  v87 = *(v89 - 8);
  v4 = __chkstk_darwin(v89);
  v84 = v5;
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v79 - v6;
  v7 = sub_100140278(&unk_1008F2010);
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = __chkstk_darwin(v7);
  v90 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = &v79 - v11;
  v88 = v12;
  __chkstk_darwin(v10);
  v94 = &v79 - v13;
  CatalogWorkoutsRequest = type metadata accessor for FetchCatalogWorkoutsRequest();
  v92 = *(CatalogWorkoutsRequest - 8);
  v93 = CatalogWorkoutsRequest;
  __chkstk_darwin(CatalogWorkoutsRequest);
  v100 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FitnessPlusStackViewModel();
  v17 = v16 - 8;
  v83 = *(v16 - 8);
  v18 = *(v83 + 64);
  __chkstk_darwin(v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  v20 = HKLogActivity;
  v81 = sub_100140278(&unk_1008E4E50);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D1F70;
  *(v21 + 56) = &type metadata for String;
  v22 = sub_10000A788();
  *(v21 + 64) = v22;
  *(v21 + 32) = 0xD000000000000024;
  *(v21 + 40) = 0x800000010075C800;
  v80 = 0x800000010075C800;
  v23 = v20;
  v24 = sub_1003739FC();
  *(v21 + 96) = &type metadata for String;
  *(v21 + 104) = v22;
  *(v21 + 72) = v24;
  *(v21 + 80) = v25;
  os_log(_:dso:log:_:_:)();

  v26 = (a1 + *(v17 + 36));
  v28 = *v26;
  v27 = v26[1];
  v29 = *&v101[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_stackViewModelCache];

  v97 = v28;
  v30 = String._bridgeToObjectiveC()();
  v31 = [v29 objectForKey:v30];

  if (!v31)
  {
    goto LABEL_7;
  }

  v32 = *(*&v31[OBJC_IVAR___CHCatalogItemViewModel_workouts] + 16);
  v33 = *(sub_1003743E0() + 2);

  if (v32 != v33)
  {

LABEL_7:
    v82 = a1;
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10042C4D0(a1, &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FitnessPlusStackViewModel);
    v40 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v41 = (v18 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 23) & 0xFFFFFFFFFFFFFFF8;
    v44 = v27;
    v45 = v19;
    v46 = swift_allocObject();
    sub_10042C598(v45, v46 + v40, type metadata accessor for FitnessPlusStackViewModel);
    *(v46 + v41) = v39;
    v47 = (v46 + v42);
    v49 = v98;
    v48 = v99;
    *v47 = v98;
    v47[1] = v48;
    v50 = (v46 + v43);
    *v50 = v97;
    v50[1] = v44;
    sub_10042C4D0(v82, v45, type metadata accessor for FitnessPlusStackViewModel);
    v51 = swift_allocObject();
    sub_10042C598(v45, v51 + v40, type metadata accessor for FitnessPlusStackViewModel);
    v52 = (v51 + v41);
    v53 = v51;
    *v52 = v49;
    v52[1] = v48;
    swift_retain_n();
    v54 = sub_1003743E0();
    sub_1001AA6D4(v54);

    FetchCatalogWorkoutsRequest.init(identifiers:)();
    sub_1000066AC(&v101[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient], *&v101[OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_catalogClient + 24]);
    v55 = v86;
    dispatch thunk of CatalogClientProtocol.fetchRemoteCatalogWorkouts(_:)();
    v56 = swift_allocObject();
    *(v56 + 16) = sub_10042C68C;
    *(v56 + 24) = v46;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_10042C618;
    *(v57 + 24) = v56;
    v58 = v87;
    v59 = v85;
    v60 = v89;
    (*(v87 + 16))(v85, v55, v89);
    v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v62 = (v84 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v58 + 32))(v63 + v61, v59, v60);
    v64 = (v63 + v62);
    *v64 = sub_10042C614;
    v64[1] = v57;

    v65 = v91;
    Promise.init(asyncOperation:)();
    (*(v58 + 8))(v55, v60);
    v66 = swift_allocObject();
    *(v66 + 16) = sub_10042C690;
    *(v66 + 24) = v53;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_10042C698;
    *(v67 + 24) = v66;
    v69 = v95;
    v68 = v96;
    v70 = v90;
    (*(v95 + 16))(v90, v65, v96);
    v71 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v72 = (v88 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = swift_allocObject();
    (*(v69 + 32))(v73 + v71, v70, v68);
    v74 = (v73 + v72);
    *v74 = sub_10042C604;
    v74[1] = v67;

    v75 = v94;
    Promise.init(asyncOperation:)();
    v76 = *(v69 + 8);
    v76(v65, v68);
    v77 = Promise.operation.getter();
    v78 = swift_allocObject();
    *(v78 + 16) = 0;
    *(v78 + 24) = 0;
    v77(sub_10042C67C, v78);

    v76(v75, v68);
    (*(v92 + 8))(v100, v93);
    return;
  }

  static os_log_type_t.default.getter();
  v34 = HKLogActivity;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1006D64F0;
  *(v35 + 56) = &type metadata for String;
  *(v35 + 64) = v22;
  *(v35 + 32) = 0xD000000000000024;
  *(v35 + 40) = v80;
  *(v35 + 96) = &type metadata for String;
  *(v35 + 104) = v22;
  *(v35 + 72) = v97;
  *(v35 + 80) = v27;
  *(v35 + 136) = type metadata accessor for CatalogItemViewModel();
  *(v35 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
  *(v35 + 112) = v31;

  v36 = v34;
  v37 = v31;
  os_log(_:dso:log:_:_:)();

  v101 = v37;
  v98(v31);

  v38 = v101;
}

uint64_t sub_100417A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v149 = a7;
  v143 = a6;
  v163 = a5;
  v162 = a4;
  v164 = a2;
  v9 = type metadata accessor for FitnessPlusStackViewModel();
  v139 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v140 = v10;
  v152 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_100140278(&qword_1008ECFD0);
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v11;
  __chkstk_darwin(v12);
  v154 = &v135 - v13;
  v148 = sub_100140278(&unk_1008F2010);
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v135 - v14;
  v15 = sub_100140278(&qword_1008EB280);
  v137 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v151 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v16;
  __chkstk_darwin(v17);
  v153 = &v135 - v18;
  v19 = sub_100140278(&unk_1008EAF20);
  __chkstk_darwin(v19 - 8);
  v157 = &v135 - v20;
  v160 = type metadata accessor for Artwork();
  v159 = *(v160 - 8);
  __chkstk_darwin(v160);
  v150 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = v21;
  __chkstk_darwin(v22);
  v155 = &v135 - v23;
  v24 = type metadata accessor for CatalogWorkout();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v158 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v165 = &v135 - v28;
  __chkstk_darwin(v29);
  v169 = &v135 - v30;
  __chkstk_darwin(v31);
  v33 = &v135 - v32;
  __chkstk_darwin(v34);
  v176 = &v135 - v35;
  v36 = sub_1004CBF80(_swiftEmptyArrayStorage);
  v37 = *(a1 + 16);
  v174 = v24;
  v166 = v25;
  v156 = a3;
  v161 = a1;
  if (!v37)
  {
LABEL_16:
    v62 = sub_1003743E0();
    v63 = v62;
    v64 = *(v62 + 2);
    if (v64)
    {
      v65 = 0;
      v66 = v166;
      v175 = (v166 + 16);
      v67 = v166 + 32;
      v68 = (v62 + 40);
      v176 = _swiftEmptyArrayStorage;
      v173 = v62;
      while (v65 < *(v63 + 2))
      {
        if (v36[2])
        {
          v70 = *(v68 - 1);
          v69 = *v68;

          v71 = sub_100066F20(v70, v69);
          if (v72)
          {
            v73 = v64;
            v74 = *(v66 + 72);
            v75 = v67;
            v76 = v165;
            v77 = v174;
            (*(v66 + 16))(v165, v36[7] + v74 * v71, v174);

            v78 = *(v66 + 32);
            v79 = v76;
            v67 = v75;
            v78(v169, v79, v77);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = sub_1001A3338(0, *(v176 + 2) + 1, 1, v176);
            }

            v81 = *(v176 + 2);
            v80 = *(v176 + 3);
            v64 = v73;
            if (v81 >= v80 >> 1)
            {
              v176 = sub_1001A3338(v80 > 1, v81 + 1, 1, v176);
            }

            v63 = v173;
            v82 = v176;
            *(v176 + 2) = v81 + 1;
            v83 = v166;
            v78(&v82[((*(v166 + 80) + 32) & ~*(v166 + 80)) + v81 * v74], v169, v174);
            v66 = v83;
          }

          else
          {
          }
        }

        ++v65;
        v68 += 2;
        if (v64 == v65)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_44;
    }

    v176 = _swiftEmptyArrayStorage;
    v66 = v166;
LABEL_29:

    if (*(v176 + 2))
    {
      v84 = v158;
      v85 = v174;
      (*(v66 + 16))(v158, &v176[(*(v66 + 80) + 32) & ~*(v66 + 80)], v174);
      v86 = v157;
      ArtworkFlavorMatching.artworkMatching(variant:)();
      v87 = v159;
      v88 = v160;
      if ((*(v159 + 48))(v86, 1, v160) == 1)
      {
        (*(v66 + 8))(v84, v85);

        sub_10000EA04(v86, &unk_1008EAF20);
      }

      else
      {
        v90 = (v87 + 32);
        v89 = *(v87 + 32);
        v91 = v155;
        v89(v155, v86, v88);
        v92 = v156;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v175 = v89;
          v94 = Strong;
          sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_mediaTagStringBuilder, &v178);

          sub_100006260(&v178, &v180);
          swift_beginAccess();
          v95 = swift_unknownObjectWeakLoadStrong();
          if (v95)
          {
            v96 = *(v95 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_playlists);
            v97 = v95;

            __chkstk_darwin(v98);
            *(&v135 - 2) = v164;
            v99 = v153;
            sub_1004155F8(sub_10042680C, v96, &type metadata accessor for Playlist, v153);
          }

          else
          {
            v104 = type metadata accessor for Playlist();
            v99 = v153;
            (*(*(v104 - 8) + 56))(v153, 1, 1, v104);
          }

          swift_beginAccess();
          v105 = swift_unknownObjectWeakLoadStrong();
          if (v105)
          {
            v106 = v105;
            sub_100007C5C(v105 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_configurationClient, &v178);

            sub_1000066AC(&v178, v179);
            dispatch thunk of ConfigurationClientProtocol.queryConfiguration()();
            sub_10001B104(v99, v151, &qword_1008EB280);
            v107 = v87 + 16;
            (*(v87 + 16))(v150, v91, v88);
            sub_100007C5C(&v180, &v177);
            v173 = type metadata accessor for FitnessPlusStackViewModel;
            sub_10042C4D0(v164, v152, type metadata accessor for FitnessPlusStackViewModel);
            v108 = (*(v137 + 80) + 16) & ~*(v137 + 80);
            v109 = (v138 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
            v110 = (*(v107 + 64) + v109 + 8) & ~*(v107 + 64);
            v111 = (v136 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
            v112 = (*(v139 + 80) + v111 + 40) & ~*(v139 + 80);
            v113 = (v140 + v112 + 7) & 0xFFFFFFFFFFFFFFF8;
            v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
            v172 = v90;
            v115 = swift_allocObject();
            sub_100015E80(v151, v115 + v108, &qword_1008EB280);
            *(v115 + v109) = v176;
            v116 = v115 + v110;
            v88 = v160;
            (v175)(v116, v150, v160);
            sub_100006260(&v177, v115 + v111);
            sub_10042C598(v152, v115 + v112, v173);
            *(v115 + v113) = v92;
            v117 = (v115 + v114);
            v118 = v149;
            *v117 = v143;
            v117[1] = v118;
            v119 = (v115 + ((v114 + 23) & 0xFFFFFFFFFFFFFFF8));
            v120 = v163;
            *v119 = v162;
            v119[1] = v120;
            v121 = swift_allocObject();
            *(v121 + 16) = sub_10042682C;
            *(v121 + 24) = v115;
            v122 = v144;
            v123 = v142;
            v124 = v146;
            (*(v144 + 16))(v142, v154, v146);
            v125 = (*(v122 + 80) + 16) & ~*(v122 + 80);
            v126 = (v141 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
            v127 = swift_allocObject();
            v128 = v123;
            v84 = v158;
            (*(v122 + 32))(v127 + v125, v128, v124);
            v129 = (v127 + v126);
            *v129 = sub_1004269F8;
            v129[1] = v121;

            v130 = v145;
            Promise.init(asyncOperation:)();
            (*(v122 + 8))(v154, v124);
            v87 = v159;
            v99 = v153;
            sub_100005A40(&v178);
            v131 = v148;
            v132 = Promise.operation.getter();
            v133 = swift_allocObject();
            *(v133 + 16) = 0;
            *(v133 + 24) = 0;
            v132(sub_10042C67C, v133);

            v134 = v130;
            v91 = v155;
            (*(v147 + 8))(v134, v131);
          }

          else
          {
          }

          sub_10000EA04(v99, &qword_1008EB280);
          sub_100005A40(&v180);
          (*(v87 + 8))(v91, v88);
          return (*(v166 + 8))(v84, v174);
        }

        (*(v87 + 8))(v91, v88);
        (*(v66 + 8))(v84, v174);
      }
    }

    else
    {
    }

    static os_log_type_t.error.getter();
    v100 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1006D1F70;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = sub_10000A788();
    *(v101 + 32) = 0xD000000000000024;
    *(v101 + 40) = 0x800000010075C800;
    *(v101 + 96) = sub_100140278(&qword_1008ECFD8);
    *(v101 + 104) = sub_10014A6B0(&qword_1008ECFE0, &qword_1008ECFD8);
    *(v101 + 72) = v161;
    v102 = v100;

    os_log(_:dso:log:_:_:)();

    return v162(0);
  }

  v39 = *(v25 + 16);
  v38 = v25 + 16;
  v172 = v39;
  v40 = (a1 + ((*(v38 + 64) + 32) & ~*(v38 + 64)));
  v41 = *(v38 + 56);
  v168 = (v38 + 16);
  v170 = (v38 - 8);
  v173 = v38;
  v167 = (v38 + 24);
  v171 = v33;
  while (1)
  {
    v175 = v37;
    v43 = v176;
    v44 = v172;
    v172(v176, v40, v24);
    v45 = CatalogWorkout.identifier.getter();
    v47 = v46;
    v44(v33, v43, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v180 = v36;
    v50 = sub_100066F20(v45, v47);
    v51 = v36[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
      break;
    }

    v54 = v49;
    if (v36[3] >= v53)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v49)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_100495114();
        if (v54)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10048CD1C(v53, isUniquelyReferenced_nonNull_native);
      v55 = sub_100066F20(v45, v47);
      if ((v54 & 1) != (v56 & 1))
      {
        goto LABEL_46;
      }

      v50 = v55;
      if (v54)
      {
LABEL_3:

        v36 = v180;
        v42 = v180[7] + v50 * v41;
        v33 = v171;
        v24 = v174;
        (*v167)(v42, v171, v174);
        (*v170)(v176, v24);
        goto LABEL_4;
      }
    }

    v36 = v180;
    v180[(v50 >> 6) + 8] |= 1 << v50;
    v57 = (v36[6] + 16 * v50);
    *v57 = v45;
    v57[1] = v47;
    v58 = v36[7] + v50 * v41;
    v33 = v171;
    v24 = v174;
    (*v168)(v58, v171, v174);
    (*v170)(v176, v24);
    v59 = v36[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_45;
    }

    v36[2] = v61;
LABEL_4:
    v40 = (v40 + v41);
    v37 = v175 - 1;
    if (v175 == 1)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100418C90(uint64_t a1, uint64_t a2)
{
  v3 = Playlist.identifier.getter();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for FitnessPlusStackViewModel() + 24));
  v7 = v6[1];
  if (v7)
  {
    if (v3 == *v6 && v7 == v5)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_100418D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id), uint64_t a11)
{
  v42[1] = a8;
  v51 = a6;
  v52 = a7;
  v48 = a5;
  v49 = a1;
  v45 = a2;
  v46 = a4;
  v50 = a3;
  v53 = a10;
  v54 = a11;
  v11 = type metadata accessor for Configuration();
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artwork();
  v47 = *(v15 - 8);
  v16 = v47;
  __chkstk_darwin(v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008EB280);
  __chkstk_darwin(v19 - 8);
  v21 = v42 - v20;
  sub_10001B104(v45, v42 - v20, &qword_1008EB280);
  v22 = *(v16 + 16);
  v23 = v15;
  v22(v18, v46, v15);
  sub_100007C5C(v48, v56);
  (*(v12 + 16))(v14, v49, v11);
  v24 = type metadata accessor for CatalogItemViewModel();
  v25 = objc_allocWithZone(v24);

  *&v25[OBJC_IVAR___CHCatalogItemViewModel_title] = sub_1003A6AD4(v26, v21);
  *&v25[OBJC_IVAR___CHCatalogItemViewModel_subtitle] = sub_1003A6D80(v26, v14, v56);
  v22(&v25[OBJC_IVAR___CHCatalogItemViewModel_artwork], v18, v23);
  v27 = &v25[OBJC_IVAR___CHCatalogItemViewModel_mediaType];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -1;
  *&v25[OBJC_IVAR___CHCatalogItemViewModel_workouts] = v26;
  v55.receiver = v25;
  v55.super_class = v24;
  v28 = objc_msgSendSuper2(&v55, "init");
  (*(v44 + 8))(v14, v43);
  sub_100005A40(v56);
  (*(v47 + 8))(v18, v23);
  sub_10000EA04(v21, &qword_1008EB280);
  static os_log_type_t.default.getter();
  v29 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1006D64F0;
  *(v30 + 56) = &type metadata for String;
  v31 = sub_10000A788();
  *(v30 + 64) = v31;
  *(v30 + 32) = 0xD000000000000024;
  *(v30 + 40) = 0x800000010075C800;
  v32 = (v51 + *(type metadata accessor for FitnessPlusStackViewModel() + 28));
  v33 = *v32;
  v34 = v32[1];
  *(v30 + 96) = &type metadata for String;
  *(v30 + 104) = v31;
  *(v30 + 72) = v33;
  *(v30 + 80) = v34;
  *(v30 + 136) = v24;
  *(v30 + 144) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
  *(v30 + 112) = v28;
  v35 = v29;

  v36 = v28;
  os_log(_:dso:log:_:_:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    v39 = *(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_stackViewModelCache);

    v40 = String._bridgeToObjectiveC()();
    [v39 setObject:v36 forKey:v40];
  }

  v41 = v36;
  v53(v36);
}

uint64_t sub_100419210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D64F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10000A788();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD000000000000024;
  *(v5 + 40) = 0x800000010075C800;
  v7 = v4;
  v8 = sub_1003739FC();
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v6;
  *(v5 + 72) = v8;
  *(v5 + 80) = v9;
  swift_getErrorValue();
  v10 = Error.localizedDescription.getter();
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v6;
  *(v5 + 112) = v10;
  *(v5 + 120) = v11;
  os_log(_:dso:log:_:_:)();

  return a3(0);
}

uint64_t sub_100419358(void *a1, uint64_t a2, uint64_t a3)
{
  v48 = sub_100140278(&unk_1008E4D90);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v48);
  v10 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v45 - v11;
  v12 = sub_100140278(&unk_1008F2010);
  v51 = *(v12 - 8);
  v52 = v12;
  v49 = *(v51 + 64);
  v13 = __chkstk_darwin(v12);
  v50 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v47 = &v45 - v16;
  __chkstk_darwin(v15);
  v53 = &v45 - v17;
  v18 = swift_allocObject();
  v46 = v18;
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  sub_1000066AC((v3 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_artworkImageLoader), *(v3 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_artworkImageLoader + 24));
  swift_retain_n();
  v20 = a1;
  v21 = v54;
  dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:)();
  v22 = swift_allocObject();
  v23 = v46;
  *(v22 + 16) = sub_1002F3F08;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10042B530;
  *(v24 + 24) = v22;
  v25 = v48;
  (*(v7 + 16))(v10, v21, v48);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v26, v10, v25);
  v28 = (v27 + ((v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v28 = sub_10042B55C;
  v28[1] = v24;

  v29 = v47;
  Promise.init(asyncOperation:)();
  (*(v7 + 8))(v54, v25);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10042B524;
  *(v30 + 24) = v19;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10042C698;
  *(v31 + 24) = v30;
  v32 = v50;
  v33 = v51;
  v34 = v29;
  v35 = v52;
  (*(v51 + 16))(v50, v29, v52);
  v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v37 = (v49 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  (*(v33 + 32))(v38 + v36, v32, v35);
  v39 = (v38 + v37);
  *v39 = sub_10042C604;
  v39[1] = v31;

  v40 = v53;
  Promise.init(asyncOperation:)();
  v41 = *(v33 + 8);
  v41(v34, v35);
  v42 = Promise.operation.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_10042C67C, v43);

  return (v41)(v40, v35);
}

uint64_t sub_1004198C8(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D64F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10000A788();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD00000000000002ELL;
  *(v5 + 40) = 0x800000010075CEA0;
  *(v5 + 96) = type metadata accessor for CatalogItemViewModel();
  *(v5 + 104) = sub_100429104(&qword_1008DD8F8, type metadata accessor for CatalogItemViewModel);
  *(v5 + 72) = a2;
  swift_getErrorValue();
  v7 = v4;
  v8 = a2;
  v9 = Error.localizedDescription.getter();
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v6;
  *(v5 + 112) = v9;
  *(v5 + 120) = v10;
  os_log(_:dso:log:_:_:)();

  return a3(0);
}

void sub_100419B14(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, void))
{
  if (!a2)
  {
    goto LABEL_12;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v23 = a2;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v23;
    if (!v24)
    {
      goto LABEL_12;
    }
  }

  else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v6 + 16))
    {
      __break(1u);
      return;
    }

    v7 = *(a2 + 32);
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v25 = [objc_opt_self() gramUnitWithMetricPrefix:9];
    v11 = [v10 quantity];
    [v11 doubleValueForUnit:v25];
    v13 = v12;

    a4(v13, 0);

    return;
  }

LABEL_12:
  v14 = sub_100429814();
  v15 = static os_log_type_t.error.getter();
  v16 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v15))
  {
    v17 = v16;
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_10000AFDC(0xD00000000000002CLL, 0x800000010075CF40, &v26);
    *(v18 + 12) = 2080;
    if (a3)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    sub_100140278(&qword_1008DC8F8);
    v19 = Optional.description.getter();
    v21 = v20;

    v22 = sub_10000AFDC(v19, v21, &v26);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v14;
    _os_log_impl(&_mh_execute_header, v17, v15, "[seymour] %s failed to fetch weight with error %s. Defaulting to %f", v18, 0x20u);
    swift_arrayDestroy();
  }

  a4(*&v14, 0);
}

uint64_t sub_100419E2C(uint64_t a1, char a2, uint64_t (*a3)(void, __n128), uint64_t a4, void *a5, void *a6)
{
  v83 = a1;
  v84 = a6;
  v10 = sub_100140278(&qword_1008ED068);
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  __chkstk_darwin(v10);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = v73 - v14;
  v15 = sub_100140278(&unk_1008F2010);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  __chkstk_darwin(v18);
  v20 = v73 - v19;
  v24 = __chkstk_darwin(v21);
  v26 = v73 - v25;
  if (a2)
  {
    return a3(0, v24);
  }

  v77 = v23;
  v78 = v22;
  v79 = a4;
  v27 = [a5 metadata];
  if (!v27)
  {
LABEL_10:
    static os_log_type_t.error.getter();
    v67 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1006D1F70;
    *(v68 + 56) = &type metadata for String;
    *(v68 + 64) = sub_10000A788();
    *(v68 + 32) = 0xD00000000000002ELL;
    *(v68 + 40) = 0x800000010075CFC0;
    *(v68 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
    *(v68 + 104) = sub_1001ED4D4();
    *(v68 + 72) = a5;
    v69 = a5;
    v70 = v67;
    os_log(_:dso:log:_:_:)();

    return a3(0, v24);
  }

  v75 = v20;
  v76 = v26;
  v28 = v27;
  v29 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = static HealthDataConstants.workoutSessionIdentifierProperty.getter();
  if (!*(v29 + 16))
  {

    goto LABEL_9;
  }

  v74 = v16;
  v32 = sub_100066F20(v30, v31);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  sub_10000B1B4(*(v29 + 56) + 32 * v32, v85);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v73[1] = v85[5];
  v35 = swift_allocObject();
  v35[2] = a5;
  v35[3] = a3;
  v36 = v79;
  v37 = v83;
  v35[4] = v79;
  v35[5] = v37;
  v38 = swift_allocObject();
  v38[2] = a5;
  v38[3] = a3;
  v38[4] = v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_archivedSessionClient, v85);
    v41 = a5;
    v84 = v38;
    v42 = v41;
    swift_retain_n();
    v43 = v42;

    sub_1000066AC(v85, v85[3]);
    v44 = v80;
    dispatch thunk of ArchivedSessionClientProtocol.queryArchivedSession(sessionIdentifier:)();

    v45 = swift_allocObject();
    *(v45 + 16) = sub_10042BAF0;
    *(v45 + 24) = v35;
    v46 = swift_allocObject();
    *(v46 + 16) = sub_10042C6B0;
    *(v46 + 24) = v45;
    v73[0] = v35;
    v48 = v81;
    v47 = v82;
    (*(v81 + 16))(v12, v44, v82);
    v49 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v50 = swift_allocObject();
    (*(v48 + 32))(v50 + v49, v12, v47);
    v51 = (v50 + ((v11 + v49 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v51 = sub_10042BB58;
    v51[1] = v46;

    v52 = v75;
    Promise.init(asyncOperation:)();
    (*(v48 + 8))(v44, v47);
    sub_100005A40(v85);
    v53 = swift_allocObject();
    v54 = v84;
    *(v53 + 16) = sub_10042BB4C;
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_10042C698;
    *(v55 + 24) = v53;
    v56 = v74;
    v58 = v77;
    v57 = v78;
    (*(v74 + 16))(v77, v52, v78);
    v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v60 = swift_allocObject();
    (*(v56 + 32))(v60 + v59, v58, v57);
    v61 = (v60 + ((v17 + v59 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v61 = sub_10042C604;
    v61[1] = v55;

    v62 = v76;
    Promise.init(asyncOperation:)();
    v63 = *(v56 + 8);
    v63(v52, v57);
    v64 = Promise.operation.getter();
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    v64(sub_10042C67C, v65);

    return (v63)(v62, v57);
  }

  else
  {
    v71 = a5;
    swift_retain_n();
    v72 = v71;
  }
}

uint64_t sub_10041A5D8(uint64_t a1, void *a2, uint64_t (*a3)(id), uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v5 = type metadata accessor for UserBodyMassMetric();
  v33 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E1010);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ScoreSummary();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  ArchivedSession.scoreSummary.getter();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000EA04(v10, &qword_1008E1010);
    static os_log_type_t.default.getter();
    v21 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D1F70;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000A788();
    *(v22 + 32) = 0xD00000000000002ELL;
    *(v22 + 40) = 0x800000010075CFC0;
    *(v22 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
    *(v22 + 104) = sub_1001ED4D4();
    *(v22 + 72) = a2;
    v23 = v21;
    v24 = a2;
    os_log(_:dso:log:_:_:)();

    return v35(0);
  }

  else
  {
    (*(v12 + 32))(v20, v10, v11);
    static Double.currentMachTimestamp()();
    UserBodyMassMetric.init(massInKg:machTimestamp:)();
    ScoreSummary.scale(by:)();
    v32 = v5;
    v26 = *(v12 + 16);
    v26(v14, v17, v11);
    v27 = type metadata accessor for ScoreSummaryWrapper();
    v28 = objc_allocWithZone(v27);
    v26(&v28[OBJC_IVAR___CHScoreSummaryWrapper_scoreSummary], v14, v11);
    v36.receiver = v28;
    v36.super_class = v27;
    v29 = objc_msgSendSuper2(&v36, "init");
    v30 = *(v12 + 8);
    v30(v14, v11);
    v31 = v29;
    v35(v29);

    v30(v17, v11);
    (*(v33 + 8))(v7, v32);
    return (v30)(v20, v11);
  }
}

uint64_t sub_10041AA18(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D64F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10000A788();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD00000000000002ELL;
  *(v5 + 40) = 0x800000010075CFC0;
  *(v5 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
  *(v5 + 104) = sub_1001ED4D4();
  *(v5 + 72) = a2;
  swift_getErrorValue();
  v7 = v4;
  v8 = a2;
  v9 = Error.localizedDescription.getter();
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v6;
  *(v5 + 112) = v9;
  *(v5 + 120) = v10;
  os_log(_:dso:log:_:_:)();

  return a3(0);
}

uint64_t sub_10041AC88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ArtworkDimension();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SeymourArtworkSizingBehavior();
  __chkstk_darwin(v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10042C4D0(a1, v10, type metadata accessor for SeymourArtworkSizingBehavior);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_100007C5C(Strong + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_artworkImageLoader, v19);

      sub_1000066AC(v19, v20);
      dispatch thunk of ArtworkImageLoading.fetchArtwork(_:size:)();
LABEL_6:
      v16 = sub_100140278(&unk_1008E4D90);
      (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
      return sub_100005A40(v19);
    }
  }

  else
  {
    v13 = sub_100140278(&unk_1008F4BD0);
    (*(v5 + 32))(v7, &v10[*(v13 + 48)], v4);
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_100007C5C(v14 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_artworkImageLoader, v19);

      sub_1000066AC(v19, v20);
      dispatch thunk of ArtworkImageLoading.fetchArtwork(_:thatFits:preservingPreferredDimension:)();
      (*(v5 + 8))(v7, v4);
      goto LABEL_6;
    }

    (*(v5 + 8))(v7, v4);
  }

  v18 = sub_100140278(&unk_1008E4D90);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

void sub_10041AFD4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v45 = type metadata accessor for MediaMoment();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for Artwork();
  v8 = *(v44 - 8);
  __chkstk_darwin(v44);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CatalogWorkout();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  CatalogWorkoutDetail.workout.getter();
  v14 = CatalogWorkout.mediaMoments.getter();
  (*(v11 + 8))(v13, v10);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_1001A3D1C(*(v14 + 16), 0);
    v17 = v5;
    v18 = sub_1001A9FC0(v46, &v16[(*(v5 + 80) + 32) & ~*(v5 + 80)], v15, v14);
    v5 = v46[1];
    v42 = v46[2];
    v43 = v18;
    v40 = v46[4];
    v41 = v46[3];

    sub_100022DEC();
    if (v43 == v15)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v17 = v5;
  v16 = _swiftEmptyArrayStorage;
LABEL_5:
  v46[0] = v16;
  sub_10041C494(v46);

  v19 = v46[0];
  v20 = v46[0][2];
  if (v20)
  {
    v35[1] = 0;
    v35[2] = a4;
    v46[0] = _swiftEmptyArrayStorage;
    sub_100186340(0, v20, 0);
    v21 = v46[0];
    v23 = v17[2];
    v22 = v17 + 2;
    v24 = *(v22 + 64);
    v35[0] = v19;
    v25 = v19 + ((v24 + 32) & ~v24);
    v41 = v22[7];
    v42 = v23;
    v43 = v22;
    v26 = (v22 - 1);
    v40 = (v8 + 32);
    v27 = v36;
    do
    {
      v28 = v45;
      v42(v7, v25, v45);
      MediaMoment.artwork.getter();
      (*v26)(v7, v28);
      v46[0] = v21;
      v30 = v21[2];
      v29 = v21[3];
      if (v30 >= v29 >> 1)
      {
        sub_100186340(v29 > 1, v30 + 1, 1);
        v21 = v46[0];
      }

      v21[2] = v30 + 1;
      (*(v8 + 32))(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v27, v44);
      v25 = v41 + v25;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v31);
  v32 = v38;
  v35[-4] = v37;
  v35[-3] = v32;
  v35[-2] = v39;
  v33 = sub_100666C9C(sub_10042B278, &v35[-6], v21);

  v46[0] = v33;
  sub_1000059F8(0, &qword_1008E3FD0);
  v34 = static OS_dispatch_queue.main.getter();
  sub_1000059F8(0, &qword_1008DD8C0);
  sub_100140278(&qword_1008ED048);
  sub_10014A6B0(&qword_1008ED050, &qword_1008ED048);
  static Promise.serial<A>(queue:_:)();
}

uint64_t sub_10041B4D4(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  static os_log_type_t.error.getter();
  v4 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006D64F0;
  *(v5 + 56) = &type metadata for String;
  v6 = sub_10000A788();
  *(v5 + 64) = v6;
  *(v5 + 32) = 0xD00000000000003ALL;
  *(v5 + 40) = 0x800000010075CCF0;
  *(v5 + 96) = sub_1000059F8(0, &qword_1008ED7C0);
  *(v5 + 104) = sub_1001ED4D4();
  *(v5 + 72) = a2;
  swift_getErrorValue();
  v7 = v4;
  v8 = a2;
  v9 = Error.localizedDescription.getter();
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v6;
  *(v5 + 112) = v9;
  *(v5 + 120) = v10;
  os_log(_:dso:log:_:_:)();

  return a3(0);
}

uint64_t sub_10041B648(uint64_t a1, void *a2)
{
  static os_log_type_t.error.getter();
  v3 = HKLogActivity;
  sub_100140278(&unk_1008E4E50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1006D64F0;
  *(v4 + 56) = &type metadata for String;
  v5 = sub_10000A788();
  *(v4 + 64) = v5;
  *(v4 + 32) = 0xD00000000000001BLL;
  *(v4 + 40) = 0x800000010075CC80;
  v7 = a2[3];
  v6 = a2[4];
  sub_1000066AC(a2, v7);
  v8 = *(v6 + 8);
  v9 = v3;
  v10 = v8(v7, v6);
  *(v4 + 96) = &type metadata for String;
  *(v4 + 104) = v5;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  swift_getErrorValue();
  v12 = Error.localizedDescription.getter();
  *(v4 + 136) = &type metadata for String;
  *(v4 + 144) = v5;
  *(v4 + 112) = v12;
  *(v4 + 120) = v13;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10041B7AC(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v73 = sub_100140278(&qword_1008ED0B0);
  v76 = *(v73 - 8);
  v74 = *(v76 + 64);
  __chkstk_darwin(v73);
  v72 = &v59 - v3;
  v4 = sub_100140278(&qword_1008ED0B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v59 - v9;
  v11 = sub_100140278(&qword_1008ED0C0);
  v65 = *(v11 - 8);
  v66 = v11;
  v64 = *(v65 + 64);
  v12 = __chkstk_darwin(v11);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v59 - v14;
  v16 = sub_100140278(&unk_1008F2010);
  v69 = *(v16 - 8);
  v70 = v16;
  v67 = *(v69 + 64);
  v17 = __chkstk_darwin(v16);
  v68 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v63 = &v59 - v20;
  __chkstk_darwin(v19);
  v71 = &v59 - v21;
  sub_1000066AC((a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_recommendationClient), *(a2 + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_recommendationClient + 24));
  dispatch thunk of RecommendationClientProtocol.queryRecommendations(for:)();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10041BF28;
  *(v22 + 24) = 0;
  (*(v5 + 16))(v8, v10, v4);
  v23 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v24 = swift_allocObject();
  (*(v5 + 32))(v24 + v23, v8, v4);
  v25 = (v24 + ((v6 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = sub_10042BF9C;
  v25[1] = v22;
  sub_100140278(&qword_1008DD900);
  v59 = v15;
  Promise.init(asyncOperation:)();
  (*(v5 + 8))(v10, v4);
  v26 = v76;
  v61 = *(v76 + 16);
  v28 = v72;
  v27 = v73;
  v61(v72, v75, v73);
  v29 = v26;
  v30 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v31 = swift_allocObject();
  v32 = *(v29 + 32);
  v76 = v29 + 32;
  v60 = v32;
  v32(v31 + v30, v28, v27);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_10042C090;
  *(v33 + 24) = v31;
  v34 = v65;
  v35 = v66;
  v36 = v62;
  (*(v65 + 16))(v62, v15, v66);
  v37 = v34;
  v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v39 = (v64 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  (*(v37 + 32))(v40 + v38, v36, v35);
  v41 = (v40 + v39);
  *v41 = sub_10042C118;
  v41[1] = v33;
  v42 = v63;
  Promise.init(asyncOperation:)();
  (*(v37 + 8))(v59, v35);
  v44 = v72;
  v43 = v73;
  v61(v72, v75, v73);
  v45 = swift_allocObject();
  v60(v45 + v30, v44, v43);
  v46 = swift_allocObject();
  *(v46 + 16) = sub_10042C2D0;
  *(v46 + 24) = v45;
  v48 = v68;
  v47 = v69;
  v49 = v70;
  (*(v69 + 16))(v68, v42, v70);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v67 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  (*(v47 + 32))(v52 + v50, v48, v49);
  v53 = (v52 + v51);
  *v53 = sub_10042C604;
  v53[1] = v46;
  v54 = v71;
  Promise.init(asyncOperation:)();
  v55 = *(v47 + 8);
  v55(v42, v49);
  v56 = Promise.operation.getter();
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  v56(sub_10042C67C, v57);

  return (v55)(v54, v49);
}

uint64_t sub_10041BF28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v35 = type metadata accessor for Recommendation();
  v4 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_1001A3D44(*(v6 + 16), 0);
    v9 = sub_1001A9FD8(v34, &v8[(*(v4 + 80) + 32) & ~*(v4 + 80)], v7, v6);
    v30 = v34[3];
    v31 = v9;

    sub_100022DEC();
    if (v31 != v7)
    {
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v34[0] = v8;
  v10 = v32;
  sub_10041C578(v34);
  if (v10)
  {
LABEL_15:

    __break(1u);
    return result;
  }

  v11 = v34[0];
  v12 = v34[0][2];
  if (v12)
  {
    v28[1] = 0;
    v29 = a2;
    v34[0] = _swiftEmptyArrayStorage;
    sub_100186384(0, v12, 0);
    v13 = v34[0];
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v16 = *(v14 + 64);
    v28[0] = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v31 = *(v14 + 56);
    v32 = v15;
    v30 = (v14 - 8);
    do
    {
      v18 = v33;
      v19 = v35;
      v20 = v14;
      v32(v33, v17, v35);
      v21 = Recommendation.referenceIdentifier.getter();
      v23 = v22;
      (*v30)(v18, v19);
      v34[0] = v13;
      v25 = v13[2];
      v24 = v13[3];
      if (v25 >= v24 >> 1)
      {
        sub_100186384((v24 > 1), v25 + 1, 1);
        v13 = v34[0];
      }

      v13[2] = v25 + 1;
      v26 = &v13[2 * v25];
      v26[4] = v21;
      v26[5] = v23;
      v17 += v31;
      --v12;
      v14 = v20;
    }

    while (v12);

    a2 = v29;
  }

  else
  {

    v13 = _swiftEmptyArrayStorage;
  }

  *a2 = v13;
  return result;
}

uint64_t sub_10041C1D4()
{

  sub_100140278(&qword_1008ED0B0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10041C230()
{
  swift_errorRetain();
  sub_100140278(&qword_1008ED0B0);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10041C288@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = result;
  if (result)
  {
    *(result + OBJC_IVAR____TtC10FitnessApp30SeymourCatalogItemDataProvider_playlists) = v3;
  }

  *a2 = v5 == 0;
  return result;
}

id sub_10041C354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourCatalogItemDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10041C494(void **a1)
{
  v2 = *(type metadata accessor for MediaMoment() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA528(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10041C65C(v6, &type metadata accessor for MediaMoment, sub_10041CD18, sub_10041C7AC);
  *a1 = v3;
  return result;
}

Swift::Int sub_10041C578(void **a1)
{
  v2 = *(type metadata accessor for Recommendation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001AA53C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10041C65C(v6, &type metadata accessor for Recommendation, sub_10041D740, sub_10041CA70);
  *a1 = v3;
  return result;
}

Swift::Int sub_10041C65C(uint64_t a1, void (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *((a2)(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_10041C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MediaMoment();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100429104(&qword_1008ED058, &type metadata accessor for MediaMoment);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10041CA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Recommendation();
  v9 = __chkstk_darwin(v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v48 = &v33 - v12;
  result = __chkstk_darwin(v11);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v14 + 16);
    v17 = v14 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = v16 + v19 * (a3 - 1);
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      v45(v47, v22, v8);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = Recommendation.index.getter();
      v28 = Recommendation.index.getter();
      v29 = *v44;
      (*v44)(v26, v8);
      result = v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = v38 + v34;
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v30)(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10041CD18(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for MediaMoment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1001A99A4(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_10041E124(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A99A4(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_1001A9918(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_100429104(&qword_1008ED058, &type metadata accessor for MediaMoment);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1001A1D54(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_1001A1D54((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_10041E124(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1001A99A4(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_1001A9918(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100429104(&qword_1008ED058, &type metadata accessor for MediaMoment);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_10041D740(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v117 = a1;
  v9 = type metadata accessor for Recommendation();
  v10 = __chkstk_darwin(v9);
  v121 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v131 = &v114 - v13;
  v14 = __chkstk_darwin(v12);
  v137 = &v114 - v15;
  result = __chkstk_darwin(v14);
  v136 = &v114 - v18;
  v19 = a3[1];
  v126 = v17;
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v9 = v126;
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1001A99A4(v21);
      v21 = result;
    }

    v139 = v21;
    v110 = *(v21 + 2);
    if (v110 >= 2)
    {
      while (*a3)
      {
        v111 = *&v21[16 * v110];
        v112 = *&v21[16 * v110 + 24];
        sub_10041E718(*a3 + *(v9 + 72) * v111, *a3 + *(v9 + 72) * *&v21[16 * v110 + 16], *a3 + *(v9 + 72) * v112, v5);
        if (v6)
        {
        }

        if (v112 < v111)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1001A99A4(v21);
        }

        if (v110 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v113 = &v21[16 * v110];
        *v113 = v111;
        *(v113 + 1) = v112;
        v139 = v21;
        result = sub_1001A9918(v110 - 1);
        v21 = v139;
        v110 = *(v139 + 2);
        if (v110 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v115 = a4;
  v20 = 0;
  v134 = (v17 + 8);
  v135 = v17 + 16;
  v133 = (v17 + 32);
  v21 = _swiftEmptyArrayStorage;
  v119 = a3;
  v138 = v9;
  while (1)
  {
    v127 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v128 = v19;
      v116 = v6;
      v22 = *a3;
      v118 = v20;
      v23 = v126[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v132 = v22;
      v25 = v9;
      v26 = v126[2];
      v27 = v136;
      v26(v136, v5, v25);
      v28 = &v24[v23 * v20];
      v29 = v137;
      v124 = v26;
      v26(v137, v28, v25);
      v129 = Recommendation.index.getter();
      v125 = Recommendation.index.getter();
      v30 = v126[1];
      v30(v29, v25);
      v123 = v30;
      result = (v30)(v27, v25);
      v31 = v118 + 2;
      v130 = v23;
      v32 = &v132[v23 * (v118 + 2)];
      while (1)
      {
        v33 = v128;
        if (v128 == v31)
        {
          break;
        }

        v34 = v124;
        LODWORD(v132) = v129 < v125;
        v35 = v136;
        v36 = v138;
        (v124)(v136, v32, v138);
        v37 = v137;
        v34(v137, v5, v36);
        v38 = Recommendation.index.getter();
        v39 = Recommendation.index.getter();
        v40 = v123;
        (v123)(v37, v36);
        result = v40(v35, v36);
        v21 = v127;
        ++v31;
        v32 += v130;
        v5 += v130;
        if (((v132 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v9 = v138;
      if (v129 < v125)
      {
        if (v33 < v118)
        {
          goto LABEL_123;
        }

        if (v118 < v33)
        {
          v41 = v130 * (v33 - 1);
          v5 = v33 * v130;
          v128 = v33;
          v42 = v33;
          v43 = v118;
          v44 = v118 * v130;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v133;
              (*v133)(v121, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v46)(&v45[v41], v121, v9);
              a3 = v119;
              v21 = v127;
            }

            ++v43;
            v41 -= v130;
            v5 -= v130;
            v44 += v130;
          }

          while (v43 < v42);
          v6 = v116;
          v20 = v118;
          v33 = v128;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v115)
      {
        if (__OFADD__(v20, v115))
        {
          goto LABEL_124;
        }

        if (v20 + v115 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v115;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001A1D54(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_1001A1D54((v48 > 1), v49 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v117;
    if (!*v117)
    {
      goto LABEL_131;
    }

    v122 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_10041E718(*a3 + v126[9] * v91, *a3 + v126[9] * *&v21[16 * v5 + 32], *a3 + v126[9] * v92, v52);
        if (v6)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1001A99A4(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v139 = v21;
        result = sub_1001A9918(v5);
        v21 = v139;
        v50 = *(v139 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v122;
    if (v122 >= v19)
    {
      goto LABEL_94;
    }
  }

  v116 = v6;
  v94 = *a3;
  v95 = v126[9];
  v132 = v126[2];
  v96 = &v94[v95 * (v33 - 1)];
  v129 = -v95;
  v130 = v94;
  v118 = v20;
  v97 = (v20 - v33);
  v120 = v95;
  v98 = &v94[v33 * v95];
  v122 = v5;
LABEL_85:
  v128 = v33;
  v123 = v98;
  v124 = v97;
  v125 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v136;
    v101 = v132;
    (v132)(v136, v98, v9);
    v102 = v137;
    v101(v137, v99, v138);
    v103 = Recommendation.index.getter();
    v104 = Recommendation.index.getter();
    v105 = *v134;
    v106 = v102;
    v9 = v138;
    (*v134)(v106, v138);
    result = v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v128 + 1;
      v96 = v125 + v120;
      v97 = v124 - 1;
      v5 = v122;
      v98 = &v123[v120];
      if (v128 + 1 != v122)
      {
        goto LABEL_85;
      }

      v6 = v116;
      v20 = v118;
      a3 = v119;
      v21 = v127;
      if (v122 < v118)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v107 = *v133;
    v108 = v131;
    (*v133)(v131, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v129;
    v98 += v129;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}