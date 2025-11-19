uint64_t sub_100021EF8()
{
  if (qword_100113728 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F760);
  withAnimation<A>(_:_:)();
  if (qword_100113730 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F768);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10002202C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = (a1 + *(a2(0) + 48));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000220AC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AlarmAlertFullScreen(0) + 68));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_100022128()
{
  if (qword_100113738 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F770);
  withAnimation<A>(_:_:)();
  if (qword_100113740 != -1)
  {
    swift_once();
  }

  __chkstk_darwin(qword_10011F778);
  return withAnimation<A>(_:_:)();
}

uint64_t sub_10002225C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = (a1 + *(a2(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000222DC(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for AlarmAlertFullScreen(0) + 72));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

double sub_100022358@<D0>(double *a1@<X8>)
{
  GeometryProxy.size.getter();
  result = v2 + -42.0;
  *a1 = result;
  return result;
}

uint64_t sub_100022390(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for AlarmAlertFullScreen(0) + 76));
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v3[2];
  sub_1000032D4(&qword_100115080, &qword_1000D2288);
  return State.wrappedValue.setter();
}

uint64_t sub_100022410(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_100025B1C((a1 + 8), *(a1 + 32));
  v5 = [*a1 alarmIDString];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *v4;
  a2(v6, v8);
}

uint64_t sub_1000224A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_1000032D4(&qword_100115070, &qword_1000D2278);
  sub_10001DD84(v2, a2 + *(v6 + 44));
  sub_100025564(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmAlertFullScreen);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1000255CC(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AlarmAlertFullScreen);
  result = sub_1000032D4(&qword_100115078, &qword_1000D2280);
  v10 = (a2 + *(result + 36));
  *v10 = sub_100022358;
  v10[1] = 0;
  v10[2] = sub_10002C458;
  v10[3] = v8;
  return result;
}

uint64_t sub_100022624()
{
  v0 = type metadata accessor for EnvironmentDelegate(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1000032D4(&qword_100114130, &qword_1000D1418);
  Published.init(initialValue:)();
  v4 = (v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_countdownValue);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC10ClockAngel19EnvironmentDelegate_apertureNeedsResize) = 0;
  return v3;
}

uint64_t sub_1000226BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000032D4(&qword_1001151F0, &qword_1000D23A0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v32 - v10;
  v12 = sub_1000032D4(&qword_1001151F8, &qword_1000D23A8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v32 - v17;
  sub_10002299C();
  *v11 = static VerticalAlignment.lastTextBaseline.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v19 = sub_1000032D4(&qword_100115200, &qword_1000D23B0);
  sub_100022B98(a1, &v11[*(v19 + 44)]);
  CTFontGetDescentForSystemFontOfSize();
  v21 = v20;
  v22 = &v11[*(sub_1000032D4(&qword_100115208, &qword_1000D23B8) + 36)];
  *v22 = 0;
  *(v22 + 1) = v21;
  static Edge.Set.horizontal.getter();
  memset(v32, 0, sizeof(v32));
  v33 = 1;
  v23 = &v11[*(sub_1000032D4(&qword_100115210, &qword_1000D23C0) + 36)];
  SafeAreaPaddingModifier.init(edges:insets:)();
  LOBYTE(a1) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v24 = &v11[*(v5 + 44)];
  *v24 = a1;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  sub_10002CFC4(v18, v16, &qword_1001151F8, &qword_1000D23A8);
  sub_10002CFC4(v11, v9, &qword_1001151F0, &qword_1000D23A0);
  sub_10002CFC4(v16, a2, &qword_1001151F8, &qword_1000D23A8);
  v29 = sub_1000032D4(&qword_100115218, &qword_1000D23C8);
  v30 = a2 + *(v29 + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_10002CFC4(v9, a2 + *(v29 + 64), &qword_1001151F0, &qword_1000D23A0);
  sub_10002D02C(v11, &qword_1001151F0, &qword_1000D23A0);
  sub_10002D02C(v18, &qword_1001151F8, &qword_1000D23A8);
  sub_10002D02C(v9, &qword_1001151F0, &qword_1000D23A0);
  return sub_10002D02C(v16, &qword_1001151F8, &qword_1000D23A8);
}

uint64_t sub_10002299C()
{
  v1 = v0;
  v2 = static VerticalAlignment.center.getter();
  sub_100023370(v1, v11);
  *&v10[7] = v11[0];
  *&v10[23] = v11[1];
  *&v10[39] = v11[2];
  *&v10[55] = v11[3];
  KeyPath = swift_getKeyPath();
  LOBYTE(v12[0]) = 0;
  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v4 = qword_10011F6F0;
  *&v7[17] = *&v10[16];
  *&v7[33] = *&v10[32];
  *&v7[49] = *&v10[48];
  *&v6 = v2;
  *(&v6 + 1) = 0x4020000000000000;
  v7[0] = 0;
  *&v7[1] = *v10;
  *&v7[64] = *&v10[63];
  *&v7[72] = KeyPath;
  *&v8 = 2;
  BYTE8(v8) = 0;
  *&v9 = swift_getKeyPath();
  *(&v9 + 1) = v4;

  LocalizedStringKey.init(stringLiteral:)();
  sub_1000032D4(&qword_100115268, &qword_1000D2408);
  sub_10002D29C();
  View.accessibilityLabel(_:)();

  v12[4] = *&v7[48];
  v12[5] = *&v7[64];
  v12[6] = v8;
  v12[7] = v9;
  v12[0] = v6;
  v12[1] = *v7;
  v12[2] = *&v7[16];
  v12[3] = *&v7[32];
  return sub_10002D02C(v12, &qword_100115268, &qword_1000D2408);
}

uint64_t sub_100022B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1000032D4(&qword_100115220, &qword_1000D23D0);
  v8 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v10 = &v35 - v9;
  v39 = sub_1000032D4(&qword_100115228, &qword_1000D23D8);
  v37 = *(v39 - 8);
  v11 = *(v37 + 64);
  v12 = __chkstk_darwin(v39);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = sub_1000032D4(&qword_100115230, &qword_1000D23E0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v35 - v21;
  sub_100022F98();
  *v10 = static HorizontalAlignment.trailing.getter();
  *(v10 + 1) = 0xC034000000000000;
  v10[16] = 0;
  v23 = sub_1000032D4(&qword_100115238, &qword_1000D23E8);
  sub_100023660(a1, &v10[*(v23 + 44)]);
  (*(v4 + 104))(v7, enum case for DynamicTypeSize.large(_:), v3);
  sub_10002DAD8(&qword_100115240, &qword_100115220, &qword_1000D23D0);
  View.dynamicTypeSize(_:)();
  (*(v4 + 8))(v7, v3);
  sub_10002D02C(v10, &qword_100115220, &qword_1000D23D0);
  v24 = v20;
  v35 = v20;
  sub_10002CFC4(v22, v20, &qword_100115230, &qword_1000D23E0);
  v25 = v36;
  v26 = v37;
  v27 = *(v37 + 16);
  v28 = v39;
  v27(v36, v15, v39);
  v29 = v24;
  v30 = v40;
  sub_10002CFC4(v29, v40, &qword_100115230, &qword_1000D23E0);
  v31 = sub_1000032D4(&qword_100115248, &qword_1000D23F0);
  v32 = v30 + *(v31 + 48);
  *v32 = 0x4034000000000000;
  *(v32 + 8) = 0;
  v27((v30 + *(v31 + 64)), v25, v28);
  v33 = *(v26 + 8);
  v33(v15, v28);
  sub_10002D02C(v22, &qword_100115230, &qword_1000D23E0);
  v33(v25, v28);
  return sub_10002D02C(v35, &qword_100115230, &qword_1000D23E0);
}

uint64_t sub_100022F98()
{
  v1 = v0;
  v2 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for MediumActionButton(0);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(v3 + 44));
  v11 = v10[3];
  v12 = v10[4];
  sub_100025B1C(v10, v11);
  v13 = (*(v12 + 56))(v11, v12);
  if (qword_100113760 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Material();
  v15 = sub_10002D08C(v14, qword_10011F7B0);
  (*(*(v14 - 8) + 16))(&v9[v6[6]], v15, v14);
  if (qword_100113770 != -1)
  {
    swift_once();
  }

  v28 = xmmword_10011F840;
  v29 = unk_10011F850;
  v30 = xmmword_10011F860;
  v26 = xmmword_10011F820;
  v27 = *algn_10011F830;
  v16 = v6[8];
  v17 = enum case for BlendMode.normal(_:);
  v18 = type metadata accessor for BlendMode();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  sub_100025564(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FullAmbientSnoozeCountdown);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_1000255CC(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for FullAmbientSnoozeCountdown);
  *v9 = 0x6B72616D78;
  *(v9 + 1) = 0xE500000000000000;
  *(v9 + 2) = v13;
  v21 = &v9[v6[7]];
  v22 = v30;
  v21[3] = v29;
  v21[4] = v22;
  v23 = v28;
  v21[1] = v27;
  v21[2] = v23;
  *v21 = v26;
  v9[v6[9]] = 1;
  v24 = &v9[v6[10]];
  *v24 = sub_10002D1F4;
  v24[1] = v20;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100025228(&qword_100115260, type metadata accessor for MediumActionButton);
  View.accessibilityLabel(_:)();

  return sub_100025A9C(v9, type metadata accessor for MediumActionButton);
}

uint64_t sub_100023370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  if (qword_100113700 != -1)
  {
    swift_once();
  }

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v7);
  LocalizedStringKey.init(stringInterpolation:)();
  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  static Color.secondary.getter();
  v31 = Text.foregroundColor(_:)();
  v32 = v13;
  v15 = v14;
  v30 = v16;

  sub_100025B0C(v8, v10, v12 & 1);

  v33 = *(a1 + 16);
  v34 = *(a1 + 24);
  sub_100025FB4();
  StringProtocol.localizedUppercase.getter();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  LOBYTE(v10) = v20;
  v21 = *(a1 + *(type metadata accessor for FullAmbientSnoozeCountdown(0) + 32));
  v22 = Text.foregroundColor(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_100025B0C(v17, v19, v10 & 1);

  *a2 = v31;
  *(a2 + 8) = v15;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v32;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_100025AFC(v31, v15, v30 & 1);

  sub_100025AFC(v22, v24, v26 & 1);

  sub_100025B0C(v22, v24, v26 & 1);

  sub_100025B0C(v31, v15, v30 & 1);
}

uint64_t sub_100023618(uint64_t a1)
{
  v2 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v3 = *sub_100025B1C((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  return sub_100076EA4(*a1, *(a1 + 8));
}

uint64_t sub_100023660@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a1;
  v56 = a2;
  v2 = type metadata accessor for Color.RGBColorSpace();
  v53 = *(v2 - 8);
  v54 = v2;
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v52 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_1000032D4(&qword_100115250, &qword_1000D23F8);
  v5 = *(*(v51 - 8) + 64);
  v6 = __chkstk_darwin(v51);
  v55 = &v48[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v48[-v8];
  v59 = 0x657A6F6F6E53;
  v60 = 0xE600000000000000;
  sub_100025FB4();
  v57 = StringProtocol.localizedUppercase.getter();
  v58 = v10;
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  static Color.secondary.getter();
  v16 = Text.foregroundColor(_:)();
  v18 = v17;
  v20 = v19;

  sub_100025B0C(v11, v13, v15 & 1);

  if (qword_1001136B8 != -1)
  {
    swift_once();
  }

  v21 = Text.font(_:)();
  v23 = v22;
  v49 = v24;
  v26 = v25;
  sub_100025B0C(v16, v18, v20 & 1);

  v27 = type metadata accessor for FullAmbientSnoozeCountdown(0);
  v28 = *(v27 + 24);
  v29 = type metadata accessor for Date();
  v30 = v50;
  (*(*(v29 - 8) + 16))(v9, v50 + v28, v29);
  static Font.Weight.semibold.getter();
  v32 = v31;
  v33 = static Color.white.getter();
  v34 = type metadata accessor for RunningCountdownView(0);
  v9[v34[5]] = 0;
  *&v9[v34[6]] = 0x4067C00000000000;
  *&v9[v34[7]] = v32;
  *&v9[v34[8]] = v33;
  v9[v34[9]] = 1;
  v9[v34[10]] = 1;
  v35 = (v30 + *(v27 + 40));
  v36 = *v35;
  v37 = v35[1];
  v38 = *(v35 + 16);
  type metadata accessor for EnvironmentDelegate(0);
  sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
  v39 = StateObject.wrappedValue.getter();
  v40 = static ObservableObject.environmentStore.getter();
  v41 = &v9[*(sub_1000032D4(&qword_100113FD8, &qword_1000D63D0) + 36)];
  *v41 = v40;
  v41[1] = v39;
  (*(v53 + 104))(v52, enum case for Color.RGBColorSpace.sRGBLinear(_:), v54);
  v42 = Color.init(_:white:opacity:)();
  v43 = &v9[*(v51 + 36)];
  *v43 = v42;
  v43[1] = 0x3FF0000000000000;
  v43[2] = 0;
  v43[3] = 0;
  v44 = v55;
  sub_10002CFC4(v9, v55, &qword_100115250, &qword_1000D23F8);
  v45 = v56;
  *v56 = v21;
  v45[1] = v23;
  LOBYTE(v38) = v49 & 1;
  *(v45 + 16) = v49 & 1;
  v45[3] = v26;
  v46 = sub_1000032D4(&qword_100115258, &qword_1000D2400);
  sub_10002CFC4(v44, v45 + *(v46 + 48), &qword_100115250, &qword_1000D23F8);
  sub_100025AFC(v21, v23, v38);

  sub_10002D02C(v9, &qword_100115250, &qword_1000D23F8);
  sub_10002D02C(v44, &qword_100115250, &qword_1000D23F8);
  sub_100025B0C(v21, v23, v38);
}

uint64_t sub_100023B54@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t a5@<X8>)
{
  *a5 = a1();
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  v10 = a5 + *(sub_1000032D4(a2, a3) + 44);
  return a4(v5);
}

__n128 sub_100023C2C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023C50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100023C98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100023D00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_100023D14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_100023D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100023DB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100023DCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100023E14(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_100023E68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100023EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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

uint64_t sub_100023FC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlarmPresentationState();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_10002409C()
{
  type metadata accessor for AlarmPresentationState();
  if (v0 <= 0x3F)
  {
    sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000289D8(319, &unk_100113C78, &type metadata for Color, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmKitButton.SizeCategory(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AlarmKitButton.SizeCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10002423C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100024254(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100024298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
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

uint64_t sub_100024368(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AlarmPresentationState();
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

void sub_100024440()
{
  type metadata accessor for AlarmPresentationState();
  if (v0 <= 0x3F)
  {
    sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100024508();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100024508()
{
  result = qword_100113D20;
  if (!qword_100113D20)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100113D20);
  }

  return result;
}

uint64_t sub_10002456C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AlarmButton();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100024690(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmButton();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000247BC()
{
  type metadata accessor for AlarmPresentationState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmButton();
    if (v1 <= 0x3F)
    {
      sub_1000289D8(319, &qword_100113C70, &type metadata for AlarmType, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000289D8(319, &unk_100113C78, &type metadata for Color, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100027F54(319, &qword_100113DC0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

__n128 sub_100024900(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100024914(uint64_t *a1, int a2)
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

uint64_t sub_10002495C(uint64_t result, int a2, int a3)
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

uint64_t sub_100024B18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__alarmPresentationState;
  swift_beginAccess();
  v5 = type metadata accessor for AlarmPresentationState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100024C10(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AlarmPresentationState();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *a2;
  return sub_100095C28(v7);
}

uint64_t sub_100024CDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100025228(&qword_100113EB0, type metadata accessor for AlarmPresentationStateViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC10ClockAngel31AlarmPresentationStateViewModel__activeApertureMode);
  return result;
}

uint64_t sub_100024DB4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100024DE8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100024E18@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100024E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_100024F44()
{
  result = qword_100113E40;
  if (!qword_100113E40)
  {
    sub_10001C820(&qword_100113E38, &qword_1000D1150);
    sub_100024FFC();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E40);
  }

  return result;
}

unint64_t sub_100024FFC()
{
  result = qword_100113E48;
  if (!qword_100113E48)
  {
    sub_10001C820(&qword_100113E50, &qword_1000D1158);
    sub_10002DAD8(&qword_100113E58, &qword_100113E60, &unk_1000D1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E48);
  }

  return result;
}

unint64_t sub_1000250B4()
{
  result = qword_100113E80;
  if (!qword_100113E80)
  {
    sub_10001C820(&qword_100113E20, &qword_1000D1108);
    sub_100025140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E80);
  }

  return result;
}

unint64_t sub_100025140()
{
  result = qword_100113E88;
  if (!qword_100113E88)
  {
    sub_10001C820(&qword_100113E90, &qword_1000D1170);
    sub_100025228(&qword_100113E98, type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable);
    sub_10002DAD8(&qword_100113E58, &qword_100113E60, &unk_1000D1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113E88);
  }

  return result;
}

uint64_t sub_100025228(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100025290()
{
  result = qword_100113EA8;
  if (!qword_100113EA8)
  {
    sub_10001C820(&qword_100113E10, &qword_1000D10F8);
    sub_100024F44();
    sub_100025228(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EA8);
  }

  return result;
}

unint64_t sub_100025380()
{
  result = qword_100113ED0;
  if (!qword_100113ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113ED0);
  }

  return result;
}

unint64_t sub_1000253D4()
{
  result = qword_100113EE0;
  if (!qword_100113EE0)
  {
    sub_10001C820(&qword_100113EC8, &qword_1000D11D8);
    sub_100024FFC();
    sub_100025228(&qword_100113EE8, type metadata accessor for TimerRunningCompressedTrailingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EE0);
  }

  return result;
}

unint64_t sub_100025490()
{
  result = qword_100113EF0;
  if (!qword_100113EF0)
  {
    sub_10001C820(&qword_100113ED8, &qword_1000D11E0);
    sub_100025380();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113EF0);
  }

  return result;
}

uint64_t sub_100025524()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002555C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000A1A78();
}

uint64_t sub_100025564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000255CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100025634()
{
  result = qword_100113F38;
  if (!qword_100113F38)
  {
    sub_10001C820(&qword_100113F30, &qword_1000D1220);
    sub_100026514(&qword_100113F40, &qword_100113F28, &qword_1000D1218, sub_1000256EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F38);
  }

  return result;
}

unint64_t sub_1000256EC()
{
  result = qword_100113F48;
  if (!qword_100113F48)
  {
    sub_10001C820(&qword_100113F50, &qword_1000D1228);
    sub_1000257A8();
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F48);
  }

  return result;
}

unint64_t sub_1000257A8()
{
  result = qword_100113F58;
  if (!qword_100113F58)
  {
    sub_10001C820(&qword_100113F60, &qword_1000D1230);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F58);
  }

  return result;
}

unint64_t sub_1000258A4()
{
  result = qword_100113F78;
  if (!qword_100113F78)
  {
    sub_10001C820(&qword_100113F18, &qword_1000D1208);
    sub_100025930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F78);
  }

  return result;
}

unint64_t sub_100025930()
{
  result = qword_100113F80;
  if (!qword_100113F80)
  {
    sub_10001C820(&qword_100113F10, &qword_1000D1200);
    sub_100029AAC(&qword_100113F88, &qword_100113F90, &qword_1000D1238, sub_1000259E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F80);
  }

  return result;
}

unint64_t sub_1000259E0()
{
  result = qword_100113F98;
  if (!qword_100113F98)
  {
    sub_10001C820(&qword_100113FA0, &qword_1000D1240);
    sub_100025228(&qword_100113FA8, type metadata accessor for AlarmKitCountdownView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113F98);
  }

  return result;
}

uint64_t sub_100025A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025AFC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100025B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_100025B1C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100025BC8()
{
  result = qword_100113FF8;
  if (!qword_100113FF8)
  {
    sub_10001C820(&qword_100113FF0, &qword_1000D1298);
    sub_100025C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100113FF8);
  }

  return result;
}

unint64_t sub_100025C54()
{
  result = qword_100114000;
  if (!qword_100114000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114000);
  }

  return result;
}

uint64_t sub_100025D14()
{
  sub_100017D28((v0 + 24));
  sub_100017D28((v0 + 64));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100025DE0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100025E14(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

unint64_t sub_100025E44()
{
  result = qword_100114048;
  if (!qword_100114048)
  {
    sub_10001C820(&qword_100114030, &qword_1000D12C8);
    sub_100025ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114048);
  }

  return result;
}

unint64_t sub_100025ED0()
{
  result = qword_100114050;
  if (!qword_100114050)
  {
    sub_10001C820(&qword_100114040, &qword_1000D1308);
    sub_10002DAD8(&qword_100114058, &qword_100114060, &unk_1000D1310);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114050);
  }

  return result;
}

unint64_t sub_100025FB4()
{
  result = qword_1001197E0;
  if (!qword_1001197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001197E0);
  }

  return result;
}

uint64_t sub_100026008@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.minimumScaleFactor.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000260F4()
{
  v1 = (type metadata accessor for AlarmKitStopSlider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000261E0(double a1)
{
  v3 = type metadata accessor for AlarmKitStopSlider(0);
  v4 = v1 + *(v3 + 28) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)(a1);
}

unint64_t sub_1000262C0()
{
  result = qword_1001140B0;
  if (!qword_1001140B0)
  {
    sub_10001C820(&qword_1001140A0, &qword_1000D13A8);
    sub_10002634C();
    sub_100026408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140B0);
  }

  return result;
}

unint64_t sub_10002634C()
{
  result = qword_1001140B8;
  if (!qword_1001140B8)
  {
    sub_10001C820(&qword_100114098, &qword_1000D13A0);
    sub_100025228(&qword_1001140C0, type metadata accessor for GlassActionSlider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140B8);
  }

  return result;
}

unint64_t sub_100026408()
{
  result = qword_1001140C8;
  if (!qword_1001140C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140C8);
  }

  return result;
}

unint64_t sub_10002645C()
{
  result = qword_1001140E0;
  if (!qword_1001140E0)
  {
    sub_10001C820(&qword_1001140D8, &qword_1000D13F0);
    sub_100026514(&qword_1001140E8, &qword_1001140D0, &qword_1000D13E8, sub_100026590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140E0);
  }

  return result;
}

uint64_t sub_100026514(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100026590()
{
  result = qword_1001140F0;
  if (!qword_1001140F0)
  {
    sub_10001C820(&qword_1001140F8, &qword_1000D13F8);
    sub_100025C54();
    sub_100026648(&qword_100114100, &qword_100114108, &qword_1000D1400, sub_1000266FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001140F0);
  }

  return result;
}

uint64_t sub_100026648(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    a4();
    sub_100025228(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000266FC()
{
  result = qword_100114110;
  if (!qword_100114110)
  {
    sub_10001C820(&qword_100114118, &qword_1000D1408);
    sub_100025228(&qword_100114120, type metadata accessor for LargeActionButton);
    sub_100026408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114110);
  }

  return result;
}

uint64_t sub_100026828()
{
  v1 = (type metadata accessor for AlarmKitButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for AlarmPresentationState();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[8];
  v7 = type metadata accessor for AlarmButton();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[10]);

  sub_100017D28((v0 + v3 + v1[13]));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002698C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_100026A24(char *a1)
{
  v3 = *(type metadata accessor for AlarmAlertCoverSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001B4F8(a1, v4);
}

unint64_t sub_100026A94()
{
  result = qword_100115ED0;
  if (!qword_100115ED0)
  {
    sub_10002BB3C(255, &qword_100115D80, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115ED0);
  }

  return result;
}

unint64_t sub_100026B28()
{
  result = qword_100114248;
  if (!qword_100114248)
  {
    sub_10001C820(&qword_1001141C0, &qword_1000D1490);
    sub_100026BB4();
    sub_100026C9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114248);
  }

  return result;
}

unint64_t sub_100026BB4()
{
  result = qword_100114250;
  if (!qword_100114250)
  {
    sub_10001C820(&qword_100114258, &qword_1000D1510);
    sub_100025228(&qword_100114260, type metadata accessor for AlarmKitStopSlider);
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114250);
  }

  return result;
}

unint64_t sub_100026C9C()
{
  result = qword_100114278;
  if (!qword_100114278)
  {
    sub_10001C820(&qword_100114280, &qword_1000D1520);
    sub_100025228(&qword_100114288, type metadata accessor for AlarmKitStopButton);
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114278);
  }

  return result;
}

uint64_t sub_100026D94()
{
  v1 = *(type metadata accessor for AlarmAlertCoverSheet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001BFBC(v2);
}

unint64_t sub_100026E3C()
{
  result = qword_100114390;
  if (!qword_100114390)
  {
    sub_10001C820(&qword_100114388, &qword_1000D1638);
    sub_100026EF4();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114390);
  }

  return result;
}

unint64_t sub_100026EF4()
{
  result = qword_100114398;
  if (!qword_100114398)
  {
    sub_10001C820(&qword_1001143A0, &qword_1000D1640);
    sub_10002DAD8(&qword_1001143A8, &qword_1001143B0, &qword_1000D1648);
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114398);
  }

  return result;
}

unint64_t sub_100026FD8()
{
  result = qword_1001143C8;
  if (!qword_1001143C8)
  {
    sub_10001C820(&qword_100114360, &qword_1000D15E0);
    sub_100027064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143C8);
  }

  return result;
}

unint64_t sub_100027064()
{
  result = qword_1001143D0;
  if (!qword_1001143D0)
  {
    sub_10001C820(&qword_100114358, &qword_1000D15D8);
    sub_10002711C();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143D0);
  }

  return result;
}

unint64_t sub_10002711C()
{
  result = qword_1001143D8;
  if (!qword_1001143D8)
  {
    sub_10001C820(&qword_100114350, &qword_1000D15D0);
    sub_1000271D4();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143D8);
  }

  return result;
}

unint64_t sub_1000271D4()
{
  result = qword_1001143E0;
  if (!qword_1001143E0)
  {
    sub_10001C820(&qword_100114348, &qword_1000D15C8);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143E0);
  }

  return result;
}

unint64_t sub_1000272BC()
{
  result = qword_1001143F8;
  if (!qword_1001143F8)
  {
    sub_10001C820(&qword_100114328, &qword_1000D15A8);
    sub_100027348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001143F8);
  }

  return result;
}

unint64_t sub_100027348()
{
  result = qword_100114400;
  if (!qword_100114400)
  {
    sub_10001C820(&qword_100114320, &qword_1000D15A0);
    sub_1000273D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114400);
  }

  return result;
}

unint64_t sub_1000273D4()
{
  result = qword_100114408;
  if (!qword_100114408)
  {
    sub_10001C820(&qword_100114318, &qword_1000D1598);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114408);
  }

  return result;
}

uint64_t sub_1000274D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000275AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100027684()
{
  type metadata accessor for OpaqueAlarm();
  if (v0 <= 0x3F)
  {
    sub_100027C70(319, &qword_100114480, &type metadata accessor for ActivityScene, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000289D8(319, &qword_100114488, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100027790(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AlarmPresentationState();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100027934(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for AlarmPresentationState();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100027AE4()
{
  type metadata accessor for AlarmPresentationState();
  if (v0 <= 0x3F)
  {
    sub_10001C78C();
    if (v1 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113A58);
      if (v2 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100027C70(319, &unk_100114528, type metadata accessor for WeatherDataProvider, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100027C70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100027CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueAlarm();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100027DBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OpaqueAlarm();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100027E98()
{
  result = type metadata accessor for OpaqueAlarm();
  if (v1 <= 0x3F)
  {
    result = sub_100027F54(319, &unk_1001145E8);
    if (v2 <= 0x3F)
    {
      result = sub_100027F54(319, &qword_100113DC0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100027F54(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100027FB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100027FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028070(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AlarmPresentationState();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000281B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AlarmPresentationState();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000282E4()
{
  type metadata accessor for TimerAnimationCountdown(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v1 <= 0x3F)
    {
      sub_10001C78C();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SBUISystemApertureLayoutMode(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000283AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for AlarmPresentationState();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 7)
      {
        return v14 - 6;
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

uint64_t sub_1000284D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AlarmPresentationState();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 6;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000285E8()
{
  sub_10001C78C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100028688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1000287CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AlarmPresentationState();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000288FC()
{
  sub_1000289D8(319, &unk_1001147C0, &type metadata for Font, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10001C78C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AlarmPresentationState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000289D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100028A28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100028A70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100028ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100028B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlarmKitCustomViewWrapper.Position(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlarmKitCustomViewWrapper.Position(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100028CD4()
{
  result = qword_100114800;
  if (!qword_100114800)
  {
    sub_10001C820(&qword_100114808, &qword_1000D17E8);
    sub_100026648(&qword_100113E78, &qword_100113E28, &qword_1000D1110, sub_1000250B4);
    sub_100025290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114800);
  }

  return result;
}

unint64_t sub_100028D90()
{
  result = qword_100114810;
  if (!qword_100114810)
  {
    sub_10001C820(&qword_100114818, &qword_1000D17F0);
    sub_1000253D4();
    sub_100025490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114810);
  }

  return result;
}

unint64_t sub_100028E20()
{
  result = qword_100114820;
  if (!qword_100114820)
  {
    sub_10001C820(&qword_100114828, &qword_1000D17F8);
    sub_10002DAD8(&qword_100114830, &qword_100113F08, &qword_1000D11F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114820);
  }

  return result;
}

unint64_t sub_100028ED4()
{
  result = qword_100114838;
  if (!qword_100114838)
  {
    sub_10001C820(&qword_100114840, &qword_1000D1800);
    sub_100025634();
    sub_1000258A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114838);
  }

  return result;
}

uint64_t sub_10002902C()
{
  sub_10001C820(&qword_100114030, &qword_1000D12C8);
  sub_100025E44();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100029094()
{
  result = qword_100114870;
  if (!qword_100114870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114870);
  }

  return result;
}

unint64_t sub_1000291BC()
{
  result = qword_1001148A0;
  if (!qword_1001148A0)
  {
    sub_10001C820(&qword_1001148A8, qword_1000D1828);
    sub_100029248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148A0);
  }

  return result;
}

unint64_t sub_100029248()
{
  result = qword_1001148B0;
  if (!qword_1001148B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148B0);
  }

  return result;
}

unint64_t sub_1000292A0()
{
  result = qword_1001148B8;
  if (!qword_1001148B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001148B8);
  }

  return result;
}

uint64_t sub_100029410(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100029450(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000294B0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000294F8()
{
  v2 = *(*(v0 + 16) + 16);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_10002955C()
{
  v2 = *(*(v0 + 16) + 32);
  sub_1000032D4(&qword_100114140, &qword_1000D7290);
  return State.wrappedValue.setter();
}

uint64_t sub_1000295C4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000295D8()
{
  v1 = type metadata accessor for AlarmAlertPlatter(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for OpaqueAlarm();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for AlarmPresentationState();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
    v8 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
    v9 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  sub_1000295C4(*(v5 + *(v1 + 28)), *(v5 + *(v1 + 28) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1000297DC()
{
  result = qword_100114980;
  if (!qword_100114980)
  {
    sub_10001C820(&qword_100114960, &qword_1000D1D28);
    sub_10002DAD8(&qword_100114988, &qword_100114990, &qword_1000D1D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114980);
  }

  return result;
}

uint64_t sub_100029894()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100029910()
{
  result = qword_1001149D8;
  if (!qword_1001149D8)
  {
    sub_10001C820(&qword_1001149B0, &qword_1000D1D60);
    sub_1000299C8();
    sub_10002DAD8(&qword_100114A08, &qword_100114A10, &qword_1000D6DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001149D8);
  }

  return result;
}

unint64_t sub_1000299C8()
{
  result = qword_1001149E0;
  if (!qword_1001149E0)
  {
    sub_10001C820(&qword_1001149D0, &qword_1000D1D80);
    sub_10002DAD8(&qword_1001149E8, &qword_1001149F0, &qword_1000D1D88);
    sub_10002DAD8(&qword_1001149F8, &qword_100114A00, &unk_1000D1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001149E0);
  }

  return result;
}

uint64_t sub_100029AAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    sub_100025228(&qword_100113F70, type metadata accessor for AlarmKitPlatterControls);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100029B60()
{
  result = qword_100114A40;
  if (!qword_100114A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114A40);
  }

  return result;
}

unint64_t sub_100029BE4()
{
  result = qword_100114A60;
  if (!qword_100114A60)
  {
    sub_10001C820(&qword_100114A58, &qword_1000D1DD8);
    sub_100025228(&qword_100113F68, type metadata accessor for AlarmKitAlertLabelView);
    sub_10002DAD8(&qword_100114A68, &qword_100114A70, &qword_1000D1DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114A60);
  }

  return result;
}

unint64_t sub_100029D04()
{
  result = qword_100114BA8;
  if (!qword_100114BA8)
  {
    sub_10001C820(&qword_100114B48, &qword_1000D1EB0);
    sub_100029DBC();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BA8);
  }

  return result;
}

unint64_t sub_100029DBC()
{
  result = qword_100114BB0;
  if (!qword_100114BB0)
  {
    sub_10001C820(&qword_100114BA0, &qword_1000D1F08);
    sub_10002DAD8(&qword_100114BB8, &qword_100114BC0, &qword_1000D1F10);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BB0);
  }

  return result;
}

unint64_t sub_100029EA0()
{
  result = qword_100114BC8;
  if (!qword_100114BC8)
  {
    sub_10001C820(&qword_100114B68, &qword_1000D1ED0);
    sub_100029F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BC8);
  }

  return result;
}

unint64_t sub_100029F2C()
{
  result = qword_100114BD0;
  if (!qword_100114BD0)
  {
    sub_10001C820(&qword_100114B60, &qword_1000D1EC8);
    sub_100029FB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BD0);
  }

  return result;
}

unint64_t sub_100029FB8()
{
  result = qword_100114BD8;
  if (!qword_100114BD8)
  {
    sub_10001C820(&qword_100114B58, &qword_1000D1EC0);
    sub_10001C820(&qword_100114B48, &qword_1000D1EB0);
    sub_100029D04();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BD8);
  }

  return result;
}

uint64_t sub_10002A080()
{
  v1 = type metadata accessor for AlarmAlertFullScreenAmbient(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for AlarmPresentationState();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_100017D28((v0 + v3 + v1[6]));
  v9 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for Font.Context();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + v1[8]);

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[10] + 8);

  v15 = *(v5 + v1[11] + 8);

  v16 = *(v5 + v1[12] + 8);

  v17 = *(v5 + v1[13] + 8);

  v18 = *(v5 + v1[14] + 8);

  v19 = (v5 + v1[15]);
  v20 = *v19;

  v21 = v19[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_10002A2DC()
{
  result = qword_100114BE0;
  if (!qword_100114BE0)
  {
    sub_10001C820(&qword_100114B88, &qword_1000D1EF0);
    sub_10002A368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BE0);
  }

  return result;
}

unint64_t sub_10002A368()
{
  result = qword_100114BE8;
  if (!qword_100114BE8)
  {
    sub_10001C820(&qword_100114B80, &qword_1000D1EE8);
    sub_10002A420();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BE8);
  }

  return result;
}

unint64_t sub_10002A420()
{
  result = qword_100114BF0;
  if (!qword_100114BF0)
  {
    sub_10001C820(&qword_100114B78, &qword_1000D1EE0);
    sub_10001C820(&qword_100114B68, &qword_1000D1ED0);
    sub_100029EA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BF0);
  }

  return result;
}

unint64_t sub_10002A51C()
{
  result = qword_100114BF8;
  if (!qword_100114BF8)
  {
    sub_10001C820(&qword_100114B38, &qword_1000D1EA0);
    sub_10002A5A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114BF8);
  }

  return result;
}

unint64_t sub_10002A5A8()
{
  result = qword_100114C00;
  if (!qword_100114C00)
  {
    sub_10001C820(&qword_100114B30, &qword_1000D1E98);
    sub_10002A660();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C00);
  }

  return result;
}

unint64_t sub_10002A660()
{
  result = qword_100114C08;
  if (!qword_100114C08)
  {
    sub_10001C820(&qword_100114B28, &qword_1000D1E90);
    sub_10002A6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C08);
  }

  return result;
}

unint64_t sub_10002A6EC()
{
  result = qword_100114C10;
  if (!qword_100114C10)
  {
    sub_10001C820(&qword_100114B20, &qword_1000D1E88);
    sub_10002A778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C10);
  }

  return result;
}

unint64_t sub_10002A778()
{
  result = qword_100114C18;
  if (!qword_100114C18)
  {
    sub_10001C820(&qword_100114B18, &qword_1000D1E80);
    sub_10002A830();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C18);
  }

  return result;
}

unint64_t sub_10002A830()
{
  result = qword_100114C20;
  if (!qword_100114C20)
  {
    sub_10001C820(&qword_100114B10, &qword_1000D1E78);
    sub_10002A8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C20);
  }

  return result;
}

unint64_t sub_10002A8BC()
{
  result = qword_100114C28;
  if (!qword_100114C28)
  {
    sub_10001C820(&qword_100114B08, &qword_1000D1E70);
    sub_10002A974();
    sub_10002DAD8(&qword_100114C48, &qword_100114C50, &qword_1000D54B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C28);
  }

  return result;
}

unint64_t sub_10002A974()
{
  result = qword_100114C30;
  if (!qword_100114C30)
  {
    sub_10001C820(&qword_100114B00, &qword_1000D1E68);
    sub_10002AA2C();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C30);
  }

  return result;
}

unint64_t sub_10002AA2C()
{
  result = qword_100114C38;
  if (!qword_100114C38)
  {
    sub_10001C820(&qword_100114AF8, &qword_1000D1E60);
    sub_10002AAE4();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C38);
  }

  return result;
}

unint64_t sub_10002AAE4()
{
  result = qword_100114C40;
  if (!qword_100114C40)
  {
    sub_10001C820(&qword_100114AF0, &qword_1000D1E58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114C40);
  }

  return result;
}

void sub_10002ABA0()
{
  v1 = type metadata accessor for AlarmPresentationState.Mode();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v24 - v8;
  v10 = *v0;
  v11 = *(sub_1000032D4(&unk_100115E00, &qword_1000D1D10) + 48);
  v12 = type metadata accessor for AlarmKitCompressedIcon.TimerAnimationRepresentable(0);
  v13 = v12[5];
  v14 = type metadata accessor for AlarmPresentationState();
  (*(*(v14 - 8) + 16))(v9, &v0[v13], v14);
  v15 = v12[6];
  v16 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  (*(*(v16 - 8) + 16))(&v9[v11], &v0[v15], v16);
  v17 = type metadata accessor for OpaqueAlarm();
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  v18 = OBJC_IVAR____TtC10ClockAngel23TimerAnimationCountdown_entry;
  swift_beginAccess();
  sub_10002B138(v9, v10 + v18);
  swift_endAccess();
  if (*&v0[v12[8]] == *&v0[v12[7]])
  {
    AlarmPresentationState.mode.getter();
    v19 = (*(v2 + 88))(v5, v1);
    if (v19 == enum case for AlarmPresentationState.Mode.countdown(_:))
    {
      sub_1000BE9EC();
    }

    else if (v19 == enum case for AlarmPresentationState.Mode.paused(_:))
    {
      sub_1000BF040();
    }

    else
    {
      v22 = *(v10 + 40);
      if (v22)
      {
        [v22 invalidate];
        v23 = *(v10 + 40);
        *(v10 + 40) = 0;
      }
    }

    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v20 = *(v10 + 40);
    if (v20)
    {
      [v20 invalidate];
      v21 = *(v10 + 40);
      *(v10 + 40) = 0;
    }
  }
}

uint64_t sub_10002AFD4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002B00C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10002B070()
{
  result = qword_100114D48;
  if (!qword_100114D48)
  {
    sub_10001C820(&qword_100114D40, &qword_1000D2098);
    sub_100025228(&qword_100114D50, type metadata accessor for AlarmAlertFullScreen);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D48);
  }

  return result;
}

uint64_t sub_10002B138(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100114D70, &unk_1000D20E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B1A8()
{
  result = qword_100114D80;
  if (!qword_100114D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114D80);
  }

  return result;
}

uint64_t sub_10002B210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AlarmPresentationState();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10002B320(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AlarmPresentationState();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_10002B428()
{
  sub_10001C78C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for AlarmPresentationState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10002B4C0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002B580(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002B624()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_100027F54(319, &unk_1001145E8);
    if (v1 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113DC0);
      if (v2 <= 0x3F)
      {
        sub_10002B710();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10002B710()
{
  if (!qword_100114E80)
  {
    type metadata accessor for EnvironmentDelegate(255);
    sub_100025228(&qword_100113FE0, type metadata accessor for EnvironmentDelegate);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100114E80);
    }
  }
}

uint64_t sub_10002B7B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_10002B888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000032D4(&qword_1001139E0, qword_1000D7170);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10002B938()
{
  sub_10002BB3C(319, &qword_100115DB0, MTAlarm_ptr);
  if (v0 <= 0x3F)
  {
    sub_100027F54(319, &unk_1001145E8);
    if (v1 <= 0x3F)
    {
      sub_100027F54(319, &qword_100113DC0);
      if (v2 <= 0x3F)
      {
        sub_100027C70(319, &qword_100113A60, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000289D8(319, &qword_100113A70, &type metadata for Bool, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10002BB84(319, &unk_100114F30, &qword_100114D60, &qword_1000D20D0, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100027C70(319, &unk_100114528, type metadata accessor for WeatherDataProvider, &type metadata accessor for State);
              if (v6 <= 0x3F)
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

uint64_t sub_10002BB3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10002BB84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10001C820(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_10002BC74()
{
  result = qword_100114FC0;
  if (!qword_100114FC0)
  {
    sub_10001C820(&qword_100114940, &qword_1000D1D00);
    sub_10002BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FC0);
  }

  return result;
}

unint64_t sub_10002BD00()
{
  result = qword_100114FC8;
  if (!qword_100114FC8)
  {
    sub_10001C820(&qword_100114938, &qword_1000D1CF8);
    sub_10002BD8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FC8);
  }

  return result;
}

unint64_t sub_10002BD8C()
{
  result = qword_100114FD0;
  if (!qword_100114FD0)
  {
    sub_10001C820(&qword_100114930, &qword_1000D1CF0);
    sub_10002DAD8(&qword_100114FD8, &qword_100114948, &qword_1000D1D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FD0);
  }

  return result;
}

unint64_t sub_10002BE48()
{
  result = qword_100114FE0;
  if (!qword_100114FE0)
  {
    sub_10001C820(&qword_100114958, &qword_1000D1D20);
    sub_10002BED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FE0);
  }

  return result;
}

unint64_t sub_10002BED4()
{
  result = qword_100114FE8;
  if (!qword_100114FE8)
  {
    sub_10001C820(&qword_100114950, &qword_1000D1D18);
    sub_10002BF60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FE8);
  }

  return result;
}

unint64_t sub_10002BF60()
{
  result = qword_100114FF0;
  if (!qword_100114FF0)
  {
    sub_10001C820(&qword_100114FF8, &qword_1000D2158);
    sub_100025228(&qword_100114998, type metadata accessor for CountdownPlatter);
    sub_10001C820(&qword_100114960, &qword_1000D1D28);
    sub_1000297DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100114FF0);
  }

  return result;
}

unint64_t sub_10002C064()
{
  result = qword_100115000;
  if (!qword_100115000)
  {
    sub_10001C820(&qword_100115008, &qword_1000D2160);
    sub_10002DAD8(&qword_100115010, &qword_100115018, &qword_1000D2168);
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115000);
  }

  return result;
}

unint64_t sub_10002C11C()
{
  result = qword_100115020;
  if (!qword_100115020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115020);
  }

  return result;
}

unint64_t sub_10002C174()
{
  result = qword_100115028;
  if (!qword_100115028)
  {
    sub_10001C820(&qword_100114D18, &qword_1000D2070);
    sub_10002C200();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115028);
  }

  return result;
}

unint64_t sub_10002C200()
{
  result = qword_100115030;
  if (!qword_100115030)
  {
    sub_10001C820(&qword_100114D08, &qword_1000D2060);
    sub_10002DAD8(&qword_100115038, &qword_100114D00, &qword_1000D2058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115030);
  }

  return result;
}

unint64_t sub_10002C2BC()
{
  result = qword_100115040;
  if (!qword_100115040)
  {
    sub_10001C820(&qword_100115048, &qword_1000D2170);
    sub_10002C348();
    sub_10002C11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115040);
  }

  return result;
}

unint64_t sub_10002C348()
{
  result = qword_100115050;
  if (!qword_100115050)
  {
    sub_10001C820(&qword_100115058, &qword_1000D2178);
    sub_10002DAD8(&qword_100115060, &qword_100115068, qword_1000D2180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115050);
  }

  return result;
}

uint64_t sub_10002C458(uint64_t *a1)
{
  v3 = *(type metadata accessor for AlarmAlertFullScreen(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100022390(a1, v4);
}

uint64_t sub_10002C4C8()
{
  v1 = type metadata accessor for AlarmAlertFullScreen(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;

  sub_100017D28((v0 + v4 + 8));
  sub_100017D28((v0 + v4 + 48));
  v6 = v1[7];
  sub_1000032D4(&qword_100113778, &qword_1000CFD60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Font.Context();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[8]);

  v10 = *(v5 + v1[9] + 8);

  v11 = *(v5 + v1[10] + 8);

  v12 = *(v5 + v1[11] + 8);

  v13 = *(v5 + v1[12] + 8);

  v14 = *(v5 + v1[13] + 8);

  v15 = *(v5 + v1[14] + 8);

  v16 = *(v5 + v1[15] + 8);

  v17 = *(v5 + v1[16] + 8);

  v18 = *(v5 + v1[17] + 8);

  v19 = *(v5 + v1[18] + 8);

  v20 = *(v5 + v1[19] + 16);

  v21 = (v5 + v1[20]);
  v22 = *v21;

  v23 = v21[1];

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10002C7C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10002C8C4()
{
  result = qword_100115158;
  if (!qword_100115158)
  {
    sub_10001C820(&qword_1001150F8, &qword_1000D2300);
    sub_10002C97C();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115158);
  }

  return result;
}

unint64_t sub_10002C97C()
{
  result = qword_100115160;
  if (!qword_100115160)
  {
    sub_10001C820(&qword_100115150, &qword_1000D2358);
    sub_10002DAD8(&qword_100115168, &qword_100115170, &qword_1000D2360);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115160);
  }

  return result;
}

unint64_t sub_10002CA60()
{
  result = qword_100115178;
  if (!qword_100115178)
  {
    sub_10001C820(&qword_100115118, &qword_1000D2320);
    sub_10002CAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115178);
  }

  return result;
}

unint64_t sub_10002CAEC()
{
  result = qword_100115180;
  if (!qword_100115180)
  {
    sub_10001C820(&qword_100115110, &qword_1000D2318);
    sub_10002CB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115180);
  }

  return result;
}

unint64_t sub_10002CB78()
{
  result = qword_100115188;
  if (!qword_100115188)
  {
    sub_10001C820(&qword_100115108, &qword_1000D2310);
    sub_10001C820(&qword_1001150F8, &qword_1000D2300);
    sub_10002C8C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115188);
  }

  return result;
}

unint64_t sub_10002CC6C()
{
  result = qword_100115190;
  if (!qword_100115190)
  {
    sub_10001C820(&qword_100115138, &qword_1000D2340);
    sub_10002CCF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115190);
  }

  return result;
}

unint64_t sub_10002CCF8()
{
  result = qword_100115198;
  if (!qword_100115198)
  {
    sub_10001C820(&qword_100115130, &qword_1000D2338);
    sub_10002CDB0();
    sub_10002DAD8(&qword_100114268, &qword_100114270, &qword_1000D1518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115198);
  }

  return result;
}

unint64_t sub_10002CDB0()
{
  result = qword_1001151A0;
  if (!qword_1001151A0)
  {
    sub_10001C820(&qword_100115128, &qword_1000D2330);
    sub_10001C820(&qword_100115118, &qword_1000D2320);
    sub_10002CA60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001151A0);
  }

  return result;
}

uint64_t sub_10002CF3C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025AFC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002CF80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100025B0C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10002CFC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000032D4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002D02C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000032D4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002D08C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10002D0C4()
{
  v1 = (type metadata accessor for FullAmbientSnoozeCountdown(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 24);

  v7 = v1[8];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  sub_100017D28((v0 + v3 + v1[9]));
  v9 = *(v0 + v3 + v1[10]);

  sub_100017D28((v0 + v3 + v1[11]));
  v10 = v0 + v3 + v1[12];
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  sub_10002B130();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002D220(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_10002D29C()
{
  result = qword_100115270;
  if (!qword_100115270)
  {
    sub_10001C820(&qword_100115268, &qword_1000D2408);
    sub_10002D354();
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115270);
  }

  return result;
}

unint64_t sub_10002D354()
{
  result = qword_100115278;
  if (!qword_100115278)
  {
    sub_10001C820(&qword_100115280, &qword_1000D2410);
    sub_10002DAD8(&qword_100115288, &qword_100115290, &qword_1000D2418);
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115278);
  }

  return result;
}

unint64_t sub_10002D438()
{
  result = qword_1001152A0;
  if (!qword_1001152A0)
  {
    sub_10001C820(&qword_100115298, &qword_1000D2420);
    sub_10002D4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152A0);
  }

  return result;
}

unint64_t sub_10002D4C4()
{
  result = qword_1001152A8;
  if (!qword_1001152A8)
  {
    sub_10001C820(&qword_1001152B0, &qword_1000D2428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152A8);
  }

  return result;
}

uint64_t sub_10002D540(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_10002CF3C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10002D54C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return sub_10002CF80(result, a2, a3, a4);
  }

  return result;
}

unint64_t sub_10002D55C()
{
  result = qword_1001152B8;
  if (!qword_1001152B8)
  {
    sub_10001C820(&qword_100115078, &qword_1000D2280);
    sub_10002DAD8(&qword_1001152C0, &qword_1001152C8, &qword_1000D2430);
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152B8);
  }

  return result;
}

unint64_t sub_10002D688()
{
  result = qword_1001152F0;
  if (!qword_1001152F0)
  {
    sub_10001C820(&qword_1001152F8, &qword_1000D2448);
    sub_10002D740();
    sub_10002DAD8(&qword_1001143E8, &qword_1001143F0, &unk_1000D48B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001152F0);
  }

  return result;
}

unint64_t sub_10002D740()
{
  result = qword_100115300;
  if (!qword_100115300)
  {
    sub_10001C820(&qword_100115308, &qword_1000D2450);
    sub_10002D7F8();
    sub_10002DAD8(&qword_100114068, &qword_100114070, &unk_1000D7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115300);
  }

  return result;
}

unint64_t sub_10002D7F8()
{
  result = qword_100115310;
  if (!qword_100115310)
  {
    sub_10001C820(&qword_100115318, &qword_1000D2458);
    sub_10002D8B0();
    sub_10002DAD8(&qword_100115360, &qword_100115368, &unk_1000D2480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115310);
  }

  return result;
}

unint64_t sub_10002D8B0()
{
  result = qword_100115320;
  if (!qword_100115320)
  {
    sub_10001C820(&qword_100115328, &qword_1000D2460);
    sub_10002D968();
    sub_10002DAD8(&qword_1001143B8, &qword_1001143C0, &unk_1000D1650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115320);
  }

  return result;
}

unint64_t sub_10002D968()
{
  result = qword_100115330;
  if (!qword_100115330)
  {
    sub_10001C820(&qword_100115338, &qword_1000D2468);
    sub_100026514(&qword_100115340, &qword_100115348, &qword_1000D2470, sub_10002DA4C);
    sub_10002DAD8(&qword_100113E68, &qword_100113E70, &unk_1000D54A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115330);
  }

  return result;
}

unint64_t sub_10002DA4C()
{
  result = qword_100115350;
  if (!qword_100115350)
  {
    sub_10001C820(&qword_100115358, &qword_1000D2478);
    sub_10002D438();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115350);
  }

  return result;
}

uint64_t sub_10002DAD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001C820(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10002DC00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10002DC6C(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v7 = qword_10011F528;
  *&v2[v6] = qword_10011F528;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v8 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v9 = v7;
  *&v2[v8] = sub_100064ED0();
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for SecureStopwatchController();
  v10 = objc_msgSendSuper2(&v23, "init");
  v11 = &v10[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  v12 = *&v10[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId + 8];
  *v11 = a1;
  *(v11 + 1) = a2;
  v13 = v10;

  v14 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v15 = [v13 description];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._object = 0x80000001000D80D0;
  v20._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v20);
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v21 = String._bridgeToObjectiveC()();

  [v14 logInfo:{v21, a1, a2, 0, 0xE000000000000000}];

  (*((swift_isaMask & *v13) + 0x188))();
  return v13;
}

uint64_t sub_10002DF40()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002DFD4, v2, v1);
}

uint64_t sub_10002DFD4()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10002ECA8();
  v3 = v0[1];

  return v3();
}

id sub_10002E174(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v5 = qword_10011F528;
  *&v1[v4] = qword_10011F528;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v7 = v5;
  *&v1[v6] = sub_100064ED0();
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SecureStopwatchController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_10002E2E0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager;
  if (qword_100113650 != -1)
  {
    swift_once();
  }

  v8 = qword_10011F528;
  *&v3[v7] = qword_10011F528;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = 0;
  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v10 = v8;
  *&v3[v9] = sub_100064ED0();
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton] = 0;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_leadingPadding] = 0x4031000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_verticalPadding] = 0x4031000000000000;
  *&v3[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_expectedApertureHeight] = 0x4055000000000000;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for SecureStopwatchController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

uint64_t sub_10002E4B0()
{
  v1 = v0;
  v2 = objc_opt_self();
  _StringGuts.grow(_:)(27);
  v3 = [v0 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x80000001000D8250;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  [v2 logInfo:{v8, v4, v6}];

  v9 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v10 && (v11 = v10, v12 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v11, v13 = [v12 state], v12, v13 == 1))
  {
    _StringGuts.grow(_:)(21);
    v14 = [v1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x80000001000D8290;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v2 logInfo:{v19, v15, v17}];

    v20 = *(v1 + v9);
    if (!v20)
    {
      goto LABEL_8;
    }

    v21 = v20;
    dispatch thunk of StopwatchViewModel.resumeLapTimer()();
  }

  else
  {
    _StringGuts.grow(_:)(20);
    v22 = [v1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._object = 0x80000001000D8270;
    v26._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v26);
    v27 = String._bridgeToObjectiveC()();

    [v2 logInfo:{v27, v23, v25}];

    v28 = *(v1 + v9);
    if (!v28)
    {
      goto LABEL_8;
    }

    v21 = v28;
    dispatch thunk of StopwatchViewModel.pauseLapTimer()();
  }

LABEL_8:
  v29 = *((swift_isaMask & *v1) + 0x1A8);

  return v29();
}

void sub_10002E7E0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  if (v3 && (v4 = v3, v5 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v4, v6 = [v5 state], v5, v6 == 2))
  {
    v7 = objc_opt_self();
    _StringGuts.grow(_:)(20);
    v8 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9._object = 0x80000001000D8230;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
    v10 = String._bridgeToObjectiveC()();

    [v7 logInfo:v10];

    v11 = *&v1[v2];
    if (!v11)
    {
      return;
    }

    v17 = v11;
    dispatch thunk of StopwatchViewModel.lapLapTimer()();
  }

  else
  {
    v12 = objc_opt_self();
    _StringGuts.grow(_:)(23);
    v13 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14._countAndFlagsBits = 0xD000000000000015;
    v14._object = 0x80000001000D8210;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();

    [v12 logInfo:v15];

    v16 = *&v1[v2];
    if (!v16)
    {
      return;
    }

    v17 = v16;
    dispatch thunk of StopwatchViewModel.resetLapTimer()();
  }
}

void sub_10002EA74()
{
  (*((swift_isaMask & *v0) + 0x1A8))();

  sub_10002EBE0();
}

void sub_10002EAD4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v2 && (v3 = v2, v4 = dispatch thunk of StopwatchViewModel.getStopwatch()(), v3, v5 = [v4 state], v4, v5 == 1))
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    if (!v6)
    {
      return;
    }
  }

  v7 = v6;
  v8 = String._bridgeToObjectiveC()();
  [v7 setState:?];
}

void sub_10002EBE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  v10 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (!v2)
  {
    v8 = v1;
    goto LABEL_6;
  }

  v3 = v1;
  v4 = v2;
  v5 = dispatch thunk of StopwatchViewModel.getStopwatch()();

  v6 = [v5 state];
  if (v6 != 2)
  {
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v7 = 0;
LABEL_7:
  v9 = v10[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode];
  v10[OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode] = v7;
  sub_10005F9D8(v9);
}

void sub_10002ECA8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId];
  v3 = *&v0[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchId + 8];
  if (v3)
  {
    v4 = *v2;
    v5 = *&v1[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager];

    v6 = [v5 getStopwatches];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 reschedule:{objc_msgSend(objc_opt_self(), "mainThreadScheduler")}];

      swift_unknownObjectRelease();
      v9 = swift_allocObject();
      v9[2] = v1;
      v9[3] = v4;
      v9[4] = v3;
      v24 = sub_100031C4C;
      v25 = v9;
      aBlock = _NSConcreteStackBlock;
      v21 = 1107296256;
      v22 = sub_10002F390;
      v23 = &unk_1001008B8;
      v10 = _Block_copy(&aBlock);
      v11 = v1;

      v12 = [v8 addCompletionBlock:v10];
      _Block_release(v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = objc_opt_self();
    _StringGuts.grow(_:)(27);
    v14 = [v1 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    aBlock = v15;
    v21 = v17;
    v18._object = 0x80000001000D8160;
    v18._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v18);
    v19 = String._bridgeToObjectiveC()();

    [v13 logInfo:v19];
  }
}

void sub_10002EF18(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = objc_opt_self();
    swift_errorRetain();
    _StringGuts.grow(_:)(32);
    v5 = [a3 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._countAndFlagsBits = v6;
    v9._object = v8;
    String.append(_:)(v9);

    v10._object = 0x80000001000D81F0;
    v10._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v10);
    sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
    _print_unlocked<A, B>(_:_:)();
    v11 = String._bridgeToObjectiveC()();

    [v4 logInfo:v11];
  }

  else
  {
    if (a1)
    {
      sub_10002BB3C(0, &qword_100115498, MTStopwatch_ptr);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v12 = objc_opt_self();
    _StringGuts.grow(_:)(32);
    v13 = [a3 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001000D81A0;
    String.append(_:)(v14);
    v16 = String._bridgeToObjectiveC()();

    [v12 logInfo:{v16, v15}];
  }
}

void sub_10002F390(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10002F41C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v60 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v61 = v56 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = v56 - v12;
  __chkstk_darwin(v11);
  v59 = v56 - v14;
  [a1 mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10002BB3C(0, &qword_100115490, MTMutableStopwatch_ptr);
  if (swift_dynamicCast())
  {
    v15 = v63;
  }

  else
  {
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch;
  v17 = *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch];
  *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatch] = v15;
  v18 = v15;

  v19 = *&v2[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_stopwatchManager];
  v20 = objc_allocWithZone(DefaultDateProvider);
  v21 = v19;
  [v20 init];
  objc_allocWithZone(type metadata accessor for StopwatchViewModel());
  v22 = v2;
  v23 = v16;
  v24 = StopwatchViewModel.init(stopwatch:manager:delegate:dateProvider:registerForNotifications:broadcastUpdates:)();
  v25 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v26 = *&v22[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel];
  *&v22[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel] = v24;

  v62 = v2;
  v27 = *&v2[v23];
  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v29 = *&v22[OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel];

  v30 = [v27 state];
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v30;
  static Published.subscript.setter();
  v31 = *&v62[v23];
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = *&v22[v28];

  [v31 offset];
  v34 = v33;
  swift_getKeyPath();
  swift_getKeyPath();
  v64 = v34;
  static Published.subscript.setter();
  v35 = *&v62[v23];
  if (!v35)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v36 = [v35 startDate];
  if (v36)
  {
    v37 = v36;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = v59;
    (*(v5 + 32))(v59, v13, v4);
    v39 = *&v22[v28];
    v57 = v28;
    v58 = v23;
    v40 = *(v5 + 16);
    v41 = v61;
    v40(v61, v38, v4);
    v56[2] = swift_getKeyPath();
    v56[1] = swift_getKeyPath();
    v40(v60, v41, v4);
    v23 = v58;

    static Published.subscript.setter();
    v42 = *(v5 + 8);
    v43 = v41;
    v28 = v57;
    v42(v43, v4);
    v42(v38, v4);
  }

  v44 = *&v62[v23];
  if (v44 && [v44 state] == 2)
  {
    v45 = *&v22[v25];
    if (!v45)
    {
      goto LABEL_16;
    }

    v46 = v45;
    dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
  }

  else
  {
    v47 = *&v22[v25];
    if (!v47)
    {
      goto LABEL_16;
    }

    v46 = v47;
    dispatch thunk of StopwatchViewModel.updateTime()();
  }

LABEL_16:
  v48 = v62;
  (*((swift_isaMask & *v22) + 0x1A0))();
  v49 = *&v48[v23];
  if (!v49)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v50 = *&v22[v28];

  v51 = [v49 laps];
  if (v51)
  {
    v52 = v51;
    sub_10002BB3C(0, &qword_100115488, NSNumber_ptr);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v53 >> 62)
    {
      v54 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!__OFADD__(v54, 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = (v54 + 1);
      v55 = static Published.subscript.setter();
      (*((swift_isaMask & *v22) + 0x1C8))(v55);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
}

void sub_10002F9F8()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  sub_10002BB3C(0, &qword_100114D78, UIColor_ptr);
  static Color.orange.getter();
  Color.opacity(_:)();

  v5 = UIColor.init(_:)();
  [v4 setBaseBackgroundColor:v5];

  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = UIButton.init(configuration:primaryAction:)();
  v7 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  v8 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton);
  *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton) = v6;
  v9 = v6;

  v10 = [v9 layer];
  [v10 setCornerRadius:(*((swift_isaMask & *v1) + 0x178))() * 0.5];

  v11 = *(v1 + v7);
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = [v11 layer];
  [v12 setMasksToBounds:1];

  v13 = *(v1 + v7);
  if (!v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = *(v1 + v7);
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v14 addTarget:v1 action:"playPausedAction" forControlEvents:64];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*(v1 + v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = v15;
  [v15 addSubview:?];

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v19 = objc_allocWithZone(BSUICAPackageView);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithPackageName:v20 inBundle:v18];

  v22 = objc_opt_self();
  if (!v21)
  {
    _StringGuts.grow(_:)(50);
    v44 = [v1 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v45._countAndFlagsBits = 0xD000000000000030;
    v45._object = 0x80000001000D80F0;
    String.append(_:)(v45);
    v43 = String._bridgeToObjectiveC()();

    [v22 logInfo:v43];

    goto LABEL_12;
  }

  v46 = v4;
  _StringGuts.grow(_:)(34);
  v23 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v24._object = 0x80000001000D8130;
  v24._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();

  [v22 logInfo:v25];

  v26 = *(v1 + v7);
  if (!v26)
  {
    goto LABEL_18;
  }

  v27 = v21;
  [v26 addSubview:v27];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setUserInteractionEnabled:0];
  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000D24B0;
  v29 = [v27 widthAnchor];
  v30 = [v29 constraintEqualToConstant:23.0];

  *(v28 + 32) = v30;
  v31 = [v27 heightAnchor];

  v32 = [v31 constraintEqualToConstant:23.0];
  *(v28 + 40) = v32;
  v33 = [v27 centerXAnchor];

  v34 = *(v1 + v7);
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v35 = [v34 centerXAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];

  *(v28 + 48) = v36;
  v37 = [v27 centerYAnchor];

  v38 = *(v1 + v7);
  if (v38)
  {
    v39 = objc_opt_self();
    v40 = [v38 centerYAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];

    *(v28 + 56) = v41;
    sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:isa];

    v43 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage);
    *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_pausePlayPackage) = v21;
LABEL_12:

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1000300E0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10002BB3C(0, &qword_1001197F0, SBUISystemApertureButton_ptr);
  v4 = [objc_opt_self() sbui_systemApertureSymbolButtonConfiguration];
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = UIButton.init(configuration:primaryAction:)();
  v6 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v7 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton);
  *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton) = v5;
  v8 = v5;

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *(v1 + v6);
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v9 layer];
  [v10 setCornerRadius:(*((swift_isaMask & *v1) + 0x178))() * 0.5];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!*(v1 + v6))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  [v11 addSubview:?];

  v13 = objc_allocWithZone(type metadata accessor for SpinnyResetView());
  v14 = sub_10005F050(0.0, 0.0, 50.0, 50.0, 23.0, 25.0);
  v15 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView;
  v16 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView) = v14;

  v17 = *(v1 + v6);
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_10002BB3C(0, &unk_100119080, UIAction_ptr);
  *(swift_allocObject() + 16) = v1;
  v18 = v1;
  v19 = v17;
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v19 addAction:v20 forControlEvents:64];

  v21 = *(v1 + v6);
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(v1 + v15))
  {
    [v21 addSubview:?];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1000303D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_spinnyResetView);
  if (v2)
  {
    if ((*(v2 + OBJC_IVAR____TtC10ClockAngel15SpinnyResetView_mode) & 1) == 0)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      v4 = objc_allocWithZone(UIViewPropertyAnimator);
      v8[4] = sub_100031BEC;
      v8[5] = v3;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10004B270;
      v8[3] = &unk_100100868;
      v5 = _Block_copy(v8);
      v6 = v2;

      v7 = [v4 initWithDuration:v5 dampingRatio:0.5 animations:1.0];
      _Block_release(v5);
      [v7 startAnimation];
    }

    sub_10002E7E0();
  }

  else
  {
    __break(1u);
  }
}

id sub_100030554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureStopwatchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100030770()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();

    v5 = *(v1 + v2);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
    }
  }

  v7 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel);
  swift_getKeyPath();
  swift_getKeyPath();

  v8 = static Published.subscript.setter();
  return (*((swift_isaMask & *v1) + 0x1A0))(v8);
}

void sub_1000308BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v3 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();
  }

  v5 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v6 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel);
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = static Published.subscript.setter();
  v8 = *(v1 + v2);
  if (v8)
  {
    v9 = v8;
    v10 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    [v10 offset];
    v11 = *(v1 + v5);
    v12 = *(v1 + v2);

    if (v12)
    {
      v13 = v12;
      v14 = dispatch thunk of StopwatchViewModel.getStopwatch()();

      [v14 previousLapsTotalInterval];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v7 = static Published.subscript.setter();
  }

  (*((swift_isaMask & *v1) + 0x1A0))(v7);
  v15 = *(v1 + v2);
  if (v15)
  {
    v16 = v15;
    dispatch thunk of StopwatchViewModel.updateTime()();
  }
}

void sub_100030AC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v0;
  v3 = v1;
  v4 = dispatch thunk of StopwatchViewModel.getStopwatch()();

  v5 = [v4 laps];
  if (v5)
  {
    sub_10002BB3C(0, &qword_100115488, NSNumber_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v2;

    if (!__OFADD__(v7, 1))
    {
      v8 = *(v2 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.setter();
LABEL_7:
      (*((swift_isaMask & *v0) + 0x1E8))();
      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100030D0C()
{
  v1 = v0;
  v2 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v34 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel;
  v16 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v16)
  {
    v17 = v16;
    dispatch thunk of StopwatchViewModel.invalidateDisplayLink()();

    v18 = *(v1 + v15);
    if (v18)
    {
      v19 = v18;
      dispatch thunk of StopwatchViewModel.updateWithDisplayLink()();
    }
  }

  v20 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
  v21 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v35 = 2;

  static Published.subscript.setter();
  v22 = *(v1 + v20);
  v23 = *(v1 + v15);
  if (v23)
  {
    v24 = *(v1 + v20);

    v25 = v23;
    v26 = dispatch thunk of StopwatchViewModel.getStopwatch()();

    v27 = [v26 startDate];
    if (v27)
    {
      v28 = v33;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = 0;
    }

    else
    {
      v29 = 1;
      v28 = v33;
    }

    (*(v9 + 56))(v28, v29, 1, v8);
    sub_10003174C(v28, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v14, v7, v8);
      goto LABEL_13;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  Date.init()();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_10002D02C(v7, &qword_100115E40, &unk_1000D1280);
  }

LABEL_13:
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v9 + 16))(v34, v14, v8);
  static Published.subscript.setter();
  v30 = (*(v9 + 8))(v14, v8);
  return (*((swift_isaMask & *v1) + 0x1A0))(v30);
}

void sub_1000311B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*v3 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_viewModel);
  if (v4)
  {
    v6 = v4;
    a3();
  }
}

void sub_100031224()
{
  v1 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton;
  if (!*(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_playPauseButton))
  {
    v2 = (*((swift_isaMask & *v0) + 0x1D0))();
    (*((swift_isaMask & *v0) + 0x1D8))(v2);
  }

  sub_1000032D4(&qword_100115480, &qword_1000D2510);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D24C0;
  v4 = *(v0 + v1);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = [v4 leadingAnchor];
  v6 = [v0 view];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = [v6 leadingAnchor];

  v9 = [v5 constraintEqualToAnchor:v8 constant:17.0];
  *(v3 + 32) = v9;
  v10 = *(v0 + v1);
  if (!v10)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = [v10 trailingAnchor];
  v12 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton;
  v13 = *(v0 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_lapCancelButton);
  if (!v13)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = [v13 leadingAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:-(*((swift_isaMask & *v0) + 0x170))()];

  *(v3 + 40) = v15;
  v16 = *(v0 + v1);
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = [v16 widthAnchor];
  v18 = (*((swift_isaMask & *v0) + 0x178))();
  v19 = [v17 constraintEqualToConstant:?];

  *(v3 + 48) = v19;
  v20 = *(v0 + v1);
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = [v20 heightAnchor];
  v22 = [v21 constraintEqualToConstant:v18];

  *(v3 + 56) = v22;
  v23 = *(v0 + v1);
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = [v23 centerYAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 centerYAnchor];

  v28 = [v24 constraintEqualToAnchor:v27];
  *(v3 + 64) = v28;
  v29 = *(v0 + v12);
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = [v29 widthAnchor];
  v31 = [v30 constraintEqualToConstant:v18];

  *(v3 + 72) = v31;
  v32 = *(v0 + v12);
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = [v32 heightAnchor];
  v34 = [v33 constraintEqualToConstant:v18];

  *(v3 + 80) = v34;
  v35 = *(v0 + v12);
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = [v35 centerYAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v38 centerYAnchor];

  v41 = [v36 constraintEqualToAnchor:v40];
  *(v3 + 88) = v41;
  sub_10002BB3C(0, &qword_1001162A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v39 activateConstraints:isa];
}

uint64_t sub_10003174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000032D4(&qword_100115E40, &unk_1000D1280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000317D4(char a1)
{
  v3 = FormatTime();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = FormatTime();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = FormatTime();
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = FormatTime();
  if (!v15)
  {
    v18 = 0;
    if (a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    v27 = v10;
    v20 = OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel;
    v21 = *(v1 + OBJC_IVAR____TtC10ClockAngel25SecureStopwatchController_observableModel);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    v22 = *(v1 + v20);
    swift_getKeyPath();
    swift_getKeyPath();

    result = static Published.subscript.setter();
    if (v14)
    {
      v23 = *(v1 + v20);
      swift_getKeyPath();
      swift_getKeyPath();

      result = static Published.subscript.setter();
      if (v18)
      {
        v24 = *(v1 + v20);
        swift_getKeyPath();
        swift_getKeyPath();

        result = static Published.subscript.setter();
        if (v6)
        {
          v25 = *(v1 + v20);
          swift_getKeyPath();
          swift_getKeyPath();

          result = static Published.subscript.setter();
          if (v27)
          {
            v26 = *(v1 + v20);

            swift_getKeyPath();
            swift_getKeyPath();
            return static Published.subscript.setter();
          }

          goto LABEL_24;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if ((a1 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
}

uint64_t sub_100031BAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031BF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031C0C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100031C4C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_10002EF18(a1, a2, *(v2 + 16));
}

uint64_t sub_100031C58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100031C98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100031D4C;

  return sub_10002DF20(a1, v4, v5, v6);
}

uint64_t sub_100031D4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t getEnumTagSinglePayload for GlassActionSlider.HapticPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GlassActionSlider.HapticPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100031FB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001154A0, qword_1000D2830);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000320FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000032D4(&qword_1001154A0, qword_1000D2830);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10003224C()
{
  type metadata accessor for LocalizedStringResource();
  if (v0 <= 0x3F)
  {
    sub_1000323F8();
    if (v1 <= 0x3F)
    {
      sub_100038140(319, &qword_100115520, &type metadata for Double, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10003245C(319, &qword_100115528, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10003245C(319, &qword_100115530, type metadata accessor for CGSize, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100038140(319, &unk_100115538, &type metadata for GlassActionSlider.HapticPhase, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000323F8()
{
  if (!qword_100115510)
  {
    sub_10001C820(&qword_100115518, &qword_1000D2868);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100115510);
    }
  }
}

void sub_10003245C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1000324D0()
{
  result = [objc_opt_self() systemFontOfSize:26.0];
  qword_10011F340 = result;
  return result;
}

uint64_t sub_100032510()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v2 = (v0 + *(v1 + 40));
  v3 = *v2;
  v4 = v2[1];
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  result = State.wrappedValue.getter();
  if (v13 < 0.0 || v13 > 1.0)
  {
    State.wrappedValue.getter();
    v7 = v13;
    if (v13 < 0.0)
    {
      v7 = 0.0;
    }

    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    v13 = v7;
    v8 = State.wrappedValue.setter();
    result = sub_100032510(v8);
  }

  v9 = v0 + *(v1 + 36);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(v9 + 8);
    v12 = State.wrappedValue.getter();
    return v10(v12, v13);
  }

  return result;
}

uint64_t sub_100032638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v74 = type metadata accessor for SensoryFeedback();
  v72 = *(v74 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityActionKind();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v68 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalizedStringResource();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v63 - 8);
  v11 = *(v59 + 64);
  __chkstk_darwin(v63);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GlassActionSlider(0);
  v15 = *(v14 - 8);
  v75 = v14 - 8;
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v57 = v16;
  v17 = sub_1000032D4(&qword_1001155B0, &qword_1000D2AE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v53 - v19);
  v60 = sub_1000032D4(&qword_1001155B8, &qword_1000D2AE8);
  v62 = *(v60 - 8);
  v21 = *(v62 + 64);
  __chkstk_darwin(v60);
  v55 = &v53 - v22;
  v64 = sub_1000032D4(&qword_1001155C0, &qword_1000D2AF0);
  v23 = *(*(v64 - 8) + 64);
  v24 = __chkstk_darwin(v64);
  v58 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v53 - v26;
  *v20 = static Alignment.leading.getter();
  v20[1] = v27;
  v28 = sub_1000032D4(&qword_1001155C8, &unk_1000D2AF8);
  sub_100032DC8(v1, v20 + *(v28 + 44));
  v29 = v1;
  v54 = v1;
  v30 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v30;
  sub_100037684(v29, v30, type metadata accessor for GlassActionSlider);
  v31 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v32 = swift_allocObject();
  sub_100037CF8(v30, v32 + v31, type metadata accessor for GlassActionSlider);
  v33 = (v20 + *(v17 + 36));
  *v33 = sub_100034000;
  v33[1] = 0;
  v33[2] = sub_100036FE0;
  v33[3] = v32;
  static AccessibilityChildBehavior.ignore.getter();
  v34 = sub_100037050();
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v13, v63);
  sub_10002D02C(v20, &qword_1001155B0, &qword_1000D2AE0);
  (*(v66 + 16))(v65, &v2[*(v75 + 32)], v67);
  v35 = Text.init(_:)();
  v37 = v36;
  v39 = v38;
  v76 = v17;
  v77 = v34;
  swift_getOpaqueTypeConformance2();
  v40 = v58;
  v41 = v60;
  v42 = v55;
  View.accessibilityLabel(_:)();
  sub_100025B0C(v35, v37, v39 & 1);

  (*(v62 + 8))(v42, v41);
  v43 = v54;
  v44 = v56;
  sub_100037684(v54, v56, type metadata accessor for GlassActionSlider);
  v45 = swift_allocObject();
  sub_100037CF8(v44, v45 + v31, type metadata accessor for GlassActionSlider);
  v46 = v68;
  static AccessibilityActionKind.default.getter();
  v47 = v61;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v69 + 8))(v46, v70);
  sub_10002D02C(v40, &qword_1001155C0, &qword_1000D2AF0);
  v48 = v71;
  static SensoryFeedback.success.getter();
  v49 = v43 + *(v75 + 60);
  v50 = *v49;
  v51 = *(v49 + 8);
  LOBYTE(v76) = v50;
  v77 = v51;
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.getter();
  sub_100037390();
  sub_1000352E8();
  View.sensoryFeedback<A>(_:trigger:condition:)();
  (*(v72 + 8))(v48, v74);
  return sub_10002D02C(v47, &qword_1001155C0, &qword_1000D2AF0);
}

uint64_t sub_100032DC8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for GlassActionSlider(0);
  v68 = *(v3 - 1);
  v4 = *(v68 + 8);
  __chkstk_darwin(v3);
  v74 = v5;
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalCoordinateSpace();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v69 = type metadata accessor for DragGesture();
  v70 = *(v69 - 8);
  v9 = *(v70 + 64);
  __chkstk_darwin(v69);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1000032D4(&qword_100115610, &qword_1000D2B28);
  v71 = *(v72 - 8);
  v12 = *(v71 + 64);
  __chkstk_darwin(v72);
  v14 = v66 - v13;
  v78 = sub_1000032D4(&qword_100115618, &qword_1000D2B30);
  v75 = *(v78 - 8);
  v15 = *(v75 + 64);
  __chkstk_darwin(v78);
  v73 = v66 - v16;
  v17 = sub_1000032D4(&qword_100115620, &qword_1000D2B38);
  v80 = *(v17 - 8);
  v81 = v17;
  v18 = *(v80 + 64);
  v19 = __chkstk_darwin(v17);
  v79 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v77 = v66 - v21;
  v22 = type metadata accessor for GlassActionSlider.Track(0);
  v23 = *(*(v22 - 1) + 64);
  v24 = __chkstk_darwin(v22);
  v76 = v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = v66 - v26;
  v28 = v3[5];
  v29 = type metadata accessor for LocalizedStringResource();
  (*(*(v29 - 8) + 16))(v27, &a1[v28], v29);
  if (qword_1001135F0 != -1)
  {
    swift_once();
  }

  v30 = qword_10011F340;
  v31 = *&a1[v3[7]];
  *&v27[v22[5]] = qword_10011F340;
  *&v27[v22[6]] = v31;
  v32 = &v27[v22[7]];
  v67 = v27;
  v86 = 10.0;
  v33 = v30;
  State.init(wrappedValue:)();
  v34 = *&v83[8];
  *v32 = *v83;
  *(v32 + 1) = v34;
  v35 = *a1;
  v86 = 10.0;
  v36 = v35;
  v66[0] = v35;

  State.init(wrappedValue:)();
  v37 = *v83;
  v66[1] = *&v83[8];
  v38 = &a1[v3[12]];
  v39 = *(v38 + 2);
  *v83 = *v38;
  *&v83[16] = v39;
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  v40 = v86;
  v41 = v87;
  v42 = &a1[v3[10]];
  v43 = *v42;
  v44 = *(v42 + 1);
  *v83 = v43;
  *&v83[8] = v44;
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.getter();
  *v83 = v36;
  *&v83[8] = v37;
  v84 = (v40 - v41) * v86;
  v85 = 0;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_100037684(a1, v6, type metadata accessor for GlassActionSlider);
  v45 = v68[80];
  v68 = a1;
  v46 = v11;
  v47 = v6;
  v48 = (v45 + 16) & ~v45;
  v49 = swift_allocObject();
  sub_100037CF8(v47, v49 + v48, type metadata accessor for GlassActionSlider);
  sub_1000374C0(&qword_100115630, &type metadata accessor for DragGesture);
  sub_1000374C0(&qword_100115638, &type metadata accessor for DragGesture.Value);
  v50 = v69;
  Gesture<>.onChanged(_:)();

  (*(v70 + 8))(v46, v50);
  sub_100037684(v68, v47, type metadata accessor for GlassActionSlider);
  v51 = swift_allocObject();
  sub_100037CF8(v47, v51 + v48, type metadata accessor for GlassActionSlider);
  sub_10002DAD8(&qword_100115640, &qword_100115610, &qword_1000D2B28);
  v52 = v73;
  v53 = v72;
  Gesture.onEnded(_:)();

  (*(v71 + 8))(v14, v53);
  static GestureMask.all.getter();
  sub_1000032D4(&qword_100115648, &qword_1000D2B48);
  sub_1000375A4();
  sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30);
  v55 = v77;
  v54 = v78;
  View.simultaneousGesture<A>(_:including:)();
  (*(v75 + 8))(v52, v54);

  v56 = v67;
  v57 = v76;
  sub_100037684(v67, v76, type metadata accessor for GlassActionSlider.Track);
  v59 = v79;
  v58 = v80;
  v60 = *(v80 + 16);
  v61 = v81;
  v60(v79, v55, v81);
  v62 = v82;
  sub_100037684(v57, v82, type metadata accessor for GlassActionSlider.Track);
  v63 = sub_1000032D4(&qword_100115668, &qword_1000D2B50);
  v60((v62 + *(v63 + 48)), v59, v61);
  v64 = *(v58 + 8);
  v64(v55, v61);
  sub_100037AFC(v56, type metadata accessor for GlassActionSlider.Track);
  v64(v59, v61);
  return sub_100037AFC(v57, type metadata accessor for GlassActionSlider.Track);
}

uint64_t sub_10003370C(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for GlassActionSlider(0) + 52));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.setter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000337E8(uint64_t a1)
{
  DragGesture.Value.translation.getter();
  v3 = v2;
  v4 = type metadata accessor for GlassActionSlider(0);
  v5 = (a1 + *(v4 + 48));
  v9 = *v5;
  v11 = *(v5 + 2);
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  sub_1000338D0(v3, v7, v8);
  v10 = *(a1 + *(v4 + 40));
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.setter();
  return sub_100032510();
}

double sub_1000338D0(double a1, double a2, double a3)
{
  v27 = type metadata accessor for EnvironmentValues();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v26 - v13);
  v15 = type metadata accessor for LayoutDirection();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for GlassActionSlider(0);
  sub_10002CFC4(v3 + *(v20 + 44), v14, &qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  else
  {
    v21 = *v14;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v27);
  }

  v23 = (*(v16 + 88))(v19, v15);
  v24 = 1.0;
  if (v23 != enum case for LayoutDirection.leftToRight(_:))
  {
    v24 = -1.0;
    if (v23 != enum case for LayoutDirection.rightToLeft(_:))
    {
      (*(v16 + 8))(v19, v15, -1.0);
      v24 = 1.0;
    }
  }

  return a1 / (a2 - a3) * v24;
}

uint64_t sub_100033BC4(uint64_t a1, uint64_t a2)
{
  v29 = type metadata accessor for AnimationCompletionCriteria();
  v3 = *(v29 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GlassActionSlider(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7);
  DragGesture.Value.translation.getter();
  v10 = v9;
  v11 = (a2 + *(v7 + 48));
  v13 = v11[1];
  v14 = v11[2];
  v32 = *v11;
  v12 = v32;
  v33 = v13;
  v34 = v14;
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  State.wrappedValue.getter();
  v15 = sub_1000338D0(v10, v30, v31);
  DragGesture.Value.predictedEndTranslation.getter();
  v17 = v16;
  v32 = v12;
  v33 = v13;
  v34 = v14;
  State.wrappedValue.getter();
  v18 = sub_1000338D0(v17, v30, v31);
  if (v15 < 0.5)
  {
    if (v15 >= 0.85)
    {
      v19 = 1;
      v20 = 2;
      goto LABEL_7;
    }

LABEL_6:
    v20 = 0;
    v19 = 0;
    goto LABEL_7;
  }

  v19 = 1;
  v20 = 2;
  if (v15 < 0.85 && v18 < 1.0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v21 = a2 + *(v7 + 52);
  v22 = *v21;
  v23 = *(v21 + 8);
  LOBYTE(v32) = v22;
  v33 = v23;
  LOBYTE(v30) = v20;
  sub_1000032D4(&qword_1001155F8, &qword_1000D2B18);
  State.wrappedValue.setter();
  v24 = static Animation.spring(response:dampingFraction:blendDuration:)();
  __chkstk_darwin(v24);
  *(&v28 - 2) = a2;
  *(&v28 - 8) = v19;
  sub_100037684(a2, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GlassActionSlider);
  v25 = (*(v28 + 80) + 17) & ~*(v28 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v19;
  sub_100037CF8(&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for GlassActionSlider);
  static AnimationCompletionCriteria.logicallyComplete.getter();
  withAnimation<A>(_:completionCriteria:_:completion:)();

  return (*(v3 + 8))(v6, v29);
}

uint64_t sub_100033F64(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for GlassActionSlider(0) + 40));
  v3 = *v1;
  v4 = v1[1];
  sub_1000032D4(&qword_100115628, &qword_1000D2B40);
  State.wrappedValue.setter();
  return sub_100032510();
}

uint64_t sub_100034000@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003402C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for GlassActionSlider(0) + 48));
  v6 = *v4;
  v7 = *(v4 + 2);
  sub_1000032D4(&qword_100115608, &qword_1000D2B20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000340D4@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v67 = a1;
  v68 = a2;
  v66 = a3;
  v5 = sub_1000032D4(&qword_100113E08, &qword_1000D10F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v69 = &v61 - v7;
  v65 = type metadata accessor for Capsule();
  v8 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v62 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Material._GlassVariant();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  v18 = type metadata accessor for Material();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _Glass();
  v63 = *(v23 - 8);
  v64 = v23;
  v24 = *(v63 + 64);
  __chkstk_darwin(v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v61 = COERCE_DOUBLE(static Color.clear.getter());
  v77 = *&v61;
  LOWORD(v78) = 256;
  static Material._GlassVariant.clear.getter();
  Material._GlassVariant.subvariant(_:)();
  v27 = *(v11 + 8);
  v27(v15, v10);
  static Material._glass(_:)();
  v27(v17, v10);
  static _Glass.explicit(_:)();
  (*(v19 + 8))(v22, v18);
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  v30 = v62;
  (*(*(v29 - 8) + 104))(v62, v28, v29);
  sub_1000032D4(&qword_100115710, &qword_1000D6A90);
  sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90);
  sub_1000374C0(&qword_100115720, &type metadata accessor for Capsule);
  v31 = v66;
  View._glassEffect<A>(_:in:)();
  sub_100037AFC(v30, &type metadata accessor for Capsule);
  (*(v63 + 8))(v26, v64);

  v32 = static Alignment.center.getter();
  v34 = v33;
  v77 = a4;
  v35 = v67;
  v36 = v68;
  v78 = v68;

  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v37 = type metadata accessor for Font.Design();
  v38 = v69;
  (*(*(v37 - 8) + 56))(v69, 1, 1, v37);
  v39 = static Font.system(size:weight:design:)();
  sub_10002D02C(v38, &qword_100113E08, &qword_1000D10F0);
  KeyPath = swift_getKeyPath();
  v41 = static Color.white.getter();
  LOBYTE(v30) = static Edge.Set.all.getter();
  LOBYTE(v77) = 1;
  *&v73 = v35;
  *(&v73 + 1) = KeyPath;
  *&v74 = v39;
  *(&v74 + 1) = v41;
  LOBYTE(v75[0]) = v30;
  *(v75 + 1) = *v72;
  DWORD1(v75[0]) = *&v72[3];
  *(v75 + 8) = 0u;
  *(&v75[1] + 8) = 0u;
  BYTE8(v75[2]) = 1;
  *(&v75[2] + 9) = v70;
  HIDWORD(v75[2]) = *(&v70 + 3);
  *&v76 = v32;
  *(&v76 + 1) = v34;
  v42 = (v31 + *(sub_1000032D4(&qword_100115728, &qword_1000D2C68) + 36));
  v43 = v75[1];
  v42[2] = v75[0];
  v42[3] = v43;
  v44 = v76;
  v42[4] = v75[2];
  v42[5] = v44;
  v45 = v74;
  *v42 = v73;
  v42[1] = v45;
  v77 = v35;
  v78 = KeyPath;
  v79 = v39;
  v80 = v41;
  v81 = v30;
  *&v82[3] = *&v72[3];
  *v82 = *v72;
  v84 = 0u;
  v83 = 0u;
  v85 = 1;
  *&v86[3] = *(&v70 + 3);
  *v86 = v70;
  v87 = v32;
  v88 = v34;
  sub_10002CFC4(&v73, v71, &qword_100115730, &qword_1000D2C70);
  sub_10002D02C(&v77, &qword_100115730, &qword_1000D2C70);
  v46 = swift_allocObject();
  *(v46 + 16) = v35;
  *(v46 + 24) = a4;
  *(v46 + 32) = v36;
  v47 = (v31 + *(sub_1000032D4(&qword_100115738, &qword_1000D2C78) + 36));
  *v47 = sub_100038C04;
  v47[1] = 0;
  v47[2] = sub_100037BA4;
  v47[3] = v46;

  LOBYTE(v46) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v31 + *(sub_1000032D4(&qword_100115740, &qword_1000D2C80) + 36);
  *v56 = v46;
  *(v56 + 8) = v49;
  *(v56 + 16) = v51;
  *(v56 + 24) = v53;
  *(v56 + 32) = v55;
  *(v56 + 40) = 0;
  *(v31 + *(sub_1000032D4(&qword_100115748, &qword_1000D2C88) + 36)) = 0;
  v70 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v57 = v71[0];
  v58 = v71[1];
  result = sub_1000032D4(&qword_100115750, &qword_1000D2C90);
  v60 = v31 + *(result + 36);
  *v60 = 1;
  *(v60 + 8) = v57;
  *(v60 + 16) = v58;
  return result;
}

uint64_t sub_100034850@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10003488C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v64 = a1;
  v56 = type metadata accessor for LocalCoordinateSpace();
  v9 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v10 = type metadata accessor for DragGesture();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v13 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000032D4(&qword_100115610, &qword_1000D2B28);
  v59 = *(v14 - 8);
  v60 = v14;
  v15 = *(v59 + 64);
  __chkstk_darwin(v14);
  v17 = v55 - v16;
  v66 = sub_1000032D4(&qword_100115618, &qword_1000D2B30);
  v61 = *(v66 - 8);
  v18 = *(v61 + 64);
  __chkstk_darwin(v66);
  v20 = v55 - v19;
  *&v67 = COERCE_DOUBLE(sub_1000032D4(&qword_1001158E8, &qword_1000D2E98));
  v21 = *(*(v67 - 8) + 64);
  __chkstk_darwin(v67);
  v23 = v55 - v22;
  v24 = sub_1000032D4(&qword_1001158F0, &qword_1000D2EA0);
  v63 = *(v24 - 8);
  v25 = *(v63 + 64);
  __chkstk_darwin(v24);
  v62 = v55 - v26;
  v65 = sub_1000032D4(&qword_1001158F8, &qword_1000D2EA8);
  v27 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v29 = v55 - v28;
  if (a2)
  {
    v69 = a5;
    v70 = a3;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    v55[1] = a4;
    State.wrappedValue.getter();
    v30 = v68;
    static UnitPoint.center.getter();
    v32 = v31;
    v34 = v33;
    v55[0] = sub_1000032D4(&qword_100115900, &qword_1000D2EB0);
    (*(*(v55[0] - 8) + 16))(v23, v64, v55[0]);
    v35 = &v23[*(sub_1000032D4(&qword_100115920, &qword_1000D2EB8) + 36)];
    *v35 = v30;
    *(v35 + 1) = v30;
    *(v35 + 2) = v32;
    *(v35 + 3) = v34;
    v36 = static Animation.spring(response:dampingFraction:blendDuration:)();
    v64 = v24;
    v37 = v36;
    v69 = a5;
    v70 = a3;
    State.wrappedValue.getter();
    v38 = v68;
    v39 = &v23[*(v67 + 36)];
    *v39 = v37;
    *(v39 + 1) = v38;
    static CoordinateSpaceProtocol<>.local.getter();
    DragGesture.init<A>(minimumDistance:coordinateSpace:)();
    v40 = swift_allocObject();
    *(v40 + 16) = 1;
    *(v40 + 24) = a5;
    *(v40 + 32) = a3;
    sub_1000374C0(&qword_100115630, &type metadata accessor for DragGesture);
    sub_1000374C0(&qword_100115638, &type metadata accessor for DragGesture.Value);

    v41 = v58;
    Gesture<>.onChanged(_:)();

    (*(v57 + 8))(v13, v41);
    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = a5;
    *(v42 + 32) = a3;
    sub_10002DAD8(&qword_100115640, &qword_100115610, &qword_1000D2B28);

    v43 = v60;
    Gesture.onEnded(_:)();

    (*(v59 + 8))(v17, v43);
    static GestureMask.all.getter();
    v44 = sub_100038878();
    v45 = sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30);
    v46 = v62;
    v47 = v66;
    v48 = *&v67;
    View.gesture<A>(_:including:)();
    (*(v61 + 8))(v20, v47);
    sub_10002D02C(v23, &qword_1001158E8, &qword_1000D2E98);
    v49 = v63;
    v50 = v64;
    (*(v63 + 16))(v29, v46, v64);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0);
    v69 = v48;
    v70 = v47;
    v71 = v44;
    v72 = v45;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v49 + 8))(v46, v50);
  }

  else
  {
    v52 = sub_1000032D4(&qword_100115900, &qword_1000D2EB0);
    (*(*(v52 - 8) + 16))(v29, v64, v52);
    swift_storeEnumTagMultiPayload();
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0);
    v53 = sub_100038878();
    v54 = sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30);
    v69 = *&v67;
    v70 = v66;
    v71 = v53;
    v72 = v54;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100035144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100003F94(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_100035188()
{
  result = qword_100115588;
  if (!qword_100115588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115588);
  }

  return result;
}

unint64_t sub_1000351E0()
{
  result = qword_100115590;
  if (!qword_100115590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115590);
  }

  return result;
}

unint64_t sub_100035238()
{
  result = qword_100115598;
  if (!qword_100115598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115598);
  }

  return result;
}

unint64_t sub_100035290()
{
  result = qword_1001155A0;
  if (!qword_1001155A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155A0);
  }

  return result;
}

unint64_t sub_1000352E8()
{
  result = qword_1001155A8;
  if (!qword_1001155A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155A8);
  }

  return result;
}

uint64_t sub_100035358@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = type metadata accessor for GlassActionSlider.Track(0);
  v45[0] = *(v1 - 8);
  v2 = *(v45[0] + 64);
  __chkstk_darwin(v1 - 8);
  v45[1] = v3;
  v46 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000032D4(&qword_100115758, &qword_1000D2C98);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v45 - v6;
  v8 = sub_1000032D4(&qword_100115760, &qword_1000D2CA0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = v45 - v11;
  v13 = sub_1000032D4(&qword_100115768, &qword_1000D2CA8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v45 - v15;
  v17 = sub_1000032D4(&qword_100115770, &qword_1000D2CB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v45 - v19;
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(v12, v21, v22);
  static Color.white.getter();
  v23 = Color.opacity(_:)();

  *&v12[*(v9 + 60)] = v23;
  *&v12[*(v9 + 64)] = 256;
  sub_1000032D4(&qword_100115778, &qword_1000D2CB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D2810;
  v25 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v25;
  v26 = static Axis.Set.vertical.getter();
  *(inited + 33) = v26;
  v27 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v25)
  {
    v27 = Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v26)
  {
    v27 = Axis.Set.init(rawValue:)();
  }

  *v7 = v27;
  v28 = sub_1000032D4(&qword_100115780, &qword_1000D2CC0);
  v29 = v47;
  sub_100035840(v47, &v7[*(v28 + 44)]);
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = &v16[*(v13 + 36)];
  sub_10002C7C4(v7, v33, &qword_100115758, &qword_1000D2C98);
  v34 = (v33 + *(sub_1000032D4(&qword_100115788, &qword_1000D2CC8) + 36));
  *v34 = v30;
  v34[1] = v32;
  sub_10002C7C4(v12, v16, &qword_100115760, &qword_1000D2CA0);
  v35 = *(v17 + 36);
  v36 = enum case for BlendMode.plusLighter(_:);
  v37 = type metadata accessor for BlendMode();
  (*(*(v37 - 8) + 104))(&v20[v35], v36, v37);
  sub_10002C7C4(v16, v20, &qword_100115768, &qword_1000D2CA8);
  v38 = v29;
  v39 = v46;
  sub_100037684(v38, v46, type metadata accessor for GlassActionSlider.Track);
  v40 = (*(v45[0] + 80) + 16) & ~*(v45[0] + 80);
  v41 = swift_allocObject();
  sub_100037CF8(v39, v41 + v40, type metadata accessor for GlassActionSlider.Track);
  v42 = v48;
  sub_10002C7C4(v20, v48, &qword_100115770, &qword_1000D2CB0);
  result = sub_1000032D4(&qword_100115790, &qword_1000D2CD0);
  v44 = (v42 + *(result + 36));
  *v44 = sub_100038C04;
  v44[1] = 0;
  v44[2] = sub_100037D60;
  v44[3] = v41;
  return result;
}

uint64_t sub_100035840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v155 = sub_1000032D4(&qword_100115798, &qword_1000D2CD8);
  v3 = *(v155 - 1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v155);
  v148 = (&v148 - v5);
  v6 = sub_1000032D4(&qword_1001157A0, &qword_1000D2CE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v159 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v158 = &v148 - v11;
  v12 = __chkstk_darwin(v10);
  v162 = &v148 - v13;
  __chkstk_darwin(v12);
  v164 = &v148 - v14;
  v15 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v148 - v18;
  v20 = sub_1000032D4(&qword_1001157B0, &qword_1000D2CF0);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v151 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v150 = &v148 - v25;
  v26 = __chkstk_darwin(v24);
  v157 = &v148 - v27;
  v28 = __chkstk_darwin(v26);
  v156 = &v148 - v29;
  v30 = __chkstk_darwin(v28);
  v154 = &v148 - v31;
  v32 = __chkstk_darwin(v30);
  v163 = &v148 - v33;
  v34 = __chkstk_darwin(v32);
  v161 = &v148 - v35;
  __chkstk_darwin(v34);
  v37 = &v148 - v36;
  v38 = type metadata accessor for GlassActionSlider.Track(0);
  v39 = *(a1 + v38[6]);
  v160 = v37;
  v149 = v3;
  if (v39)
  {
    v41 = type metadata accessor for LocalizedStringResource();
    (*(*(v41 - 8) + 16))(v19, a1, v41);
    v42 = *(a1 + v38[5]);
    LOBYTE(v165) = 1;
    v43 = v42;
    static Binding.constant(_:)();
    v153 = v39;
    v44 = v166;
    v39 = v167;
    v45 = a1;
    v46 = v15;
    v47 = v38;
    v48 = v168;
    v49 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
    *&v19[v49[5]] = v43;
    v19[v49[6]] = 1;
    v50 = &v19[v49[7]];
    *v50 = v44;
    *(v50 + 1) = v39;
    v50[16] = v48;
    v38 = v47;
    v15 = v46;
    a1 = v45;
    LOBYTE(v44) = static Edge.Set.horizontal.getter();
    v51 = (v45 + v38[7]);
    v52 = *v51;
    v53 = v51[1];
    v166 = v52;
    v167 = v53;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    v54 = v160;
    EdgeInsets.init(_all:)();
    v55 = &v19[*(v15 + 36)];
    *v55 = v44;
    v3 = v149;
    LOBYTE(v39) = v153;
    *(v55 + 1) = v56;
    *(v55 + 2) = v57;
    *(v55 + 3) = v58;
    *(v55 + 4) = v59;
    v55[40] = 0;
    sub_10002C7C4(v19, v54, &qword_1001157A8, &qword_1000D2CE8);
    v40 = *(v16 + 56);
    v40(v54, 0, 1, v15);
  }

  else
  {
    v40 = *(v16 + 56);
    v40(v37, 1, 1, v15);
  }

  if ((v39 & 2) != 0)
  {
    v61 = [*(a1 + v38[5]) fontDescriptor];
    v62 = [v61 fontDescriptorWithSymbolicTraits:64];

    if (v62)
    {
      v63 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];

      v60 = 1;
      if (v63)
      {
        v64 = type metadata accessor for LocalizedStringResource();
        (*(*(v64 - 8) + 16))(v19, a1, v64);
        LOBYTE(v165) = 1;
        static Binding.constant(_:)();
        v65 = v16;
        v153 = v40;
        v66 = a1;
        v67 = v15;
        v68 = v38;
        v69 = v166;
        v70 = v167;
        v71 = v168;
        v72 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
        *&v19[v72[5]] = v63;
        v19[v72[6]] = 1;
        v73 = &v19[v72[7]];
        *v73 = v69;
        *(v73 + 1) = v70;
        v16 = v65;
        v38 = v68;
        v15 = v67;
        a1 = v66;
        v40 = v153;
        v73[16] = v71;
        v74 = static Edge.Set.horizontal.getter();
        v75 = (a1 + v38[7]);
        v76 = *v75;
        v77 = v75[1];
        v166 = v76;
        v167 = v77;
        sub_1000032D4(&qword_100114238, &qword_1000D2C30);
        State.wrappedValue.getter();
        EdgeInsets.init(_all:)();
        v78 = &v19[*(v15 + 36)];
        *v78 = v74;
        *(v78 + 1) = v79;
        *(v78 + 2) = v80;
        *(v78 + 3) = v81;
        *(v78 + 4) = v82;
        v78[40] = 0;
        sub_10002C7C4(v19, v161, &qword_1001157A8, &qword_1000D2CE8);
        v60 = 0;
      }
    }

    else
    {
      v60 = 1;
    }

    v3 = v149;
  }

  else
  {
    v60 = 1;
  }

  v83 = 1;
  v153 = (v16 + 56);
  v40(v161, v60, 1, v15);
  if ((v39 & 4) != 0)
  {
    v84 = static VerticalAlignment.center.getter();
    v85 = v148;
    *v148 = v84;
    *(v85 + 8) = 0;
    *(v85 + 16) = 0;
    v86 = sub_1000032D4(&qword_1001157C0, &qword_1000D2D00);
    sub_1000365F0(a1, v85 + *(v86 + 44));
    sub_10002C7C4(v85, v164, &qword_100115798, &qword_1000D2CD8);
    v83 = 0;
  }

  v87 = *(v3 + 56);
  v88 = 1;
  v87(v164, v83, 1, v155);
  if ((v39 & 8) != 0)
  {
    v89 = [*(a1 + v38[5]) fontDescriptor];
    v90 = [v89 fontDescriptorWithSymbolicTraits:64];

    if (v90 && (v91 = [objc_opt_self() fontWithDescriptor:v90 size:0.0], v90, v91))
    {
      v92 = static VerticalAlignment.center.getter();
      v93 = v148;
      *v148 = v92;
      *(v93 + 8) = 0;
      *(v93 + 16) = 0;
      v94 = sub_1000032D4(&qword_1001157C0, &qword_1000D2D00);
      sub_100036860(a1, v91, v93 + *(v94 + 44));

      sub_10002C7C4(v93, v162, &qword_100115798, &qword_1000D2CD8);
      v88 = 0;
    }

    else
    {
      v88 = 1;
    }
  }

  v95 = 1;
  v87(v162, v88, 1, v155);
  if ((v39 & 0x10) != 0)
  {
    v96 = type metadata accessor for LocalizedStringResource();
    (*(*(v96 - 8) + 16))(v19, a1, v96);
    v97 = *(a1 + v38[5]);
    LOBYTE(v165) = 1;
    v155 = v97;
    static Binding.constant(_:)();
    v98 = a1;
    v99 = v15;
    v100 = v38;
    v101 = v166;
    v102 = v167;
    v103 = v39;
    v39 = v40;
    v104 = v168;
    v105 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
    *&v19[v105[5]] = v155;
    v19[v105[6]] = 1;
    v106 = &v19[v105[7]];
    *v106 = v101;
    *(v106 + 1) = v102;
    v38 = v100;
    v15 = v99;
    a1 = v98;
    v106[16] = v104;
    v40 = v39;
    LOBYTE(v39) = v103;
    v107 = static Edge.Set.horizontal.getter();
    v108 = (v98 + v38[7]);
    v109 = *v108;
    v110 = v108[1];
    v166 = v109;
    v167 = v110;
    sub_1000032D4(&qword_100114238, &qword_1000D2C30);
    State.wrappedValue.getter();
    EdgeInsets.init(_all:)();
    v111 = &v19[*(v15 + 36)];
    *v111 = v107;
    *(v111 + 1) = v112;
    *(v111 + 2) = v113;
    *(v111 + 3) = v114;
    *(v111 + 4) = v115;
    v111[40] = 0;
    sub_10002C7C4(v19, v163, &qword_1001157A8, &qword_1000D2CE8);
    v95 = 0;
  }

  v116 = 1;
  v40(v163, v95, 1, v15);
  if ((v39 & 0x20) != 0)
  {
    v117 = [*(a1 + v38[5]) fontDescriptor];
    v118 = [v117 fontDescriptorWithSymbolicTraits:64];

    if (v118)
    {
      v119 = [objc_opt_self() fontWithDescriptor:v118 size:0.0];

      v116 = 1;
      if (v119)
      {
        v120 = type metadata accessor for LocalizedStringResource();
        (*(*(v120 - 8) + 16))(v19, a1, v120);
        LOBYTE(v165) = 1;
        static Binding.constant(_:)();
        v121 = v166;
        v122 = v167;
        v123 = v40;
        v124 = v38;
        v125 = v168;
        v126 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
        *&v19[v126[5]] = v119;
        v19[v126[6]] = 1;
        v127 = &v19[v126[7]];
        *v127 = v121;
        *(v127 + 1) = v122;
        v127[16] = v125;
        v128 = static Edge.Set.horizontal.getter();
        v129 = v124[7];
        v40 = v123;
        v130 = (a1 + v129);
        v131 = *v130;
        v132 = v130[1];
        v166 = v131;
        v167 = v132;
        sub_1000032D4(&qword_100114238, &qword_1000D2C30);
        State.wrappedValue.getter();
        EdgeInsets.init(_all:)();
        v133 = &v19[*(v15 + 36)];
        *v133 = v128;
        *(v133 + 1) = v134;
        *(v133 + 2) = v135;
        *(v133 + 3) = v136;
        *(v133 + 4) = v137;
        v133[40] = 0;
        sub_10002C7C4(v19, v154, &qword_1001157A8, &qword_1000D2CE8);
        v116 = 0;
      }
    }

    else
    {
      v116 = 1;
    }
  }

  v138 = v154;
  v40(v154, v116, 1, v15);
  v139 = v156;
  sub_10002CFC4(v160, v156, &qword_1001157B0, &qword_1000D2CF0);
  v140 = v157;
  sub_10002CFC4(v161, v157, &qword_1001157B0, &qword_1000D2CF0);
  v141 = v158;
  sub_10002CFC4(v164, v158, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002CFC4(v162, v159, &qword_1001157A0, &qword_1000D2CE0);
  v142 = v150;
  sub_10002CFC4(v163, v150, &qword_1001157B0, &qword_1000D2CF0);
  v143 = v151;
  sub_10002CFC4(v138, v151, &qword_1001157B0, &qword_1000D2CF0);
  v144 = v152;
  sub_10002CFC4(v139, v152, &qword_1001157B0, &qword_1000D2CF0);
  v145 = sub_1000032D4(&qword_1001157B8, &qword_1000D2CF8);
  sub_10002CFC4(v140, v144 + v145[12], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002CFC4(v141, v144 + v145[16], &qword_1001157A0, &qword_1000D2CE0);
  v146 = v159;
  sub_10002CFC4(v159, v144 + v145[20], &qword_1001157A0, &qword_1000D2CE0);
  sub_10002CFC4(v142, v144 + v145[24], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002CFC4(v143, v144 + v145[28], &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v138, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v163, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v162, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v164, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v161, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v160, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v143, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v142, &qword_1001157B0, &qword_1000D2CF0);
  sub_10002D02C(v146, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v158, &qword_1001157A0, &qword_1000D2CE0);
  sub_10002D02C(v157, &qword_1001157B0, &qword_1000D2CF0);
  return sub_10002D02C(v156, &qword_1001157B0, &qword_1000D2CF0);
}

uint64_t sub_1000365F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = type metadata accessor for GlassActionSlider.Track(0);
  v13 = *(a1 + *(v12 + 20));
  LOBYTE(v34) = 1;
  v14 = v13;
  static Binding.constant(_:)();
  v15 = v35;
  v16 = v36;
  v17 = v37;
  v18 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  *&v10[v18[5]] = v14;
  v10[v18[6]] = 1;
  v19 = &v10[v18[7]];
  *v19 = v15;
  *(v19 + 1) = v16;
  v19[16] = v17;
  LOBYTE(v14) = static Edge.Set.leading.getter();
  v20 = (a1 + *(v12 + 28));
  v22 = v20[1];
  v35 = *v20;
  v21 = v35;
  v36 = v22;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v23 = &v10[*(v4 + 44)];
  *v23 = v14;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v35 = v21;
  v36 = v22;
  State.wrappedValue.getter();
  v28 = v34 * 0.25;
  sub_10002CFC4(v10, v8, &qword_1001157A8, &qword_1000D2CE8);
  v29 = v33;
  sub_10002CFC4(v8, v33, &qword_1001157A8, &qword_1000D2CE8);
  v30 = v29 + *(sub_1000032D4(&qword_1001157C8, &qword_1000D2D08) + 48);
  *v30 = v28;
  *(v30 + 8) = 0;
  sub_10002D02C(v10, &qword_1001157A8, &qword_1000D2CE8);
  return sub_10002D02C(v8, &qword_1001157A8, &qword_1000D2CE8);
}

uint64_t sub_100036860@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000032D4(&qword_1001157A8, &qword_1000D2CE8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  LOBYTE(v32) = 1;
  static Binding.constant(_:)();
  v16 = v33;
  v15 = v34;
  v17 = v35;
  v18 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  *&v13[v18[5]] = a2;
  v13[v18[6]] = 1;
  v19 = &v13[v18[7]];
  *v19 = v16;
  *(v19 + 1) = v15;
  v19[16] = v17;
  v20 = a2;
  LOBYTE(a2) = static Edge.Set.leading.getter();
  v21 = (a1 + *(type metadata accessor for GlassActionSlider.Track(0) + 28));
  v23 = v21[1];
  v33 = *v21;
  v22 = v33;
  v34 = v23;
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v24 = &v13[*(v7 + 44)];
  *v24 = a2;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v33 = v22;
  v34 = v23;
  State.wrappedValue.getter();
  v29 = v32 * 0.25;
  sub_10002CFC4(v13, v11, &qword_1001157A8, &qword_1000D2CE8);
  sub_10002CFC4(v11, a3, &qword_1001157A8, &qword_1000D2CE8);
  v30 = a3 + *(sub_1000032D4(&qword_1001157C8, &qword_1000D2D08) + 48);
  *v30 = v29;
  *(v30 + 8) = 0;
  sub_10002D02C(v13, &qword_1001157A8, &qword_1000D2CE8);
  return sub_10002D02C(v11, &qword_1001157A8, &qword_1000D2CE8);
}

uint64_t sub_100036AC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for GlassActionSlider.Track(0) + 28));
  v5 = *v3;
  v6 = v3[1];
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

double sub_100036B3C(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v7 = 2000.0;
  if (a2)
  {
    v8 = 2000.0;
  }

  else
  {
    v8 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v7 = *&a3;
  }

  [a5 sizeThatFits:{v8, v7}];
  if (a2)
  {
    v10 = result;
  }

  else
  {
    v10 = *&a1;
  }

  if (v10 < result)
  {
    return v10;
  }

  return result;
}

void sub_100036BC8()
{
  v1 = type metadata accessor for LocalizedStringResource();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  (*(v4 + 16))(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  String.init(localized:)();
  v5 = type metadata accessor for GlassActionSlider.GlintyStringView(0);
  v6 = *(v0 + *(v5 + 20));
  v7 = objc_allocWithZone(_UIGlintyStringView);
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();

  v10 = [v7 initWithText:v9 andFont:v8];

  if (v10)
  {
    [v10 setAdjustsFontSizeToFitWidth:*(v0 + *(v5 + 24))];
  }

  else
  {
    __break(1u);
  }
}

id sub_100036D2C(void *a1)
{
  v3 = (v1 + *(type metadata accessor for GlassActionSlider.GlintyStringView(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  sub_1000032D4(&qword_100115938, &qword_1000D2EC8);
  Binding.wrappedValue.getter();
  if (v9 == 1 && ![a1 isAnimating])
  {
    v8 = &selRef_startAnimating;
    return [a1 *v8];
  }

  result = Binding.wrappedValue.getter();
  if ((v9 & 1) == 0)
  {
    result = [a1 isAnimating];
    if (result)
    {
      v8 = &selRef_stopAnimating;
      return [a1 *v8];
    }
  }

  return result;
}

uint64_t sub_100036E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100036EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100036F80()
{
  sub_1000374C0(&qword_100115940, type metadata accessor for GlassActionSlider.GlintyStringView);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100036FE0(uint64_t *a1)
{
  v3 = *(type metadata accessor for GlassActionSlider(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003402C(a1, v4);
}

unint64_t sub_100037050()
{
  result = qword_1001155D0;
  if (!qword_1001155D0)
  {
    sub_10001C820(&qword_1001155B0, &qword_1000D2AE0);
    sub_10002DAD8(&qword_1001155D8, &qword_1001155E0, &qword_1000D2B08);
    sub_10002DAD8(&qword_1001155E8, &qword_1001155F0, &qword_1000D2B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001155D0);
  }

  return result;
}

uint64_t sub_100037134()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[6], v8);
  v10 = (v0 + v3 + v1[8]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v5 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = *(v5 + v1[10] + 8);

  v15 = v1[11];
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = *(v5 + v1[12] + 16);

  v19 = *(v5 + v1[13] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003731C()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + *(result + 40) + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  if (*v4)
  {
    v5 = *(v4 + 8);
    return (*v4)();
  }

  return result;
}

unint64_t sub_100037390()
{
  result = qword_100115600;
  if (!qword_100115600)
  {
    sub_10001C820(&qword_1001155C0, &qword_1000D2AF0);
    sub_10001C820(&qword_1001155B0, &qword_1000D2AE0);
    sub_100037050();
    swift_getOpaqueTypeConformance2();
    sub_1000374C0(&qword_100113EA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115600);
  }

  return result;
}

uint64_t sub_1000374C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100037520(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GlassActionSlider(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1000375A4()
{
  result = qword_100115650;
  if (!qword_100115650)
  {
    sub_10001C820(&qword_100115648, &qword_1000D2B48);
    sub_100037630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115650);
  }

  return result;
}

unint64_t sub_100037630()
{
  result = qword_100115658;
  if (!qword_100115658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115658);
  }

  return result;
}

uint64_t sub_100037684(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003770C()
{
  v1 = type metadata accessor for GlassActionSlider(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v1[5];
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v3 + v7, v8);
  v9(v0 + v3 + v1[6], v8);
  v10 = (v0 + v3 + v1[8]);
  if (*v10)
  {
    v11 = v10[1];
  }

  v12 = (v5 + v1[9]);
  if (*v12)
  {
    v13 = v12[1];
  }

  v14 = *(v5 + v1[10] + 8);

  v15 = v1[11];
  sub_1000032D4(&qword_1001140A8, &qword_1000D13E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for LayoutDirection();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  v18 = *(v5 + v1[12] + 16);

  v19 = *(v5 + v1[13] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000378F4()
{
  result = type metadata accessor for GlassActionSlider(0);
  if (*(v0 + 16) == 1)
  {
    v2 = v0 + *(result + 32) + ((*(*(result - 8) + 80) + 17) & ~*(*(result - 8) + 80));
    if (*v2)
    {
      v3 = *(v2 + 8);
      return (*v2)();
    }
  }

  return result;
}

unint64_t sub_100037A00()
{
  result = qword_1001156D8;
  if (!qword_1001156D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001156D8);
  }

  return result;
}

uint64_t sub_100037A4C()
{
  sub_10001C820(&qword_1001155C0, &qword_1000D2AF0);
  sub_100037390();
  sub_1000352E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100037AFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100037B64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100037BA4(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

uint64_t sub_100037C00()
{
  v1 = (type metadata accessor for GlassActionSlider.Track(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100037CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100037D60(uint64_t *a1)
{
  v3 = *(type metadata accessor for GlassActionSlider.Track(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100036AC0(a1, v4);
}

uint64_t sub_100037DF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100037E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_100037EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
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

uint64_t sub_100037F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
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

void sub_100038078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t (*a7)(void, uint64_t))
{
  type metadata accessor for LocalizedStringResource();
  if (v10 <= 0x3F)
  {
    sub_100037A00();
    if (v11 <= 0x3F)
    {
      sub_100038140(319, a5, a6, a7);
      if (v12 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100038140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100038194()
{
  result = qword_100115870;
  if (!qword_100115870)
  {
    sub_10001C820(&qword_100115750, &qword_1000D2C90);
    sub_100038220();
    sub_100038594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115870);
  }

  return result;
}

unint64_t sub_100038220()
{
  result = qword_100115878;
  if (!qword_100115878)
  {
    sub_10001C820(&qword_100115748, &qword_1000D2C88);
    sub_1000382D8();
    sub_10002DAD8(&qword_1001158A0, &qword_1001158A8, &qword_1000D2D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115878);
  }

  return result;
}

unint64_t sub_1000382D8()
{
  result = qword_100115880;
  if (!qword_100115880)
  {
    sub_10001C820(&qword_100115740, &qword_1000D2C80);
    sub_100038364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115880);
  }

  return result;
}

unint64_t sub_100038364()
{
  result = qword_100115888;
  if (!qword_100115888)
  {
    sub_10001C820(&qword_100115738, &qword_1000D2C78);
    sub_10003841C();
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115888);
  }

  return result;
}

unint64_t sub_10003841C()
{
  result = qword_100115890;
  if (!qword_100115890)
  {
    sub_10001C820(&qword_100115728, &qword_1000D2C68);
    sub_10001C820(&qword_100115710, &qword_1000D6A90);
    type metadata accessor for Capsule();
    sub_10002DAD8(&qword_100115718, &qword_100115710, &qword_1000D6A90);
    sub_1000374C0(&qword_100115720, &type metadata accessor for Capsule);
    swift_getOpaqueTypeConformance2();
    sub_10002DAD8(&qword_100115898, &qword_100115730, &qword_1000D2C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115890);
  }

  return result;
}

unint64_t sub_100038594()
{
  result = qword_1001158B0;
  if (!qword_1001158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158B0);
  }

  return result;
}

unint64_t sub_1000385EC()
{
  result = qword_1001158B8;
  if (!qword_1001158B8)
  {
    sub_10001C820(&qword_100115790, &qword_1000D2CD0);
    sub_1000386A4();
    sub_10002DAD8(&qword_1001152D0, &qword_1001152D8, &qword_1000D2438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158B8);
  }

  return result;
}

unint64_t sub_1000386A4()
{
  result = qword_1001158C0;
  if (!qword_1001158C0)
  {
    sub_10001C820(&qword_100115770, &qword_1000D2CB0);
    sub_100038730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158C0);
  }

  return result;
}

unint64_t sub_100038730()
{
  result = qword_1001158C8;
  if (!qword_1001158C8)
  {
    sub_10001C820(&qword_100115768, &qword_1000D2CA8);
    sub_10002DAD8(&qword_1001158D0, &qword_100115760, &qword_1000D2CA0);
    sub_10002DAD8(&qword_1001158D8, &qword_100115788, &qword_1000D2CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001158C8);
  }

  return result;
}

unint64_t sub_100038878()
{
  result = qword_100115910;
  if (!qword_100115910)
  {
    sub_10001C820(&qword_1001158E8, &qword_1000D2E98);
    sub_100038930();
    sub_10002DAD8(&qword_100115928, &qword_100115930, &qword_1000D2EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115910);
  }

  return result;
}

unint64_t sub_100038930()
{
  result = qword_100115918;
  if (!qword_100115918)
  {
    sub_10001C820(&qword_100115920, &qword_1000D2EB8);
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115918);
  }

  return result;
}

uint64_t sub_1000389E8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100038A38()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000032D4(&qword_100114238, &qword_1000D2C30);
  return State.wrappedValue.setter();
}

unint64_t sub_100038A94()
{
  result = qword_100115948;
  if (!qword_100115948)
  {
    sub_10001C820(qword_100115950, &unk_1000D2ED0);
    sub_10002DAD8(&qword_100115908, &qword_100115900, &qword_1000D2EB0);
    sub_10001C820(&qword_1001158E8, &qword_1000D2E98);
    sub_10001C820(&qword_100115618, &qword_1000D2B30);
    sub_100038878();
    sub_10002DAD8(&qword_100115660, &qword_100115618, &qword_1000D2B30);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115948);
  }

  return result;
}

uint64_t sub_100038C0C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));

  v5 = *(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_100038CE0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_100038D08()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t Atomic.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  Atomic.init(wrappedValue:)(a1);
  return v5;
}

char *Atomic.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for CPUnfairLock();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v1 + 2) = v4;
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v3 + 96)], a1);
  return v1;
}

uint64_t Atomic.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  v5 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  os_unfair_lock_unlock(v4 + 4);
  return swift_endAccess();
}

uint64_t Atomic.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_100039294(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*Atomic.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*v1 + 80);
  v3[1] = v5;
  v6 = *(v5 - 8);
  v3[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v3[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v3[3] = malloc(v7);
    v8 = malloc(v7);
  }

  v4[4] = v8;
  Atomic.wrappedValue.getter(v8);
  return sub_1000390B4;
}

void sub_1000390B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_100039294(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_100039294((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

char *Atomic.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 96)]);
  return v0;
}

uint64_t sub_100039228(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100039294(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  swift_beginAccess();
  os_unfair_lock_lock(v4 + 4);
  swift_endAccess();
  v5 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  swift_beginAccess();
  os_unfair_lock_unlock(v4 + 4);
  return swift_endAccess();
}

uint64_t sub_100039394(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000394D0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000395C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006E776F64746ELL;
  v3 = 0x756F4372656D6954;
  v4 = a1;
  v5 = 0x776F64746E756F43;
  v6 = 0xE90000000000006ELL;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E55;
    v6 = 0xE700000000000000;
  }

  v7 = 0x63746177706F7453;
  v8 = 0xE900000000000068;
  if (a1 != 4)
  {
    v7 = 0x7472656C41;
    v8 = 0xE500000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x656C416D72616C41;
  v10 = 0xEA00000000007472;
  if (a1 != 2)
  {
    v9 = 0x6F6E536D72616C41;
    v10 = 0xEB00000000657A6FLL;
  }

  v11 = 0x656C4172656D6954;
  v12 = 0xEA00000000007472;
  if (!a1)
  {
    v11 = 0x756F4372656D6954;
    v12 = 0xEE006E776F64746ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE90000000000006ELL;
        if (v13 != 0x776F64746E756F43)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE700000000000000;
        if (v13 != 0x6E776F6E6B6E55)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000068;
      if (v13 != 0x63746177706F7453)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x7472656C41)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0x416D72616C41;
LABEL_29:
        v2 = 0xEA00000000007472;
        if (v13 != (v15 & 0xFFFFFFFFFFFFLL | 0x656C000000000000))
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v3 = 0x6F6E536D72616C41;
      v2 = 0xEB00000000657A6FLL;
    }

    else if (a2)
    {
      v15 = 0x4172656D6954;
      goto LABEL_29;
    }

    if (v13 != v3)
    {
LABEL_41:
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t sub_10003984C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00746361706D6FLL;
  v3 = 0x43746E6569626D41;
  v4 = a1;
  v5 = 0x657263536B636F4CLL;
  v6 = 0xEA00000000006E65;
  if (a1 != 5)
  {
    v5 = 0x726F707075736E55;
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE600000000000000;
  v8 = 0x72656E6E6142;
  if (a1 != 3)
  {
    v8 = 0x657263536C6C7546;
    v7 = 0xEA00000000006E65;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x46746E6569626D41;
  v10 = 0xEB000000006C6C75;
  if (a1 != 1)
  {
    v9 = 0x6572757472657041;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x43746E6569626D41;
    v10 = 0xEE00746361706D6FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      goto LABEL_31;
    }

    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6572757472657041)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x46746E6569626D41;
    v14 = 7105653;
  }

  else
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x72656E6E6142)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      v3 = 0x657263536C6C7546;
      v2 = 0xEA00000000006E65;
LABEL_31:
      if (v11 != v3)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    if (a2 == 5)
    {
      v2 = 0xEA00000000006E65;
      if (v11 != 0x657263536B636F4CLL)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x726F707075736E55;
    v14 = 6579572;
  }

  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v13)
  {
LABEL_37:
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

uint64_t sub_100039A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000032D4(&unk_100115E10, &qword_1000D27F0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10002CFC4(a3, v27 - v11, &unk_100115E10, &qword_1000D27F0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10002D02C(v12, &unk_100115E10, &qword_1000D27F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_10003CDF4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v141 = a4;
  v147 = a3;
  v154 = a2;
  v4 = sub_1000032D4(&unk_100118100, &qword_1000D1250);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v140 = &v127 - v6;
  v139 = type metadata accessor for UUID();
  v138 = *(v139 - 8);
  v7 = *(v138 + 64);
  __chkstk_darwin(v139);
  v137 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for AlarmPresentationState.Mode();
  v144 = *(v145 - 1);
  v9 = *(v144 + 64);
  __chkstk_darwin(v145);
  v143 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1000032D4(&qword_1001139D0, &unk_1000D08C0);
  v153 = *(v151 - 8);
  v11 = *(v153 + 64);
  __chkstk_darwin(v151);
  v149 = &v127 - v12;
  v13 = sub_1000032D4(&qword_100115E38, &qword_1000D3280);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v146 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v142 = &v127 - v18;
  v19 = __chkstk_darwin(v17);
  v148 = (&v127 - v20);
  __chkstk_darwin(v19);
  v150 = &v127 - v21;
  v22 = sub_1000032D4(&unk_100115DA0, &unk_1000D3220);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v127 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v127 - v31;
  __chkstk_darwin(v30);
  v34 = &v127 - v33;
  v35 = type metadata accessor for AlarmPresentationState();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for JSONDecoder();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10004CB7C(&qword_100115EF8, &type metadata accessor for AlarmPresentationState);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v133 = v32;
  v132 = v29;
  v130 = v26;

  v43 = *(v36 + 56);
  v43(v34, 0, 1, v35);
  v136 = v36;
  (*(v36 + 32))(v39, v34, v35);
  v154 = v35;
  if (qword_100113608 != -1)
  {
    swift_once();
  }

  v131 = qword_10011F3B8;
  dispatch thunk of DataStore.updateEntry(_:)();
  v44 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitAttributes;
  v45 = v152;
  swift_beginAccess();
  v135 = v44;
  v46 = v150;
  sub_10002CFC4(v45 + v44, v150, &qword_100115E38, &qword_1000D3280);
  v47 = v153;
  v48 = v153 + 48;
  v49 = v151;
  v134 = *(v153 + 48);
  if (v134(v46, 1, v151) != 1)
  {
    (*(v136 + 8))(v39, v154);
    return sub_10002D02C(v46, &qword_100115E38, &qword_1000D3280);
  }

  v128 = v43;
  v129 = v48;
  sub_10002D02C(v46, &qword_100115E38, &qword_1000D3280);
  v50 = ActivityDescriptor.attributesData.getter();
  v150 = v51;
  v52 = AlarmPresentationState.bundleID.getter();
  if (v53 && ((v54 = v52, v52 == 0xD000000000000015) && v53 == 0x80000001000D7F20 || (v55 = v53, v56 = _stringCompareWithSmolCheck(_:_:expecting:)(), v53 = v55, (v56 & 1) != 0)))
  {
    v127 = v54;
    v147 = v53;
    v57 = *(v40 + 48);
    v58 = *(v40 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_10002DAD8(&unk_100115F00, &qword_1001139D0, &unk_1000D08C0);
    v59 = v150;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_10004EACC(v50, v59);

    v61 = v148;
  }

  else
  {
    v61 = v148;
    sub_10004CC20(v148);

    sub_10004EACC(v50, v150);
  }

  v148 = *(v47 + 56);
  (v148)(v61, 0, 1, v49);
  v62 = v149;
  (*(v47 + 32))(v149, v61, v49);
  v150 = objc_opt_self();
  v157 = 0;
  v158 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v63 = v152;
  v64 = [v152 description];
  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v49;
  v68 = v67;

  v69._countAndFlagsBits = v65;
  v69._object = v68;
  String.append(_:)(v69);

  v70._countAndFlagsBits = 0xD000000000000017;
  v70._object = 0x80000001000D8E70;
  String.append(_:)(v70);
  _print_unlocked<A, B>(_:_:)();
  v71._countAndFlagsBits = 0xD000000000000011;
  v71._object = 0x80000001000D8E90;
  String.append(_:)(v71);
  v72 = v154;
  _print_unlocked<A, B>(_:_:)();
  v73 = String._bridgeToObjectiveC()();

  [v150 logInfo:v73];

  v74 = v142;
  (*(v153 + 16))(v142, v62, v66);
  (v148)(v74, 0, 1, v66);
  v75 = v135;
  swift_beginAccess();
  sub_10004EC60(v74, &v63[v75], &qword_100115E38, &qword_1000D3280);
  swift_endAccess();
  v76 = v136;
  v77 = v133;
  (*(v136 + 16))(v133, v39, v72);
  v78 = v72;
  v128(v77, 0, 1, v72);
  v79 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmPresentationState;
  swift_beginAccess();
  sub_10004EC60(v77, &v63[v79], &unk_100115DA0, &unk_1000D3220);
  swift_endAccess();
  v80 = v143;
  AlarmPresentationState.mode.getter();
  v81 = AlarmPresentationState.Mode.isAlerting.getter();
  (*(v144 + 8))(v80, v145);
  if (v81)
  {
    v82 = 5;
  }

  else
  {
    v82 = 6;
  }

  v83 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType;
  v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_sessionType] = v82;
  v84 = *&v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene];
  v85 = v146;
  if (!v84)
  {
LABEL_22:
    sub_10002CFC4(&v63[v75], v85, &qword_100115E38, &qword_1000D3280);
    v115 = v151;
    v116 = v134(v85, 1, v151);
    v117 = v153;
    if (!v116)
    {
      v118 = v140;
      AlarmAttributes.metadata.getter();
      v119 = type metadata accessor for MTAlarmCustomContent();
      if (!(*(*(v119 - 8) + 48))(v118, 1, v119))
      {
        MTAlarmCustomContent.type.getter();
        sub_10002D02C(v118, &unk_100118100, &qword_1000D1250);
        sub_10002D02C(v85, &qword_100115E38, &qword_1000D3280);
        v120 = AlarmType.rawValue.getter();
        if (v120 == AlarmType.rawValue.getter())
        {
          v121 = *(*&v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmCoordinator] + 16);

          v122 = AlarmsViewModel.manager.getter();

          v123 = v130;
          sub_10002CFC4(&v63[v79], v130, &unk_100115DA0, &unk_1000D3220);
          if ((*(v76 + 48))(v123, 1, v78))
          {
            sub_10002D02C(v123, &unk_100115DA0, &unk_1000D3220);
            v124 = 0;
          }

          else
          {
            v125 = v137;
            AlarmPresentationState.alarmID.getter();
            sub_10002D02C(v123, &unk_100115DA0, &unk_1000D3220);
            UUID.uuidString.getter();
            (*(v138 + 8))(v125, v139);
            v124 = String._bridgeToObjectiveC()();
          }

          if (v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination] > 2u)
          {
            v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
          }

          v126 = String._bridgeToObjectiveC()();

          [v122 didRenderSceneForAlarm:v124 withType:v126];

          v76 = v136;
        }

        goto LABEL_26;
      }

      sub_10002D02C(v118, &unk_100118100, &qword_1000D1250);
    }

    sub_10002D02C(v85, &qword_100115E38, &qword_1000D3280);
LABEL_26:
    (*(v117 + 8))(v149, v115);
    return (*(v76 + 8))(v39, v78);
  }

  v86 = v132;
  sub_10002CFC4(&v63[v79], v132, &unk_100115DA0, &unk_1000D3220);
  if ((*(v76 + 48))(v86, 1, v78))
  {
    sub_10002D02C(v86, &unk_100115DA0, &unk_1000D3220);
    goto LABEL_22;
  }

  v87 = v84;
  v88 = v137;
  AlarmPresentationState.alarmID.getter();
  sub_10002D02C(v86, &unk_100115DA0, &unk_1000D3220);
  v148 = UUID.uuidString.getter();
  v90 = v89;
  v91 = v88;
  v92 = v87;
  (*(v138 + 8))(v91, v139);
  result = [v87 SBUI_isHostedBySystemAperture];
  if (!result)
  {
    v157 = 0;
    v158 = 0xE000000000000000;
    v147 = v90;
    _StringGuts.grow(_:)(50);
    v97 = [v63 description];
    v145 = v87;
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v39;
    v102 = v101;

    v157 = v99;
    v158 = v102;
    v39 = v100;
    v85 = v146;
    v103._countAndFlagsBits = 0xD000000000000022;
    v103._object = 0x80000001000D8EB0;
    String.append(_:)(v103);
    v104 = [v152 description];
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;

    v108._countAndFlagsBits = v105;
    v108._object = v107;
    String.append(_:)(v108);
    v63 = v152;
    v78 = v154;

    v109._countAndFlagsBits = 0x20646920726F6620;
    v109._object = 0xE90000000000005BLL;
    String.append(_:)(v109);
    v110._object = v147;
    v111 = v148;
    v110._countAndFlagsBits = v148;
    String.append(_:)(v110);
    v112._countAndFlagsBits = 93;
    v112._object = 0xE100000000000000;
    String.append(_:)(v112);
    v113 = String._bridgeToObjectiveC()();

    [v150 logInfo:v113];

    sub_10004CB7C(&qword_100115E30, type metadata accessor for SessionSceneDelegate);
    v155 = v111;
    v156 = v147;
    AnyHashable.init<A>(_:)();
    dispatch thunk of DataStore.registerObserver(_:for:)();
    sub_10004E3D4(&v157);
    v114 = v63[v83];
    sub_100047388();

    goto LABEL_21;
  }

  v93 = v148;
  v94 = *&v63[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_alarmKitApertureElementProvider];
  if (v94)
  {
    v95 = v90;
    v96 = v94;
    sub_10008DA7C(v93, v95, v149);

LABEL_21:
    v75 = v135;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003E0EC(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v4 = sub_1000032D4(&qword_100115E88, &unk_1000D3380);
  v66 = *(v4 - 8);
  v67 = v4;
  v63 = *(v66 + 64);
  __chkstk_darwin(v4);
  v65 = &v52 - v5;
  v62 = type metadata accessor for ActivityDescriptor();
  v60 = *(v62 - 8);
  v6 = *(v60 + 64);
  __chkstk_darwin(v62);
  v58 = v7;
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000032D4(&qword_100115E90, &qword_1000D1430);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v55 = &v52 - v10;
  updated = type metadata accessor for ActivityUpdateFeed();
  v12 = *(updated - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(updated);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000032D4(&qword_100115E98, &qword_1000D3390);
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  __chkstk_darwin(v16);
  v19 = &v52 - v18;
  v20 = sub_1000032D4(&qword_100115EA0, &qword_1000D3398);
  v56 = *(v20 - 8);
  v57 = v20;
  v21 = *(v56 + 64);
  __chkstk_darwin(v20);
  v68 = &v52 - v22;
  v23 = objc_opt_self();
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(75);
  v52 = v2;
  v24 = [v2 description];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  v29._object = 0x80000001000D8DA0;
  v29._countAndFlagsBits = 0xD000000000000047;
  String.append(_:)(v29);
  v30._countAndFlagsBits = ActivityDescriptor.id.getter();
  String.append(_:)(v30);

  v31 = String._bridgeToObjectiveC()();

  [v23 logInfo:v31];

  type metadata accessor for ActivityCenter();
  static ActivityCenter.shared.getter();
  v61 = a1;
  ActivityDescriptor.id.getter();
  (*(v12 + 104))(v15, enum case for ActivityUpdateFeed.all(_:), updated);
  v32 = dispatch thunk of ActivityCenter.observePayloads(id:feed:)();
  (*(v12 + 8))(v15, updated);

  v69 = v32;
  v33 = swift_allocObject();
  v34 = v52;
  *(v33 + 16) = v52;
  v52 = v34;
  sub_1000032D4(&qword_100115EA8, &qword_1000D33A0);
  sub_1000032D4(&qword_100115EB0, &qword_1000D33A8);
  sub_10002DAD8(&qword_100115EB8, &qword_100115EA8, &qword_1000D33A0);
  sub_10002DAD8(&qword_100115EC0, &qword_100115EB0, &qword_1000D33A8);
  Publisher.catch<A>(_:)();

  sub_10002BB3C(0, &qword_100115D80, OS_dispatch_queue_ptr);
  v35 = static OS_dispatch_queue.main.getter();
  v69 = v35;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = v55;
  (*(*(v36 - 8) + 56))(v55, 1, 1, v36);
  sub_10002DAD8(&qword_100115EC8, &qword_100115E98, &qword_1000D3390);
  sub_10004DE88(&qword_100115ED0, &qword_100115D80, OS_dispatch_queue_ptr);
  v38 = v54;
  Publisher.receive<A>(on:options:)();
  sub_10002D02C(v37, &qword_100115E90, &qword_1000D1430);

  (*(v53 + 8))(v19, v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v59;
  v40 = v60;
  v42 = v62;
  (*(v60 + 16))(v59, v61, v62);
  v44 = v65;
  v43 = v66;
  v45 = v67;
  (*(v66 + 16))(v65, v64, v67);
  v46 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v47 = (v58 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v39;
  (*(v40 + 32))(v48 + v46, v41, v42);
  (*(v43 + 32))(v48 + v47, v44, v45);
  sub_10002DAD8(&qword_100115ED8, &qword_100115EA0, &qword_1000D3398);
  v49 = v57;
  v50 = v68;
  Publisher<>.sink(receiveValue:)();

  (*(v56 + 8))(v50, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_10003E984(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = objc_opt_self();
  _StringGuts.grow(_:)(57);
  v5 = [a2 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._object = 0x80000001000D8E30;
  v10._countAndFlagsBits = 0xD000000000000035;
  String.append(_:)(v10);
  sub_1000032D4(&qword_100115EF0, &unk_1000D33C0);
  _print_unlocked<A, B>(_:_:)();
  v11 = String._bridgeToObjectiveC()();

  [v4 logError:v11];

  sub_1000032D4(&qword_100115EE8, &qword_1000D33B8);
  return Empty.init(completeImmediately:)();
}

void sub_10003EAF0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v70 = a3;
  v71 = a1;
  v5 = type metadata accessor for OpaqueActivityContent();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v67 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000032D4(&qword_100115EE0, &qword_1000D33B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v62 - v18;
  v20 = type metadata accessor for OpaqueActivityPayload();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v63 = a4;
    sub_10002B00C(v71, &v72);
    sub_1000032D4(&qword_100115EE8, &qword_1000D33B8);
    v27 = swift_dynamicCast();
    v28 = *(v21 + 56);
    if (v27)
    {
      v28(v19, 0, 1, v20);
      v62 = v21;
      (*(v21 + 32))(v24, v19, v20);
      v71 = objc_opt_self();
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v29 = [v26 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33._countAndFlagsBits = v30;
      v33._object = v32;
      String.append(_:)(v33);

      v34._object = 0x80000001000D8E10;
      v34._countAndFlagsBits = 0xD00000000000001CLL;
      String.append(_:)(v34);
      OpaqueActivityPayload.id.getter();
      sub_10004CB7C(&qword_100118110, &type metadata accessor for UUID);
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      (*(v64 + 8))(v15, v12);
      v36._countAndFlagsBits = 0x203A656D6954200ALL;
      v36._object = 0xE800000000000000;
      String.append(_:)(v36);
      OpaqueActivityPayload.timestamp.getter();
      v37 = Date.description.getter();
      v39 = v38;
      (*(v65 + 8))(v11, v66);
      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41._countAndFlagsBits = 0x2061746144202D20;
      v41._object = 0xEE00203A657A6953;
      String.append(_:)(v41);
      v42 = v67;
      OpaqueActivityPayload.content.getter();
      v43 = OpaqueActivityContent.contentState.getter();
      v45 = v44;
      v66 = v26;
      v46 = v69;
      v47 = *(v68 + 8);
      v47(v42, v69);
      v48._countAndFlagsBits = Data.description.getter();
      String.append(_:)(v48);

      sub_10004EACC(v43, v45);
      v49 = String._bridgeToObjectiveC()();

      [v71 logInfo:v49];

      OpaqueActivityPayload.content.getter();
      v50 = OpaqueActivityContent.contentState.getter();
      v52 = v51;
      v47(v42, v46);
      v53 = v66;
      sub_10003CDF4(v50, v52, v70, v63);

      sub_10004EACC(v50, v52);
      (*(v62 + 8))(v24, v20);
    }

    else
    {
      v28(v19, 1, 1, v20);
      sub_10002D02C(v19, &qword_100115EE0, &qword_1000D33B0);
      v54 = objc_opt_self();
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v55 = [v26 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v59._countAndFlagsBits = v56;
      v59._object = v58;
      String.append(_:)(v59);

      v60._countAndFlagsBits = 0xD00000000000001ELL;
      v60._object = 0x80000001000D8DF0;
      String.append(_:)(v60);
      _print_unlocked<A, B>(_:_:)();
      v61 = String._bridgeToObjectiveC()();

      [v54 logError:v61];
    }
  }
}

uint64_t sub_10003F1D4(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_currentSessionScene);
  if (v3 && ([v3 SBUI_isHostedBySystemAperture] & 1) == 0)
  {
    v6 = a1;
    v4 = 1;
    if (((1 << v6) & 0x59) == 0)
    {
      if (((1 << v6) & 0x26) == 0 || ([objc_opt_self() mtSBUIIsSystemApertureEnabled] & 1) == 0 && (v9[3] = &type metadata for ClockFeatureFlags, v9[4] = sub_10004DECC(), LOBYTE(v9[0]) = 1, v7 = isFeatureEnabled(_:)(), sub_100017D28(v9), (v7 & 1) == 0))
      {
        v8 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
        if (sub_100089C28(*(v1 + OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination)))
        {
          v4 = 1;
        }

        else
        {
          if (*(v1 + v8) <= 2u || *(v1 + v8) > 4u || *(v1 + v8) == 3)
          {
            v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          else
          {
            v4 = 1;
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

char *sub_10003FC70()
{
  v1 = v0;
  v2 = type metadata accessor for StopwatchContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[2] = 0;
  v28[3] = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v7 = [v0 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._object = 0x80000001000D8D20;
  v12._countAndFlagsBits = 0xD00000000000003ELL;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes;
  v14 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v16 = StopwatchContext.id.getter();
    v14 = v17;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 0;
  }

  v18 = objc_opt_self();
  v28[0] = v16;
  v28[1] = v14;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v19 = String._bridgeToObjectiveC()();

  [v18 logInfo:v19];

  v20 = *&v1[v13];
  if (v20)
  {
    v21 = *&v1[v13];

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v20 = StopwatchContext.id.getter();
    v23 = v22;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_allocWithZone(type metadata accessor for StopwatchLockscreenController());
  *&v24[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView] = 0;
  result = sub_10002DC6C(v20, v23);
  v26 = *&result[OBJC_IVAR____TtC10ClockAngel29StopwatchLockscreenController_customTrailingView];
  if (v26)
  {
    v27 = result;
    *(v26 + *((swift_isaMask & *v26) + qword_10011F398 + 16) + 8) = &off_100100FD8;
    swift_unknownObjectWeakAssign();
    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_10003FF74()
{
  v1 = v0;
  v2 = type metadata accessor for StopwatchContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(78);
  v7 = [v0 description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD000000000000035;
  v12._object = 0x80000001000D8C80;
  String.append(_:)(v12);
  v13 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes;
  v14 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];
  if (v14)
  {
    v15 = *&v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_stopwatchAttributes];

    dispatch thunk of StopwatchActivityAttributes.context.getter();

    v16 = StopwatchContext.id.getter();
    v14 = v17;
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v16 = 0;
  }

  v18 = objc_opt_self();
  v40[0] = v16;
  v40[1] = v14;
  sub_1000032D4(&qword_100115E80, &qword_1000D3CF0);
  _print_unlocked<A, B>(_:_:)();

  v19._object = 0x80000001000D8CC0;
  v19._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v19);
  v20 = OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination;
  LOBYTE(v40[0]) = v1[OBJC_IVAR____TtC10ClockAngel20SessionSceneDelegate_destination];
  _print_unlocked<A, B>(_:_:)();
  v21 = String._bridgeToObjectiveC()();

  [v18 logInfo:v21];

  if (v1[v20])
  {
    if (v1[v20] == 1)
    {
      v22 = *&v1[v13];
      if (v22)
      {
        v23 = *&v1[v13];

        dispatch thunk of StopwatchActivityAttributes.context.getter();

        v22 = StopwatchContext.id.getter();
        v25 = v24;
        (*(v3 + 8))(v6, v2);
      }

      else
      {
        v25 = 0;
      }

      v38 = objc_allocWithZone(type metadata accessor for StopwatchStandbyController());
      *&v38[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingLapView] = 0;
      *&v38[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_customTrailingTimeView] = 0;
      *&v38[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_glyphSize] = 0x404B000000000000;
      *&v38[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_safeAreaPadding] = 0x404E000000000000;
      *&v38[OBJC_IVAR____TtC10ClockAngel26StopwatchStandbyController_trailingEdgePadding] = 0x404C000000000000;
      return sub_10002DC6C(v22, v25);
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      _StringGuts.grow(_:)(63);
      v30 = [v1 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      v34._countAndFlagsBits = v31;
      v34._object = v33;
      String.append(_:)(v34);

      v35._countAndFlagsBits = 0xD00000000000003DLL;
      v35._object = 0x80000001000D8CE0;
      String.append(_:)(v35);
      v36 = String._bridgeToObjectiveC()();

      [v18 logInfo:v36];

      return 0;
    }
  }

  else
  {
    v26 = *&v1[v13];
    if (v26)
    {
      v27 = *&v1[v13];

      dispatch thunk of StopwatchActivityAttributes.context.getter();

      v26 = StopwatchContext.id.getter();
      v29 = v28;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v29 = 0;
    }

    v39 = objc_allocWithZone(type metadata accessor for StopwatchStandbyCompressedController());
    return sub_10008120C(v26, v29);
  }
}