uint64_t sub_1000E03B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

BOOL sub_1000E0408(uint64_t a1)
{
  v2 = type metadata accessor for SavedLocation();
  v47 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  active = type metadata accessor for LocationViewerActiveLocationState();
  v13 = __chkstk_darwin(active - 8);
  v45 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v44 = v41 - v16;
  __chkstk_darwin(v15);
  v18 = v41 - v17;
  v43 = OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
  sub_1000BC9D0();
  v19 = sub_1000E0924();
  v21 = v20;
  sub_1000E0040(v18, type metadata accessor for LocationViewerActiveLocationState);
  if (v19 == static Location.currentLocationID.getter() && v21 == v22)
  {

    return 1;
  }

  v41[1] = a1;
  v42 = v11;
  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    return 1;
  }

  sub_1000E0A64();
  v26 = v25;
  v27 = *(v25 + 16);
  if (v27)
  {
    v48 = _swiftEmptyArrayStorage;
    sub_10003DC90();
    v28 = v48;
    v29 = *(v47 + 80);
    v41[0] = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v46 = *(v47 + 72);
    v47 = v6;
    do
    {
      v31 = v5;
      sub_1000BC9D0();
      SavedLocation.identifier.getter();
      sub_1000E0040(v4, &type metadata accessor for SavedLocation);
      v48 = v28;
      v32 = v28[2];
      if (v32 >= v28[3] >> 1)
      {
        sub_10003DC90();
        v28 = v48;
      }

      v28[2] = v32 + 1;
      v33 = v28 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32;
      v5 = v31;
      (*(v47 + 32))(v33, v9, v31);
      v30 += v46;
      --v27;
    }

    while (v27);

    v6 = v47;
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  v35 = v44;
  sub_1000BC9D0();
  v36 = v45;
  sub_1000BC9D0();
  v37 = sub_100024D10(v36, 1, v5);
  v38 = v42;
  if (v37 == 1)
  {
    static CurrentLocation.placeholderIdentifier.getter();
    v39 = sub_1000E0040(v35, type metadata accessor for LocationViewerActiveLocationState);
  }

  else
  {
    sub_1000E0040(v35, type metadata accessor for LocationViewerActiveLocationState);
    v39 = (*(v6 + 32))(v38, v36, v5);
  }

  __chkstk_darwin(v39);
  v41[-2] = v38;
  v34 = sub_1000E0FA0(sub_1000E1030, &v41[-4], v28);

  (*(v6 + 8))(v38, v5);
  return v34;
}

uint64_t sub_1000E0924()
{
  v1 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10001365C();
  active = type metadata accessor for LocationViewerActiveLocationState();
  v6 = sub_100003810(active);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  sub_1000BB194(v0, v8 - v7);
  sub_10000554C(v9);
  if (v10)
  {
    return static Location.currentLocationID.getter();
  }

  (*(v3 + 32))(v0, v9, v1);
  v11 = Location.Identifier.id.getter();
  (*(v3 + 8))(v0, v1);
  return v11;
}

void sub_1000E0A64()
{
  sub_10000C778();
  v2 = type metadata accessor for SavedLocation();
  v3 = sub_100003AE8(v2);
  v70 = v4;
  __chkstk_darwin(v3);
  sub_100003848();
  v69 = v5;
  sub_10000386C();
  v7 = __chkstk_darwin(v6);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  sub_100003878();
  v64 = v10;
  sub_10000386C();
  __chkstk_darwin(v11);
  sub_100003878();
  v63 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  v14 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v16 = v15;
  v18 = __chkstk_darwin(v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = sub_100087E64();
  v57 = v0;
  v21 = *(v0 + *(v56 + 24));
  v22 = *(v21 + 16);
  if (v22)
  {
    v25 = *(v16 + 16);
    v23 = v16 + 16;
    v24 = v25;
    v26 = v21 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v27 = *(v23 + 56);
    v67 = (v23 + 16);
    v68 = v27;
    v66 = v23 + 72;
    v65 = enum case for LocationModel.saved(_:);
    v58 = v23 + 80;
    v59 = v23 - 8;
    v28 = _swiftEmptyArrayStorage;
    v61 = v1;
    v62 = v23;
    v60 = v25;
    do
    {
      v24(v1, v26, v14);
      (*v67)(v20, v1, v14);
      v29 = sub_1000B9A5C();
      v31 = v30(v29);
      if (v31 == v65)
      {
        v32 = sub_1000B9A5C();
        v33(v32);
        v34 = *(sub_10022C350(&qword_100CA38B8) + 48);
        sub_100030804();
        type metadata accessor for LocationModelData();
        sub_1000037E8();
        (*(v35 + 8))(&v20[v34]);
        sub_100030804();
        sub_100003B2C();
        sub_100030804();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000066AC();
          sub_10003D7C4();
          v28 = v40;
        }

        v37 = v28[2];
        v36 = v28[3];
        if (v37 >= v36 >> 1)
        {
          sub_100031C84(v36);
          sub_10003D7C4();
          v28 = v41;
        }

        v28[2] = v37 + 1;
        sub_10000C7B8();
        sub_100049C94();
        sub_100030804();
        v24 = v60;
        v1 = v61;
      }

      else
      {
        v38 = sub_1000B9A5C();
        v39(v38);
      }

      v26 += v68;
      --v22;
    }

    while (v22);
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v42 = 0;
  v43 = *(v57 + *(v56 + 20));
  v44 = *(v43 + 16);
  v45 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_14:
    if (v42 == v44)
    {

      sub_10000536C();
      return;
    }

    if (v42 >= *(v43 + 16))
    {
      break;
    }

    v46 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v47 = *(v70 + 72);
    sub_10001CD6C();
    sub_1000312D4();
    ++v42;
    v48 = v28 + v46;
    v49 = v28[2] + 1;
    while (--v49)
    {
      v50 = &v48[v47];
      v51 = static SavedLocation.== infix(_:_:)();
      v48 = v50;
      if (v51)
      {
        sub_10001F7DC();
        sub_1000311F8(v9, v52);
        goto LABEL_14;
      }
    }

    sub_100049C94();
    sub_100030804();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v45;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100037C8C();
      sub_1000328B0();
      v45 = v71;
    }

    v55 = v45[2];
    v54 = v45[3];
    if (v55 >= v54 >> 1)
    {
      sub_100031C84(v54);
      sub_1000328B0();
      v45 = v71;
    }

    v45[2] = v55 + 1;
    sub_100049C94();
    sub_100030804();
  }

  __break(1u);
}

void sub_1000E0F5C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

uint64_t sub_1000E1050(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_10031EFA0(a4, a5);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000E10DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E1124()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000E1190(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Location.Identifier();

  return sub_10001B350(a1, v5, a3, v6);
}

uint64_t sub_1000E1200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = sub_100024D10(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E1248(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  a3 &= 1u;
  *(v6 + 32) = a3;

  sub_1000E1328(a2, a3);
  asyncMain(block:)();
}

uint64_t sub_1000E12DC()
{

  sub_100186038(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1000E1328(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000E1334(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1000E13C0()
{

  return sub_1003BD6E4(v1 - 96, v0);
}

uint64_t sub_1000E13E8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E1404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 120);
  *(v1 - 200) = a1;
  return v2 + a1;
}

uint64_t sub_1000E1420()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000E143C()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000E146C()
{

  return String.hash(into:)();
}

uint64_t sub_1000E1560()
{
}

uint64_t sub_1000E1588()
{
  result = v0;
  *(v2 - 112) = v1;
  return result;
}

uint64_t sub_1000E15B8(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 - 336);

  return sub_1001AEEB4(v4, a2);
}

uint64_t sub_1000E15D0()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000E15F4()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000E1628(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000E1670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E16B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E173C()
{
}

uint64_t sub_1000E1768()
{

  return type metadata accessor for UUID();
}

uint64_t sub_1000E17D8(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CD81B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall SettingsMonitor.applicationWillEnterForeground()()
{
  sub_1000E1888();

  sub_1000E2D38();
}

uint64_t sub_1000E1888()
{
  v1 = v0;
  v2 = type metadata accessor for UnitConfiguration.WindSpeed();
  v3 = sub_100003E5C(v2, v240);
  v213 = v4;
  __chkstk_darwin(v3);
  sub_1000038E4();
  sub_100003990(v5);
  v224 = sub_10022C350(&qword_100CDA700);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_1000039BC();
  sub_100003990(v7);
  v8 = sub_10022C350(qword_100CB61A0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003918(v11);
  v12 = type metadata accessor for UnitConfiguration.Precipitation();
  v13 = sub_100003E5C(v12, v239);
  v211 = v14;
  __chkstk_darwin(v13);
  sub_1000038E4();
  sub_100003990(v15);
  v221 = sub_10022C350(&qword_100CDA708);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  sub_100003990(v17);
  v18 = sub_10022C350(&qword_100CB6188);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_10000E70C();
  sub_100003918(v21);
  v22 = type metadata accessor for UnitConfiguration.Pressure();
  v23 = sub_100003E5C(v22, v238);
  v209 = v24;
  __chkstk_darwin(v23);
  sub_1000038E4();
  sub_100003990(v25);
  v218 = sub_10022C350(&qword_100CDA710);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CB6190);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003918(v31);
  v32 = type metadata accessor for UnitConfiguration.Distance();
  v33 = sub_100003E5C(v32, v237);
  v207 = v34;
  __chkstk_darwin(v33);
  sub_1000038E4();
  sub_100003990(v35);
  v215 = sub_10022C350(&qword_100CDA718);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v36);
  sub_1000039BC();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CB6180);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003918(v41);
  v42 = type metadata accessor for ConfiguredUnit();
  v43 = sub_100003E5C(v42, &v245);
  v233 = v44;
  __chkstk_darwin(v43);
  sub_1000038E4();
  sub_100003918(v45);
  v235 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000038E4();
  sub_100003918(v47);
  v48 = type metadata accessor for UnitConfiguration.Temperature();
  v205 = *(v48 - 8);
  __chkstk_darwin(v48);
  sub_1000038E4();
  sub_100003990(v49);
  v50 = sub_10022C350(&qword_100CBE7F8) - 8;
  sub_100003828();
  __chkstk_darwin(v51);
  v53 = &v199 - v52;
  v54 = sub_10022C350(&qword_100CB6198);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  v57 = &v199 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v199 - v59;
  v61 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.refreshUnitsFromStorage()();

  v236 = v61;
  static UnitManager.standard.getter();
  UnitManager.preferredTemperatureUnit.getter();

  v62 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration;
  sub_10002401C();
  v63 = *(v50 + 56);
  v228 = v60;
  sub_1000955E0(v60, v53, &qword_100CB6198);
  sub_1000955E0(v1 + v62, &v53[v63], &qword_100CB6198);
  sub_1000038B4(v53, 1, v48);
  if (v167)
  {
    sub_1000038B4(&v53[v63], 1, v48);
    v64 = v214;
    if (v167)
    {
      sub_1000180EC(v53, &qword_100CB6198);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1000955E0(v53, v57, &qword_100CB6198);
  v65 = sub_100024D10(&v53[v63], 1, v48);
  if (v65 == 1)
  {
    (*(v205 + 8))(v57, v48);
    v64 = v214;
LABEL_8:
    sub_1000180EC(v53, &qword_100CBE7F8);
LABEL_9:
    sub_10003C838();
    v66 = sub_100013C74(&v241);
    sub_1007EE580(v66, v67, v68);
    swift_endAccess();
    v69 = sub_100008F70();
    sub_1000955E0(v69, v70, v71);
    v72 = sub_10001F87C();
    v73(v72);
    v74 = sub_100004B70();
    v75(v74);
    type metadata accessor for ConfiguredUnitsAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v76, v77, v78);
    sub_1000180EC(v237, &unk_100CD81B0);
    sub_1000547B8(v64);
    goto LABEL_10;
  }

  v181 = v205;
  v182 = v200;
  (*(v205 + 32))(v200, &v53[v63], v48);
  sub_100067564(qword_100CBE800, &type metadata accessor for UnitConfiguration.Temperature);
  v183 = dispatch thunk of static Equatable.== infix(_:_:)();
  v184 = *(v181 + 8);
  v184(v182, v48);
  v184(v57, v48);
  sub_1000180EC(v53, &qword_100CB6198);
  v64 = v214;
  if ((v183 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_10003A364();
  sub_100020250();
  UnitManager.preferredDistanceUnit.getter();

  sub_10002401C();
  sub_100018768();
  v79 = v216;
  sub_100016AFC();
  sub_1000955E0(v80, v81, v82);
  sub_100016AFC();
  sub_1000955E0(v83, v84, v85);
  v86 = v217;
  sub_1000038B4(v79, 1, v217);
  if (v167)
  {
    sub_1000038B4(v79 + v62, 1, v86);
    if (v167)
    {
      sub_1000180EC(v79, &qword_100CB6180);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v87 = v206;
  sub_1000955E0(v79, v206, &qword_100CB6180);
  v88 = sub_100024D10(v79 + v62, 1, v86);
  if (v88 == 1)
  {
    v89 = sub_10000EDE8();
    v90(v89, v86);
LABEL_17:
    sub_1000180EC(v79, &qword_100CDA718);
LABEL_18:
    sub_10003C838();
    v91 = sub_100013C74(&v242);
    sub_1007EE580(v91, v92, v93);
    swift_endAccess();
    v94 = sub_100008F70();
    sub_1000955E0(v94, v95, v96);
    v97 = sub_10001F87C();
    v98(v97);
    v99 = sub_100004B70();
    v100(v99);
    type metadata accessor for ConfiguredUnitsAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v101, v102, v103);
    sub_1000180EC(v237, &unk_100CD81B0);
    sub_1000547B8(v64);
    goto LABEL_19;
  }

  v185 = v207;
  v186 = v79 + v62;
  v62 = v201;
  (*(v207 + 32))(v201, v186, v86);
  sub_100067564(&qword_100CD4608, &type metadata accessor for UnitConfiguration.Distance);
  v187 = dispatch thunk of static Equatable.== infix(_:_:)();
  v188 = *(v185 + 8);
  v188(v62, v86);
  v188(v87, v86);
  sub_1000180EC(v79, &qword_100CB6180);
  if ((v187 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_10003A364();
  sub_100020250();
  UnitManager.preferredPressureUnit.getter();

  sub_10002401C();
  sub_100018768();
  v104 = v219;
  sub_100016AFC();
  sub_1000955E0(v105, v106, v107);
  sub_100016AFC();
  sub_1000955E0(v108, v109, v110);
  v111 = v220;
  sub_1000038B4(v104, 1, v220);
  if (v167)
  {
    if (sub_100020B98() == 1)
    {
      sub_1000180EC(v104, &qword_100CB6190);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v112 = v208;
  sub_1000955E0(v104, v208, &qword_100CB6190);
  v113 = sub_100020B98();
  if (v113 == 1)
  {
    v114 = sub_10000EDE8();
    v115(v114, v111);
LABEL_25:
    sub_1000180EC(v104, &qword_100CDA710);
LABEL_26:
    sub_10003C838();
    v116 = sub_100013C74(&v243);
    sub_1007EE580(v116, v117, v118);
    swift_endAccess();
    v119 = sub_100008F70();
    sub_1000955E0(v119, v120, v121);
    v122 = sub_10001F87C();
    v123(v122);
    v124 = sub_100004B70();
    v125(v124);
    type metadata accessor for ConfiguredUnitsAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v126, v127, v128);
    sub_1000180EC(v237, &unk_100CD81B0);
    sub_1000547B8(v64);
    goto LABEL_27;
  }

  sub_100020250();
  (*(v189 + 32))(v202, v104 + v62, v111);
  sub_100067564(&qword_100CD45F8, &type metadata accessor for UnitConfiguration.Pressure);
  sub_100037D80();
  v190 = sub_100031834();
  (unk_100A8B0B0)(v190);
  (unk_100A8B0B0)(v112, v62);
  sub_1000180EC(v104, &qword_100CB6190);
  if ((v111 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_27:
  sub_10003A364();
  sub_100020250();
  UnitManager.preferredPrecipitationUnit.getter();

  sub_10002401C();
  sub_100018768();
  v129 = v222;
  sub_100016AFC();
  sub_1000955E0(v130, v131, v132);
  sub_100016AFC();
  sub_1000955E0(v133, v134, v135);
  v136 = v223;
  sub_1000038B4(v129, 1, v223);
  if (v167)
  {
    if (sub_100020B98() == 1)
    {
      sub_1000180EC(v129, &qword_100CB6188);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v137 = v210;
  sub_1000955E0(v129, v210, &qword_100CB6188);
  v138 = sub_100020B98();
  if (v138 == 1)
  {
    v139 = sub_10000EDE8();
    v140(v139, v136);
LABEL_33:
    sub_1000180EC(v129, &qword_100CDA708);
LABEL_34:
    sub_10003C838();
    v141 = sub_100013C74(&v244);
    sub_1007EE580(v141, v142, v143);
    swift_endAccess();
    v144 = sub_100008F70();
    sub_1000955E0(v144, v145, v146);
    v147 = sub_10001F87C();
    v148(v147);
    v149 = sub_100004B70();
    v150(v149);
    type metadata accessor for ConfiguredUnitsAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for EnvironmentAction();
    sub_100016F78();
    swift_storeEnumTagMultiPayload();
    sub_10004EAE8();
    sub_100010C24();
    sub_100016AFC();
    sub_10004F034(v151, v152, v153);
    sub_1000180EC(v237, &unk_100CD81B0);
    sub_1000547B8(v64);
    goto LABEL_35;
  }

  sub_100020250();
  (*(v191 + 32))(v203, v129 + v62, v136);
  sub_100067564(&qword_100CD4600, &type metadata accessor for UnitConfiguration.Precipitation);
  sub_100037D80();
  v192 = sub_100031834();
  (unk_100A49BB0)(v192);
  (unk_100A49BB0)(v137, v62);
  sub_1000180EC(v129, &qword_100CB6188);
  if ((v136 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_35:
  sub_10003A364();
  v154 = v226;
  UnitManager.preferredWindUnit.getter();

  sub_10002401C();
  sub_100018768();
  v155 = v227;
  sub_100016AFC();
  sub_1000955E0(v156, v157, v158);
  sub_100016AFC();
  v159 = v155;
  sub_1000955E0(v160, v161, v162);
  v163 = v155;
  v164 = v225;
  sub_1000038B4(v163, 1, v225);
  if (v167)
  {
    v165 = v230;
    sub_1000038B4(v159 + v62, 1, v164);
    if (v167)
    {
      sub_1000180EC(v159, qword_100CB61A0);
LABEL_54:
      v180 = v154;
      goto LABEL_55;
    }

    goto LABEL_43;
  }

  v166 = v212;
  sub_1000955E0(v159, v212, qword_100CB61A0);
  sub_1000038B4(v159 + v62, 1, v164);
  if (v167)
  {
    v165 = v230;
    (*(v213 + 8))(v166, v164);
LABEL_43:
    sub_1000180EC(v159, &qword_100CDA700);
    goto LABEL_44;
  }

  v193 = v213;
  v194 = v159 + v62;
  v195 = v204;
  (*(v213 + 32))(v204, v194, v164);
  sub_100067564(&qword_100CD45F0, &type metadata accessor for UnitConfiguration.WindSpeed);
  v196 = dispatch thunk of static Equatable.== infix(_:_:)();
  v197 = *(v193 + 8);
  v197(v195, v164);
  v197(v166, v164);
  v165 = v230;
  sub_1000180EC(v227, qword_100CB61A0);
  if (v196)
  {
    goto LABEL_54;
  }

LABEL_44:
  sub_10003C838();
  sub_100016AFC();
  sub_1007EE580(v168, v169, v170);
  swift_endAccess();
  v171 = *(v1 + 16);
  v172 = v232;
  sub_100016AFC();
  sub_1000955E0(v173, v174, v175);
  v176 = v233;
  v177 = v234;
  (*(v233 + 104))(v172, enum case for ConfiguredUnit.windSpeed(_:), v234);
  (*(v176 + 32))(v64, v172, v177);
  type metadata accessor for ConfiguredUnitsAction();
  sub_100016F78();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for EnvironmentAction();
  sub_100016F78();
  swift_storeEnumTagMultiPayload();
  sub_10004EAE8();
  v178 = sub_100010C24();
  sub_10004F034(v178, v179, v171);
  sub_1000180EC(v237, &unk_100CD81B0);
  sub_1000547B8(v64);
  v180 = v154;
LABEL_55:
  sub_1000180EC(v180, qword_100CB61A0);
  sub_1000180EC(v231, &qword_100CB6188);
  sub_1000180EC(v165, &qword_100CB6190);
  sub_1000180EC(v229, &qword_100CB6180);
  return sub_1000180EC(v228, &qword_100CB6198);
}

void sub_1000E2D38()
{
  v1 = OBJC_IVAR____TtC7Weather15SettingsMonitor_observer;
  if (!*(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer))
  {
    v2 = v0;
    sub_10000C70C(0, &qword_100CDA6F8);
    v3 = static NSUserDefaults.weatherShared.getter();

    v4 = NSUserDefaults.registerUnitsConfigurationChanges(_:)();

    v5 = *(v2 + v1);
    *(v2 + v1) = v4;
  }
}

Swift::Void __swiftcall SidebarVisibilityMonitor.applicationWillEnterForeground()()
{
  if (qword_100CA29A0 != -1)
  {
    swift_once();
  }

  sub_1000E3070();
  Configurable.setting<A>(_:)();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;

  asyncMain(block:)();
}

uint64_t sub_1000E2EE4()
{

  return swift_deallocObject();
}

uint64_t sub_1000E2F20()
{
  type metadata accessor for Domain();
  sub_100005C98();
  __chkstk_darwin(v0);
  sub_100008BE4();
  sub_100010714();
  __chkstk_darwin(v1);
  sub_1000101A4();
  v2 = sub_100003FA4();
  v3(v2);
  v4 = sub_100003F94();
  v5(v4);
  sub_10022C350(&qword_100CAFFD8);
  sub_100003B6C();
  sub_100008300();
  result = sub_100019C40();
  qword_100D91260 = result;
  return result;
}

unint64_t sub_1000E3070()
{
  result = qword_100CB88E8;
  if (!qword_100CB88E8)
  {
    type metadata accessor for SidebarVisibilityMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB88E8);
  }

  return result;
}

uint64_t sub_1000E30C4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  *v6 = a2;
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_10004F034(v6, v9, v7);
  sub_1000E17D8(v9);
  return sub_1000547B8(v6);
}

uint64_t sub_1000E31D4()
{
}

uint64_t sub_1000E3238()
{

  return sub_1000730E8();
}

uint64_t sub_1000E3268()
{

  return type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
}

void sub_1000E3284()
{
  swift_getObjectType();

  ApplicationStateMonitor.applicationWillEnterForeground()();
}

uint64_t sub_1000E32C0()
{
  v0 = sub_10022C350(&qword_100CA3538);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  v2 = sub_100031DD4();
  sub_1000061CC(v2);
  sub_100018450();
  v3 = swift_allocObject();
  sub_10001854C(v3);
  sub_10000EB8C();
  sub_1006C0138();
}

uint64_t sub_1000E3390()
{
  sub_100013494();
  sub_100028784();
  v0 = swift_task_alloc();
  v1 = sub_100007F54(v0);
  *v1 = v2;
  sub_10000622C(v1);

  return sub_1000E341C();
}

uint64_t sub_1000E341C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10016DA18;

  return sub_1000E34AC();
}

uint64_t sub_1000E34AC()
{
  v1[11] = v0;
  v2 = type metadata accessor for Location();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = type metadata accessor for LocationCoordinate();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = type metadata accessor for LocationOfInterestType();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for LocationOfInterest();
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000E36A4, v0, 0);
}

uint64_t sub_1000E36A4()
{
  sub_100008188();
  v1 = *(v0 + 88);
  if (*(v1 + 208))
  {
    sub_100006248();

    sub_100003B14();

    return v2();
  }

  else
  {
    *(v1 + 208) = 1;
    v4 = *(v1 + 368);
    v5 = *(v1 + 376);
    sub_1000161C0((v1 + 344), v4);
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_1000E37E0;

    return dispatch thunk of LocationsOfInterestDataSourceType.locationsOfInterest()(v4, v5);
  }
}

uint64_t sub_1000E37E0()
{
  sub_100013494();
  v2 = *v1;
  v3 = *v1;
  *(v3 + 224) = v4;
  *(v3 + 232) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_1005B0780;
  }

  else
  {
    v6 = sub_1000E3910;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000E3910()
{
  v150 = v0;
  v1 = *(v0 + 88);
  swift_beginAccess();
  sub_1000161C0((v1 + 128), *(v1 + 152));
  sub_100037034();
  v2 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  swift_endAccess();
  if (qword_100CA26C0 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v3 = type metadata accessor for Logger();
    sub_10000703C(v3, qword_100D90AA8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 224);
    v119 = v2;
    if (v6)
    {
      v2 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v149 = v8;
      *v2 = 134218499;
      *(v2 + 4) = *(v7 + 16);

      *(v2 + 6) = 2160;
      *(v2 + 14) = 1752392040;
      *(v2 + 11) = 2081;
      v9 = Array.description.getter();
      v11 = sub_100078694(v9, v10, &v149);

      *(v2 + 3) = v11;
      _os_log_impl(&_mh_execute_header, v4, v5, "Massaged data contains %ld location of interest with content %{private,mask.hash}s", v2, 0x20u);
      sub_100006F14(v8);

      sub_10000FC14();
    }

    else
    {
    }

    swift_beginAccess();
    v116 = v1;
    sub_1000161C0((v1 + 128), *(v1 + 152));
    sub_100037034();
    v12 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
    swift_endAccess();
    v148 = *(v12 + 16);
    if (v148)
    {
      v13 = 0;
      v14 = *(v0 + 160);
      v15 = *(v0 + 128);
      v146 = (*(v0 + 104) + 8);
      v126 = v15 + 32;
      v130 = v14 + 16;
      v134 = v14;
      v140 = *(v0 + 192) + 8;
      v142 = v14 + 8;
      v16 = &_swiftEmptyDictionarySingleton;
      v144 = v15;
      v122 = v15 + 40;
      v138 = v12;
      while (1)
      {
        if (v13 >= *(v12 + 16))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v2 = *(v0 + 112);
        v17 = *(v0 + 96);
        v18 = sub_1000208DC();
        v19(v18);
        LocationOfInterest.type.getter();
        LocationOfInterest.location.getter();
        Location.coordinate.getter();
        (*v146)(v2, v17);
        LocationCoordinate.init(_:)();
        swift_isUniquelyReferenced_nonNull_native();
        v149 = v16;
        sub_1000E41BC();
        if (__OFADD__(*(v16 + 2), (v21 & 1) == 0))
        {
          goto LABEL_40;
        }

        v1 = v20;
        v22 = v21;
        sub_10022C350(&qword_100CC75B8);
        v23 = sub_10003169C();
        v31 = v149;
        if (v23)
        {
          sub_1000E41BC();
          if ((v22 & 1) != (v24 & 1))
          {
LABEL_32:

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v1 = v23;
        }

        v32 = *(v0 + 144);
        v2 = *(v0 + 120);
        if (v22)
        {
          v33 = sub_100051F00(v23, v24, v25, v26, v27, v28, v29, v30, v110, v113, v116, v119, v122, v126, v130, v134, v138, v140, v142, v144);
          (*(v34 + 40))(v33, v32, v2);
          v35 = sub_10003C620();
          v36(v35);
          v37 = sub_10000EB9C();
          v38(v37);
          v16 = v31;
        }

        else
        {
          sub_100074C70(v31 + 8 * (v1 >> 6));
          v39 = sub_1000149D0(*(v31 + 48), v110, v113, v116, v119, v122, v126, v130, v134);
          v41 = v40(v39);
          v49 = sub_100051F00(v41, v42, v43, v44, v45, v46, v47, v48, v111, v114, v117, v120, v123, v127, v131, v135, v138, v140, v142, v144);
          (*(v50 + 32))(v49, v32, v2);
          v51 = sub_10003C620();
          v52(v51);
          v53 = sub_10000EB9C();
          v54(v53);
          v55 = *(v31 + 16);
          v56 = __OFADD__(v55, 1);
          v57 = v55 + 1;
          if (v56)
          {
            goto LABEL_43;
          }

          v16 = v31;
          *(v31 + 16) = v57;
        }

        ++v13;
        v12 = v138;
        if (v148 == v13)
        {
          goto LABEL_19;
        }
      }
    }

    v16 = &_swiftEmptyDictionarySingleton;
LABEL_19:
    v113 = v16;
    v58 = *(v0 + 224);

    v147 = *(v58 + 16);
    if (!v147)
    {
      break;
    }

    v59 = 0;
    v60 = *(v0 + 160);
    v61 = *(v0 + 128);
    v145 = (*(v0 + 104) + 8);
    v128 = v61 + 32;
    v132 = v60 + 16;
    v141 = v60 + 8;
    v136 = v60;
    v139 = *(v0 + 192) + 8;
    v2 = &_swiftEmptyDictionarySingleton;
    v143 = v61;
    v124 = v61 + 40;
    while (v59 < *(v58 + 16))
    {
      v62 = *(v0 + 112);
      v63 = *(v0 + 96);
      v64 = sub_1000208DC();
      v65(v64);
      LocationOfInterest.type.getter();
      LocationOfInterest.location.getter();
      Location.coordinate.getter();
      (*v145)(v62, v63);
      LocationCoordinate.init(_:)();
      swift_isUniquelyReferenced_nonNull_native();
      v149 = v2;
      sub_1000E41BC();
      if (__OFADD__(*(v2 + 2), (v67 & 1) == 0))
      {
        goto LABEL_42;
      }

      v1 = v66;
      v68 = v67;
      sub_10022C350(&qword_100CC75B8);
      v69 = sub_10003169C();
      v2 = v149;
      if (v69)
      {
        sub_1000E41BC();
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_32;
        }

        v1 = v69;
      }

      v77 = *(v0 + 136);
      v78 = *(v0 + 120);
      if (v68)
      {
        v79 = sub_10002489C(v69, v70, v71, v72, v73, v74, v75, v76, v110, v113, v116, v119, v124, v128, v132, v136, v139, v141, v143);
        (*(v80 + 40))(v79, v77, v78);
        v81 = sub_10003C620();
        v82(v81);
        v83 = sub_100017B18();
        v84(v83);
      }

      else
      {
        sub_100074C70(&v2[8 * (v1 >> 6)]);
        v85 = sub_1000149D0(*(v2 + 6), v110, v113, v116, v119, v124, v128, v132, v136);
        v87 = v86(v85);
        v95 = sub_10002489C(v87, v88, v89, v90, v91, v92, v93, v94, v112, v115, v118, v121, v125, v129, v133, v137, v139, v141, v143);
        (*(v96 + 32))(v95, v77, v78);
        v97 = sub_10003C620();
        v98(v97);
        v99 = sub_100017B18();
        v100(v99);
        v101 = *(v2 + 2);
        v56 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v56)
        {
          goto LABEL_44;
        }

        *(v2 + 2) = v102;
      }

      if (v147 == ++v59)
      {
        goto LABEL_36;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    sub_10001F1B4();
  }

  v2 = &_swiftEmptyDictionarySingleton;
LABEL_36:
  v104 = *(v0 + 224);
  swift_beginAccess();
  sub_10002D7F8(v116 + 128, *(v116 + 152));
  sub_100037034();

  dispatch thunk of LocationsOfInterestManagerType.locations.setter();
  swift_endAccess();
  sub_1000E426C();
  v105 = sub_1000E5AC0(v113, v2, v104, v119);
  v107 = v106;
  v109 = v108;

  *(v0 + 240) = v105;
  *(v0 + 248) = v107;
  *(v0 + 264) = v109;

  return _swift_task_switch(sub_1000E6848, 0, 0);
}

uint64_t sub_1000E4158()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90AA8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

void sub_1000E41BC()
{
  sub_100019170();
  type metadata accessor for LocationOfInterestType();
  sub_10005B6CC(&qword_100CA3590, &type metadata accessor for LocationOfInterestType);
  sub_100031BB0();
  sub_100011350();
}

uint64_t sub_1000E426C()
{
  v1 = v0;
  v2 = type metadata accessor for LocationOfInterest();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1000161C0(v0 + 16, v0[19]);
  v6 = dispatch thunk of LocationsOfInterestManagerType.locations.getter();
  swift_endAccess();
  v7 = sub_1000E443C(v0, v6);

  v8 = 0;
  v9 = v7[2];
  for (i = (v3 + 8); ; (*i)(v5, v2))
  {
    if (v9 == v8)
    {
    }

    if (v8 >= v7[2])
    {
      break;
    }

    (*(v3 + 16))(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
    sub_1000E53CC(v5, v1);
    ++v8;
  }

  __break(1u);

  result = (*i)(v5, v2);
  __break(1u);
  return result;
}

void *sub_1000E443C(void *a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v40 = a2;
  v3 = sub_10022C350(&qword_100CA3588);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = type metadata accessor for LocationOfInterest();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LocationModel();
  v43 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CE49F0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for WeatherCoalescedLocationResult();
  v35 = *(v13 - 8);
  v36 = v13;
  __chkstk_darwin(v13);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[25];
  v37 = a1[24];
  v39 = v16;
  v34 = sub_1000161C0(a1 + 21, v37);
  v17 = type metadata accessor for CurrentLocation();
  sub_10001B350(v12, 1, 1, v17);
  sub_1000161C0(a1 + 28, a1[31]);
  dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  sub_1000161C0(a1 + 38, a1[41]);
  dispatch thunk of LocationDisplayContextManagerType.fetchDisplayContextByLocation()();
  dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:displayContextByLocation:)();

  sub_10003FDF4(v12, &unk_100CE49F0);
  v34 = v15;
  v18 = WeatherCoalescedLocationResult.coalescedLocations.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v43 + 16);
    v21 = *(v43 + 80);
    v33[1] = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v39 = *(v43 + 72);
    v40 = v20;
    v43 += 16;
    v23 = (v43 - 8);
    v24 = (v38 + 32);
    v25 = _swiftEmptyArrayStorage;
    v37 = v6;
    do
    {
      v26 = v41;
      v40(v9, v22, v41);
      LocationModel.locationOfInterest.getter();
      (*v23)(v9, v26);
      if (sub_100024D10(v5, 1, v6) == 1)
      {
        sub_10003FDF4(v5, &qword_100CA3588);
      }

      else
      {
        v27 = *v24;
        (*v24)(v42, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100032BC8();
          v25 = v30;
        }

        v28 = v25[2];
        if (v28 >= v25[3] >> 1)
        {
          sub_100032BC8();
          v25 = v31;
        }

        v25[2] = v28 + 1;
        v29 = v25 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v28;
        v6 = v37;
        v27(v29, v42, v37);
      }

      v22 += v39;
      --v19;
    }

    while (v19);
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  (*(v35 + 8))(v34, v36);
  return v25;
}

uint64_t sub_1000E4910(uint64_t a1, void (*a2)(__n128))
{
  v31 = a1;
  v3 = type metadata accessor for ColorScheme();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CE3738);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = sub_10022C350(&qword_100CB3688);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v30 - v20;
  a2(v19);
  if (qword_100CA2A70 != -1)
  {
    swift_once();
  }

  v22 = sub_10000703C(v14, qword_100D91340);
  v23 = *(v10 + 48);
  sub_1000302D8(v21, v13, &qword_100CB3688);
  sub_1000302D8(v22, &v13[v23], &qword_100CB3688);
  if (sub_100017854(v13) != 1)
  {
    sub_1000302D8(v13, v17, &qword_100CB3688);
    if (sub_100017854(&v13[v23]) != 1)
    {
      (*(v5 + 32))(v9, &v13[v23], v3);
      sub_1008C8004(&qword_100CE3740, &type metadata accessor for ColorScheme);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v9, v3);
      v29(v17, v3);
      sub_1000180EC(v13, &qword_100CB3688);
      if (v28)
      {
        return sub_1000180EC(v21, &qword_100CB3688);
      }

LABEL_9:
      v24 = v31;
      v25 = sub_100003940();
      sub_1000180EC(v25, v26);
      return sub_10011C0F0(v21, v24, &qword_100CB3688);
    }

    (*(v5 + 8))(v17, v3);
LABEL_8:
    sub_1000180EC(v13, &qword_100CE3738);
    goto LABEL_9;
  }

  if (sub_100017854(&v13[v23]) != 1)
  {
    goto LABEL_8;
  }

  sub_1000180EC(v13, &qword_100CB3688);
  return sub_1000180EC(v21, &qword_100CB3688);
}

void sub_1000E4CAC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1002E562C();
    sub_1000A403C();
    if (v5)
    {
      v6 = 0;
      sub_1002E4F88();
      sub_100030378();
      sub_1002E589C();
      v8 = v7 >> 6;
      while (v4)
      {
        sub_1002E4CD8();
LABEL_12:
        v13 = v9 | (v6 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        sub_1001636A4(*(v3 + 56) + 48 * v13, &v19);
        if (!v20)
        {
          return;
        }

        v15 = sub_1000D5F5C(v14);
        if ((v16 & 1) == 0)
        {
          sub_1001639B0(&v19);
          return;
        }

        sub_1001636A4(*(v2 + 56) + 48 * v15, v18);
        v17 = (v18[4])(&v19);
        sub_1001639B0(&v19);
        sub_1001639B0(v18);
        if ((v17 & 1) == 0)
        {
          return;
        }
      }

      v10 = v6;
      while (1)
      {
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v6 >= v8)
        {
          return;
        }

        ++v10;
        if (*(v3 + 64 + 8 * v6))
        {
          sub_1000C825C();
          v4 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1000E4DFC()
{
  v1 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_100006F14(v2);
  v3 = *(v1 + 20);
  sub_10022C350(&qword_100CE1060);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FinishLaunchTestAction();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000E4F34()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);
  sub_100006F14(v0 + 96);
  sub_100006F14(v0 + 136);
  sub_100006F14(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_1000E4FA0(uint64_t a1)
{
  v3 = sub_10022C350(&qword_100CB3688);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for WeatherMapStatusBarColorSceneModifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10022C350(&qword_100CB75B8);
  sub_1000037E8();
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  sub_1000E5304(v1, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1000E5368(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_10022C350(&qword_100CB75C0);
  sub_1000037E8();
  (*(v15 + 16))(v12, a1);
  v16 = &v12[*(v9 + 36)];
  *v16 = sub_1000ECBE0;
  v16[1] = v14;
  sub_10022C350(&qword_100CB7518);
  State.wrappedValue.getter();
  sub_1000813FC();
  View.statusBarPreserving(preferredColorScheme:)();
  sub_1000180EC(v5, &qword_100CB3688);
  return sub_1000180EC(v12, &qword_100CB75B8);
}

uint64_t sub_1000E51F0()
{
  v1 = *(type metadata accessor for WeatherMapStatusBarColorSceneModifier() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = type metadata accessor for ColorScheme();
  if (!sub_100024D10(v0 + v2, 1, v3))
  {
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  sub_10022C350(&qword_100CB7518);

  return swift_deallocObject();
}

uint64_t sub_1000E5304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapStatusBarColorSceneModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherMapStatusBarColorSceneModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E53CC(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v4 = type metadata accessor for Location();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationOfInterest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA26C0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000703C(v11, qword_100D90AA8);
  v12 = *(v8 + 16);
  v36 = a1;
  v12(v10, a1, v7);
  v13 = v7;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    HIDWORD(v33) = v15;
    v17 = v16;
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v31 = v13;
    LocationOfInterest.location.getter();
    sub_10006CADC(&qword_100CA6678, 255, &type metadata accessor for Location);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v2;
    v20 = v19;
    v21 = v37;
    (*(v37 + 8))(v6, v4);
    (*(v8 + 8))(v10, v31);
    v22 = sub_100078694(v18, v20, v39);

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, BYTE4(v33), "Fetch weather for location of interest %{private,mask.hash}s", v17, 0x16u);
    sub_100006F14(v32);
  }

  else
  {

    (*(v8 + 8))(v10, v13);
    v21 = v37;
  }

  LocationOfInterest.location.getter();
  sub_100090A8C(v6, 0, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0], v39[1], v39[2]);
  return (*(v21 + 8))(v6, v4);
}

uint64_t sub_1000E575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = static Alignment.center.getter();
  v7 = v6;
  v8 = (a2 + *(sub_10022C350(&qword_100CB3B58) + 36));
  sub_1000E5848(v2, v8);
  v9 = (v8 + *(sub_10022C350(&qword_100CB3B60) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = sub_10022C350(&qword_100CB3B68);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1000E5848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for SafariSheetModifier(0) + 20);
  v5 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  sub_1000E594C(a1 + v4, a2 + *(v5 + 20));
  sub_10022C350(&unk_100CB3AA0);
  Binding.projectedValue.getter();
  *a2 = swift_getKeyPath();
  sub_10022C350(&qword_100CB3B70);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v5 + 24);
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[16] = v10;
  result = sub_10022C350(&qword_100CB3B78);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1000E594C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E59E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 272);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_1000E5A60()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_1000E5A8C()
{

  return firstly<A, B>(on:disposeOn:closure:)();
}

uint64_t sub_1000E5AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    sub_1000E5EA4();
    if ((v6 & 1) == 0)
    {
      if (qword_100CA26C0 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000703C(v14, qword_100D90AA8);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Locations of interest updated", v17, 2u);
      }

      a3 = a4;
      goto LABEL_19;
    }

    if (qword_100CA26C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000703C(v7, qword_100D90AA8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Locations of interest are same as before", v10, 2u);
    }
  }

  else
  {
    if (!*(a2 + 16))
    {
      return 0;
    }

    if (qword_100CA26C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000703C(v11, qword_100D90AA8);
    v8 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v12, "Locations of interest newly added", v13, 2u);
    }
  }

LABEL_19:

  return a3;
}

id sub_1000E5D78()
{
  v1 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  sub_1000E594C(v0 + *(v7 + 20), v6);
  v8 = v0 + *(v7 + 24);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  sub_1000E6490();
  v12 = objc_allocWithZone(type metadata accessor for SafariSheetModifier.SafariPresenter.Coordinator(0));
  return sub_1000E64C8(v6, v9, v10, v11, v3);
}

void sub_1000E5EA4()
{
  sub_10000C778();
  v3 = v2;
  sub_100017580();
  v4 = type metadata accessor for LocationCoordinate();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000281F0();
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_1000038CC();
  type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v9 = sub_10022C350(&qword_100CAAA18);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100031BFC();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v54 = v12;
  if (v0 != v3 && (sub_1002E5670(), v14))
  {
    v53 = v13;
    v15 = 0;
    sub_1002E539C();
    sub_100011430();
    sub_1002E4DA4();
    while (v1)
    {
      sub_100165168();
LABEL_12:
      v19 = sub_1002E52DC();
      v20(v19);
      v21 = sub_1002E540C();
      v22(v21);
      v23 = sub_10022C350(&qword_100CAAA20);
      v24 = *(v23 + 48);
      v25 = sub_10002FDB4();
      v26(v25);
      (*(v0 + 32))(v53 + v24, v1, v4);
      sub_10000E7B0();
      sub_10001B350(v27, v28, v29, v23);
      v1 = v55;
LABEL_13:
      sub_100051BBC();
      v30 = sub_10000C8E8();
      v31 = sub_10022C350(v30);
      sub_1000BAEAC(v31);
      if (v14)
      {
        goto LABEL_20;
      }

      v32 = sub_100073CB4();
      v33(v32);
      v34 = sub_1002E5570();
      v35(v34);
      sub_1000E41BC();
      v0 = v36;
      v38 = v37;
      v39 = sub_100020E44();
      v40(v39);
      if ((v38 & 1) == 0)
      {
        sub_10003E21C();
        v49 = sub_100014268();
        v50(v49);
        goto LABEL_20;
      }

      v41 = sub_1002E5368();
      v42(v41);
      sub_1000E1628(&qword_100CAAA28, 255, &type metadata accessor for LocationCoordinate);
      sub_1000370B0();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = sub_100033FE0();
      v38(v43);
      v44 = sub_100014268();
      v38(v44);
      v4 = &unk_100A353B0;
      if ((&unk_100A353B0 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v0 = v54;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v51)
      {
        sub_10022C350(&qword_100CAAA20);
        sub_100003934();
        sub_10001B350(v45, v46, v47, v48);
        v1 = 0;
        goto LABEL_13;
      }

      ++v15;
      if (*(v52 + 8 * v16))
      {
        sub_10003B93C();
        v55 = v17;
        v15 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_10000536C();
  }
}

id sub_1000E62BC@<X0>(void *a1@<X8>)
{
  result = sub_1000E5D78();
  *a1 = result;
  return result;
}

void sub_1000E62E4()
{
  sub_10000C778();
  sub_1000A40D0();
  v4 = v3;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100019530();
  sub_10022C350(v2);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10001320C();
  sub_100192484();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v0(0);
    sub_1000037E8();
    (*(v7 + 32))(v4, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    sub_1000869B4();

    EnvironmentValues.init()();
    sub_10000C918();
    swift_getAtKeyPath();

    v9 = sub_100021CEC();
    v10(v9);
  }

  sub_10000536C();
}

id sub_1000E64C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  v14 = type metadata accessor for URL();
  sub_10001B350(&v6[v13], 1, 1, v14);
  *&v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController] = 0;
  swift_beginAccess();
  sub_1000E6688(a1, &v6[v13]);
  swift_endAccess();
  v15 = &v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  *v15 = a2;
  *(v15 + 1) = a3;
  v15[16] = a4;
  v16 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
  v17 = type metadata accessor for ColorScheme();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v6[v16], a5, v17);
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  (*(v18 + 8))(a5, v17);
  sub_1000E6774(a1);
  return v19;
}

uint64_t sub_1000E6634()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000E6688(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3AB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E66F8()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1000E672C()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1000E6774(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB3AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E680C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E6848()
{
  sub_100003B08();
  type metadata accessor for MainActor();
  *(v0 + 256) = static MainActor.shared.getter();
  sub_100037034();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100186318, v2, v1);
}

uint64_t sub_1000E68D4()
{

  sub_100006F14(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1000E691C()
{
  sub_10022C350(&qword_100CB3C48);
  UIViewControllerRepresentableContext.coordinator.getter();
  return v1;
}

void sub_1000E69A8()
{
  v1 = v0;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3C48);
  UIViewControllerRepresentableContext.coordinator.getter();
  v6 = v15[1];
  v7 = type metadata accessor for SafariSheetModifier.SafariPresenter(0);
  v8 = *(v7 + 20);
  v9 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  swift_beginAccess();
  sub_1000E6688(v1 + v8, &v6[v9]);
  swift_endAccess();
  v10 = (v1 + *(v7 + 24));
  v11 = *v10;
  v12 = v10[1];
  LOBYTE(v10) = *(v10 + 16);
  v13 = &v6[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  *v13 = v11;
  *(v13 + 1) = v12;
  v13[16] = v10;

  sub_1000E6490();
  v14 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
  swift_beginAccess();
  (*(v3 + 40))(&v6[v14], v5, v2);
  swift_endAccess();
  sub_1000E6B64();
}

void sub_1000E6B64()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB3688);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock - v3;
  v5 = sub_10022C350(&qword_100CB3AB0);
  __chkstk_darwin(v5 - 8);
  v7 = &aBlock - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &aBlock - v13;
  v15 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController;
  v16 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_safariViewController];
  v17 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_initialURL;
  swift_beginAccess();
  sub_1000E594C(&v1[v17], v7);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_1000E6774(v7);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v18 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 8];
    v19 = v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 16];
    aBlock = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
    v39 = v18;
    LOBYTE(v40) = v19;
    sub_10022C350(&unk_100CB3AA0);
    Binding.wrappedValue.getter();
    if (v44 == 1 && !v16)
    {
      v31 = [v1 viewIfLoaded];
      v32 = [v31 window];

      if (!v32)
      {
        (*(v9 + 8))(v14, v8);
        return;
      }

      sub_1003BF2FC();
      (*(v9 + 16))(v11, v14, v8);
      v33 = sub_1003BEFDC(v11);
      [v33 setDelegate:v1];
      v34 = v33;
      [v34 setModalPresentationStyle:2];
      v35 = [v34 presentationController];

      if (v35)
      {
        [v35 setDelegate:v1];
      }

      v36 = *&v1[v15];
      *&v1[v15] = v34;
      v37 = v34;

      [v1 presentViewController:v37 animated:1 completion:0];
      (*(v9 + 8))(v14, v8);
      goto LABEL_11;
    }

    (*(v9 + 8))(v14, v8);
  }

  v20 = *&v1[v15];
  if (!v20)
  {
    return;
  }

  v21 = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 8];
  v22 = v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation + 16];
  aBlock = *&v1[OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_wantsPresentation];
  v39 = v21;
  LOBYTE(v40) = v22;
  v23 = v20;
  sub_10022C350(&unk_100CB3AA0);
  Binding.wrappedValue.getter();
  if ((v44 & 1) != 0 || !v16)
  {
  }

  else
  {
    [v23 setDelegate:0];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = sub_1003BF2F4;
    v43 = v24;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1000742F0;
    v41 = &unk_100C53888;
    v25 = _Block_copy(&aBlock);

    [v23 dismissViewControllerAnimated:1 completion:v25];

    _Block_release(v25);
    v26 = *&v1[v15];
    *&v1[v15] = 0;
  }

LABEL_11:
  v27 = *&v1[v15];
  if (v27)
  {
    v28 = OBJC_IVAR____TtCVV7WeatherP33_6F14ACE14E05F94F19B7002A2956129619SafariSheetModifier15SafariPresenter11Coordinator_colorScheme;
    swift_beginAccess();
    v29 = type metadata accessor for ColorScheme();
    (*(*(v29 - 8) + 16))(v4, &v1[v28], v29);
    sub_10001B350(v4, 0, 1, v29);
    v30 = v27;
    [v30 setOverrideUserInterfaceStyle:UIUserInterfaceStyle.init(_:)()];
  }
}

uint64_t sub_1000E70CC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000E7148()
{
  v1 = type metadata accessor for MainViewScenePhaseObservationViewModifier(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E74DC();
  sub_100085E60(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MainViewScenePhaseObservationViewModifier);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  sub_100085EBC(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for MainViewScenePhaseObservationViewModifier);
  sub_10022C350(&qword_100CE11C0);
  sub_10006768C(&qword_100CE11C8, &qword_100CE11C0);
  sub_100061520(&qword_100CE11D0, &type metadata accessor for ScenePhase);
  View.onChange<A>(of:initial:_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000E73C4()
{
  v1 = (type metadata accessor for MainViewScenePhaseObservationViewModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_100006F14(v2);
  v3 = v1[7];
  sub_10022C350(&unk_100CE1000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1000E7558()
{
  result = qword_100CBA9A8;
  if (!qword_100CBA9A8)
  {
    sub_10022E824(&qword_100CBA9B0);
    sub_100006F64(&unk_100CE15D0, &qword_100CBA9B8);
    sub_1000E7610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA9A8);
  }

  return result;
}

unint64_t sub_1000E7610()
{
  result = qword_100CBA9C0;
  if (!qword_100CBA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA9C0);
  }

  return result;
}

unint64_t sub_1000E7664()
{
  result = qword_100CBA9D0;
  if (!qword_100CBA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBA9D0);
  }

  return result;
}

uint64_t sub_1000E76B8()
{
  sub_1000E7714();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E7784(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void *sub_1000E77EC@<X0>(void *a1@<X8>)
{
  sub_1000E7A8C(v1, __dst);
  v3 = swift_allocObject();
  v4 = *&__dst[16];
  v3[1] = *__dst;
  v3[2] = v4;
  v5 = *&__dst[48];
  v3[3] = *&__dst[32];
  v3[4] = v5;
  __src[10] = sub_1000ED1D0;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&qword_100CBA978);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000E7AC4(&xmmword_100D8FB90, __dst);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1000EF24C;
    __src[2] = v3;
    v7 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v7;
    memcpy(__dst, __src, 0x61uLL);
    v8 = *v1;
    sub_100035B30((v1 + 1), &__src[14]);
    v9 = v1[6];
    __src[13] = v8;
    __src[19] = v9;
    memcpy(__src, __dst, 0x61uLL);
    v10 = v1[7];
    swift_retain_n();
    swift_retain_n();
    sub_10044A4B4(v10, &__dst[160]);
    memcpy(__dst, __src, 0xA0uLL);
    sub_100035B30((v1 + 1), (a1 + 27));
    sub_10022C350(&unk_100CE0F40);
    sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40);
    a1[25] = ObservedObject.init(wrappedValue:)();
    a1[26] = v11;
    a1[32] = v9;
    return memcpy(a1, __dst, 0xC8uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E7A40()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000E7AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CAF270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000E7B34()
{
  sub_10000C778();
  v1 = sub_1000753E4();
  active = type metadata accessor for ActiveLocationInput(v1);
  v3 = sub_100003810(active);
  __chkstk_darwin(v3);
  sub_1000106FC();
  sub_1000373B8();
  sub_100006C90();
  __chkstk_darwin(v4);
  sub_100008064();
  __chkstk_darwin(v5);
  sub_10001D3DC();
  sub_10004EE48();
  sub_1000171B0();
  v6 = sub_100030700();
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_10022C350(&qword_100CA4B58);
      sub_100024C98(*(v7 + 48));
      sub_100041C64();
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_10000938C();
    v8();
    v9 = sub_100028ED4();
    v0(v9);

    sub_10022C350(&qword_100CA4B58);
    sub_10002CC38();
    sub_10000EF70();
    sub_100018074();
    v10 = sub_100049FC4();
    sub_1000217D8(v10, v11, &qword_100CA4B38);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1000E7CF4(void (*a1)(void *, uint64_t), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t))
{
  v5 = sub_10022C350(&qword_100CA4B50);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - v7;
  a3(v16, v6);
  a1(v16, 1);

  active = type metadata accessor for ActiveLocationInput(0);
  if (sub_100024D10(v8, 1, active) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v8, &qword_100CA4B50);
  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(82);
  v11._countAndFlagsBits = 0xD00000000000004BLL;
  v11._object = 0x8000000100ABBDF0;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC0A0;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 8236;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  v14._object = 0x8000000100ABC0C0;
  v14._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 46;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E7F3C(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for ActiveLocationInput(0);
  v2 = sub_10001C768();

  return sub_10001B350(v2, v3, v4, v5);
}

void sub_1000E7F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000037D8();
  v29 = (v28 - v27);
  v30 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000037D8();
  v34 = v33 - v32;
  v35 = sub_10022C350(&qword_100CA65B8);
  sub_100003810(v35);
  sub_100003828();
  __chkstk_darwin(v36);
  v38 = &a9 - v37;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000037D8();
  v42 = v41 - v40;
  sub_1000E8294(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v41 - v40, type metadata accessor for ModalViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000E8348(v42, type metadata accessor for ModalViewState);
  sub_1000E8294(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v34, type metadata accessor for ViewState);
  sub_1000E8294(v34 + v30[5], v29, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = *v29;
    if (*(v34 + v30[9] + 8) == 1)
    {
      v46 = [objc_opt_self() currentDevice];
      [v46 userInterfaceIdiom];

      v47 = *(v34 + v30[7]);
      sub_10001BE68();
      if ((v47 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    else
    {
      sub_10001BE68();
    }

    sub_100005858();
    sub_1000E8294(v45 + v48, v38, v49);

    v44 = 0;
    goto LABEL_9;
  }

  sub_10001BE68();
  sub_1000E8348(v29, type metadata accessor for ViewState.SecondaryViewState);
LABEL_3:
  v44 = 1;
LABEL_9:
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_10001B350(v38, v44, 1, active);
  v51 = v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
  v52 = *(v51 + *(type metadata accessor for LocationsState() + 36));
  *v25 = EnumCaseMultiPayload == 0;
  v53 = type metadata accessor for ActiveLocationInput(0);
  sub_1000E83F4(v38, &v25[*(v53 + 20)]);
  *&v25[*(v53 + 24)] = v52;

  sub_10000536C();
}

uint64_t sub_1000E8294(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000E82F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_100003A9C();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000E8348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000E83A0()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1000E83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E8478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10022C350(&qword_100CA65B8);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_10001B350(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000E8544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA65B8);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_100024D10(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000E8600(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4B40);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  a2(a1, 1);
  active = type metadata accessor for ActiveLocationModel(0);
  if (sub_100024D10(v6, 1, active) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4B40);
  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._countAndFlagsBits = 0xD000000000000050;
  v9._object = 0x8000000100ABBD90;
  String.append(_:)(v9);
  v10._object = 0x8000000100ABC0A0;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._object = 0x8000000100ABC0C0;
  v12._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000E8804()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v10 = sub_10022C350(&qword_100CA65B8);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CB4();
  v12 = sub_10022C350(&qword_100CADBA0);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v29[-v14];
  v16 = type metadata accessor for ActiveLocationInput(0);
  sub_100035AD0(v2 + *(v16 + 20), v0, &qword_100CA65B8);
  sub_1000038B4(v0, 1, active);
  if (v22)
  {
    sub_1000180EC(v0, &qword_100CA65B8);
    v17 = type metadata accessor for Location.Identifier();
    v18 = v15;
    v19 = 1;
  }

  else
  {
    sub_100005858();
    sub_1000E8294(v0, v9, v20);
    v21 = type metadata accessor for Location.Identifier();
    sub_1000038B4(v9, 1, v21);
    if (v22)
    {
      static CurrentLocation.placeholderIdentifier.getter();
    }

    else
    {
      (*(*(v21 - 8) + 32))(v15, v9, v21);
    }

    sub_10000822C();
    v18 = v15;
    v19 = 0;
    v17 = v21;
  }

  sub_10001B350(v18, v19, 1, v17);
  v23 = sub_100035AD0(v15, v4, &qword_100CADBA0);
  __chkstk_darwin(v23);
  *&v29[-16] = v15;
  v25 = sub_1000E8AF0(sub_1000E8F8C, &v29[-32], v24);
  v27 = v26;
  v28 = v4 + *(type metadata accessor for ActiveLocationModel(0) + 20);
  *v28 = v25;
  *(v28 + 8) = v27 & 1;
  sub_1000180EC(v15, &qword_100CADBA0);
  sub_10000536C();
}

uint64_t sub_1000E8AA0(uint64_t a1, void (*a2)(void))
{
  a2();
  type metadata accessor for ActiveLocationModel(0);
  v2 = sub_10001C768();

  return sub_10001B350(v2, v3, v4, v5);
}

uint64_t sub_1000E8B1C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = a4(0);
    sub_100003AE8(v10);
    result = a1(a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v12 + 72) * v8);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v8;
  }

  return v8;
}

uint64_t sub_1000E8C08(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for Location.Identifier();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CADD58);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v21 - v8;
  v10 = sub_10022C350(&qword_100CADBA0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  (*(v4 + 16))(&v21 - v14, a1, v3);
  sub_10001B350(v15, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_100035AD0(v15, v9, &qword_100CADBA0);
  sub_100035AD0(v22, &v9[v16], &qword_100CADBA0);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_100035AD0(v9, v13, &qword_100CADBA0);
    if (sub_100024D10(&v9[v16], 1, v3) != 1)
    {
      v18 = v21;
      (*(v4 + 32))(v21, &v9[v16], v3);
      sub_1000E8FAC();
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v4 + 8);
      v19(v18, v3);
      sub_1000180EC(v15, &qword_100CADBA0);
      v19(v13, v3);
      sub_1000180EC(v9, &qword_100CADBA0);
      return v17 & 1;
    }

    sub_1000180EC(v15, &qword_100CADBA0);
    (*(v4 + 8))(v13, v3);
    goto LABEL_6;
  }

  sub_1000180EC(v15, &qword_100CADBA0);
  if (sub_100024D10(&v9[v16], 1, v3) != 1)
  {
LABEL_6:
    sub_1000180EC(v9, &qword_100CADD58);
    v17 = 0;
    return v17 & 1;
  }

  sub_1000180EC(v9, &qword_100CADBA0);
  v17 = 1;
  return v17 & 1;
}

unint64_t sub_1000E8FAC()
{
  result = qword_100CA3A48;
  if (!qword_100CA3A48)
  {
    type metadata accessor for Location.Identifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA3A48);
  }

  return result;
}

uint64_t sub_1000E9018(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1000E9084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1000E90D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E9170()
{
  result = qword_100CB7A80;
  if (!qword_100CB7A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7A80);
  }

  return result;
}

unint64_t sub_1000E91C8()
{
  result = qword_100CE71B0;
  if (!qword_100CE71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE71B0);
  }

  return result;
}

__n128 sub_1000E921C(uint64_t a1, uint64_t a2)
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

void sub_1000E9230()
{
  sub_10000C778();
  v27 = v3;
  v28 = v2;
  v4 = sub_10000C76C();
  type metadata accessor for MainViewModel(v4);
  sub_100028D80();
  __chkstk_darwin(v5);
  sub_1000037D8();
  sub_100004E28();
  v6 = v0 + *(sub_10022C350(&qword_100CE4720) + 36);
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v1, v7);
  v26 = sub_1000E948C();
  v9 = v8;
  v10 = sub_1000E948C();
  v12 = v11;
  v14 = v13;
  static Binding.constant(_:)();
  v15 = type metadata accessor for ModalPresentationViewModifier(0);
  v16 = (v6 + *(v15 + 20));
  *v16 = v26;
  v16[1] = v9;
  sub_100075238(v16);
  *v17 = v10;
  *(v17 + 8) = v12;
  *(v17 + 16) = v14 & 1;
  v19 = v6 + *(v18 + 28);
  *v19 = v29;
  *(v19 + 8) = v30;
  *(v19 + 16) = v31;
  v20 = (v6 + *(v18 + 32));
  type metadata accessor for ObservableResolver();
  sub_100010F80();
  sub_100081574(v21, v22);
  sub_1000201F8();
  *v20 = EnvironmentObject.init()();
  v20[1] = v23;
  v24 = v6 + *(v15 + 36);
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  sub_10022C350(&qword_100CE4728);
  sub_1000037E8();
  (*(v25 + 16))(v27, v28);
  sub_10000536C();
}

uint64_t sub_1000E948C()
{
  sub_1000E9574(v0, &v21);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &protocol witness table for MainActor;
  sub_1000170C8(v2, v3, v4, v5, v6, v7, v8, v9, v21, v22, v10, v23);
  sub_1000E9574(v0, &v21);
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_1000170C8(v12, v13, v14, v12, v15, v16, v17, v18, v21, v22, v19, v23);
  Binding.init(get:set:)();
  return v21;
}

void sub_1000E95AC()
{
  sub_10000C778();
  v2 = v1;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CCF2F8);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v7 = sub_10000E9F4();
  v8 = type metadata accessor for MainViewModel(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = type metadata accessor for MainViewModel.ModalModule(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  sub_100095730();
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v11, v17);
  if (sub_100024D10(v0, 1, v12) == 1)
  {
    sub_1000180EC(v0, &qword_100CCF2F8);
    v18 = 0;
  }

  else
  {
    v19 = sub_10009A650();
    v20 = v2(v19);
    sub_100097D4C(v16, type metadata accessor for MainViewModel.ModalModule);
    v18 = v20 & 1;
  }

  *v4 = v18;
  sub_10000536C();
}

void sub_1000E97E8()
{
  sub_100007370();
  if (v0 <= 0x3F)
  {
    sub_10006126C();
    if (v1 <= 0x3F)
    {
      sub_100009994();
      if (v2 <= 0x3F)
      {
        sub_10009C160();
        if (v3 <= 0x3F)
        {
          sub_10009BE90(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10009BE90(319, &unk_100CB35A0, &type metadata for NamespaceWrapper, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100061960();
              if (v6 <= 0x3F)
              {
                sub_10009BE90(319, &unk_100CB32E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  sub_10009BE90(319, &qword_100CA6D40, &type metadata for Bool, &type metadata accessor for State);
                  if (v8 <= 0x3F)
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

unint64_t sub_1000E99D4()
{
  result = qword_100CB3638;
  if (!qword_100CB3638)
  {
    sub_10022E824(&qword_100CB3500);
    sub_100006F64(&qword_100CB3640, &qword_100CB34F8);
    sub_100006F64(&qword_100CB3648, &qword_100CB3650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3638);
  }

  return result;
}

unint64_t sub_1000E9AEC()
{
  result = qword_100CCA008;
  if (!qword_100CCA008)
  {
    sub_10022E824(&qword_100CCA010);
    sub_1005F6F6C(&unk_100CC9A18);
    sub_1000E9BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA008);
  }

  return result;
}

unint64_t sub_1000E9BB0()
{
  result = qword_100CC9A20;
  if (!qword_100CC9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9A20);
  }

  return result;
}

void sub_1000E9C24()
{
  sub_1000E9E3C(319, &qword_100CC99A0, type metadata accessor for LocationViewerBindingWrapper, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000E9FDC();
      if (v2 <= 0x3F)
      {
        sub_1000EA080();
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &qword_100CC99B8);
          if (v4 <= 0x3F)
          {
            sub_100081B54(319, &qword_100CACC68);
            if (v5 <= 0x3F)
            {
              sub_100081B54(319, &unk_100CACC70);
              if (v6 <= 0x3F)
              {
                sub_100081B54(319, &qword_100CA5088);
                if (v7 <= 0x3F)
                {
                  sub_10000C70C(319, &qword_100CA2E40);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for WireframeLevelInterestManager();
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

void sub_1000E9E3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000E9EC0()
{
  sub_1005F06A4(319, &unk_100CC97C0, &qword_100CC9118, &unk_100A67230, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000E9FDC()
{
  if (!qword_100CC99A8)
  {
    sub_10022E824(&qword_100CA4C18);
    sub_1005F6F6C(&qword_100CA4C20);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC99A8);
    }
  }
}

void sub_1000EA080()
{
  if (!qword_100CC99B0)
  {
    type metadata accessor for WeatherConditionBackgroundModelFactoryInput();
    type metadata accessor for WeatherConditionBackgroundModel();
    sub_1000EA178(&qword_100CA4BE8);
    sub_1000EA178(&qword_100CA4BD0);
    v0 = type metadata accessor for Selector();
    if (!v1)
    {
      atomic_store(v0, &qword_100CC99B0);
    }
  }
}

unint64_t sub_1000EA178(uint64_t a1)
{
  result = sub_100013918(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1000EA1DC()
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

void sub_1000EA2A4()
{
  sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000E9E3C(319, &unk_100CCA3C0, type metadata accessor for PageControlDisplayState, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000EA3E0()
{
  sub_10009C020(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10008178C(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EA4D0()
{
  sub_10009BE44(319, &qword_100CE0E20);
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000EA584()
{
  v0 = sub_100003940();
  sub_10022E824(v0);
  type metadata accessor for LocationViewerBindingWrapper(255);
  sub_1000116D0();
  sub_1005F6F6C(v1);
  sub_100024284();
  sub_1000EA178(v2);
  return sub_100017540();
}

uint64_t sub_1000EA650()
{
  sub_10009BE44(319, &unk_100CA41F0);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000817EC(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1000612C8();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_10009BE44(319, &qword_100CE0E20);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_10009BE44(319, &qword_100CB24B8);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_1000817EC(319, &qword_100CA3C70, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1000EA8C4();
          v1 = v11;
          if (v12 <= 0x3F)
          {
            sub_1000817EC(319, &qword_100CDE3C8, type metadata accessor for GridGeometryCache, &type metadata accessor for State);
            v1 = v13;
            if (v14 <= 0x3F)
            {
              sub_10009BE44(319, &unk_100CDE3D0);
              v1 = v15;
              if (v16 <= 0x3F)
              {
                sub_10009BE44(319, &qword_100CA3C88);
                v1 = v17;
                if (v18 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

void sub_1000EA8C4()
{
  if (!qword_100CDE3B8)
  {
    type metadata accessor for GridGeometryValidator();
    sub_1000EA958(&qword_100CDE3C0, type metadata accessor for GridGeometryValidator);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CDE3B8);
    }
  }
}

uint64_t sub_1000EA958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EAA00()
{
  sub_10022E824(&qword_100CDE300);
  sub_10022E824(&qword_100CDE308);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB0568);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580);
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE310);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CCAF30);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE318);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_1000EAD38();
  sub_1000090FC();
  sub_100006F64(v0, &qword_100CDE308);
  swift_getWitnessTable();
  sub_100006F64(&qword_100CB0560, &qword_100CB0568);
  swift_getWitnessTable();
  sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  swift_getWitnessTable();
  sub_100006F64(&unk_100CE1210, &qword_100CDE310);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000068B8();
  sub_100006F64(v1, &qword_100CCAF30);
  swift_getWitnessTable();
  sub_100010D98();
  sub_100006F64(v2, &qword_100CDE318);
  swift_getWitnessTable();
  type metadata accessor for _OverlayPreferenceModifier();
  type metadata accessor for ModifiedContent();
  sub_1000EAD8C();
  sub_100014FBC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1000EAD38()
{
  result = qword_100CDE320;
  if (!qword_100CDE320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE320);
  }

  return result;
}

unint64_t sub_1000EAD8C()
{
  result = qword_100CDE338;
  if (!qword_100CDE338)
  {
    sub_10022E824(&qword_100CDE300);
    sub_1000EA958(&qword_100CDE340, type metadata accessor for GridGeometryComputerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDE338);
  }

  return result;
}

uint64_t sub_1000EAE68()
{
  result = type metadata accessor for TargetWindowSizeClass();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapPresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000EAFD8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

void sub_1000EB0D8()
{
  sub_10006126C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayMetrics();
    if (v1 <= 0x3F)
    {
      sub_10009BE90(319, &unk_100CB33E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_1000612C8();
        if (v3 <= 0x3F)
        {
          sub_10009BE90(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t storeEnumTagSinglePayload for LocationHeaderViewBackgroundLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TranslationAndGradientBackgroundViewModifier.ScrollAdjustments(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000EB268()
{
  result = qword_100CB36B0;
  if (!qword_100CB36B0)
  {
    sub_10022E824(&qword_100CB3680);
    sub_10022E824(&qword_100CB3678);
    sub_1000EB3AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CB36B8, &qword_100CB36C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB36B0);
  }

  return result;
}

unint64_t sub_1000EB3AC()
{
  result = qword_100CA6160;
  if (!qword_100CA6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6160);
  }

  return result;
}

uint64_t sub_1000EB400()
{
  v3 = sub_100022A88();
  sub_1000EB594(v3, v4);
  v5 = swift_allocObject();
  sub_10000FE30(v5, v6, v7, v8, v9, v10, v11, v12, v25, v26, v27, v13);
  *(v14 + 64) = v28;
  v15 = static Alignment.center.getter();
  v17 = v16;
  sub_10022C350(&qword_100CB34F8);
  sub_1000037E8();
  (*(v18 + 16))(v0, v2);
  v19 = (v0 + *(sub_10022C350(&qword_100CB3500) + 36));
  *v19 = sub_1000EB7A4;
  v19[1] = v1;
  v19[2] = v15;
  v19[3] = v17;
  v20 = *(sub_10022C350(&qword_100CB3508) + 36);
  v21 = enum case for ColorScheme.dark(_:);
  v22 = type metadata accessor for ColorScheme();
  sub_1000037E8();
  (*(v23 + 104))(v0 + v20, v21, v22);
  return sub_10001B350(v0 + v20, 0, 1, v22);
}

uint64_t sub_1000EB54C()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1000EB5E8@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *a2;
  sub_100035B30((a2 + 1), a3 + 32);
  v9 = a2[6];
  v10 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  v11 = v10[8];
  *(a3 + v11) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v12 = a3 + v10[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a3 + v10[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = (a3 + v10[11]);
  type metadata accessor for ObservableResolver();
  sub_100007A54(&qword_100CB0468, &type metadata accessor for ObservableResolver);

  *v14 = EnvironmentObject.init()();
  v14[1] = v15;
  v16 = a3 + v10[12];
  State.init(wrappedValue:)();
  *v16 = v19;
  *(v16 + 8) = v20;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 72) = v9;
  v17 = a3 + v10[13];
  *v17 = v5;
  *(v17 + 8) = 0;
}

uint64_t sub_1000EB7C4()
{
  sub_10000FE4C();
  result = sub_1000A48C0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1000EB7F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10022C350(&qword_100CB3678);
  v30 = *(v8 - 8);
  v31 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v28 = static Color.clear.getter();
  v29 = v3;
  v42 = v28;
  v11 = v2 + *(v3 + 36);
  v12 = *v11;
  if (*(v11 + 8) == 1)
  {
    v41 = *v11;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v12) = v41;
  }

  LOBYTE(v37) = v12;
  v34 = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer;
  sub_1000A3CC8();
  swift_allocObject();
  v27[1] = type metadata accessor for MainViewFullscreenMapZoomTransitionModifier.TransitionContainer;
  sub_1000EBDC8();
  v14 = sub_1000EB3AC();
  View.onChange<A>(of:initial:_:)();

  v15 = *(v29 + 52);
  v27[2] = v2;
  v16 = (v2 + v15);
  LODWORD(v33) = *v16;
  v29 = *(v16 + 1);
  LOBYTE(v37) = v33;
  v38 = v29;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  sub_1000A3CC8();
  swift_allocObject();
  sub_1000EBDC8();
  v37 = &type metadata for Color;
  v38 = &type metadata for WeatherMapPresentationStyle;
  v39 = &protocol witness table for Color;
  v40 = v14;
  swift_getOpaqueTypeConformance2();
  v18 = v31;
  v17 = v32;
  View.onChange<A>(of:initial:_:)();

  (*(v30 + 8))(v10, v18);
  v35 = v33;
  v36 = v29;
  State.projectedValue.getter();
  v19 = v37;
  v20 = v38;
  v21 = v39;
  sub_1000A3CC8();
  v22 = swift_allocObject();
  sub_1000EBDC8();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1003BA5F0;
  *(v23 + 24) = v22;
  v35 = 0;
  State.init(wrappedValue:)();
  LOBYTE(v22) = v37;
  v24 = v38;
  result = sub_10022C350(&qword_100CB3680);
  v26 = v17 + *(result + 36);
  *v26 = v19;
  *(v26 + 8) = v20;
  *(v26 + 16) = v21;
  *(v26 + 17) = 0;
  *(v26 + 24) = sub_1000EBF30;
  *(v26 + 32) = v23;
  *(v26 + 40) = v22;
  *(v26 + 48) = v24;
  return result;
}

uint64_t sub_1000EBD74(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000EBD84()
{

  return swift_deallocObject();
}

uint64_t sub_1000EBDC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000EBE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a8;
  v12[4] = a5;
  v12[5] = a6;

  sub_10022C350(&qword_100CE1850);
  sub_1000EBF38();
  View.fullScreenCover<A>(isPresented:onDismiss:content:)();
}

unint64_t sub_1000EBF38()
{
  result = qword_100CE1858;
  if (!qword_100CE1858)
  {
    sub_10022E824(&qword_100CE1850);
    sub_10022E824(&unk_100CE1860);
    type metadata accessor for ZoomNavigationTransition();
    sub_1000EC0DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1858);
  }

  return result;
}

unint64_t sub_1000EC020()
{
  result = qword_100CE1870;
  if (!qword_100CE1870)
  {
    sub_10022E824(&qword_100CB3698);
    sub_1000EC168();
    sub_100007A54(&qword_100CE10A0, type metadata accessor for WeatherMapStatusBarColorSceneModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1870);
  }

  return result;
}

unint64_t sub_1000EC0DC()
{
  result = qword_100CB36A0;
  if (!qword_100CB36A0)
  {
    sub_10022E824(&unk_100CE1860);
    sub_1000EC020();
    sub_1000EC224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB36A0);
  }

  return result;
}

unint64_t sub_1000EC168()
{
  result = qword_100CE1880;
  if (!qword_100CE1880)
  {
    sub_10022E824(&qword_100CB3690);
    sub_100007A54(&unk_100CE1890, type metadata accessor for FullscreenMapView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1880);
  }

  return result;
}

unint64_t sub_1000EC224()
{
  result = qword_100CB36A8;
  if (!qword_100CB36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB36A8);
  }

  return result;
}

uint64_t sub_1000EC278()
{
  started = type metadata accessor for StartMethod();
  sub_1000037C4();
  v2 = v1;
  v15 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for LocationAccessData();
  sub_1000037C4();
  v6 = v5;
  v7 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for CellularRadioAccessTechnology();
  sub_1000037C4();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v2 + 8))(v0 + v15, started);

  (*(v6 + 8))(v0 + v7, v16);
  (*(v12 + 8))(v0 + v13, v10);

  return swift_deallocObject();
}

uint64_t sub_1000EC47C()
{
  if (*(v0 + 40))
  {
    sub_10010CD64(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  if (*(v0 + 72))
  {
    sub_10010CD64(*(v0 + 48), *(v0 + 56), *(v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_1000EC504(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a6;
  v54 = a8;
  v45 = a7;
  v51 = a4;
  v52 = a5;
  v48 = a2;
  v49 = a3;
  v50 = a9;
  v12 = sub_10022C350(&qword_100CB54A0);
  v56 = *(v12 - 8);
  v57 = v12;
  __chkstk_darwin(v12);
  v55 = &v45 - v13;
  v14 = sub_10022C350(&qword_100CB54A8);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = sub_10022C350(&qword_100CB54B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v45 - v18;
  v20 = sub_10022C350(&qword_100CB54B8);
  __chkstk_darwin(v20 - 8);
  v22 = &v45 - v21;
  v23 = type metadata accessor for SessionData();
  v47 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v46 = &v45 - v27;
  v58 = a1;
  v28 = AccessSessionManager.isDiagnosticSubmissionAllowed.getter();
  started = type metadata accessor for StartMethod();
  v30 = started;
  if (v28)
  {
    (*(*(started - 8) + 16))(v22, v45, started);
    sub_10001B350(v22, 0, 1, v30);
    v31 = type metadata accessor for LocationAccessData();
    (*(*(v31 - 8) + 16))(v19, a10, v31);
    sub_10001B350(v19, 0, 1, v31);
    v32 = type metadata accessor for CellularRadioAccessTechnology();
    (*(*(v32 - 8) + 16))(v16, a11, v32);
    v33 = v16;
    v34 = 0;
    v35 = v32;
  }

  else
  {
    sub_10001B350(v22, 1, 1, started);
    v36 = type metadata accessor for LocationAccessData();
    sub_10001B350(v19, 1, 1, v36);
    v35 = type metadata accessor for CellularRadioAccessTechnology();
    v33 = v16;
    v34 = 1;
  }

  sub_10001B350(v33, v34, 1, v35);

  v37 = v46;
  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  v38 = v47;
  (*(v47 + 16))(v26, v37, v23);
  sub_100068374(&qword_100CB54C0, &type metadata accessor for SessionData);
  v39 = v55;
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v40 = type metadata accessor for DataEventTrait();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100A2C3F0;
  (*(v41 + 104))(v43 + v42, enum case for DataEventTrait.unique(_:), v40);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  (*(v56 + 8))(v39, v57);
  return (*(v38 + 8))(v37, v23);
}

uint64_t sub_1000ECB14()
{
  type metadata accessor for TemperatureScaleData();
  sub_100068374(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData);
  return AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_1000ECBE0(uint64_t a1)
{
  type metadata accessor for WeatherMapStatusBarColorSceneModifier();

  return sub_1000ECC50(a1);
}

uint64_t sub_1000ECC50(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB3688);
  __chkstk_darwin(v2 - 8);
  sub_1000ECFC4(a1, &v5 - v3);
  sub_10022C350(&qword_100CB7518);
  return State.wrappedValue.setter();
}

uint64_t sub_1000ECCF8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TemperatureScaleData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB53F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v4 + 16))(v6, a2, v3);
  sub_100068374(&qword_100CB3EE8, &type metadata accessor for TemperatureScaleData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v11 = type metadata accessor for DataEventTrait();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  (*(v12 + 104))(v14 + v13, enum case for DataEventTrait.unique(_:), v11);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000ECFC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB3688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000ED060()
{
  sub_10022C350(&qword_100CAE2B0);
  v0 = type metadata accessor for DataEventTrait();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2C3F0;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.unique(_:), v0);
  type metadata accessor for UserData();
  sub_100068374(&qword_100CB5490, &type metadata accessor for UserData);
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_1000ED1E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE48);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v34)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4C18);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4BD8);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v7 = v31;
  if (!v31)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v30)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for WireframeLevelInterestManager();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v24 = v32;
  v25 = v6;
  v26 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC5640);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v28)
  {
    v9 = type metadata accessor for LocationViewerModule();
    ObjectType = swift_getObjectType();
    v11 = sub_10002D7F8(v33, v34);
    v12 = __chkstk_darwin(v11);
    v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v14, v12);
    v16 = sub_10002D7F8(v27, v28);
    v17 = __chkstk_darwin(v16);
    v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19, v17);
    v21 = type metadata accessor for LocationViewerInteractor();
    v22 = sub_1000EEEB0(v14, v5, v25, v7, &v29, v8, v19, v9, v21, &type metadata for ContentStatusBannerViewFactory, ObjectType, &off_100C60970, &off_100C78818, v24);
    sub_100006F14(v27);
    result = sub_100006F14(v33);
    v23 = v26;
    v26[3] = v9;
    v23[4] = &off_100C6B700;
    *v23 = v22;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000ED634@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v24;
  if (v24)
  {
    v6 = v25;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CCBE40);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v7 = sub_10002D7F8(v22, v23);
      v8 = __chkstk_darwin(v7);
      v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v21[3] = &type metadata for LocationViewerTracker;
      v21[4] = &off_100C4F2E8;
      v21[0] = v12;
      v13 = type metadata accessor for LocationViewerInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, &type metadata for LocationViewerTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[7] = &type metadata for LocationViewerTracker;
      v14[8] = &off_100C4F2E8;
      v14[3] = v6;
      v14[4] = v20;
      v14[2] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C60970;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ED8B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UserData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5488);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v4 + 16))(v6, a2, v3);
  sub_100068374(&qword_100CB5490, &type metadata accessor for UserData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v11 = type metadata accessor for DataEventTrait();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  (*(v12 + 104))(v14 + v13, enum case for DataEventTrait.unique(_:), v11);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000EDB74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for LocationViewerTracker;
    a2[4] = &off_100C4F2E8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for PrivateUserData();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000161C0((a4 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler), *(a4 + OBJC_IVAR____TtC7Weather31SessionEventsAndDataCoordinator_privacySampler + 24));
  result = dispatch thunk of PrivacySamplerType.hashSum.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = result;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v11 <= 0x7FFFFFFF)
  {

    v16[12] = 0;
    PrivateUserData.init(privateUserID:privateUserHashMod:)();
    sub_10022C350(&qword_100CAE2B0);
    v12 = type metadata accessor for DataEventTrait();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100A2C3F0;
    (*(v13 + 104))(v15 + v14, enum case for DataEventTrait.unique(_:), v12);
    sub_100068374(&qword_100CB12A0, &type metadata accessor for PrivateUserData);
    AccessTracker.push<A>(data:traits:file:line:)();

    return (*(v6 + 8))(v8, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000EDE98(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE50);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for LocationViewerInputFactory();
  v16 = &off_100C46508;
  v14[0] = v7;
  sub_100035B30(v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100104BD8;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v10 = *sub_1000161C0(v17, v18);
    v15 = type metadata accessor for LocationViewerViewModelFactory();
    v16 = &off_100C63E50;
    v14[0] = v10;
    sub_100035B30(v14, v13);
    v11 = swift_allocObject();
    sub_100013188(v13, v11 + 16);

    sub_100006F14(v14);
    sub_100006F14(v17);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100107F08;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4C18);
    swift_allocObject();
    return sub_1000EE59C(v3, v6, v5, v4, sub_1001717D8, 0, sub_100104B58, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000EE16C()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000EE1A4()
{

  return swift_deallocObject();
}

uint64_t sub_1000EE1EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocationViewerInputFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C46508;
  *a1 = result;
  return result;
}

uint64_t sub_1000EE258@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v6)
  {
    v4 = type metadata accessor for LocationViewerViewModelFactory();
    swift_allocObject();
    result = sub_1000EE448(&v5);
    a2[3] = v4;
    a2[4] = &off_100C63E50;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LocationViewerViewModelFactory()
{
  result = qword_100CCD7A8;
  if (!qword_100CCD7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EE34C()
{
  sub_1000EE3F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EE3F0()
{
  if (!qword_100CCD7B8)
  {
    type metadata accessor for LocationViewerViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CCD7B8);
    }
  }
}

uint64_t sub_1000EE448(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_lastViewModel;
  v4 = type metadata accessor for LocationViewerViewModel();
  sub_10001B350(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory____lazy_storage___conditionBackgroundOverridden) = 2;
  sub_10003E2A0(a1, v1 + OBJC_IVAR____TtC7Weather30LocationViewerViewModelFactory_appConfigurationManager);
  return v1;
}

uint64_t sub_1000EE4D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocationModel();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = type metadata accessor for ConditionPickerMenuViewModel(0);
    v10 = a1 + *(a4 + 24);
  }

  return sub_10001B350(v10, a2, a2, v9);
}

uint64_t sub_1000EE758(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v19;
  if (!v19)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v21;
  v4 = v22;
  v6 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CCBE58);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = *sub_1000161C0(v17, v18);
  v15 = type metadata accessor for WeatherConditionBackgroundModelInputFactory();
  v16 = &off_100C74B10;
  *&v14 = v7;
  sub_100035B30(&v14, v13);
  v8 = swift_allocObject();
  sub_100013188(v13, v8 + 16);

  sub_100006F14(&v14);
  sub_100006F14(v17);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100110E20;
  *(v9 + 24) = v8;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA738);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    sub_100035B30(v17, &v14);
    v10 = swift_allocObject();
    sub_100013188(&v14, v10 + 16);
    sub_100006F14(v17);
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001140B4;
    *(v11 + 24) = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1001141C0;
    *(v12 + 24) = v11;
    sub_10022C350(&qword_100CA4BD8);
    swift_allocObject();
    return sub_1000EEA3C(v3, v6, v5, v4, sub_1001717D8, 0, sub_100104B5C, v9, sub_1000E87D0, v12);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000EEC2C()
{
  if (qword_100CA2940 != -1)
  {
    swift_once();
  }
}

void *sub_1000EEC88()
{
  type metadata accessor for WireframeLevelInterestManager();
  v0 = swift_allocObject();
  result = sub_1000EECC4();
  qword_100D911B0 = v0;
  return result;
}

void *sub_1000EECC4()
{
  v1 = type metadata accessor for WireframeInterestManager();
  swift_allocObject();
  v2 = sub_1000EED8C(0xD000000000000013, 0x8000000100AE1E60);
  v0[5] = v1;
  v0[6] = &off_100C77408;
  v0[2] = v2;
  type metadata accessor for WireframeContentInterestManager();
  v3 = swift_allocObject();

  v0[7] = sub_1000EEDF4(v4, v3);
  return v0;
}

void *sub_1000EED8C(uint64_t a1, uint64_t a2)
{
  v2[4] = dispatch_group_create();
  v2[5] = &_swiftEmptyDictionarySingleton;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_1000EEDF4(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for WireframeInterestManager();
  v7 = &off_100C77408;
  *&v5 = a1;
  swift_allocObject();
  *(a2 + 56) = sub_1000EED8C(0x746E65746E6F43, 0xE700000000000000);
  sub_100013188(&v5, a2 + 16);
  return a2;
}

void *sub_1000EEEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v35 = a6;
  v46 = a9;
  v47 = a12;
  v20 = sub_100042FB0(v45);
  (*(*(a9 - 8) + 32))(v20, a1, a9);
  v43 = a10;
  v44 = a13;
  v21 = sub_100042FB0(v42);
  (*(*(a10 - 8) + 32))(v21, a7, a10);
  v22 = swift_allocObject();
  v23 = sub_10002D7F8(v45, v46);
  v24 = __chkstk_darwin(v23);
  v26 = (&v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  sub_10002D7F8(v42, v43);
  v28 = *v26;
  v29 = type metadata accessor for LocationViewerInteractor();
  v41 = &off_100C60970;
  v40 = v29;
  v38 = &off_100C78818;
  *&v39 = v28;
  v37 = &type metadata for ContentStatusBannerViewFactory;
  if (qword_100CA26B0 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90A78);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Initializing LocationViewer module", v33, 2u);
  }

  sub_100013188(&v39, (v22 + 2));
  v22[7] = a2;
  v22[8] = a3;
  v22[9] = a4;
  v22[10] = a14;
  sub_100013188(a5, (v22 + 11));
  v22[16] = v35;
  sub_100013188(&v36, (v22 + 17));
  sub_100006F14(v42);
  sub_100006F14(v45);
  return v22;
}

uint64_t sub_1000EF180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 56);
  sub_100035B30(v2 + 16, a2 + 16);
  v6 = *(v2 + 64);
  v10 = *(v2 + 72);
  sub_100035B30(v2 + 88, a2 + 80);
  v7 = *(v2 + 128);
  sub_100035B30(v2 + 136, a2 + 120);
  KeyPath = swift_getKeyPath();
  *(a2 + 176) = 0;
  *(a2 + 56) = a1;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 64) = v10;
  *(a2 + 160) = v7;
  *(a2 + 168) = KeyPath;

  swift_unknownObjectRetain();
}

uint64_t sub_1000EF2B0()
{
  type metadata accessor for Locale.Language();
  sub_1000037C4();
  v44 = v1;
  v45 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = type metadata accessor for Locale();
  sub_1000037C4();
  v43 = v6;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CA3DD8);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_10009EB78();
  EnvironmentValues.subscript.getter();
  if (v47 != 1)
  {
    goto LABEL_54;
  }

  EnvironmentValues.sizeCategory.getter();
  (*(v16 + 32))(v19, v22, v14);
  v23 = (*(v16 + 88))(v19, v14);
  if (v23 != enum case for ContentSizeCategory.extraSmall(_:) && v23 != enum case for ContentSizeCategory.small(_:) && v23 != enum case for ContentSizeCategory.medium(_:) && v23 != enum case for ContentSizeCategory.large(_:) && v23 != enum case for ContentSizeCategory.extraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v23 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v23 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v23 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v23 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_54;
    }

    (*(v16 + 8))(v19, v14);
  }

  if (EnvironmentValues.accessibilityVoiceOverEnabled.getter())
  {
LABEL_54:
    v41 = 0;
    return v41 & 1;
  }

  static Locale.current.getter();
  Locale.language.getter();
  (*(v43 + 8))(v10, v5);
  Locale.Language.languageCode.getter();
  (*(v44 + 8))(v4, v45);
  v34 = type metadata accessor for Locale.LanguageCode();
  if (sub_100024D10(v13, 1, v34) == 1)
  {
    sub_100283C38(v13, &qword_100CA3DD8);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v35 = Locale.LanguageCode.identifier.getter();
    v36 = v37;
    (*(*(v34 - 8) + 8))(v13, v34);
  }

  sub_100283BE4();
  EnvironmentValues.subscript.getter();
  if (v46 != 1)
  {

    goto LABEL_52;
  }

  if (!v36)
  {
LABEL_52:
    v41 = 1;
    return v41 & 1;
  }

  v38 = v35 == 29281 && v36 == 0xE200000000000000;
  if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v35 == 26984 ? (v39 = v36 == 0xE200000000000000) : (v39 = 0), v39))
  {

    goto LABEL_54;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v41 = v40 ^ 1;
  return v41 & 1;
}

uint64_t sub_1000EF78C()
{
  sub_10000FE4C();
  v0 = sub_1000EF2B0();
  return sub_100005F94(v0);
}

unint64_t sub_1000EF7D4()
{
  result = qword_100CA6098;
  if (!qword_100CA6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6098);
  }

  return result;
}

void *sub_1000EF828@<X0>(void *a1@<X8>)
{
  if (qword_100CA1EA0 != -1)
  {
    swift_once();
  }

  return memcpy(a1, &qword_100D8F3D0, 0x48uLL);
}

double sub_1000EF898()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56) + *(v0 + 56);
  v3 = *(v0 + 8);
  if (*(v0 + 32))
  {
    sub_1000FDB68();
    sub_10001D07C();
    sub_1000FDE84();
    sub_10001A0E0();
    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = v4;
    }
  }

  v7 = sub_100004D34();
  return v1 * v7 + v2 + v3 * v8;
}

double sub_1000EF934()
{
  if (qword_100CA2C38 != -1)
  {
    swift_once();
  }

  result = *&qword_100D91578;
  qword_100D8F3D0 = 0;
  *algn_100D8F3D8 = 0x4062000000000000;
  qword_100D8F3E0 = 0;
  unk_100D8F3E8 = 0;
  byte_100D8F3F0 = 0;
  qword_100D8F3F8 = 0x4030000000000000;
  word_100D8F400 = 768;
  qword_100D8F408 = qword_100D91578;
  qword_100D8F410 = 0x4069000000000000;
  return result;
}

uint64_t sub_1000EF9CC()
{
  Solarium.init()();
  sub_10022C350(&qword_100CC9A10);
  sub_1005F6F6C(&unk_100CC9A18);
  sub_1000E9BB0();
  return StaticIf<>.init(_:then:else:)();
}

uint64_t sub_1000EFB18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_10042F370((a1 + 2), a2 + 16);
  v5 = a1[7];
  v6 = a1[1];
  v10 = *(a1 + 4);
  sub_10042F370((a1 + 10), a2 + 80);
  v7 = a1[20];
  sub_10042F370((a1 + 15), a2 + 120);
  KeyPath = swift_getKeyPath();
  *(a2 + 176) = 0;
  *(a2 + 56) = v5;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 64) = v10;
  *(a2 + 160) = v7;
  *(a2 + 168) = KeyPath;

  swift_unknownObjectRetain();
}

uint64_t sub_1000EFC08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000EFC5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 72))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1000EFCBC()
{
  result = qword_100CDA2C0;
  if (!qword_100CDA2C0)
  {
    sub_10022E824(&qword_100CDA2B8);
    sub_100006F64(&qword_100CDA2C8, &qword_100CDA2B0);
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA2C0);
  }

  return result;
}

uint64_t sub_1000EFDBC()
{
  sub_10022E824(&qword_100CCAA48);
  type metadata accessor for PageControlDisplayState(255);
  sub_10022E824(&qword_100CCAA50);
  sub_1000439FC(&unk_100CCAA58);
  sub_100017540();
  sub_1000EA178(&unk_100CCA1B8);
  return sub_100017540();
}

uint64_t sub_1000EFEEC()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000EFF20@<X0>(uint64_t a1@<X8>)
{
  sub_1000161C0((a1 + 216), *(a1 + 240));

  return Forecast.forecast.getter();
}

void sub_1000EFF5C()
{
  v1[16] = v0[582];
  v1[17] = v0[578];
  v1[18] = v0[576];
}

void sub_1000EFF94(uint64_t a1, uint64_t a2)
{
  *(v3 - 648) = a1;
  *(v3 - 656) = a2;
}

uint64_t sub_1000F0014()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000F0060()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000F0098()
{

  return swift_getEnumCaseMultiPayload();
}

void sub_1000F00FC()
{
  sub_1000E9E3C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100081B54(319, &qword_100CA5088);
    if (v1 <= 0x3F)
    {
      sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1000E9E3C(319, &unk_100CC9FC8, type metadata accessor for ContentStatusBanner, &type metadata accessor for State);
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

void sub_1000F0324()
{
  type metadata accessor for LocationModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContentStatusBannerPresentationMetrics(319);
    if (v1 <= 0x3F)
    {
      sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1000E9E3C(319, &unk_100CCA508, type metadata accessor for PageControlDisplayState, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F048C()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000F0568()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedTypeWitness();
    v0 = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      v0 = type metadata accessor for WireframeLevelInterestManager();
      if (v3 <= 0x3F)
      {
        v0 = sub_10013DB50();
        if (v4 <= 0x3F)
        {
          sub_10009BFD0(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
          v0 = v5;
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t type metadata accessor for Page()
{
  return swift_getGenericMetadata();
}

{
  return type metadata accessor for Page();
}

uint64_t sub_1000F06E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppStateTransitionModifier()
{
  result = qword_100CE2250;
  if (!qword_100CE2250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F07F0()
{
  sub_1000E9E3C(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1005F06A4(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000E9E3C(319, &unk_100CCA508, type metadata accessor for PageControlDisplayState, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for ConditionPickerMenuView()
{
  result = qword_100CB4220;
  if (!qword_100CB4220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F09AC()
{
  if (!qword_100CB4230)
  {
    sub_10022E824(&qword_100CA2CD8);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB4230);
    }
  }
}

void sub_1000F0A10()
{
  type metadata accessor for ConditionPickerMenuViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1000F09AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F0B04()
{
  sub_100081B54(319, &qword_100CC99B8);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Location.Identifier();
    if (v1 <= 0x3F)
    {
      sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1005F63C8(319, &qword_100CB24B8, &type metadata for WeatherMapPresentationStyle, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
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

void sub_1000F0CC0()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_1000E9E3C(319, &qword_100CCA670, type metadata accessor for ContentStatusBannerPresentationMetrics, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1000E9E3C(319, &qword_100CA3C78, type metadata accessor for DisplayMetrics, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1005F63C8(319, &qword_100CB7100, &unk_100C730C0, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1005F63C8(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_1000E9E3C(319, &qword_100CA3C68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
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

void sub_1000F0F08()
{
  sub_1000F0FF4(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1000F0FF4(319, &unk_100CC9090, &type metadata accessor for Location.Identifier, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F0FF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1000F1070()
{
  sub_1000612C8();
  if (v0 <= 0x3F)
  {
    sub_1000F1120();
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

unint64_t sub_1000F1120()
{
  result = qword_100CC99B8;
  if (!qword_100CC99B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CC99B8);
  }

  return result;
}

uint64_t sub_1000F1200()
{
  sub_10022E824(&qword_100CC9A40);
  sub_10022E824(&qword_100CC9AF0);
  sub_10022E824(&qword_100CC9A38);
  sub_1005F0A1C();
  sub_100017540();
  sub_1005F0C74();
  return sub_100017540();
}

unint64_t sub_1000F12C8()
{
  result = qword_100CC9AE0;
  if (!qword_100CC9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AE0);
  }

  return result;
}

unint64_t sub_1000F131C()
{
  result = qword_100CC9AE8;
  if (!qword_100CC9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC9AE8);
  }

  return result;
}

unint64_t sub_1000F1390()
{
  result = qword_100CCA7E0;
  if (!qword_100CCA7E0)
  {
    sub_10022E824(&qword_100CCA098);
    sub_1005F6F6C(&unk_100CCA7E8);
    sub_1005F6F6C(&unk_100CB07C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA7E0);
  }

  return result;
}

unint64_t sub_1000F1494()
{
  result = qword_100CCA7D0;
  if (!qword_100CCA7D0)
  {
    sub_10022E824(&qword_100CCA088);
    sub_1005F6F6C(&unk_100CCA7D8);
    sub_1005F6F6C(&unk_100CACCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA7D0);
  }

  return result;
}

unint64_t sub_1000F15A8()
{
  result = qword_100CCA7B8;
  if (!qword_100CCA7B8)
  {
    sub_10022E824(&qword_100CCA078);
    sub_1005F6F6C(&unk_100CCA7C0);
    sub_1000F1660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA7B8);
  }

  return result;
}

unint64_t sub_1000F1660()
{
  result = qword_100CCA7C8;
  if (!qword_100CCA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCA7C8);
  }

  return result;
}

unint64_t sub_1000F16D4()
{
  result = qword_100CB3658;
  if (!qword_100CB3658)
  {
    sub_10022E824(&qword_100CB3518);
    sub_100006F64(&qword_100CB3660, &qword_100CB3510);
    sub_100006F64(&qword_100CB3668, &qword_100CB3670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3658);
  }

  return result;
}

uint64_t sub_1000F17FC()
{
  type metadata accessor for LocationViewerToolbarModifier();
  sub_10001CB48();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for _ViewModifier_Content();
  sub_100019D9C();
  sub_10000E9D0();
  type metadata accessor for TupleView();
  sub_1000065AC();
  swift_getWitnessTable();
  sub_10000381C();
  type metadata accessor for ToolbarItemGroup();
  sub_100008D0C();
  swift_getOpaqueTypeMetadata2();
  sub_10000E9D0();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  sub_10001091C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10001CB30();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t type metadata accessor for ContentStatusBannerView()
{
  result = qword_100CD5808;
  if (!qword_100CD5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F19D0()
{
  sub_1000612C8();
  if (v0 <= 0x3F)
  {
    sub_1000F1A64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F1A64()
{
  if (!qword_100CD5818)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CD5818);
    }
  }
}

void sub_1000F1AE4()
{
  sub_1005F63C8(319, &qword_100CA3C80, &type metadata for EdgeInsets, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000E9E3C(319, &qword_100CADCC8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1000E9E3C(319, &unk_100CCA780, type metadata accessor for ContentStatusBannerPresentationMetrics, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000F1C44()
{
  result = qword_100CCABD8;
  if (!qword_100CCABD8)
  {
    sub_10022E824(&qword_100CCABB0);
    sub_1005F6F6C(&unk_100CCABE0);
    sub_1005F6F6C(&unk_100CCABE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CCABD8);
  }

  return result;
}

uint64_t sub_1000F1D64()
{
  sub_10022E824(&qword_100CD5858);
  sub_10022E824(&qword_100CA6028);
  sub_1000F1DF4();
  sub_1000F1EAC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000F1DF4()
{
  result = qword_100CD5868;
  if (!qword_100CD5868)
  {
    sub_10022E824(&qword_100CD5858);
    sub_100006F64(&qword_100CD5870, &qword_100CD5850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD5868);
  }

  return result;
}

unint64_t sub_1000F1EAC()
{
  result = qword_100CA6080;
  if (!qword_100CA6080)
  {
    sub_10022E824(&qword_100CA6028);
    sub_1000F1F60(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6080);
  }

  return result;
}

uint64_t sub_1000F1F60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F1FA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F2010@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  v6 = sub_10000703C(v5, a2);
  return sub_1005F1770(v6, a3);
}

uint64_t sub_1000F20A0()
{
  v0 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100007074(v0, qword_100CC9748);
  v1 = sub_10000703C(v0, qword_100CC9748);
  if (qword_100CA2310 != -1)
  {
    swift_once();
  }

  v2 = sub_10000703C(v0, qword_100CC9730);
  return sub_1005F1770(v2, v1);
}

uint64_t sub_1000F2144(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ContentStatusBannerPresentationMetrics(0);
  sub_100007074(v3, a2);
  v4 = sub_10000703C(v3, a2);
  v5 = *(v3 + 20);
  v6 = type metadata accessor for ContentStatusBanner();
  result = sub_10001B350(v4 + v5, 1, 1, v6);
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1000F21CC()
{
  sub_100003A00();
  sub_10022C350(&qword_100CA5010);
  sub_1000178C4();

  return sub_10001B350(v0, v1, v2, v3);
}

uint64_t sub_1000F2228(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v177 = a3;
  v174 = a2;
  v189 = a1;
  v175 = sub_10022C350(&qword_100CE29D0);
  __chkstk_darwin(v175);
  v176 = (&v91 - v3);
  v4 = type metadata accessor for FetchedForecast();
  __chkstk_darwin(v4);
  v173 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CE29D8);
  __chkstk_darwin(v6);
  v8 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v91 - v10;
  __chkstk_darwin(v12);
  v171 = &v91 - v13;
  __chkstk_darwin(v14);
  v172 = &v91 - v15;
  __chkstk_darwin(v16);
  v183 = &v91 - v17;
  __chkstk_darwin(v18);
  v184 = &v91 - v19;
  __chkstk_darwin(v20);
  v185 = &v91 - v21;
  __chkstk_darwin(v22);
  v186 = &v91 - v23;
  __chkstk_darwin(v24);
  v187 = &v91 - v25;
  __chkstk_darwin(v26);
  v28 = &v91 - v27;
  __chkstk_darwin(v29);
  v31 = &v91 - v30;
  v32 = sub_10022C350(&qword_100CE29E0);
  __chkstk_darwin(v32);
  v34 = (&v91 - v33);
  sub_1000302D8(v189, &v91 - v33, &qword_100CE29E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = v176;
    *v176 = *v34;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v174(v35);

    v36 = &qword_100CE29D0;
    v37 = v35;
  }

  else
  {
    sub_10011C0F0(v34, v31, &qword_100CE29D8);
    v167 = v28;
    sub_1000302D8(v31, v28, &qword_100CE29D8);
    v165 = v6[12];
    v164 = v6[16];
    v163 = v6[20];
    v162 = v6[24];
    v161 = v6[28];

    v160 = v6[36];
    v159 = v6[40];
    v158 = v6[44];
    sub_1000302D8(v31, v187, &qword_100CE29D8);
    v188 = v6[12];
    v157 = v6[16];
    v156 = v6[20];
    v155 = v6[24];
    v154 = v6[28];

    v153 = v6[36];
    v152 = v6[40];
    v151 = v6[44];
    sub_1000302D8(v31, v186, &qword_100CE29D8);
    v150 = v6[12];
    v189 = v6[16];
    v148 = v6[20];
    v147 = v6[24];
    v146 = v6[28];

    v145 = v6[36];
    v144 = v6[40];
    v143 = v6[44];
    sub_1000302D8(v31, v185, &qword_100CE29D8);
    v142 = v6[12];
    v141 = v6[16];
    v180 = v6[20];
    v140 = v6[24];
    v139 = v6[28];

    v138 = v6[36];
    v137 = v6[40];
    v136 = v6[44];
    sub_1000302D8(v31, v184, &qword_100CE29D8);
    v135 = v6[12];
    v134 = v6[16];
    v133 = v6[20];
    v178 = v6[24];
    v132 = v6[28];

    v131 = v6[36];
    v130 = v6[40];
    v129 = v6[44];
    sub_1000302D8(v31, v183, &qword_100CE29D8);
    v128 = v6[12];
    v127 = v6[16];
    v126 = v6[20];
    v125 = v6[24];
    v170 = v6[28];

    v124 = v6[36];
    v123 = v6[40];
    v122 = v6[44];
    v38 = v172;
    sub_1000302D8(v31, v172, &qword_100CE29D8);
    v121 = v6[12];
    v120 = v6[16];
    v119 = v6[20];
    v118 = v6[24];
    v117 = v6[28];
    v166 = *(v38 + v6[32]);
    v116 = v6[36];
    v115 = v6[40];
    v114 = v6[44];
    v39 = v171;
    sub_1000302D8(v31, v171, &qword_100CE29D8);
    v113 = v6[12];
    v112 = v6[16];
    v111 = v6[20];
    v110 = v6[24];
    v109 = v6[28];

    v96 = v6[36];
    v108 = v6[40];
    v107 = v6[44];
    v149 = v31;
    v40 = v11;
    sub_1000302D8(v31, v11, &qword_100CE29D8);
    v106 = v6[12];
    v105 = v6[16];
    v104 = v6[20];
    v103 = v6[24];
    v102 = v6[28];

    v101 = v6[36];
    v94 = v6[40];
    v100 = v6[44];
    sub_1000302D8(v31, v8, &qword_100CE29D8);
    v99 = v6[12];
    v98 = v6[16];
    v169 = v6[20];
    v168 = v6[24];
    v97 = v6[28];

    v95 = v6[36];
    v93 = v6[40];
    v92 = v6[44];
    v41 = type metadata accessor for CurrentWeather();
    v42 = *(v41 - 8);
    v181 = v41;
    v182 = v42;
    v43 = v173;
    (*(v42 + 32))();
    v44 = v43;
    sub_10011C0F0(v187 + v188, v43 + v4[5], &qword_100CB0BA0);
    v45 = v4[6];
    v179 = sub_10022C350(&qword_100CA7030);
    v188 = *(v179 - 8);
    (*(v188 + 32))(v44 + v45, v186 + v189, v179);
    v46 = v4[7];
    v189 = sub_10022C350(&qword_100CA7000);
    v47 = *(v189 - 8);
    (*(v47 + 32))(v44 + v46, v180 + v185, v189);
    sub_10011C0F0(v184 + v178, v44 + v4[8], &qword_100CC62B8);
    sub_10011C0F0(v170 + v183, v44 + v4[9], &qword_100CACDF8);
    *(v44 + v4[10]) = v166;
    v48 = v8;
    v49 = v44;
    v50 = v4[11];
    v51 = type metadata accessor for WeatherAvailability();
    v52 = *(v51 - 8);
    (*(v52 + 32))(v49 + v50, v39 + v96, v51);
    sub_10011C0F0(&v40[v94], v49 + v4[12], &qword_100CE29C8);
    sub_10011C0F0(&v48[v92], v49 + v4[13], &qword_100CABD10);
    sub_100018144(&v48[v93], &qword_100CE29C8);
    v53 = *(v52 + 8);
    v166 = v51;
    v53(&v48[v95], v51);
    v178 = v52 + 8;
    v170 = v53;
    sub_100018144(&v48[v97], &qword_100CACDF8);
    sub_100018144(&v48[v168], &qword_100CC62B8);
    v54 = *(v47 + 8);
    v168 = v47 + 8;
    v180 = v54;
    v54(&v169[v48], v189);
    v55 = *(v188 + 8);
    v188 += 8;
    v169 = v55;
    v56 = v179;
    (v55)(&v48[v98], v179);
    v57 = v40;
    sub_100018144(&v48[v99], &qword_100CB0BA0);
    v58 = v181;
    v60 = v182 + 8;
    v59 = *(v182 + 8);
    v59(v48, v181);
    sub_100018144(&v57[v100], &qword_100CABD10);
    v53(&v57[v101], v51);
    sub_100018144(&v57[v102], &qword_100CACDF8);
    sub_100018144(&v57[v103], &qword_100CC62B8);
    v61 = v189;
    v62 = v180;
    v180(&v57[v104], v189);
    v63 = v56;
    v64 = v169;
    (v169)(&v57[v105], v63);
    sub_100018144(&v57[v106], &qword_100CB0BA0);
    v182 = v60;
    v59(v57, v58);
    v65 = v171;
    sub_100018144(v171 + v107, &qword_100CABD10);
    sub_100018144(v65 + v108, &qword_100CE29C8);
    sub_100018144(v65 + v109, &qword_100CACDF8);
    sub_100018144(v65 + v110, &qword_100CC62B8);
    v62(v65 + v111, v61);
    v66 = v179;
    v64(v65 + v112, v179);
    sub_100018144(v65 + v113, &qword_100CB0BA0);
    v59(v65, v58);
    v67 = v172;
    sub_100018144(v172 + v114, &qword_100CABD10);
    sub_100018144(v67 + v115, &qword_100CE29C8);
    v68 = v166;
    v69 = v170;
    v170(v67 + v116, v166);
    sub_100018144(v67 + v117, &qword_100CACDF8);
    sub_100018144(v67 + v118, &qword_100CC62B8);
    v70 = v189;
    v71 = v180;
    v180(v67 + v119, v189);
    v64(v67 + v120, v66);
    sub_100018144(v67 + v121, &qword_100CB0BA0);
    v72 = v181;
    v59(v67, v181);
    v73 = v183;
    sub_100018144(v183 + v122, &qword_100CABD10);
    sub_100018144(v73 + v123, &qword_100CE29C8);
    v69(v73 + v124, v68);
    sub_100018144(v73 + v125, &qword_100CC62B8);
    v71(v73 + v126, v70);
    v74 = v179;
    v75 = v169;
    (v169)(v73 + v127, v179);
    sub_100018144(v73 + v128, &qword_100CB0BA0);
    v59(v73, v72);
    v76 = v184;
    sub_100018144(v184 + v129, &qword_100CABD10);
    sub_100018144(v76 + v130, &qword_100CE29C8);
    v77 = v166;
    v170(v76 + v131, v166);
    sub_100018144(v76 + v132, &qword_100CACDF8);
    v180(v76 + v133, v189);
    v75(v76 + v134, v74);
    sub_100018144(v76 + v135, &qword_100CB0BA0);
    v78 = v181;
    v59(v76, v181);
    v79 = v59;
    v80 = v185;
    sub_100018144(v185 + v136, &qword_100CABD10);
    sub_100018144(v80 + v137, &qword_100CE29C8);
    v81 = v170;
    v170(v80 + v138, v77);
    sub_100018144(v80 + v139, &qword_100CACDF8);
    sub_100018144(v80 + v140, &qword_100CC62B8);
    v75(v80 + v141, v74);
    sub_100018144(v80 + v142, &qword_100CB0BA0);
    v59(v80, v78);
    v82 = v186;
    sub_100018144(v186 + v143, &qword_100CABD10);
    sub_100018144(v82 + v144, &qword_100CE29C8);
    v81(v82 + v145, v77);
    sub_100018144(v82 + v146, &qword_100CACDF8);
    sub_100018144(v82 + v147, &qword_100CC62B8);
    v83 = v189;
    v84 = v180;
    v180(v82 + v148, v189);
    sub_100018144(v82 + v150, &qword_100CB0BA0);
    v79(v82, v78);
    v85 = v187;
    sub_100018144(v187 + v151, &qword_100CABD10);
    sub_100018144(v85 + v152, &qword_100CE29C8);
    v81(v85 + v153, v77);
    sub_100018144(v85 + v154, &qword_100CACDF8);
    sub_100018144(v85 + v155, &qword_100CC62B8);
    v84(v85 + v156, v83);
    v86 = v179;
    v87 = v169;
    (v169)(v85 + v157, v179);
    v79(v85, v181);
    v88 = v167;
    sub_100018144(&v167[v158], &qword_100CABD10);
    sub_100018144(&v88[v159], &qword_100CE29C8);
    v81(&v88[v160], v77);
    sub_100018144(&v88[v161], &qword_100CACDF8);
    sub_100018144(&v88[v162], &qword_100CC62B8);
    v84(&v88[v163], v83);
    v87(&v88[v164], v86);
    sub_100018144(&v88[v165], &qword_100CB0BA0);
    v89 = v176;
    sub_1000863F8(v173, v176);
    swift_storeEnumTagMultiPayload();
    v174(v89);
    sub_100018144(v89, &qword_100CE29D0);
    sub_100087544();
    v37 = v149;
    v36 = &qword_100CE29D8;
  }

  return sub_100018144(v37, v36);
}

uint64_t sub_1000F38A4()
{
  sub_100003A00();
  v3 = *(v2 + 20);
  v4 = sub_10022C350(&qword_100CA5010);

  return sub_100024D10(v1 + v3, v0, v4);
}

uint64_t type metadata accessor for FetchedForecast()
{
  result = qword_100CE2A88;
  if (!qword_100CE2A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F3958()
{
  type metadata accessor for CurrentWeather();
  if (v0 <= 0x3F)
  {
    sub_1000F3D3C(319, &qword_100CB0C38, &qword_100CAE8F0);
    if (v1 <= 0x3F)
    {
      sub_1000F432C();
      if (v2 <= 0x3F)
      {
        sub_1000F4460();
        if (v3 <= 0x3F)
        {
          sub_1000F4694(319, &qword_100CE2A98, &type metadata accessor for AirQuality);
          if (v4 <= 0x3F)
          {
            sub_1000F4694(319, &qword_100CB0C70, &type metadata accessor for WeatherChanges);
            if (v5 <= 0x3F)
            {
              sub_1000F3D3C(319, &qword_100CE2AA0, &qword_100CB4738);
              if (v6 <= 0x3F)
              {
                type metadata accessor for WeatherAvailability();
                if (v7 <= 0x3F)
                {
                  sub_1000F4694(319, &unk_100CE2AA8, &type metadata accessor for News);
                  if (v8 <= 0x3F)
                  {
                    sub_1000F4694(319, &qword_100CE1CA0, &type metadata accessor for HistoricalComparisons);
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

uint64_t sub_1000F3B3C()
{
  v1 = sub_10022C350(&qword_100CCA048);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v2);
  v4 = &v16[-v3 - 8];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  sub_1000F3D90(v0, &v4[*(v1 + 36)]);
  sub_10042F370(v0 + 16, v16);
  v5 = sub_10002D7F8(v16, v17);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;

  sub_1000F4564(v11, v10);
  sub_100006F14(v16);
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000116D0();
  sub_1005F6F6C(v12);
  sub_100024284();
  sub_1000EA178(v13);
  View.environment<A>(_:)();

  return sub_100018198(v4, &qword_100CCA048);
}

void sub_1000F3D3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10022E824(a3);
    sub_1000201F8();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000F3D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10042F370(a1 + 16, v28);
  v24 = *(a1 + 56);
  v4 = *(a1 + 8);
  v25 = *(a1 + 64);
  sub_10042F370(a1 + 80, v27);
  v5 = *(a1 + 160);
  sub_10042F370(a1 + 120, v26);
  *a2 = 0;
  type metadata accessor for LocationViewerBindingWrapper(0);
  sub_1000EA178(&unk_100CC9B58);
  *(a2 + 8) = Environment.init<A>(_:)();
  *(a2 + 16) = v6 & 1;
  v7 = type metadata accessor for MeasuredLocationViewerView(0);
  v8 = v7[6];
  *(a2 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[14];
  sub_10000C70C(0, &qword_100CA2E40);
  *(a2 + v9) = OS_os_log.init(subsystem:category:)();
  v10 = (a2 + v7[7]);

  sub_10022C350(&qword_100CA4C18);
  sub_1005F6F6C(&qword_100CA4C20);
  *v10 = ObservedObject.init(wrappedValue:)();
  v10[1] = v11;
  sub_10042F370(v28, a2 + v7[9]);
  *(a2 + v7[10]) = v24;
  *(a2 + v7[8]) = v4;
  *(a2 + v7[11]) = v25;
  sub_10042F370(v27, a2 + v7[12]);
  *(a2 + v7[15]) = v5;
  sub_10042F370(v26, a2 + v7[13]);
  sub_10000C70C(0, &qword_100CCA058);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  swift_unknownObjectRetain();

  v13 = [ObjCClassFromMetadata appearance];
  v14 = [objc_opt_self() whiteColor];
  [v13 setTintColor:v14];

  sub_100006F14(v26);
  sub_100006F14(v27);
  sub_100006F14(v28);
  v15 = a2 + *(sub_10022C350(&qword_100CCA060) + 36);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = type metadata accessor for PageControlDisplayStateModifier(0);
  v17 = *(v16 + 20);
  *(v15 + v17) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v18 = (v15 + *(v16 + 24));
  type metadata accessor for PageControlDisplayState(0);
  swift_allocObject();
  v27[0] = sub_1000F4430();
  State.init(wrappedValue:)();
  v19 = v28[1];
  *v18 = v28[0];
  v18[1] = v19;
  v20 = a2 + *(sub_10022C350(&qword_100CCA068) + 36);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28[0]) = 0;
  *v20 = KeyPath;
  *(v20 + 72) = 0;
  v22 = *(type metadata accessor for DetermineWhetherLocationContentWantsGridViewModifier(0) + 20);
  *(v20 + v22) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000F41B8()
{
  sub_10000FE4C();
  v0 = sub_100103418();
  return sub_100005F94(v0);
}

uint64_t sub_1000F420C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F4254(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F429C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F42E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F432C()
{
  if (!qword_100CB0C18)
  {
    type metadata accessor for HourWeather();
    sub_1000F420C(&qword_100CB0C20, &type metadata accessor for HourWeather);
    sub_1000F420C(&qword_100CB0C28, &type metadata accessor for HourWeather);
    sub_1000F420C(&qword_100CB0C30, &type metadata accessor for HourWeather);
    v0 = type metadata accessor for Forecast();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0C18);
    }
  }
}

uint64_t sub_1000F4430()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  ObservationRegistrar.init()();
  return v0;
}

void sub_1000F4460()
{
  if (!qword_100CB0C48)
  {
    type metadata accessor for DayWeather();
    sub_1000F420C(&qword_100CB0C50, &type metadata accessor for DayWeather);
    sub_1000F420C(&qword_100CB0C58, &type metadata accessor for DayWeather);
    sub_1000F420C(&qword_100CB0C60, &type metadata accessor for DayWeather);
    v0 = type metadata accessor for Forecast();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB0C48);
    }
  }
}

uint64_t sub_1000F4564(uint64_t a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C60970;
  v12[0] = a2;
  type metadata accessor for LocationViewerBindingWrapper(0);
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_1000F46E4(a1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

void sub_1000F4694(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000201F8();
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000F46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = type metadata accessor for LocationViewerInteractor();
  v11 = &off_100C60970;
  *&v9 = a2;
  sub_10000C70C(0, &qword_100CA2E40);
  *(a3 + 64) = OS_os_log.init(subsystem:category:)();
  v6 = OBJC_IVAR____TtC7WeatherP33_971182080BE1A8931C9C36EF48C83CFF28LocationViewerBindingWrapper____lazy_storage___bindableActiveLocationID;
  v7 = sub_10022C350(&qword_100CC9118);
  sub_10001B350(a3 + v6, 1, 1, v7);
  ObservationRegistrar.init()();
  *(a3 + 16) = a1;
  sub_100013188(&v9, a3 + 24);
  return a3;
}

uint64_t sub_1000F47E0()
{
  sub_10000FE4C();
  v0 = sub_1000F6148();
  return sub_100005F94(v0);
}

uint64_t sub_1000F4A58(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, uint64_t), void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v174 = a8;
  v179 = a7;
  v178 = a6;
  v171 = a1;
  v19 = sub_10022C350(&qword_100CE29E8);
  __chkstk_darwin(v19 - 8);
  v167 = v137 - v20;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  v165 = *(Fetched - 8);
  __chkstk_darwin(Fetched);
  v164 = v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v22 - 8);
  v163 = v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v175 = v137 - v25;
  v149 = type metadata accessor for WeatherServiceCacheFitnessPolicy();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for WeatherDataLocationPredicate();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = (v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = type metadata accessor for WeatherDataAgePredicate();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v141 = (v137 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  Policy = type metadata accessor for WeatherServiceCacheReadPolicy();
  v142 = *(Policy - 8);
  __chkstk_darwin(Policy);
  v140 = v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for WeatherServiceCaching.Options();
  v30 = *(v161 - 8);
  __chkstk_darwin(v161);
  v160 = v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for FetchedForecast();
  __chkstk_darwin(v162);
  v152 = v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v159 = v137 - v34;
  *&v169 = sub_10022C350(&qword_100CE29D0);
  __chkstk_darwin(v169);
  v170 = (v137 - v35);
  v192 = type metadata accessor for OSSignpostID();
  v36 = *(v192 - 8);
  __chkstk_darwin(v192);
  v172 = v137 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v188 = (v137 - v39);
  v193 = type metadata accessor for Location();
  v190 = *(v193 - 8);
  __chkstk_darwin(v193);
  v151 = v137 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v177 = v137 - v42;
  v150 = v43;
  __chkstk_darwin(v44);
  v185 = v137 - v45;
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v189 = *(Options - 8);
  __chkstk_darwin(Options);
  v173 = v137 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v184 = v137 - v48;
  v49 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v186 = *(v49 - 8);
  v187 = v49;
  __chkstk_darwin(v49);
  v183 = v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10022C350(&qword_100CE29C8);
  __chkstk_darwin(v51 - 8);
  v182 = (v137 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v53);
  v55 = v137 - v54;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v58 = v137 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v191 = a4;
  sub_10005C1D4(v58);
  sub_100087544();
  sub_1000161C0(a5, a5[3]);
  v59 = Location.id.getter();
  sub_1000F6168(v59, v60);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
    return sub_1000FE9DC();
  }

  v137[2] = v30;
  v158 = a2;
  v153 = a15;
  v157 = a14;
  v156 = a13;
  v154 = a12;
  v155 = a11;
  v180 = a10;
  v62 = Strong;
  v181 = v36;
  v63 = *(v190 + 16);
  v64 = v55;
  v65 = v193;
  v63(v58, a3, v193);
  swift_storeEnumTagMultiPayload();
  v66 = v191;
  sub_10005C1D4(v58);
  sub_100087544();
  v168 = v62;
  v67 = v62;
  v68 = v171;
  sub_1000F6DB0(v67, v171, v66, a3, v64);
  v69 = *(v186 + 16);
  v137[1] = a9;
  v69(v183, a9, v187);
  v70 = *(v189 + 16);
  v70(v184, v180, Options);
  v176 = a3;
  v71 = v181;
  v137[0] = v63;
  v63(v185, a3, v65);
  v72 = v153;
  sub_10042F370(v154, &v196);
  v73 = *(v71 + 16);
  v73(v188, v72, v192);
  v74 = v182;
  sub_1000302D8(v64, v182, &qword_100CE29C8);
  v75 = v68;
  v76 = v170;
  sub_1000302D8(v75, v170, &qword_100CE29D0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v88 = v159;
    sub_100086450(v76, v159);
    v89 = sub_1000161C0(&v196, v197);
    v90 = v188;
    v91 = v185;
    v92 = v183;
    v93 = v184;
    sub_1000F7F88(v88, 0, v191, v178, v179, v174, v183, v184, v155, v185, v158, v168, *v89, v156, v157, v188, v74);

    sub_100087544();
    sub_100018144(v74, &qword_100CE29C8);
    (*(v71 + 8))(v90, v192);
    (*(v190 + 8))(v91, v193);
    (*(v189 + 8))(v93, Options);
    (*(v186 + 8))(v92, v187);
    sub_100018144(v64, &qword_100CE29C8);
    sub_100006F14(&v196);
    return sub_1000FE9DC();
  }

  v171 = v64;
  v170 = *v76;
  v77 = v137[0];
  (v137[0])(v177, v176, v193);
  v73(v172, v72, v192);
  v78 = v173;
  v70(v173, v180, Options);
  sub_10022C350(&qword_100CE29F0);
  v79 = swift_allocObject();
  v169 = xmmword_100A2C3F0;
  *(v79 + 16) = xmmword_100A2C3F0;
  static WeatherServiceCaching.Options.allowsExpiredData.getter();
  v195 = v79;
  sub_1000675AC(&qword_100CE2968, &type metadata accessor for WeatherServiceCaching.Options);
  sub_10022C350(&qword_100CE2970);
  sub_10006768C(&qword_100CE2978, &qword_100CE2970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  WeatherServiceFetchOptions.cachingOptions.setter();

  SettingProperty.wrappedValue.getter();

  v80 = v179;
  v81 = v190;
  if (v195 == 1)
  {
    Location.kind.getter();
    v82 = Location.Identifier.Kind.rawValue.getter();
    v84 = v83;
    if (v82 == Location.Identifier.Kind.rawValue.getter() && v84 == v85)
    {
    }

    else
    {
      v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v87 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    AppConfiguration.weatherDynamicCacheQueryTimeInterval.getter();
    v94 = v141;
    *v141 = v95;
    (*(v138 + 104))(v94, enum case for WeatherDataAgePredicate.maximumAge(_:), v139);
    AppConfiguration.weatherDynamicCacheQueryDistance.getter();
    v96 = v145;
    *v145 = v97;
    (*(v144 + 104))(v96, enum case for WeatherDataLocationPredicate.withinDistance(_:), v146);
    (*(v148 + 104))(v147, enum case for WeatherServiceCacheFitnessPolicy.preferMoreRecent(_:), v149);
    v98 = v140;
    WeatherServiceCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:allowsFlexibleMarineTimeWindow:fitnessPolicy:interpolateCurrentWeather:)();
    (*(v142 + 104))(v98, enum case for WeatherServiceCacheReadPolicy.useCache(_:), Policy);
    WeatherServiceFetchOptions.cacheReadPolicy.setter();
  }

LABEL_14:
  v99 = v164;
  v100 = v174;
  sub_1000FA710(v80, v174, v180, v164);
  v101 = v175;
  WeatherServiceLastFetched.date.getter();
  (*(v165 + 8))(v99, Fetched);
  sub_1000302D8(v101, v163, &unk_100CB2CF0);
  WeatherServiceFetchOptions.now.setter();
  v102 = v168;
  sub_1000161C0(v168 + 60, *(v168 + 63));
  v103 = v167;
  v104 = v155;
  sub_1008AD448(v155, v100, v78, v167);
  if (sub_100024D10(v103, 1, v162) == 1)
  {
    sub_100018144(v182, &qword_100CE29C8);
    v105 = *(v181 + 8);
    v181 += 8;
    v182 = v105;
    v105(v188, v192);
    v106 = *(v81 + 8);
    v180 = (v81 + 8);
    v188 = v106;
    v107 = v193;
    v106(v185, v193);
    v185 = *(v189 + 8);
    (v185)(v184, Options);
    (*(v186 + 8))(v183, v187);
    sub_100006F14(&v196);
    sub_100018144(v103, &qword_100CE29E8);
    v108 = v151;
    v77(v151, v177, v107);
    v109 = (*(v81 + 80) + 40) & ~*(v81 + 80);
    v110 = (v150 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    v112 = v156;
    *(v111 + 2) = v191;
    *(v111 + 3) = v112;
    *(v111 + 4) = v157;
    (*(v81 + 32))(&v111[v109], v108, v107);
    *&v111[v110] = v170;

    swift_errorRetain();
    asyncMain(block:)();

    static os_signpost_type_t.end.getter();
    sub_10022C350(&qword_100CA40C8);
    v113 = swift_allocObject();
    *(v113 + 16) = v169;
    v114 = v177;
    v115 = Location.name.getter();
    v117 = v116;
    *(v113 + 56) = &type metadata for String;
    *(v113 + 64) = sub_100035744();
    *(v113 + 32) = v115;
    *(v113 + 40) = v117;
    v118 = v172;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    v182(v118, v192);
    v119 = v107;
    v120 = v185;
    v188(v114, v119);
    v121 = Options;
  }

  else
  {
    v181 = *(v181 + 8);
    v123 = v192;
    (v181)(v172, v192);
    v180 = *(v81 + 8);
    v190 = v81 + 8;
    v180(v177, v193);
    v124 = v152;
    sub_100086450(v103, v152);
    v125 = sub_1000161C0(&v196, v197);
    v126 = v182;
    v127 = v188;
    v128 = v123;
    v129 = v185;
    v136 = v104;
    v130 = v100;
    v131 = v183;
    v132 = v184;
    sub_1000F7F88(v124, 1, v191, v178, v179, v130, v183, v184, v136, v185, v158, v102, *v125, v156, v157, v188, v182);
    sub_100087544();
    sub_100018144(v126, &qword_100CE29C8);
    (v181)(v127, v128);
    v180(v129, v193);
    v120 = *(v189 + 8);
    v121 = Options;
    v120(v132, Options);
    (*(v186 + 8))(v131, v187);
    sub_100006F14(&v196);
  }

  v122 = v176;
  swift_beginAccess();
  v133 = swift_weakLoadStrong();
  v134 = v171;
  if (v133)
  {
    sub_10018E604(v122);
  }

  sub_100018144(v175, &unk_100CB2CF0);
  v120(v173, v121);
  sub_100018144(v134, &qword_100CE29C8);
  return sub_1000FE9DC();
}

void sub_1000F6168(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000037D8();
  UnfairLock.lock()();
  swift_beginAccess();
  v6 = sub_100086BAC(a1, a2, *(v2 + 48));
  if (v6)
  {
    v7 = v6;
    swift_endAccess();
    swift_beginAccess();
    v8 = sub_1000F64AC();
    swift_endAccess();

    [v7 invalidate];
    if (qword_100CA2798 != -1)
    {
      sub_10001FB30();
    }

    v9 = type metadata accessor for Logger();
    sub_10000703C(v9, qword_100D90D20);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_100078694(a1, a2, v21);
      *(v12 + 22) = 2080;
      Date.init()();
      sub_10001D090();
      sub_100066840(v13, v14);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v18 = sub_100014268();
      v19(v18);
      v20 = sub_100078694(v15, v17, v21);

      *(v12 + 24) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "Stopped monitoring location load. ID=%{private,mask.hash}s, Now=%s", v12, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      sub_100003884();
    }
  }

  else
  {
    swift_endAccess();
  }

  UnfairLock.unlock()();
}

unint64_t sub_1000F6458()
{
  result = qword_100CA60D0;
  if (!qword_100CA60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60D0);
  }

  return result;
}

uint64_t sub_1000F64AC()
{
  v2 = v0;
  sub_100031B34();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100025198();
  sub_100008574();
  v4 = sub_10022C350(&qword_100CA3A08);
  sub_1000145E4(v4, v5, v6, v7, v8, v9, v10, v11, v14, v15);

  v12 = *(*(v16 + 56) + 8 * v1);
  sub_1000F6C98();
  _NativeDictionary._delete(at:)();
  *v2 = v16;
  return v12;
}

uint64_t sub_1000F6564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  sub_1000037C4();
  v56 = v3;
  v57 = *(v4 + 64);
  __chkstk_darwin(v5);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10022C350(&qword_100CDE300);
  sub_1000037E8();
  __chkstk_darwin(v7);
  v53 = (&v47 - v8);
  v54 = *(a1 + 16);
  sub_10022E824(&qword_100CDE308);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CB0568);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CE1580);
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE310);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CCAF30);
  sub_10000381C();
  type metadata accessor for ModifiedContent();
  sub_10022E824(&qword_100CDE318);
  sub_10000381C();
  v9 = type metadata accessor for ModifiedContent();
  v60 = sub_1000EAD38();
  v52 = *(a1 + 24);
  v10 = v52;
  sub_1000090FC();
  v12 = sub_100006F64(v11, &qword_100CDE308);
  v80 = v10;
  v81 = v12;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_100006F64(&qword_100CB0560, &qword_100CB0568);
  v78 = WitnessTable;
  v79 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v76 = v15;
  v77 = v16;
  v17 = swift_getWitnessTable();
  v18 = sub_100006F64(&unk_100CE1210, &qword_100CDE310);
  v74 = v17;
  v75 = v18;
  v72 = swift_getWitnessTable();
  v73 = v16;
  v19 = swift_getWitnessTable();
  sub_1000068B8();
  v21 = sub_100006F64(v20, &qword_100CCAF30);
  v70 = v19;
  v71 = v21;
  v22 = swift_getWitnessTable();
  sub_100010D98();
  v24 = sub_100006F64(v23, &qword_100CDE318);
  v68 = v22;
  v69 = v24;
  v49 = v9;
  v48 = swift_getWitnessTable();
  v64 = &type metadata for ComputedGridGeometryPreferenceKey;
  v65 = v9;
  v66 = v60;
  v67 = v48;
  v50 = type metadata accessor for _OverlayPreferenceModifier();
  v25 = v61;
  v26 = type metadata accessor for ModifiedContent();
  sub_1000037C4();
  v51 = v27;
  __chkstk_darwin(v28);
  v30 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v47 - v32;
  v34 = static Color.clear.getter();
  v35 = v53;
  v36 = sub_1008461D4(v53 + *(v25 + 36));
  *v35 = v34;
  v37 = v56;
  v38 = v55;
  (*(v56 + 16))(v55, v58, a1, v36);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  v41 = v52;
  *(v40 + 16) = v54;
  *(v40 + 24) = v41;
  (*(v37 + 32))(v40 + v39, v38, a1);
  v42 = sub_1000EAD8C();
  static Alignment.center.getter();
  View.overlayPreferenceValue<A, B>(_:alignment:_:)();

  sub_100018144(v35, &qword_100CDE300);
  sub_100014FBC();
  v43 = swift_getWitnessTable();
  v62 = v42;
  v63 = v43;
  v44 = swift_getWitnessTable();
  sub_1000833D8(v30, v26, v44);
  v45 = *(v51 + 8);
  v45(v30, v26);
  sub_1000833D8(v33, v26, v44);
  return (v45)(v33, v26);
}

uint64_t sub_1000F6BBC()
{
  v1 = *(v0 + 16);
  type metadata accessor for GridGeometryRoot();
  sub_100013D48();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  sub_1000EBD74(*(v0 + v3), *(v0 + v3 + 8));
  sub_100069B18();
  (*(v4 + 8))(v0 + v3 + v5, v1);

  return swift_deallocObject();
}

unint64_t sub_1000F6C98()
{
  result = qword_100CB6C30;
  if (!qword_100CB6C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB6C30);
  }

  return result;
}

void sub_1000F6CFC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  sub_10022C350(&qword_100CA61E0);
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    sub_1000178C4();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }
}

uint64_t sub_1000F6DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a4;
  v43 = a3;
  v48 = a2;
  v51 = a5;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CE29C8);
  __chkstk_darwin(v7 - 8);
  v46 = &v38 - v8;
  v9 = type metadata accessor for News();
  v49 = *(v9 - 8);
  v50 = v9;
  __chkstk_darwin(v9);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10022C350(&qword_100CE29D0);
  __chkstk_darwin(v47);
  v12 = &v38 - v11;
  v44 = type metadata accessor for FetchedForecast();
  __chkstk_darwin(v44);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewsConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppConfiguration();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((a1 + 120), *(a1 + 144));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.news.getter();
  (*(v19 + 8))(v21, v18);
  LOBYTE(a1) = NewsConfiguration.enabled.getter();
  (*(v15 + 8))(v17, v14);
  if ((a1 & 1) == 0)
  {
    v26 = 1;
    v24 = v50;
    v23 = v51;
    return sub_10001B350(v23, v26, 1, v24);
  }

  if (qword_100CA25E8 != -1)
  {
    swift_once();
  }

  v22 = dispatch thunk of SettingGroup.isEnabled.getter();
  v24 = v50;
  v23 = v51;
  if (v22)
  {
    if (qword_100CA2230 != -1)
    {
      swift_once();
    }

    v25 = sub_10000703C(v24, qword_100D90440);
    (*(v49 + 16))(v23, v25, v24);
    goto LABEL_8;
  }

  sub_1000302D8(v48, v12, &qword_100CE29D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = &qword_100CE29D0;
    v28 = v12;
LABEL_14:
    sub_100018144(v28, v27);
    v26 = 1;
    return sub_10001B350(v23, v26, 1, v24);
  }

  v29 = v45;
  sub_100086450(v12, v45);
  v30 = v46;
  sub_1000302D8(v29 + *(v44 + 48), v46, &qword_100CE29C8);
  if (sub_100024D10(v30, 1, v24) == 1)
  {
    sub_100087544();
    v27 = &qword_100CE29C8;
    v28 = v30;
    goto LABEL_14;
  }

  v32 = *(v49 + 32);
  v33 = v39;
  v32(v39, v30, v24);
  v34 = *(sub_10022C350(&qword_100CC77B8) + 48);
  v35 = type metadata accessor for Location();
  v36 = v42;
  (*(*(v35 - 8) + 16))(v42, v40, v35);
  v37 = *(News.placements.getter() + 16);

  *(v36 + v34) = v37;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v36);
  sub_100087544();
  sub_100087544();
  v32(v23, v33, v24);
LABEL_8:
  v26 = 0;
  return sub_10001B350(v23, v26, 1, v24);
}

double sub_1000F73D0()
{
  type metadata accessor for GridGeometryValidator();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 255;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

uint64_t sub_1000F7410()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  _s4NewsV18PlaceholderContentCMa();
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_1000F7E14(0, 0, 0, v6);
  qword_100D908C0 = result;
  return result;
}

uint64_t sub_1000F74EC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GridGeometryValidator();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000F7528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v42 = a2;
  v4 = type metadata accessor for GridGeometryComputerModifier(0);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EnvironmentValues();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v13 - 8);
  v15 = &v38 - v14;
  v16 = type metadata accessor for ContentSizeCategory();
  v43 = *(v16 - 8);
  v44 = v16;
  __chkstk_darwin(v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ECC8();
  sub_10009D114();
  v45 = v12;
  sub_1000FC9C8();
  v18 = v2 + *(v4 + 32);
  if ((*(v18 + 8) & 1) == 0)
  {
    v19 = *v18;

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v19, 0);
    (*(v46 + 8))(v9, v7);
  }

  v38 = v7;
  v21 = static Alignment.center.getter();
  v23 = v22;
  sub_1000F7F28(v3, &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GridGeometryComputerModifier);
  v24 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v25 = swift_allocObject();
  sub_1000FA6B0(v6, v25 + v24, type metadata accessor for GridGeometryComputerModifier);
  v26 = static Alignment.center.getter();
  v28 = v27;
  v29 = sub_10022C350(&qword_100CDE440);
  v30 = v42;
  (*(*(v29 - 8) + 16))(v42, v40, v29);
  v31 = (v30 + *(sub_10022C350(&qword_100CDE448) + 36));
  *v31 = sub_100848584;
  v31[1] = v25;
  v31[2] = v26;
  v31[3] = v28;
  v31[4] = v21;
  v31[5] = v23;
  v32 = (v30 + *(sub_10022C350(&qword_100CDE450) + 36));
  v33 = v32 + *(sub_10022C350(&qword_100CDE458) + 36);
  sub_1000FC5D4(v15, v33);
  v34 = v3 + *(v4 + 52);
  v35 = *v34;
  if (*(v34 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v35, 0);
    (*(v46 + 8))(v9, v38);
    LOBYTE(v35) = v47;
  }

  sub_1008485F4(v45, type metadata accessor for DisplayMetrics);
  sub_100018144(v15, &qword_100CA6028);
  (*(v43 + 8))(v41, v44);
  result = type metadata accessor for GridGeometryComputerModifier.CacheBustingUpdates(0);
  *(v33 + *(result + 20)) = (v35 & 1) == 0;
  *v32 = 0;
  return result;
}

uint64_t sub_1000F7A88()
{
  v1 = type metadata accessor for GridGeometryComputerModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000EBD74(*v2, *(v2 + 8));
  v3 = v2 + v1[5];
  sub_10022C350(&qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  v6 = v1[6];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v6, 1, v7))
    {
      (*(*(v7 - 8) + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_100023354(v1[7]);
  sub_100023354(v1[8]);
  v8 = v1[9];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  v10 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v2 + v10, 1, v11))
    {
      (*(*(v11 - 8) + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_10003BCD8();

  sub_100023354(v1[13]);
  v12 = v2 + v1[14];
  sub_100109A54(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48));

  return swift_deallocObject();
}

uint64_t _s4NewsV18PlaceholderContentCMa()
{
  result = qword_100CD5DC0;
  if (!qword_100CD5DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F7E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Access();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  swift_allocObject();
  (*(v7 + 16))(v11, a4, v5);
  v12 = SettingGroup.init(key:defaultValue:access:)();
  (*(v7 + 8))(a4, v5);
  return v12;
}

uint64_t sub_1000F7F28(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000F7F88(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, char *a11, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v233 = a8;
  v232 = a7;
  v251 = a6;
  v231 = a5;
  v230 = a4;
  v255 = a3;
  LODWORD(v262) = a2;
  v261 = a1;
  v204 = type metadata accessor for OSSignpostID();
  v198 = *(v204 - 8);
  __chkstk_darwin(v204);
  v197 = v17;
  v203 = &v190 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CE29C8);
  v194 = *(v18 - 8);
  v195 = *(v194 + 64);
  __chkstk_darwin(v18 - 8);
  v196 = &v190 - v19;
  v244 = type metadata accessor for Location();
  v242 = *(v244 - 8);
  __chkstk_darwin(v244);
  v241 = v20;
  v243 = &v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for UUID();
  v235 = *(v237 - 8);
  __chkstk_darwin(v237);
  v234 = &v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for WeatherData(0);
  v192 = *(v236 - 8);
  __chkstk_darwin(v236);
  v202 = &v190 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = v22;
  __chkstk_darwin(v23);
  v249 = (&v190 - v24);
  v25 = type metadata accessor for WeatherData.CachingState(0);
  __chkstk_darwin(v25 - 8);
  v254 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10022C350(&qword_100CC8178);
  __chkstk_darwin(v27 - 8);
  v258 = &v190 - v28;
  v29 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v29 - 8);
  v248 = &v190 - v30;
  v201 = type metadata accessor for WeatherMetadata();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v199 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v32 - 8);
  v226 = &v190 - v33;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  v223 = *(Fetched - 8);
  __chkstk_darwin(Fetched);
  v222 = &v190 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CABD00);
  __chkstk_darwin(v35 - 8);
  v219 = &v190 - v36;
  v37 = sub_10022C350(&qword_100CABD10);
  __chkstk_darwin(v37 - 8);
  v218 = &v190 - v38;
  v216 = type metadata accessor for WeatherAvailability();
  v214 = *(v216 - 8);
  __chkstk_darwin(v216);
  v217 = &v190 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10022C350(&qword_100CC62B8);
  __chkstk_darwin(v40 - 8);
  v215 = &v190 - v41;
  v240 = sub_10022C350(&qword_100CA7000);
  v211 = *(v240 - 1);
  __chkstk_darwin(v240);
  v213 = &v190 - v42;
  v247 = sub_10022C350(&qword_100CA7030);
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v190 - v43;
  v44 = sub_10022C350(&qword_100CB0BA0);
  __chkstk_darwin(v44 - 8);
  v212 = &v190 - v45;
  v210 = type metadata accessor for CurrentWeather();
  v209 = *(v210 - 8);
  __chkstk_darwin(v210);
  v250 = &v190 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = type metadata accessor for WeatherDataModel();
  v253 = *(v260 - 8);
  __chkstk_darwin(v260);
  v221 = &v190 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = v47;
  __chkstk_darwin(v48);
  v264 = &v190 - v49;
  v263 = type metadata accessor for Date();
  v259 = *(v263 - 8);
  __chkstk_darwin(v263);
  v257 = &v190 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v256 = &v190 - v52;
  __chkstk_darwin(v53);
  v252 = &v190 - v54;
  v207 = type metadata accessor for Calendar.Component();
  v55 = *(v207 - 8);
  __chkstk_darwin(v207);
  v57 = &v190 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TimeZone();
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v61 = &v190 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for Calendar();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v63 = &v190 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10022C350(&qword_100CACDF8);
  __chkstk_darwin(v64 - 8);
  v208 = &v190 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v68 = &v190 - v67;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v71 = &v190 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for DailyForecastFilter();
  v270 = &off_100C4AB20;
  v268 = a13;
  *v71 = v262;
  v190 = updated;
  swift_storeEnumTagMultiPayload();

  sub_10005C1D4(v71);
  v191 = v71;
  sub_100087544();
  static TimeZone.current.getter();
  static Calendar.currentCalendar(with:)();
  v72 = *(v59 + 8);
  v227 = v61;
  v229 = v58;
  v228 = v59 + 8;
  v224 = v72;
  v72(v61, v58);
  v73 = v207;
  (*(v55 + 104))(v57, enum case for Calendar.Component.hour(_:), v207);
  v74 = v252;
  Date.init()();
  v75 = Calendar.component(_:from:)();
  v76 = *(v259 + 8);
  v239 = v259 + 8;
  v238 = v76;
  v76(v74, v263);
  (*(v55 + 8))(v57, v73);
  (*(v205 + 8))(v63, v206);
  if (v75 > 19)
  {
    v79 = type metadata accessor for FetchedForecast();
    v78 = v261;
    sub_1000302D8(v261 + *(v79 + 36), v68, &qword_100CACDF8);
  }

  else
  {
    v77 = type metadata accessor for WeatherChanges();
    sub_10001B350(v68, 1, 1, v77);
    v78 = v261;
  }

  v252 = a12;
  v261 = a10;
  (*(v209 + 16))(v250, v78, v210);
  v80 = type metadata accessor for FetchedForecast();
  sub_1000302D8(v78 + v80[5], v212, &qword_100CB0BA0);
  (*(v246 + 16))(v245, v78 + v80[6], v247);
  (*(v211 + 16))(v213, v78 + v80[7], v240);
  sub_1000302D8(v78 + v80[8], v215, &qword_100CC62B8);
  v240 = v68;
  sub_1000302D8(v68, v208, &qword_100CACDF8);
  (*(v214 + 16))(v217, v78 + v80[11], v216);
  sub_1000302D8(v78 + v80[13], v218, &qword_100CABD10);
  v81 = type metadata accessor for HistoricalFacts();
  sub_10001B350(v219, 1, 1, v81);

  WeatherDataModel.init(currentWeather:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherChanges:weatherAlerts:availability:historicalComparisons:historicalFacts:)();
  v82 = v256;
  CurrentWeather.date.getter();
  v83 = v222;
  sub_1000FA710(v231, v251, v233, v222);
  v84 = v226;
  WeatherServiceLastFetched.date.getter();
  (*(v223 + 8))(v83, Fetched);
  v85 = v263;
  if (sub_100024D10(v84, 1, v263) == 1)
  {
    (*(v259 + 16))(v257, v82, v85);
    if (sub_100024D10(v84, 1, v85) != 1)
    {
      sub_100018144(v84, &unk_100CB2CF0);
    }
  }

  else
  {
    (*(v259 + 32))(v257, v84, v85);
  }

  if (v262)
  {
    v86 = v199;
    CurrentWeather.metadata.getter();
    v87 = WeatherMetadata.location.getter();
    (*(v200 + 8))(v86, v201);
    v88 = Location.clLocation.getter();
    v89.super.isa = v87;
    v89._internal = v88;
    LODWORD(v233) = WeatherService.cachedLocation(_:representsRequestedLocation:)(v89, v90);
  }

  else
  {
    LODWORD(v233) = 1;
  }

  v91 = v249;
  v232 = type metadata accessor for TaskPriority();
  sub_10001B350(v248, 1, 1, v232);
  v92 = swift_allocObject();
  swift_beginAccess();
  v250 = a11;
  swift_weakLoadStrong();
  swift_weakInit();

  v93 = v253;
  v94 = *(v253 + 16);
  v95 = v221;
  v96 = v260;
  v94(v221, v264, v260);
  v97 = (*(v93 + 80) + 48) & ~*(v93 + 80);
  v98 = swift_allocObject();
  *(v98 + 2) = 0;
  *(v98 + 3) = 0;
  *(v98 + 4) = v92;
  v99 = v251;
  *(v98 + 5) = v251;
  (*(v93 + 32))(&v98[v97], v95, v96);
  v100 = v99;
  sub_1006C0138();

  SettingProperty.wrappedValue.getter();

  if (LOBYTE(v271[0]) == 1 && (v262 & 1) != 0)
  {
    v101 = v258;
    v102 = v263;
    (*(v259 + 16))(v258, v256, v263);
    v103 = type metadata accessor for WeatherDataRelevancy();
    *(v101 + *(v103 + 20)) = v233 & 1;
    sub_10001B350(v101, 0, 1, v103);
    v104 = v254;
  }

  else
  {
    v105 = type metadata accessor for WeatherDataRelevancy();
    sub_10001B350(v258, 1, 1, v105);
    v104 = v254;
    v102 = v263;
  }

  v106 = sub_10022C350(&qword_100CAC710);
  v107 = v106;
  v108 = v261;
  if (v262)
  {
    v109 = *(v106 + 48);
    (*(v259 + 16))(v104, v257, v102);
    sub_1000302D8(v258, v104 + v109, &qword_100CC8178);
    v110 = 0;
  }

  else
  {
    v110 = 1;
  }

  v259 = a15;
  v251 = a14;
  sub_10001B350(v104, v110, 1, v107);
  v111 = v236;
  v94(v91 + *(v236 + 24), v264, v260);
  sub_1000863F8(v104, v91 + v111[7]);
  v112 = v111[9];
  v113 = type metadata accessor for WeatherDataOverrides();
  sub_10001B350(v91 + v112, 1, 1, v113);
  v114 = v234;
  UUID.init()();
  v115 = UUID.uuidString.getter();
  v117 = v116;
  (*(v235 + 8))(v114, v237);
  v118 = v111[5];
  static Locale.current.getter();
  v119 = type metadata accessor for Locale();
  sub_10001B350(v91 + v118, 0, 1, v119);
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  swift_storeEnumTagMultiPayload();
  *v91 = v115;
  v91[1] = v117;
  sub_1000161C0(&v268, v269);
  v120 = v227;
  Location.timeZone.getter();
  sub_1000FC6B0(v91, v120, v271);
  v224(v120, v229);
  if (v272)
  {
    v122 = v271[2];
    v121 = v271[3];
    v123 = v271[0];
    v124 = v271[1];
    v265 = 0;
    v266 = 0xE000000000000000;
    _StringGuts.grow(_:)(85);
    v125._object = 0x8000000100AE36D0;
    v125._countAndFlagsBits = 0xD00000000000002ALL;
    String.append(_:)(v125);
    v267 = v123;
    v126._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v126);

    v127._countAndFlagsBits = 0x6C6175746361202CLL;
    v127._object = 0xEE003D746E756F43;
    String.append(_:)(v127);
    v267 = v124;
    v128._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v128);

    v129._countAndFlagsBits = 0x7865746E6F63202CLL;
    v129._object = 0xEA00000000003D74;
    String.append(_:)(v129);
    v130._countAndFlagsBits = v122;
    v130._object = v121;
    String.append(_:)(v130);
    v131._countAndFlagsBits = 0x697461636F6C202CLL;
    v131._object = 0xEB000000003D6E6FLL;
    String.append(_:)(v131);
    v267 = Location.hashValue.getter();
    v132._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v132);

    v133 = v265;
    v134 = v266;
    v262 = a16;
    v135 = v242;
    v136 = v243;
    v137 = v244;
    (*(v242 + 16))(v243, v261, v244);
    v138 = (*(v135 + 80) + 40) & ~*(v135 + 80);
    v139 = (v241 + v138 + 7) & 0xFFFFFFFFFFFFFFF8;
    v140 = swift_allocObject();
    v141 = v251;
    *(v140 + 2) = v255;
    *(v140 + 3) = v141;
    *(v140 + 4) = v259;
    v142 = v136;
    v143 = v261;
    (*(v135 + 32))(&v140[v138], v142, v137);
    v144 = &v140[v139];
    *v144 = v133;
    *(v144 + 1) = v134;

    asyncMain(block:)();

    static os_signpost_type_t.end.getter();
    sub_10022C350(&qword_100CA40C8);
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_100A2C3F0;
    v146 = Location.name.getter();
    v148 = v147;
    *(v145 + 56) = &type metadata for String;
    *(v145 + 64) = sub_100035744();
    *(v145 + 32) = v146;
    *(v145 + 40) = v148;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10018E604(v143);
    }

    sub_100018144(v271, &qword_100CE29F8);
    goto LABEL_26;
  }

  v149 = v245;
  WeatherDataModel.hourlyForecast.getter();
  sub_10006768C(&qword_100CA7040, &qword_100CA7030);
  v150 = v247;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v151 = dispatch thunk of Collection.distance(from:to:)();
  v152 = *(v246 + 8);
  v152(v149, v150);
  if (v151 >= 18)
  {
    LODWORD(v262) = v262 & 1;
    v177 = v191;
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v177);
    sub_100087544();
    sub_10001B350(v248, 1, 1, v232);
    sub_1000863F8(v91, v202);
    v178 = v242;
    (*(v242 + 16))(v243, v108, v244);
    v179 = v196;
    sub_1000302D8(a17, v196, &qword_100CE29C8);
    v180 = v198;
    (*(v198 + 16))(v203, a16, v204);
    v181 = (*(v192 + 80) + 40) & ~*(v192 + 80);
    v182 = (v193 + *(v178 + 80) + v181) & ~*(v178 + 80);
    v183 = (v241 + *(v194 + 80) + v182) & ~*(v194 + 80);
    v261 = (v183 + v195 + 7) & 0xFFFFFFFFFFFFFFF8;
    v184 = (v183 + v195 + 23) & 0xFFFFFFFFFFFFFFF8;
    v185 = (*(v180 + 80) + v184 + 8) & ~*(v180 + 80);
    v186 = swift_allocObject();
    *(v186 + 2) = 0;
    *(v186 + 3) = 0;
    *(v186 + 4) = v252;
    sub_100086450(v202, &v186[v181]);
    (*(v178 + 32))(&v186[v182], v243, v244);
    sub_10011C0F0(v179, &v186[v183], &qword_100CE29C8);
    v187 = &v186[v261];
    *v187 = v255;
    v187[8] = v262;
    *&v186[v184] = v250;
    (*(v180 + 32))(&v186[v185], v203, v204);

    sub_1006C0138();

LABEL_26:
    v176 = v263;
    goto LABEL_27;
  }

  v265 = 0;
  v266 = 0xE000000000000000;
  _StringGuts.grow(_:)(93);
  v153._countAndFlagsBits = 0xD000000000000041;
  v153._object = 0x8000000100AE3680;
  String.append(_:)(v153);
  WeatherDataModel.hourlyForecast.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v154 = dispatch thunk of Collection.distance(from:to:)();
  v152(v149, v150);
  v267 = v154;
  v155._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v155);

  v156._countAndFlagsBits = 0x687365726874202CLL;
  v156._object = 0xEC0000003D646C6FLL;
  String.append(_:)(v156);
  v267 = 18;
  v157._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v157);

  v158._countAndFlagsBits = 0x6F697461636F6C20;
  v158._object = 0xEA00000000003D6ELL;
  String.append(_:)(v158);
  v267 = Location.hashValue.getter();
  v159._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v159);

  v160 = v266;
  v249 = v265;
  v161 = v242;
  v162 = *(v242 + 16);
  v163 = v243;
  v262 = a16;
  v164 = v244;
  v162(v243, v261, v244);
  v165 = (*(v161 + 80) + 40) & ~*(v161 + 80);
  v166 = (v241 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
  v167 = swift_allocObject();
  v168 = v251;
  *(v167 + 2) = v255;
  *(v167 + 3) = v168;
  *(v167 + 4) = v259;
  (*(v161 + 32))(&v167[v165], v163, v164);
  v169 = v261;
  v170 = &v167[v166];
  *v170 = v249;
  v170[1] = v160;

  asyncMain(block:)();

  static os_signpost_type_t.end.getter();
  sub_10022C350(&qword_100CA40C8);
  v171 = swift_allocObject();
  *(v171 + 16) = xmmword_100A2C3F0;
  v172 = Location.name.getter();
  v174 = v173;
  *(v171 + 56) = &type metadata for String;
  *(v171 + 64) = sub_100035744();
  *(v171 + 32) = v172;
  *(v171 + 40) = v174;
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v176 = v263;
  if (Strong)
  {
    sub_10018E604(v169);
  }

LABEL_27:
  sub_100087544();
  sub_100087544();
  sub_100018144(v258, &qword_100CC8178);
  v188 = v238;
  v238(v257, v176);
  v188(v256, v176);
  (*(v253 + 8))(v264, v260);
  sub_100018144(v240, &qword_100CACDF8);
  return sub_100006F14(&v268);
}

uint64_t sub_1000FA1A4()
{
  type metadata accessor for WeatherDataModel();
  sub_10000548C();
  swift_unknownObjectRelease();

  v1 = sub_1000751C4();
  v2(v1);
  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_1000FA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_100071768();
  v13 = type metadata accessor for WeatherData(0);
  sub_100003DDC();
  v15 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v17 = *(v16 + 64);
  v60 = type metadata accessor for Location();
  sub_1000037C4();
  v58 = v18;
  v19 = *(v18 + 80);
  v20 = v15 + v17 + v19;
  v22 = *(v21 + 64);
  v23 = sub_10022C350(&qword_100CE29C8);
  sub_100003AE8(v23);
  v25 = *(v24 + 80);
  sub_100045454();
  type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v61 = v27;
  v62 = v26;
  v59 = *(v27 + 80);
  sub_10004ECA4();
  sub_1000452A4();
  swift_unknownObjectRelease();

  v28 = v12 + v15;

  v29 = v13[5];
  v30 = type metadata accessor for Locale();
  if (!sub_1000186A8(v28 + v29))
  {
    sub_100019B68();
    (*(v31 + 8))(v28 + v29, v30);
  }

  v32 = v20 & ~v19;
  v33 = v13[6];
  type metadata accessor for WeatherDataModel();
  sub_100003D98();
  (*(v34 + 8))(v28 + v33);
  v35 = sub_10022C350(&qword_100CAC710);
  if (!sub_10002120C(v35))
  {
    type metadata accessor for Date();
    sub_1000037E8();
    v37 = *(v36 + 8);
    v38 = sub_10002C598();
    v37(v38);
    v39 = sub_1000C8C20();
    if (!sub_100052794(v39))
    {
      v40 = sub_1008B1674();
      v37(v40);
    }
  }

  v41 = v32 + v22 + v25;
  v42 = v28 + v13[8];
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v43 = sub_100088740();
  if (v43 == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v45 + 8))(v42);
    v44 = v25;
  }

  else
  {
    v44 = v25;
    if (!v43)
    {
    }
  }

  v46 = v41 & ~v44;
  v47 = v28 + v13[9];
  v48 = type metadata accessor for WeatherDataOverrides();
  if (!sub_1000B9AB0(v48))
  {
    v49 = type metadata accessor for Date();
    if (!sub_100003EB0(v49))
    {
      sub_100019B68();
      v50 = sub_100025214();
      v51(v50);
    }

    v52 = *(v41 + 20);
    if (!sub_1000186A8(v47 + v52))
    {
      sub_100019B68();
      (*(v53 + 8))(v47 + v52, v42);
    }
  }

  (*(v58 + 8))(v12 + v32, v60);
  v54 = type metadata accessor for News();
  if (!sub_100024D10(v12 + v46, 1, v54))
  {
    sub_100003B20();
    (*(v55 + 8))(v12 + v46, v54);
  }

  (*(v61 + 8))(v12 + ((((v46 + a12 + 23) & 0xFFFFFFFFFFFFFFF8) + v59 + 8) & ~v59), v62);
  sub_100051A4C();

  return swift_deallocObject();
}

uint64_t sub_1000FA6B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1000FA710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v67 = a3;
  v66 = a2;
  v43 = a1;
  v68 = a4;
  v65 = sub_10022C350(&qword_100CE2988);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v35 - v4;
  v62 = sub_10022C350(&qword_100CE2990);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v35 - v5;
  v59 = sub_10022C350(&qword_100CE2998);
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v49 = &v35 - v6;
  v57 = sub_10022C350(&qword_100CE29A0);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v46 = &v35 - v7;
  v55 = sub_10022C350(&qword_100CE29A8);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v42 = &v35 - v8;
  v53 = sub_10022C350(&qword_100CE29B0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v10 = &v35 - v9;
  v51 = sub_10022C350(&qword_100CAD2A0);
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v12 = &v35 - v11;
  v48 = sub_10022C350(&qword_100CAD290);
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v14 = &v35 - v13;
  v45 = sub_10022C350(&qword_100CE29B8);
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v16 = &v35 - v15;
  v41 = sub_10022C350(&qword_100CE29C0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v18 = &v35 - v17;
  v19 = sub_10022C350(&qword_100CE2980);
  __chkstk_darwin(v19 - 8);
  v40 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  v24 = swift_projectBox();
  sub_1000302D8(v24, v23, &qword_100CE2980);
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  if (sub_100024D10(v23, 1, Fetched) != 1)
  {
    return (*(*(Fetched - 8) + 32))(v68, v23, Fetched);
  }

  sub_100018144(v23, &qword_100CE2980);
  v35 = *(v43 + 64);
  ProductRequirementsFactory.AppRequiredProducts.current.getter();
  v79 = v18;
  v38 = v16;
  ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
  v80 = v16;
  v37 = v14;
  ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
  v81 = v14;
  v36 = v12;
  ProductRequirementsFactory.AppRequiredProducts.daily.getter();
  v82 = v12;
  ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
  v83 = v10;
  v26 = v42;
  ProductRequirementsFactory.AppRequiredProducts.changes.getter();
  v84 = v26;
  v27 = v46;
  ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
  v85 = v27;
  v28 = v49;
  ProductRequirementsFactory.AppRequiredProducts.availability.getter();
  v86 = v28;
  v43 = v24;
  v29 = v60;
  ProductRequirementsFactory.AppRequiredProducts.news.getter();
  v87 = v29;
  v30 = v63;
  ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
  v88 = v30;
  v69 = type metadata accessor for CurrentWeather();
  v70 = sub_10022C350(&qword_100CB0BA0);
  v71 = sub_10022C350(&qword_100CA7030);
  v72 = sub_10022C350(&qword_100CA7000);
  v73 = sub_10022C350(&qword_100CC62B8);
  v74 = sub_10022C350(&qword_100CACDF8);
  v75 = sub_10022C350(&qword_100CD00E0);
  v76 = type metadata accessor for WeatherAvailability();
  v77 = sub_10022C350(&qword_100CE29C8);
  v78 = sub_10022C350(&qword_100CABD10);
  v31 = v68;
  WeatherService.lastServerFetch<each A>(for:including:options:)();
  (*(v64 + 8))(v30, v65);
  (*(v61 + 8))(v29, v62);
  (*(v58 + 8))(v28, v59);
  (*(v56 + 8))(v27, v57);
  (*(v54 + 8))(v26, v55);
  (*(v52 + 8))(v10, v53);
  (*(v50 + 8))(v36, v51);
  (*(v47 + 8))(v37, v48);
  (*(v44 + 8))(v38, v45);
  (*(v39 + 8))(v18, v41);
  v32 = v40;
  (*(*(Fetched - 8) + 16))(v40, v31, Fetched);
  sub_10001B350(v32, 0, 1, Fetched);
  v33 = v43;
  swift_beginAccess();
  return sub_1000FB1E4(v32, v33);
}

uint64_t sub_1000FB1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CE2980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FB268(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10001B350(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void *sub_1000FB310@<X0>(double a1@<X0>, double a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v9 = v8;
  LODWORD(v197) = a3;
  v187 = a2;
  v181 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v181);
  v196 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = type metadata accessor for UserInterfaceSizeClass();
  v186 = *(v190 - 8);
  __chkstk_darwin(v190);
  v178 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v180);
  v189 = &v173 - v18;
  v19 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v19 - 8);
  v179 = &v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v185 = &v173 - v22;
  __chkstk_darwin(v23);
  *&v188 = &v173 - v24;
  v25 = type metadata accessor for ContentSizeCategory();
  v192 = *(v25 - 8);
  v193 = v25;
  __chkstk_darwin(v25);
  v184 = &v173 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v195 = &v173 - v28;
  v29 = type metadata accessor for LocationViewGeometry(0);
  __chkstk_darwin(v29);
  v183 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v182 = &v173 - v32;
  __chkstk_darwin(v33);
  v35 = &v173 - v34;
  v36 = type metadata accessor for EnvironmentValues();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v173 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v198 = type metadata accessor for GridGeometryComputerModifier(0);
  v40 = v8 + *(v198 + 52);
  v41 = *v40;
  if (*(v40 + 8) == 1)
  {
    v42 = *v40;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v194 = a1;
    v43 = static Log.runtimeIssuesLog.getter();
    v191 = v36;
    v44 = v43;
    a1 = v194;
    os_log(_:dso:log:_:_:)();

    v36 = v191;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v41, 0);
    (*(v37 + 8))(v39, v36);
    v42 = LOBYTE(__dst[0]);
  }

  if (v42 == 1)
  {
    v45 = (v9 + *(v198 + 48));
    v47 = *v45;
    v46 = v45[1];
    __dst[0] = v47;
    __dst[1] = v46;
    sub_10022C350(&qword_100CDE468);
    State.wrappedValue.getter();
    v48 = v213;
    v49 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
    swift_beginAccess();
    sub_1000F7F28(*&v48 + v49, v35, type metadata accessor for LocationViewGeometry);

    memcpy(__dst, v35, 0x48uLL);
    LOBYTE(v48) = v35[72];
    v50 = v29[6];
    v51 = type metadata accessor for TargetWindowSizeClass();
    (*(*(v51 - 8) + 16))(&a4[v50], &v35[v50], v51);
    LOBYTE(v50) = v35[v29[8]];
    v52 = &v35[v29[7]];
    v53 = v35[v29[9]];
    v54 = *(v52 + 1);
    v197 = *v52;
    v198 = v54;
    sub_1008485F4(v35, type metadata accessor for LocationViewGeometry);
    result = memcpy(a4, __dst, 0x48uLL);
    a4[72] = LOBYTE(v48);
    v56 = &a4[v29[7]];
    v57 = v198;
    *v56 = v197;
    v56[1] = v57;
    a4[v29[8]] = v50;
    a4[v29[9]] = v53;
    return result;
  }

  if ((v197 & 1) != 0 || (v58 = a1, a1 == 0.0) && v187 == 0.0)
  {
    sub_1009E86F0(0, 3, __dst);
    v59 = v29[6];
    v60 = enum case for TargetWindowSizeClass.compact(_:);
    v61 = type metadata accessor for TargetWindowSizeClass();
    (*(*(v61 - 8) + 104))(&a4[v59], v60, v61);
    result = memcpy(a4, __dst, 0x48uLL);
    a4[72] = 0x80;
    v62 = &a4[v29[7]];
    *v62 = 0u;
    v62[1] = 0u;
    a4[v29[8]] = 0;
    a4[v29[9]] = 0;
    return result;
  }

  v194 = a1;
  *&v197 = v187;
  v191 = v36;
  sub_10009ECC8();
  v177 = v9;
  v63 = *&v188;
  sub_10009D114();
  v64 = v185;
  v65 = v190;
  (*(v186 + 104))(v185, enum case for UserInterfaceSizeClass.compact(_:), v190);
  sub_10001B350(v64, 0, 1, v65);
  *&v66 = *(v180 + 48);
  v67 = v189;
  sub_1000FC5D4(v63, v189);
  v187 = v66;
  sub_1000FC5D4(v64, v67 + *&v66);
  v68 = sub_100024D10(v67, 1, v65);
  v174 = v37;
  if (v68 != 1)
  {
    v72 = v179;
    sub_1000FC5D4(v67, v179);
    v73 = v187;
    v74 = v190;
    if (sub_100024D10(v67 + *&v187, 1, v190) != 1)
    {
      v77 = v186;
      v78 = v67 + *&v73;
      v79 = v178;
      (*(v186 + 32))(v178, v78, v74);
      sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      LODWORD(v187) = dispatch thunk of static Equatable.== infix(_:_:)();
      v80 = *(v77 + 8);
      v80(v79, v74);
      sub_100018144(v185, &qword_100CA6028);
      sub_100018144(*&v188, &qword_100CA6028);
      v80(v72, v74);
      sub_100018144(v189, &qword_100CA6028);
      v71 = v177;
      if (LOBYTE(v187))
      {
        goto LABEL_18;
      }

LABEL_16:
      v75 = 0;
      v76 = 2;
      goto LABEL_19;
    }

    sub_100018144(v185, &qword_100CA6028);
    v69 = v189;
    sub_100018144(*&v188, &qword_100CA6028);
    (*(v186 + 8))(v72, v74);
    v71 = v177;
LABEL_15:
    sub_100018144(v69, &qword_100CA64E8);
    goto LABEL_16;
  }

  sub_100018144(v64, &qword_100CA6028);
  v69 = v189;
  sub_100018144(*&v188, &qword_100CA6028);
  v70 = sub_100024D10(v69 + *&v187, 1, v190);
  v71 = v177;
  if (v70 != 1)
  {
    goto LABEL_15;
  }

  sub_100018144(v69, &qword_100CA6028);
LABEL_18:
  v75 = 1;
  v76 = 1;
LABEL_19:
  v188 = *&v76;
  v81 = v198;
  sub_1000FC9C8();
  v82 = v71 + *(v81 + 32);
  v83 = *v82;
  LODWORD(v189) = *(v82 + 8);
  v190 = v83;
  if ((v189 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v83, 0);
    (*(v174 + 8))(v39, v191);
    LOBYTE(v83) = __dst[0];
  }

  v86 = v192;
  v85 = v193;
  v87 = v184;
  (*(v192 + 16))(v184, v195, v193);
  v88 = (*(v86 + 88))(v87, v85);
  v94 = v88 == enum case for ContentSizeCategory.extraSmall(_:) || v88 == enum case for ContentSizeCategory.small(_:) || v88 == enum case for ContentSizeCategory.medium(_:) || v88 == enum case for ContentSizeCategory.large(_:) || v88 == enum case for ContentSizeCategory.extraLarge(_:) || v88 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v88 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  v175 = v29;
  v176 = a4;
  v173 = v39;
  if (!v94)
  {
    if (v88 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v88 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v88 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      goto LABEL_56;
    }

    (*(v192 + 8))(v184, v193);
  }

  if (!v75)
  {
    v187 = a8;
    v100 = objc_opt_self();
    v101 = [v100 mainScreen];
    [v101 bounds];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v108 = v58;
    v110 = v109;

    v111 = v110;
    v58 = v108;
    sub_10086A658(v103, v105, v107, v111);
    if (v108 < 680.0)
    {
      v99 = 0;
      a8 = v187;
      goto LABEL_64;
    }

    v112 = [v100 mainScreen];
    [v112 bounds];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    v120 = v119;

    v121 = v114;
    v58 = v108;
    sub_10086A658(v121, v116, v118, v120);
    v123 = v122 <= v108;
    a8 = v187;
    if (!v123)
    {
LABEL_60:
      v99 = 1;
      goto LABEL_64;
    }

LABEL_63:
    v99 = 2;
    goto LABEL_64;
  }

  if (v58 >= 680.0)
  {
    if (v58 < 1.79769313e308)
    {
      goto LABEL_60;
    }

    goto LABEL_63;
  }

LABEL_56:
  v99 = 0;
LABEL_64:
  v124 = v196;
  sub_1000FCA5C(v196, v83);
  v126 = v125;
  v128 = v127;
  v129 = sub_1000FD028(v124, v83);
  v130 = sub_1000FCDB8(v124, v83);
  v131 = sub_1000FD0E8(v99, v129 & 1, v130 & 1);
  v132 = v131;
  v133 = HIBYTE(v131);
  v134 = COERCE_DOUBLE(sub_1000FD46C(*&v188, v58));
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v141 = v139 & 1;
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    v142 = v58;
  }

  else
  {
    v142 = 200.0;
  }

  LOBYTE(v205[0]) = v141;
  if (v140)
  {
    v187 = v58;
    v188 = a5;
    *__dst = v194;
    *&__dst[1] = v134;
    __dst[2] = v136;
    __dst[3] = v138;
    LOBYTE(__dst[4]) = v141;
    __dst[5] = v126;
    LOBYTE(__dst[6]) = v132;
    BYTE1(__dst[6]) = v133;
    *&__dst[7] = v128;
    *&__dst[8] = v142;
    sub_1000FD520();
    v144 = v143 + sub_1000FDB68() + *&__dst[7] + *&__dst[7];
    if (BYTE1(__dst[6]) - 3 >= 2)
    {
      v144 = v144 + 20.0;
    }

    if (v144 < v134 && (v133 - 3) <= 1)
    {
      v213 = v194;
      v214 = v134;
      v215 = v136;
      v216 = v138;
      v217 = v141;
      v218 = v126;
      v219 = v132;
      v220 = v133;
      v221 = v128;
      v222 = v142;
      sub_1000FD520();
      v146 = v145;
      v147 = sub_1000FDB68();
      v148 = 20.0;
      if (v220 - 3 < 2)
      {
        v148 = 0.0;
      }

      v128 = v221 + round((v134 - (v146 + v147 + v221 + v221 + v148)) * 0.5);
    }

    a5 = v188;
  }

  *v206 = v194;
  *&v206[1] = v134;
  v206[2] = v136;
  v206[3] = v138;
  v207 = v141;
  v208 = v126;
  v209 = v132;
  v210 = v133;
  v211 = v128;
  v212 = v142;
  sub_1008485F4(v196, type metadata accessor for DisplayMetrics);
  (*(v192 + 8))(v195, v193);
  v149 = v198;
  type metadata accessor for GridGeometryValidator();
  sub_1000EA958(&qword_100CDE3C0, type metadata accessor for GridGeometryValidator);
  StateObject.wrappedValue.getter();
  sub_1000FE680(v206, v202);

  LODWORD(v196) = sub_1008479BC(v202, v71);
  v150 = (v71 + *(v149 + 48));
  v151 = *v150;
  v152 = v150[1];
  v205[0] = *v150;
  v205[1] = v152;
  sub_10022C350(&qword_100CDE468);
  State.wrappedValue.getter();
  v153 = v204[0];
  v154 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
  swift_beginAccess();
  v155 = v182;
  sub_1000F7F28(v153 + v154, v182, type metadata accessor for LocationViewGeometry);

  sub_1009E86F0(0, 3, v203);
  v156 = v175;
  v157 = v175[6];
  v158 = enum case for TargetWindowSizeClass.compact(_:);
  v159 = type metadata accessor for TargetWindowSizeClass();
  v160 = v183;
  (*(*(v159 - 8) + 104))(&v183[v157], v158, v159);
  memcpy(v160, v203, 0x48uLL);
  v160[72] = 0x80;
  v161 = &v160[v156[7]];
  *v161 = 0u;
  v161[1] = 0u;
  v160[v156[8]] = 0;
  v162 = v156;
  v160[v156[9]] = 0;
  memcpy(v205, v155, sizeof(v205));
  memcpy(v204, v160, sizeof(v204));
  if (sub_100894634(v204) && v155[72] == 128 && (sub_10016AB68(&v155[v156[6]], &v160[v157]) & 1) != 0 && (static EdgeInsets.== infix(_:_:)() & 1) != 0 && (v155[v156[8]] & 1) == 0)
  {
    v172 = v155[v156[9]];
    sub_1008485F4(v155, type metadata accessor for LocationViewGeometry);
    sub_1008485F4(v160, type metadata accessor for LocationViewGeometry);
    v163 = v172 ^ 1;
  }

  else
  {
    sub_1008485F4(v160, type metadata accessor for LocationViewGeometry);
    sub_1008485F4(v155, type metadata accessor for LocationViewGeometry);
    v163 = 0;
  }

  if (v189)
  {
    v164 = v190;
  }

  else
  {
    v165 = v190;

    static os_log_type_t.fault.getter();
    v166 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v167 = v173;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v165, 0);
    (*(v174 + 8))(v167, v191);
    v164 = v199;
  }

  v168 = v176;
  sub_1000FDF14(&v176[v162[6]]);
  memcpy(v168, v202, 0x48uLL);
  v168[72] = v164;
  v169 = &v168[v162[7]];
  *v169 = a5;
  v169[1] = a6;
  v169[2] = a7;
  v169[3] = a8;
  v168[v162[8]] = v196 & 1;
  v168[v162[9]] = v163 & 1;
  v199 = v151;
  v200 = v152;
  State.wrappedValue.getter();
  v170 = v201;
  v171 = OBJC_IVAR____TtC7WeatherP33_6CEEE08596B0687FCFF88ED9BB8421E217GridGeometryCache_previousLocationViewGeometry;
  swift_beginAccess();
  sub_100848668(v168, v170 + v171);
  swift_endAccess();
}

uint64_t sub_1000FC5D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6028);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FC658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&unk_100CB2CF0);

  return sub_10001B350(a1, a2, a2, v4);
}

uint64_t sub_1000FC6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = sub_10022C350(&qword_100CA7048);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CA7050);
  sub_1000037C4();
  v32 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v35 = 0xD000000000000010;
  v36 = 0x8000000100ABD9A0;
  v37 = xmmword_100A31F90;
  v38 = 1;
  NonEmpty.init<A>(arrayWith:_:)();
  NonEmpty.map<A>(_:)();
  NonEmpty.max<>()();
  (*(v7 + 8))(v10, v5);
  v16 = v35;
  v17 = sub_1000FD610(a1, a2, v35, 0, 1);
  v33 = v11;
  result = NonEmpty.makeIterator()();
  v19 = v36;
  v20 = *(v35 + 16);
  v21 = (v35 + 40 * v36 + 64);
  while (1)
  {
    v22 = v19;
    if (v20 == v19)
    {
      (*(v32 + 8))(v15, v33);

      v26 = 0;
      v29 = 0;
      v24 = 0;
      v23 = 0;
      goto LABEL_10;
    }

    if (v19 >= v20)
    {
      break;
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_12;
    }

    v24 = *(v21 - 4);
    v23 = *(v21 - 3);
    v26 = *(v21 - 1);
    v25 = *v21;
    v36 = v19 + 1;
    v27 = v16 - v25;
    if (__OFSUB__(v16, v25))
    {
      goto LABEL_13;
    }

    v28 = v17[2];
    v29 = v28 - v27;
    if (__OFSUB__(v28, v27))
    {
      goto LABEL_14;
    }

    v19 = v22 + 1;
    v21 += 5;
    if (v29 < v26)
    {
      v32 = *(v32 + 8);

      (v32)(v15, v33);

LABEL_10:
      v30 = v34;
      *v34 = v26;
      v30[1] = v29;
      v30[2] = v24;
      v30[3] = v23;
      *(v30 + 32) = v20 != v22;
      return result;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1000FC9F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

void sub_1000FCA5C(uint64_t a1, unsigned __int8 a2)
{
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v6 mainScreen];
    [v7 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    Width = CGRectGetWidth(v27);
    v17 = [v6 mainScreen];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v28.origin.x = v19;
    v28.origin.y = v21;
    v28.size.width = v23;
    v28.size.height = v25;
    Height = CGRectGetHeight(v28);
    if (Width > Height)
    {
      Height = Width;
    }

    if (Height >= 1366.0)
    {
      sub_1000FD028(a1, a2);
    }
  }
}

uint64_t sub_1000FCCC8()
{
  sub_100017580();
  v2 = type metadata accessor for WeatherDataModel();
  sub_100003810(v2);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000FDB98;
  sub_1000A7D8C();

  return sub_1000FCEA8(v5, v6, v7, v8, v3, v9);
}

uint64_t sub_1000FCDB8(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    if ((a2 & 1) == 0)
    {
      LOBYTE(v3) = 1;
      return v3 & 1;
    }

LABEL_11:
    LOBYTE(v3) = 0;
    return v3 & 1;
  }

  if (a2 >> 6 != 1)
  {
    goto LABEL_11;
  }

  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC();
  }

  if (byte_100D90788 != 1 || *(a1 + 8) == 1 || (type metadata accessor for DisplayMetrics(), (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0) || byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*a1) && (*(a1 + 17) & 1) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 6u >> (*(a1 + 18) & 7);
  }

  return v3 & 1;
}

uint64_t sub_1000FCEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_10022C350(&qword_100CC62B8);
  v6[8] = swift_task_alloc();
  sub_10022C350(&qword_100CAD048);
  v6[9] = swift_task_alloc();
  sub_10022C350(&qword_100CAD040);
  v6[10] = swift_task_alloc();
  sub_10022C350(&qword_100CB0BA0);
  v6[11] = swift_task_alloc();
  sub_10022C350(&qword_100CE0118);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000FD194, 0, 0);
}

uint64_t sub_1000FD028(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    return (a2 & 1) != 0;
  }

  if (a2 >> 6 != 1)
  {
    return 0;
  }

  if (qword_100CA24D0 != -1)
  {
    sub_1000114DC();
  }

  if (byte_100D90788 != 1)
  {
    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    return 0;
  }

  type metadata accessor for DisplayMetrics();
  if (DynamicTypeSize.isAccessibilitySize.getter())
  {
    return 0;
  }

  result = sub_10029C3DC(*a1);
  if (result)
  {
    return *(a1 + 17);
  }

  return result;
}

uint64_t sub_1000FD0E8(unsigned __int8 a1, char a2, char a3)
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a2)
  {
    v3 = 0x10003u >> (8 * a1);
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  return v4 | (v3 << 8);
}

uint64_t sub_1000FD138()
{

  return swift_allocObject();
}

uint64_t sub_1000FD16C()
{

  return sub_1000A0944();
}

uint64_t sub_1000FD194()
{
  sub_10019225C();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[11];
    v2 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[8];
    sub_1000161C0((Strong + 368), *(Strong + 392));
    WeatherDataModel.currentWeather.getter();
    v7 = type metadata accessor for CurrentWeather();
    sub_10001B350(v2, 0, 1, v7);
    WeatherDataModel.minuteForecast.getter();
    WeatherDataModel.hourlyForecast.getter();
    v8 = sub_10022C350(&qword_100CA7030);
    sub_10001B350(v4, 0, 1, v8);
    WeatherDataModel.dailyForecast.getter();
    v9 = sub_10022C350(&qword_100CA7000);
    sub_10001B350(v5, 0, 1, v9);
    WeatherDataModel.airQuality.getter();
    WeatherDataModel.weatherAlerts.getter();
    dispatch thunk of WeatherProviderAttributionCacheManagerType.updateAttributions(for:with:minuteForecast:hourlyForecast:dailyForecast:airQuality:weatherAlerts:)();

    sub_100018144(v6, &qword_100CC62B8);
    sub_100018144(v5, &qword_100CAD048);
    sub_100018144(v4, &qword_100CAD040);
    sub_100018144(v3, &qword_100CB0BA0);
    sub_100018144(v2, &qword_100CE0118);
  }

  else
  {
    if (qword_100CA2730 != -1)
    {
      sub_1000D4354();
    }

    v10 = type metadata accessor for Logger();
    sub_10000703C(v10, qword_100D90BE8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "We were deallocated! Skipping provider attribution update", v13, 2u);
      sub_100003884();
    }
  }

  sub_100003B14();

  return v14();
}

uint64_t sub_1000FD46C(uint64_t a1, double a2)
{
  if (a1 != 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    sub_10086A658(v5, v7, v9, v11);
  }

  return *&a2;
}

void sub_1000FD520()
{
  v1 = 2 * *(v0 + 49) + 2;
  if (*(v0 + 49) - 3 < 2)
  {
    v1 = 0;
  }

  if (v1 + 2 * *(v0 + 48) == 4)
  {
    sub_100028CBC();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v1 + 2 * *(v0 + 48) == 2)
  {
    sub_100028CBC();
    if (v2)
    {
LABEL_6:
      sub_1000FDB68();
      sub_100023444();
      sub_10001A0E0();
    }
  }

  else if (v1 + 2 * *(v0 + 48))
  {
    sub_10007519C();
    sub_100006A20();
    __break(1u);
  }

  else
  {
    sub_100028CBC();
    if (v4)
    {
      goto LABEL_6;
    }
  }
}

void *sub_1000FD610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v69 = a5;
  v59[0] = a4;
  v63 = a3;
  sub_10022C350(&qword_100CA7000);
  sub_1000037C4();
  v67 = v7;
  v68 = v6;
  __chkstk_darwin(v6);
  sub_100003C38();
  v65 = v8 - v9;
  sub_10000386C();
  v11 = __chkstk_darwin(v10);
  sub_100003C54(v11, v12, v13, v14, v15, v16, v17, v18, v59[0]);
  v62 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Date();
  sub_1000037C4();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100003C38();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v70 = v59 - v31;
  sub_10000386C();
  v33 = __chkstk_darwin(v32);
  v35 = v59 - v34;
  __chkstk_darwin(v33);
  v37 = v59 - v36;
  type metadata accessor for Calendar();
  sub_1000037C4();
  v59[2] = v39;
  v59[3] = v38;
  __chkstk_darwin(v38);
  v41 = v59 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.currentCalendar(with:)();
  type metadata accessor for WeatherData(0);
  v64 = a1;
  WeatherDataModel.currentWeather.getter();
  CurrentWeather.date.getter();
  (*(v20 + 8))(v23, v62);
  v42 = v61;
  IsSameDayCache.startOfDay(_:calendar:)();
  v62 = *(v25 + 8);
  v62(v35, v42);
  v60 = v37;
  v59[1] = v41;
  if (v63 < 1)
  {
    (*(v25 + 16))(v29, v37, v42);
  }

  else
  {
    Date.wc_addDays(_:calendar:)();
  }

  v43 = v70;
  (*(v25 + 32))(v70, v29, v42);
  v44 = v66;
  WeatherDataModel.dailyForecast.getter();
  v46 = v67;
  v45 = v68;
  v47 = (*(v67 + 16))(v65, v44, v68);
  __chkstk_darwin(v47);
  v59[-2] = v43;
  v48 = sub_1000FDB9C(sub_1000FE800, &v59[-4]);
  v50 = *(v46 + 8);
  v49 = v46 + 8;
  v50(v44, v45);
  if ((v69 & 1) == 0)
  {
    sub_10010071C(v59[0], v48, sub_10010081C, sub_100100A00);
    sub_1000746B4();
    v49 = v51;
    if (v51)
    {
      v44 = v42;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        swift_unknownObjectRelease();
        v56 = _swiftEmptyArrayStorage;
      }

      v57 = v56[2];

      if (__OFSUB__(v49 >> 1, v59))
      {
        __break(1u);
      }

      else if (v57 == (v49 >> 1) - v59)
      {
        v48 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v42 = v44;
        v43 = v70;
        sub_100049644();
        if (v48)
        {
          goto LABEL_15;
        }

        v48 = _swiftEmptyArrayStorage;
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v42 = v44;
      v43 = v70;
    }

    v52 = sub_100016748();
    sub_100307420(v52, v53, v54, v49);
    v48 = v55;
    sub_100049644();
    goto LABEL_14;
  }

  sub_100049644();
LABEL_15:
  v44(v60, v42);
  (*(v49 + 8))(v45, v59);
  v44(v43, v42);
  return v48;
}

double sub_1000FDB68()
{
  if (*(v0 + 49) - 3 >= 2)
  {
    v1 = 2 * *(v0 + 49) + 1;
  }

  else
  {
    v1 = 0;
  }

  return *(v0 + 40) * (v1 + 2 * *(v0 + 48) + 1);
}

void *sub_1000FDB9C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v44 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  v38 = v7 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  v40 = v37 - v10;
  sub_10000386C();
  v12 = __chkstk_darwin(v11);
  sub_100003C54(v12, v13, v14, v15, v16, v17, v18, v19, v37[0]);
  v20 = sub_10022C350(&qword_100CA7008) - 8;
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = v37 - v22;
  sub_10022C350(&qword_100CA7000);
  sub_1000055CC(&qword_100CA7010);
  dispatch thunk of Sequence.makeIterator()();
  v24 = *(v20 + 44);
  sub_10000FAD4(&qword_100CA7018);
  sub_10001927C();
  v39 = _swiftEmptyArrayStorage;
  while (1)
  {
    sub_10000C840();
    if (*&v23[v24] == v45[0])
    {
      sub_10003FDF4(v23, &qword_100CA7008);
      return v39;
    }

    sub_100069408();
    v25 = sub_1000227F4();
    v26(v25);
    (v2)(v45, 0);
    sub_10002454C();
    v27 = sub_10004E3A8();
    v5(v27);
    v28 = v2;
    v2 = v42;
    v29 = v41(v28);
    if (v3)
    {
      break;
    }

    if (v29)
    {
      (v5)(v38, v43, v44);
      sub_100017620();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000134F8();
        sub_1000FE994();
        v2 = v46;
      }

      if (*(v2 + 16) >= *(v2 + 24) >> 1)
      {
        sub_1000FE994();
        v2 = v46;
      }

      v33 = sub_10001BC4C();
      v5(v33);
    }

    else
    {
      v30 = sub_100008020();
      v31(v30);
    }
  }

  v34 = sub_100008020();
  v35(v34);
  sub_10003FDF4(v23, &qword_100CA7008);
  sub_100017620();

  return v2;
}

uint64_t sub_1000FDE84()
{
  v1 = 2 * *(v0 + 49) + 2;
  if (*(v0 + 49) - 3 < 2)
  {
    v1 = 0;
  }

  switch(v1 + 2 * *(v0 + 48))
  {
    case 0:
      return 0;
    case 4:
      return 2;
    case 2:
      return 1;
  }

  sub_10007519C();
  result = sub_100006A20();
  __break(1u);
  return result;
}

uint64_t sub_1000FDF14@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v47 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v5);
  v7 = &v41 - v6;
  v8 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v8 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v41 - v11;
  __chkstk_darwin(v12);
  v44 = &v41 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *(type metadata accessor for GridGeometryComputerModifier(0) + 28);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v28 = [objc_opt_self() currentDevice];
    v29 = [v28 userInterfaceIdiom];

    v30 = type metadata accessor for TargetWindowSizeClass();
    v31 = *(*(v30 - 8) + 104);
    if (v29)
    {
      v32 = &enum case for TargetWindowSizeClass.portraitRegular(_:);
    }

    else
    {
      v32 = &enum case for TargetWindowSizeClass.compact(_:);
    }

    v35 = *v32;
    v36 = v46;
    return v31(v36, v35, v30);
  }

  static os_log_type_t.fault.getter();
  v41 = v14;
  v24 = static Log.runtimeIssuesLog.getter();
  v42 = v4;
  v25 = v5;
  v26 = v7;
  v27 = v24;
  os_log(_:dso:log:_:_:)();

  v7 = v26;
  v5 = v25;
  v4 = v42;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000EBD74(v19, 0);
  (*(v15 + 8))(v17, v41);
  if (v48 == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v20 = v44;
  sub_10009D114();
  v21 = v45;
  v22 = v47;
  (*(v2 + 104))(v45, enum case for UserInterfaceSizeClass.compact(_:), v47);
  sub_10001B350(v21, 0, 1, v22);
  v23 = *(v5 + 48);
  sub_1000FC5D4(v20, v7);
  sub_1000FC5D4(v21, &v7[v23]);
  if (sub_100024D10(v7, 1, v22) != 1)
  {
    v33 = v43;
    sub_1000FC5D4(v7, v43);
    if (sub_100024D10(&v7[v23], 1, v47) != 1)
    {
      v37 = v47;
      (*(v2 + 32))(v4, &v7[v23], v47);
      sub_1000EA958(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v2 + 8);
      v39(v4, v37);
      sub_100018144(v45, &qword_100CA6028);
      sub_100018144(v20, &qword_100CA6028);
      v39(v33, v37);
      sub_100018144(v7, &qword_100CA6028);
      if (v38)
      {
        goto LABEL_16;
      }

      return sub_1005F03F4();
    }

    sub_100018144(v45, &qword_100CA6028);
    sub_100018144(v20, &qword_100CA6028);
    (*(v2 + 8))(v33, v47);
LABEL_11:
    sub_100018144(v7, &qword_100CA64E8);
    return sub_1005F03F4();
  }

  sub_100018144(v21, &qword_100CA6028);
  sub_100018144(v20, &qword_100CA6028);
  if (sub_100024D10(&v7[v23], 1, v47) != 1)
  {
    goto LABEL_11;
  }

  sub_100018144(v7, &qword_100CA6028);
LABEL_16:
  v40 = enum case for TargetWindowSizeClass.compact(_:);
  v30 = type metadata accessor for TargetWindowSizeClass();
  v31 = *(*(v30 - 8) + 104);
  v36 = v46;
  v35 = v40;
  return v31(v36, v35, v30);
}