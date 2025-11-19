uint64_t sub_100104680(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136446210;
    *&v15 = v3;
    *(&v15 + 1) = v4;
    type metadata accessor for CGSize(0);
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Floating panel size changed: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  v15 = *(a2 + 72);
  v16 = *(a2 + 88);
  v14[0] = v3;
  v14[1] = v4;
  sub_1000040A8(&qword_100359F88);
  return State.wrappedValue.setter();
}

uint64_t sub_1001048FC()
{

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_100104988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100104A04()
{
  sub_100008CF0(&qword_10035B050);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  sub_100008CF0(&qword_10035B058);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035B060);
  type metadata accessor for ModifiedContent();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  type metadata accessor for ScrollableContentWithFloatingPanelView();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035B068);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_10035B070, &qword_10035B068);
  return swift_getWitnessTable();
}

uint64_t Angle.debugDescription.getter()
{
  v0._countAndFlagsBits = 0x203A6765643CLL;
  v0._object = 0xE600000000000000;
  String.append(_:)(v0);
  Double.write<A>(to:)();
  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0;
}

uint64_t sub_100104E20()
{
  v0._countAndFlagsBits = 0x203A6765643CLL;
  v0._object = 0xE600000000000000;
  String.append(_:)(v0);
  Double.write<A>(to:)();
  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 0;
}

uint64_t sub_100104EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100104EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100104F70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000040A8(&qword_10035E7F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v38 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {

    v11 = sub_100069C9C();
    v12 = v11;
    v40 = a2;
    v41 = v7;
    if (v11 || (v12 = *(v10 + 160)) != 0)
    {
    }

    else
    {
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v5;

    v44 = v12;
    swift_getKeyPath();
    v14 = swift_allocObject();
    v15 = *(a1 + 48);
    v14[3] = *(a1 + 32);
    v14[4] = v15;
    v14[5] = *(a1 + 64);
    v16 = *(a1 + 16);
    v14[1] = *a1;
    v14[2] = v16;
    sub_10003805C(a1, v43);
    sub_1000040A8(&qword_100355E30);
    sub_100009274(&qword_100357870, &qword_100355E30);
    sub_100089320();
    ForEach<>.init(_:id:content:)();
    v17 = v4;
    if (v11)
    {

      v18 = 0;
      v39 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v22 = [objc_opt_self() mainBundle];
      v45._object = 0x800000010029D570;
      v23._object = 0x800000010029D550;
      v24.value._object = 0x80000001002962C0;
      v45._countAndFlagsBits = 0xD00000000000005ELL;
      v23._countAndFlagsBits = 0xD000000000000012;
      v24.value._countAndFlagsBits = 0xD000000000000012;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v45);

      type metadata accessor for OptionPresentation();
      v19 = swift_allocObject();
      v19[1] = v26;
      v19[3]._countAndFlagsBits = 0;
      v19[3]._object = 0;
      v19[4]._countAndFlagsBits = static Color.clear.getter();
      v19[2]._countAndFlagsBits = 0;
      v19[2]._object = 0;
      v21 = swift_allocObject();
      v27 = *(a1 + 48);
      v21[3] = *(a1 + 32);
      v21[4] = v27;
      v21[5] = *(a1 + 64);
      v28 = *(a1 + 16);
      v21[1] = *a1;
      v21[2] = v28;
      sub_10003805C(a1, v43);
      type metadata accessor for UIMetrics();
      sub_100105748(&qword_100354D40, type metadata accessor for UIMetrics);
      v18 = EnvironmentObject.init()();
      v39 = v29;

      v20 = sub_100105808;
    }

    v30 = v13;
    v31 = *(v13 + 16);
    v32 = v41;
    v31(v41, v42, v17);
    v33 = v40;
    v31(v40, v32, v17);
    v34 = &v33[*(sub_1000040A8(&qword_10035E800) + 48)];
    v35 = v39;
    sub_100105810(v18, v39, v19);
    sub_10010585C(v18, v35, v19);
    *v34 = v18;
    v34[1] = v35;
    v34[2] = v19;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = v20;
    v34[6] = v21;
    v36 = *(v30 + 8);
    v36(v42, v17);
    sub_10010585C(v18, v35, v19);
    return (v36)(v32, v17);
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100105748(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100105470@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  type metadata accessor for OptionPresentation();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[6] = 0;
  v7[7] = 0;

  v7[8] = static Color.clear.getter();
  v7[4] = 0;
  v7[5] = 0;
  v8 = swift_allocObject();
  v9 = a2[3];
  *(v8 + 48) = a2[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = a2[4];
  v10 = a2[1];
  *(v8 + 16) = *a2;
  *(v8 + 32) = v10;
  *(v8 + 96) = v6;
  *(v8 + 104) = v5;

  sub_10003805C(a2, &v13);
  type metadata accessor for UIMetrics();
  sub_100105748(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a3 = result;
  a3[1] = v12;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v7;
  a3[5] = sub_10010597C;
  a3[6] = v8;
  return result;
}

uint64_t sub_100105584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v7[3] = &type metadata for String;
  v7[0] = a2;
  v7[1] = a3;

  sub_1000C0AF0(v4, v7);
  v5 = sub_1001058AC(v7);
  return (*(a1 + 64))(v5);
}

uint64_t sub_1001055F0(uint64_t a1)
{
  v2 = *(a1 + 56);
  memset(v5, 0, sizeof(v5));
  sub_1000C0AF0(v2, v5);
  v3 = sub_1001058AC(v5);
  return (*(a1 + 64))(v3);
}

uint64_t sub_100105640@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v11 = v1[2];
  v12 = v3;
  v13 = v1[4];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  if (v11)
  {
    v5 = *(v11 + 72);
    v6 = *(v11 + 80);
    sub_1000088DC((v11 + 48), v5);
    (*(v6 + 24))(v9, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0x402C000000000000;
    *(a1 + 16) = 0;
    v7 = sub_1000040A8(&qword_10035E7F0);
    sub_100104F70(v10, (a1 + *(v7 + 44)));
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100105748(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100105748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001057A8()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100105810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10010585C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1001058AC(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003577F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100105914()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1001059FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_1000089B0(a1, &v27);
  v7 = swift_allocObject();
  sub_100008A18(&v27, v7 + 16);
  type metadata accessor for UIMetrics();
  sub_1001067A0(&qword_100354D40, type metadata accessor for UIMetrics);
  v8 = EnvironmentObject.init()();
  v10 = v9;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  if (!a3)
  {
    EnvironmentObject.error()();
    __break(1u);
    goto LABEL_8;
  }

  sub_1000089B0(a3 + 48, &v27);
  v11 = v28;
  v12 = v29;
  sub_1000088DC(&v27, v28);
  if (!a2)
  {
LABEL_8:
    type metadata accessor for StewieModel(0);
    sub_1001067A0(&qword_1003561B8, type metadata accessor for StewieModel);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (*(a2 + 64))
  {
    v13 = *(a2 + 88);
  }

  else
  {
    v13 = 0;
  }

  v14 = (*(v12 + 184))(v13, v11, v12);
  v16 = v15;

  v17 = (a4 + *(sub_1000040A8(&qword_10035E818) + 36));
  v18 = v17 + *(sub_1000040A8(&qword_10035B5A8) + 36);
  v19 = sub_1000040A8(&qword_10035B5B8);
  v20 = *(v19 + 36);
  v21 = type metadata accessor for ToolbarItemPlacement();
  (*(*(v21 - 8) + 56))(&v18[v20], 1, 1, v21);
  *v18 = 1;
  v22 = &v18[*(v19 + 40)];
  *v22 = sub_1001063D8;
  v22[1] = 0;
  *v17 = v14;
  v17[1] = v16;
  *a4 = v8;
  a4[1] = v10;
  a4[2] = sub_100105CFC;
  a4[3] = 0;
  a4[4] = sub_100106790;
  a4[5] = v7;
  a4[6] = v24;
  a4[7] = v25;
  a4[8] = v26;
  return sub_100008964(&v27);
}

double sub_100105CFC@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v25 = 0;
  sub_100105E5C(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[11] = v23;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v15;
  sub_1000E9BE8(&v26, &v11);
  sub_1000E9C58(v38);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[183] = v37;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v3 = *&v24[128];
  *(a1 + 161) = *&v24[144];
  v4 = *&v24[176];
  *(a1 + 177) = *&v24[160];
  *(a1 + 193) = v4;
  v5 = *&v24[64];
  *(a1 + 97) = *&v24[80];
  v6 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = v3;
  v7 = *v24;
  *(a1 + 33) = *&v24[16];
  result = *&v24[32];
  v9 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v25;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 208) = *&v24[191];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_100105E5C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1001067A0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_1001067A0(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for GuidanceModel(0);
  sub_1001067A0(&qword_100354F80, type metadata accessor for GuidanceModel);
  v8 = EnvironmentObject.init()();
  v38 = v9;
  v39 = v8;
  type metadata accessor for OrientationModel();
  sub_1001067A0(&qword_10035B1B0, type metadata accessor for OrientationModel);
  v10 = EnvironmentObject.init()();
  v36 = v11;
  v37 = v10;
  type metadata accessor for StewieModel(0);
  sub_1001067A0(&qword_1003561B8, type metadata accessor for StewieModel);
  v35 = EnvironmentObject.init()();
  v42 = v12;
  type metadata accessor for UIMetrics();
  sub_1001067A0(&qword_100354D40, type metadata accessor for UIMetrics);
  v13 = EnvironmentObject.init()();
  v40 = v14;
  v41 = v13;
  v15 = EnvironmentObject.init()();
  v33 = v16;
  v34 = v15;
  v17 = EnvironmentObject.init()();
  v31 = v18;
  v32 = v17;
  type metadata accessor for GuidanceMessagesModel();
  sub_1001067A0(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  v19 = EnvironmentObject.init()();
  v29 = v20;
  v30 = v19;
  v21 = EnvironmentObject.init()();
  *&v43 = v2;
  *(&v43 + 1) = v4;
  *&v44 = v5;
  *(&v44 + 1) = v7;
  *&v45 = v39;
  *(&v45 + 1) = v38;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  *&v47 = v35;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  *(&v48 + 1) = v40;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 0;
  v22 = v44;
  *a1 = v43;
  *(a1 + 16) = v22;
  v23 = v45;
  v24 = v46;
  v25 = v49;
  v26 = v47;
  *(a1 + 80) = v48;
  *(a1 + 96) = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v26;
  *(a1 + 32) = v23;
  *(a1 + 112) = v34;
  *(a1 + 120) = v33;
  *(a1 + 128) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = 32;
  *(a1 + 152) = 0xE100000000000000;
  *(a1 + 160) = v30;
  *(a1 + 168) = v29;
  *(a1 + 176) = v21;
  *(a1 + 184) = v27;
  sub_1000E091C(&v43, v50);
  v50[0] = v2;
  v50[1] = v4;
  v50[2] = v5;
  v50[3] = v7;
  v50[4] = v39;
  v50[5] = v38;
  v50[6] = v37;
  v50[7] = v36;
  v50[8] = v35;
  v50[9] = v42;
  v50[10] = v41;
  v50[11] = v40;
  v51 = 1;
  v52 = 0;
  return sub_1000E0978(v50);
}

uint64_t sub_100106194@<X0>(uint64_t a1@<X8>)
{
  v24 = static HorizontalAlignment.center.getter();
  type metadata accessor for AlertAppearanceModel();
  sub_1001067A0(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v2 = EnvironmentObject.init()();
  v22 = v3;
  v23 = v2;
  type metadata accessor for AppEvents();
  sub_1001067A0(&qword_100354D48, type metadata accessor for AppEvents);
  v4 = EnvironmentObject.init()();
  v20 = v5;
  v21 = v4;
  type metadata accessor for RoadsideAssistanceModel();
  sub_1001067A0(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  type metadata accessor for StewieModel(0);
  sub_1001067A0(&qword_1003561B8, type metadata accessor for StewieModel);
  v9 = EnvironmentObject.init()();
  v11 = v10;
  KeyPath = swift_getKeyPath();
  v13 = static Edge.Set.top.getter();
  v14 = static Edge.Set.bottom.getter();
  if (qword_100353988 != -1)
  {
    swift_once();
  }

  result = EdgeInsets.init(_all:)();
  *a1 = v24;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v23;
  *(a1 + 32) = v22;
  *(a1 + 40) = v21;
  *(a1 + 48) = v20;
  *(a1 + 56) = v6;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  *(a1 + 88) = KeyPath;
  *(a1 + 96) = 0;
  *(a1 + 104) = v13;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  *(a1 + 152) = v14;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  *(a1 + 184) = v19;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_1001063D8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1001067A0(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_1001067A0(&qword_1003561B8, type metadata accessor for StewieModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1001064E8()
{
  v5 = *(v0 + 16);
  if (v5)
  {
    sub_1000089B0(v5 + 48, v6);
    v1 = v7;
    v2 = v8;
    sub_1000088DC(v6, v7);
    (*(v2 + 32))(v9, v1, v2);
    v3 = sub_100008964(v6);
    __chkstk_darwin(v3);
    sub_1000040A8(&qword_10035E818);
    sub_100106674();
    NavigationStack.init<>(root:)();
    return sub_100008964(v9);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001067A0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_100106674()
{
  result = qword_10035E820;
  if (!qword_10035E820)
  {
    sub_100008CF0(&qword_10035E818);
    sub_100009274(&qword_10035E828, &qword_10035E830);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E820);
  }

  return result;
}

uint64_t sub_100106758()
{
  sub_100008964(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001067A0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10010682C(void *a1, void *a2)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v8 = 136446210;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10017C9E8(v11, v13, &v26);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "AppDelegate connectingSceneSession(%{public}s)", v8, 0xCu);
    sub_100008964(v25);
  }

  v15 = [v5 URLContexts];
  sub_100033B2C();
  sub_100033B78();
  v16 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = __CocoaSet.count.getter();
  }

  else
  {
    v17 = *(v16 + 16);
  }

  if (v17)
  {
    v18 = [v5 URLContexts];
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10016787C(v19);
  }

  v20 = [a1 role];
  v21 = objc_allocWithZone(UISceneConfiguration);
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 initWithName:v22 sessionRole:v20];

  return v23;
}

id sub_100106BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_100106CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1000040A8(&qword_10035E8E8);
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = (&v37 - v4);
  v5 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for TransmissionProgress(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040A8(&qword_10035E8F0);
  __chkstk_darwin(v11 - 8);
  v39 = &v37 - v12;
  v13 = v1[4];
  if (v13)
  {
    v14 = v13[9];
    v15 = v13[10];
    sub_1000088DC(v13 + 6, v14);
    v16 = *(v15 + 32);

    v16(v46, v14, v15);
    if (*v1)
    {

      sub_1001DDADC(v7);

      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

        sub_100008FA0(v7, &qword_100354FD8);
        v17 = v39;
        (*(v40 + 56))(v39, 1, 1, v41);
LABEL_7:
        sub_10000CF4C(v17, v42, &qword_10035E8F0);
        return sub_100008964(v46);
      }

      v18 = v37;
      sub_10000C9A4(v7, v37);
      sub_1000089B0((v13 + 6), v43);

      v19 = v44;
      v20 = v45;
      sub_1000088DC(v43, v44);
      v21 = v1[2];
      if (v21)
      {
        v22 = (*(v20 + 144))(v18, *(*(v21 + 48) + 136), v19, v20);
        v24 = v23;
        sub_100008964(v43);
        v25 = static HorizontalAlignment.center.getter();
        v26 = v38;
        *v38 = v25;
        *(v26 + 8) = 0;
        *(v26 + 16) = 0;
        v27 = sub_1000040A8(&qword_10035E8F8);
        sub_100107188(v2, v18, v46, v22, v24, v26 + *(v27 + 44));

        LOBYTE(v22) = static Edge.Set.top.getter();
        sub_1000088DC(v46, v46[3]);
        EdgeInsets.init(_all:)();
        v28 = v41;
        v29 = v26 + *(v41 + 36);
        *v29 = v22;
        *(v29 + 8) = v30;
        *(v29 + 16) = v31;
        *(v29 + 24) = v32;
        *(v29 + 32) = v33;
        *(v29 + 40) = 0;
        v17 = v39;
        sub_10000CF4C(v26, v39, &qword_10035E8E8);
        (*(v40 + 56))(v17, 0, 1, v28);
        sub_100088598(v18);
        goto LABEL_7;
      }

      type metadata accessor for ConnectivityModel();
      v35 = &qword_100354F78;
      v36 = type metadata accessor for ConnectivityModel;
    }

    else
    {
      type metadata accessor for ConnectionModel(0);
      v35 = &qword_100354F88;
      v36 = type metadata accessor for ConnectionModel;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    v35 = &qword_100354D40;
    v36 = type metadata accessor for UIMetrics;
  }

  sub_1001087F4(v35, v36);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100107188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v175 = a4;
  v176 = a5;
  v160 = a2;
  v173 = sub_1000040A8(&qword_10035E900);
  __chkstk_darwin(v173);
  KeyPath = &v158 - v9;
  v10 = sub_1000040A8(&qword_100354FA0);
  v161 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v158 - v11;
  *&v166 = sub_1000040A8(&qword_10035E908);
  *&v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = &v158 - v13;
  v162 = sub_1000040A8(&qword_10035E910);
  __chkstk_darwin(v162);
  v167 = &v158 - v14;
  *&v165 = sub_1000040A8(&qword_10035E918);
  __chkstk_darwin(v165);
  v168 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v158 - v17;
  __chkstk_darwin(v19);
  v174 = &v158 - v20;
  v178 = sub_1000040A8(&qword_10035E920);
  __chkstk_darwin(v178);
  v22 = &v158 - v21;
  v170 = sub_1000040A8(&qword_10035E928);
  __chkstk_darwin(v170);
  v171 = &v158 - v23;
  v179 = sub_1000040A8(&qword_10035E930);
  __chkstk_darwin(v179);
  v172 = &v158 - v24;
  v25 = type metadata accessor for Font.Leading();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v29 = &v158 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    type metadata accessor for ConnectivityModel();
    v156 = &qword_100354F78;
    v157 = type metadata accessor for ConnectivityModel;
LABEL_31:
    sub_1001087F4(v156, v157);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v31 = 1 << *(*(v30 + 48) + 136);
  v180 = v22;
  v181 = a6;
  if ((v31 & 0x1D8) != 0)
  {
    *v188 = v175;
    *&v188[8] = v176;
    v32 = v27;
    sub_100031770();

    v33 = Text.init<A>(_:)();
    v35 = v34;
    v37 = v36;
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    (*(v26 + 104))(v29, enum case for Font.Leading.tight(_:), v32);
    Font.leading(_:)();

    (*(v26 + 8))(v29, v32);
    v38 = Text.font(_:)();
    v40 = v39;
    LOBYTE(v32) = v41;

    sub_1000317C4(v33, v35, v37 & 1);

    static Color.white.getter();
    v42 = Text.foregroundColor(_:)();
    v175 = v43;
    v176 = v42;
    v45 = v44;
    v174 = v46;

    sub_1000317C4(v38, v40, v32 & 1);

    v47 = *(v177 + 32);
    if (v47)
    {
      v48 = *(v47 + 112);

      v49 = v48;
      v50 = static UIContentSizeCategory.>= infix(_:_:)();

      v177 = (v50 & 1) == 0;
      KeyPath = swift_getKeyPath();
      v51 = *(v47 + 112);
      v52 = static UIContentSizeCategory.>= infix(_:_:)();

      v53 = (v52 & 1) == 0;
      v54 = swift_getKeyPath();
      v55 = v45 & 1;
      v185[0] = v45 & 1;
      v56 = v50 & 1;
      v184[0] = v56;
      v57 = *(v47 + 112);
      static Alignment.center.getter();
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *(&v182[3] + 7) = *&v186[48];
      *(&v182[4] + 7) = *&v186[64];
      *(&v182[5] + 7) = *&v186[80];
      *(&v182[6] + 7) = *&v186[96];
      *(v182 + 7) = *v186;
      *(&v182[1] + 7) = *&v186[16];
      *(&v182[2] + 7) = *&v186[32];
      v58 = *(v47 + 112);

      v59 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v59)
      {
        v60 = 1.0;
      }

      else
      {
        v60 = 0.5;
      }

      v61 = swift_getKeyPath();
      *&v188[129] = v182[4];
      *&v188[145] = v182[5];
      *&v188[161] = v182[6];
      *&v188[65] = v182[0];
      *&v188[81] = v182[1];
      *&v188[97] = v182[2];
      *v188 = v176;
      *&v188[8] = v175;
      v188[16] = v55;
      *&v188[24] = v174;
      *&v188[32] = KeyPath;
      *&v188[40] = v177;
      v188[48] = v56;
      *&v188[56] = v54;
      v188[64] = v53;
      *&v188[113] = v182[3];
      *&v188[176] = *(&v182[6] + 15);
      *&v188[184] = v61;
      *&v188[192] = v60;
      v62 = *&v188[112];
      v63 = v171;
      *(v171 + 96) = *&v188[96];
      *(v63 + 112) = v62;
      v64 = *&v188[144];
      *(v63 + 128) = *&v188[128];
      *(v63 + 144) = v64;
      v65 = *&v188[48];
      *(v63 + 32) = *&v188[32];
      *(v63 + 48) = v65;
      v66 = *&v188[80];
      *(v63 + 64) = *&v188[64];
      *(v63 + 80) = v66;
      v67 = *&v188[16];
      *v63 = *v188;
      *(v63 + 16) = v67;
      v68 = *&v188[176];
      *(v63 + 160) = *&v188[160];
      *(v63 + 176) = v68;
      *(v63 + 192) = *&v188[192];
      swift_storeEnumTagMultiPayload();
      sub_100006C20(v188, v187, &qword_10035E958);
      sub_1000040A8(&qword_10035E958);
      sub_100009274(&qword_10035E960, &qword_10035E900);
      sub_10010896C();
      v69 = v172;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v69, v180, &qword_10035E930);
      swift_storeEnumTagMultiPayload();
      sub_100108B68();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v188, &qword_10035E958);
      v70 = v69;
      v71 = &qword_10035E930;
      return sub_100008FA0(v70, v71);
    }

    goto LABEL_30;
  }

  if ((v31 & 0x203) != 0)
  {
    v159 = v27;
    *v188 = *(v160 + *(type metadata accessor for TransmissionProgress(0) + 28));
    v188[8] = 0;
    v187[0] = 0x4059000000000000;
    sub_100108848();
    ProgressView.init<A>(value:total:)();
    v73 = a3[3];
    v72 = a3[4];
    v74 = sub_1000088DC(a3, v73);
    *&v188[24] = v73;
    *&v188[32] = *(v72 + 8);
    v75 = sub_10007E56C(v188);
    (*(*(v73 - 8) + 16))(v75, v74, v73);
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_10010889C();
    v76 = v163;
    View.progressViewStyle<A>(_:)();
    (*(v161 + 8))(v12, v10);
    sub_1001088F0(v188);
    v78 = a3[3];
    v77 = a3[4];
    sub_1000088DC(a3, v78);
    (*(*(v77 + 8) + 8))(v78);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v79 = v167;
    (*(v164 + 32))(v167, v76, v166);
    v80 = (v79 + *(v162 + 36));
    v81 = *(&v190[10] + 8);
    v82 = *(&v190[12] + 8);
    v80[4] = *(&v190[11] + 8);
    v80[5] = v82;
    v80[6] = *(&v190[13] + 8);
    v83 = *(&v190[8] + 8);
    *v80 = *(&v190[7] + 8);
    v80[1] = v83;
    v80[2] = *(&v190[9] + 8);
    v80[3] = v81;
    v84 = sub_1000088DC(a3, a3[3]);
    v85 = *v84;
    v166 = *(*v84 + 152);
    v164 = *(v85 + 168);
    LOBYTE(v77) = static Edge.Set.all.getter();
    sub_10000CF4C(v79, v18, &qword_10035E910);
    v86 = &v18[*(v165 + 36)];
    *v86 = v77;
    *(v86 + 24) = v164;
    *(v86 + 8) = v166;
    v86[40] = 0;
    sub_10000CF4C(v18, v174, &qword_10035E918);
    *v188 = v175;
    *&v188[8] = v176;
    sub_100031770();

    v87 = Text.init<A>(_:)();
    v175 = v88;
    v176 = v87;
    LOBYTE(v77) = v89;
    v167 = v90;
    v91 = sub_1000088DC(a3, a3[3]);
    v92 = *(*v91 + 184);
    v165 = *(*v91 + 200);
    v166 = v92;
    LODWORD(v164) = static Edge.Set.all.getter();
    v93 = v77 & 1;
    v188[0] = v77 & 1;
    LOBYTE(v187[0]) = 0;
    static Font.body.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    v94 = v159;
    (*(v26 + 104))(v29, enum case for Font.Leading.tight(_:), v159);
    v163 = Font.leading(_:)();

    (*(v26 + 8))(v29, v94);
    v162 = swift_getKeyPath();
    v161 = static Color.white.getter();
    v160 = swift_getKeyPath();
    v95 = *(v177 + 32);
    if (v95)
    {
      v96 = *(v95 + 112);

      v97 = v96;
      v98 = static UIContentSizeCategory.>= infix(_:_:)();

      v177 = (v98 & 1) == 0;
      v159 = swift_getKeyPath();
      v99 = v98 & 1;
      v189 = v98 & 1;
      v100 = *(v95 + 112);
      v101 = static UIContentSizeCategory.>= infix(_:_:)();

      v102 = (v101 & 1) == 0;
      v103 = swift_getKeyPath();
      v104 = *(v95 + 112);
      static Alignment.center.getter();
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *(&v190[3] + 7) = *(&v190[17] + 8);
      *(&v190[4] + 7) = *(&v190[18] + 8);
      *(&v190[5] + 7) = *(&v190[19] + 8);
      *(&v190[6] + 7) = *(&v190[20] + 8);
      *(v190 + 7) = *(&v190[14] + 8);
      *(&v190[1] + 7) = *(&v190[15] + 8);
      *(&v190[2] + 7) = *(&v190[16] + 8);
      v105 = *(v95 + 112);

      v106 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v106)
      {
        v107 = 1.0;
      }

      else
      {
        v107 = 0.5;
      }

      v108 = swift_getKeyPath();
      *v186 = v176;
      *&v186[8] = v175;
      v186[16] = v93;
      *&v186[24] = v167;
      v186[32] = v164;
      *&v186[56] = v165;
      *&v186[40] = v166;
      v186[72] = 0;
      *&v186[80] = v162;
      *&v186[88] = v163;
      *&v186[96] = v160;
      *&v186[104] = v161;
      *&v186[112] = v159;
      *&v186[120] = v177;
      v186[128] = v99;
      *&v186[136] = v103;
      v186[144] = v102;
      *&v186[209] = v190[4];
      *&v186[225] = v190[5];
      *&v186[241] = v190[6];
      *&v186[145] = v190[0];
      *&v186[161] = v190[1];
      *&v186[177] = v190[2];
      *&v186[193] = v190[3];
      *&v186[256] = *(&v190[6] + 15);
      *&v186[264] = v108;
      *&v186[272] = v107;
      v109 = v168;
      sub_100006C20(v174, v168, &qword_10035E918);
      memcpy(v185, v186, sizeof(v185));
      v110 = KeyPath;
      sub_100006C20(v109, KeyPath, &qword_10035E918);
      v111 = *(sub_1000040A8(&qword_10035E948) + 48);
      memcpy(v187, v185, sizeof(v187));
      memcpy((v110 + v111), v185, 0x118uLL);
      memcpy(v188, v185, sizeof(v188));
      sub_100006C20(v186, v184, &qword_10035E950);
      sub_100006C20(v187, v184, &qword_10035E950);
      sub_100008FA0(v188, &qword_10035E950);
      sub_100008FA0(v109, &qword_10035E918);
      sub_100006C20(v110, v171, &qword_10035E900);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_10035E958);
      sub_100009274(&qword_10035E960, &qword_10035E900);
      sub_10010896C();
      v112 = v172;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v112, v180, &qword_10035E930);
      swift_storeEnumTagMultiPayload();
      sub_100108B68();
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v186, &qword_10035E950);
      sub_100008FA0(v112, &qword_10035E930);
      sub_100008FA0(v110, &qword_10035E900);
      v70 = v174;
      v71 = &qword_10035E918;
      return sub_100008FA0(v70, v71);
    }

    goto LABEL_30;
  }

  *v188 = v175;
  *&v188[8] = v176;
  sub_100031770();

  v114 = Text.init<A>(_:)();
  v116 = v115;
  v118 = v117;
  v120 = a3[3];
  v119 = a3[4];
  sub_1000088DC(a3, v120);
  (*(*(v119 + 8) + 32))(v120);
  v173 = Text.font(_:)();
  v174 = v121;
  v123 = v122;
  v125 = v124;

  sub_1000317C4(v114, v116, v118 & 1);

  v126 = *(v177 + 32);
  if (!v126)
  {
LABEL_30:
    type metadata accessor for UIMetrics();
    v156 = &qword_100354D40;
    v157 = type metadata accessor for UIMetrics;
    goto LABEL_31;
  }

  v127 = *(v126 + 72);
  v128 = *(v126 + 80);
  sub_1000088DC((v126 + 48), v127);
  v129 = *(v128 + 128);
  swift_retain_n();
  v129(v30, v127, v128);

  v130 = v173;
  v131 = Text.foregroundColor(_:)();
  v176 = v132;
  v177 = v131;
  v134 = v133;
  v175 = v135;
  sub_1000317C4(v130, v123, v125 & 1);

  v136 = *(v126 + 112);

  v137 = static UIContentSizeCategory.>= infix(_:_:)();

  v174 = (v137 & 1) == 0;
  v173 = swift_getKeyPath();
  v138 = *(v126 + 112);

  v139 = static UIContentSizeCategory.>= infix(_:_:)();

  v140 = (v139 & 1) == 0;
  v141 = swift_getKeyPath();
  LOBYTE(v187[0]) = v134 & 1;
  v142 = v137 & 1;
  v186[0] = v137 & 1;
  v143 = *(v126 + 112);

  static Alignment.center.getter();
  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static Alignment.center.getter();
    if (static Alignment.== infix(_:_:)())
    {
      static Alignment.leading.getter();
    }
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v183[55] = *&v188[48];
  *&v183[71] = *&v188[64];
  *&v183[87] = *&v188[80];
  *&v183[103] = *&v188[96];
  *&v183[7] = *v188;
  *&v183[23] = *&v188[16];
  *&v183[39] = *&v188[32];
  v144 = *(v126 + 112);

  v145 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v145)
  {
    v146 = 1.0;
  }

  else
  {
    v146 = 0.5;
  }

  v147 = swift_getKeyPath();
  v148 = *&v183[80];
  v149 = v180;
  *(v180 + 129) = *&v183[64];
  *(v149 + 145) = v148;
  *(v149 + 161) = *&v183[96];
  v150 = *&v183[16];
  *(v149 + 65) = *v183;
  *(v149 + 81) = v150;
  v151 = *&v183[48];
  *(v149 + 97) = *&v183[32];
  v152 = v176;
  *v149 = v177;
  *(v149 + 8) = v152;
  *(v149 + 16) = v134 & 1;
  v154 = v173;
  v153 = v174;
  *(v149 + 24) = v175;
  *(v149 + 32) = v154;
  *(v149 + 40) = v153;
  *(v149 + 48) = v142;
  *(v149 + 56) = v141;
  *(v149 + 64) = v140;
  v155 = *&v183[111];
  *(v149 + 113) = v151;
  *(v149 + 176) = v155;
  *(v149 + 184) = v147;
  *(v149 + 192) = v146;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_10035E958);
  sub_100108B68();
  sub_10010896C();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001087F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100108848()
{
  result = qword_10035E938;
  if (!qword_10035E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E938);
  }

  return result;
}

unint64_t sub_10010889C()
{
  result = qword_10035E940;
  if (!qword_10035E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E940);
  }

  return result;
}

unint64_t sub_10010896C()
{
  result = qword_10035E968;
  if (!qword_10035E968)
  {
    sub_100008CF0(&qword_10035E958);
    sub_100108A24();
    sub_100009274(&qword_100356C58, &qword_100356C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E968);
  }

  return result;
}

unint64_t sub_100108A24()
{
  result = qword_10035E970;
  if (!qword_10035E970)
  {
    sub_100008CF0(&qword_10035E978);
    sub_100108AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E970);
  }

  return result;
}

unint64_t sub_100108AB0()
{
  result = qword_10035E980;
  if (!qword_10035E980)
  {
    sub_100008CF0(&qword_10035E988);
    sub_10003F7B0();
    sub_100009274(&qword_100356750, &qword_100356758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E980);
  }

  return result;
}

unint64_t sub_100108B68()
{
  result = qword_10035E990;
  if (!qword_10035E990)
  {
    sub_100008CF0(&qword_10035E930);
    sub_100009274(&qword_10035E960, &qword_10035E900);
    sub_10010896C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E990);
  }

  return result;
}

unint64_t sub_100108C24()
{
  result = qword_10035E998;
  if (!qword_10035E998)
  {
    sub_100008CF0(&qword_10035E8F0);
    sub_100108CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E998);
  }

  return result;
}

unint64_t sub_100108CA8()
{
  result = qword_10035E9A0;
  if (!qword_10035E9A0)
  {
    sub_100008CF0(&qword_10035E8E8);
    sub_100009274(&qword_10035E9A8, &qword_10035E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E9A0);
  }

  return result;
}

unint64_t sub_100108D60(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x636E656772656D45;
    if (a1 != 8)
    {
      v5 = 0x736567617373654DLL;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0xD000000000000015;
    if (a1 == 5)
    {
      v6 = 0x657263536B636F4CLL;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E776F6E6B6E55;
    v2 = 0x436C6F72746E6F43;
    v3 = 0x6163696C706D6F43;
    if (a1 != 3)
    {
      v3 = 0x6142737574617453;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x73676E6974746553;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100108F3C@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  if (a1)
  {

    countAndFlagsBits = sub_100067850();
    object = v4;

    if (!object)
    {
      v6 = [objc_opt_self() mainBundle];
      v21._object = 0x8000000100299C00;
      v7._countAndFlagsBits = 0xD000000000000013;
      v7._object = 0x80000001002973D0;
      v8.value._object = 0x80000001002962C0;
      v21._countAndFlagsBits = 0xD000000000000038;
      v8.value._countAndFlagsBits = 0xD000000000000012;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v21);
      countAndFlagsBits = v10._countAndFlagsBits;
      object = v10._object;
    }

    v11 = [objc_opt_self() mainBundle];
    v22._object = 0x800000010029D690;
    v12._countAndFlagsBits = 0xD00000000000001ALL;
    v12._object = 0x800000010029B480;
    v13.value._object = 0x80000001002962C0;
    v22._countAndFlagsBits = 0xD000000000000036;
    v13.value._countAndFlagsBits = 0xD000000000000012;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v22);

    v16 = sub_100020FB4(countAndFlagsBits, object);
    v18 = v17;

    type metadata accessor for UIMetrics();
    sub_100109154(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.init()();
    a2->_countAndFlagsBits = result;
    a2->_object = v20;
    a2[1] = v15;
    a2[2]._countAndFlagsBits = v16;
    a2[2]._object = v18;
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_100109154(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100109154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001091AC()
{
  result = qword_10035EA68;
  if (!qword_10035EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EA68);
  }

  return result;
}

void *sub_100109224()
{
  v1 = v0;
  type metadata accessor for CoreAnalyticsAgent();
  swift_allocObject();
  v2 = sub_10017E890();
  v0[2] = v2;
  sub_1000040A8(&qword_10035EBB8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100285480;
  v4 = type metadata accessor for AnalyticsObstruction();
  v5 = swift_allocObject();
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 1;
  *(v5 + 73) = 512;
  *(v5 + 16) = v2;
  *(v3 + 56) = v4;
  *(v3 + 64) = &off_100336488;
  *(v3 + 32) = v5;
  v6 = type metadata accessor for AnalyticsQuestionnaireProgressTiming(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_data;
  v9 = _s8SOSBuddy4DataVMa_1(0);
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = v7 + OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_currentQuestionnaireId;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v7 + 16) = v2;
  *(v3 + 96) = v6;
  *(v3 + 104) = &off_10032EE38;
  *(v3 + 72) = v7;
  v11 = type metadata accessor for AnalyticsSatelliteConnectionAttempt(0);
  swift_allocObject();
  v12 = sub_100234830(v2);
  *(v3 + 136) = v11;
  *(v3 + 144) = &off_100339FA0;
  *(v3 + 112) = v12;
  v13 = v1[2];
  v14 = type metadata accessor for AnalyticsSatelliteConnectionStats();
  swift_allocObject();
  v15 = sub_100077944(v13);
  *(v3 + 176) = v14;
  *(v3 + 184) = &off_10032A638;
  *(v3 + 152) = v15;
  v16 = v1[2];
  v17 = type metadata accessor for AnalyticsSessionStart(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_data;
  v20 = _s8SOSBuddy4DataVMa_2(0);
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  v21 = v18 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentTarget;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  *(v21 + 40) = 1;
  *(v18 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentSuggestedActions) = &_swiftEmptySetSingleton;
  v22 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsSessionStart_currentLinkState;
  v23 = type metadata accessor for LinkState(0);
  (*(*(v23 - 8) + 56))(v18 + v22, 1, 1, v23);
  *(v18 + 16) = v16;
  *(v3 + 216) = v17;
  *(v3 + 224) = &off_100331368;
  *(v3 + 192) = v18;
  started = type metadata accessor for AnalyticsStartMessage(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_data;
  v27 = type metadata accessor for Data(0);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = v25 + OBJC_IVAR____TtC8SOSBuddy21AnalyticsStartMessage_currentTarget;
  *v28 = 0u;
  *(v28 + 16) = 0u;
  *(v28 + 32) = 0;
  *(v28 + 40) = 1;
  *(v25 + 16) = v16;
  *(v3 + 256) = started;
  *(v3 + 264) = &off_100329810;
  *(v3 + 232) = v25;
  v29 = type metadata accessor for AnalyticsStateRetention(0);
  swift_allocObject();
  v30 = sub_10009521C(v16);
  *(v3 + 296) = v29;
  *(v3 + 304) = &off_10032C298;
  *(v3 + 272) = v30;
  v1[3] = v3;
  v31 = v1[2];
  type metadata accessor for AnalyticsEntryPoint();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  v1[4] = v32;
  v33 = qword_100353A10;
  swift_retain_n();
  swift_retain_n();

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000F53C(v34, qword_100381C80);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    *v37 = 136446210;
    type metadata accessor for Analytics();

    v39 = String.init<A>(describing:)();
    v41 = sub_10017C9E8(v39, v40, &v43);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "[%{public}s] init", v37, 0xCu);
    sub_100008964(v38);
  }

  return v1;
}

uint64_t sub_100109740()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for Analytics();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1001098CC()
{
  sub_100109740();

  return swift_deallocClassInstance();
}

uint64_t sub_100109928()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v3 = static OS_dispatch_queue.main.getter();
  v4 = enum case for DispatchPredicate.onQueue(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v6 = _dispatchPreconditionTest(_:)();
  v7 = *(v1 + 8);
  result = v7(v3, v0);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  *v3 = static OS_dispatch_queue.main.getter();
  v5(v3, v4, v0);
  v9 = _dispatchPreconditionTest(_:)();
  result = v7(v3, v0);
  if ((v9 & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_100109A94(uint64_t a1)
{
  if (sub_100071A54(0, a1))
  {
    return 0x636E656772656D45;
  }

  if (sub_100071A54(1, a1))
  {
    return 4281170;
  }

  if (sub_100071A54(4, a1))
  {
    return 0x794D646E6946;
  }

  if (sub_100071A54(2, a1))
  {
    return 0x6E6967617373654DLL;
  }

  if (sub_100071A54(3, a1))
  {
    return 0x74756F797254;
  }

  return 0;
}

id sub_100109C94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeakCADisplayLinkTarget();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_100109D28@<Q0>(uint64_t a1@<X8>)
{
  sub_1000A7028(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v10;
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_100109DB8()
{
  result = qword_10035EBF0;
  if (!qword_10035EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EBF0);
  }

  return result;
}

uint64_t sub_100109E0C()
{
  v1 = 0x747865742ELL;
  v2 = 0x7465446C6C61662ELL;
  if (*v0 != 2)
  {
    v2 = 0x617070616B2ELL;
  }

  if (!*v0)
  {
    v1 = 0x6C6C61632ELL;
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

uint64_t sub_100109E88()
{
  if (*v0)
  {
    return 0x7474696D6D6F632ELL;
  }

  else
  {
    return 0x6D6D6F43746F6E2ELL;
  }
}

uint64_t sub_100109F24()
{
  v0._countAndFlagsBits = 0x203A646928;
  v0._object = 0xE500000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

unint64_t sub_10010A01C()
{
  v1 = *v0;
  v2 = 0x75646F72746E692ELL;
  v3 = 0x6F6974736575712ELL;
  v4 = 0x6F5479646165722ELL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001CLL;
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

uint64_t sub_10010A0E4()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v2);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010BB20(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10002B3E0(v7, v4);
        v24 = 0;
        v25 = 0xE000000000000000;
        _StringGuts.grow(_:)(39);
        v9._countAndFlagsBits = 0xD000000000000024;
        v9._object = 0x800000010029D830;
        String.append(_:)(v9);
        _print_unlocked<A, B>(_:_:)();
        v10._countAndFlagsBits = 41;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        v11 = v24;
        sub_10002B444(v4);
        return v11;
      }

      v19 = *v7;
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(30);
      v20._countAndFlagsBits = 0xD00000000000001BLL;
      v20._object = 0x800000010029D810;
      String.append(_:)(v20);
      v23 = v19;
    }

    else
    {
      v13 = *v7;
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);
      v14._countAndFlagsBits = 0xD000000000000016;
      v14._object = 0x800000010029D860;
      String.append(_:)(v14);
      v23 = v13;
    }

    _print_unlocked<A, B>(_:_:)();
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v15 = *v7;
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v24 = 0xD000000000000020;
    v25 = 0x800000010029D7E0;
    if (v15)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v15)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = v17;
    String.append(_:)(*&v16);

LABEL_18:
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    return v24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x65726F6C7078652ELL;
  }
}

uint64_t sub_10010A3FC()
{
  v1 = 0x6C616D696E696D2ELL;
  if (*v0 != 1)
  {
    v1 = 0x6D6F747375632ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F632ELL;
  }
}

uint64_t sub_10010A458()
{
  v1 = v0;
  _StringGuts.grow(_:)(65);
  v2._countAndFlagsBits = 0x203A657A697328;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_1000E45F8(*v1, v1[1]);
  String.append(_:)(v3);

  v4._object = 0x800000010029D880;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_1000E8FF8(2, v1[2], v1[3], v1[4], v1[5]);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x646E61707865202CLL;
  v6._object = 0xEC000000203A6465;
  String.append(_:)(v6);
  if (*(v0 + 48))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 48))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 0xD000000000000013;
  v10._object = 0x800000010029D8A0;
  String.append(_:)(v10);
  sub_10010BB84();
  v11._countAndFlagsBits = Set.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

unint64_t sub_10010A5F0()
{
  v1 = *v0;
  v2 = 0x716552726573752ELL;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0xD000000000000025;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_10010A6A8()
{
  if (*v0 == 5)
  {
    return 7237422;
  }

  v2._countAndFlagsBits = 0x2866666F2ELL;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0;
}

unint64_t sub_10010A744()
{
  v1 = 0x6E616C707269612ELL;
  if (*v0 != 2)
  {
    v1 = 0x747365676E6F632ELL;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10010A7D4()
{
  v1 = *v0;
  v2 = 0x6E656772656D652ELL;
  v3 = 0x6967617373656D2ELL;
  v4 = 0x74754F7972742ELL;
  if (v1 != 3)
  {
    v4 = 0x794D646E69662ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64697364616F722ELL;
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

uint64_t sub_10010A87C()
{
  v1 = 0x696C6C657461732ELL;
  if (*v0 != 1)
  {
    v1 = 0x656E7265746E692ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E752ELL;
  }
}

uint64_t sub_10010A8E0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    if (a1 == 10)
    {
      v6 = 0xD00000000000001BLL;
    }

    if (a1 == 9)
    {
      v6 = 0xD00000000000001DLL;
    }

    v7 = 0xD000000000000015;
    v8 = 0xD000000000000015;
    if (a1 != 7)
    {
      v8 = 0x65766F646E61682ELL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x716552726573752ELL;
    v2 = 0xD000000000000012;
    v3 = 0x6E656772656D652ELL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x794D646E69662ELL;
    if (a1 != 1)
    {
      v4 = 0x6E616C707269612ELL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10010AAA8()
{
  _StringGuts.grow(_:)(28);
  v0._countAndFlagsBits = 0x676E696461656828;
  v0._object = 0xEA0000000000203ALL;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 0x746176656C65202CLL;
  v1._object = 0xED0000203A6E6F69;
  String.append(_:)(v1);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_10010ABE4()
{
  v1 = 0x617470656363612ELL;
  if (*v0 != 1)
  {
    v1 = 0x646F6F672ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6375727473626F2ELL;
  }
}

uint64_t sub_10010AC6C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000017;
    v6 = 0xD000000000000015;
    if (v1 != 6)
    {
      v5 = 0xD000000000000015;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x654D74726174732ELL;
    v3 = 0xD000000000000018;
    if (v1 != 2)
    {
      v3 = 0xD000000000000015;
    }

    if (*v0)
    {
      v2 = 0x73654D747865742ELL;
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
}

uint64_t sub_10010AD90()
{
  v1 = 0x73654D747865742ELL;
  if (*v0 != 1)
  {
    v1 = 0x6F697461636F6C2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D74726174732ELL;
  }
}

uint64_t sub_10010AE0C()
{
  v1 = 0x676E6F43746F6E2ELL;
  v2 = 0x74617265646F6D2ELL;
  if (*v0 != 2)
  {
    v2 = 0x6572657665732ELL;
  }

  if (*v0)
  {
    v1 = 0x746867696C2ELL;
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

unint64_t sub_10010AE94(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7463656E6E6F632ELL;
    v6 = 0x6E6E6F43746F6E2ELL;
    if (a1 != 2)
    {
      v6 = 0x69636E797365722ELL;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656369767265732ELL;
    v2 = 0xD000000000000013;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x656E6E6F6365722ELL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10010AFF0()
{
  v1 = *v0;
  v2 = 0x736F507065656B2ELL;
  v3 = 0x6769526E7275742ELL;
  v4 = 0x6F72416E7275742ELL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x66654C6E7275742ELL;
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

uint64_t sub_10010B0AC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0x287265746E6563;
    v3 = 0xE700000000000000;
  }

  else
  {
    v2 = 678457204;
    v3 = 0xE400000000000000;
  }

  String.append(_:)(*&v2);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0;
}

uint64_t sub_10010B15C(double a1, double a2, double a3, double a4)
{
  _StringGuts.grow(_:)(56);
  v8._countAndFlagsBits = 0x6165724165666173;
  v8._object = 0xEA0000000000203ALL;
  String.append(_:)(v8);
  if (round(a1 * 100.0) / 100.0 == a1)
  {
    v9 = Double.description.getter();
    v11 = v10;
  }

  else
  {
    v12._countAndFlagsBits = 126;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    Double.write<A>(to:)();
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v13 = v11;
  String.append(_:)(*&v9);

  v14._countAndFlagsBits = 0x697463616E69202CLL;
  v14._object = 0xEC000000203A6576;
  String.append(_:)(v14);
  if (round(a2 * 100.0) / 100.0 == a2)
  {
    v15 = Double.description.getter();
    v17 = v16;
  }

  else
  {
    v18._countAndFlagsBits = 126;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    Double.write<A>(to:)();
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v19 = v17;
  String.append(_:)(*&v15);

  v20._countAndFlagsBits = 0x63656E6E6F63202CLL;
  v20._object = 0xEE00203A676E6974;
  String.append(_:)(v20);
  if (round(a3 * 100.0) / 100.0 == a3)
  {
    v21 = Double.description.getter();
    v23 = v22;
  }

  else
  {
    v24._countAndFlagsBits = 126;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    Double.write<A>(to:)();
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v25 = v23;
  String.append(_:)(*&v21);

  v26._countAndFlagsBits = 0x656C706D6F63202CLL;
  v26._object = 0xEC000000203A6574;
  String.append(_:)(v26);
  if (round(a4 * 100.0) / 100.0 == a4)
  {
    v27 = Double.description.getter();
    v29 = v28;
  }

  else
  {
    v30._countAndFlagsBits = 126;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    Double.write<A>(to:)();
    v27 = 0;
    v29 = 0xE000000000000000;
  }

  v31 = v29;
  String.append(_:)(*&v27);

  return 0;
}

uint64_t sub_10010B43C()
{
  v1 = *v0;
  if (*(v0 + 32))
  {
    v9 = 0x657263536C6C7566;
    v2 = sub_10010B15C(v1, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  }

  else
  {
    v9 = 0x2872656E6E6162;
    if (v1 == round(v1 * 100.0) / 100.0)
    {
      v2 = Double.description.getter();
      v5 = v4;
    }

    else
    {
      v6._countAndFlagsBits = 126;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      Double.write<A>(to:)();
      v2 = 0;
      v5 = 0xE000000000000000;
    }

    v3 = v5;
  }

  String.append(_:)(*&v2);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9;
}

uint64_t sub_10010B550(__int16 a1)
{
  _StringGuts.grow(_:)(41);
  v2._countAndFlagsBits = 0x7041656977657473;
  v2._object = 0xED0000203A644970;
  String.append(_:)(v2);
  _print_unlocked<A, B>(_:_:)();
  v3._object = 0x800000010029DB70;
  v3._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v3);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  return 0;
}

uint64_t sub_10010B644()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_10010B550(v1 | *v0);
}

unint64_t sub_10010B660(char a1)
{
  _StringGuts.grow(_:)(24);

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return 0xD000000000000016;
}

uint64_t sub_10010B708(unsigned __int16 a1)
{
  v1 = a1;
  if (!(a1 >> 14))
  {
    v3._countAndFlagsBits = 0x6465726566666F2ELL;
    v3._object = 0xE900000000000028;
    String.append(_:)(v3);
    goto LABEL_11;
  }

  if (a1 >> 14 == 1)
  {
    result = 0x746176697463612ELL;
    if (v1 == 6)
    {
      return result;
    }

    v4 = 0xEB00000000286465;
    String.append(_:)(*&result);
LABEL_11:
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 41;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    return 0;
  }

  if (a1 == 0x8000)
  {
    return 0x656C65636E61632ELL;
  }

  else
  {
    return 0x6465736F6C632ELL;
  }
}

uint64_t sub_10010B854()
{
  v1 = *v0;
  v2 = 0x6E656772656D652ELL;
  v3 = 0x74754F7972742ELL;
  v4 = 0x6567617373656D2ELL;
  if (v1 != 4)
  {
    v4 = 1936552750;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0x794D646E69662ELL;
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

uint64_t sub_10010B914()
{
  v0._countAndFlagsBits = 91;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  Double.write<A>(to:)();
  v1._countAndFlagsBits = 8236;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  Double.write<A>(to:)();
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0;
}

uint64_t sub_10010B9C0(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1 != 2)
  {
    v13 = 0;
    _print_unlocked<A, B>(_:_:)();
    return v13;
  }

  if (a2)
  {
    v13 = 15697;
    v4 = *(a2 + 16);
    v5 = *(a2 + 24);
    if (a4)
    {
      sub_1000C70B0(a2);

      v8._countAndFlagsBits = v4;
      v8._object = v5;
      String.append(_:)(v8);

      v9._countAndFlagsBits = 43;
      v9._object = 0xE100000000000000;
      String.append(_:)(v9);
      v10._countAndFlagsBits = a3;
      v10._object = a4;
      String.append(_:)(v10);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      sub_1000C70B0(a2);

      v12._countAndFlagsBits = v4;
      v12._object = v5;
      String.append(_:)(v12);
    }

    return v13;
  }

  return 4144465;
}

uint64_t sub_10010BB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010BB84()
{
  result = qword_10035EBF8;
  if (!qword_10035EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EBF8);
  }

  return result;
}

uint64_t sub_10010BC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000040A8(&qword_10035EC00);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v8 = sub_1000040A8(&qword_10035EC08);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = *(v2 + 40);
  if (v12 && (sub_10010CCF8(*(v2 + 32), v12, &v36), v37))
  {
    v30 = &v27;
    v41 = v36;
    v42 = v37;
    v43 = v38;
    v44 = v39;
    v45 = v40;
    __chkstk_darwin(v13);
    *(&v27 - 2) = &v41;
    *(&v27 - 1) = v2;
    v31 = a2;
    v29 = sub_1000040A8(&qword_10035EC10);
    v28 = sub_1000040A8(&qword_10035EC18);
    v14 = sub_100009274(&qword_10035EC20, &qword_10035EC10);
    v27 = a1;
    v15 = sub_100008CF0(&qword_10035EC28);
    v16 = sub_100009274(&qword_10035EC30, &qword_10035EC28);
    v32 = v15;
    v33 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v18 = v29;
    v19 = v28;
    View.toolbar<A>(content:)();
    sub_10010D084(&v36);
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    v32 = v18;
    v33 = v19;
    v34 = v14;
    v35 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v21 = sub_1000040A8(&qword_10035EC10);
    (*(*(v21 - 8) + 16))(v7, a1, v21);
    swift_storeEnumTagMultiPayload();
    v22 = sub_100008CF0(&qword_10035EC18);
    v23 = sub_100009274(&qword_10035EC20, &qword_10035EC10);
    v24 = sub_100008CF0(&qword_10035EC28);
    v25 = sub_100009274(&qword_10035EC30, &qword_10035EC28);
    v41 = v24;
    v42 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v41 = v21;
    v42 = v22;
    *&v43 = v23;
    *(&v43 + 1) = v26;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10010C0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000040A8(&qword_10035EC28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.bottomBar.getter();
  v11 = a1;
  v12 = a2;
  sub_10010D0F4();
  ToolbarItem<>.init(placement:content:)();
  sub_100009274(&qword_10035EC30, &qword_10035EC28);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

__n128 sub_10010C260@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __n128 *a3@<X8>)
{
  v6 = a2[1];
  v23 = *a2;
  v17 = *a1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v21 = a2[2];
  v22 = v6;
  v12 = swift_allocObject();
  v13 = a2[1];
  v12[1] = *a2;
  v12[2] = v13;
  v12[3] = a2[2];
  v20 = 0;
  sub_10010D198(a1, v18);
  sub_100006C20(&v23, v18, &qword_10035EC48);
  sub_100006C20(&v22, v18, &qword_100357580);
  sub_100006C20(&v21, v18, &qword_10035EC50);
  State.init(wrappedValue:)();
  v14 = v18[0];
  v15 = v19;
  result = v17;
  *a3 = v17;
  a3[1].n128_u64[0] = v7;
  a3[1].n128_u64[1] = v8;
  a3[2].n128_u8[0] = v9;
  a3[2].n128_u64[1] = v10;
  a3[3].n128_u64[0] = v11;
  a3[3].n128_u64[1] = sub_10010D190;
  a3[4].n128_u64[0] = v12;
  a3[4].n128_u8[8] = v14;
  a3[5].n128_u64[0] = v15;
  return result;
}

uint64_t sub_10010C3AC(uint64_t a1)
{
  if (*(a1 + 16))
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10010D590(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C4A8@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = sub_1000040A8(&qword_100357568);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - v4;
  v6 = swift_allocObject();
  v7 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = *(v1 + 80);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v14 = v1;
  sub_10010D498(v1, &v17);
  Button.init(action:label:)();
  v18 = *v1;
  v9 = *v1;
  v15 = *(v1 + 72);
  v16 = v9;

  sub_1000040A8(&qword_100354AA8);
  State.projectedValue.getter();
  v13 = v1;
  v12 = v1;
  sub_100009274(&qword_100357588, &qword_100357568);
  sub_100031770();
  View.confirmationDialog<A, B, C>(_:isPresented:titleVisibility:actions:message:)();

  sub_100032674(&v18);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10010C744@<X0>(uint64_t a1@<X8>)
{
  sub_100031770();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Color.white.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_1000317C4(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_10010C824(uint64_t a1)
{
  v7 = *(a1 + 40);
  v8 = v7;
  v2 = swift_allocObject();
  v3 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = *(a1 + 80);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  sub_100032618(&v8, v6);
  sub_10010D498(a1, v6);
  sub_100031770();
  return Button<>.init<A>(_:action:)();
}

uint64_t sub_10010C8E8(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  __chkstk_darwin(v14);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = *(a1 + 72);
  v21 = 0;
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.setter();
  sub_10000F574();
  v8 = static OS_dispatch_queue.main.getter();
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v19 = sub_100031EEC;
  v20 = v11;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v17 = sub_1001D2438;
  v18 = &unk_100330B38;
  v12 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  *&aBlock = _swiftEmptyArrayStorage;
  sub_10010D590(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v15 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v14);
}

uint64_t sub_10010CC04@<X0>(uint64_t a1@<X8>)
{
  sub_100031770();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

void sub_10010CCF8(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    if (a1 - 2 >= 7)
    {
      v41 = a3;
      v8 = *(a2 + 32);
      if (a1)
      {
        v26 = objc_opt_self();
        v27 = [v26 mainBundle];
        v44._object = 0x800000010029DBF0;
        v28._object = 0x800000010029DBD0;
        v44._countAndFlagsBits = 0xD00000000000002CLL;
        v28._countAndFlagsBits = 0xD000000000000019;
        v29.value._countAndFlagsBits = 0x5072656972726143;
        v29.value._object = 0xED00006E6F656769;
        v30._countAndFlagsBits = 0;
        v30._object = 0xE000000000000000;
        v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v44);
        countAndFlagsBits = v31._countAndFlagsBits;
        object = v31._object;

        v32 = [v26 mainBundle];
        v45._object = 0x800000010029DC60;
        v33._countAndFlagsBits = 0xD00000000000003CLL;
        v33._object = 0x800000010029DC20;
        v45._countAndFlagsBits = 0xD00000000000002BLL;
        v34.value._countAndFlagsBits = 0x5072656972726143;
        v34.value._object = 0xED00006E6F656769;
        v35._countAndFlagsBits = 0;
        v35._object = 0xE000000000000000;
        v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v45);
        v6 = v36._countAndFlagsBits;
        v7 = v36._object;

        v22 = [v26 mainBundle];
        v23 = 0xD000000000000014;
        v40 = 0x800000010029DCB0;
        v24 = 0x800000010029DC90;
        v25 = 0xD000000000000029;
      }

      else
      {
        v11 = objc_opt_self();
        v12 = [v11 mainBundle];
        v42._object = 0x800000010029DCE0;
        v13._object = 0x800000010029DBD0;
        v42._countAndFlagsBits = 0xD000000000000028;
        v13._countAndFlagsBits = 0xD000000000000019;
        v14.value._countAndFlagsBits = 0x5072656972726143;
        v14.value._object = 0xED00006E6F656769;
        v15._countAndFlagsBits = 0;
        v15._object = 0xE000000000000000;
        v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v42);
        countAndFlagsBits = v16._countAndFlagsBits;
        object = v16._object;

        v17 = [v11 mainBundle];
        v43._object = 0x800000010029DD90;
        v18._object = 0x800000010029DD10;
        v43._countAndFlagsBits = 0xD000000000000027;
        v18._countAndFlagsBits = 0x1000000000000074;
        v19.value._countAndFlagsBits = 0x5072656972726143;
        v19.value._object = 0xED00006E6F656769;
        v20._countAndFlagsBits = 0;
        v20._object = 0xE000000000000000;
        v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v43);
        v6 = v21._countAndFlagsBits;
        v7 = v21._object;

        v22 = [v11 mainBundle];
        v40 = 0x800000010029DDE0;
        v23 = 0xD00000000000001ALL;
        v24 = 0x800000010029DDC0;
        v25 = 0xD00000000000002ELL;
      }

      v37.value._countAndFlagsBits = 0x5072656972726143;
      v37.value._object = 0xED00006E6F656769;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, v37, v22, v38, *&v25);
      v9 = v39._countAndFlagsBits;
      v10 = v39._object;

      a3 = v41;
      goto LABEL_5;
    }

LABEL_4:
    countAndFlagsBits = 0;
    object = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_5:
    *a3 = countAndFlagsBits;
    a3[1] = object;
    a3[2] = v6;
    a3[3] = v7;
    a3[4] = v8;
    a3[5] = v9;
    a3[6] = v10;
    return;
  }

  __break(1u);
}

uint64_t sub_10010D084(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035EC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10010D0F4()
{
  result = qword_10035EC40;
  if (!qword_10035EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EC40);
  }

  return result;
}

uint64_t sub_10010D148()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10010D1D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10010D218(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10010D288()
{
  result = qword_10035EC58;
  if (!qword_10035EC58)
  {
    sub_100008CF0(&qword_10035EC60);
    sub_100008CF0(&qword_10035EC10);
    sub_100008CF0(&qword_10035EC18);
    sub_100009274(&qword_10035EC20, &qword_10035EC10);
    sub_100008CF0(&qword_10035EC28);
    sub_100009274(&qword_10035EC30, &qword_10035EC28);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EC58);
  }

  return result;
}

uint64_t sub_10010D4E0()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10010D540()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10010D578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010D590(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010D5D8()
{
  sub_100008CF0(&qword_100357568);
  sub_100009274(&qword_100357588, &qword_100357568);
  sub_100031770();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10010D6A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10010D6E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10010D76C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  sub_1001872F4(0, v1, 0);
  v3 = v2 + 64;
  result = _HashTable.startBucket.getter();
  v5 = result;
  v6 = 0;
  v7 = *(v2 + 36);
  v24 = v2 + 72;
  v25 = v1;
  v26 = v7;
  v27 = v2 + 64;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_22;
    }

    if (v7 != *(v2 + 36))
    {
      goto LABEL_23;
    }

    v28 = v6;
    v10 = *(v2 + 56) + 40 * v5;
    v31 = *(v10 + 8);
    v32 = *v10;
    v11 = *(v10 + 16);
    v29 = *(v10 + 25);
    v30 = *(v10 + 24);
    v12 = v2;
    v13 = *(v10 + 32);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];

    if (v14 >= v15 >> 1)
    {
      result = sub_1001872F4((v15 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v16 = &_swiftEmptyArrayStorage[5 * v14];
    v16[4] = v32;
    v16[5] = v31;
    v16[6] = v11;
    *(v16 + 56) = v30;
    *(v16 + 57) = v29;
    v16[8] = v13;
    v8 = 1 << *(v12 + 32);
    if (v5 >= v8)
    {
      goto LABEL_24;
    }

    v2 = v12;
    v3 = v27;
    v17 = *(v27 + 8 * v9);
    if ((v17 & (1 << v5)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v26;
    if (v26 != *(v2 + 36))
    {
      goto LABEL_26;
    }

    v18 = v17 & (-2 << (v5 & 0x3F));
    if (v18)
    {
      v8 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v9 << 6;
      v20 = v9 + 1;
      v21 = (v24 + 8 * v9);
      while (v20 < (v8 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_1000C6AF4(v5, v26, 0);
          v8 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_1000C6AF4(v5, v26, 0);
    }

LABEL_4:
    v6 = v28 + 1;
    v5 = v8;
    if (v28 + 1 == v25)
    {
      return _swiftEmptyArrayStorage;
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
  return result;
}

Swift::Int sub_10010D9FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10019DF78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10010F6A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_10010DA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = sub_1000040A8(&qword_10035EC78);
  __chkstk_darwin(v120);
  v115 = (v97 - v4);
  v5 = sub_1000040A8(&qword_10035EC80);
  __chkstk_darwin(v5 - 8);
  v113 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = (v97 - v8);
  v9 = type metadata accessor for Font.Leading();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v108 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040A8(&qword_10035EC88);
  __chkstk_darwin(v11);
  v119 = v97 - v12;
  v117 = type metadata accessor for CircularProgressViewStyle();
  v112 = *(v117 - 8);
  __chkstk_darwin(v117);
  v14 = v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100354FA0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v97 - v17;
  v19 = sub_1000040A8(&qword_10035EC90);
  __chkstk_darwin(v19);
  v23 = v97 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v118 = v20;
    v25 = *(v24 + 250);
    v121 = a2;
    v116 = v11;
    if (v25)
    {
      v115 = v21;
      ProgressView<>.init<>()();
      CircularProgressViewStyle.init()();
      v26 = sub_100009274(&qword_100355088, &qword_100354FA0);
      v27 = sub_10010F5C8(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
      v28 = v117;
      View.progressViewStyle<A>(_:)();
      (*(v112 + 8))(v14, v28);
      (*(v16 + 8))(v18, v15);
      v29 = v115;
      v30 = v118;
      (v115[2])(v119, v23, v118);
      swift_storeEnumTagMultiPayload();
      v139[0] = v15;
      v139[1] = v28;
      v139[2] = v26;
      v139[3] = v27;
      swift_getOpaqueTypeConformance2();
      sub_100009274(&qword_10035ECC8, &qword_10035EC78);
      _ConditionalContent<>.init(storage:)();
      return v29[1](v23, v30);
    }

    v107 = v15;

    v32 = sub_10010E9E4();
    v34 = *(v24 + 120);
    v33 = *(v24 + 128);
    v36 = *(v24 + 136);
    v35 = *(v24 + 144);
    v37 = *(v24 + 152);
    sub_10006B8C8(v34, v33, v36);

    v111 = a1;
    if (!v36)
    {
      sub_10010F434(v139);
LABEL_17:
      v85 = static HorizontalAlignment.center.getter();
      v86 = v114;
      *v114 = v85;
      *(v86 + 8) = 0x402C000000000000;
      *(v86 + 16) = 0;
      sub_1000040A8(&qword_10035EC98);
      *&v137[0] = v32;
      swift_getKeyPath();
      v87 = swift_allocObject();
      v88 = v111;
      v89 = v111[3];
      v87[3] = v111[2];
      v87[4] = v89;
      v90 = v88[5];
      v87[5] = v88[4];
      v87[6] = v90;
      v91 = v88[1];
      v87[1] = *v88;
      v87[2] = v91;
      sub_100038114(v88, v138);
      sub_1000040A8(&qword_10035ECA0);
      sub_100009274(&qword_10035ECA8, &qword_10035ECA0);
      sub_10010F52C();
      ForEach<>.init(_:id:content:)();
      memcpy(v136, v139, 0x151uLL);
      v92 = v113;
      sub_100006C20(v86, v113, &qword_10035EC80);
      memcpy(v137, v136, 0x151uLL);
      v93 = v115;
      memcpy(v115, v136, 0x151uLL);
      v94 = sub_1000040A8(&qword_10035ECB8);
      sub_100006C20(v92, v93 + *(v94 + 48), &qword_10035EC80);
      sub_100006C20(v139, v138, &qword_10035ECC0);
      sub_100006C20(v137, v138, &qword_10035ECC0);
      sub_100008FA0(v92, &qword_10035EC80);
      memcpy(v138, v136, 0x151uLL);
      sub_100008FA0(v138, &qword_10035ECC0);
      sub_100006C20(v93, v119, &qword_10035EC78);
      swift_storeEnumTagMultiPayload();
      v95 = sub_100009274(&qword_100355088, &qword_100354FA0);
      v96 = sub_10010F5C8(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
      v128[0] = v107;
      v128[1] = v117;
      v128[2] = v95;
      v128[3] = v96;
      swift_getOpaqueTypeConformance2();
      sub_100009274(&qword_10035ECC8, &qword_10035EC78);
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v139, &qword_10035ECC0);
      sub_100008FA0(v93, &qword_10035EC78);
      return sub_100008FA0(v86, &qword_10035EC80);
    }

    LODWORD(v105) = v35 & 1;
    v106 = v32;
    v38 = (v35 >> 8) & 1;
    v112 = v33;
    v39 = objc_opt_self();

    v40 = [v39 mainBundle];
    v147._object = 0x800000010029DE30;
    v41._countAndFlagsBits = 0xD000000000000017;
    v41._object = 0x800000010029DE10;
    v42 = v112;
    v43.value._object = 0x80000001002962C0;
    v147._countAndFlagsBits = 0xD0000000000000AALL;
    v43.value._countAndFlagsBits = 0xD000000000000012;
    v44._countAndFlagsBits = 0;
    v44._object = 0xE000000000000000;
    v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v43, v40, v44, v147);
    object = v45._object;
    countAndFlagsBits = v45._countAndFlagsBits;

    v46 = swift_allocObject();
    v47 = *(a1 + 48);
    *(v46 + 48) = *(a1 + 32);
    *(v46 + 64) = v47;
    v48 = *(a1 + 80);
    *(v46 + 80) = *(a1 + 64);
    *(v46 + 96) = v48;
    v49 = *(a1 + 16);
    *(v46 + 16) = *a1;
    *(v46 + 32) = v49;
    *(v46 + 112) = v34;
    *(v46 + 120) = v42;
    v104 = v36;
    *(v46 + 128) = v36;
    *(v46 + 136) = v105;
    *(v46 + 137) = v38;
    v50 = v106;
    *(v46 + 144) = v37;
    sub_100038114(a1, v139);
    v51 = type metadata accessor for UIMetrics();
    v52 = sub_10010F5C8(&qword_100354D40, type metadata accessor for UIMetrics);
    v105 = EnvironmentObject.init()();
    v100 = v46;
    v101 = v53;
    if (!*(v50 + 2))
    {
      sub_10010F59C(v137);
LABEL_16:
      memcpy(v136, v137, 0x109uLL);
      v80 = v104;
      *&v123 = v105;
      v81 = v101;
      v82 = object;
      *(&v123 + 1) = v101;
      *&v124 = v42;
      *(&v124 + 1) = v104;
      v83 = countAndFlagsBits;
      *&v125 = countAndFlagsBits;
      *(&v125 + 1) = object;
      LOBYTE(v126) = 0;
      *(&v126 + 1) = *v135;
      DWORD1(v126) = *&v135[3];
      *(&v126 + 1) = sub_10010F580;
      v84 = v100;
      v127 = v100;
      *&v122[64] = v100;
      *v122 = v123;
      *&v122[16] = v124;
      *&v122[32] = v125;
      *&v122[48] = v126;
      memcpy(v128, v137, 0x109uLL);
      memcpy(&v122[72], v137, 0x109uLL);
      sub_1000517F8(&v123, v139);
      sub_100006C20(v128, v139, &qword_10035ECD0);
      sub_100008FA0(v136, &qword_10035ECD0);
      v129[0] = v105;
      v129[1] = v81;
      v129[2] = v112;
      v129[3] = v80;
      v129[4] = v83;
      v129[5] = v82;
      v130 = 0;
      *v131 = *v135;
      *&v131[3] = *&v135[3];
      v132 = sub_10010F580;
      v133 = v84;
      sub_100051854(v129);
      memcpy(v138, v122, 0x151uLL);
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v138);
      memcpy(v139, v138, 0x151uLL);
      v32 = v106;
      goto LABEL_17;
    }

    v97[0] = v52;
    v97[1] = v51;
    LocalizedStringKey.init(stringLiteral:)();
    v54 = Text.init(_:tableName:bundle:comment:)();
    v56 = v55;
    v58 = v57;
    KeyPath = v59;
    static Font.body.getter();
    v61 = v108;
    v60 = v109;
    v62 = v110;
    (*(v109 + 104))(v108, enum case for Font.Leading.tight(_:), v110);
    Font.leading(_:)();

    (*(v60 + 8))(v61, v62);
    v63 = Text.font(_:)();
    v109 = v65;
    v110 = v64;
    v98 = v66;

    v67 = v111;
    sub_1000317C4(v54, v56, v58 & 1);

    v68 = *(v67 + 4);
    if (v68)
    {
      v69 = *(v68 + 112);

      v70 = v69;
      v71 = static UIContentSizeCategory.>= infix(_:_:)();

      LODWORD(v108) = (v71 & 1) == 0;
      KeyPath = swift_getKeyPath();
      v72 = *(v68 + 112);
      static Alignment.center.getter();
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static Alignment.center.getter();
        if (static Alignment.== infix(_:_:)())
        {
          static Alignment.leading.getter();
        }
      }

      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v134[55] = v143;
      *&v134[71] = v144;
      *&v134[87] = v145;
      *&v134[103] = v146;
      *&v134[7] = v140;
      *&v134[23] = v141;
      v73 = v98 & 1;
      LOBYTE(v128[0]) = v98 & 1;
      *&v134[39] = v142;
      v74 = *(v68 + 112);

      v75 = static UIContentSizeCategory.>= infix(_:_:)();

      if (v75)
      {
        v76 = 1.0;
      }

      else
      {
        v76 = 0.5;
      }

      v77 = swift_getKeyPath();
      v78 = static Edge.Set.top.getter();
      v136[0] = 1;
      v79 = static Edge.Set.top.getter();
      *(&v139[13] + 1) = *&v134[64];
      *(&v139[15] + 1) = *&v134[80];
      *(&v139[17] + 1) = *&v134[96];
      *(&v139[5] + 1) = *v134;
      *(&v139[7] + 1) = *&v134[16];
      *(&v139[9] + 1) = *&v134[32];
      v138[0] = 1;
      v139[0] = v63;
      v139[1] = v110;
      LOBYTE(v139[2]) = v73;
      v139[3] = v109;
      v139[4] = KeyPath;
      LOBYTE(v139[5]) = v108;
      *(&v139[11] + 1) = *&v134[48];
      v139[19] = *&v134[111];
      v139[20] = v77;
      *&v139[21] = v76;
      LOBYTE(v139[22]) = v78;
      memset(&v139[23], 0, 32);
      LOBYTE(v139[27]) = 1;
      LOBYTE(v139[28]) = v79;
      memset(&v139[29], 0, 32);
      LOBYTE(v139[33]) = 1;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(v139);
      memcpy(v137, v139, 0x109uLL);
      v42 = v112;
      goto LABEL_16;
    }
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10010F5C8(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    EnvironmentObject.error()();
    __break(1u);
  }

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

char *sub_10010E9E4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 136);
    v8[0] = *(v1 + 120);
    v8[1] = v2;
    v9 = *(v1 + 152);
    swift_beginAccess();
    if (*(v1 + 112))
    {
      v3 = *(v1 + 112);
    }

    else
    {
      v3 = sub_1002564B8(_swiftEmptyArrayStorage);
    }

    sub_100006C20(v8, v7, &qword_1003580C0);
    sub_100006C20(v8, v7, &qword_1003580C0);

    v4 = sub_100110874(v3, v8);
    sub_100008FA0(v8, &qword_1003580C0);
    sub_100008FA0(v8, &qword_1003580C0);

    v5 = sub_10010D76C(v4);

    v7[0] = v5;

    sub_10010D9FC(v7);

    return v7[0];
  }

  else
  {
    type metadata accessor for RoadsideAssistanceModel();
    sub_10010F5C8(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
    EnvironmentObject.error()();
    __break(1u);

    __break(1u);
  }

  return result;
}

uint64_t sub_10010EB8C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a2)
  {
    v9 = *(a1 + 8);
    v10 = objc_opt_self();

    v11 = [v10 mainBundle];
    v28 = 0x800000010029DE30;
    v12 = 0xD000000000000017;
    v13 = 0x800000010029DE10;
    v14 = 0x80000001002962C0;
    v8 = v9;
    v15 = 0xD0000000000000AALL;
  }

  else
  {
    v16 = *(a1 + 24);
    v17 = objc_opt_self();

    v11 = [v17 mainBundle];
    if (v16)
    {
      v28 = 0x800000010029E0E0;
      v12 = 0xD000000000000018;
      v13 = 0x800000010029E0C0;
      v14 = 0x80000001002962C0;
      v15 = 0xD0000000000000A9;
    }

    else
    {
      v12 = 0xD000000000000010;
      v28 = 0x800000010029E010;
      v13 = 0x800000010029DFF0;
      v14 = 0x80000001002962C0;
      v15 = 0xD0000000000000AALL;
    }
  }

  v18 = 0xD000000000000012;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, *(&v14 - 1), v11, v19, *&v15);

  v30 = *(a1 + 32);
  v21 = swift_allocObject();
  v22 = v4[3];
  *(v21 + 48) = v4[2];
  *(v21 + 64) = v22;
  v23 = v4[5];
  *(v21 + 80) = v4[4];
  *(v21 + 96) = v23;
  v24 = v4[1];
  *(v21 + 16) = *v4;
  *(v21 + 32) = v24;
  v25 = *(a1 + 16);
  *(v21 + 112) = *a1;
  *(v21 + 128) = v25;
  *(v21 + 144) = *(a1 + 32);

  sub_100038114(v4, v29);
  sub_100006C20(&v30, v29, &qword_1003580C8);
  type metadata accessor for UIMetrics();
  sub_10010F5C8(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.init()();
  *a3 = result;
  *(a3 + 8) = v27;
  *(a3 + 16) = v8;
  *(a3 + 24) = v7;
  *(a3 + 32) = v20;
  *(a3 + 48) = 0;
  *(a3 + 49) = *v29;
  *(a3 + 52) = *&v29[3];
  *(a3 + 56) = sub_100110B9C;
  *(a3 + 64) = v21;
  return result;
}

uint64_t sub_10010EE38(_OWORD *a1, uint64_t *a2)
{
  v15 = a1[5];
  v11[0] = a1[5];
  v16 = *(&v15 + 1);
  sub_100006C20(&v16, v12, &qword_100354AB0);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (v12[0])
  {
    return sub_100008FA0(&v15, &qword_100354AA8);
  }

  v11[0] = v15;
  LOBYTE(v12[0]) = 1;
  State.wrappedValue.setter();
  sub_100008FA0(&v15, &qword_100354AA8);
  if (*a1)
  {
    v5 = *a2;
    v14 = *(a2 + 1);
    v13 = a2[4];
    v6 = swift_allocObject();
    v7 = a1[3];
    *(v6 + 48) = a1[2];
    *(v6 + 64) = v7;
    v8 = a1[5];
    *(v6 + 80) = a1[4];
    *(v6 + 96) = v8;
    v9 = a1[1];
    *(v6 + 16) = *a1;
    *(v6 + 32) = v9;
    v10 = *(a2 + 1);
    *(v6 + 112) = *a2;
    *(v6 + 128) = v10;
    *(v6 + 144) = a2[4];
    v12[0] = v5;
    v12[1] = sub_10010F614;
    v12[2] = v6;

    sub_100038114(a1, v11);
    sub_100032618(&v14, v11);
    sub_100006C20(&v13, v11, &qword_1003580C8);
    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_10010F5C8(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10010F050(__int16 a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = a1 & 0x100;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381E48);
  sub_100038114(a2, v20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  sub_100038170(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_1000B9A7C();
    v13 = sub_10017C9E8(v11, v12, v20);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, v20);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}s] selectRoadsideProviderRequested response: %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  *v20 = *(a2 + 80);
  sub_1000040A8(&qword_100354AA8);
  result = State.wrappedValue.setter();
  if (!v6 && (v5 & 1) != 0)
  {
    if (*(a2 + 16))
    {
      v18 = *a3;

      sub_100064824(v18);

      return (*(a2 + 64))(v19);
    }

    else
    {
      type metadata accessor for RoadsideAssistanceModel();
      sub_10010F5C8(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      result = EnvironmentObject.error()();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10010F2DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v14 = v1[2];
  v15 = v3;
  v4 = v1[5];
  v16 = v1[4];
  v17 = v4;
  v5 = v1[1];
  v13[0] = *v1;
  v13[1] = v5;
  if (v14)
  {
    v6 = *(v14 + 72);
    v7 = *(v14 + 80);
    sub_1000088DC((v14 + 48), v6);
    (*(v7 + 24))(v12, v6, v7);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    v8 = sub_1000040A8(&qword_10035EC68);
    sub_10010DA68(v13, a1 + *(v8 + 44));
    v9 = static Edge.Set.bottom.getter();
    v10 = a1 + *(sub_1000040A8(&qword_10035EC70) + 36);
    *v10 = v9;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 1;
    return sub_100008964(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10010F5C8(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10010F434(uint64_t a1)
{
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10010F46C()
{

  return _swift_deallocObject(v0, 112, 7);
}

__n128 sub_10010F4D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010EB8C(a1, 0, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_10010F52C()
{
  result = qword_10035ECB0;
  if (!qword_10035ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ECB0);
  }

  return result;
}

double sub_10010F59C(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 249) = 0u;
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

uint64_t sub_10010F5C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010F628()
{

  return _swift_deallocObject(v0, 152, 7);
}

Swift::Int sub_10010F6A0(uint64_t *a1)
{
  v2 = a1[1];
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
      sub_10010F894(v7, v8, a1, v4);
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
    return sub_10010F798(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10010F798(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 40 * v4;
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 + 8);
      if (result != v10 || *(v13 + 16) != v11)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
LABEL_4:
          ++v4;
          v7 += 40;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v10 = *(v13 + 48);
      v11 = *(v13 + 56);
      v15 = *(v13 + 16);
      v17 = *(v13 + 32);
      v16 = *(v13 + 40);
      *(v13 + 40) = *v13;
      v18 = *(v13 + 64);
      v19 = *(v13 + 65);
      v20 = *(v13 + 72);
      *(v13 + 56) = v15;
      *(v13 + 72) = v17;
      *v13 = v16;
      *(v13 + 8) = v10;
      *(v13 + 16) = v11;
      *(v13 + 24) = v18;
      *(v13 + 25) = v19;
      *(v13 + 32) = v20;
      v13 -= 40;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10010F894(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v110 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_108:
    v110 = *v110;
    if (!v110)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_140;
    }

    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = *v6 + 40 * v8;
      v13 = *(v12 + 8);
      v14 = *(v12 + 16);
      v15 = *v6 + 40 * v10;
      result = *(v15 + 8);
      if (result == v13 && *(v15 + 16) == v14)
      {
        v17 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = result;
      }

      v18 = v10 + 2;
      if (v10 + 2 >= v7)
      {
        v20 = v10 + 2;
        if (v17)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v19 = (v11 + 40 * v10 + 96);
        do
        {
          v20 = v18;
          result = *(v19 - 6);
          if (result == *(v19 - 1) && *(v19 - 5) == *v19)
          {
            if (v17)
            {
              goto LABEL_29;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v17 ^ result))
            {
              v8 = v20 - 1;
              if (v17)
              {
                goto LABEL_29;
              }

              goto LABEL_27;
            }
          }

          v19 += 5;
          v18 = v20 + 1;
        }

        while (v7 != v20 + 1);
        v8 = v20;
        v20 = v7;
        if (v17)
        {
          goto LABEL_29;
        }
      }

LABEL_27:
      if (v20 < v10)
      {
        goto LABEL_139;
      }

      if (v10 <= v8)
      {
        v87 = 40 * v20 - 40;
        v88 = 40 * v10;
        v89 = v20;
        v90 = v10;
        do
        {
          if (v90 != --v89)
          {
            v91 = *v6;
            if (!*v6)
            {
              goto LABEL_143;
            }

            v92 = (v91 + v88);
            v93 = *(v91 + v88 + 16);
            v94 = (v91 + v87);
            v95 = *(v92 + 24);
            v96 = *(v92 + 25);
            v97 = *(v92 + 4);
            v98 = *v92;
            v99 = *(v94 + 4);
            v100 = v94[1];
            *v92 = *v94;
            v92[1] = v100;
            *(v92 + 4) = v99;
            *v94 = v98;
            *(v94 + 2) = v93;
            *(v94 + 24) = v95;
            *(v94 + 25) = v96;
            *(v94 + 4) = v97;
          }

          ++v90;
          v87 -= 40;
          v88 += 40;
        }

        while (v90 < v89);
      }

LABEL_29:
      v8 = v20;
    }

    v22 = v6[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_137;
        }

        if (v10 + a4 >= v22)
        {
          v23 = v6[1];
        }

        else
        {
          v23 = v10 + a4;
        }

        if (v23 < v10)
        {
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          result = sub_10019DF64(v9);
          v9 = result;
LABEL_110:
          v102 = v9 + 16;
          v101 = *(v9 + 2);
          if (v101 >= 2)
          {
            while (1)
            {
              v103 = *v6;
              if (!*v6)
              {
                goto LABEL_144;
              }

              v104 = &v9[16 * v101];
              v6 = *v104;
              v105 = &v102[2 * v101];
              v106 = v105[1];
              sub_10010FEE4((v103 + 40 * *v104), (v103 + 40 * *v105), v103 + 40 * v106, v110);
              if (v5)
              {
              }

              if (v106 < v6)
              {
                goto LABEL_132;
              }

              if (v101 - 2 >= *v102)
              {
                goto LABEL_133;
              }

              *v104 = v6;
              *(v104 + 1) = v106;
              v107 = *v102 - v101;
              if (*v102 < v101)
              {
                goto LABEL_134;
              }

              v101 = *v102 - 1;
              result = memmove(v105, v105 + 2, 16 * v107);
              *v102 = v101;
              v6 = a3;
              if (v101 <= 1)
              {
              }
            }
          }
        }

        if (v8 != v23)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10017C168(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v41 = *(v9 + 2);
    v40 = *(v9 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_10017C168((v40 > 1), v41 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v42;
    v43 = &v9[16 * v41];
    *(v43 + 4) = v10;
    *(v43 + 5) = v8;
    v44 = *v110;
    if (!*v110)
    {
      goto LABEL_145;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v9 + 4);
          v47 = *(v9 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_72:
          if (v49)
          {
            goto LABEL_123;
          }

          v62 = &v9[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_126;
          }

          v68 = &v9[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_130;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v72 = &v9[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_86:
        if (v67)
        {
          goto LABEL_125;
        }

        v75 = &v9[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_128;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_93:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v84 = *&v9[16 * v83 + 32];
        v85 = *&v9[16 * v45 + 40];
        sub_10010FEE4((*v6 + 40 * v84), (*v6 + 40 * *&v9[16 * v45 + 32]), *v6 + 40 * v85, v44);
        if (v5)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10019DF64(v9);
        }

        if (v83 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v86 = &v9[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_10019DED8(v45);
        v42 = *(v9 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v9[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_121;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_122;
      }

      v57 = &v9[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_124;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_127;
      }

      if (v61 >= v53)
      {
        v79 = &v9[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_131;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_108;
    }
  }

  v24 = *v6;
  v25 = *v6 + 40 * v8 - 40;
  v108 = v10;
  v26 = v10 - v8;
LABEL_41:
  v27 = v24 + 40 * v8;
  v28 = *(v27 + 8);
  v29 = *(v27 + 16);
  v30 = v26;
  v31 = v25;
  while (1)
  {
    result = *(v31 + 8);
    if (result != v28 || *(v31 + 16) != v29)
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
LABEL_40:
        ++v8;
        v25 += 40;
        --v26;
        if (v8 != v23)
        {
          goto LABEL_41;
        }

        v8 = v23;
        v6 = a3;
        v10 = v108;
        goto LABEL_52;
      }
    }

    if (!v24)
    {
      break;
    }

    v28 = *(v31 + 48);
    v29 = *(v31 + 56);
    v33 = *(v31 + 16);
    v35 = *(v31 + 32);
    v34 = *(v31 + 40);
    *(v31 + 40) = *v31;
    v36 = *(v31 + 64);
    v37 = *(v31 + 65);
    v38 = *(v31 + 72);
    *(v31 + 56) = v33;
    *(v31 + 72) = v35;
    *v31 = v34;
    *(v31 + 8) = v28;
    *(v31 + 16) = v29;
    *(v31 + 24) = v36;
    *(v31 + 25) = v37;
    *(v31 + 32) = v38;
    v31 -= 40;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_40;
    }
  }

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
  return result;
}

uint64_t sub_10010FEE4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[40 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v4 + 1) == *(v6 + 1) && *(v4 + 2) == *(v6 + 2);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = v6;
      v16 = v7 == v6;
      v6 += 40;
      if (!v16)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 40;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v4;
    v16 = v7 == v4;
    v4 += 40;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    v15 = *(v13 + 1);
    *(v7 + 4) = *(v13 + 4);
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[40 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_24:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      v18 = *(v6 - 4) == *(v12 - 4) && *(v6 - 3) == *(v12 - 3);
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v22 = v6 - 40;
        if (v17 != v6)
        {
          v23 = *v22;
          v24 = *(v6 - 24);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v23;
          *(v5 + 16) = v24;
        }

        if (v12 <= v4 || (v6 -= 40, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v19 = v12 - 40;
      if (v17 != v12)
      {
        v20 = *v19;
        v21 = *(v12 - 24);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v20;
        *(v5 + 16) = v21;
      }

      v5 -= 40;
      v12 -= 40;
    }

    while (v19 > v4);
    v12 = v19;
  }

LABEL_39:
  v25 = (v12 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

void *sub_100110140(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_100006C20(a4, v9, &qword_1003580C0);
    v8 = sub_100110478(v7, a2, a3, a4);

    sub_100008FA0(a4, &qword_1003580C0);
    sub_100008FA0(a4, &qword_1003580C0);
    return v8;
  }

  return result;
}

uint64_t sub_10011021C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000040A8(&unk_10036A010);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 40 * v16;
    v34 = *(v18 + 8);
    v35 = *v18;
    v19 = *(v18 + 16);
    v32 = *(v18 + 25);
    v33 = *(v18 + 24);
    v20 = *(v18 + 32);
    result = static Hasher._hash(seed:_:)();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v17;
    v29 = *(v9 + 56) + 40 * v24;
    *v29 = v35;
    *(v29 + 8) = v34;
    *(v29 + 16) = v19;
    *(v29 + 24) = v33;
    *(v29 + 25) = v32;
    *(v29 + 32) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100110478(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v36 = result;
  v37 = 0;
  v5 = 0;
  v39 = a4[1];
  v40 = *a4;
  v6 = a4[3];
  v46 = a4[2];
  v42 = v6;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  v44 = a4[4];
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v34 = a4[4] + 40;
  do
  {
    while (1)
    {
      if (!v10)
      {
        v13 = v5;
        while (1)
        {
          v5 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v5 >= v11)
          {
            return sub_10011021C(v36, a2, v37, a3);
          }

          v14 = *(v7 + 8 * v5);
          ++v13;
          if (v14)
          {
            v12 = __clz(__rbit64(v14));
            v10 = (v14 - 1) & v14;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v38 = v12 | (v5 << 6);
      v15 = *(a3 + 56) + 40 * v38;
      v16 = *v15;
      result = *(v15 + 8);
      v17 = *(v15 + 16);
      v18 = *(v15 + 24);
      v19 = *(v15 + 25);
      v20 = *(v15 + 32);
      if (!v4[2])
      {
        break;
      }

      v43 = v10;
      v21 = v4;
      if (v16 != v40)
      {
        goto LABEL_42;
      }

      v22 = result == v39 && v46 == v17;
      v23 = (v42 >> 8) & 1;
      if (v22)
      {
        if (v18 != (v42 & 1) || ((v23 ^ v19) & 1) != 0)
        {
LABEL_42:
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v4 = v21;
          sub_100006C20(v21, v45, &qword_1003580C0);
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          v10 = v43;
          goto LABEL_44;
        }
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0 || ((v18 ^ v42) & 1) != 0 || v23 != v19)
        {
          goto LABEL_42;
        }
      }

      if (v20)
      {
        v24 = v44 == 0;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v4 = v21;
        sub_100006C20(v21, v45, &qword_1003580C0);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v10 = v43;
        if (v20 | v44)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v25 = *(v20 + 16);
        if (v25 != *(v44 + 16))
        {
          goto LABEL_42;
        }

        if (v25)
        {
          v26 = v20 == v44;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = (v20 + 40);
          v28 = v34;
          while (v25)
          {
            result = *(v27 - 1);
            if (result != *(v28 - 1) || *v27 != *v28)
            {
              result = _stringCompareWithSmolCheck(_:_:expecting:)();
              if ((result & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            v27 += 2;
            v28 += 2;
            if (!--v25)
            {
              goto LABEL_34;
            }
          }

LABEL_49:
          __break(1u);
          return result;
        }

LABEL_34:
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v4 = v21;
        sub_100006C20(v21, v45, &qword_1003580C0);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v10 = v43;
      }
    }

    v33 = v4[1];
    v31 = *(v15 + 8);
    v32 = *v4;

    sub_10006B814(v16, v31, v17);
    result = sub_10006B814(v32, v33, 0);
LABEL_44:
    *(v36 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
  }

  while (!__OFADD__(v37++, 1));
  __break(1u);
  return sub_10011021C(v36, a2, v37, a3);
}

uint64_t *sub_100110874(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  v7 = 8 * v6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    sub_100006C20(a2, v12, &qword_1003580C0);
    sub_100006C20(a2, v12, &qword_1003580C0);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      v10 = swift_slowAlloc();
      sub_100006C20(a2, v12, &qword_1003580C0);
      v9 = sub_100110140(v10, v6, a1, a2);

      if (v2)
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_100008FA0(a2, &qword_1003580C0);
      sub_100008FA0(a2, &qword_1003580C0);
      return v9;
    }
  }

  else
  {
    sub_100006C20(a2, v12, &qword_1003580C0);
    v8 = sub_100006C20(a2, v12, &qword_1003580C0);
  }

  __chkstk_darwin(v8);
  bzero(&v12[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v7);
  sub_100006C20(a2, v12, &qword_1003580C0);
  v9 = sub_100110478(&v12[-((v7 + 15) & 0x3FFFFFFFFFFFFFF0)], v6, a1, a2);
  sub_100008FA0(a2, &qword_1003580C0);
  if (!v2)
  {
    goto LABEL_9;
  }

  swift_willThrow();
LABEL_5:
  v9 = &qword_1003580C0;
  sub_100008FA0(a2, &qword_1003580C0);
  sub_100008FA0(a2, &qword_1003580C0);
  return v9;
}

unint64_t sub_100110AE4()
{
  result = qword_10035ECD8;
  if (!qword_10035ECD8)
  {
    sub_100008CF0(&qword_10035EC70);
    sub_100009274(&qword_10035ECE0, &qword_10035ECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035ECD8);
  }

  return result;
}

uint64_t sub_100110BA8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v7 = OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_monitor;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_monitor))
  {
    if (qword_100353AC0 == -1)
    {
LABEL_4:
      v8 = type metadata accessor for Logger();
      sub_10000F53C(v8, qword_100381E90);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
LABEL_7:
        v13 = 0;
        goto LABEL_8;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Already started";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_7;
    }

LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v15 = [objc_allocWithZone(CTStewieStateMonitor) initWithDelegate:v1 queue:*(v1 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_queue)];
  v16 = *(v1 + v7);
  *(v1 + v7) = v15;
  v17 = v15;

  if (!v17)
  {
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000F53C(v29, qword_100381E90);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_7;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "monitor must be allocated prior to start";
    goto LABEL_6;
  }

  if ([v17 start])
  {
    v18 = [v17 getState];
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000F53C(v19, qword_100381E90);
    v9 = v18;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v22 = 136446210;
      v23 = v9;
      v24 = [v23 description];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_10017C9E8(v25, v27, &v35);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Initial state: %{public}s", v22, 0xCu);
      sub_100008964(v34);
    }

    (*(v1 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_handler))(v9);
    v13 = 1;
  }

  else
  {
    if (qword_100353AC0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381E90);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to start monitor", v33, 2u);
    }

    v13 = 0;
    v9 = v17;
  }

LABEL_8:

  return v13;
}

id sub_1001110D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a1;
  v37 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_monitor] = 0;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0x8000000100294A20;
    v10 = 0xD000000000000012;
  }

  v31[1] = sub_10000F574();
  v39[0] = v10;
  v39[1] = v12;

  v13._countAndFlagsBits = 0xD000000000000013;
  v13._object = 0x800000010029E200;
  String.append(_:)(v13);

  static DispatchQoS.unspecified.getter();
  v39[0] = &_swiftEmptyArrayStorage;
  sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  *&v3[OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = &v3[OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_handler];
  v15 = v37;
  *v14 = v36;
  *(v14 + 1) = v15;
  v38.receiver = v3;
  v38.super_class = ObjectType;

  v16 = objc_msgSendSuper2(&v38, "init");
  v17 = qword_100353A10;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F53C(v19, qword_100381C80);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39[0] = v23;
    *v22 = 136446210;
    v24 = v18;
    v25 = [v24 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = sub_10017C9E8(v26, v28, v39);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] init", v22, 0xCu);
    sub_100008964(v23);
  }

  else
  {
  }

  return v18;
}

id sub_100111598()
{
  ObjectType = swift_getObjectType();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = v3;
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_10017C9E8(v10, v12, &v15);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] deinit", v6, 0xCu);
    sub_100008964(v7);
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_1001117D0(void *a1)
{
  v40 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v1;
  v13 = *(v1 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8, v10);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    if (qword_100353AC0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v37 = v5;
  v38 = v3;
  v16 = type metadata accessor for Logger();
  sub_10000F53C(v16, qword_100381E90);
  v17 = v40;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = v2;
    v22 = v21;
    aBlock[0] = v21;
    *v20 = 136446210;
    v23 = v17;
    v24 = [v23 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v28 = sub_10017C9E8(v25, v27, aBlock);

    *(v20 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v18, v19, "stateChanged: %{public}s", v20, 0xCu);
    sub_100008964(v22);
    v2 = v40;
  }

  sub_10000F574();
  v29 = static OS_dispatch_queue.main.getter();
  v31 = *(v39 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_handler);
  v30 = *(v39 + OBJC_IVAR____TtC8SOSBuddy23StewieStateMonitorAgent_handler + 8);
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = v30;
  v32[4] = v17;
  aBlock[4] = sub_100111E08;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100330CC0;
  v33 = _Block_copy(aBlock);
  v34 = v17;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70);
  v35 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v33);

  (*(v38 + 8))(v35, v2);
  return (*(v41 + 8))(v7, v37);
}

uint64_t sub_100111DC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100111E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100111E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v60 = a4;
  v61 = a2;
  v68 = a5;
  v69 = a3;
  v67 = type metadata accessor for KeyboardShortcut();
  v74 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for BorderedProminentButtonStyle();
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000040A8(&qword_100357568);
  v72 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = sub_1000040A8(&qword_10035EDA0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = sub_1000040A8(&qword_10035EDA8);
  v66 = *(v17 - 8);
  __chkstk_darwin(v17);
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v64 = &v50 - v20;
  __chkstk_darwin(v21);
  v62 = &v50 - v22;
  __chkstk_darwin(v23);
  v71 = &v50 - v24;
  v25 = swift_allocObject();
  v59 = a1;
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = v69;
  v25[5] = a4;

  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  v58 = sub_100009274(&qword_100357588, &qword_100357568);
  v57 = sub_100112CAC(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
  v52 = v11;
  v26 = v70;
  View.buttonStyle<A>(_:)();
  v27 = *(v73 + 8);
  v73 += 8;
  v56 = v27;
  v27(v10, v26);
  v28 = *(v72 + 8);
  v72 += 8;
  v55 = v28;
  v28(v13, v11);
  v29 = v14;
  v30 = &v16[*(v14 + 36)];
  v54 = sub_1000040A8(&qword_100357740);
  static ButtonBorderShape.capsule.getter();
  *v30 = swift_getKeyPath();
  v31 = v63;
  static KeyboardShortcut.defaultAction.getter();
  v53 = sub_100112AC0();
  View.keyboardShortcut(_:)();
  v32 = *(v74 + 8);
  v74 += 8;
  v51 = v32;
  v33 = v67;
  v32(v31, v67);
  sub_100112C38(v16);
  v34 = swift_allocObject();
  v35 = v60;
  v36 = v61;
  v34[2] = v59;
  v34[3] = v36;
  v34[4] = v69;
  v34[5] = v35;

  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  v37 = v52;
  v38 = v70;
  View.buttonStyle<A>(_:)();
  v56(v10, v38);
  v55(v13, v37);
  v39 = &v16[*(v29 + 36)];
  static ButtonBorderShape.capsule.getter();
  *v39 = swift_getKeyPath();
  static KeyboardShortcut.defaultAction.getter();
  v40 = v62;
  View.keyboardShortcut(_:)();
  v51(v31, v33);
  sub_100112C38(v16);
  v41 = v66;
  v42 = *(v66 + 16);
  v43 = v64;
  v44 = v71;
  v42(v64, v71, v17);
  v45 = v65;
  v42(v65, v40, v17);
  v46 = v68;
  v42(v68, v43, v17);
  v47 = sub_1000040A8(&qword_10035EDB8);
  v42(&v46[*(v47 + 48)], v45, v17);
  v48 = *(v41 + 8);
  v48(v40, v17);
  v48(v44, v17);
  v48(v45, v17);
  return (v48)(v43, v17);
}

uint64_t sub_1001125E8(uint64_t a1)
{
  if (a1)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100112CAC(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001126DC@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010029E260;
  v3._countAndFlagsBits = 0x6F6D654420646E45;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000036;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  sub_100031770();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

void sub_1001127B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(a3 + OBJC_IVAR____TtC8SOSBuddy11TryOutModel__messageSimulationEngine);
    if (v3)
    {
      v4 = *(v3 + 16);
      if (v4)
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v5 = *(v4 + OBJC_IVAR____TtCC8SOSBuddy37MessageSimulationEngineImplementation7OnState_connected);
          type metadata accessor for MessageSimulationEngineImplementation.OnState(0);
          v6 = swift_allocObject();

          v7 = swift_unknownObjectRetain();
          *(v3 + 16) = sub_10026CC68(v7, v5, v6);

          sub_10003FC00();

          sub_10026B98C();

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_100112CAC(&qword_100357990, type metadata accessor for TryOutModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100112920@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010029E220;
  v3._countAndFlagsBits = 0x764F207472617453;
  v3._object = 0xEA00000000007265;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000036;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  sub_100031770();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

double sub_1001129F8@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v7 = sub_1000040A8(&qword_10035ED90);
  sub_100111E7C(v3, v4, v6, v5, (a1 + *(v7 + 44)));
  LOBYTE(v5) = static Edge.Set.bottom.getter();
  v8 = a1 + *(sub_1000040A8(&qword_10035ED98) + 36);
  *v8 = v5;
  result = 0.0;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 1;
  return result;
}

unint64_t sub_100112AC0()
{
  result = qword_10035EDB0;
  if (!qword_10035EDB0)
  {
    sub_100008CF0(&qword_10035EDA0);
    sub_100008CF0(&qword_100357568);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_100009274(&qword_100357588, &qword_100357568);
    sub_100112CAC(&qword_100357B50, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EDB0);
  }

  return result;
}

uint64_t sub_100112C38(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035EDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100112CAC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100112CF8()
{
  result = qword_10035EDC0;
  if (!qword_10035EDC0)
  {
    sub_100008CF0(&qword_10035ED98);
    sub_100009274(&qword_10035EDC8, &qword_10035EDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EDC0);
  }

  return result;
}

void *sub_100112DB4()
{
  v1 = v0;
  v2 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1000040A8(&qword_10035EE98);
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for LockScreenSource()) init];
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  *(v0 + 40) = v8;
  *(v0 + 48) = 2;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v9 = qword_100353A10;
  swift_retain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381C80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136446210;
    v25 = v1;

    v15 = String.init<A>(describing:)();
    v17 = sub_10017C9E8(v15, v16, v24);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "[%{public}s] init", v13, 0xCu);
    sub_100008964(v14);
  }

  v24[0] = *(v1[4] + OBJC_IVAR____TtC8SOSBuddy16LockScreenSource_lockedStateDidChange);
  sub_10000F574();

  v18 = static OS_dispatch_queue.main.getter();
  v25 = v18;
  v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  sub_1000040A8(&unk_100359B30);
  sub_100009274(&qword_10035EEA0, &unk_100359B30);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100026894(v4);

  sub_100009274(&qword_10035EEA8, &qword_10035EE98);

  v20 = v23;
  Publisher<>.sink(receiveValue:)();

  (*(v22 + 8))(v7, v20);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_100113298(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  if (v4 == 2 || ((v3 ^ v4) & 1) != 0)
  {
    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  *(a2 + 48) = v3;
  return sub_100113690(v4);
}

uint64_t sub_100113350()
{
}

uint64_t sub_100113380()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100113534()
{
  sub_100113380();

  return swift_deallocClassInstance();
}

void sub_10011358C()
{
  if (!sub_100060C74())
  {
    if (qword_100353A80 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_10000F53C(v0, qword_100381DD0);
    oslog = Logger.logObject.getter();
    v1 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v1, "Failed to start source", v2, 2u);
    }
  }
}

uint64_t sub_100113690(uint64_t result)
{
  v2 = *(v1 + 48);
  if (v2 == 2)
  {
    if (result == 2)
    {
      return result;
    }
  }

  else if (result != 2 && ((v2 ^ result) & 1) == 0)
  {
    return result;
  }

  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381C80);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v6 = 136446466;
    sub_1000040A8(&unk_1003655D0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v13);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2082;
    v10 = String.init<A>(describing:)();
    v12 = sub_10017C9E8(v10, v11, &v13);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "screenLocked changed from: %{public}s to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  return Subject<>.send()();
}

uint64_t sub_1001138E8()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for DeviceUIOrientationSource();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_100113A60()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    type metadata accessor for DeviceUIOrientationSource();

    v5 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%{public}s] deinit", v3, 0xCu);
    sub_100008964(v4);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_100113C04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100113C4C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_100113CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000040A8(&qword_10035EF60);
  v12 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v13[-v4 - 8];
  v6 = sub_100038584();
  if (*(v6 + 16))
  {
    v14 = v6;
    swift_getKeyPath();
    v7 = *v1;
    v15 = v1[1];
    v16 = v7;
    v8 = swift_allocObject();
    v9 = v1[1];
    v8[1] = *v1;
    v8[2] = v9;
    v8[3] = v1[2];
    sub_100006C20(&v16, v13, &qword_10035EF68);
    sub_100006C20(&v15, v13, &qword_10035EC48);

    sub_1000040A8(&qword_10035EF70);
    sub_100114060();
    sub_1001140C4();
    ForEach<>.init(_:id:content:)();
    (*(v12 + 32))(a1, v5, v3);
    return (*(v12 + 56))(a1, 0, 1, v3);
  }

  else
  {

    v11 = *(v12 + 56);

    return v11(a1, 1, 1, v3);
  }
}

uint64_t sub_100113F18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);

  sub_1000040A8(&qword_100359828);
  result = State.init(wrappedValue:)();
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v10;
  *(a3 + 48) = v9;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  return result;
}

uint64_t sub_100114010()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100114060()
{
  result = qword_10035EF78;
  if (!qword_10035EF78)
  {
    sub_100008CF0(&qword_10035EF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EF78);
  }

  return result;
}

unint64_t sub_1001140C4()
{
  result = qword_10035EF80;
  if (!qword_10035EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EF80);
  }

  return result;
}

unint64_t sub_10011411C()
{
  result = qword_10035EF88;
  if (!qword_10035EF88)
  {
    sub_100008CF0(&qword_10035EF90);
    sub_1001141A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EF88);
  }

  return result;
}

unint64_t sub_1001141A0()
{
  result = qword_10035EF98;
  if (!qword_10035EF98)
  {
    sub_100008CF0(&qword_10035EF60);
    sub_1001140C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EF98);
  }

  return result;
}

uint64_t sub_100114308@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for UIMetrics();
  sub_10003BDC8();

  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v6;
  a1[2] = sub_100114250;
  a1[3] = 0;
  a1[4] = sub_100114270;
  a1[5] = 0;
  a1[6] = sub_100114280;
  a1[7] = 0;
  a1[8] = v4;
  a1[9] = v3;
  return result;
}

unint64_t sub_1001143AC()
{
  result = qword_10035EFA0;
  if (!qword_10035EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EFA0);
  }

  return result;
}

uint64_t sub_100114400(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100114448(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001144D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = v4[9];
    v6 = v4[10];
    sub_1000088DC(v4 + 6, v5);
    (*(v6 + 24))(v43, v5, v6);
    v7 = static HorizontalAlignment.center.getter();
    v30 = 0;
    sub_100114780(v2, &v19);
    v37 = v25;
    v38 = v26;
    v39 = v27;
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v31 = v19;
    v32 = v20;
    v41[6] = v25;
    v41[7] = v26;
    v41[8] = v27;
    v41[2] = v21;
    v41[3] = v22;
    v41[4] = v23;
    v41[5] = v24;
    v40 = v28;
    v42 = v28;
    v41[0] = v19;
    v41[1] = v20;
    sub_100031B70(&v31, v18);
    sub_100031BA8(v41);
    *(&v29[6] + 7) = v37;
    *(&v29[7] + 7) = v38;
    *(&v29[8] + 7) = v39;
    *(&v29[2] + 7) = v33;
    *(&v29[3] + 7) = v34;
    *(&v29[4] + 7) = v35;
    *(&v29[5] + 7) = v36;
    *(v29 + 7) = v31;
    *(&v29[9] + 7) = v40;
    *(&v29[1] + 7) = v32;
    sub_100008964(v43);
    LOBYTE(v5) = v30;
    v8 = swift_allocObject();
    v9 = v2[7];
    v8[7] = v2[6];
    v8[8] = v9;
    v8[9] = v2[8];
    v10 = v2[3];
    v8[3] = v2[2];
    v8[4] = v10;
    v11 = v2[5];
    v8[5] = v2[4];
    v8[6] = v11;
    v12 = v2[1];
    v8[1] = *v2;
    v8[2] = v12;
    v13 = v29[7];
    *(a1 + 113) = v29[6];
    *(a1 + 129) = v13;
    *(a1 + 145) = v29[8];
    *(a1 + 160) = *(&v29[8] + 15);
    v14 = v29[3];
    *(a1 + 49) = v29[2];
    *(a1 + 65) = v14;
    v15 = v29[5];
    *(a1 + 81) = v29[4];
    *(a1 + 97) = v15;
    v16 = v29[1];
    *(a1 + 17) = v29[0];
    *a1 = v7;
    *(a1 + 8) = 0x4020000000000000;
    *(a1 + 16) = v5;
    *(a1 + 33) = v16;
    *(a1 + 176) = sub_1001168C8;
    *(a1 + 184) = v8;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    return sub_100037FAC(v2, &v19);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100116E84(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

__n128 sub_100114780@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  sub_1000040A8(&qword_1003566D8);
  State.projectedValue.getter();
  v5 = v43.n128_u64[1];
  v39 = v43.n128_u64[0];
  v6 = v45;
  v41 = v44;
  v7 = swift_allocObject();
  v8 = *(a1 + 112);
  v7[7] = *(a1 + 96);
  v7[8] = v8;
  v7[9] = *(a1 + 128);
  v9 = *(a1 + 48);
  v7[3] = *(a1 + 32);
  v7[4] = v9;
  v10 = *(a1 + 80);
  v7[5] = *(a1 + 64);
  v7[6] = v10;
  v11 = *(a1 + 16);
  v7[1] = *a1;
  v7[2] = v11;
  type metadata accessor for MainActor();
  sub_100037FAC(a1, &v43);
  sub_100037FAC(a1, &v43);

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = *(a1 + 64);
  *(v13 + 120) = *(a1 + 80);
  v15 = *(a1 + 112);
  *(v13 + 136) = *(a1 + 96);
  *(v13 + 152) = v15;
  *(v13 + 168) = *(a1 + 128);
  v16 = *a1;
  *(v13 + 56) = *(a1 + 16);
  v17 = *(a1 + 48);
  *(v13 + 72) = *(a1 + 32);
  *(v13 + 88) = v17;
  *(v13 + 104) = v14;
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v4;
  *(v13 + 40) = v16;
  sub_100037FAC(a1, &v43);

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = &protocol witness table for MainActor;
  v20 = *(a1 + 112);
  *(v19 + 128) = *(a1 + 96);
  *(v19 + 144) = v20;
  *(v19 + 160) = *(a1 + 128);
  v21 = *(a1 + 48);
  *(v19 + 64) = *(a1 + 32);
  *(v19 + 80) = v21;
  v22 = *(a1 + 80);
  *(v19 + 96) = *(a1 + 64);
  *(v19 + 112) = v22;
  v23 = *(a1 + 16);
  *(v19 + 32) = *a1;
  *(v19 + 48) = v23;
  *(v19 + 176) = v4;
  *(v19 + 184) = v39;
  *(v19 + 192) = v5;
  *(v19 + 200) = v41;
  *(v19 + 208) = v6;
  *(v19 + 216) = sub_1001168D0;
  *(v19 + 224) = v7;
  Binding.init(get:set:)();

  v42 = v43;
  v24 = v44;
  v25 = v45;
  v26 = swift_allocObject();
  v27 = *(a1 + 112);
  v26[7] = *(a1 + 96);
  v26[8] = v27;
  v26[9] = *(a1 + 128);
  v28 = *(a1 + 48);
  v26[3] = *(a1 + 32);
  v26[4] = v28;
  v29 = *(a1 + 80);
  v26[5] = *(a1 + 64);
  v26[6] = v29;
  v30 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v30;
  sub_100037FAC(a1, &v43);
  sub_1000040A8(&qword_100356698);
  FocusState.projectedValue.getter();
  v40 = v43;
  v31 = v44;
  v32 = v45;
  type metadata accessor for UIMetrics();
  sub_100116E84(&qword_100354D40, type metadata accessor for UIMetrics);
  v33 = EnvironmentObject.init()();
  v35 = v34;
  State.init(wrappedValue:)();
  v36 = v43;
  v37 = v44;
  *a2 = v33;
  *(a2 + 8) = v35;
  *(a2 + 16) = v42;
  *(a2 + 32) = v24;
  *(a2 + 40) = v25;
  *(a2 + 48) = v36;
  *(a2 + 64) = v37;
  *(a2 + 72) = xmmword_1002861A0;
  *(a2 + 88) = 20048;
  *(a2 + 96) = 0xE200000000000000;
  result = v40;
  *(a2 + 104) = v40;
  *(a2 + 120) = v31;
  *(a2 + 128) = v32;
  *(a2 + 136) = sub_100116A78;
  *(a2 + 144) = v26;
  return result;
}

void sub_100114B44(uint64_t a1)
{
  v2 = *(a1 + 48);
  swift_beginAccess();
  v3 = *(v2 + 136);
  if (v3 && ((v4 = *(a1 + 56), *(v3 + 16) == *(v4 + 16)) ? (v5 = *(v3 + 24) == *(v4 + 24)) : (v5 = 0), v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    (*(a1 + 64))();
  }

  else
  {
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F53C(v6, qword_100381E48);
    sub_100037FAC(a1, v14);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    sub_100038008(a1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14[0] = v10;
      *v9 = 136446210;
      v11 = sub_1000B9A7C();
      v13 = sub_10017C9E8(v11, v12, v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] BuiltInSelectRoadsidePhoneNumberContentView: return tapped in the free form text when it is not a current question anymore", v9, 0xCu);
      sub_100008964(v10);
    }
  }
}

uint64_t sub_100114CF0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100116B30();
  v11 = v9;
  v12 = v10;
  v68 = v9;
  v69 = v10;
  v13 = 0xE000000000000000;
  aBlock = 0;
  v63 = 0xE000000000000000;
  v14 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v14 = v9 & 0xFFFFFFFFFFFFLL;
  }

  v58 = v9;
  v59 = v10;
  v60 = 0;
  v61 = v14;
  swift_bridgeObjectRetain_n();
  v15 = String.Iterator.next()();
  if (v15.value._object)
  {
    countAndFlagsBits = v15.value._countAndFlagsBits;
    object = v15.value._object;
    do
    {
      if ((countAndFlagsBits != 10 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v19._countAndFlagsBits = countAndFlagsBits;
        v19._object = object;
        String.append(_:)(v19);
      }

      v18 = String.Iterator.next()();
      countAndFlagsBits = v18.value._countAndFlagsBits;
      object = v18.value._object;
    }

    while (v18.value._object);
    v20 = aBlock;
    v13 = v63;
  }

  else
  {
    v20 = 0;
  }

  v58 = v20;
  v59 = v13;
  v22 = String.init<A>(_:)();
  v23 = v21;
  if (v11 == v22 && v12 == v21)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      sub_10000F574();
      v52 = static OS_dispatch_queue.main.getter();
      v25 = swift_allocObject();
      v26 = a3[7];
      v25[7] = a3[6];
      v25[8] = v26;
      v25[9] = a3[8];
      v27 = a3[3];
      v25[3] = a3[2];
      v25[4] = v27;
      v28 = a3[5];
      v25[5] = a3[4];
      v25[6] = v28;
      v29 = a3[1];
      v25[1] = *a3;
      v25[2] = v29;
      v66 = sub_100117098;
      v67 = v25;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v64 = sub_1001D2438;
      v65 = &unk_100331070;
      v51 = _Block_copy(&aBlock);
      sub_100037FAC(a3, &v58);

      v30 = v55;
      static DispatchQoS.unspecified.getter();
      v58 = _swiftEmptyArrayStorage;
      sub_100116E84(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      v53 = v7;
      sub_1000040A8(&unk_100355D70);
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v31 = v56;
      v7 = v53;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = v51;
      v33 = v52;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v32);

      (*(v57 + 8))(v31, v4);
      (*(v7 + 8))(v30, v6);
      v68 = v22;
      v69 = v23;
      v11 = v22;
      v12 = v23;
    }
  }

  v34 = sub_1000FA564(v11, v12);
  v54 = v4;
  if (v35)
  {
    if (v34 == 43 && v35 == 0xE100000000000000)
    {

LABEL_22:
      v37 = 16;
      goto LABEL_24;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_22;
    }
  }

  v37 = 15;
LABEL_24:
  if (v37 >= String.count.getter())
  {
    return v68;
  }

  sub_10000F574();
  v53 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  v39 = a3[7];
  v38[7] = a3[6];
  v38[8] = v39;
  v38[9] = a3[8];
  v40 = a3[3];
  v38[3] = a3[2];
  v38[4] = v40;
  v41 = a3[5];
  v38[5] = a3[4];
  v38[6] = v41;
  v42 = a3[1];
  v38[1] = *a3;
  v38[2] = v42;
  v66 = sub_10011709C;
  v67 = v38;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_1001D2438;
  v65 = &unk_1003310C0;
  v43 = _Block_copy(&aBlock);
  v52 = v37;
  sub_100037FAC(a3, &v58);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v58 = _swiftEmptyArrayStorage;
  sub_100116E84(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
  v51 = v6;
  sub_1000040A8(&unk_100355D70);
  sub_100009274(&qword_10035BB50, &unk_100355D70);
  v45 = v56;
  v46 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v53;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  (*(v57 + 8))(v45, v46);
  (*(v7 + 8))(v44, v51);
  v48 = String.count.getter();
  v49 = __OFSUB__(v48, v52);
  result = v48 - v52;
  if (!v49)
  {
    sub_100115558(result);
    return v68;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001154B0(void *a1)
{
  if (*a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100116E84(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100115558(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = String.index(_:offsetBy:limitedBy:)();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return String.removeSubrange(_:)();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return String.removeSubrange(_:)();
  }

  return result;
}

void sub_100115698(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = *(a1 + 64);
  if (v4 != 8 && (v5 = *(a2 + 48), swift_beginAccess(), v6 = *(v5 + 64), *(v6 + 16)) && (v7 = sub_1001921EC(v4), (v8 & 1) != 0) && (sub_100048F80(*(v6 + 56) + 32 * v7, v13), swift_dynamicCast()))
  {
    v9 = v11;
    v10 = v12;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  *a3 = v9;
  a3[1] = v10;
}

void sub_100115750(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7, uint64_t (*a8)(uint64_t a1), void *a9, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for DispatchWorkItemFlags();
  v114 = *(v17 - 8);
  __chkstk_darwin(v17);
  v112 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for DispatchQoS();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = a1[1];
  v22 = *(a4 + 48);
  swift_beginAccess();
  v115 = v22;
  v23 = *(v22 + 136);
  if (!v23 || (*(v23 + 16) == *(a5 + 16) ? (v24 = *(v23 + 24) == *(a5 + 24)) : (v24 = 0), !v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F53C(v25, qword_100381C80);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Phone number: Updating value when it is not a current question anymore", v28, 2u);
    }

    return;
  }

  v107 = v17;
  v109 = a5;
  v122 = a6;
  v123 = a7;
  v124 = a8;
  v125 = a9;

  sub_1000040A8(&qword_100356770);
  Binding.wrappedValue.getter();
  if (v117)
  {
    if (v20 == aBlock && v117 == v21)
    {

      LODWORD(v106) = 1;
    }

    else
    {
      LODWORD(v106) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    LODWORD(v106) = 0;
  }

  v122 = a6;
  v123 = a7;
  v124 = a8;
  v125 = a9;
  aBlock = v20;
  v117 = v21;
  Binding.wrappedValue.setter();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  sub_10000F53C(v108, qword_100381C80);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v109;
  if (v31)
  {
    v33 = swift_slowAlloc();
    *v33 = 134349056;
    if ((v21 & 0x1000000000000000) != 0)
    {
      v34 = String.UTF8View._foreignCount()();
    }

    else
    {
      v34 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v34 = v20 & 0xFFFFFFFFFFFFLL;
      }
    }

    *(v33 + 4) = v34;

    _os_log_impl(&_mh_execute_header, v29, v30, "Phone number: Text length == %{public}ld", v33, 0xCu);
  }

  else
  {
  }

  v36 = sub_100116B30();
  v37 = v35;
  v128 = v36;
  v129 = v35;
  if ((v20 != v36 || v21 != v35) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v38 = qword_100353AA8;

    if (v38 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

  while (1)
  {
    v56 = 0xE000000000000000;
    aBlock = 0;
    v117 = 0xE000000000000000;
    v57 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v57 = v36 & 0xFFFFFFFFFFFFLL;
    }

    v122 = v36;
    v123 = v37;
    v124 = 0;
    v125 = v57;

    v58 = String.Iterator.next()();
    object = v58.value._object;
    if (v58.value._object)
    {
      countAndFlagsBits = v58.value._countAndFlagsBits;
      do
      {
        if ((countAndFlagsBits != 10 || object != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v62._countAndFlagsBits = countAndFlagsBits;
          v62._object = object;
          String.append(_:)(v62);
        }

        v61 = String.Iterator.next()();
        countAndFlagsBits = v61.value._countAndFlagsBits;
        object = v61.value._object;
      }

      while (v61.value._object);
      object = aBlock;
      v56 = v117;
    }

    v122 = object;
    v123 = v56;
    v63 = String.init<A>(_:)();
    v65 = v64;
    if (v36 == v63 && v37 == v64)
    {

LABEL_51:

      v67 = v36;
      v65 = v37;
      goto LABEL_59;
    }

    v67 = v63;
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v68)
    {
      goto LABEL_51;
    }

    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    sub_10000F53C(v108, qword_100381E48);
    sub_100037FAC(a4, &v122);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    sub_100038008(a4);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v122 = v72;
      *v71 = 136446210;
      v73 = sub_1000B9A7C();
      v75 = sub_10017C9E8(v73, v74, &v122);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v69, v70, "[%{public}s] Phone number: Return symbol entered", v71, 0xCu);
      sub_100008964(v72);
      v32 = v109;
    }

    if ((v106 & 1) == 0)
    {
      sub_10000F574();
      v106 = static OS_dispatch_queue.main.getter();
      v76 = swift_allocObject();
      *(v76 + 16) = a10;
      *(v76 + 24) = a11;
      v126 = sub_100031EEC;
      v127 = v76;
      v122 = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_1001D2438;
      v125 = &unk_100331160;
      v105 = _Block_copy(&v122);

      v77 = v110;
      static DispatchQoS.unspecified.getter();
      v122 = _swiftEmptyArrayStorage;
      sub_100116E84(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70);
      v32 = v109;
      sub_100009274(&qword_10035BB50, &unk_100355D70);
      v78 = v112;
      v79 = v107;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v80 = v105;
      v81 = v106;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v80);

      (*(v114 + 8))(v78, v79);
      (*(v111 + 8))(v77, v113);
    }

    v128 = v67;
    v129 = v65;
LABEL_59:
    v82 = sub_1000FA564(v67, v65);
    if (v83)
    {
      if (v82 == 43 && v83 == 0xE100000000000000)
      {

LABEL_64:
        v85 = 16;
        goto LABEL_66;
      }

      v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v84)
      {
        goto LABEL_64;
      }
    }

    v85 = 15;
LABEL_66:
    if (v85 >= String.count.getter())
    {
      goto LABEL_73;
    }

    v106 = v85;
    if (qword_100353AA8 != -1)
    {
      swift_once();
    }

    sub_10000F53C(v108, qword_100381E48);
    sub_100037FAC(a4, &v122);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    sub_100038008(a4);
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v122 = v89;
      *v88 = 136446210;
      v90 = sub_1000B9A7C();
      v92 = sub_10017C9E8(v90, v91, &v122);

      *(v88 + 4) = v92;
      _os_log_impl(&_mh_execute_header, v86, v87, "[%{public}s] Phone number: Entered text is over the limit", v88, 0xCu);
      sub_100008964(v89);
    }

    sub_10000F574();
    v93 = static OS_dispatch_queue.main.getter();
    v94 = swift_allocObject();
    v95 = *(a4 + 112);
    v94[7] = *(a4 + 96);
    v94[8] = v95;
    v94[9] = *(a4 + 128);
    v96 = *(a4 + 48);
    v94[3] = *(a4 + 32);
    v94[4] = v96;
    v97 = *(a4 + 80);
    v94[5] = *(a4 + 64);
    v94[6] = v97;
    v98 = *(a4 + 16);
    v94[1] = *a4;
    v94[2] = v98;
    v120 = sub_100116FAC;
    v121 = v94;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1001D2438;
    v119 = &unk_1003311B0;
    v36 = _Block_copy(&aBlock);
    sub_100037FAC(a4, &v122);

    v99 = v110;
    static DispatchQoS.unspecified.getter();
    v122 = _swiftEmptyArrayStorage;
    sub_100116E84(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    a4 = sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v37 = v112;
    v100 = v107;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v36);

    (*(v114 + 8))(v37, v100);
    (*(v111 + 8))(v99, v113);
    v101 = String.count.getter();
    v102 = __OFSUB__(v101, v106);
    v103 = v101 - v106;
    if (!v102)
    {
      break;
    }

    __break(1u);
LABEL_76:
    swift_once();
LABEL_31:
    sub_10000F53C(v108, qword_100381E48);
    sub_100037FAC(a4, &v122);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    sub_100038008(a4);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v122 = v42;
      *v41 = 136446210;
      v43 = sub_1000B9A7C();
      v45 = sub_10017C9E8(v43, v44, &v122);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "[%{public}s] Phone number: Disallowed character entered", v41, 0xCu);
      sub_100008964(v42);
    }

    sub_10000F574();
    v105 = static OS_dispatch_queue.main.getter();
    v46 = swift_allocObject();
    v47 = *(a4 + 112);
    v46[7] = *(a4 + 96);
    v46[8] = v47;
    v46[9] = *(a4 + 128);
    v48 = *(a4 + 48);
    v46[3] = *(a4 + 32);
    v46[4] = v48;
    v49 = *(a4 + 80);
    v46[5] = *(a4 + 64);
    v46[6] = v49;
    v50 = *(a4 + 16);
    v46[1] = *a4;
    v46[2] = v50;
    v120 = sub_100116ECC;
    v121 = v46;
    aBlock = _NSConcreteStackBlock;
    v117 = 1107296256;
    v118 = sub_1001D2438;
    v119 = &unk_100331110;
    v51 = _Block_copy(&aBlock);
    sub_100037FAC(a4, &v122);

    v52 = v110;
    static DispatchQoS.unspecified.getter();
    v122 = _swiftEmptyArrayStorage;
    sub_100116E84(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    sub_100009274(&qword_10035BB50, &unk_100355D70);
    v53 = v112;
    v54 = v107;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v105;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);

    (*(v114 + 8))(v53, v54);
    (*(v111 + 8))(v52, v113);
    v32 = v109;
  }

  sub_100115558(v103);
  v32 = v109;
LABEL_73:
  v125 = &type metadata for String;
  v122 = v128;
  v123 = v129;
  sub_1000C0AF0(v32, &v122);
  sub_1001058AC(&v122);
}

uint64_t sub_1001168D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_100116980()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 232, 7);
}

unint64_t sub_100116A80(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t sub_100116B30()
{

  v0 = String.Iterator.next()();
  object = v0.value._object;
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    do
    {

      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {
LABEL_3:

        v3._countAndFlagsBits = countAndFlagsBits;
        v3._object = object;
        String.append(_:)(v3);
        goto LABEL_4;
      }

      v6 = v5.value._countAndFlagsBits;
      v7 = v5.value._object;
      while ((Character.isNumber.getter() & 1) != 0 || v6 == 43 && v7 == 0xE100000000000000)
      {

LABEL_8:
        v8 = String.Iterator.next()();
        v6 = v8.value._countAndFlagsBits;
        v7 = v8.value._object;
        if (!v8.value._object)
        {
          goto LABEL_3;
        }
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
        goto LABEL_8;
      }

LABEL_4:

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  result = String.init<A>(_:)();
  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = result;
    v14 = v11;
    v15 = sub_1000FA564(result, v11);
    if (v16)
    {
      if (v15 == 43 && v16 == 0xE100000000000000)
      {
      }

      else
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v18 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_100116A80(1uLL, v13, v14);

      Substring.filter(_:)();

      v24._countAndFlagsBits = String.init<A>(_:)();
      String.append(_:)(v24);

      return 43;
    }

LABEL_24:
    v19 = String.Iterator.next()();
    v20 = v19.value._object;
    if (v19.value._object)
    {
      v21 = v19.value._countAndFlagsBits;
      do
      {
        if (Character.isNumber.getter())
        {
          v23._countAndFlagsBits = v21;
          v23._object = v20;
          String.append(_:)(v23);
        }

        v22 = String.Iterator.next()();
        v21 = v22.value._countAndFlagsBits;
        v20 = v22.value._object;
      }

      while (v22.value._object);
    }

    return String.init<A>(_:)();
  }

  return result;
}

uint64_t sub_100116E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100116E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100116EEC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100116F24()
{

  return _swift_deallocObject(v0, 160, 7);
}

unint64_t sub_100116FD0()
{
  result = qword_10035EFA8;
  if (!qword_10035EFA8)
  {
    sub_100008CF0(&qword_10035EFB0);
    sub_100009274(&qword_10035EFB8, &qword_10035EFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035EFA8);
  }

  return result;
}

id sub_1001170C8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for MedicalIDAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10011735C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100117398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001173E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100117490(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1;
  v3[3] = v1[1];
  v3[4] = v4;
  v7 = v1[4];
  v3[5] = v5;
  v3[6] = v7;
  v3[1] = *(a1 + 16);
  v3[2] = v6;
  (*(*(a1 - 8) + 16))(&v26, v1, a1);
  sub_100008CF0(&qword_10035F098);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035F0A0);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035F0A8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_100009274(&qword_10035F0B0, &qword_10035F0A0);
  v22 = swift_getWitnessTable();
  v23 = sub_100009274(&qword_10035F0B8, &qword_10035F0A8);
  v20 = swift_getWitnessTable();
  v21 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v8 = type metadata accessor for ScrollView();
  v9 = swift_getWitnessTable();
  v26 = v8;
  v27 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = v8;
  v27 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = OpaqueTypeMetadata2;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  v26 = OpaqueTypeMetadata2;
  v27 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = &protocol witness table for _AppearanceActionModifier;
  swift_getWitnessTable();
  v16 = ScrollViewReader.init(content:)();
  v17 = v12;
  v13 = type metadata accessor for ScrollViewReader();
  v14 = swift_getWitnessTable();
  sub_10009A58C(&v16, v13, v14);

  v16 = v26;
  v17 = v27;
  sub_10009A58C(&v16, v13, v14);
}

uint64_t sub_100117894@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a4;
  v73 = a3;
  v74 = a2;
  v70 = a1;
  v71 = a5;
  v69 = type metadata accessor for ScrollViewProxy();
  v66 = *(v69 - 8);
  v68 = *(v66 + 64);
  __chkstk_darwin(v69);
  v67 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for NamedCoordinateSpace();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008CF0(&qword_10035F098);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035F0A0);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035F0A8);
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_100009274(&qword_10035F0B0, &qword_10035F0A0);
  v85 = WitnessTable;
  v86 = v9;
  v61 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v10 = swift_getWitnessTable();
  v11 = sub_100009274(&qword_10035F0B8, &qword_10035F0A8);
  v83 = v10;
  v84 = v11;
  v81 = swift_getWitnessTable();
  v82 = &protocol witness table for _PaddingLayout;
  v54 = v7;
  v53 = swift_getWitnessTable();
  v12 = type metadata accessor for ScrollView();
  v55 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v49 - v13;
  v15 = swift_getWitnessTable();
  *&v80 = v12;
  *(&v80 + 1) = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = OpaqueTypeMetadata2;
  v17 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v49 - v18;
  *&v80 = v12;
  *(&v80 + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v80 = OpaqueTypeMetadata2;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v50 = OpaqueTypeConformance2;
  v58 = &opaque type descriptor for <<opaque return type of View.coordinateSpace(_:)>>;
  v56 = swift_getOpaqueTypeMetadata2();
  v59 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = &v49 - v21;
  v22 = type metadata accessor for ModifiedContent();
  v60 = *(v22 - 8);
  __chkstk_darwin(v22);
  v52 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v57 = &v49 - v25;
  static Axis.Set.vertical.getter();
  v75 = v73;
  v26 = v63;
  v76 = v63;
  v27 = v74;
  v77 = v74;
  ScrollView.init(_:showsIndicators:content:)();
  View.scrollClipDisabled(_:)();
  (*(v55 + 8))(v14, v12);
  v80 = *(v27 + 56);
  v28 = v62;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v29 = v72;
  View.coordinateSpace(_:)();
  (*(v64 + 8))(v28, v65);
  (*(v17 + 8))(v19, v29);
  v30 = v66;
  v31 = v67;
  v32 = v69;
  (*(v66 + 16))(v67, v70, v69);
  v33 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v34 = (v68 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v73;
  *(v35 + 24) = v26;
  (*(v30 + 32))(v35 + v33, v31, v32);
  v36 = (v35 + v34);
  v37 = v74;
  v38 = v74[3];
  v36[2] = v74[2];
  v36[3] = v38;
  v36[4] = v37[4];
  v39 = v37[1];
  *v36 = *v37;
  v36[1] = v39;
  v40 = type metadata accessor for ExplorerScrollContentWithOffsetView();
  (*(*(v40 - 8) + 16))(&v80, v37, v40);
  *&v80 = v72;
  *(&v80 + 1) = v50;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = v52;
  v43 = v56;
  v44 = v51;
  View.onAppear(perform:)();

  (*(v59 + 8))(v44, v43);
  v78 = v41;
  v79 = &protocol witness table for _AppearanceActionModifier;
  v45 = swift_getWitnessTable();
  v46 = v57;
  sub_10009A58C(v42, v22, v45);
  v47 = *(v60 + 8);
  v47(v42, v22);
  sub_10009A58C(v46, v22, v45);
  return (v47)(v46, v22);
}

uint64_t sub_1001181EC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v44 = type metadata accessor for NamedCoordinateSpace();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008CF0(&qword_10035F098);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  sub_100008CF0(&qword_10035F0A0);
  v12 = type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035F0A8);
  v42 = v12;
  v13 = type metadata accessor for ModifiedContent();
  v47 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v40 = v16;
  v17 = type metadata accessor for ModifiedContent();
  v48 = *(v17 - 8);
  __chkstk_darwin(v17);
  v45 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v46 = &v40 - v20;
  v50 = a2;
  v51 = a3;
  v52 = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v59[0] = *(a1 + 56);
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v21 = swift_allocObject();
  v22 = a3;
  v23 = v15;
  *(v21 + 16) = a2;
  *(v21 + 24) = v22;
  v24 = a1[3];
  *(v21 + 64) = a1[2];
  *(v21 + 80) = v24;
  *(v21 + 96) = a1[4];
  v25 = a1[1];
  *(v21 + 32) = *a1;
  *(v21 + 48) = v25;
  v26 = type metadata accessor for ExplorerScrollContentWithOffsetView();
  (*(*(v26 - 8) + 16))(v59, a1, v26);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_100118FA4();
  sub_100034A78(v8, sub_100118F78, v21, v9, &type metadata for ExplorerScrollContentFrame, WitnessTable, v28, v15);

  (*(v43 + 8))(v8, v44);
  (*(v41 + 8))(v11, v9);
  if (*a1)
  {
    v29 = qword_100353988;

    if (v29 != -1)
    {
      swift_once();
    }

    v30 = sub_100009274(&qword_10035F0B0, &qword_10035F0A0);
    v57 = WitnessTable;
    v58 = v30;
    v31 = swift_getWitnessTable();
    v32 = sub_100009274(&qword_10035F0B8, &qword_10035F0A8);
    v55 = v31;
    v56 = v32;
    v33 = v40;
    v34 = swift_getWitnessTable();
    v35 = v45;
    View.padding(_:)();
    (*(v47 + 8))(v23, v33);
    v53 = v34;
    v54 = &protocol witness table for _PaddingLayout;
    v36 = swift_getWitnessTable();
    v37 = v46;
    sub_10009A58C(v35, v17, v36);
    v38 = *(v48 + 8);
    v38(v35, v17);
    sub_10009A58C(v37, v17, v36);
    return (v38)(v37, v17);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10003BDC8();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001188C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18[5] = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  v13 = static Color.clear.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v31[3] = *&v31[59];
  *&v31[11] = *&v31[67];
  *&v31[19] = *&v31[75];
  *&v31[27] = *&v31[83];
  *&v31[51] = v32;
  *&v31[43] = *&v31[99];
  *&v31[35] = *&v31[91];
  *&v29[0] = v13;
  WORD4(v29[0]) = 256;
  *(&v29[3] + 10) = *&v31[24];
  *(&v29[2] + 10) = *&v31[16];
  *(&v29[1] + 10) = *&v31[8];
  *(v29 + 10) = *v31;
  *(&v29[7] + 1) = *(&v32 + 1);
  *(&v29[6] + 10) = *&v31[48];
  *(&v29[5] + 10) = *&v31[40];
  *(&v29[4] + 10) = *&v31[32];
  v14 = *(a1 + 40);
  v15 = Namespace.wrappedValue.getter();
  v14(v15, 0);
  sub_10009A58C(v9, a2, a3);
  v16 = *(v7 + 8);
  v16(v9, a2);
  v24 = v29[4];
  v25 = v29[5];
  v26 = v29[6];
  v27 = v29[7];
  v20 = v29[0];
  v21 = v29[1];
  v22 = v29[2];
  v23 = v29[3];
  v28[0] = &v20;
  (*(v7 + 16))(v9, v12, a2);
  v28[1] = v9;
  sub_100118FF8(v29, v30);
  v19[0] = sub_1000040A8(&qword_10035F098);
  v19[1] = a2;
  v18[6] = sub_100119068();
  v18[7] = a3;
  sub_1000970F0(v28, 2uLL, v19);
  sub_100119120(v29);
  v16(v12, a2);
  v16(v9, a2);
  v30[4] = v24;
  v30[5] = v25;
  v30[6] = v26;
  v30[7] = v27;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  return sub_100119120(v30);
}

uint64_t sub_100118C04()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_100118C74()
{
  Namespace.wrappedValue.getter();
  static UnitPoint.bottom.getter();
  sub_100118EC8();
  return ScrollViewProxy.scrollTo<A>(_:anchor:)();
}

uint64_t sub_100118D48()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 80, v3 | 7);
}

uint64_t sub_100118E00()
{
  type metadata accessor for ScrollViewProxy();

  return sub_100118C04();
}

unint64_t sub_100118EC8()
{
  result = qword_10035F0C0;
  if (!qword_10035F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035F0C0);
  }

  return result;
}

uint64_t sub_100118F28()
{

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100118F78(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 56);
  MinY = CGRectGetMinY(*&a1);
  return v5(MinY);
}

unint64_t sub_100118FA4()
{
  result = qword_10035F0C8;
  if (!qword_10035F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035F0C8);
  }

  return result;
}

uint64_t sub_100118FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035F098);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100119068()
{
  result = qword_10035F0D0;
  if (!qword_10035F0D0)
  {
    sub_100008CF0(&qword_10035F098);
    sub_100009274(&qword_10035F0D8, &qword_10035F0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035F0D0);
  }

  return result;
}

uint64_t sub_100119120(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035F098);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100119188()
{
  sub_100008CF0(&qword_10035F098);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_100008CF0(&qword_10035F0A0);
  type metadata accessor for ModifiedContent();
  sub_100008CF0(&qword_10035F0A8);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_100009274(&qword_10035F0B0, &qword_10035F0A0);
  swift_getWitnessTable();
  sub_100009274(&qword_10035F0B8, &qword_10035F0A8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for ScrollViewReader();
  return swift_getWitnessTable();
}

uint64_t sub_100119498()
{
  v1 = sub_1000040A8(&qword_10035F520);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - v3;
  v5 = sub_1000040A8(&qword_10035F528);
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v14 = v13 - v6;
  v7 = v0;
  v19 = *(*(v0 + 32) + 40);

  sub_1000040A8(&qword_10035F530);
  v13[1] = &protocol conformance descriptor for PassthroughSubject<A, B>;
  sub_100009274(&qword_10035F538, &qword_10035F530);
  Publisher.map<A>(_:)();

  sub_100009274(&qword_10035F540, &qword_10035F520);
  v8 = Publisher.eraseToAnyPublisher()();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v18 = *(*(v7 + 40) + 32);
  v19 = v8;

  Publisher.map<A>(_:)();

  v10 = Publisher.eraseToAnyPublisher()();
  v9(v4, v1);
  v17 = *(*(*(v7 + 64) + 32) + 24);
  v18 = v10;
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  v17 = Publisher.eraseToAnyPublisher()();
  sub_1000040A8(&qword_10035F548);
  sub_100009274(&qword_10035F550, &qword_10035F548);
  v11 = v14;
  Publishers.Merge3.init(_:_:_:)();
  sub_1001689A4(v11, sub_100119878, 0);
  return (*(v15 + 8))(v11, v16);
}

void sub_100119878(void *a1)
{
  v2 = a1[8];
  v3 = *(v2 + 32);
  if (!*(v3 + 64))
  {
    goto LABEL_6;
  }

  if ((sub_100071A54(0, *(v3 + 88)) & 1) == 0)
  {
    v5 = *(v2 + 32);
    if (*(v5 + 64))
    {
      v4 = sub_100071A54(1, *(v5 + 88));
      goto LABEL_7;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = 1;
LABEL_7:
  v6 = *(a1[4] + 80);
  if (v6 == 2 || (v6 & 1) == 0 || (v7 = *(a1[5] + 41), v7 == 2) || (v7 & 1) == 0)
  {
    v4 = 0;
  }

  v8 = objc_opt_self();
  v9 = [v8 sharedApplication];
  v10 = [v9 isIdleTimerDisabled];

  if ((v4 & 1) != v10)
  {
    if (qword_100353A10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F53C(v11, qword_100381C80);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 67240192;
      *(v14 + 4) = v4 & 1;
      _os_log_impl(&_mh_execute_header, v12, v13, "Do not dim screen = %{BOOL,public}d", v14, 8u);
    }

    v15 = [v8 sharedApplication];
    [v15 setIdleTimerDisabled:v4 & 1];
  }
}

void sub_100119A88(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381C80);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[1] = a2;
    v22 = v10;
    *v9 = 136446210;
    LOBYTE(v21[0]) = a1 & 1;

    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "handleMessagingRequestStewie: %{public}s", v9, 0xCu);
    sub_100008964(v10);
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21[0] = v17;
    *v16 = 136446210;
    LOBYTE(v22) = *(*(v3 + 40) + 40);
    v18 = String.init<A>(describing:)();
    v20 = sub_10017C9E8(v18, v19, v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "handleMessagingRequestStewie: current stage: %{public}s", v16, 0xCu);
    sub_100008964(v17);
  }

  sub_100267BD0();
  sub_100179714(a1 & 1);
  sub_10024718C(2);
  sub_1001E52FC(0, 0);
}

void sub_100119D20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 176);

    sub_100243E44(5uLL, 0x80u, sub_100119DA8, 0);
  }
}

void sub_100119DA8(uint64_t a1)
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240192;
    *(v4 + 4) = a1 == 0;

    _os_log_impl(&_mh_execute_header, oslog, v3, "Requested messaging offer, success: %{BOOL,public}d", v4, 8u);
  }

  else
  {
  }
}

void sub_100119ECC()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381C80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "handleOfferAccepted", v3, 2u);
  }

  sub_10002894C();
}

void sub_100119FB0(char a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "onStatusBarPillTapped: banner presented - %{BOOL}d", v7, 8u);
  }

  v8 = sub_10011A20C(v2);
  if (v8 <= 2)
  {
    if (!v8)
    {
      if (*(*(v2 + 40) + 40) != 3 && (a1 & 1) != 0)
      {
        sub_100147D98();
        return;
      }

      goto LABEL_25;
    }

    if (v8 == 1)
    {
      if (*(*(v2 + 40) + 40) != 8 && (a1 & 1) != 0)
      {
        v9 = *(v2 + 112);
        if (*(v9 + 248) != 3 && (*(v9 + 216) & 1) == 0)
        {
          sub_100145E18(*(v9 + 208));
          return;
        }
      }

      goto LABEL_25;
    }

    if (a1)
    {

      sub_10014ADC8();
      return;
    }

LABEL_25:
    sub_10012D3B4(sub_10012DAF4, 0);
    return;
  }

  if (v8 != 4 || (a1 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF00, &unk_100365610);
  Subject<>.send()();
}

uint64_t sub_10011A20C(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(v1 + 32);
  if (!*(v2 + 64))
  {
    return 5;
  }

  v3 = sub_100071A54(0, *(v2 + 88));
  result = 0;
  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + 32);
    if (!*(v5 + 64))
    {
      return 5;
    }

    v6 = sub_100071A54(1, *(v5 + 88));
    result = 1;
    if ((v6 & 1) == 0)
    {
      v7 = *(v1 + 32);
      if (!*(v7 + 64))
      {
        return 5;
      }

      v8 = sub_100071A54(4, *(v7 + 88));
      result = 4;
      if ((v8 & 1) == 0)
      {
        v9 = *(v1 + 32);
        if (!*(v9 + 64))
        {
          return 5;
        }

        v10 = sub_100071A54(2, *(v9 + 88));
        result = 2;
        if ((v10 & 1) == 0)
        {
          return 5;
        }
      }
    }
  }

  return result;
}

id sub_10011A2C0(void *a1)
{
  v2 = v1;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v50[0] = v9;
    *v8 = 136446210;
    v10 = [v5 requestIdentifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10017C9E8(v11, v13, v50);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "createBannerContentFor(%{public}s)", v8, 0xCu);
    sub_100008964(v9);
  }

  v15 = [objc_allocWithZone(UIView) init];
  v16 = *(v2 + 160);
  sub_1000089B0(v16 + 48, v50);
  v17 = v50[3];
  v18 = v50[4];
  sub_1000088DC(v50, v50[3]);
  (*(v18 + 8))(v49, v17, v18);
  sub_100008964(v49);
  v19 = objc_opt_self();
  v20 = [v19 systemGray5Color];
  [v15 setBackgroundColor:v20];

  sub_100008964(v50);
  [v15 setAutoresizingMask:18];
  v21 = [v15 layer];
  sub_1000089B0(v16 + 48, v50);
  v22 = v50[3];
  v23 = v50[4];
  sub_1000088DC(v50, v50[3]);
  (*(v23 + 8))(v49, v22, v23);
  sub_100008964(v49);
  [v21 setCornerRadius:30.0];

  sub_100008964(v50);
  v24 = [v15 layer];
  [v24 setCornerCurve:kCACornerCurveContinuous];

  v25 = [v15 layer];
  [v25 setMasksToBounds:1];

  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v26 = EnvironmentObject.init()();
  sub_10011D238(v26);
  v27 = static SafeAreaRegions.all.getter();
  LOBYTE(v22) = static Edge.Set.all.getter();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v48, __src, sizeof(v48));
  sub_100006C20(__dst, v50, &qword_10035F450);
  sub_100008FA0(v48, &qword_10035F450);
  memcpy(v49, __src, 0x1A0uLL);
  v49[52] = v27;
  LOBYTE(v49[53]) = v22;
  memcpy(v50, __src, 0x1A0uLL);
  v50[52] = v27;
  v51 = v22;
  sub_100006C20(v49, v45, &qword_10035F458);
  sub_100008FA0(v50, &qword_10035F458);
  v28 = *(v2 + 48);
  v29 = *(v28 + 32);
  v30 = *(v28 + 40);
  v31 = sub_1000040A8(&qword_10035F460);
  v32 = objc_allocWithZone(v31);
  objc_allocWithZone(sub_1000040A8(&qword_10035F468));
  memcpy(v45, v49, 0x1A9uLL);
  sub_100006C20(v49, v44, &qword_10035F458);
  v33 = UIHostingController.init(rootView:)();
  *&v32[qword_100355350] = v33;
  v34 = v33;
  UIHostingController.safeAreaRegions.setter();

  v43.receiver = v32;
  v43.super_class = v31;
  v35 = objc_msgSendSuper2(&v43, "initWithFrame:", 0.0, 0.0, v29, v30);
  v36 = *&v35[qword_100355350];
  v37 = v35;
  v38 = [v36 view];
  if (v38)
  {
    v39 = v38;
    v40 = [v19 clearColor];
    [v39 setBackgroundColor:v40];

    [v39 setFrame:{0.0, 0.0, v29, v30}];
    [v37 addSubview:v39];
    [v39 setAutoresizesSubviews:1];
  }

  v41 = v37;
  [v41 setAutoresizesSubviews:1];
  [v41 setAutoresizingMask:16];

  [v15 addSubview:v41];
  sub_100008FA0(v49, &qword_10035F458);
  return v15;
}

char *sub_10011A8F0(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v103[0] = v10;
    *v9 = 136446210;
    v11 = [v6 requestIdentifier];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, v103);

    *(v9 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "createSessionContent(%{public}s)", v9, 0xCu);
    sub_100008964(v10);
  }

  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v16 = EnvironmentObject.init()();
  sub_100124498(v16);
  v17 = static SafeAreaRegions.all.getter();
  v18 = static Edge.Set.all.getter();

  memcpy(v100, v99, sizeof(v100));
  memcpy(v101, v99, sizeof(v101));
  sub_100006C20(v100, v103, &qword_10035F0E8);
  sub_100008FA0(v101, &qword_10035F0E8);
  memcpy(v102, v99, 0x1A0uLL);
  v102[52] = v17;
  LOBYTE(v102[53]) = v18;
  memcpy(v103, v99, 0x1A0uLL);
  v103[52] = v17;
  v104 = v18;
  sub_100006C20(v102, v98, &qword_10035F0F0);
  sub_100008FA0(v103, &qword_10035F0F0);
  v19 = sub_1000040A8(&qword_10035F0F8);
  v20 = objc_allocWithZone(v19);
  v20[qword_10035C2E0] = 0;
  v21 = objc_allocWithZone(sub_1000040A8(&qword_10035F100));
  memcpy(v98, v102, 0x1A9uLL);
  v22 = UIHostingController.init(rootView:)();
  *&v20[qword_10035C2E8] = v22;
  v23 = v22;
  UIHostingController.safeAreaRegions.setter();

  v97.receiver = v20;
  v97.super_class = v19;
  v24 = objc_msgSendSuper2(&v97, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v25 = *&v24[qword_10035C2E8];
  v26 = v24;
  v27 = [v25 view];
  if (v27)
  {
    v28 = v27;
    v29 = [objc_opt_self() clearColor];
    [v28 setBackgroundColor:v29];

    [v26 addSubview:v28];
    [v28 setAutoresizesSubviews:1];
  }

  v30 = v26;
  [v30 setAutoresizesSubviews:1];
  [v30 setAutoresizingMask:0];

  v31 = EnvironmentObject.init()();
  sub_100122800(v31);
  v32 = static SafeAreaRegions.all.getter();
  v33 = static Edge.Set.all.getter();

  memcpy(v94, v93, sizeof(v94));
  memcpy(v95, v93, sizeof(v95));
  sub_100006C20(v94, v98, &qword_10035F108);
  sub_100008FA0(v95, &qword_10035F108);
  memcpy(v96, v93, 0x1A0uLL);
  v96[52] = v32;
  LOBYTE(v96[53]) = v33;
  memcpy(v98, v93, 0x1A0uLL);
  v98[52] = v32;
  LOBYTE(v98[53]) = v33;
  sub_100006C20(v96, v92, &qword_10035F110);
  sub_100008FA0(v98, &qword_10035F110);
  v34 = sub_1000040A8(&qword_10035F118);
  v35 = objc_allocWithZone(v34);
  v35[qword_10035C2E0] = 1;
  v36 = objc_allocWithZone(sub_1000040A8(&qword_10035F120));
  memcpy(v92, v96, 0x1A9uLL);
  v37 = UIHostingController.init(rootView:)();
  *&v35[qword_10035C2E8] = v37;
  v38 = v37;
  UIHostingController.safeAreaRegions.setter();

  v91.receiver = v35;
  v91.super_class = v34;
  v39 = objc_msgSendSuper2(&v91, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v40 = *&v39[qword_10035C2E8];
  v41 = v39;
  v42 = [v40 view];
  if (v42)
  {
    v43 = v42;
    v44 = [objc_opt_self() clearColor];
    [v43 setBackgroundColor:v44];

    [v41 addSubview:v43];
    [v43 setAutoresizesSubviews:1];
  }

  v45 = v41;
  [v45 setAutoresizesSubviews:1];
  [v45 setAutoresizingMask:0];

  v46 = EnvironmentObject.init()();
  sub_100120B68(v46);
  v47 = static SafeAreaRegions.all.getter();
  v48 = static Edge.Set.all.getter();

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v89, __src, sizeof(v89));
  sub_100006C20(__dst, v92, &qword_10035F128);
  sub_100008FA0(v89, &qword_10035F128);
  memcpy(v90, __src, 0x1A0uLL);
  v90[52] = v47;
  LOBYTE(v90[53]) = v48;
  memcpy(v92, __src, 0x1A0uLL);
  v92[52] = v47;
  LOBYTE(v92[53]) = v48;
  sub_100006C20(v90, v86, &qword_10035F130);
  sub_100008FA0(v92, &qword_10035F130);
  v49 = sub_1000040A8(&qword_10035F138);
  v50 = objc_allocWithZone(v49);
  v50[qword_10035C2E0] = 2;
  v51 = objc_allocWithZone(sub_1000040A8(&qword_10035F140));
  memcpy(v86, v90, 0x1A9uLL);
  v52 = UIHostingController.init(rootView:)();
  *&v50[qword_10035C2E8] = v52;
  v53 = v52;
  UIHostingController.safeAreaRegions.setter();

  v85.receiver = v50;
  v85.super_class = v49;
  v54 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v55 = *&v54[qword_10035C2E8];
  v56 = v54;
  v57 = [v55 view];
  if (v57)
  {
    v58 = v57;
    v59 = [objc_opt_self() clearColor];
    [v58 setBackgroundColor:v59];

    [v56 addSubview:v58];
    [v58 setAutoresizesSubviews:1];
  }

  v60 = v56;
  [v60 setAutoresizesSubviews:1];
  [v60 setAutoresizingMask:0];

  v61 = EnvironmentObject.init()();
  sub_10011EED0(v61);
  v62 = static SafeAreaRegions.all.getter();
  v63 = static Edge.Set.all.getter();

  memcpy(v82, v81, sizeof(v82));
  memcpy(v83, v81, sizeof(v83));
  sub_100006C20(v82, v86, &qword_10035F148);
  sub_100008FA0(v83, &qword_10035F148);
  memcpy(v84, v81, 0x1A0uLL);
  v84[52] = v62;
  LOBYTE(v84[53]) = v63;
  memcpy(v86, v81, 0x1A0uLL);
  v86[52] = v62;
  LOBYTE(v86[53]) = v63;
  sub_100006C20(v84, v80, &qword_10035F150);
  sub_100008FA0(v86, &qword_10035F150);
  v64 = *(v2 + 48);
  v65 = *(v64 + 64);
  v66 = *(v64 + 72);
  v67 = sub_1000040A8(&qword_10035F158);
  v68 = objc_allocWithZone(v67);
  v69 = objc_allocWithZone(sub_1000040A8(&qword_10035F160));
  memcpy(v80, v84, 0x1A9uLL);
  v70 = UIHostingController.init(rootView:)();
  *&v68[qword_100355350] = v70;
  v71 = v70;
  UIHostingController.safeAreaRegions.setter();

  v79.receiver = v68;
  v79.super_class = v67;
  v72 = objc_msgSendSuper2(&v79, "initWithFrame:", 0.0, 0.0, v65, v66);
  v73 = *&v72[qword_100355350];
  v74 = v72;
  v75 = [v73 view];
  if (v75)
  {
    v76 = v75;
    v77 = [objc_opt_self() clearColor];
    [v76 setBackgroundColor:v77];

    [v76 setFrame:{0.0, 0.0, v65, v66}];
    [v74 addSubview:v76];
    [v76 setAutoresizesSubviews:1];
  }

  [v74 setAutoresizesSubviews:1];
  [v74 setAutoresizingMask:0];

  return v30;
}

void *sub_10011B528(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = v1[3];
  type metadata accessor for AlertAppearanceModel();
  sub_100126650(&qword_10035B5C0, type metadata accessor for AlertAppearanceModel);
  v6 = static ObservableObject.environmentStore.getter();
  v7 = v2[3];
  v60[2] = v2[2];
  v60[3] = v7;
  v8 = v2[5];
  v60[4] = v2[4];
  v60[5] = v8;
  v9 = v2[1];
  v60[0] = *v2;
  v60[1] = v9;
  v10 = v1[2];
  v62 = v60[0];
  v63 = v9;
  v64 = v60[2];
  v65 = v7;
  v66 = v60[4];
  v67 = v8;
  *&v68 = v6;
  *(&v68 + 1) = v5;
  type metadata accessor for AppEvents();
  sub_100126698(v2, v264);
  sub_100126650(&qword_100354D48, type metadata accessor for AppEvents);

  v11 = static ObservableObject.environmentStore.getter();
  v263[4] = v60[4];
  v263[5] = v67;
  v263[6] = v68;
  v263[0] = v60[0];
  v263[1] = v63;
  v263[3] = v65;
  v263[2] = v60[2];
  v69[1] = v60[1];
  v69[0] = v60[0];
  v69[5] = v60[5];
  v69[4] = v60[4];
  v69[3] = v60[3];
  v69[2] = v60[2];
  v70 = v6;
  v71 = v5;
  sub_100006C20(&v62, v264, &qword_10035F558);

  sub_100008FA0(v69, &qword_10035F558);
  v12 = v1[4];
  v76 = v263[4];
  v77 = v263[5];
  v78 = v263[6];
  v72 = v263[0];
  v73 = v263[1];
  v75 = v263[3];
  v74 = v263[2];
  *&v79 = v11;
  *(&v79 + 1) = v10;
  type metadata accessor for AppPropertiesModel();
  sub_100126650(&qword_10035B6A0, type metadata accessor for AppPropertiesModel);
  v13 = static ObservableObject.environmentStore.getter();
  v60[4] = v76;
  v60[5] = v77;
  v60[6] = v78;
  v60[7] = v79;
  v60[0] = v72;
  v60[1] = v73;
  v60[2] = v74;
  v60[3] = v75;
  v80[1] = v263[1];
  v80[0] = v263[0];
  v80[6] = v263[6];
  v80[5] = v263[5];
  v80[4] = v263[4];
  v80[2] = v263[2];
  v80[3] = v263[3];
  v81 = v11;
  v82 = v10;
  sub_100006C20(&v72, v264, &qword_10035F560);

  sub_100008FA0(v80, &qword_10035F560);
  v14 = v1[5];
  v87 = v60[4];
  v88 = v60[5];
  v89 = v60[6];
  v90 = v60[7];
  v83 = v60[0];
  v84 = v60[1];
  v85 = v60[2];
  v86 = v60[3];
  *&v91 = v13;
  *(&v91 + 1) = v12;
  type metadata accessor for AppRuntimeStateModel();
  sub_100126650(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);
  v15 = static ObservableObject.environmentStore.getter();
  v263[6] = v89;
  v263[7] = v90;
  v263[8] = v91;
  v263[2] = v85;
  v263[3] = v86;
  v263[5] = v88;
  v263[4] = v87;
  v263[1] = v84;
  v263[0] = v83;
  v92[4] = v60[4];
  v92[5] = v60[5];
  v92[6] = v60[6];
  v92[7] = v60[7];
  v92[0] = v60[0];
  v92[1] = v60[1];
  v92[2] = v60[2];
  v92[3] = v60[3];
  v93 = v13;
  v94 = v12;
  sub_100006C20(&v83, v264, &qword_10035F568);

  sub_100008FA0(v92, &qword_10035F568);
  v16 = v1[6];
  v101 = v263[6];
  v102 = v263[7];
  v103 = v263[8];
  v97 = v263[2];
  v98 = v263[3];
  v100 = v263[5];
  v99 = v263[4];
  v96 = v263[1];
  v95 = v263[0];
  *&v104 = v15;
  *(&v104 + 1) = v14;
  type metadata accessor for BannerAppearanceModel();
  sub_100126650(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v17 = static ObservableObject.environmentStore.getter();
  v60[6] = v101;
  v60[7] = v102;
  v60[8] = v103;
  v60[9] = v104;
  v60[2] = v97;
  v60[3] = v98;
  v60[4] = v99;
  v60[5] = v100;
  v60[0] = v95;
  v60[1] = v96;
  v105[6] = v263[6];
  v105[7] = v263[7];
  v105[8] = v263[8];
  v105[2] = v263[2];
  v105[3] = v263[3];
  v105[5] = v263[5];
  v105[4] = v263[4];
  v105[1] = v263[1];
  v105[0] = v263[0];
  v106 = v15;
  v107 = v14;
  sub_100006C20(&v95, v264, &qword_10035F570);

  sub_100008FA0(v105, &qword_10035F570);
  v18 = v1[7];
  v114 = v60[6];
  v115 = v60[7];
  v116 = v60[8];
  v117 = v60[9];
  v110 = v60[2];
  v111 = v60[3];
  v112 = v60[4];
  v113 = v60[5];
  v108 = v60[0];
  v109 = v60[1];
  *&v118 = v17;
  *(&v118 + 1) = v16;
  type metadata accessor for BluetoothModel();
  sub_100126650(&qword_100357BF8, type metadata accessor for BluetoothModel);
  v19 = static ObservableObject.environmentStore.getter();
  v263[8] = v116;
  v263[9] = v117;
  v263[10] = v118;
  v263[4] = v112;
  v263[5] = v113;
  v263[7] = v115;
  v263[6] = v114;
  v263[0] = v108;
  v263[1] = v109;
  v263[3] = v111;
  v263[2] = v110;
  v119[6] = v60[6];
  v119[7] = v60[7];
  v119[8] = v60[8];
  v119[9] = v60[9];
  v119[2] = v60[2];
  v119[3] = v60[3];
  v119[4] = v60[4];
  v119[5] = v60[5];
  v119[0] = v60[0];
  v119[1] = v60[1];
  v120 = v17;
  v121 = v16;
  sub_100006C20(&v108, v264, &qword_10035F578);

  sub_100008FA0(v119, &qword_10035F578);
  v20 = v1[8];
  v21 = v20[14];
  v126 = v263[4];
  v127 = v263[5];
  v122 = v263[0];
  v123 = v263[1];
  v125 = v263[3];
  v124 = v263[2];
  v128 = v263[6];
  v129 = v263[7];
  v130 = v263[8];
  v131 = v263[9];
  v132 = v263[10];
  *&v133 = v19;
  *(&v133 + 1) = v18;
  type metadata accessor for ConnectionClosedModel(0);
  sub_100126650(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);

  v22 = static ObservableObject.environmentStore.getter();
  v60[8] = v130;
  v60[9] = v131;
  v60[10] = v132;
  v60[11] = v133;
  v60[4] = v126;
  v60[5] = v127;
  v60[6] = v128;
  v60[7] = v129;
  v60[0] = v122;
  v60[1] = v123;
  v60[2] = v124;
  v60[3] = v125;
  v134[8] = v263[8];
  v134[9] = v263[9];
  v134[10] = v263[10];
  v134[4] = v263[4];
  v134[5] = v263[5];
  v134[7] = v263[7];
  v134[6] = v263[6];
  v134[0] = v263[0];
  v134[1] = v263[1];
  v134[3] = v263[3];
  v134[2] = v263[2];
  v135 = v19;
  v136 = v18;
  sub_100006C20(&v122, v264, &qword_10035F580);
  sub_100008FA0(v134, &qword_10035F580);
  v23 = v20[9];
  v137 = v60[0];
  v138 = v60[1];
  v139 = v60[2];
  v140 = v60[3];
  v145 = v60[8];
  v146 = v60[9];
  v147 = v60[10];
  v148 = v60[11];
  v141 = v60[4];
  v142 = v60[5];
  v143 = v60[6];
  v144 = v60[7];
  *&v149 = v22;
  *(&v149 + 1) = v21;
  type metadata accessor for ConnectionModel(0);
  sub_100126650(&qword_100354F88, type metadata accessor for ConnectionModel);

  v24 = static ObservableObject.environmentStore.getter();
  v263[10] = v147;
  v263[11] = v148;
  v263[12] = v149;
  v263[6] = v143;
  v263[7] = v144;
  v263[9] = v146;
  v263[8] = v145;
  v263[2] = v139;
  v263[3] = v140;
  v263[5] = v142;
  v263[4] = v141;
  v263[1] = v138;
  v263[0] = v137;
  v150[8] = v60[8];
  v150[9] = v60[9];
  v150[10] = v60[10];
  v150[11] = v60[11];
  v150[4] = v60[4];
  v150[5] = v60[5];
  v150[6] = v60[6];
  v150[7] = v60[7];
  v150[0] = v60[0];
  v150[1] = v60[1];
  v150[2] = v60[2];
  v150[3] = v60[3];
  v151 = v22;
  v152 = v21;
  sub_100006C20(&v137, v264, &qword_10035F588);
  sub_100008FA0(v150, &qword_10035F588);
  v25 = v20[12];
  v155 = v263[2];
  v156 = v263[3];
  v158 = v263[5];
  v157 = v263[4];
  v154 = v263[1];
  v153 = v263[0];
  v163 = v263[10];
  v164 = v263[11];
  v165 = v263[12];
  v159 = v263[6];
  v160 = v263[7];
  v162 = v263[9];
  v161 = v263[8];
  *&v166 = v24;
  *(&v166 + 1) = v23;
  type metadata accessor for ConnectivityModel();
  sub_100126650(&qword_100354F78, type metadata accessor for ConnectivityModel);

  v26 = static ObservableObject.environmentStore.getter();
  v60[10] = v163;
  v60[11] = v164;
  v60[12] = v165;
  v60[13] = v166;
  v60[6] = v159;
  v60[7] = v160;
  v60[8] = v161;
  v60[9] = v162;
  v60[2] = v155;
  v60[3] = v156;
  v60[4] = v157;
  v60[5] = v158;
  v60[0] = v153;
  v60[1] = v154;
  v167[10] = v263[10];
  v167[11] = v263[11];
  v167[12] = v263[12];
  v167[6] = v263[6];
  v167[7] = v263[7];
  v167[9] = v263[9];
  v167[8] = v263[8];
  v167[2] = v263[2];
  v167[3] = v263[3];
  v167[5] = v263[5];
  v167[4] = v263[4];
  v167[1] = v263[1];
  v167[0] = v263[0];
  v168 = v24;
  v169 = v23;
  sub_100006C20(&v153, v264, &qword_10035F590);
  sub_100008FA0(v167, &qword_10035F590);
  v27 = v20[8];
  v172 = v60[2];
  v173 = v60[3];
  v170 = v60[0];
  v171 = v60[1];
  v180 = v60[10];
  v181 = v60[11];
  v182 = v60[12];
  v183 = v60[13];
  v176 = v60[6];
  v177 = v60[7];
  v178 = v60[8];
  v179 = v60[9];
  v174 = v60[4];
  v175 = v60[5];
  *&v184 = v26;
  *(&v184 + 1) = v25;
  type metadata accessor for GuidanceMessagesModel();
  sub_100126650(&qword_100357820, type metadata accessor for GuidanceMessagesModel);

  v28 = static ObservableObject.environmentStore.getter();
  v263[12] = v182;
  v263[13] = v183;
  v263[14] = v184;
  v263[8] = v178;
  v263[9] = v179;
  v263[11] = v181;
  v263[10] = v180;
  v263[4] = v174;
  v263[5] = v175;
  v263[7] = v177;
  v263[6] = v176;
  v263[0] = v170;
  v263[1] = v171;
  v263[3] = v173;
  v263[2] = v172;
  v185[10] = v60[10];
  v185[11] = v60[11];
  v185[12] = v60[12];
  v185[13] = v60[13];
  v185[6] = v60[6];
  v185[7] = v60[7];
  v185[8] = v60[8];
  v185[9] = v60[9];
  v185[2] = v60[2];
  v185[3] = v60[3];
  v185[4] = v60[4];
  v185[5] = v60[5];
  v185[0] = v60[0];
  v185[1] = v60[1];
  v186 = v26;
  v187 = v25;
  sub_100006C20(&v170, v264, &qword_10035F598);
  sub_100008FA0(v185, &qword_10035F598);
  v29 = v20[7];
  v188 = v263[0];
  v189 = v263[1];
  v200 = v263[12];
  v201 = v263[13];
  v202 = v263[14];
  v196 = v263[8];
  v197 = v263[9];
  v199 = v263[11];
  v198 = v263[10];
  v190 = v263[2];
  v191 = v263[3];
  v192 = v263[4];
  v193 = v263[5];
  v195 = v263[7];
  v194 = v263[6];
  *&v203 = v28;
  *(&v203 + 1) = v27;
  type metadata accessor for GuidanceModel(0);
  sub_100126650(&qword_100354F80, type metadata accessor for GuidanceModel);

  v30 = static ObservableObject.environmentStore.getter();
  v60[12] = v200;
  v60[13] = v201;
  v60[14] = v202;
  v60[15] = v203;
  v60[8] = v196;
  v60[9] = v197;
  v60[10] = v198;
  v60[11] = v199;
  v60[4] = v192;
  v60[5] = v193;
  v60[6] = v194;
  v60[7] = v195;
  v60[0] = v188;
  v60[1] = v189;
  v60[2] = v190;
  v60[3] = v191;
  v204[12] = v263[12];
  v204[13] = v263[13];
  v204[14] = v263[14];
  v204[8] = v263[8];
  v204[9] = v263[9];
  v204[11] = v263[11];
  v204[10] = v263[10];
  v204[4] = v263[4];
  v204[5] = v263[5];
  v204[7] = v263[7];
  v204[6] = v263[6];
  v204[0] = v263[0];
  v204[1] = v263[1];
  v204[3] = v263[3];
  v204[2] = v263[2];
  v205 = v28;
  v206 = v27;
  sub_100006C20(&v188, v264, &qword_10035F5A0);
  sub_100008FA0(v204, &qword_10035F5A0);
  v31 = v20[3];
  v207[12] = v60[12];
  v207[13] = v60[13];
  v207[14] = v60[14];
  v207[15] = v60[15];
  v207[8] = v60[8];
  v207[9] = v60[9];
  v207[10] = v60[10];
  v207[11] = v60[11];
  v207[4] = v60[4];
  v207[5] = v60[5];
  v207[6] = v60[6];
  v207[7] = v60[7];
  v207[0] = v60[0];
  v207[1] = v60[1];
  v207[2] = v60[2];
  v207[3] = v60[3];
  *&v207[16] = v30;
  *(&v207[16] + 1) = v29;
  type metadata accessor for OrientationModel();
  sub_100126650(&qword_10035B1B0, type metadata accessor for OrientationModel);

  v32 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v207, 0x110uLL);
  v208[12] = v60[12];
  v208[13] = v60[13];
  v208[14] = v60[14];
  v208[15] = v60[15];
  v208[8] = v60[8];
  v208[9] = v60[9];
  v208[10] = v60[10];
  v208[11] = v60[11];
  v208[4] = v60[4];
  v208[5] = v60[5];
  v208[6] = v60[6];
  v208[7] = v60[7];
  v208[0] = v60[0];
  v208[1] = v60[1];
  v208[2] = v60[2];
  v208[3] = v60[3];
  v209 = v30;
  v210 = v29;
  sub_100006C20(v207, v264, &qword_10035F5A8);
  sub_100008FA0(v208, &qword_10035F5A8);
  v33 = v20[15];
  memcpy(v211, v263, 0x110uLL);
  v211[34] = v32;
  v211[35] = v31;
  type metadata accessor for PartnerModel();
  sub_100126650(&qword_1003561A8, type metadata accessor for PartnerModel);

  v34 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v211, 0x120uLL);
  memcpy(v212, v263, sizeof(v212));
  v213 = v32;
  v214 = v31;
  sub_100006C20(v211, v264, &qword_10035F5B0);
  sub_100008FA0(v212, &qword_10035F5B0);
  v35 = v20[4];
  memcpy(v215, v60, 0x120uLL);
  v215[36] = v34;
  v215[37] = v33;
  type metadata accessor for StewieModel(0);
  sub_100126650(&qword_1003561B8, type metadata accessor for StewieModel);

  v36 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v215, 0x130uLL);
  memcpy(v216, v60, sizeof(v216));
  v217 = v34;
  v218 = v33;
  sub_100006C20(v215, v264, &qword_10035F5B8);
  sub_100008FA0(v216, &qword_10035F5B8);
  v37 = v20[2];
  memcpy(v219, v263, 0x130uLL);
  v219[38] = v36;
  v219[39] = v35;
  type metadata accessor for SystemSettingsModel();
  sub_100126650(&qword_1003561B0, type metadata accessor for SystemSettingsModel);

  v38 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v219, 0x140uLL);
  memcpy(v220, v263, sizeof(v220));
  v221 = v36;
  v222 = v35;
  sub_100006C20(v219, v264, &qword_10035F5C0);
  sub_100008FA0(v220, &qword_10035F5C0);
  v39 = v1[9];
  memcpy(v223, v60, 0x140uLL);
  v223[40] = v38;
  v223[41] = v37;
  type metadata accessor for EmergencyModel();
  sub_100126650(&qword_100356B60, type metadata accessor for EmergencyModel);
  v40 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v223, 0x150uLL);
  memcpy(v224, v60, sizeof(v224));
  v225 = v38;
  v226 = v37;
  sub_100006C20(v223, v264, &qword_10035F5C8);

  sub_100008FA0(v224, &qword_10035F5C8);
  v41 = v1[10];
  memcpy(v227, v263, 0x150uLL);
  v227[42] = v40;
  v227[43] = v39;
  type metadata accessor for GeoLocationModel();
  sub_100126650(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
  v42 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v227, 0x160uLL);
  memcpy(v228, v263, sizeof(v228));
  v229 = v40;
  v230 = v39;
  sub_100006C20(v227, v264, &qword_10035F5D0);

  sub_100008FA0(v228, &qword_10035F5D0);
  v43 = v1[12];
  memcpy(v231, v60, 0x160uLL);
  v231[44] = v42;
  v231[45] = v41;
  type metadata accessor for OfferModel();
  sub_100126650(&qword_10035F1E0, type metadata accessor for OfferModel);
  v44 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v231, 0x170uLL);
  memcpy(v232, v60, sizeof(v232));
  v233 = v42;
  v234 = v41;
  sub_100006C20(v231, v264, &qword_10035F5D8);

  sub_100008FA0(v232, &qword_10035F5D8);
  v45 = v1[19];
  memcpy(v235, v263, 0x170uLL);
  v235[46] = v44;
  v235[47] = v43;
  type metadata accessor for OffTheGridModel();
  sub_100126650(&qword_1003561C0, type metadata accessor for OffTheGridModel);
  v46 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v235, 0x180uLL);
  memcpy(v236, v263, sizeof(v236));
  v237 = v44;
  v238 = v43;
  sub_100006C20(v235, v264, &qword_10035F5E0);

  sub_100008FA0(v236, &qword_10035F5E0);
  v47 = v1[13];
  memcpy(v239, v60, 0x180uLL);
  v239[48] = v46;
  v239[49] = v45;
  type metadata accessor for OnboardingModel();
  sub_100126650(&qword_10035F1F8, type metadata accessor for OnboardingModel);
  v48 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v239, 0x190uLL);
  memcpy(v240, v60, sizeof(v240));
  v241 = v46;
  v242 = v45;
  sub_100006C20(v239, v264, &qword_10035F5E8);

  sub_100008FA0(v240, &qword_10035F5E8);
  v49 = v1[14];
  memcpy(v243, v263, 0x190uLL);
  v243[50] = v48;
  v243[51] = v47;
  type metadata accessor for RoadsideAssistanceModel();
  sub_100126650(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
  v50 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v243, 0x1A0uLL);
  memcpy(v244, v263, sizeof(v244));
  v245 = v48;
  v246 = v47;
  sub_100006C20(v243, v264, &qword_10035F5F0);

  sub_100008FA0(v244, &qword_10035F5F0);
  v51 = v1[15];
  memcpy(v247, v60, 0x1A0uLL);
  v247[52] = v50;
  v247[53] = v49;
  type metadata accessor for TransitionAlertModel();
  sub_100126650(&qword_10035F210, type metadata accessor for TransitionAlertModel);
  v52 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v247, 0x1B0uLL);
  memcpy(v248, v60, sizeof(v248));
  v249 = v50;
  v250 = v49;
  sub_100006C20(v247, v264, &qword_10035F5F8);

  sub_100008FA0(v248, &qword_10035F5F8);
  v53 = v1[17];
  memcpy(v251, v263, 0x1B0uLL);
  v251[54] = v52;
  v251[55] = v51;
  type metadata accessor for TimeZoneModel();
  sub_100126650(&qword_10035F220, type metadata accessor for TimeZoneModel);
  v54 = static ObservableObject.environmentStore.getter();
  memcpy(v60, v251, 0x1C0uLL);
  memcpy(v252, v263, sizeof(v252));
  v253 = v52;
  v254 = v51;
  sub_100006C20(v251, v264, &qword_10035F600);

  sub_100008FA0(v252, &qword_10035F600);
  v55 = v1[18];
  memcpy(v255, v60, 0x1C0uLL);
  v255[56] = v54;
  v255[57] = v53;
  type metadata accessor for TryOutModel();
  sub_100126650(&qword_100357990, type metadata accessor for TryOutModel);
  v56 = static ObservableObject.environmentStore.getter();
  memcpy(v263, v255, 0x1D0uLL);
  memcpy(v256, v60, sizeof(v256));
  v257 = v54;
  v258 = v53;
  sub_100006C20(v255, v264, &qword_10035F608);

  sub_100008FA0(v256, &qword_10035F608);
  v57 = v1[20];
  memcpy(v259, v263, 0x1D0uLL);
  v259[58] = v56;
  v259[59] = v55;
  type metadata accessor for UIMetrics();
  sub_100126650(&qword_100354D40, type metadata accessor for UIMetrics);
  v58 = static ObservableObject.environmentStore.getter();
  memcpy(__dst, v259, sizeof(__dst));
  memcpy(v260, v263, sizeof(v260));
  v261 = v56;
  v262 = v55;
  sub_100006C20(v259, v264, &qword_10035F610);

  sub_100008FA0(v260, &qword_10035F610);
  memcpy(v263, __dst, 0x1E0uLL);
  *&v263[30] = v58;
  *(&v263[30] + 1) = v57;
  memcpy(v264, __dst, sizeof(v264));
  v265 = v58;
  v266 = v57;
  sub_100006C20(v263, v60, &qword_10035F618);
  sub_100008FA0(v264, &qword_10035F618);
  return memcpy(v4, v263, 0x1F0uLL);
}