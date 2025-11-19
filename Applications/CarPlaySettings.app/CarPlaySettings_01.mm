uint64_t sub_10003E2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003E34C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10003E3AC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CARSettingButtonStyle() + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t type metadata accessor for CARSettingButtonStyle()
{
  result = qword_100102640;
  if (!qword_100102640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003E550(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10003E580@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003E5D8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for CARSettingButtonStyle() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10003E754@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isFocused.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10003E784()
{
  type metadata accessor for CARSettingButtonStyle();
}

uint64_t sub_10003E7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for CARSettingButtonStyle();
  v10 = a3 + v9[5];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = a3 + v9[6];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  (*(v6 + 16))(v8, a1, a2);
  v12 = AnyShape.init<A>(_:)();
  result = (*(v6 + 8))(a1, a2);
  *(a3 + v9[7]) = v12;
  return result;
}

uint64_t sub_10003E938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v51 = a2;
  v3 = sub_100030C14(&qword_1000FF7D8);
  __chkstk_darwin(v3 - 8);
  v50 = &v42 - v4;
  v5 = type metadata accessor for ButtonStyleConfiguration.Label();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for _ShapeSet();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Material();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100030C14(&qword_1000FF7E0);
  __chkstk_darwin(v49);
  v14 = &v42 - v13;
  v15 = *(type metadata accessor for CARSettingButtonStyle() + 28);
  v42 = v2;
  v16 = *(v2 + v15);

  v17 = sub_10003EF24();
  static Material._experimentalGlass.getter();
  v53 = v16;
  v54 = v17;
  v55 = 256;
  sub_100030C14(&qword_1000FF7E8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000A1FF0;
  v52 = v16;
  sub_10003F128();

  *(v18 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  sub_100030C14(&qword_1000FF7F8);
  sub_10003D450(&qword_1000FF800, &qword_1000FF7F8);
  View.materialEffect(_:in:)();
  (*(v7 + 8))(v9, v44);
  (*(v10 + 8))(v12, v43);
  v19 = v45;

  v20 = static Alignment.center.getter();
  v22 = v21;
  ButtonStyleConfiguration.label.getter();
  if (sub_10003E5D8())
  {
    v23 = [objc_opt_self() _carSystemFocusLabelColor];
  }

  else
  {
    if (sub_10003E3AC())
    {
      static Color.primary.getter();
      goto LABEL_7;
    }

    v23 = [objc_opt_self() tertiaryLabelColor];
  }

  v24 = v23;
  Color.init(_:)();
LABEL_7:
  ButtonStyleConfiguration.isPressed.getter();
  v25 = &v14[*(sub_100030C14(&qword_1000FF808) + 36)];
  v26 = Color.opacity(_:)();

  (*(v47 + 32))(v25, v19, v48);
  *&v25[*(sub_100030C14(&qword_1000FF810) + 36)] = v26;
  v27 = &v25[*(sub_100030C14(&qword_1000FF818) + 36)];
  *v27 = v20;
  v27[1] = v22;
  static Font.Weight.semibold.getter();
  v28 = type metadata accessor for Font.Design();
  v29 = v50;
  (*(*(v28 - 8) + 56))(v50, 1, 1, v28);
  v30 = static Font.system(size:weight:design:)();
  sub_10003F17C(v29);
  KeyPath = swift_getKeyPath();
  v32 = &v14[*(sub_100030C14(&qword_1000FF820) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = &v14[*(v49 + 36)];
  *v33 = v16;
  v33[8] = 0;

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v34 = 0.96;
  }

  else
  {
    v34 = 1.0;
  }

  static UnitPoint.center.getter();
  v36 = v35;
  v38 = v37;
  v39 = v51;
  sub_10003FA74(v14, v51);
  result = sub_100030C14(&qword_1000FF828);
  v41 = v39 + *(result + 36);
  *v41 = v34;
  *(v41 + 8) = v34;
  *(v41 + 16) = v36;
  *(v41 + 24) = v38;
  return result;
}

uint64_t sub_10003EF24()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  if (sub_10003E5D8())
  {
    v7 = [objc_opt_self() _carSystemFocusColor];
    v8 = Color.init(_:)();
  }

  else
  {
    sub_10003E0F4(v6);
    (*(v1 + 104))(v4, enum case for ColorScheme.light(_:), v0);
    v9 = static ColorScheme.== infix(_:_:)();
    v10 = *(v1 + 8);
    v10(v4, v0);
    v10(v6, v0);
    if (v9)
    {
      if ((sub_10003E3AC() & 1) == 0)
      {
        v13 = 3;
        sub_100030C14(&qword_1000FF958);
        sub_10003D450(&unk_1000FF960, &qword_1000FF958);
        return AnyShapeStyle.init<A>(_:)();
      }

      v8 = static Color.white.getter();
    }

    else
    {
      v8 = static Color.clear.getter();
    }
  }

  v13 = v8;
  return AnyShapeStyle.init<A>(_:)();
}

unint64_t sub_10003F128()
{
  result = qword_1000FF7F0;
  if (!qword_1000FF7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF7F0);
  }

  return result;
}

uint64_t sub_10003F17C(uint64_t a1)
{
  v2 = sub_100030C14(&qword_1000FF7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003F1E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10003F238()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_10003F268()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_10003F298@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

double sub_10003F2B0@<D0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for Capsule();
  v3 = __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = type metadata accessor for CARSettingButtonStyle();
  __chkstk_darwin(v8);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100030C14(&qword_1000FF830);
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v24 - v12;
  v26 = v1;

  sub_100030C14(&qword_1000FF838);
  sub_10003FB08();
  Button.init(action:label:)();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  *v10 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v16 = v10 + v8[5];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v10 + v8[6];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_10003FBC0(v7, v5);
  sub_10003FC24(&qword_1000FF858, &type metadata accessor for Capsule);
  v18 = AnyShape.init<A>(_:)();
  sub_10003FC6C(v7, &type metadata accessor for Capsule);
  *(v10 + v8[7]) = v18;
  sub_10003D450(&qword_1000FF860, &qword_1000FF830);
  sub_10003FC24(&qword_1000FF868, type metadata accessor for CARSettingButtonStyle);
  v20 = v24;
  v19 = v25;
  View.buttonStyle<A>(_:)();
  sub_10003FC6C(v10, type metadata accessor for CARSettingButtonStyle);
  (*(v11 + 8))(v13, v20);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v21 = (v19 + *(sub_100030C14(&qword_1000FF870) + 36));
  v22 = v28;
  *v21 = v27;
  v21[1] = v22;
  result = *&v29;
  v21[2] = v29;
  return result;
}

uint64_t sub_10003F6B4()
{
  v1 = sub_100030C14(&qword_1000FF950);
  __chkstk_darwin(v1);
  v3 = &v14[-v2];
  v4 = sub_100030C14(&qword_1000FF850);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14[-v7];
  if (*(v0 + 40))
  {
    v9 = __chkstk_darwin(v6);
    __chkstk_darwin(v9);
    Label.init(title:icon:)();
    (*(v5 + 16))(v3, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_10003D450(&qword_1000FF848, &qword_1000FF850);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {

    *v3 = Text.init(_:tableName:bundle:comment:)();
    *(v3 + 1) = v11;
    v3[16] = v12 & 1;
    *(v3 + 3) = v13;
    swift_storeEnumTagMultiPayload();
    sub_10003D450(&qword_1000FF848, &qword_1000FF850);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10003FA1C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10003FA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF7E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003FB08()
{
  result = qword_1000FF840;
  if (!qword_1000FF840)
  {
    sub_10003B1B8(&qword_1000FF838);
    sub_10003D450(&qword_1000FF848, &qword_1000FF850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF840);
  }

  return result;
}

uint64_t sub_10003FBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FC24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003FC6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003FD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&qword_1000FF4F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10003FDF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&qword_1000FF4F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void sub_10003FEB8()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_10003FF4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003FF4C()
{
  if (!qword_1001005B0)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1001005B0);
    }
  }
}

__n128 sub_10003FF9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003FFB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10003FFF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004005C()
{
  result = qword_1000FF900;
  if (!qword_1000FF900)
  {
    sub_10003B1B8(&qword_1000FF828);
    sub_1000400E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF900);
  }

  return result;
}

unint64_t sub_1000400E8()
{
  result = qword_1000FF908;
  if (!qword_1000FF908)
  {
    sub_10003B1B8(&qword_1000FF7E0);
    sub_1000401A0();
    sub_10003D450(&qword_1000FF938, &qword_1000FF940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF908);
  }

  return result;
}

unint64_t sub_1000401A0()
{
  result = qword_1000FF910;
  if (!qword_1000FF910)
  {
    sub_10003B1B8(&qword_1000FF820);
    sub_100040258();
    sub_10003D450(&qword_1000FF928, &qword_1000FF930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF910);
  }

  return result;
}

unint64_t sub_100040258()
{
  result = qword_1000FF918;
  if (!qword_1000FF918)
  {
    sub_10003B1B8(&qword_1000FF808);
    sub_10003B1B8(&qword_1000FF7F8);
    sub_10003D450(&qword_1000FF800, &qword_1000FF7F8);
    swift_getOpaqueTypeConformance2();
    sub_10003D450(&qword_1000FF920, &qword_1000FF818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF918);
  }

  return result;
}

unint64_t sub_100040384()
{
  result = qword_1000FF948;
  if (!qword_1000FF948)
  {
    sub_10003B1B8(&qword_1000FF870);
    sub_10003B1B8(&qword_1000FF830);
    type metadata accessor for CARSettingButtonStyle();
    sub_10003D450(&qword_1000FF860, &qword_1000FF830);
    sub_10003FC24(&qword_1000FF868, type metadata accessor for CARSettingButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FF948);
  }

  return result;
}

uint64_t sub_1000404D0@<X0>(uint64_t a1@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100040568@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

char *sub_1000405F0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_displays] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_layoutSelectorViewController] = 0;
  v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground] = 0;
  v3 = [objc_allocWithZone(CRSUIClusterThemeManager) init];
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_clusterThemeManager] = v3;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_panelController] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for CARThemeSelectorViewController();
  swift_unknownObjectRetain();
  v4 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", 0, 0);
  v5 = *&v4[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_clusterThemeManager];
  v6 = v4;
  [v5 setDelegate:{v6, v11.receiver, v11.super_class}];
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  [v8 addObserver:v6 selector:"vehicleDidUpdate" name:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];

  v9 = [v7 defaultCenter];
  [v9 addObserver:v6 selector:"synchronizeThemeIfNeeded" name:UIApplicationDidBecomeActiveNotification object:0];

  swift_unknownObjectRelease();
  return v6;
}

id CARResolvedWallpaperView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_100040824()
{
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_displays) = 0;
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData) = 0;
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData) = 0;
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_layoutSelectorViewController) = 0;
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100040954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARThemeSelectorViewController();
  return objc_msgSendSuper2(&v2, "viewDidLoad");
}

void sub_1000409F8(char a1, SEL *a2, uint64_t a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for CARThemeSelectorViewController();
  objc_msgSendSuper2(&v10, *a2, a1 & 1);
  v7 = [v3 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 navigationBar];

    [v9 setBarStyle:a3];
  }
}

void sub_100040AAC(void *a1, uint64_t a2, uint64_t a3, const char **a4, uint64_t a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for CARThemeSelectorViewController();
  v8 = *a4;
  v9 = v13.receiver;
  objc_msgSendSuper2(&v13, v8, a3);
  v10 = [v9 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];

    [v12 setBarStyle:a5];
  }
}

void sub_100040B6C()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground] != 1)
  {
    goto LABEL_16;
  }

  v2 = OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData;
  v3 = *&v0[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = *(*v3 + 200);

  v6 = v4(v5);
  v8 = v7;

  v9 = *&v1[v2];
  if (!v9)
  {
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v10 = *(*v9 + 224);

  v12 = v10(v11);

  v13 = [v12 currentLayoutID];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (!v8)
  {
    if (v16)
    {
LABEL_14:

      v19 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  if (v6 == v14 && v8 == v16)
  {

    goto LABEL_16;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v19 = v18 ^ 1;
LABEL_17:
  v20 = OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData;
  v21 = *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData];
  v22 = *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_panelController];

  v23 = [v22 vehicle];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 displayThemeData];

    if (v25)
    {
      sub_1000317B8(0, &qword_1000FF328);
      v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!v21)
      {
        goto LABEL_20;
      }

LABEL_23:
      if (v26)
      {
        sub_100043A60(v21, v26);
        v28 = v27;

        if (!(v19 & 1 | ((v28 & 1) == 0)))
        {
          return;
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  v26 = 0;
  if (v21)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (!v26)
  {
    if ((v19 & 1) == 0)
    {
      return;
    }

    goto LABEL_27;
  }

LABEL_26:

LABEL_27:
  v29 = [v22 vehicle];
  if (v29 && (v30 = v29, v31 = [v29 displayThemeData], v30, v31))
  {
    sub_1000317B8(0, &qword_1000FF328);
    v32 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v32 = 0;
  }

  *&v1[v20] = v32;

  v33 = *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData];
  if (v33)
  {
    v34 = *&v1[v20];
    if (v34)
    {
      v35 = *(*v33 + 224);

      v37 = (v35)(v36);
      v38 = [v37 currentLayoutID];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      (*(*v33 + 280))(v34, v19 & 1);

      sub_1000317B8(0, &qword_1000FF690);

      v42 = static OS_os_log.default.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v73 = v39;
        v45 = v41;
        v46 = swift_slowAlloc();
        v74 = v46;
        *v44 = 136446210;
        type metadata accessor for CARThemeManagerData();
        sub_1000447C8(&unk_1000FF9B0, type metadata accessor for CARThemeManagerData);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = sub_100037824(v47, v48, &v74);

        *(v44 + 4) = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "Reloaded theme data, new theme: %{public}s", v44, 0xCu);
        sub_100038D70(v46);
        v41 = v45;
        v39 = v73;
      }

      v50 = [v1 presentedViewController];
      if (!v50)
      {
        goto LABEL_45;
      }

      v51 = v50;
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (!v52)
      {

        return;
      }

      v53 = [v52 topViewController];

      if (!v53)
      {
LABEL_45:

        goto LABEL_46;
      }

      type metadata accessor for CARThemeEditorViewController();
      v54 = swift_dynamicCastClass();
      if (v54)
      {
        v55 = v54;
        v56 = v35();
        v57 = [v56 currentLayoutID];

        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;

        if (v39 == v58 && v41 == v60)
        {
        }

        else
        {
          v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v62 & 1) == 0)
          {
            [v55 dismissViewControllerAnimated:1 completion:0];
            (*(*v33 + 208))(v58, v60);

            goto LABEL_46;
          }
        }

        v63 = OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme;
        v64 = *&v55[OBJC_IVAR____TtC15CarPlaySettings28CARThemeEditorViewController_theme];
        v65 = *(*v33 + 248);

        v67 = v65(v66);
        v68 = (*(*v67 + 136))(v67);

        (*(*v64 + 144))(v68);

        v69 = *&v55[v63];

        v71 = v65(v70);
        v72 = (*(*v71 + 184))(v71);

        (*(*v69 + 192))(v72);

LABEL_46:

        return;
      }
    }

    else
    {
      sub_1000317B8(0, &qword_1000FF690);

      v61 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

uint64_t sub_100041400()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground] = 1;
  sub_1000317B8(0, &unk_1000FF9C0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100043C18;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000416D4;
  aBlock[3] = &unk_1000DBD88;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000447C8(&unk_100101D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100030C14(&unk_1000FF9D0);
  sub_100043C98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000416D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100041760()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000317B8(0, &unk_1000FF9C0);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100043CFC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000416D4;
  aBlock[3] = &unk_1000DBDD8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000447C8(&unk_100101D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100030C14(&unk_1000FF9D0);
  sub_100043C98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_100041A6C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CARThemeSelectorViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100041BF4(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CARThemeSelectorWrapperView();
  __chkstk_darwin(v4);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100030C14(&qword_1000FFBF0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v101 = &v95 - v9;
  v100 = sub_100030C14(&qword_1000FFBF8);
  v10 = __chkstk_darwin(v100);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v95 - v13;
  type metadata accessor for CARThemeManagerData();

  sub_10004582C(a1, a2);
  if (v15)
  {
    v16 = v15;
    v17 = v14;
    v98 = v8;
    v99 = v4;
    sub_1000317B8(0, &qword_1000FF690);

    v18 = static OS_os_log.default.getter();
    v19 = static os_log_type_t.default.getter();

    v20 = os_log_type_enabled(v18, v19);
    v97 = v12;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v96 = v7;
      v22 = v21;
      v23 = swift_slowAlloc();
      v103 = v16;
      v104 = v23;
      *v22 = 136446210;
      sub_1000447C8(&unk_1000FF9B0, type metadata accessor for CARThemeManagerData);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = sub_100037824(v24, v25, &v104);

      *(v22 + 4) = v26;
      v14 = v17;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Creating layout selector with current theme: %{public}s", v22, 0xCu);
      sub_100038D70(v23);

      v7 = v96;
    }

    else
    {

      v27 = v16;
    }

    swift_allocObject();
    v28 = v102;
    swift_unknownObjectWeakInit();

    sub_100047468();

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000447C8(&qword_1000FF9E0, type metadata accessor for CARThemeManagerData);

    Bindable<A>.init(wrappedValue:)();
    v30 = v99;
    v31 = &v6[*(v99 + 20)];
    *v31 = sub_100044628;
    v31[1] = v29;
    v32 = [*&v28[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_panelController] carSession];
    if (v32)
    {
      v33 = v32;
      sub_1000447C8(&qword_1000FFC00, type metadata accessor for CARThemeSelectorWrapperView);
      v34 = v101;
      sub_10006B1F4(v33, v30);

      sub_100044810(v6, type metadata accessor for CARThemeSelectorWrapperView);
      KeyPath = swift_getKeyPath();
      v36 = v102;
      v37 = *&v102[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_clusterThemeManager];
      (*(v98 + 32))(v14, v34, v7);
      v38 = &v14[*(v100 + 36)];
      *v38 = KeyPath;
      v38[1] = v37;
      v39 = OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_layoutSelectorViewController;
      v40 = *&v36[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_layoutSelectorViewController];
      if (v40)
      {
        v41 = v37;
        v42 = v40;
        [v42 willMoveToParentViewController:0];
        v43 = [v42 view];
        if (!v43)
        {
LABEL_39:
          __break(1u);
          return;
        }

        v44 = v43;
        [v43 removeFromSuperview];

        [v42 removeFromParentViewController];
      }

      else
      {
        v45 = v37;
      }

      sub_100044870(v14, v97);
      v46 = objc_allocWithZone(sub_100030C14(&qword_1000FFC08));
      v47 = UIHostingController.init(rootView:)();
      v48 = [v47 view];
      if (v48)
      {
        v49 = v48;
        v50 = [objc_opt_self() clearColor];
        [v49 setBackgroundColor:v50];

        v51 = [v47 view];
        if (v51)
        {
          v52 = v51;
          [v51 setClipsToBounds:1];

          v53 = v102;
          [v47 willMoveToParentViewController:v102];
          [v53 addChildViewController:v47];
          v54 = [v53 view];
          if (v54)
          {
            v55 = v54;
            v56 = [v47 view];
            if (v56)
            {
              v57 = v56;
              [v55 addSubview:v56];

              v58 = [v47 view];
              if (v58)
              {
                v59 = v58;
                [v58 setTranslatesAutoresizingMaskIntoConstraints:0];

                sub_100030C14(&qword_1000FFC10);
                v60 = swift_allocObject();
                *(v60 + 16) = xmmword_1000A26D0;
                v61 = [v47 view];
                if (v61)
                {
                  v62 = v61;
                  v63 = [v61 leadingAnchor];

                  v64 = [v102 view];
                  if (v64)
                  {
                    v65 = v64;
                    v66 = [v64 leadingAnchor];

                    v67 = [v63 constraintEqualToAnchor:v66];
                    *(v60 + 32) = v67;
                    v68 = [v47 view];
                    if (v68)
                    {
                      v69 = v68;
                      v70 = [v68 trailingAnchor];

                      v71 = [v102 view];
                      if (v71)
                      {
                        v72 = v71;
                        v101 = v39;
                        v73 = [v71 trailingAnchor];

                        v74 = [v70 constraintEqualToAnchor:v73];
                        *(v60 + 40) = v74;
                        v75 = [v47 view];
                        if (v75)
                        {
                          v76 = v75;
                          v77 = v27;
                          v78 = [v75 topAnchor];

                          v79 = [v102 view];
                          if (v79)
                          {
                            v80 = v79;
                            v81 = v14;
                            v82 = [v79 topAnchor];

                            v83 = [v78 constraintEqualToAnchor:v82];
                            *(v60 + 48) = v83;
                            v84 = [v47 view];
                            if (v84)
                            {
                              v85 = v84;
                              v86 = [v84 bottomAnchor];

                              v87 = [v102 view];
                              if (v87)
                              {
                                v88 = v87;
                                v89 = objc_opt_self();
                                v90 = [v88 bottomAnchor];

                                v91 = [v86 constraintEqualToAnchor:v90];
                                *(v60 + 56) = v91;
                                sub_1000317B8(0, &qword_100100390);
                                isa = Array._bridgeToObjectiveC()().super.isa;

                                [v89 activateConstraints:isa];

                                sub_1000448E0(v81);
                                v93 = v102;
                                v94 = *&v101[v102];
                                *&v101[v102] = v47;

                                *&v93[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData] = v77;

                                return;
                              }

                              goto LABEL_38;
                            }

LABEL_37:
                            __break(1u);
LABEL_38:
                            __break(1u);
                            goto LABEL_39;
                          }

LABEL_36:
                          __break(1u);
                          goto LABEL_37;
                        }

LABEL_35:
                        __break(1u);
                        goto LABEL_36;
                      }

LABEL_34:
                      __break(1u);
                      goto LABEL_35;
                    }

LABEL_33:
                    __break(1u);
                    goto LABEL_34;
                  }

LABEL_32:
                  __break(1u);
                  goto LABEL_33;
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

LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }
}

void sub_100042648(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000317B8(0, &qword_1000FF690);
  v9 = static OS_os_log.default.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23 = v3;
    v24 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v6;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136446210;
    if (a1)
    {
      v15 = 0x6673736563637573;
    }

    else
    {
      v15 = 0x7365636375736E75;
    }

    v16 = a1;
    if (a1)
    {
      v17 = 0xEC000000796C6C75;
    }

    else
    {
      v17 = 0xEE00796C6C756673;
    }

    v18 = sub_100037824(v15, v17, aBlock);
    a1 = v16;

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updated theme data %{public}s", v12, 0xCu);
    sub_100038D70(v14);
    v6 = v22;

    v3 = v23;
    v2 = v24;
  }

  if ((a1 & 1) == 0)
  {
    sub_1000317B8(0, &unk_1000FF9C0);
    v19 = static OS_dispatch_queue.main.getter();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1000449AC;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000416D4;
    aBlock[3] = &unk_1000DBEF0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000447C8(&unk_100101D50, &type metadata accessor for DispatchWorkItemFlags);
    sub_100030C14(&unk_1000FF9D0);
    sub_100043C98();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v3 + 8))(v5, v2);
    (*(v25 + 8))(v8, v6);
  }
}

uint64_t sub_100042A6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100042AC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  type metadata accessor for CARThemeManagerData();
  sub_1000447C8(&qword_1000FF9E0, type metadata accessor for CARThemeManagerData);
  Bindable<A>.init(wrappedValue:)();
  result = type metadata accessor for CARThemeSelectorWrapperView();
  v7 = (a3 + *(result + 20));
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t sub_100042B64()
{
  sub_100043DA4();
  EnvironmentValues.subscript.getter();
  if (v2[8])
  {
    sub_10003970C(v2, &qword_1000FF9E8);
    return 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003970C(v2, &unk_1000FF9F0);
    return Strong;
  }
}

uint64_t sub_100042BF4@<X0>(uint64_t *a1@<X8>)
{
  sub_100043DA4();
  EnvironmentValues.subscript.getter();
  if (v4[8])
  {
    result = sub_10003970C(v4, &qword_1000FF9E8);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_10003970C(v4, &unk_1000FF9F0);
  }

  *a1 = Strong;
  return result;
}

uint64_t sub_100042C8C(void *a1)
{
  if (*a1)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
  }

  sub_100043DA4();
  return EnvironmentValues.subscript.setter();
}

void sub_100042D04(void *a1)
{
  if (a1)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
  }

  sub_100043DA4();
  EnvironmentValues.subscript.setter();
}

id sub_100042D7C(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_100042E84(void *a1)
{
  v2 = [a1 displays];
  sub_1000317B8(0, &qword_1000FF320);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [a1 themeData];
  sub_1000317B8(0, &qword_1000FF328);
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100041BF4(v3, v5);
}

uint64_t sub_100043088()
{
  type metadata accessor for CARThemeManagerData();
  sub_1000447C8(&qword_1000FF9E0, type metadata accessor for CARThemeManagerData);

  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_100043114()
{
  sub_100030C14(&unk_1000FFA00);
  Bindable.wrappedValue.getter();
  return v1;
}

void (*sub_100043190(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100030C14(&unk_1000FFA00);
  *(v3 + 32) = Bindable.wrappedValue.modify();
  return sub_10004321C;
}

void sub_10004321C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100043268()
{
  sub_100030C14(&unk_1000FFA00);

  return Bindable.projectedValue.getter();
}

uint64_t sub_1000432B0()
{
  v1 = *(v0 + *(type metadata accessor for CARThemeSelectorWrapperView() + 20));

  return v1;
}

uint64_t sub_1000432F0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = sub_100030C14(&qword_1000FF4F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_100030C14(&unk_1000FFA00);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v31 = type metadata accessor for CARThemeLayoutSelector(0);
  __chkstk_darwin(v31);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Bindable.wrappedValue.getter();
  v30 = *(v33.n128_u64[0] + 48);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v14 = *(v6 + 8);
  v14(v11, v5);
  v28 = v37;
  v29 = v36;
  v15 = v38;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v14(v9, v5);
  v27 = v33;
  v16 = v34;
  v17 = v35;
  v18 = (v1 + *(type metadata accessor for CARThemeSelectorWrapperView() + 20));
  v20 = *v18;
  v19 = v18[1];

  sub_1000622CC(v21);
  v22 = sub_10005D8CC();
  LOBYTE(v5) = v23;
  v24 = sub_1000622C4();
  sub_10005D8F0(v4, v22, v5 & 1, v24, v25 & 1, v30, v29, v28, v13, v15, v27, v16, v17, v20, v19);
  sub_1000447C8(&qword_1000FFA10, type metadata accessor for CARThemeLayoutSelector);
  sub_100048680(v31);
  return sub_100044810(v13, type metadata accessor for CARThemeLayoutSelector);
}

uint64_t sub_100043624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

uint64_t sub_1000436C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 200))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100043710(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 208);

  return v4(v2, v3);
}

uint64_t sub_100043784()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000437C4()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_100043824@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_100102650 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100044228(&qword_100102658, v2);
}

void (*sub_100043898(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_100043DA4();
  EnvironmentValues.subscript.getter();
  if (*(v4 + 8))
  {
    sub_10003970C(v4, &qword_1000FF9E8);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10003970C(v4, &unk_1000FF9F0);
  }

  *(v4 + 16) = Strong;
  return sub_100043978;
}

void sub_100043978(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    if (v3)
    {
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
    }

    else
    {
      *v2 = 0;
    }

    *(v2 + 8) = v3 == 0;
    EnvironmentValues.subscript.setter();
  }

  else
  {
    if (v3)
    {
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v4 = v3;
    }

    else
    {
      v4 = 0;
      *v2 = 0;
    }

    *(v2 + 8) = v3 == 0;
    EnvironmentValues.subscript.setter();
  }

  free(v2);
}

void sub_100043A60(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1000305EC(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1000317B8(0, &qword_1000FF328);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = static NSObject.== infix(_:_:)();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100043BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100043C18()
{
  v1 = *(v0 + 16);
  result = (*((swift_isaMask & *v1) + 0x108))();
  *(v1 + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_wasInBackground) = 0;
  return result;
}

uint64_t sub_100043C80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100043C98()
{
  result = qword_100101D60;
  if (!qword_100101D60)
  {
    sub_10003B1B8(&unk_1000FF9D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100101D60);
  }

  return result;
}

uint64_t type metadata accessor for CARThemeSelectorWrapperView()
{
  result = qword_100102700;
  if (!qword_100102700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100043DA4()
{
  result = qword_100102668;
  if (!qword_100102668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102668);
  }

  return result;
}

uint64_t sub_100043E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100030C14(&unk_1000FFA00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100043F04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100030C14(&unk_1000FFA00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100043FC8()
{
  sub_10004404C();
  if (v0 <= 0x3F)
  {
    sub_1000440A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10004404C()
{
  if (!qword_1000FFBB8)
  {
    type metadata accessor for CARThemeManagerData();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_1000FFBB8);
    }
  }
}

unint64_t sub_1000440A4()
{
  result = qword_1000FFBC0;
  if (!qword_1000FFBC0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000FFBC0);
  }

  return result;
}

uint64_t sub_1000440F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100044130(uint64_t a1, int a2)
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

uint64_t sub_100044150(uint64_t result, int a2, int a3)
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

uint64_t sub_100044190()
{
  type metadata accessor for CARThemeLayoutSelector(255);
  sub_1000447C8(&qword_1000FFA10, type metadata accessor for CARThemeLayoutSelector);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100044228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF9E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044298()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_1000442D0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData;
    v5 = *(Strong + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeData);
    v6 = *(*a1 + 152);

    v8 = (v6)(v7);
    if (v5)
    {
      sub_100043A60(v5, v8);
      v10 = v9;

      if (v10)
      {
LABEL_9:

        return;
      }
    }

    else
    {
    }

    sub_1000317B8(0, &qword_1000FF690);

    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v23 = v6;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      type metadata accessor for CARThemeManagerData();
      sub_1000447C8(&unk_1000FF9B0, type metadata accessor for CARThemeManagerData);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = sub_100037824(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Updating theme data to: %{public}s", v13, 0xCu);
      sub_100038D70(v14);

      v6 = v23;
    }

    *&v3[v4] = v6();

    v18 = *&v3[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_clusterThemeManager];
    v6();
    sub_1000317B8(0, &qword_1000FF328);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    aBlock[4] = sub_1000449A4;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100042A6C;
    aBlock[3] = &unk_1000DBEC8;
    v21 = _Block_copy(aBlock);
    v22 = v3;

    [v18 setThemeData:isa completion:v21];
    _Block_release(v21);

    goto LABEL_9;
  }
}

void sub_100044628()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_themeManagerData);
    if (v2)
    {
      v3 = *(*v2 + 248);

      v3(v4);

      sub_10004EF40();

      v5 = *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_panelController];
      v6 = *&v1[OBJC_IVAR____TtC15CarPlaySettings30CARThemeSelectorViewController_clusterThemeManager];
      v7 = [v5 carSession];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      type metadata accessor for CARThemeEditorViewController();

      v10 = sub_100086A70(v9, v6, v8);
      v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v10];
      [v11 setModalPresentationStyle:0];
      [v1 presentViewController:v11 animated:1 completion:0];
    }
  }
}

uint64_t sub_1000447C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100044870(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FFBF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000448E0(uint64_t a1)
{
  v2 = sub_100030C14(&qword_1000FFBF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100044948()
{
  v3 = *(*v0 + 256);

  return v3(v1);
}

void sub_1000449AC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + 0x108))();
  }
}

uint64_t sub_100044AA0()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
}

uint64_t sub_100044B24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_100044B9C(uint64_t a1)
{
  swift_beginAccess();

  sub_100043A60(v3, a1);
  v5 = v4;

  if (v5)
  {
    v1[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = __chkstk_darwin(KeyPath);
    v9 = v1;
    v10 = a1;
    (*(*v1 + 312))(v8, sub_100047C34);
  }
}

uint64_t sub_100044D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_100044D1C()
{
  swift_getKeyPath();
  (*(*v0 + 304))();

  swift_beginAccess();
  v1 = v0[4];

  return v1;
}

uint64_t sub_100044DAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5];
  if (v5)
  {
    if (a2)
    {
      v6 = v2[4] == a1 && v5 == a2;
      if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    v2[4] = a1;
    v2[5] = a2;
  }

  KeyPath = swift_getKeyPath();
  v9 = __chkstk_darwin(KeyPath);
  v10 = v2;
  v11 = a1;
  v12 = a2;
  (*(*v2 + 312))(v9, sub_100047C98);
}

void (*sub_100044EF0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 304))(KeyPath);

  v4[5] = OBJC_IVAR____TtC15CarPlaySettings19CARThemeManagerData___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1000485E4(&qword_1000FF9E0, type metadata accessor for CARThemeManagerData);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100044CC4();
  return sub_100045040;
}

void sub_100045040(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1000450EC(void *a1)
{
  v3 = [*(v1 + 48) identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100046074(a1, v4, v6);
}

void (*sub_100045170(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + 48);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = sub_100045FA8(v3);
  return sub_1000451BC;
}

void sub_1000451BC(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    v6 = [v3 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_100046074(v5, v7, v9);

    v10 = *a1;
  }

  else
  {
    v15 = v4;
    v11 = [v3 identifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_100046074(v15, v12, v14);

    v10 = v15;
  }
}

uint64_t sub_1000452B8()
{
  v1 = [*(v0 + 48) layouts];
  sub_1000317B8(0, &qword_100100660);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    goto LABEL_3;
  }

LABEL_41:
  while (2)
  {

    __break(1u);
LABEL_42:
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26)
    {
LABEL_22:
      v27 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v28 = *(v3 + 8 * v27 + 32);
        }

        v29 = v28;
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        v2 = CRSUIClusterThemePalette.id.getter();
        v32 = v31;
        v33 = [v49 currentLayoutID];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        if (v2 == v34 && v32 == v36)
        {

LABEL_36:

          v39 = v51;
          v40 = v29;
          v42 = nullsub_9(v39, v40, v41);
          v44 = v43;
          v45 = v48();
          v46 = sub_10003D93C(v45, v42, v44);

          return v46;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v38)
        {
          goto LABEL_36;
        }

        ++v27;
        if (v30 == v26)
        {
          goto LABEL_43;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (!v3)
      {
        continue;
      }

LABEL_3:
      v4 = 0;
      v49 = (v2 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_38;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v17 = v50[7];
            v18 = [v17 identifier];
            v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v20;

            v21 = (*(*v50 + 152))();
            if (!*(v21 + 16))
            {
              goto LABEL_44;
            }

            v22 = sub_1000305EC(v19, v2);
            v24 = v23;

            if ((v24 & 1) == 0)
            {
              goto LABEL_45;
            }

            v49 = *(*(v21 + 56) + 8 * v22);

            v25 = [v17 layouts];
            v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (v3 >> 62)
            {
              goto LABEL_42;
            }

            v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v26)
            {
              goto LABEL_43;
            }

            goto LABEL_22;
          }
        }

        v51 = v5;
        v7 = CRSUIClusterThemePalette.id.getter();
        v9 = v8;
        v48 = *(*v50 + 224);
        v10 = v48();
        v11 = [v10 currentLayoutID];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        if (v7 == v12 && v9 == v14)
        {
          goto LABEL_17;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_18;
        }

        ++v4;
        if (v6 == v3)
        {
          goto LABEL_41;
        }
      }
    }

    break;
  }

LABEL_43:

  __break(1u);
LABEL_44:

  __break(1u);
LABEL_45:

  __break(1u);
  return result;
}

uint64_t sub_100045758(uint64_t a1)
{
  sub_1000482D4(a1);
}

uint64_t (*sub_100045790(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1000452B8();
  return sub_1000457D8;
}

uint64_t sub_1000457D8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_1000482D4(v3);
  }

  else
  {
    sub_1000482D4(v2);
  }
}

void sub_100045878(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = 0;
  v2[5] = 0;
  v5 = OBJC_IVAR____TtC15CarPlaySettings19CARThemeManagerData___observationRegistrar;
  ObservationRegistrar.init()();
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v5;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_37:

    goto LABEL_38;
  }

LABEL_36:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  v38 = v5;
  if (!v6)
  {
    goto LABEL_37;
  }

LABEL_3:
  v7 = 0;
  v8 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v8)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v9 = *(a1 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if ([v9 displayType] == 1)
    {
      break;
    }

    ++v7;
    if (v11 == v6)
    {
      goto LABEL_37;
    }
  }

  v37 = v3;
  v12 = [v10 identifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (*(a2 + 16))
  {
    v16 = sub_1000305EC(v13, v15);
    v18 = v17;

    if (v18)
    {
      v5 = *(*(a2 + 56) + 8 * v16);
      v3 = 0;
      while (1)
      {
        if (v8)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v19 = *(a1 + 8 * v3 + 32);
        }

        v20 = v19;
        v21 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_35;
        }

        if ([v19 displayType] == 2)
        {
          v22 = v5;
          v23 = [v20 identifier];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          if (*(a2 + 16))
          {
            sub_1000305EC(v24, v26);
            v28 = v27;

            if (v28)
            {
              v37[2] = a1;
              v37[3] = a2;
              v37[6] = v10;
              v37[7] = v20;
              v29 = v10;
              v30 = v20;
              v31 = [v5 currentLayoutID];
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v34 = v33;

              sub_100044DAC(v32, v34);
              return;
            }
          }

          else
          {
          }

          goto LABEL_32;
        }

        ++v3;
        if (v21 == v6)
        {
          v22 = v5;

LABEL_32:
          v3 = v37;
          sub_1000317B8(0, &qword_1000FF690);
          v35 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();

          goto LABEL_39;
        }
      }
    }
  }

  else
  {
  }

  v3 = v37;
LABEL_38:

  sub_1000317B8(0, &qword_1000FF690);
  v35 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
LABEL_39:

  v36 = type metadata accessor for ObservationRegistrar();
  (*(*(v36 - 8) + 8))(&v38[v3], v36);
  type metadata accessor for CARThemeManagerData();
  swift_deallocPartialClassInstance();
}

void sub_100045CE8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = [v6 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  sub_1000305EC(v8, v10);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_1000317B8(0, &qword_1000FF690);
    v38 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v13 = [v3[7] identifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (!*(a1 + 16))
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1000305EC(v14, v16);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = (*(*v3 + 19))(v19);
  sub_100043A60(v20, a1);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    sub_100044B9C(v23);
  }

  if (a2)
  {
    v24 = [v6 identifier];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (*(a1 + 16))
    {
      v28 = sub_1000305EC(v25, v27);
      v30 = v29;

      if (v30)
      {
        v31 = [*(*(a1 + 56) + 8 * v28) currentLayoutID];
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = v34;
        v36 = v32;
LABEL_18:
        v37 = *(*v3 + 26);

        v37(v36, v35);
        return;
      }
    }

    else
    {
    }

    v36 = 0;
    v35 = 0;
    goto LABEL_18;
  }
}

uint64_t sub_100045FA8(void *a1)
{
  v2 = [a1 identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 152))();
  if (*(v6 + 16))
  {
    v7 = sub_1000305EC(v3, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);

      return v10;
    }
  }

  else
  {
  }

  __break(1u);
  return result;
}

void sub_100046074(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v163 = [a1 currentPaletteID];
  if (!v163)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = String._bridgeToObjectiveC()();
  }

  KeyPath = swift_getKeyPath();
  v9 = *(*v4 + 304);

  v10 = a1;
  v160 = v9;
  (v9)(KeyPath);

  v167[0] = v4;
  swift_getKeyPath();
  sub_1000485E4(&qword_1000FF9E0, type metadata accessor for CARThemeManagerData);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v166 = v4[3];
  v4[3] = 0x8000000000000000;
  sub_100047FF0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

  v4[3] = v166;
  swift_endAccess();
  v167[0] = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v12 = v4[2];
  v161 = v12 >> 62;
  v162 = v4;
  if (v12 >> 62)
  {
    goto LABEL_136;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_40;
  }

LABEL_5:
  v14 = 0;
  v164 = v12 & 0xFFFFFFFFFFFFFF8;
  v165 = v12 & 0xC000000000000001;
  v159 = (v12 + 32);
  while (1)
  {
    if (v165)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_135;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      v13 = _CocoaArrayWrapper.endIndex.getter();
      if (!v13)
      {
        goto LABEL_40;
      }

      goto LABEL_5;
    }

    v18 = [v15 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = v19 == a2 && v21 == a3;
    if (v22)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_19;
    }

    ++v14;
    if (v17 == v13)
    {
      goto LABEL_40;
    }
  }

LABEL_19:
  v25 = *(*v162 + 152);
  v26 = (v25)(v24);
  if (!*(v26 + 16) || (v27 = sub_1000305EC(a2, a3), (v28 & 1) == 0))
  {
LABEL_39:

LABEL_40:
    v52 = v163;
LABEL_41:

LABEL_42:
    sub_1000317B8(0, &qword_1000FF690);
    v16 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_43;
  }

  v157 = *(*(v26 + 56) + 8 * v27);

  v30 = (v25)(v29);
  if (!*(v30 + 16) || (v31 = sub_1000305EC(a2, a3), (v32 & 1) == 0))
  {

    v52 = v157;
    goto LABEL_41;
  }

  v33 = *(*(v30 + 56) + 8 * v31);

  v34 = [v33 currentWallpaper];

  v35 = [v34 identifier];
  swift_unknownObjectRelease();
  v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v151 = v36;

  v37 = [v16 layouts];
  sub_1000317B8(0, &qword_100100660);
  v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v156 = v38;
  v138 = v25;
  if (v38 >> 62)
  {
    goto LABEL_144;
  }

  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_145:

    goto LABEL_42;
  }

LABEL_25:
  v40 = 0;
  v152 = v12;
  v149 = a2;
  while (1)
  {
    if ((v156 & 0xC000000000000001) != 0)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    else
    {
      if (v40 >= *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
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
        v39 = _CocoaArrayWrapper.endIndex.getter();
        if (!v39)
        {
          goto LABEL_145;
        }

        goto LABEL_25;
      }

      v41 = *(v156 + 8 * v40 + 32);
      v42 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_38;
      }
    }

    a2 = v39;
    v158 = v41;
    v43 = [v41 identifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v12 = [v157 currentLayoutID];
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    if (v44 == v47 && v46 == v49)
    {
      break;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v51)
    {
      goto LABEL_46;
    }

    ++v40;
    v39 = a2;
    if (v42 == a2)
    {
      goto LABEL_145;
    }
  }

LABEL_46:

  v53 = [v158 wallpapers];
  sub_1000317B8(0, &qword_1001006F0);
  v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a2 = v149;
  if (v54 >> 62)
  {
    goto LABEL_148;
  }

  v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
LABEL_149:

    goto LABEL_42;
  }

LABEL_48:
  v56 = 0;
  while ((v54 & 0xC000000000000001) != 0)
  {
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v58 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_61;
    }

LABEL_52:
    v156 = v57;
    v59 = [v57 data];
    v60 = [v59 identifier];

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    if (v61 == v150 && v63 == v151)
    {
      goto LABEL_62;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v12 = v152;
    if (v65)
    {
      goto LABEL_63;
    }

    ++v56;
    if (v58 == v55)
    {
      goto LABEL_149;
    }
  }

  if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_140;
  }

  v57 = *(v54 + 8 * v56 + 32);
  v58 = v56 + 1;
  if (!__OFADD__(v56, 1))
  {
    goto LABEL_52;
  }

LABEL_61:
  __break(1u);
LABEL_62:

  v12 = v152;
LABEL_63:

  v67 = v158;
  if (v161)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v68 = *(v164 + 16);
  }

  if (v68)
  {
    v69 = 0;
    *&v66 = 136315394;
    v136 = v66;
    v148 = v68;
    while (1)
    {
      if (v165)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v69 >= *(v164 + 16))
        {
          goto LABEL_143;
        }

        v70 = *&v159[8 * v69];
      }

      v161 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_139;
      }

      v71 = v70;
      v72 = [v70 identifier];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      if (v73 == a2 && v75 == a3)
      {

        goto LABEL_128;
      }

      v154 = v71;
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v77)
      {

        goto LABEL_128;
      }

      v78 = [v71 identifier];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = v138();
      if (!*(v82 + 16))
      {
        break;
      }

      v83 = sub_1000305EC(v79, v81);
      v85 = v84;

      if (v85)
      {
        v147 = *(*(v82 + 56) + 8 * v83);

        v86 = [v71 layouts];
        v87 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v87 >> 62)
        {
          v88 = _CocoaArrayWrapper.endIndex.getter();
          v12 = v152;
          if (v88)
          {
LABEL_84:
            v89 = 0;
            v142 = v87 & 0xFFFFFFFFFFFFFF8;
            v145 = (v87 & 0xC000000000000001);
            v139 = v87;
            while (1)
            {
              if (v145)
              {
                v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v91 = v89 + 1;
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_141;
                }
              }

              else
              {
                if (v89 >= *(v142 + 16))
                {
                  goto LABEL_142;
                }

                v90 = *(v87 + 8 * v89 + 32);
                v91 = v89 + 1;
                if (__OFADD__(v89, 1))
                {
                  goto LABEL_141;
                }
              }

              v92 = v88;
              v153 = v90;
              v93 = [v90 identifier];
              v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v96 = v95;

              v97 = [v147 currentLayoutID];
              v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v100 = v99;

              if (v94 == v98 && v96 == v100)
              {
                break;
              }

              v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v12 = v152;
              if (v102)
              {
                goto LABEL_102;
              }

              ++v89;
              v88 = v92;
              v22 = v91 == v92;
              v87 = v139;
              a2 = v149;
              if (v22)
              {
                goto LABEL_122;
              }
            }

            v12 = v152;
LABEL_102:

            v103 = [v153 wallpapers];
            v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            a2 = v149;
            if (v54 >> 62)
            {
              v104 = _CocoaArrayWrapper.endIndex.getter();
              if (v104)
              {
LABEL_104:
                v105 = 0;
                v140 = v54 & 0xFFFFFFFFFFFFFF8;
                v143 = v54 & 0xC000000000000001;
                v137 = v54;
                do
                {
                  if (v143)
                  {
                    v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v107 = v105 + 1;
                    if (__OFADD__(v105, 1))
                    {
                      goto LABEL_146;
                    }
                  }

                  else
                  {
                    if (v105 >= *(v140 + 16))
                    {
                      goto LABEL_147;
                    }

                    v106 = *(v54 + 8 * v105 + 32);
                    v107 = v105 + 1;
                    if (__OFADD__(v105, 1))
                    {
LABEL_146:
                      __break(1u);
LABEL_147:
                      __break(1u);
LABEL_148:
                      v55 = _CocoaArrayWrapper.endIndex.getter();
                      if (!v55)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_48;
                    }
                  }

                  v108 = v104;
                  v146 = v106;
                  v109 = [v106 identifier];
                  v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v112 = v111;

                  v113 = [v156 identifier];
                  v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v116 = v115;

                  if (v110 == v114 && v112 == v116)
                  {

LABEL_120:

                    v119 = [v154 identifier];
                    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v141 = v121;
                    v144 = v120;

                    v122 = [v147 themeDataWithCurrentPaletteID:v163];
                    v123 = [v146 data];
                    v124 = [v122 themeDataWithCurrentWallpaper:v123];

                    swift_getKeyPath();
                    v160();

                    v167[0] = v162;
                    swift_getKeyPath();
                    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                    swift_beginAccess();
                    sub_1000470E4(v124, v144, v141);
                    swift_endAccess();
                    v167[0] = v162;
                    swift_getKeyPath();
                    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

                    v12 = v152;
                    v67 = v158;
                    v125 = v148;
                    a2 = v149;
                    goto LABEL_129;
                  }

                  v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v118)
                  {
                    goto LABEL_120;
                  }

                  ++v105;
                  v104 = v108;
                  v22 = v107 == v108;
                  v12 = v152;
                  v54 = v137;
                  a2 = v149;
                }

                while (!v22);
              }
            }

            else
            {
              v104 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v104)
              {
                goto LABEL_104;
              }
            }

            goto LABEL_124;
          }
        }

        else
        {
          v88 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v12 = v152;
          if (v88)
          {
            goto LABEL_84;
          }
        }

LABEL_122:

        goto LABEL_123;
      }

      v12 = v152;
LABEL_124:
      sub_1000317B8(0, &qword_1000FF690);
      v126 = v154;

      v127 = static OS_os_log.default.getter();
      v128 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v167[0] = swift_slowAlloc();
        *v129 = v136;
        v155 = v126;
        v130 = [v126 identifier];
        v131 = v128;
        v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v134 = v133;

        v135 = sub_100037824(v132, v134, v167);
        v12 = v152;

        *(v129 + 4) = v135;
        *(v129 + 12) = 2080;
        *(v129 + 14) = sub_100037824(v150, v151, v167);
        _os_log_impl(&_mh_execute_header, v127, v131, "Failed to find matching wallpaper for display %s: %s", v129, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v67 = v158;
LABEL_128:
      v125 = v148;
LABEL_129:
      v69 = v161;
      if (v161 == v125)
      {
        goto LABEL_133;
      }
    }

LABEL_123:

    goto LABEL_124;
  }

LABEL_133:

LABEL_43:
}

uint64_t sub_1000470E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100047FF0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1000305EC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100048168();
        v14 = v16;
      }

      result = sub_10003817C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10004731C()
{

  v1 = OBJC_IVAR____TtC15CarPlaySettings19CARThemeManagerData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000473A4()
{

  v1 = OBJC_IVAR____TtC15CarPlaySettings19CARThemeManagerData___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t (*sub_1000474CC(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10004853C;
}

uint64_t sub_100047548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000317B8(0, &unk_1000FF9C0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1000485C0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000416D4;
  aBlock[3] = &unk_1000DBFB8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_1000485E4(&unk_100101D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100030C14(&unk_1000FF9D0);
  sub_100043C98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_100047854(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2();
    __chkstk_darwin(v4);
    withObservationTracking<A>(_:onChange:)();
  }

  return result;
}

uint64_t sub_10004792C()
{
  v1 = v0;
  v2 = [*(v0 + 48) layouts];
  sub_1000317B8(0, &qword_100100660);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = CRSUIClusterThemePalette.id.getter();
      v11 = v10;
      v12 = (*(*v1 + 200))();
      if (v13)
      {
        if (v9 == v12 && v13 == v11)
        {

LABEL_19:

          v16 = [v7 displayName];
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          goto LABEL_24;
        }

        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v15)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v7 = 0;
  v17 = 0x6E776F6E6B6E55;
LABEL_24:
  v18._countAndFlagsBits = 10272;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  (*(*v1 + 248))();
  type metadata accessor for CARThemeModel();
  sub_1000485E4(&qword_1000FFC18, type metadata accessor for CARThemeModel);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);

  return v17;
}

uint64_t sub_100047C34()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 24) = v1;
}

uint64_t sub_100047C98()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
}

uint64_t type metadata accessor for CARThemeManagerData()
{
  result = qword_100102940;
  if (!qword_100102940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100047D4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100030C14(&qword_1000FFDC0);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100047FF0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000305EC(a2, a3);
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
      sub_100047D4C(v16, a4 & 1);
      v11 = sub_1000305EC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100048168();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id sub_100048168()
{
  v1 = v0;
  sub_100030C14(&qword_1000FFDC0);
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

        result = v20;
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

uint64_t sub_1000482D4(uint64_t a1)
{
  v3 = *(v1 + 56);
  v4 = sub_100045FA8(v3);
  v5 = (*(*a1 + 136))();
  CRSUIClusterThemePalette.id.getter();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v4 themeDataWithCurrentPaletteID:v6];

  v8 = (*(*a1 + 184))();
  v9 = [v8 data];

  v10 = [v7 themeDataWithCurrentWallpaper:v9];
  v11 = [v3 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  sub_100046074(v10, v12, v14);
}

uint64_t sub_10004847C()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100048548()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100048580()
{

  return swift_deallocObject();
}

uint64_t sub_1000485CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000485E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004862C()
{
  (*(*v0 + 152))();
}

uint64_t sub_100048680(uint64_t a1)
{
  v3 = type metadata accessor for ThemeEditorBackground();
  v4 = __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  *v6 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t type metadata accessor for ThemeEditorBackground()
{
  result = qword_100102960;
  if (!qword_100102960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100048828@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003E2DC(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100048A10@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  sub_100048828(&v19 - v11);
  (*(v7 + 104))(v10, enum case for ColorScheme.light(_:), v6);
  v13 = static ColorScheme.== infix(_:_:)();
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  if (v13)
  {
    (*(v3 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
    v15 = Color.init(_:red:green:blue:opacity:)();
  }

  else
  {
    v15 = static Color.black.getter();
  }

  v16 = v15;
  v17 = static SafeAreaRegions.all.getter();
  result = static Edge.Set.all.getter();
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100048C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_100048A10(v13);
  v7 = v13[0];
  v8 = v13[1];
  v9 = v14;
  v10 = sub_100030C14(&qword_1000FFE48);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = sub_100030C14(&qword_1000FFE50);
  v12 = a2 + *(result + 36);
  *v12 = v7;
  *(v12 + 8) = v8;
  *(v12 + 16) = v9;
  *(v12 + 24) = v4;
  *(v12 + 32) = v6;
  return result;
}

uint64_t sub_100048D30()
{
  type metadata accessor for ThemeEditorBackground();
  type metadata accessor for ModifiedContent();
  sub_100048D9C();
  return swift_getWitnessTable();
}

unint64_t sub_100048D9C()
{
  result = qword_100102958;
  if (!qword_100102958)
  {
    type metadata accessor for ThemeEditorBackground();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100102958);
  }

  return result;
}

uint64_t sub_100048E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100048E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FF4F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100048F10()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_100048F9C()
{
  result = qword_1000FFE58;
  if (!qword_1000FFE58)
  {
    sub_10003B1B8(&qword_1000FFE50);
    sub_10003D450(&qword_1000FFE60, &qword_1000FFE48);
    sub_10003D450(&qword_1000FFE68, &unk_1000FFE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFE58);
  }

  return result;
}

id sub_100049080()
{
  v1 = [v0 traitCollection];
  [v1 displayScale];
  v3 = v2;

  v4 = [objc_allocWithZone(ISImageDescriptor) initWithSize:22.0 scale:{22.0, v3}];
  v5 = [v0 traitCollection];
  v6 = [v5 sbh_iconImageStyleConfiguration];

  v7 = [v6 variant];
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle];

  [v4 setAppearance:{sub_100030464(v9, v7)}];
  [v4 setAppearanceVariant:{sub_100030484(objc_msgSend(v6, "configurationType"))}];

  return v4;
}

void *CARSettingsTableViewCell.specifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier);
  v2 = v1;
  return v1;
}

void CARSettingsTableViewCell.specifier.setter(void *a1)
{
  sub_10004D06C(a1);
}

void (*CARSettingsTableViewCell.specifier.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_1000492FC;
}

void sub_1000492FC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = *&v2[v3];
  if (a2)
  {
    v6 = v4;
    if (v5)
    {
      [v5 removeObserver:v2];
      v5 = *&v2[v3];
    }

    *&v2[v3] = v4;
    v8 = v6;

    if (v4)
    {
      [v8 addObserver:v2];
    }

    [v2 setNeedsUpdateConfiguration];

    v9 = v4;
  }

  else
  {
    if (v5)
    {
      [*&v2[v3] removeObserver:v2];
      v7 = *&v2[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v2[v3] = v4;
    v10 = v4;

    if (v4)
    {
      [v10 addObserver:v2];
    }

    [v2 setNeedsUpdateConfiguration];
    v9 = v10;
  }
}

id CARSettingsTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id CARSettingsTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for CARSettingsTableViewCell();
  v6 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v5);

  sub_100030C14(&unk_100100330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000A1FF0;
  *(v7 + 32) = sub_10004D130();
  v8 = v6;
  sub_100030C14(&qword_100100340);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 registerForTraitChanges:isa withAction:"_didUpdateTintTrait"];

  swift_unknownObjectRelease();
  return v8;
}

void sub_100049638()
{
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100049708()
{
  type metadata accessor for CARSettingsTableViewCell();
  sub_100030C14(&qword_100100048);
  result = String.init<A>(describing:)();
  static CARSettingsTableViewCell.reuseIdentifier = result;
  *algn_100105398 = v1;
  return result;
}

uint64_t *CARSettingsTableViewCell.reuseIdentifier.unsafeMutableAddressor()
{
  if (qword_1001029F0 != -1)
  {
    swift_once();
  }

  return &static CARSettingsTableViewCell.reuseIdentifier;
}

uint64_t static CARSettingsTableViewCell.reuseIdentifier.getter()
{
  if (qword_1001029F0 != -1)
  {
    swift_once();
  }

  v0 = static CARSettingsTableViewCell.reuseIdentifier;

  return v0;
}

Swift::Void __swiftcall CARSettingsTableViewCell.prepareForReuse()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CARSettingsTableViewCell();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  (*((swift_isaMask & *v0) + 0x80))(0);
}

Swift::Void __swiftcall CARSettingsTableViewCell.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v5.receiver = v2;
  v5.super_class = type metadata accessor for CARSettingsTableViewCell();
  objc_msgSendSuper2(&v5, "didUpdateFocusInContext:withAnimationCoordinator:", in.super.isa, with.super.isa);
  [v2 setNeedsUpdateConfiguration];
}

void CARSettingsTableViewCell.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100030C14(&qword_1000FFEA0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v27[-1] - v10;
  v12 = (*((swift_isaMask & *v1) + 0x78))(v9);
  if (v12)
  {
    v13 = v12;
    v26 = v5;
    [v1 setSelectionStyle:{objc_msgSend(v12, "selectionStyle")}];
    [v1 setUserInteractionEnabled:{objc_msgSend(v13, "isEnabled")}];
    v14 = [v13 accessibilityIdentifier];
    [v2 setAccessibilityIdentifier:v14];

    __chkstk_darwin(v15);
    *(&v26 - 4) = v13;
    *(&v26 - 3) = v2;
    *(&v26 - 2) = a1;
    sub_100030C14(&qword_1000FFEA8);
    sub_10003D450(&qword_1000FFEB0, &qword_1000FFEA8);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v16 = [v13 icon];
    if (v16)
    {
    }

    v17 = v26;
    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v17 + 8);
    v18(v8, v4);
    v27[3] = v4;
    v27[4] = sub_10003D450(&qword_1000FFEB8, &qword_1000FFEA0);
    sub_10004D1E8(v27);
    UIHostingConfiguration.minSize(width:height:)();
    v18(v11, v4);
    UITableViewCell.contentConfiguration.setter();
    if ([v13 accessoryType] != 104)
    {
      [v2 setAccessoryView:0];
      [v2 setAccessoryType:{objc_msgSend(v13, "accessoryType")}];
LABEL_14:

      return;
    }

    v19 = [v2 accessoryView];
    if (v19)
    {
      v20 = v19;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        v23 = [v13 cellBoolValue];
LABEL_13:
        [v22 setOn:v23 animated:0];

        goto LABEL_14;
      }
    }

    [v2 setAccessoryType:0];
    v24 = [objc_allocWithZone(CPUISwitch) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v25 = v24;
    if (v24)
    {
      [v24 addTarget:v2 action:"_switchValueChanged:" forControlEvents:4096];
    }

    v22 = v25;
    [v2 setAccessoryView:v22];

    v23 = [v13 cellBoolValue];
    if (!v25)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

uint64_t sub_100049F00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a3;
  v57 = a2;
  v63 = sub_100030C14(&qword_1000FFEF8);
  v6 = __chkstk_darwin(v63);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = (&v53 - v8);
  v9 = type metadata accessor for Image.ResizingMode();
  v54 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100030C14(&qword_1000FFF00);
  __chkstk_darwin(v58);
  v13 = &v53 - v12;
  v14 = sub_100030C14(&qword_1000FFF08);
  v55 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v53 - v15;
  v17 = sub_100030C14(&qword_1000FFF10);
  v56 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v20 = sub_100030C14(&qword_1000FFF18);
  v21 = __chkstk_darwin(v20 - 8);
  v61 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v53 - v23;
  v60 = a1;
  v25 = [a1 icon];
  if (v25)
  {
    v26 = v25;
    v27 = sub_100049080();
    v28 = swift_allocObject();
    v57 = a4;
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;
    v29 = v26;
    v54 = v27;
    v53 = v29;
    sub_100030C14(&qword_1000FFF50);
    sub_10004D36C();
    AsyncIconImage.init(icon:descriptor:transaction:content:)();
    v30 = sub_10003D450(&qword_1000FFF40, &qword_1000FFF08);
    View.disableIconEnviromentSettings(_:)();
    v55[1](v16, v14);
    v31 = v56;
    (*(v56 + 16))(v13, v19, v17);
    swift_storeEnumTagMultiPayload();
    sub_100030C14(&qword_100101030);
    v65 = v14;
    v66 = v30;
    a4 = v57;
    swift_getOpaqueTypeConformance2();
    sub_10004D418(&qword_1000FFF48, &qword_100101030);
    _ConditionalContent<>.init(storage:)();

    (*(v31 + 8))(v19, v17);
    v32 = sub_100030C14(&qword_1000FFF20);
    (*(*(v32 - 8) + 56))(v24, 0, 1, v32);
    v33 = v60;
  }

  else
  {
    v34 = v54;
    v56 = v17;
    v35 = v13;
    v33 = v60;
    v36 = [v60 image];
    if (v36)
    {
      v55 = v36;
      Image.init(uiImage:)();
      v57 = a4;
      v37 = v34;
      v34[13](v11, enum case for Image.ResizingMode.stretch(_:), v9);
      v38 = Image.resizable(capInsets:resizingMode:)();

      (v37[1])(v11, v9);
      *v35 = v38;
      *(v35 + 1) = 0;
      *(v35 + 8) = 1;
      swift_storeEnumTagMultiPayload();

      sub_100030C14(&qword_100101030);
      v39 = sub_10003D450(&qword_1000FFF40, &qword_1000FFF08);
      v65 = v14;
      v66 = v39;
      swift_getOpaqueTypeConformance2();
      sub_10004D418(&qword_1000FFF48, &qword_100101030);
      a4 = v57;
      _ConditionalContent<>.init(storage:)();

      v40 = sub_100030C14(&qword_1000FFF20);
      (*(*(v40 - 8) + 56))(v24, 0, 1, v40);
    }

    else
    {
      v41 = sub_100030C14(&qword_1000FFF20);
      (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
    }
  }

  v42 = static VerticalAlignment.center.getter();
  v43 = v59;
  *v59 = v42;
  *(v43 + 8) = 0;
  *(v43 + 16) = 1;
  v44 = sub_100030C14(&qword_1000FFF28);
  sub_10004AD40(v62, v33, v43 + *(v44 + 44));
  v45 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v65 = v45;
  v47 = AnyShapeStyle.init<A>(_:)();
  v48 = (v43 + *(v63 + 36));
  *v48 = KeyPath;
  v48[1] = v47;
  v49 = v61;
  sub_10004D24C(v24, v61);
  v50 = v64;
  sub_10003976C(v43, v64, &qword_1000FFEF8);
  sub_10004D24C(v49, a4);
  v51 = sub_100030C14(&unk_1000FFF30);
  sub_10003976C(v50, a4 + *(v51 + 48), &qword_1000FFEF8);
  sub_10003970C(v43, &qword_1000FFEF8);
  sub_10004D2BC(v24);
  sub_10003970C(v50, &qword_1000FFEF8);
  return sub_10004D2BC(v49);
}

id sub_10004A7B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  v12 = type metadata accessor for AsyncIconImagePhase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 1];
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) == enum case for AsyncIconImagePhase.success(_:))
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v8);
    v16 = Image.resizable(capInsets:resizingMode:)();
    (*(v9 + 8))(v11, v8);
    [a2 size];
    [a2 size];
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v25 = v30;
    v23 = v32;
    v21 = 0;
    *&v34 = v16;
    *(&v34 + 1) = v29;
    LOBYTE(v35) = v30;
    *(&v35 + 1) = v24[0];
    DWORD1(v35) = *(v24 + 3);
    *(&v35 + 1) = v31;
    v36[0] = v32;
    *&v36[1] = *v22;
    *&v36[4] = *&v22[3];
    *&v36[8] = v33;
    v36[24] = 0;
    swift_retain_n();
    sub_100030C14(&qword_1000FFF68);
    sub_100030C14(&qword_1000FFF78);
    sub_10004D418(&qword_1000FFF60, &qword_1000FFF68);
    sub_10004D488();
    _ConditionalContent<>.init(storage:)();

    v34 = v26;
    v35 = v27;
    *v36 = v28[0];
    *&v36[9] = *(v28 + 9);
LABEL_8:
    v20 = v35;
    *a4 = v34;
    a4[1] = v20;
    a4[2] = *v36;
    *(a4 + 41) = *&v36[9];
    return result;
  }

  v18 = [a3 imageForDescriptor:a2];
  if (!v18)
  {
    *&v26 = Image.init(systemName:)();
    BYTE8(v26) = 1;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  v19 = v18;
  result = [v18 CGImage];
  if (result)
  {
    [v19 scale];
    *&v26 = Image.init(decorative:scale:orientation:)();
    BYTE8(v26) = 0;
    swift_retain_n();
    _ConditionalContent<>.init(storage:)();

LABEL_7:
    LOBYTE(v29) = BYTE8(v34);
    LOBYTE(v24[0]) = 1;
    v36[24] = 1;
    sub_100030C14(&qword_1000FFF68);
    sub_100030C14(&qword_1000FFF78);
    sub_10004D418(&qword_1000FFF60, &qword_1000FFF68);
    sub_10004D488();
    _ConditionalContent<>.init(storage:)();
    result = (*(v13 + 8))(v15, v12);
    v34 = v26;
    v35 = v27;
    *v36 = v28[0];
    *&v36[9] = *(v28 + 9);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AD40@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AccessibilityTraits();
  v87 = *(v6 - 8);
  __chkstk_darwin(v6);
  v86 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100030C14(&qword_1000FFF80);
  __chkstk_darwin(v79);
  v80 = &v72 - v8;
  v83 = sub_100030C14(&qword_1000FFF88);
  __chkstk_darwin(v83);
  v85 = &v72 - v9;
  v10 = sub_100030C14(&qword_1000FFF90);
  v90 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v84 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v72 - v13;
  v14 = sub_100030C14(&qword_1000FFF98);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v72 - v18;
  v20 = sub_100030C14(&qword_1000FFFA0);
  v21 = __chkstk_darwin(v20 - 8);
  v89 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v72 - v23;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = *(sub_100030C14(&unk_1000FFFA8) + 44);
  v88 = v24;
  v81 = a1;
  sub_10004B4AC(a1, a2, &v24[v25]);
  v26 = [a2 detail];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v77 = v6;
    v78 = a3;
    v31 = [a2 detail];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v91 = v32;
    v92 = v34;
    v72 = sub_10003D498();
    v35 = Text.init<A>(_:)();
    v37 = v36;
    v39 = v38;
    v73 = a2;
    v40 = [a2 overrideSubtitleFont];
    v75 = v10;
    v76 = v17;
    v74 = v19;
    if (v40)
    {
      Font.init(_:)();
    }

    else
    {
      static Font.callout.getter();
    }

    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    sub_10003D4EC(v35, v37, v39 & 1);

    v91 = sub_10004C6F8();
    v47 = Text.foregroundStyle<A>(_:)();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_10003D4EC(v42, v44, v46 & 1);

    v54 = v80;
    sub_10004C8C0(&v80[*(v79 + 36)]);
    *v54 = v47;
    *(v54 + 8) = v49;
    *(v54 + 16) = v51 & 1;
    *(v54 + 24) = v53;
    v55 = v73;
    v56 = [v73 detailNumberOfLines];
    KeyPath = swift_getKeyPath();
    v58 = v85;
    sub_10004D640(v54, v85, &qword_1000FFF80);
    v59 = v58 + *(v83 + 36);
    *v59 = KeyPath;
    *(v59 + 8) = v56;
    *(v59 + 16) = 0;
    v60 = [v55 detail];
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v91 = v61;
    v92 = v63;
    sub_10004D504();
    v64 = v84;
    View.accessibilityLabel<A>(_:)();

    sub_10003970C(v58, &qword_1000FFF88);
    v65 = v86;
    static AccessibilityTraits.isButton.getter();
    v66 = v82;
    v10 = v75;
    ModifiedContent<>.accessibilityAddTraits(_:)();
    (*(v87 + 8))(v65, v77);
    sub_10003970C(v64, &qword_1000FFF90);
    v19 = v74;
    sub_10004D640(v66, v74, &qword_1000FFF90);
    v41 = 0;
    a3 = v78;
    v17 = v76;
  }

  else
  {
    v41 = 1;
  }

  (*(v90 + 56))(v19, v41, 1, v10);
  v68 = v88;
  v67 = v89;
  sub_10003976C(v88, v89, &qword_1000FFFA0);
  sub_10003976C(v19, v17, &qword_1000FFF98);
  sub_10003976C(v67, a3, &qword_1000FFFA0);
  v69 = sub_100030C14(&qword_1000FFFD8);
  v70 = a3 + *(v69 + 48);
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_10003976C(v17, a3 + *(v69 + 64), &qword_1000FFF98);
  sub_10003970C(v19, &qword_1000FFF98);
  sub_10003970C(v68, &qword_1000FFFA0);
  sub_10003970C(v17, &qword_1000FFF98);
  return sub_10003970C(v67, &qword_1000FFFA0);
}

uint64_t sub_10004B4AC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v145 = a3;
  v131 = sub_100030C14(&qword_1000FFF80);
  __chkstk_darwin(v131);
  v132 = v125 - v5;
  v134 = sub_100030C14(&qword_1000FFF88);
  __chkstk_darwin(v134);
  v133 = v125 - v6;
  v147 = sub_100030C14(&qword_1000FFF90);
  v144 = *(v147 - 8);
  v7 = __chkstk_darwin(v147);
  v136 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v135 = v125 - v9;
  v10 = sub_100030C14(&qword_1000FFF98);
  v11 = __chkstk_darwin(v10 - 8);
  v148 = v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v146 = v125 - v13;
  v140 = type metadata accessor for AccessibilityTraits();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100030C14(&qword_1000FFFF0);
  v15 = __chkstk_darwin(v143);
  v129 = v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v130 = v125 - v17;
  v142 = sub_100030C14(&qword_1000FFFF8);
  __chkstk_darwin(v142);
  v19 = v125 - v18;
  v20 = sub_100030C14(&qword_100100000);
  __chkstk_darwin(v20 - 8);
  v22 = v125 - v21;
  v23 = type metadata accessor for AttributedString();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v137 = v125 - v28;
  v29 = sub_100030C14(&qword_100100008);
  v30 = __chkstk_darwin(v29 - 8);
  v32 = v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = v125 - v33;
  v35 = a2;
  v141 = a1;
  sub_10004C330(a2, v22);
  v36 = v23;
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v37 = v34;
    v127 = v19;
    sub_10003970C(v22, &qword_100100000);
    v38 = [a2 title];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = (v42 >> 56) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v40 & 0xFFFFFFFFFFFFLL;
      }

      v44 = v32;
      if (v43)
      {
        v128 = v34;
        v125[0] = v40;
        v151 = v40;
        v152 = v42;
        v45 = sub_10003D498();

        v125[1] = v45;
        v46 = Text.init<A>(_:)();
        v48 = v47;
        v50 = v49;
        v137 = a2;
        v51 = [a2 overrideTitleFont];
        v126 = v42;
        if (v51)
        {
          Font.init(_:)();
        }

        else
        {
          static Font.callout.getter();
        }

        v66 = Text.font(_:)();
        v68 = v67;
        v70 = v69;

        sub_10003D4EC(v46, v48, v50 & 1);

        static Font.Weight.medium.getter();
        v71 = Text.fontWeight(_:)();
        v73 = v72;
        v75 = v74;
        sub_10003D4EC(v66, v68, v70 & 1);

        v151 = sub_10004C500(v137);
        v76 = Text.foregroundStyle<A>(_:)();
        v78 = v77;
        LOBYTE(v68) = v79;
        v81 = v80;
        sub_10003D4EC(v71, v73, v75 & 1);

        KeyPath = swift_getKeyPath();
        v151 = v76;
        v152 = v78;
        LOBYTE(v68) = v68 & 1;
        v153 = v68;
        v154 = v81;
        v155 = KeyPath;
        v156 = 2;
        v157 = 0;
        v149 = v125[0];
        v150 = v126;
        sub_100030C14(&qword_100100020);
        v125[0] = sub_10004D6A8();
        v83 = v129;
        View.accessibilityLabel<A>(_:)();
        sub_10003D4EC(v76, v78, v68);

        v84 = v138;
        static AccessibilityTraits.isButton.getter();
        v85 = v130;
        ModifiedContent<>.accessibilityAddTraits(_:)();
        (*(v139 + 8))(v84, v140);
        sub_10003970C(v83, &qword_1000FFFF0);
        sub_10003976C(v85, v127, &qword_1000FFFF0);
        swift_storeEnumTagMultiPayload();
        sub_10004D760();
        v63 = v128;
        a2 = v137;
        _ConditionalContent<>.init(storage:)();
        sub_10003970C(v85, &qword_1000FFFF0);
        goto LABEL_14;
      }

      v64 = 1;
      v65 = v148;
    }

    else
    {
      v64 = 1;
      v65 = v148;
      v44 = v32;
    }

    v63 = v37;
    goto LABEL_15;
  }

  v52 = *(v24 + 32);
  v53 = v137;
  v127 = v36;
  v52(v137, v22, v36);
  (*(v24 + 16))(v27, v53, v36);
  v54 = Text.init(_:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = swift_getKeyPath();
  *v19 = v54;
  *(v19 + 1) = v56;
  v62 = v58 & 1;
  a2 = v35;
  v44 = v32;
  v63 = v34;
  v19[16] = v62;
  *(v19 + 3) = v60;
  *(v19 + 4) = v61;
  *(v19 + 5) = 2;
  v19[48] = 0;
  swift_storeEnumTagMultiPayload();
  sub_100030C14(&qword_100100020);
  sub_10004D6A8();
  sub_10004D760();
  _ConditionalContent<>.init(storage:)();
  (*(v24 + 8))(v53, v127);
LABEL_14:
  v64 = 0;
  v65 = v148;
LABEL_15:
  v86 = sub_100030C14(&qword_100100010);
  v87 = 1;
  (*(*(v86 - 8) + 56))(v63, v64, 1, v86);
  v88 = [a2 subtitle];
  if (v88)
  {
    v89 = v88;
    v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v92 = v91;

    v93 = HIBYTE(v92) & 0xF;
    if ((v92 & 0x2000000000000000) == 0)
    {
      v93 = v90 & 0xFFFFFFFFFFFFLL;
    }

    if (v93)
    {
      v142 = v90;
      v143 = v44;
      v151 = v90;
      v152 = v92;
      v94 = sub_10003D498();

      v130 = v94;
      v95 = Text.init<A>(_:)();
      v97 = v96;
      v99 = v98;
      v137 = a2;
      v100 = [a2 overrideSubtitleFont];
      v128 = v63;
      v129 = v92;
      if (v100)
      {
        Font.init(_:)();
      }

      else
      {
        static Font.callout.getter();
      }

      v101 = Text.font(_:)();
      v103 = v102;
      v105 = v104;

      sub_10003D4EC(v95, v97, v99 & 1);

      v151 = sub_10004C6F8();
      v106 = Text.foregroundStyle<A>(_:)();
      v108 = v107;
      v110 = v109;
      v112 = v111;
      sub_10003D4EC(v101, v103, v105 & 1);

      v113 = v132;
      sub_10004C8C0(&v132[*(v131 + 36)]);
      *v113 = v106;
      *(v113 + 8) = v108;
      *(v113 + 16) = v110 & 1;
      *(v113 + 24) = v112;
      v114 = [v137 detailNumberOfLines];
      v115 = swift_getKeyPath();
      v116 = v133;
      sub_10004D640(v113, v133, &qword_1000FFF80);
      v117 = v116 + *(v134 + 36);
      *v117 = v115;
      *(v117 + 8) = v114;
      *(v117 + 16) = 0;
      v151 = v142;
      v152 = v129;
      sub_10004D504();
      v118 = v136;
      View.accessibilityLabel<A>(_:)();
      sub_10003970C(v116, &qword_1000FFF88);

      v119 = v138;
      static AccessibilityTraits.isButton.getter();
      v120 = v135;
      ModifiedContent<>.accessibilityAddTraits(_:)();
      (*(v139 + 8))(v119, v140);
      sub_10003970C(v118, &qword_1000FFF90);
      sub_10004D640(v120, v146, &qword_1000FFF90);
      v87 = 0;
      v65 = v148;
      v44 = v143;
      v63 = v128;
    }

    else
    {

      v87 = 1;
    }
  }

  v121 = v146;
  (*(v144 + 56))(v146, v87, 1, v147);
  sub_10003976C(v63, v44, &qword_100100008);
  sub_10003976C(v121, v65, &qword_1000FFF98);
  v122 = v145;
  sub_10003976C(v44, v145, &qword_100100008);
  v123 = sub_100030C14(&qword_100100018);
  sub_10003976C(v65, v122 + *(v123 + 48), &qword_1000FFF98);
  sub_10003970C(v121, &qword_1000FFF98);
  sub_10003970C(v63, &qword_100100008);
  sub_10003970C(v65, &qword_1000FFF98);
  return sub_10003970C(v44, &qword_100100008);
}

uint64_t sub_10004C330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v12[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 attributedTitle];
  if (v7)
  {
    v8 = v7;
    AttributedString.init(_:)();
    if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
    {
      v9 = [objc_opt_self() _carSystemFocusLabelColor];
      v12[1] = Color.init(uiColor:)();
      sub_10004D844();
      AttributedString.subscript.setter();
    }

    (*(v12[0] + 32))(a2, v6, v4);
    return (*(v12[0] + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = *(v12[0] + 56);

    return v11(a2, 1, 1, v4);
  }
}

uint64_t sub_10004C500(void *a1)
{
  v2 = type metadata accessor for TintShapeStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  TintShapeStyle.init()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v9 = [objc_opt_self() _carSystemFocusLabelColor];
    v15 = Color.init(uiColor:)();
    v10 = AnyShapeStyle.init<A>(_:)();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v12 = [a1 titleColor];
    if (v12)
    {
      v13 = v12;
      v15 = Color.init(uiColor:)();
      v10 = AnyShapeStyle.init<A>(_:)();

      (*(v3 + 8))(v8, v2);
    }

    else
    {
      (*(v3 + 16))(v6, v8, v2);
      v10 = AnyShapeStyle.init<A>(_:)();
      (*(v3 + 8))(v8, v2);
    }
  }

  return v10;
}

uint64_t sub_10004C6F8()
{
  v0 = sub_100030C14(&qword_1000FFFE0);
  __chkstk_darwin(v0);
  v2 = v9 - v1;
  v3 = type metadata accessor for TintShapeStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v7 = [objc_opt_self() _carSystemFocusPrimaryColor];
    v9[1] = Color.init(uiColor:)();
  }

  else
  {
    TintShapeStyle.init()();
    (*(v4 + 32))(v2, v6, v3);
    *&v2[*(v0 + 36)] = 1;
    sub_10003D450(&qword_1000FFFE8, &qword_1000FFFE0);
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_10004C8C0@<X0>(uint64_t a1@<X8>)
{
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter())
  {
    v2 = UICellConfigurationState.traitCollection.getter();
    v3 = [v2 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v3 == 2)
    {
LABEL_5:
      v6 = &enum case for BlendMode.plusDarker(_:);
      goto LABEL_8;
    }
  }

  else
  {
    v7 = UICellConfigurationState.traitCollection.getter();
    v8 = [v7 userInterfaceStyle];

    v4 = type metadata accessor for BlendMode();
    v5 = *(*(v4 - 8) + 104);
    if (v8 != 2)
    {
      goto LABEL_5;
    }
  }

  v6 = &enum case for BlendMode.plusLighter(_:);
LABEL_8:
  v9 = *v6;

  return v5(a1, v9, v4);
}

void sub_10004CAB4(void *a1)
{
  v3 = (*((swift_isaMask & *v1) + 0x78))();
  if (v3)
  {
    v15 = v3;
    [a1 isOn];
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [v15 setCellValue:isa];

    v5 = [v15 actionBlock];
    if (v5)
    {
      v6 = v5;
      v7 = [v15 cellValue];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10003976C(v18, v16, &unk_100100CA0);
      v8 = v17;
      if (v17)
      {
        v9 = sub_100039470(v16, v17);
        v10 = *(v8 - 8);
        __chkstk_darwin(v9);
        v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v10 + 16))(v12);
        v13 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v10 + 8))(v12, v8);
        sub_100038D70(v16);
      }

      else
      {
        v13 = 0;
      }

      v6[2](v6, v13);
      swift_unknownObjectRelease();

      _Block_release(v6);
      sub_10003970C(v18, &unk_100100CA0);
    }

    else
    {
    }
  }
}

id CARSettingsTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSettingsTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall CARSettingsTableViewCell.specifier(_:didUpdate:)(CARSettingsCellSpecifier *_, UITableViewCellSelectionStyle didUpdate)
{
  [v2 setSelectionStyle:didUpdate];

  [v2 setNeedsUpdateConfiguration];
}

Swift::Void __swiftcall CARSettingsTableViewCell.specifier(_:didUpdateEnabled:)(CARSettingsCellSpecifier *_, Swift::Bool didUpdateEnabled)
{
  [v2 setUserInteractionEnabled:didUpdateEnabled];

  [v2 setNeedsUpdateConfiguration];
}

uint64_t sub_10004CFB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10004D008@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_10004D06C(void *a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier;
  v4 = *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARSettingsTableViewCell__specifier];
  if (v4)
  {
    [v4 removeObserver:v1];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v6 addObserver:v1];
  }

  return [v1 setNeedsUpdateConfiguration];
}

unint64_t sub_10004D130()
{
  result = qword_1000FFE90;
  if (!qword_1000FFE90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000FFE90);
  }

  return result;
}

uint64_t sub_10004D17C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4026000000000000;
  *(a1 + 16) = 0;
  v6 = sub_100030C14(&qword_1000FFEF0);
  return sub_100049F00(v3, v4, v5, a1 + *(v6 + 44));
}

uint64_t *sub_10004D1E8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10004D24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1000FFF18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004D2BC(uint64_t a1)
{
  v2 = sub_100030C14(&qword_1000FFF18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004D324()
{

  return swift_deallocObject();
}

unint64_t sub_10004D36C()
{
  result = qword_1000FFF58;
  if (!qword_1000FFF58)
  {
    sub_10003B1B8(&qword_1000FFF50);
    sub_10004D418(&qword_1000FFF60, &qword_1000FFF68);
    sub_10004D488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFF58);
  }

  return result;
}

uint64_t sub_10004D418(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003B1B8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10004D488()
{
  result = qword_1000FFF70;
  if (!qword_1000FFF70)
  {
    sub_10003B1B8(&qword_1000FFF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFF70);
  }

  return result;
}

unint64_t sub_10004D504()
{
  result = qword_1000FFFB8;
  if (!qword_1000FFFB8)
  {
    sub_10003B1B8(&qword_1000FFF88);
    sub_10004D5BC();
    sub_10003D450(&qword_1000FFFC8, &qword_1000FFFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFFB8);
  }

  return result;
}

unint64_t sub_10004D5BC()
{
  result = qword_1000FFFC0;
  if (!qword_1000FFFC0)
  {
    sub_10003B1B8(&qword_1000FFF80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FFFC0);
  }

  return result;
}

uint64_t sub_10004D640(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100030C14(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004D6A8()
{
  result = qword_100100028;
  if (!qword_100100028)
  {
    sub_10003B1B8(&qword_100100020);
    sub_10003D450(&qword_1000FFFC8, &qword_1000FFFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100028);
  }

  return result;
}

unint64_t sub_10004D760()
{
  result = qword_100100030;
  if (!qword_100100030)
  {
    sub_10003B1B8(&qword_1000FFFF0);
    sub_10004D6A8();
    sub_10004D7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100030);
  }

  return result;
}

unint64_t sub_10004D7EC()
{
  result = qword_100100038;
  if (!qword_100100038)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100038);
  }

  return result;
}

unint64_t sub_10004D844()
{
  result = qword_100100040;
  if (!qword_100100040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100040);
  }

  return result;
}

void (*sub_10004D8B4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10004D908;
}

void sub_10004D908(uint64_t a1, char a2)
{
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = (*(**(a1 + 24) + 136))(v4);
    v6 = sub_10004E7B4(v5);

    if (v6)
    {
      (*(**(a1 + 24) + 192))(v6);
    }
  }
}

id sub_10004D9A8()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  v1 = v0[2];

  return v1;
}

uint64_t sub_10004DA38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

void sub_10004DAD8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  sub_1000317B8(0, &qword_1000FF7D0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = v2[2];
    v2[2] = a1;
    v8 = a1;

    v9 = (*(*v2 + 136))();
    v10 = sub_10004E7B4(v9);

    if (v10)
    {
      (*(*v2 + 192))(v10);
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = __chkstk_darwin(KeyPath);
    (*(*v2 + 264))(v12, sub_10004DC90);
  }
}

void sub_10004DC90()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = v2[2];
  v2[2] = v3;
  v5 = v3;

  v6 = (*(*v2 + 136))();
  v7 = sub_10004E7B4(v6);

  if (v7)
  {
    (*(*v2 + 192))(v7);
  }
}

void (*sub_10004DD54(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC15CarPlaySettings13CARThemeModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_10004F6F0(&qword_100100050, type metadata accessor for CARThemeModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10004D8B4(v4);
  return sub_10004DEA4;
}

id sub_10004DF00()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  v1 = v0[3];

  return v1;
}

uint64_t sub_10004DF90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

void sub_10004E030(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[3];
  sub_1000317B8(0, &qword_1001006F0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = v2[3];
    v2[3] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = __chkstk_darwin(KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 264))(v9, sub_10004EBFC);
  }
}

void (*sub_10004E174(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC15CarPlaySettings13CARThemeModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_10004F6F0(&qword_100100050, type metadata accessor for CARThemeModel);
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_10004DEB0();
  return sub_10004E2C4;
}

void sub_10004E2D0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_10004E370()
{
  v1 = v0;
  v2 = (*(*v0 + 136))();
  v3 = CRSUIClusterThemePalette.id.getter();
  v5 = v4;

  v6 = v1[7];
  v7 = v1[8];
  sub_100039470(v1 + 4, v6);
  v8 = (*(v7 + 24))(v6, v7);
  v9 = CRSUIClusterThemePalette.id.getter();
  v11 = v10;

  if (v3 == v9 && v5 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v15 = 0;
    if ((v13 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = (*(*v1 + 184))(v14);
  v17 = CRSUIClusterThemeWallpaper.id.getter();
  v19 = v18;

  v20 = v1[7];
  v21 = v1[8];
  sub_100039470(v1 + 4, v20);
  v22 = (*(v21 + 32))(v20, v21);
  v23 = CRSUIClusterThemeWallpaper.id.getter();
  v25 = v24;

  if (v17 == v23 && v19 == v25)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

uint64_t sub_10004E540()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_100039470(v0 + 4, v1);
  return (*(v2 + 8))(v1, v2);
}

void *sub_10004E594()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_100039470(v0 + 4, v1);
  v3 = (*(*v0 + 136))();
  v4 = sub_10003D5D0(v3, v1, v2);

  return v4;
}

uint64_t sub_10004E618(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  ObservationRegistrar.init()();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_10004ECBC(a3, v6 + 32);
  return v6;
}

uint64_t sub_10004E680(uint64_t a1, uint64_t a2, __int128 *a3)
{
  ObservationRegistrar.init()();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_10004ECBC(a3, v3 + 32);
  return v3;
}

uint64_t sub_10004E6D4()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_100039470(v0 + 4, v1);
  v3 = (*(v2 + 24))(v1, v2);
  (*(*v0 + 144))(v3);
  v4 = v0[7];
  v5 = v0[8];
  sub_100039470(v0 + 4, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(*v0 + 192);

  return v7(v6);
}

void *sub_10004E7B4(uint64_t a1)
{
  v3 = (*(*v1 + 136))();
  v4 = (*(*v1 + 184))();
  v5 = v1[7];
  v6 = v1[8];
  sub_100039470(v1 + 4, v5);
  v7 = sub_10003D5D0(a1, v5, v6);
  v8 = [v4 associatedPaletteID];
  if (v8)
  {

    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v10 = 0;
      v41 = v7 & 0xC000000000000001;
      v40 = v4;
      v39 = v3;
      while (1)
      {
        if (v41)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v4 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v13 = [v11 associatedPaletteID];
        if (!v13)
        {
          CRSUIClusterThemePalette.id.getter();
LABEL_6:

          goto LABEL_7;
        }

        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v18 = CRSUIClusterThemePalette.id.getter();
        if (!v17)
        {
          goto LABEL_6;
        }

        if (v15 == v18 && v17 == v19)
        {

LABEL_21:
          v22 = [v12 package];
          v23 = [v22 type];

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;

          v27 = [v40 package];
          v28 = [v27 type];

          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          if (v24 == v29 && v26 == v31)
          {

            goto LABEL_38;
          }

          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v3 = v39;
          if (v32)
          {

LABEL_38:

            return v12;
          }

          goto LABEL_7;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {
          goto LABEL_21;
        }

LABEL_7:

        ++v10;
        if (v4 == i)
        {
          v33 = 0;
          v4 = v40;
          while (1)
          {
            if (v41)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v33 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_42;
              }

              v34 = *(v7 + 8 * v33 + 32);
            }

            v12 = v34;
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_41;
            }

            v36 = [v34 associatedPaletteID];
            if (!v36)
            {

              goto LABEL_45;
            }

            v37 = v36;

            ++v33;
            if (v35 == i)
            {
              goto LABEL_44;
            }
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v12 = 0;
LABEL_45:
  }

  else
  {

    return v4;
  }

  return v12;
}

uint64_t type metadata accessor for CARThemeModel()
{
  result = qword_100102B30;
  if (!qword_100102B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004EBFC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
}

uint64_t sub_10004EC58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10004ECBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10004EE14()
{
  sub_100038D70(v0 + 32);
  v1 = OBJC_IVAR____TtC15CarPlaySettings13CARThemeModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10004EE8C()
{
  sub_100038D70((v0 + 4));
  v1 = OBJC_IVAR____TtC15CarPlaySettings13CARThemeModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_10004EFA4(uint64_t a1)
{
  v2 = (*(*a1 + 184))();
}

uint64_t (*sub_10004F028(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10004F688;
}

uint64_t sub_10004F0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000317B8(0, &unk_1000FF9C0);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_10004F6CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000416D4;
  aBlock[3] = &unk_1000DC080;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10004F6F0(&unk_100101D50, &type metadata accessor for DispatchWorkItemFlags);
  sub_100030C14(&unk_1000FF9D0);
  sub_100043C98();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

uint64_t sub_10004F3BC(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = a2();
    __chkstk_darwin(v4);
    withObservationTracking<A>(_:onChange:)();
  }

  return result;
}

uint64_t sub_10004F494()
{
  v1 = v0;
  v2 = (*(*v0 + 136))();
  v3 = [v2 displayName];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v4;
  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6 = (*(*v1 + 184))();
  v7 = [v6 displayName];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  return v13;
}

uint64_t sub_10004F5D8()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_10004F694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10004F6D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004F6F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004F744@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10004F944@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004F9A8(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_10004FB20(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_10004FBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for IconStylePickerButtonStyle();
  v11 = a5 + v10[13];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = (a5 + v10[14]);
  *v12 = a1;
  v12[1] = a2;

  a4(v13);

  *(a5 + v10[16]) = a3;
  v15 = a5 + v10[17];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = a5 + v10[18];
  *v16 = a3;
  *(v16 + 1) = 0;
  return result;
}

uint64_t sub_10004FD1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a1;
  v66 = a3;
  v64 = *(a2 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(a1);
  v63 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B1B8(&qword_1001001C8);
  v5 = *(a2 + 16);
  *&v67 = *(a2 + 32);
  type metadata accessor for _MaskAlignmentEffect();
  type metadata accessor for ModifiedContent();
  v6 = sub_1000506E0();
  WitnessTable = swift_getWitnessTable();
  v83 = v6;
  v84 = WitnessTable;
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  v58 = type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001E8);
  v9 = *(a2 + 40);
  *&v81 = *(a2 + 24);
  v8 = v81;
  *(&v81 + 1) = &type metadata for AnyShapeStyle;
  *&v82 = v9;
  *(&v82 + 1) = &protocol witness table for AnyShapeStyle;
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v79 = swift_getWitnessTable();
  v80 = &protocol witness table for _FlexFrameLayout;
  v61 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v77 = swift_getWitnessTable();
  v78 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier();
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001F0);
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001F8);
  type metadata accessor for ModifiedContent();
  *&v10 = v5;
  *(&v10 + 1) = v8;
  v68 = v10;
  v59 = v8;
  *&v11 = v67;
  *(&v11 + 1) = v9;
  v67 = v11;
  v82 = v11;
  v81 = v10;
  type metadata accessor for IconStylePickerButtonStyle.HeightThresholdModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v50 = type metadata accessor for TupleView();
  v49 = swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  v51 = swift_getWitnessTable();
  *&v81 = v12;
  *(&v81 + 1) = &type metadata for Bool;
  *&v82 = v51;
  *(&v82 + 1) = &protocol witness table for Bool;
  v55 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v46 = &v45 - v15;
  sub_10003B1B8(&qword_100100200);
  v16 = type metadata accessor for ModifiedContent();
  v54 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v47 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v53 = &v45 - v20;
  v56 = *(v8 - 8);
  __chkstk_darwin(v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v60;
  v24 = *(v60 + *(a2 + 56));
  v25 = (v60 + *(a2 + 68));
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v81) = v26;
  *(&v81 + 1) = v27;
  sub_100030C14(&qword_100100208);
  State.wrappedValue.getter();
  v48 = v22;
  v24(v76);
  v69 = v68;
  v70 = v67;
  v71 = v23;
  v72 = v62;
  v73 = v22;
  static HorizontalAlignment.center.getter();
  v28 = v14;
  VStack.init(alignment:spacing:content:)();
  LOBYTE(v81) = *(v23 + *(a2 + 64));
  v29 = v64;
  v30 = v63;
  (*(v64 + 16))(v63, v23, a2);
  v31 = (*(v29 + 80) + 48) & ~*(v29 + 80);
  v32 = swift_allocObject();
  v33 = v67;
  *(v32 + 16) = v68;
  *(v32 + 32) = v33;
  (*(v29 + 32))(v32 + v31, v30, a2);
  v34 = v46;
  v35 = v51;
  View.onChange<A>(of:initial:_:)();

  (*(v58 + 8))(v28, v12);
  v76 = ButtonStyleConfiguration.isPressed.getter() & 1;
  *&v81 = v12;
  *(&v81 + 1) = &type metadata for Bool;
  *&v82 = v35;
  *(&v82 + 1) = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v47;
  v38 = OpaqueTypeMetadata2;
  sub_1000529C8(&v76, OpaqueTypeMetadata2, &type metadata for Bool, OpaqueTypeConformance2, v47);
  (*(v57 + 8))(v34, v38);
  v39 = sub_10003D450(&qword_100100210, &qword_100100200);
  v74 = OpaqueTypeConformance2;
  v75 = v39;
  swift_getWitnessTable();
  v40 = v54;
  v41 = *(v54 + 16);
  v42 = v53;
  v41(v53, v37, v16);
  v43 = *(v40 + 8);
  v43(v37, v16);
  v41(v66, v42, v16);
  v43(v42, v16);
  return (*(v56 + 8))(v48, v59);
}

unint64_t sub_1000506E0()
{
  result = qword_1001001D0;
  if (!qword_1001001D0)
  {
    sub_10003B1B8(&qword_1001001C8);
    sub_10005076C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001001D0);
  }

  return result;
}

unint64_t sub_10005076C()
{
  result = qword_1001001D8;
  if (!qword_1001001D8)
  {
    sub_10003B1B8(&qword_1001001E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001001D8);
  }

  return result;
}

uint64_t sub_100050808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v127 = a6;
  v129 = a3;
  v101 = a2;
  v133 = a1;
  v125 = a8;
  v151 = a4;
  v152 = a5;
  v153 = a6;
  v154 = a7;
  v132 = type metadata accessor for IconStylePickerButtonStyle();
  v123 = *(v132 - 8);
  v124 = *(v123 + 64);
  __chkstk_darwin(v132);
  v122 = &v88 - v11;
  v12 = sub_100030C14(&qword_100100250);
  __chkstk_darwin(v12 - 8);
  v121 = &v88 - v13;
  v89 = sub_100030C14(&qword_1001001E8);
  __chkstk_darwin(v89);
  v99 = &v88 - v14;
  v151 = a5;
  v152 = &type metadata for AnyShapeStyle;
  v153 = a7;
  v154 = &protocol witness table for AnyShapeStyle;
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v150[20] = swift_getWitnessTable();
  v150[21] = &protocol witness table for _FlexFrameLayout;
  v150[18] = swift_getWitnessTable();
  v150[19] = &protocol witness table for _FlexFrameLayout;
  v126 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v94 = v15;
  WitnessTable = swift_getWitnessTable();
  v104 = type metadata accessor for _BackgroundModifier();
  v96 = type metadata accessor for ModifiedContent();
  v109 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v88 - v16;
  v103 = type metadata accessor for ModifiedContent();
  v110 = *(v103 - 8);
  __chkstk_darwin(v103);
  v92 = &v88 - v17;
  v130 = a5;
  v131 = a7;
  v108 = type metadata accessor for _ContentShapeModifier();
  v106 = type metadata accessor for ModifiedContent();
  v113 = *(v106 - 8);
  __chkstk_darwin(v106);
  v93 = &v88 - v18;
  sub_10003B1B8(&qword_1001001F0);
  v112 = type metadata accessor for ModifiedContent();
  v115 = *(v112 - 8);
  __chkstk_darwin(v112);
  v102 = &v88 - v19;
  sub_10003B1B8(&qword_1001001F8);
  v116 = type metadata accessor for ModifiedContent();
  v120 = *(v116 - 8);
  __chkstk_darwin(v116);
  v111 = &v88 - v20;
  v21 = a4;
  v151 = a4;
  v152 = a5;
  v22 = v127;
  v153 = v127;
  v154 = a7;
  v117 = type metadata accessor for IconStylePickerButtonStyle.HeightThresholdModifier();
  v119 = type metadata accessor for ModifiedContent();
  v135 = *(v119 - 8);
  v23 = __chkstk_darwin(v119);
  v114 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v118 = (&v88 - v25);
  sub_10003B1B8(&qword_1001001C8);
  type metadata accessor for _MaskAlignmentEffect();
  type metadata accessor for ModifiedContent();
  v26 = sub_1000506E0();
  v27 = swift_getWitnessTable();
  v150[16] = v26;
  v150[17] = v27;
  swift_getWitnessTable();
  v107 = type metadata accessor for _OverlayModifier();
  v128 = type metadata accessor for ModifiedContent();
  v134 = *(v128 - 8);
  v28 = __chkstk_darwin(v128);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v88 - v31;
  v100 = &v88 - v31;
  v142 = v21;
  v143 = v130;
  v33 = v22;
  v144 = v22;
  v145 = v131;
  v146 = v133;
  v147 = v101;
  static Alignment.center.getter();
  v34 = v21;
  v88 = v21;
  View.overlay<A>(alignment:content:)();
  v35 = swift_getWitnessTable();
  v150[14] = v33;
  v150[15] = v35;
  v36 = v33;
  v37 = v128;
  v105 = swift_getWitnessTable();
  v38 = v134;
  v39 = *(v134 + 16);
  v97 = v134 + 16;
  v98 = v39;
  v91 = v30;
  v39(v32, v30, v37);
  v40 = *(v38 + 8);
  v134 = v38 + 8;
  v107 = v40;
  v40(v30, v37);
  v41 = v99;
  ButtonStyleConfiguration.label.getter();
  sub_100030C14(&qword_100100258);
  TintShapeStyle.init()();
  v42 = (v41 + *(v89 + 36));
  v43 = sub_100030C14(&unk_100100850);
  v44 = v133;
  sub_100051B78(v132, v42 + *(v43 + 28));
  *v42 = swift_getKeyPath();
  v136 = v34;
  v137 = v130;
  v138 = v36;
  v139 = v131;
  v140 = v129;
  v141 = v44;
  static Alignment.center.getter();
  v45 = sub_100053CF8();
  v46 = v90;
  View.background<A>(alignment:content:)();
  sub_10003970C(v41, &qword_1001001E8);
  static Alignment.center.getter();
  v47 = swift_getWitnessTable();
  v150[12] = v45;
  v150[13] = v47;
  v86 = v96;
  v87 = swift_getWitnessTable();
  v48 = v92;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v109 + 8))(v46, v86);
  v150[10] = v87;
  v150[11] = &protocol witness table for _FlexFrameLayout;
  v49 = v103;
  v50 = swift_getWitnessTable();
  v51 = v93;
  View.contentShape<A>(_:eoFill:)();
  (*(v110 + 8))(v48, v49);
  v151 = static Color.primary.getter();
  v52 = swift_getWitnessTable();
  v150[8] = v50;
  v150[9] = v52;
  v53 = v106;
  v54 = swift_getWitnessTable();
  v55 = v102;
  View.tint<A>(_:)();

  (*(v113 + 8))(v51, v53);
  swift_getKeyPath();
  v56 = v121;
  static Material.regular.getter();
  v57 = type metadata accessor for Material();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = sub_10003D450(&qword_100100288, &qword_1001001F0);
  v150[6] = v54;
  v150[7] = v58;
  v59 = v112;
  v60 = swift_getWitnessTable();
  v61 = v111;
  View.environment<A>(_:_:)();

  sub_10003970C(v56, &qword_100100250);
  (*(v115 + 8))(v55, v59);
  v63 = v122;
  v62 = v123;
  v64 = v132;
  (*(v123 + 16))(v122, v133, v132);
  v65 = (*(v62 + 80) + 48) & ~*(v62 + 80);
  v66 = swift_allocObject();
  v67 = v130;
  *(v66 + 2) = v88;
  *(v66 + 3) = v67;
  v68 = v131;
  *(v66 + 4) = v127;
  *(v66 + 5) = v68;
  (*(v62 + 32))(&v66[v65], v63, v64);
  v151 = 0x403C000000000000;
  v152 = sub_10005405C;
  v153 = v66;
  v69 = sub_10003D450(&unk_100100290, &qword_1001001F8);
  v150[4] = v60;
  v150[5] = v69;
  v70 = v116;
  v71 = swift_getWitnessTable();
  v72 = v114;
  View.modifier<A>(_:)();

  (*(v120 + 8))(v61, v70);
  v73 = swift_getWitnessTable();
  v150[2] = v71;
  v150[3] = v73;
  v74 = v119;
  v133 = swift_getWitnessTable();
  v75 = v135;
  v76 = *(v135 + 16);
  v77 = v118;
  v76(v118, v72, v74);
  v78 = *(v75 + 8);
  v135 = v75 + 8;
  v78(v72, v74);
  v79 = v91;
  v80 = v100;
  v81 = v128;
  v98(v91, v100, v128);
  v151 = v79;
  v76(v72, v77, v74);
  v152 = v72;
  v150[0] = v81;
  v150[1] = v74;
  v148 = v105;
  v149 = v133;
  sub_1000526E4(&v151, 2uLL, v150);
  v78(v77, v74);
  v82 = v81;
  v83 = v81;
  v84 = v107;
  v107(v80, v82);
  v78(v72, v74);
  return v84(v79, v83);
}

uint64_t sub_10005168C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v36 = a6;
  v39 = a2;
  v41 = a1;
  v42 = a7;
  v11 = sub_100030C14(&qword_1001001E0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v35 - v12);
  v14 = sub_100030C14(&qword_1001001C8);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v35 = a5;
  v40 = type metadata accessor for _MaskAlignmentEffect();
  v17 = type metadata accessor for ModifiedContent();
  v37 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v38 = &v35 - v21;
  v50 = a3;
  v51 = a4;
  v22 = a4;
  v52 = a5;
  v53 = a6;
  type metadata accessor for IconStylePickerButtonStyle();
  static Color.black.getter();
  v23 = Color.opacity(_:)();

  v24 = *(sub_100030C14(&qword_1001001E0) + 36);
  v25 = enum case for BlendMode.plusDarker(_:);
  v26 = type metadata accessor for BlendMode();
  (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
  *v13 = v23;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_100054138(v13, v16);
  *&v16[*(v14 + 36)] = v27;
  v43 = a3;
  v44 = v22;
  v45 = v35;
  v46 = v36;
  v47 = v41;
  static Alignment.center.getter();
  v28 = sub_1000506E0();
  View.mask<A>(alignment:_:)();
  sub_10003970C(v16, &qword_1001001C8);
  WitnessTable = swift_getWitnessTable();
  v48 = v28;
  v49 = WitnessTable;
  swift_getWitnessTable();
  v31 = v37;
  v30 = v38;
  v32 = *(v37 + 16);
  v32(v38, v20, v17);
  v33 = *(v31 + 8);
  v33(v20, v17);
  v32(v42, v30, v17);
  return (v33)(v30, v17);
}

uint64_t sub_100051A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = v9;
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  v13 = type metadata accessor for IconStylePickerButtonStyle();
  v14 = *(v6 + 16);
  v14(v8, a1 + *(v13 + 60), a2);
  v14(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_100051B78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v31[-v11];
  __chkstk_darwin(v10);
  v14 = &v31[-v13];
  if (sub_10004F9A8(a1))
  {
    sub_10004F744(v14);
    v15 = enum case for ColorScheme.light(_:);
    v16 = *(v6 + 104);
    v16(v12, enum case for ColorScheme.light(_:), v5);
    v17 = static ColorScheme.== infix(_:_:)();
    v18 = *(v6 + 8);
    v18(v12, v5);
    v18(v14, v5);
    if (v17)
    {
      v19 = enum case for ColorScheme.dark(_:);
      v20 = a2;
    }

    else
    {
      v20 = a2;
      v19 = v15;
    }

    return v16(v20, v19, v5);
  }

  else
  {
    v21 = (v2 + *(a1 + 72));
    v22 = *v21;
    v23 = *(v21 + 1);
    v31[16] = v22;
    v32 = v23;
    sub_100030C14(&qword_100100208);
    State.wrappedValue.getter();
    if (v31[15] == 1 && (ButtonStyleConfiguration.isPressed.getter() & 1) != 0)
    {
      sub_10004F744(v9);
      v24 = enum case for ColorScheme.light(_:);
      v25 = *(v6 + 104);
      v25(v12, enum case for ColorScheme.light(_:), v5);
      v26 = static ColorScheme.== infix(_:_:)();
      v27 = *(v6 + 8);
      v27(v12, v5);
      v27(v9, v5);
      if (v26)
      {
        v28 = enum case for ColorScheme.dark(_:);
        v29 = a2;
      }

      else
      {
        v29 = a2;
        v28 = v24;
      }

      return v25(v29, v28, v5);
    }

    else
    {
      return sub_10004F744(a2);
    }
  }
}

uint64_t sub_100051E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, char *a6@<X8>)
{
  v29 = a4;
  v31 = a1;
  v35 = a6;
  v40 = a3;
  v41 = &type metadata for AnyShapeStyle;
  v42 = a5;
  v43 = &protocol witness table for AnyShapeStyle;
  v9 = type metadata accessor for _ShapeView();
  v32 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v30 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v33 = &v28 - v19;
  v40 = a2;
  v41 = a3;
  v42 = v29;
  v43 = a5;
  v20 = type metadata accessor for IconStylePickerButtonStyle();
  v40 = sub_100052278(v20);
  sub_100052484(&v40, 256, a3, &type metadata for AnyShapeStyle);

  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v32 + 8))(v11, v9);
  static Alignment.center.getter();
  v38 = WitnessTable;
  v39 = &protocol witness table for _FlexFrameLayout;
  v27 = swift_getWitnessTable();
  v22 = v30;
  View.frame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v34 + 8))(v14, v12);
  v36 = v27;
  v37 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v23 = *(v16 + 16);
  v24 = v33;
  v23(v33, v22, v15);
  v25 = *(v16 + 8);
  v25(v22, v15);
  v23(v35, v24, v15);
  return (v25)(v24, v15);
}

uint64_t sub_100052278(uint64_t a1)
{
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  if (sub_10004F9A8(a1))
  {
    v10 = [objc_opt_self() _carSystemFocusColor];
    v11 = Color.init(_:)();
LABEL_7:
    v20 = v11;
    return AnyShapeStyle.init<A>(_:)();
  }

  v12 = (v1 + *(a1 + 72));
  v13 = *v12;
  v14 = *(v12 + 1);
  LOBYTE(v20) = v13;
  v21 = v14;
  sub_100030C14(&qword_100100208);
  State.wrappedValue.getter();
  if (v19[15] != 1)
  {
    v11 = static Color.clear.getter();
    goto LABEL_7;
  }

  sub_10004F744(v9);
  (*(v4 + 104))(v7, enum case for ColorScheme.light(_:), v3);
  v15 = static ColorScheme.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v7, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v17 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v20) = v17;
  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_100052484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  (*(v11 + 16))(&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  (*(v6 + 16))(v9, a1, a4);
  return _ShapeView.init(shape:style:fillStyle:)();
}

uint64_t sub_10005263C(uint64_t a1)
{
  v2 = sub_100030C14(&qword_100100250);
  __chkstk_darwin(v2 - 8);
  sub_10003976C(a1, &v5 - v3, &qword_100100250);
  return EnvironmentValues.backgroundMaterial.setter();
}

uint64_t sub_1000526E4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000528B8()
{
  type metadata accessor for IconStylePickerButtonStyle();
  type metadata accessor for IconStylePickerButtonStyle();
  sub_100030C14(&qword_100100208);
  return State.wrappedValue.setter();
}

uint64_t sub_1000529C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v15[2] = a4;
  v15[0] = a5;
  v15[1] = a2;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ValueTransactionModifier();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v15 - v12;
  (*(v7 + 16))(v9, a1, a3);

  _ValueTransactionModifier.init(value:transform:)();
  View.modifier<A>(_:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100052B7C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for ColorScheme.light(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for ColorScheme.light(_:), v2);
  v8 = static ColorScheme.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v9 = enum case for ColorScheme.dark(_:);
  }

  else
  {
    v9 = v6;
  }

  return v7(a1, v9, v2);
}

uint64_t sub_100052CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, double a9@<D0>)
{
  v28 = a3;
  v29 = a1;
  v30 = a8;
  v40 = a4;
  v41 = a5;
  v42 = a6;
  v43 = a7;
  type metadata accessor for IconStylePickerButtonStyle.HeightThresholdModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10003B1B8(&qword_100100220);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v27 - v20;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a9;
  v36 = a2;
  v37 = v28;
  static Alignment.center.getter();
  sub_100030C14(&qword_100100228);
  WitnessTable = swift_getWitnessTable();
  sub_100053AC0();
  View.background<A>(alignment:content:)();
  v23 = sub_10003D450(&qword_100100248, &qword_100100220);
  v38 = WitnessTable;
  v39 = v23;
  swift_getWitnessTable();
  v24 = *(v16 + 16);
  v24(v21, v19, v15);
  v25 = *(v16 + 8);
  v25(v19, v15);
  v24(v30, v21, v15);
  return (v25)(v21, v15);
}

uint64_t sub_100052F7C@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

void sub_100052FCC()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_1000534CC(319, &qword_1001005B0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000440A4();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1000534CC(319, &qword_100100218, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000530DC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v12 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 40) & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v11 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v21 = ((a1 + v6 + 24) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23((v21 + v9 + 16) & ~v9);
  }

  else
  {
    v22 = *v21;
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }
}

void sub_1000532B0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = (((((((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 40) & ~v12) + *(v10 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((((((((v9 & 0xFFFFFFF8) + v12 + 40) & ~v12) + *(v10 + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 24) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v22 = *(v10 + 56);

        v22((v21 + v12 + 16) & ~v12, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v21 = a2 & 0x7FFFFFFF;
        v21[1] = 0;
      }

      else
      {
        *v21 = (a2 - 1);
      }

      return;
    }
  }

  if ((((((((v9 & 0xFFFFFFF8) + v12 + 40) & ~v12) + *(v10 + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if ((((((((v9 & 0xFFFFFFF8) + v12 + 40) & ~v12) + *(v10 + 64)) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

void sub_1000534CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100053520()
{
  sub_10003B1B8(&qword_1001001C8);
  type metadata accessor for _MaskAlignmentEffect();
  type metadata accessor for ModifiedContent();
  sub_1000506E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _OverlayModifier();
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001E8);
  type metadata accessor for _ShapeView();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ContentShapeModifier();
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001F0);
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001001F8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for IconStylePickerButtonStyle.HeightThresholdModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10003B1B8(&qword_100100200);
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_10003D450(&qword_100100210, &qword_100100200);
  return swift_getWitnessTable();
}

uint64_t sub_1000538E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100053924(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100053938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100053980(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100053A0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  v4 = *(v1 + 64);
  v9 = *(v1 + 32);
  v10 = *(v1 + 16);
  v6 = static Color.clear.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  *(v7 + 48) = v3;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  *a1 = v6;
  a1[1] = sub_100052F7C;
  a1[2] = 0;
  a1[3] = sub_100053BB0;
  a1[4] = v7;
}

unint64_t sub_100053AC0()
{
  result = qword_100100230;
  if (!qword_100100230)
  {
    sub_10003B1B8(&qword_100100228);
    sub_10003D450(&qword_100100238, &qword_100100240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100230);
  }

  return result;
}

uint64_t sub_100053B78()
{

  return swift_deallocObject();
}

uint64_t sub_100053C00(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

unint64_t sub_100053CF8()
{
  result = qword_100100260;
  if (!qword_100100260)
  {
    sub_10003B1B8(&qword_1001001E8);
    sub_100053DB0();
    sub_10003D450(&qword_100100280, &unk_100100850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100260);
  }

  return result;
}

unint64_t sub_100053DB0()
{
  result = qword_100100268;
  if (!qword_100100268)
  {
    sub_10003B1B8(&qword_100100258);
    sub_100053E68();
    sub_10003D450(&qword_100100270, &qword_100100278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100268);
  }

  return result;
}

unint64_t sub_100053E68()
{
  result = qword_1001006C0;
  if (!qword_1001006C0)
  {
    type metadata accessor for ButtonStyleConfiguration.Label();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001006C0);
  }

  return result;
}

uint64_t sub_100053EC0()
{
  v6 = *(v0 + 16);
  v1 = type metadata accessor for IconStylePickerButtonStyle();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100030C14(&qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ColorScheme();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  sub_10003E550(*(v3 + *(v1 + 52)), *(v3 + *(v1 + 52) + 8));

  (*(*(v6 - 8) + 8))(v3 + *(v1 + 60));

  return swift_deallocObject();
}

uint64_t sub_10005405C()
{
  type metadata accessor for IconStylePickerButtonStyle();
  type metadata accessor for IconStylePickerButtonStyle();
  sub_100030C14(&qword_100100208);
  return State.wrappedValue.setter();
}

uint64_t sub_100054138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100030C14(&qword_1001001E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000541B8()
{
  type metadata accessor for IconStylePickerButtonStyle.HeightThresholdModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10003B1B8(&qword_100100220);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10003D450(&qword_100100248, &qword_100100220);
  return swift_getWitnessTable();
}

char *sub_1000542DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030C14(&qword_1001002A0);
  UIViewRepresentableContext.environment.getter();
  v7 = sub_100042B64();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = [v7 loadWallpaperFromData:a2];
    if (v8)
    {
      v9 = [v7 resolveWallpaper:v8];

      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = objc_allocWithZone(type metadata accessor for CARResolvedWallpaperView());
        return CARResolvedWallpaperView.init(resolvedWallpaper:)(v9);
      }
    }

    else
    {
    }
  }

  return [objc_allocWithZone(UIView) init];
}

id sub_100054458(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030C14(&qword_1001002A0);
  UIViewRepresentableContext.environment.getter();
  v7 = sub_100042B64();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = [v7 loadWallpaperFromData:a2];
    if (v8)
    {
      v9 = [v7 resolveWallpaper:v8];

      swift_unknownObjectRelease();
      result = v9;
      if (v9)
      {
        return result;
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_100054608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CARResolvedWallpaperView();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    sub_100030C14(&qword_1001002A0);
    UIViewRepresentableContext.environment.getter();
    v12 = sub_100042B64();
    (*(v6 + 8))(v8, v5);
    if (v12)
    {
      v13 = [v12 loadWallpaperFromData:a3];
      if (!v13)
      {
LABEL_6:

        v11 = v12;
        goto LABEL_7;
      }

      v14 = [v12 resolveWallpaper:v13];

      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
        swift_beginAccess();
        v16 = *(v10 + v15);
        *(v10 + v15) = v14;
        v12 = v14;

        sub_100054AB8();
        goto LABEL_6;
      }
    }

LABEL_7:
  }
}

void sub_1000547C4(void *a1)
{
  v3 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_100054AB8();
}

char *sub_10005482C(uint64_t a1)
{
  v2 = sub_100054458(a1, *v1);
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for CARResolvedWallpaperView());
    return CARResolvedWallpaperView.init(resolvedWallpaper:)(v3);
  }

  else
  {
    v6 = objc_allocWithZone(UIView);

    return [v6 init];
  }
}

void sub_10005489C(void *a1, uint64_t a2)
{
  type metadata accessor for CARResolvedWallpaperView();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = *v2;
    v13 = a1;
    v8 = sub_100054458(a2, v7);
    if (v8)
    {
      v9 = v8;
      v10 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
      swift_beginAccess();
      v11 = *(v6 + v10);
      *(v6 + v10) = v9;
      v12 = v9;

      sub_100054AB8();
    }

    else
    {
    }
  }
}

uint64_t sub_1000549C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005582C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100054A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005582C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100054A90()
{
  sub_10005582C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void sub_100054AB8()
{
  v1 = (v0 + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID);
  v3 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID);
  v2 = *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID + 8);
  v4 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
  swift_beginAccess();
  v5 = *(v0 + v4);

  v6 = [objc_msgSend(v5 "wallpaper")];
  swift_unknownObjectRelease();
  v7 = [v6 identifier];
  swift_unknownObjectRelease();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!v2)
  {

    goto LABEL_9;
  }

  if (v3 == v8 && v2 == v10)
  {

    return;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    v13 = [objc_msgSend(*(v0 + v4) "wallpaper")];
    swift_unknownObjectRelease();
    v14 = [v13 identifier];
    swift_unknownObjectRelease();
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *v1 = v15;
    v1[1] = v17;

    sub_100054C84();
  }
}

void sub_100054C84()
{
  v1 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
  swift_beginAccess();
  v2 = [*&v0[v1] view];
  if (v2)
  {
    v3 = v2;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 insertSubview:v3 atIndex:0];
    v4 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperView;
    v5 = *&v0[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperView];
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = *&v0[v4];
    }

    else
    {
      v6 = 0;
    }

    *&v0[v4] = v3;
    v7 = v3;

    v8 = objc_opt_self();
    sub_100030C14(&qword_1000FFC10);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1000A26D0;
    v10 = [v0 leadingAnchor];
    v11 = [v7 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v0 trailingAnchor];
    v14 = [v7 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v0 topAnchor];
    v17 = [v7 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v0 bottomAnchor];
    v20 = [v7 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_1000317B8(0, &qword_100100390);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v8 activateConstraints:isa];
  }
}

id sub_100054F64()
{
  v1 = OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void (*sub_100054FB8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10005501C;
}

void sub_10005501C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100054AB8();
  }
}

char *CARResolvedWallpaperView.init(resolvedWallpaper:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID];
  *v4 = 0;
  v4[1] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperView] = 0;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaper] = a1;
  v5 = a1;
  v6 = [objc_msgSend(v5 "wallpaper")];
  swift_unknownObjectRelease();
  v7 = [v6 identifier];
  swift_unknownObjectRelease();
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *v4 = v8;
  v4[1] = v10;

  v11 = [objc_allocWithZone(CRSUIWallpaperDimmingView) init];
  *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimView] = v11;
  *&v1[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimStyle] = 3;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimView];
  v14 = v12;
  [v14 addSubview:v13];
  sub_100054C84();
  sub_100055280();
  sub_100030C14(&unk_100100330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000A1FF0;
  *(v15 + 32) = sub_1000317B8(0, &qword_1000FFE90);
  sub_100030C14(&qword_100100340);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v14 registerForTraitChanges:isa withAction:"updateDimmingView"];

  swift_unknownObjectRelease();
  return v14;
}

void sub_100055280()
{
  v1 = [v0 traitCollection];
  v2 = [v1 sbh_iconImageStyleConfiguration];

  v3 = [v2 configurationType];
  if (v3 == 1)
  {
    v4 = [v0 traitCollection];
    v5 = [v4 userInterfaceStyle];

    v6 = v5 == 1;
  }

  else
  {
    v6 = 3;
  }

  if (*&v0[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimStyle] != v6)
  {
    *&v0[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimStyle] = v6;
    if (v6 == 3)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = *&v0[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimView];
    [v8 setUseDimStyle:?];

    [v8 setDim:1 animated:v7];
  }
}

void CARResolvedWallpaperView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperID);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_wallpaperView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall CARResolvedWallpaperView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC15CarPlaySettings24CARResolvedWallpaperView_dimView];
  [v0 bounds];
  [v1 setFrame:?];
}

id CARResolvedWallpaperView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

unint64_t sub_10005573C()
{
  result = qword_100100348;
  if (!qword_100100348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100348);
  }

  return result;
}

void type metadata accessor for CRSUIWallpaperHomeScreenDimStyle()
{
  if (!qword_100100378)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100100378);
    }
  }
}

void *sub_100055810@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_10005582C()
{
  result = qword_100100380;
  if (!qword_100100380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100100380);
  }

  return result;
}

id sub_1000558BC()
{
  v0 = objc_allocWithZone(type metadata accessor for CAFUILoadingViewController());

  return [v0 init];
}

uint64_t NSURL.isDevicePickerURL.getter()
{
  v1 = v0;
  v45 = type metadata accessor for URLQueryItem();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100030C14(&qword_1001003A0);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = sub_100030C14(&qword_1001003A8);
  __chkstk_darwin(v8 - 8);
  v10 = v39 - v9;
  v11 = type metadata accessor for URLComponents();
  v43 = *(v11 - 8);
  __chkstk_darwin(v11);
  v42 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100030C14(&qword_1001003B0);
  __chkstk_darwin(v13 - 8);
  v15 = v39 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  v20 = [v1 absoluteString];
  if (!v20)
  {
LABEL_18:
    sub_1000317B8(0, &qword_1000FF690);
    v32 = static OS_os_log.default.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      v36 = v44;
      *(v34 + 4) = v44;
      *v35 = v36;
      v37 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "URL %@ isn't about device picker.", v34, 0xCu);
      sub_10003970C(v35, &unk_100101D40);
    }

    return 0;
  }

  v40 = v7;
  v41 = v11;
  v21 = v20;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(string:)();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v22 = &qword_1001003B0;
    v23 = v15;
LABEL_17:
    sub_10003970C(v23, v22);
    goto LABEL_18;
  }

  (*(v17 + 32))(v19, v15, v16);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  v24 = v43;
  v25 = v41;
  if ((*(v43 + 48))(v10, 1, v41) == 1)
  {
    (*(v17 + 8))(v19, v16);
    v22 = &qword_1001003A8;
LABEL_16:
    v23 = v10;
    goto LABEL_17;
  }

  (*(v24 + 32))(v42, v10, v25);
  result = URLComponents.queryItems.getter();
  v27 = v45;
  if (!result)
  {
LABEL_15:
    (*(v24 + 8))(v42, v25);
    (*(v17 + 8))(v19, v16);
    v10 = v40;
    (*(v2 + 56))(v40, 1, 1, v27);
    v22 = &qword_1001003A0;
    goto LABEL_16;
  }

  v28 = result;
  v39[0] = *(result + 16);
  if (!v39[0])
  {
LABEL_14:

    v25 = v41;
    v24 = v43;
    goto LABEL_15;
  }

  v29 = 0;
  v39[1] = v2 + 16;
  while (v29 < *(v28 + 16))
  {
    (*(v2 + 16))(v4, v28 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v29, v27);
    if (URLQueryItem.name.getter() == 0x6950656369766564 && v30 == 0xEC00000072656B63)
    {

LABEL_24:

      (*(v43 + 8))(v42, v41);
      (*(v17 + 8))(v19, v16);
      v38 = v40;
      (*(v2 + 32))(v40, v4, v27);
      (*(v2 + 56))(v38, 0, 1, v27);
      sub_10003970C(v38, &qword_1001003A0);
      return 1;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      v27 = v45;
      goto LABEL_24;
    }

    ++v29;
    v27 = v45;
    result = (*(v2 + 8))(v4, v45);
    if (v39[0] == v29)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t URL.isDevicePickerURL.getter()
{
  v1 = v0;
  v45 = type metadata accessor for URL();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for URLQueryItem();
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1001003A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_100030C14(&qword_1001003A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for URLComponents();
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1;
  v19 = v18;
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v19 + 48))(v13, 1, v14) == 1)
  {
    sub_10003970C(v13, &qword_1001003A8);
    v20 = v45;
LABEL_14:
    sub_1000317B8(0, &qword_1000FF690);
    v29 = static OS_os_log.default.getter();
    (*(v2 + 16))(v4, v17, v20);
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      sub_10005907C(&qword_1000FF6A0, &type metadata accessor for URL);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v2 + 8))(v4, v20);
      v36 = sub_100037824(v33, v35, &v48);

      *(v31 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v29, v30, "URL %s isn't about device picker.", v31, 0xCu);
      sub_100038D70(v32);
    }

    else
    {

      (*(v2 + 8))(v4, v20);
    }

    return 0;
  }

  v44 = v4;
  (*(v19 + 32))(v16, v13, v14);
  result = URLComponents.queryItems.getter();
  if (!result)
  {
    (*(v19 + 8))(v16, v14);
    v20 = v45;
    goto LABEL_13;
  }

  v22 = result;
  v41 = v16;
  v42 = v14;
  v43 = v10;
  v39 = v17;
  v40 = v2;
  v23 = *(result + 16);
  if (!v23)
  {
LABEL_11:
    (*(v19 + 8))(v41, v42);

    v20 = v45;
    v17 = v39;
    v2 = v40;
    v10 = v43;
LABEL_13:
    (*(v5 + 56))(v10, 1, 1, v47);
    sub_10003970C(v10, &qword_1001003A0);
    v4 = v44;
    goto LABEL_14;
  }

  v24 = 0;
  v25 = 0x6950656369766564;
  v46 = v5 + 16;
  while (v24 < *(v22 + 16))
  {
    (*(v5 + 16))(v7, v22 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, v47);
    if (URLQueryItem.name.getter() == v25 && v26 == 0xEC00000072656B63)
    {

LABEL_20:
      (*(v19 + 8))(v41, v42);

      v37 = v43;
      v38 = v47;
      (*(v5 + 32))(v43, v7, v47);
      (*(v5 + 56))(v37, 0, 1, v38);
      sub_10003970C(v37, &qword_1001003A0);
      return 1;
    }

    v27 = v25;
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
      goto LABEL_20;
    }

    ++v24;
    result = (*(v5 + 8))(v7, v47);
    v25 = v27;
    if (v23 == v24)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

id sub_100056738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSettingsUtilities();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000567AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CARSettingsUtilities();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id SBHIconImageStyleConfiguration.init(homeScreenStyleData:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHomeScreenStyleData:a1];

  return v2;
}

{
  v2 = sub_100058498(a1);

  return v2;
}

uint64_t sub_100056858()
{
  v1 = [v0 styleType];
  if (v1)
  {
    return v1 == 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100056890()
{
  v1 = [v0 styleVariant];
  if (v1 >= 3)
  {
    return 0;
  }

  else
  {
    return 2 - v1;
  }
}

uint64_t sub_1000568FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_100056924, 0, 0);
}

uint64_t sub_100056924()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v8;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = sub_1000317B8(0, &qword_1000FF3E8);
  *v5 = v0;
  v5[1] = sub_100056A50;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000029, 0x80000001000BD420, sub_10005851C, v4, v6);
}

uint64_t sub_100056A50()
{

  return _swift_task_switch(sub_100056B68, 0, 0);
}

void sub_100056B80(uint64_t a1, void *a2)
{
  v4 = sub_100030C14(&qword_100100428);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100059158;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100056D7C;
  aBlock[3] = &unk_1000DC2C0;
  v12 = _Block_copy(aBlock);

  [a2 fetchApplicationIconInformationForBundleIdentifier:v8 vehicleID:v9 showBorder:0 completion:v12];
  _Block_release(v12);
}

void sub_100056D7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100056DE4(double a1, double a2, double a3)
{
  v5 = [v3 CGImage];
  v6 = [objc_allocWithZone(IFImage) initWithCGImage:v5 scale:a3];

  sub_100030C14(&qword_1000FFC10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000A31E0;
  *(v7 + 32) = v6;
  v8 = objc_allocWithZone(ISIcon);
  sub_1000317B8(0, &qword_1001003B8);
  v9 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithImages:isa];

  return v11;
}

uint64_t sub_100056EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100030C14(&qword_1000FF4E0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10003976C(v2, &v14 - v9, &qword_1000FF4E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000570FC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100057160(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10003E550(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_10005731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  sub_100030C14(&qword_1000FF4E0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CARSettingsToolbarButtonStyle();
  v9 = a3 + v8[9];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  result = (*(*(a2 - 8) + 32))(a3 + v8[10], a1, a2);
  *(a3 + v8[11]) = a4;
  return result;
}

uint64_t sub_100057408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v43 = a1;
  v48 = a3;
  v4 = type metadata accessor for Material();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  sub_10003B1B8(&qword_1001003C0);
  type metadata accessor for ModifiedContent();
  sub_10003B1B8(&qword_1001003C8);
  swift_getTupleTypeMetadata2();
  v40 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for ZStack();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = &v31 - v9;
  v39 = *(v6 + 8);
  type metadata accessor for _ContentShapeModifier();
  v10 = type metadata accessor for ModifiedContent();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v37 = &v31 - v11;
  v12 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v55 = v12;
  v56 = v13;
  v33 = v10;
  v34 = swift_getWitnessTable();
  v53 = v10;
  v54 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = __chkstk_darwin(OpaqueTypeMetadata2);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v31 - v18;
  v49 = v7;
  v50 = v6;
  v19 = v44;
  v51 = v44;
  v52 = v43;
  static Alignment.center.getter();
  v20 = v38;
  ZStack.init(alignment:content:)();
  v21 = *(a2 + 40);
  v22 = v37;
  View.contentShape<A>(_:eoFill:)();
  (*(v42 + 8))(v20, v8);
  v23 = v45;
  static Material._experimentalGlass.getter();
  v24 = v19 + v21;
  v25 = v33;
  sub_100058080(v23, v24, v33, v7, v34);
  (*(v46 + 8))(v23, v47);
  (*(v41 + 8))(v22, v25);
  v26 = *(v14 + 16);
  v27 = v32;
  v28 = OpaqueTypeMetadata2;
  v26(v32, v17, OpaqueTypeMetadata2);
  v29 = *(v14 + 8);
  v29(v17, v28);
  v26(v48, v27, v28);
  return (v29)(v27, v28);
}

uint64_t sub_100057954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v43 = a3;
  v41 = sub_100030C14(&qword_1001003C8);
  v4 = __chkstk_darwin(v41);
  v42 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v39 = &v35 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v10 = &v35 - v9;
  sub_10003B1B8(&qword_1001003C0);
  v11 = type metadata accessor for ModifiedContent();
  v44 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v36 = &v35 - v15;
  v16 = type metadata accessor for CARSettingsToolbarButtonStyle();
  v38 = a1;
  v17 = dispatch thunk of InsettableShape.inset(by:)();
  v48[0] = sub_100057E50(v17, v16);
  v18 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  View.foregroundStyle<A>(_:)();

  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v19 = sub_10003D450(&qword_1001003F8, &qword_1001003C0);
  v48[2] = v18;
  v48[3] = v19;
  WitnessTable = swift_getWitnessTable();
  v20 = v44;
  v21 = *(v44 + 16);
  v22 = v36;
  v21(v36, v14, v11);
  v23 = *(v20 + 8);
  v44 = v20 + 8;
  v23(v14, v11);
  v24 = v39;
  ButtonStyleConfiguration.label.getter();
  v25 = sub_100058C34();
  *(v24 + *(sub_100030C14(&qword_100100400) + 36)) = v25;
  v26 = (v24 + *(sub_100030C14(&qword_100100408) + 36));
  v27 = sub_100030C14(&unk_100100850);
  sub_100057EC0(v16, v26 + *(v27 + 28));
  *v26 = swift_getKeyPath();
  v28 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v48[0] = v28;
  v30 = AnyShapeStyle.init<A>(_:)();
  v31 = v41;
  v32 = (v24 + *(v41 + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  v21(v14, v22, v11);
  v48[0] = v14;
  v33 = v42;
  sub_10003976C(v24, v42, &qword_1001003C8);
  v48[1] = v33;
  v47[0] = v11;
  v47[1] = v31;
  v45 = WitnessTable;
  v46 = sub_100058E24();
  sub_1000526E4(v48, 2uLL, v47);
  sub_10003970C(v24, &qword_1001003C8);
  v23(v22, v11);
  sub_10003970C(v33, &qword_1001003C8);
  return (v23)(v14, v11);
}

uint64_t sub_100057E50(uint64_t a1, uint64_t a2)
{
  if (sub_100057160(a2))
  {
    v2 = [objc_opt_self() _carSystemFocusColor];
    Color.init(_:)();
  }

  else
  {
    static Color.clear.getter();
  }

  return AnyShapeStyle.init<A>(_:)();
}

uint64_t sub_100057EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ColorScheme();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  if (sub_100057160(a1))
  {
    sub_100056EFC(v10);
    v11 = enum case for ColorScheme.dark(_:);
    v12 = *(v5 + 104);
    v12(v8, enum case for ColorScheme.dark(_:), v4);
    v13 = static ColorScheme.== infix(_:_:)();
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    if (v13)
    {
      v15 = enum case for ColorScheme.light(_:);
      v16 = a2;
    }

    else
    {
      v16 = a2;
      v15 = v11;
    }

    return v12(v16, v15, v4);
  }

  else
  {

    return sub_100056EFC(a2);
  }
}

uint64_t sub_100058080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[0] = a1;
  v16[1] = a3;
  v7 = *(a4 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ShapeSet();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100030C14(&qword_1000FF7E8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000A1FF0;
  (*(v7 + 16))(v9, a2, a4);
  *(v14 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  View.materialEffect(_:in:)();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_100058260(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100058328(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 certificateSerialNumber];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    sub_10003191C(v7, v9);
    v10 = Data.base64EncodedString(options:)(1uLL);
    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
    sub_100031970(v7, v9);
  }

  else
  {
    countAndFlagsBits = 0;
    v7 = 0;
    v9 = 0xF000000000000000;
    object = 0xE000000000000000;
  }

  sub_100030C14(&qword_100100430);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000A31F0;
  *(v13 + 56) = &type metadata for String;
  v14 = sub_100059218();
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 96) = &type metadata for String;
  *(v13 + 104) = v14;
  *(v13 + 64) = v14;
  *(v13 + 72) = countAndFlagsBits;
  *(v13 + 80) = object;

  v15 = String.init(format:_:)();
  sub_10005926C(v7, v9);
  return v15;
}

id sub_100058498(void *a1)
{
  v3 = [a1 styleType];
  v4 = [a1 styleVariant];
  if (v4 >= 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2 - v4;
  }

  if (v3)
  {
    v6 = v3 == 1;
  }

  else
  {
    v6 = 2;
  }

  return [v1 initWithConfigurationType:v6 variant:v5];
}

void sub_10005859C()
{
  sub_10003D010();
  if (v0 <= 0x3F)
  {
    sub_10003FF4C();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100058644(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v12 = ((v10 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v11 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 > 0xFE)
  {
    v22 = *(*(*(a3 + 16) - 8) + 48);

    return v22((((a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8) + v9 + 9) & ~v9);
  }

  else
  {
    v21 = *(a1 + v6);
    if (v21 >= 2)
    {
      return (v21 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_100058814(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(type metadata accessor for ColorScheme() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((*(v10 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 17) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&a1[v14] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v14] = 0;
      }

      else if (v17)
      {
        a1[v14] = 0;
        if (!a2)
        {
          return;
        }

LABEL_35:
        v21 = v9 + 1;
        if (v11 > 0xFE)
        {
          v22 = *(v10 + 56);

          v22(((&a1[v21 + 7] & 0xFFFFFFFFFFFFFFF8) + v12 + 9) & ~v12, a2);
        }

        else if (a2 > 0xFE)
        {
          if (v21 <= 3)
          {
            v23 = ~(-1 << (8 * v21));
          }

          else
          {
            v23 = -1;
          }

          if (v9 != -1)
          {
            v24 = v23 & (a2 - 255);
            if (v21 <= 3)
            {
              v25 = v9 + 1;
            }

            else
            {
              v25 = 4;
            }

            bzero(a1, v21);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *a1 = v24;
                a1[2] = BYTE2(v24);
              }

              else
              {
                *a1 = v24;
              }
            }

            else if (v25 == 1)
            {
              *a1 = v24;
            }

            else
            {
              *a1 = v24;
            }
          }
        }

        else
        {
          a1[v9] = -a2;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }
  }

  if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&a1[v14] = v19;
    }

    else
    {
      *&a1[v14] = v19;
    }
  }

  else if (v17)
  {
    a1[v14] = v19;
  }
}